/*===========================================================================
win32.cpp
14-Feb-00 Created by Neall

  Contains WinMain and Win32 SimpleApp implementation.
  
    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/
#define WIN32_LEAN_AND_MEAN
#define WIN32_EXTRA_LEAN
#include <windows.h>
#include <mmsystem.h>
#include <shellapi.h>
#include <commdlg.h>
#include <direct.h>

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

#include <radfile.hpp>
#include <radplatform.hpp>
#include <radsound.hpp>
#include <radthread.hpp>

#include <radload/radload.hpp>

#include "simpleapp.hpp"
#include "eventreceiver.hpp"
#include "menu.hpp"
#include "testviewer.hpp"

#include <p3d/pure3d.hpp>

class SimpleApp;

//-------------------------------------------------------------------
const int MAX_MENU_DEF = 64;

class MenuWin32 : public MenuHandler
{
public:
    MenuWin32(HWND wnd, SimpleApp* a) : hWnd(wnd), app(a), nItem(0), created(false) { /**/ }
    
    virtual void AddItem(char* name, MenuType type, int meGroup, bool checkable, bool checked, char* command);
    virtual void Create();
    void Select(int i);
    
private:
    struct MenuDef
    {
        HMENU menu;
        char name[64];
        MenuType type;
        int meGroup;
        bool checkable;
        bool checked;
        char command[64];
    } menuDef[MAX_MENU_DEF];
    
    HWND hWnd;
    SimpleApp* app;
    int nItem;
    bool created;
};

//-------------------------------------------------------------------
class SimpleAppWin32 : public SimpleApp
{
public:
    SimpleAppWin32(HINSTANCE instance, char* cmdLine);
    virtual ~SimpleAppWin32();
    
    virtual int Run();
    virtual void Quit();
    virtual bool InitPure3D(const char* windowTitle, const char* pddi, int x, int y, int bpp, bool fullScreen);
    virtual MenuHandler* GetMenuHandler() { return menuHandler; }
    virtual void GetFileName(char* filename);
    
private:
    HINSTANCE hInstance;
    HWND hWnd;
    //tPlatform* platform;
    tContext* context;
    MenuWin32* menuHandler;
    
    static LRESULT CALLBACK WndProc(HWND, UINT, WPARAM, LPARAM);
};

//-------------------------------------------------------------------
// WinMain
//-------------------------------------------------------------------
static SimpleAppWin32* simpleApp = NULL;
class TestViewer;

int PASCAL WinMain(HINSTANCE hInstance, HINSTANCE, LPSTR commandLine, int)
{
    ::radThreadInitialize();				
    ::radMemoryInitialize();
    ::radLoadInitialize();

    tPlatform* platform = tPlatform::Create(hInstance);
    
    simpleApp = new SimpleAppWin32(hInstance, commandLine);
    TestViewer* testViewer = new TestViewer(simpleApp);
    testViewer->Init();
    int ret = simpleApp->Run();
    delete testViewer;
    delete simpleApp;
    return ret;
}

SimpleAppWin32::SimpleAppWin32(HINSTANCE instance, char* cmdLine)
{   
    hInstance = instance;
    context = NULL;
    hWnd = NULL;
    menuHandler = NULL;
}

SimpleAppWin32::~SimpleAppWin32()
{
    if(hWnd)
    {
        DestroyWindow(hWnd);
        hWnd = NULL;
    }
    if(context)
    {
        p3d::platform->DestroyContext(context);
        context = NULL;
    }
    if(p3d::platform)
    {
        tPlatform::Destroy(p3d::platform);
    }
    
    delete menuHandler;
    
    ::radSoundHalSystemTerminate();

    DWORD platformDriveMask = GetLogicalDrives();
    char driveSpec[] = "A:";
    for (char driveLetter = 'A'; driveLetter <= 'Z'; ++driveLetter)
    {
        unsigned int index = driveLetter - 'A';

        if (((platformDriveMask >> index) & 1) != 0)
        {
            driveSpec[0] = driveLetter;
            radDriveUnmount(driveSpec);
        }
    }

    ::radFileTerminate( );
    ::radLoadTerminate();
    //::radControllerTerminate( );	
    //::radDbgComTargetTerminate( );
    ::radTimeTerminate( );
    ::radPlatformTerminate( );
    ::radMemoryTerminate( );
    ::radThreadTerminate( );
}

bool SimpleAppWin32::InitPure3D(const char* title, const char* pddi, int x, int y, int bpp, bool fullScreen)
{
    const char appName[] = "Simulation Testbed";
    
    // create an application window
    WNDCLASS wndclass;
    wndclass.style = CS_HREDRAW | CS_VREDRAW | CS_OWNDC;
    wndclass.lpfnWndProc = SimpleAppWin32::WndProc;
    wndclass.cbClsExtra = 0;
    wndclass.cbWndExtra = 0;
    wndclass.hInstance = hInstance;
    wndclass.hIcon = LoadIcon(NULL, IDI_APPLICATION);
    wndclass.hCursor = LoadCursor(NULL, IDC_ARROW);
    wndclass.hbrBackground = (HBRUSH)GetStockObject(DKGRAY_BRUSH);
    wndclass.lpszMenuName= NULL;
    wndclass.lpszClassName = appName;
    
    RegisterClass(&wndclass);
    
    RECT clientRect;
    clientRect.left = 0;
    clientRect.top = 0;
    clientRect.right = x;
    clientRect.bottom = y;
    
    AdjustWindowRect(&clientRect, WS_OVERLAPPEDWINDOW, FALSE);
    
    hWnd =
        CreateWindow
        (
        appName,
        title,
        WS_OVERLAPPEDWINDOW,
        CW_USEDEFAULT,
        CW_USEDEFAULT,
        clientRect.right-clientRect.left, clientRect.bottom-clientRect.top,
        NULL,
        NULL,
        hInstance,
        NULL
        );
    
    assert(hWnd);
    
    //initialize rad
    ::radPlatformInitialize(hWnd, hInstance);
    ::radTimeInitialize();
    ::radFileInitialize(100, 10, RADMEMORY_ALLOC_DEFAULT);

    DWORD platformDriveMask = GetLogicalDrives();
    char driveSpec[] = "A:";
    for (char driveLetter = 'A'; driveLetter <= 'Z'; ++driveLetter)
    {
        unsigned int index = driveLetter - 'A';

        if (((platformDriveMask >> index) & 1) != 0)
        {
            driveSpec[0] = driveLetter;
            radDriveMount(driveSpec);
        }
    }

    ::radSoundHalSystemInitialize(RADMEMORY_ALLOC_DEFAULT);
    ::radSoundHalSystemGet()->InitializeMemory(8 * 1024 * 1024, 5, 0);
    
    
    ShowWindow(hWnd, SW_SHOW);
    // setup context
    tContextInitData init;
    init.hwnd = hWnd;
    init.displayMode = fullScreen ? PDDI_DISPLAY_FULLSCREEN : PDDI_DISPLAY_WINDOW;
    init.bufferMask = PDDI_BUFFER_COLOUR | PDDI_BUFFER_DEPTH;
    init.xsize = x;
    init.ysize = y;
    init.bpp = bpp;
    //init.forcePrimary = false;
    strncpy(init.PDDIlib, pddi, 128);
    
    context = p3d::platform->CreateContext(&init);
    // p3d::platform->SetActiveContext(context); called from CreateContext
    
    DragAcceptFiles(hWnd, true);
    menuHandler = new MenuWin32(hWnd, this);
    
    return true;
}

//-------------------------------------------------------------------
int SimpleAppWin32::Run()
{
    bool done = false;
    MSG msg;
    
    timeBeginPeriod(1);
    timeEndPeriod(1);
    
    float currentTime = (float)timeGetTime();
    float elapsed = 0.0f;
    
    while(!done)
    {
        while(PeekMessage(&msg, NULL, 0, 0, PM_REMOVE))
        {
            if(msg.message == WM_QUIT)
            {
                done = TRUE;
                break;
            }
            TranslateMessage(&msg);
            DispatchMessage(&msg);
        }
        
        float now = (float)timeGetTime();
        
        elapsed = now-currentTime;
        currentTime = now;
        
        if(!done && GetEventReceiver())
        {
            GetEventReceiver()->Render(elapsed);
        }
        
        radFileService();
        radSoundHalSystemGet()->Service();
        radSoundHalSystemGet()->ServiceOncePerFrame();
    }
    
    return msg.wParam;
}

void SimpleAppWin32::Quit()
{
    PostQuitMessage(0);
}

//-------------------------------------------------------------------
void SimpleAppWin32::GetFileName(char* filename)
{
    OPENFILENAME openStruct;
    memset(&openStruct, 0, sizeof(openStruct));
    
    char filters[] = "Script files (*.cfg)\0*.cfg\0Pure3D files (*.p3d)\0*.p3d\0\0";
    char defextension[] = "cfg";
    char title[] = "Open...";
    char openbuf[256];
    openbuf[0] = 0;
    
    openStruct.lStructSize = sizeof(openStruct);
    openStruct.hwndOwner = hWnd;
    openStruct.lpstrFilter = filters;
    openStruct.lpstrCustomFilter = NULL;
    openStruct.nFilterIndex = 1;
    openStruct.lpstrFile = openbuf;
    openStruct.nMaxFile = 256;
    openStruct.lpstrFileTitle = NULL;
    openStruct.lpstrInitialDir = NULL;
    openStruct.lpstrTitle = title;
    openStruct.Flags = OFN_FILEMUSTEXIST | OFN_EXPLORER | OFN_PATHMUSTEXIST | OFN_NOCHANGEDIR;
    openStruct.lpstrDefExt = defextension;
    openStruct.lCustData = 0;
    
    if(GetOpenFileName(&openStruct))
    {
        strncpy(filename, openStruct.lpstrFile, 255);
    }
    else
    {
        filename[0] = 0;
    }
}

//-------------------------------------------------------------------
LRESULT SimpleAppWin32::WndProc(HWND hwnd, UINT message, WPARAM wParam, LPARAM lParam)
{
    p3d::platform->ProcessWindowsMessage(hwnd, message, wParam, lParam);
    
    EventReceiver* receiver = simpleApp->GetEventReceiver();
    if(!receiver)
    {
        return DefWindowProc(hwnd, message, wParam, lParam);
    }
    
    static bool mouseLButton = false;
    static bool mouseMButton = false;
    static bool mouseRButton = false;
    static bool capture = false;
    static POINT capturePos = {0, 0};
    static bool menuSelect = false;
    
    switch(message)
    {
    case WM_DESTROY:
        PostQuitMessage(0);
        break;
        
    case WM_PDDI_DRAW_ENABLE:
        receiver->Activate(wParam == 1);
        break;
        
    case WM_COMMAND:
        {
            MenuWin32* mh = (MenuWin32*)simpleApp->GetMenuHandler();
            if(mh)
                mh->Select(wParam);
        }
        break;
        
    case WM_MENUSELECT:
        {
            menuSelect = !(HIWORD(wParam) & MF_MOUSESELECT);
        }
        break;
        
    case WM_LBUTTONDOWN:
        if(!menuSelect)
        {
            receiver->MousePress(EventReceiver::LEFT);
            mouseLButton = true;
            if(!capture)
            {
                capture = true;
                SetCapture(hwnd);
                GetCursorPos(&capturePos);
                ShowCursor(false);
            }
        }
        break;
        
    case WM_LBUTTONUP:
        if(!menuSelect)
        {
            receiver->MouseRelease(EventReceiver::LEFT);
            mouseLButton = false;
            if(capture)
            {
                capture = false;
                ReleaseCapture();
                ShowCursor(true);
            }
        }
        break;
        
    case WM_MBUTTONDOWN:
        if(!menuSelect)
        {
            receiver->MousePress(EventReceiver::MIDDLE);
            mouseMButton = true;
            if(!capture)
            {
                capture = true;
                SetCapture(hwnd);
                GetCursorPos(&capturePos);
                ShowCursor(false);
            }
        }
        break;
        
    case WM_MBUTTONUP:
        if(!menuSelect)
        {
            receiver->MouseRelease(EventReceiver::MIDDLE);
            mouseMButton = false;
            if(capture)
            {
                capture = false;
                ReleaseCapture();
                ShowCursor(true);
            }
        }
        break;
        
    case WM_RBUTTONDOWN:
        if(!menuSelect)
        {
            receiver->MousePress(EventReceiver::RIGHT);
            mouseRButton = true;
            if(!capture)
            {
                capture = true;
                SetCapture(hwnd);
                ShowCursor(false);
                GetCursorPos(&capturePos);
            }
        }
        break;
        
    case WM_RBUTTONUP:
        if(!menuSelect)
        {
            receiver->MouseRelease(EventReceiver::RIGHT);
            mouseRButton = false;
            if(capture)
            {
                capture = false;
                ReleaseCapture();
                ShowCursor(true);
            }
        }
        break;
        
    case WM_MOUSEMOVE:
        if(capture)
        {
            POINT deltaPos;
            GetCursorPos(&deltaPos);
            deltaPos.x = capturePos.x - deltaPos.x;
            deltaPos.y = capturePos.y - deltaPos.y;
            if(deltaPos.x || deltaPos.y)
            {
                SetCursorPos(capturePos.x, capturePos.y);
                receiver->MouseDrag(deltaPos.x, deltaPos.y);
            }
        }
        break;
        
    case WM_KEYUP:
        receiver->KeyPress(TranslateKeyCode(wParam));
        break;
        
    case WM_CHAR:
        receiver->KeyPress(wParam);
        break;
        
    case WM_DROPFILES:
        {
            HANDLE hDrop = (HANDLE)wParam;  // handle of internal drop structure 
            char buf[128];            
            unsigned int result = DragQueryFile((HDROP)hDrop, 0, buf, 128);
            receiver->FileDrop(buf);
            break;
        }
        
    default:
        return DefWindowProc(hwnd, message, wParam, lParam);
        break;
   }
   
   return 0;
}

//-------------------------------------------------------------------
// Win32 menu handler
//-------------------------------------------------------------------
void MenuWin32::AddItem(char* name, MenuType type, int meGroup, bool checkable, bool checked, char* command)
{
    assert(nItem < MAX_MENU_DEF);
    menuDef[nItem].menu = 0;
    strncpy(menuDef[nItem].name, name, 64);
    menuDef[nItem].type = type;
    menuDef[nItem].meGroup = meGroup;
    menuDef[nItem].checkable = checkable;
    menuDef[nItem].checked = checked;
    strncpy(menuDef[nItem].command, command, 64);
    nItem++;
}

void MenuWin32::Create()
{
    if(created)
        return;
    
    created = true;
    HMENU menuBar = CreateMenu();
    HMENU menu = 0;
    HMENU subMenu = 0;
    
    for(int i=0; i < nItem; i++)
    {
        switch(menuDef[i].type)
        {
        case TOP:
            {
                menu = CreatePopupMenu();
                AppendMenu(menuBar, MF_POPUP|MF_STRING, (UINT)menu, menuDef[i].name);
                break;
            }
        case ITEM:
            {
                assert(menu);
                menuDef[i].menu = menu;
                unsigned checkedMask = (menuDef[i].checkable && menuDef[i].checked) ? MF_CHECKED : 0;
                AppendMenu(menu, MF_STRING | checkedMask, i, menuDef[i].name);
                break;
            }
        case SUB:
            {
                assert(menu);
                subMenu = CreatePopupMenu();
                AppendMenu(menu, MF_POPUP|MF_STRING, (UINT)subMenu, menuDef[i].name);
                break;
            }
        case SUBITEM:
            {
                assert(subMenu);
                menuDef[i].menu = subMenu;
                unsigned checkedMask = (menuDef[i].checkable && menuDef[i].checked) ? MF_CHECKED : 0;
                AppendMenu(subMenu, MF_STRING | checkedMask, i, menuDef[i].name);
                break;
            }
        }
    }
    SetMenu(hWnd, menuBar);
}

void MenuWin32::Select(int item)
{
    if(item < 0 || item >= nItem)
        return;
    
    if(menuDef[item].command)
    {
        if(menuDef[item].checkable)
        {
            // Items with an meGroup of 0 are toggles
            if(menuDef[item].meGroup == 0)
            {
                menuDef[item].checked = !menuDef[item].checked;
                unsigned checkedMask = (menuDef[item].checkable && menuDef[item].checked) ? MF_CHECKED : 0;
                ModifyMenu(menuDef[item].menu, item, MF_STRING|checkedMask, item, menuDef[item].name);
            }
            else
            {
                // Items with a non-zero meGroup are one of a list of items in which
                // only one can be selected.  This code unchecks all items in the meGroup,
                // then checks the one that was selected.
                for(int i=0; i < nItem; i++)
                {
                    if(menuDef[i].meGroup == menuDef[item].meGroup)
                    {
                        menuDef[i].checked = false;
                        ModifyMenu(menuDef[i].menu, i, MF_STRING|MF_UNCHECKED, i, menuDef[i].name); 
                    }
                }
                menuDef[item].checked = true;
                ModifyMenu(menuDef[item].menu, item, MF_STRING|MF_CHECKED, item, menuDef[item].name); 
            }
        }
        
        if(strstr(menuDef[item].command, "%d"))
        {
            char buf[255];
            sprintf(buf, menuDef[item].command, menuDef[item].checked);
            app->GetEventReceiver()->ScripterCommand(buf);
        }
        else
        {
            app->GetEventReceiver()->ScripterCommand(menuDef[item].command);
        }
    }
}

