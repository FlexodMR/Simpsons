//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include"kernel.hpp"

#define WIN32_LEAN_AND_MEAN
#define WIN32_EXTRA_LEAN
#include <windows.h>
#include <mmsystem.h>
#include <winsock2.h>

#include <config/arguments.hpp>
#include <config/settings.hpp>
#include <gui/win32/window.hpp>

#include <p3d/platform.hpp>
#include <p3d/utility.hpp>

#include <input/win32/inputwin32.hpp>
#include <console/winconsole.hpp>

#include <interface/io.hpp>
#include <interface/display.hpp>
#include <interface/commandrecipient.hpp>

#include <fstream>

#include <radplatform.hpp>
#include <raddebugcommunication.hpp>
#include <radmemory.hpp>
#include <radfile.hpp>
#include <radtime.hpp>
#include <radthread.hpp>
#include <radload/radload.hpp>

extern bool threadInitialized;
extern bool memInitialized;

class Win32Display : public Display
{
public:
    Win32Display(Window* w)
    {
        window = w;
        context = NULL;
        strcpy(driver, "auto");
        x = 640;
        y = 480;
        bpp = 32;
        fullscreen = false;
        adapter = 0;
        vsync = false;
        async = true;

        strcpy(init.PDDIlib, "dummy");

        init.hwnd = ((Win32Window*)window)->GetHWND();                       
    }

    ~Win32Display(void)
    {
        //if(render)
        //   render->Freeze();

        p3d::platform->DestroyContext(context);
    }

    void Configure(Settings* settings)
    {
        settings->Bind("display.win32.driver", driver, 256);
        settings->Bind("display.win32.x", &x);
        settings->Bind("display.win32.y", &y);
        settings->Bind("display.win32.bpp", &bpp);
        settings->Bind("display.win32.fullscreen", &fullscreen);
        settings->Bind("display.win32.adapter", &adapter);
        settings->Bind("display.win32.lockToVsync", &vsync);
        settings->Bind("display.win32.asyncSwap", &async);

        if((strcmp(driver,"auto") == 0) || (strcmp(driver,"") == 0))
        {
            HINSTANCE d3dDLL = LoadLibrary("d3d8");
            if(d3dDLL)
            {
                strcpy(driver, "pddidx8d");
                FreeLibrary(d3dDLL);
            }
            else
            {
                HINSTANCE glDLL = LoadLibrary("opengl32");
                if(!glDLL)
                {
                    MessageBox(NULL, "Could not autodetect render driver. Neither Direct3D 8 nor OpenGL seems to be installed",
                                  "p3dview Fatal Error!",
                                  MB_OK);
                    //Exit();
                }
                else
                {
                    strcpy(driver, "pddigld");
                    FreeLibrary(glDLL);
                }
            }
        }
    }

    void SetDriver(char* d)
    {
        strcpy(driver,d);
    }

    void SetResolution(unsigned X, unsigned Y, unsigned BPP)
    {
        x = X;
        y = Y;
        bpp = BPP;
    }

    void SetFullscreen(bool f)
    {
        fullscreen = f;
    }

    void Initialize(void)
    {
        // fill init structure with stuff needed for initial creation, or re-init
        init.displayMode = fullscreen ? PDDI_DISPLAY_FULLSCREEN : PDDI_DISPLAY_WINDOW;   
        init.bufferMask = PDDI_BUFFER_COLOUR | PDDI_BUFFER_DEPTH; // | PDDI_BUFFER_STENCIL;
        init.xsize = x;
        init.ysize = y;
        init.bpp = bpp;
        init.lockToVsync = vsync;
        init.asyncSwap = async;

        // check if we need to do a full init.
        // TODO : this won't work right aftert the first init
        // the viewer object is not shutdown and restarted
        if((strcmp(driver, init.PDDIlib) != 0) || (adapter != init.adapterID))
        {
            if(context)
                p3d::platform->DestroyContext(context);

            if(!fullscreen)
            {
                window->Resize(x,y);
            }

            // fill in the full init specific parameters
            init.hwnd = ((Win32Window*)window)->GetHWND();                       
            strcpy(init.PDDIlib,driver);
            init.adapterID = adapter;


            context = p3d::platform->CreateContext(&init); // go do the initilization

            if(!fullscreen)
            {
                window->Show(true);
            }
        }
        else
        {
            if(!fullscreen)
            {
                window->Resize(x,y);
            }

            init.hwnd = ((Win32Window*)window)->GetHWND();                       
            p3d::display->InitDisplay(&init);
            
            InvalidateRect(NULL, NULL, TRUE);

        }
    }

    tContext* GetContext(void)
    {
        return context;
    }

private:
    tContext* context;
    Window* window;

    char driver[256];
    unsigned x,y,bpp;
    bool fullscreen;
    unsigned adapter;
    bool async;
    bool vsync;

    tContextInitData init;
};

class testInputMessageHandler : public Win32MessageHandler
{
public:
    long Event(Win32Window* win, int msg, int wparam, int lparam)
    {
        return driver->WinProc(0,msg,wparam,lparam);
    }

    void Release(void)
    {
        delete this;
    }

    Input::Driver* driver;
};


Win32::Win32(void* instance)
{
    hInstance = instance;
    platform = tPlatform::Create(hInstance);
    mainWindow = NULL;
    input = NULL;
    shell = NULL;

    userName[0] = 0;
    machineName[0] = 0;

    exiting = restarting = false;

    QueryPerformanceCounter((LARGE_INTEGER*)&startTime);
    QueryPerformanceFrequency((LARGE_INTEGER*)&frequency);

    WSADATA wsa;
    WSAStartup(0x0202,&wsa);

    radPlatformInitialize(NULL, (HINSTANCE)instance);
    radTimeInitialize();
    radDbgComTargetInitialize(WinSocket);
    radFileInitialize();

    //
    // PS: addedin mount command.
    //
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

    radLoadInitialize();
}

Win32::~Win32()
{
    WSACleanup();
    delete input;
    tPlatform::Destroy(platform);

    radLoadTerminate();

    //
    // PS: unmount all the drives.
    //
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

    radFileTerminate();
    radDbgComTargetTerminate();
    radTimeTerminate();
    radPlatformTerminate();
    radThreadTerminate();

    threadInitialized = false;
}

void Win32::CreateInput(char*)
{
    input = new Input::Win32;
    input->SetInstance(NULL, (unsigned)mainWindow->GetHWND());
    testInputMessageHandler* msg = new testInputMessageHandler;
    msg->driver = input;
    mainWindow->AddHandler(msg);
}

Input::Driver* Win32::GetInput(void)
{
    return input;
}


Window* Win32::NewWindow(char* title)
{
    Win32Window* win = new Win32Window(title);

    if(!mainWindow)
        mainWindow = win;

    return win;
}

void Win32::SetMainWindow(Window* win)
{
    mainWindow = (Win32Window*)win;
}

Window* Win32::GetMainWindow(void) 
{ 
    return mainWindow;
};

Display* Win32::NewDisplay(Window* window)
{
    return new Win32Display(window);
}

void Win32::Sleep(Time t)
{
    ::Sleep(t.AsMilliseconds());
}

Time Win32::SystemTime(void)
{
    // Get elapsed time using Windows performance counter
    __int64 currentTime;
    QueryPerformanceCounter((LARGE_INTEGER*)&currentTime);
    currentTime -= startTime;
    currentTime *= 1000000;
    return Time(P3D_S64(currentTime / frequency), Time::MICROSECONDS);
}

InStream*  Win32::OpenFileIn(const char* filename)
{
    class In : public InStream
    {
        public:
            In(const char* filename)
            {
                stream = new std::ifstream(filename, std::ios::binary);
                good = stream->good() != 0;
                size = 0;

                if(good)
                {
                    stream->seekg(0, std::ios::end);
                    size = stream->tellg();
                    stream->seekg(0, std::ios::beg);
                }
            }

            ~In()
            {
                delete stream; 
            }

            void Get(unsigned size, void* data)
            {
                stream->read((char*)data, size);
            }

            unsigned GetPosition(void)
            {
                return stream->tellg();
            }

            unsigned GetLength(void)
            {
                return size;
            }

            void Advance(unsigned p)
            {
                int pos = int(p);
                stream->seekg((int)stream->tellg() + (int)pos);
            }

            bool good;

        private:
            std::ifstream* stream;
            unsigned size;

    };

    char tmp[256];
    if((filename[1] != ':') && (filename[0] != '\\'))
    {
        sprintf(tmp,"%s\\%s",GetWorkingDirectory(), filename);
    }
    else
    {
        strcpy(tmp, filename);
    }

    In* in = new In(tmp);
    if(!in->good)
    {
        delete in;
        return NULL;
    }
    return in;
}

OutStream* Win32::OpenFileOut(const char* filename, bool trunc)
{
    class Out : public OutStream
    {
        public:
            Out(const char* filename, bool trunc)
            {
                stream = new std::ofstream(filename, std::ios::binary | (trunc ? std::ios::trunc : 0));
            }

            ~Out()
            {
                delete stream; 
            }

            void Put(unsigned count, void* data)
            {
                stream->write((char*)data, count);
            }

            bool good;

        private:
            std::ofstream* stream;

    };

    char tmp[256];
    if((filename[1] != ':') && (filename[0] != '\\'))
    {
        sprintf(tmp,"%s\\%s",GetWorkingDirectory(), filename);
    }
    else
    {
        strcpy(tmp, filename);
    }

    Out* out = new Out(tmp, trunc);
    if(!out->good)
    {
        delete out;
        return NULL;
    }
    return out;
}

const char* Win32::UserName(void)
{
    if(!userName[0])
    {
        unsigned long size = 256;
        GetUserName(userName, &size);
    }
    return userName;
}

const char* Win32::MachineName(void)
{
    if(!machineName[0])
    {
        unsigned long size = 256;
        GetComputerName(machineName, &size);
    }
    return machineName;
}

bool Win32::Idle(void)
{
    Sleep(Time(0.0f, Time::SECONDS));

    radFileService();

    MSG msg;

    int count = 0;
    while (PeekMessage(&msg, NULL, 0, 0, PM_REMOVE) && (count < 1000))
    {
        count++;
        if (msg.message == WM_QUIT)
        {
            exiting = true;
        }

        TranslateMessage(&msg);
        DispatchMessage(&msg);
    }

    return !exiting;
}

// local
void Win32::Message(const char* channel, const char * message, bool idle)
{
    if(shell)
    {
        char tmp[256] = "echo ";
        strcat(tmp, message);
        shell->Command(tmp);
    }

    if(idle)
        Idle();
}

void Win32::Exit(ExitMode e)
{
    switch(e)
    {
        case EXIT_REQUEST_RESTART:
            restarting = true;
        case EXIT_REQUEST :
            exiting = true;
            break;
        case EXIT_FORCE :
            ExitProcess(-1);
            //ExitThread(-1);
            break;
    }
}

const char* Win32::GetWorkingDirectory(void)
{
    return workingDirectory;
}

void Win32::SetWorkingDirectory(const char* w)
{
    strcpy(workingDirectory,w);
    if(workingDirectory[strlen(workingDirectory)-1] == '\\')
        workingDirectory[strlen(workingDirectory)-1] = 0;
}

