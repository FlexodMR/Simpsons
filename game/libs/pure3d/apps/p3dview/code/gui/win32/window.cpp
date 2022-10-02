//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include<gui/win32/window.hpp>
#include<p3d/platform.hpp>
#include<p3d/utility.hpp>

#include<console/console.hpp>
#include<console/commandline.hpp>
#include<input/inputdriver.hpp>
#include<input/consolebindings.hpp>

#define WIN32_LEAN_AND_MEAN
#define WIN32_EXTRA_LEAN
#include <windows.h>

#include<shellapi.h>

#include<stdio.h>

LONG FAR PASCAL WindowProc(HWND win, unsigned msg, unsigned wparam, LONG lparam);

Win32Window::Win32Window(char* t)
{
    strcpy(title,t);
    nHandlers = 0;
    win = 0;
    active = true;

    absorbDestroy = 0;

    static char Win32WindowClass[32] = "p3dviewWindow";

    int x, y;
    
    // if we use default poistions, it might not put it on the primary monitor in a multi-head setup
    // x = y = CW_USEDEFAULT;
    x = y = 20;

    style = 
        WS_CAPTION | WS_SYSMENU | WS_MINIMIZEBOX;// | WS_MAXIMIZEBOX; //| WS_THICKFRAME 

    WNDCLASS wc;
    BOOL  rc;
    
    wc.style = CS_HREDRAW | CS_VREDRAW | CS_OWNDC;
    wc.lpfnWndProc =  WindowProc;
    wc.cbClsExtra = 0;
    wc.cbWndExtra = sizeof(DWORD);
    wc.hInstance = NULL; //hInstance;
    wc.hIcon = NULL;
    wc.hCursor = NULL;
    wc.hbrBackground = NULL;
    wc.lpszMenuName = NULL;
    wc.lpszClassName = Win32WindowClass;
    rc = RegisterClass(&wc);


    win = CreateWindow
    (   Win32WindowClass,                  /* class */
         title,           /* caption */
         style, //WS_OVERLAPPEDWINDOW,         /* style */
         x,               /* init. x pos */
         y,               /* init. y pos */
         640,                         /* init. x size */
         480,                         /* init. y size */
         NULL,                        /* parent window */
         NULL,                        /* menu handle */
         NULL, //hInstance,                    /* program handle */
         NULL                         /* create parms */
    );

    SetWindowLong((HWND)win,GWL_USERDATA,(int)this);
    DragAcceptFiles((HWND)win, TRUE);           
}

Win32Window::Win32Window()
{
    nHandlers = 0;
    win = 0;
    active = true;
    absorbDestroy = 0;
}

Win32Window::~Win32Window()
{
    if(win)
    {
        absorbDestroy = 1;
        DestroyWindow((HWND)win);
    }

    for(int i = 0; i < nHandlers; i++)
        handlers[i]->Release();
}

bool  Win32Window::Active(void)
{
    return active;
}

void Win32Window::Resize(unsigned x, unsigned y)
{
    style = GetWindowLong((HWND)win, GWL_STYLE);
    if(x && y)
    {
        clientX = x;
        clientY = y;
    }

    RECT clientRect;
    RECT realRect;
    clientRect.left = 0;
    clientRect.top = 0;
    clientRect.right = x;
    clientRect.bottom = y;

    AdjustWindowRect(&clientRect, style, FALSE);
    SetWindowPos((HWND)win,0,0,0, 
                        clientRect.right-clientRect.left,
                        clientRect.bottom-clientRect.top, SWP_NOMOVE | SWP_NOZORDER);

    GetClientRect((HWND)win, &realRect);

    SetWindowPos((HWND)win,0,0,0, 
                        clientRect.right-clientRect.left+(x-realRect.right),
                        clientRect.bottom-clientRect.top+(y-realRect.bottom), SWP_NOMOVE | SWP_NOZORDER);
}

void Win32Window::Show(bool s)
{
    ShowWindow((HWND)win, s ? SW_SHOW : SW_HIDE);
    UpdateWindow((HWND)win);
}


void Win32Window::AddHandler(Win32MessageHandler* h)
{
    handlers[nHandlers++] = h;
}

void Win32Window::ClearHandlers(void)
{
    for(int i = 0; i < nHandlers; i++)
        handlers[i]->Release();

    nHandlers = 0;
}

long Win32Window::Event(int msg, int wparam, int lparam)
{
    int res = 0;

    p3d::platform->ProcessWindowsMessage(win, msg, wparam, lparam);

    for(int i = 0; i < nHandlers; i++)
    {
        res += handlers[i]->Event(this, msg, wparam, lparam);
    }

    switch( msg )
    {
        case WM_DESTROY:
            if(absorbDestroy) 
            {
                absorbDestroy = 0;
            }
            else
            {
                PostQuitMessage(0);
                win = 0;
            }
            break;

        default:
            return 0;
    }
    return 1;
}

// The window message handler
LONG FAR PASCAL WindowProc(HWND win, unsigned msg, unsigned wparam, LONG lparam)
{
    Win32Window* nwin = (Win32Window*)GetWindowLong(win,GWL_USERDATA);

    if(!nwin)
        return DefWindowProc(win, msg, wparam, lparam);

    if(nwin->Event(msg,wparam,lparam))
    {
        return 1;
    }
    else
    {
        return DefWindowProc(win, msg, wparam, lparam);
    }
}


ConsoleWindow::ConsoleWindow(char* t)
{
    strcpy(title,t);
    win = 0;

    capture = false;
    supressNext = false;

    static char ConsoleWindowClass[32] = "p3dviewConsoleWindow";

    WNDCLASS wc;
    BOOL  rc;
    
    wc.style = CS_HREDRAW | CS_VREDRAW | CS_OWNDC;
    wc.lpfnWndProc =  WindowProc;
    wc.cbClsExtra = 0;
    wc.cbWndExtra = sizeof(DWORD);
//    wc.hInstance = hInstance;
    wc.hInstance = NULL;
    wc.hIcon = NULL;
    wc.hCursor = NULL;
    wc.hbrBackground = (HBRUSH)(COLOR_WINDOW + 1); 
    wc.lpszMenuName = NULL;
    wc.lpszClassName = ConsoleWindowClass;
    rc = RegisterClass(&wc);

    style = 
        WS_CAPTION | WS_SYSMENU | WS_MINIMIZEBOX | WS_VSCROLL | WS_MAXIMIZEBOX | WS_THICKFRAME;

    win = CreateWindow
    (   ConsoleWindowClass,                /* class */
         title,           /* caption */
         style, //WS_OVERLAPPEDWINDOW,         /* style */
         CW_USEDEFAULT,               /* init. x pos */
         CW_USEDEFAULT,               /* init. y pos */
         640,                         /* init. x size */
         480,                         /* init. y size */
         NULL,                        /* parent window */
         NULL,                        /* menu handle */
         NULL, //hInstance,                    /* program handle */
         NULL                         /* create parms */
    );

    SetWindowLong((HWND)win,GWL_USERDATA,(int)this);
    Resize(640,480);
    DragAcceptFiles((HWND)win, TRUE);           

    timer = SetTimer((HWND)win, 0, 100, NULL);

    bufferedLines = 0;
    startLine = 0;

    TEXTMETRIC metric;
    HFONT font = (HFONT)GetStockObject(DEFAULT_GUI_FONT);
    HDC hdc = GetDC((HWND)win);
    HANDLE old = SelectObject(hdc, font);
    GetTextMetrics(hdc, &metric);
    linesPerScreen = (clientY - 5) / metric.tmHeight ;
    SelectObject(hdc, old);
    ReleaseDC((HWND)win, hdc);

    SetupScrollBar();
}

ConsoleWindow::~ConsoleWindow()
{
    KillTimer((HWND)win,timer);
}

void ConsoleWindow::Refresh(void)
{
    InvalidateRect((HWND)win, NULL, TRUE);
}

long ConsoleWindow::Event(int msg, int wparam, int lparam)
{
    int res = 0;

    for(int i = 0; i < nHandlers; i++)
    {
        res += handlers[i]->Event(this, msg, wparam, lparam);
    }

    switch( msg )
    {
        case WM_SIZE :
            clientX = LOWORD(lparam);
            if(clientY != HIWORD(lparam))
            {
                clientY = HIWORD(lparam);

                TEXTMETRIC metric;
                HFONT font = (HFONT)GetStockObject(DEFAULT_GUI_FONT);
                HDC hdc = GetDC((HWND)win);
                HANDLE old = SelectObject(hdc, font);
                GetTextMetrics(hdc, &metric);
                linesPerScreen = (clientY - 5) / metric.tmHeight ;
                SelectObject(hdc, old);
                ReleaseDC((HWND)win, hdc);

                if(bufferedLines > (startLine + linesPerScreen - 2))
                    SetScrollPosition(bufferedLines - linesPerScreen + 2);

                InvalidateRect((HWND)win, NULL, TRUE);
            }
            break;

        case WM_VSCROLL:
            switch (LOWORD(wparam))
            {
                case SB_PAGEDOWN :
                    SetScrollPosition(startLine + linesPerScreen);
                    break;

                case SB_LINEDOWN :
                    SetScrollPosition(startLine + 1);
                    break;

                case SB_PAGEUP :
                    SetScrollPosition(startLine - linesPerScreen);
                    break;

                case SB_LINEUP :
                    SetScrollPosition(startLine - 1);
                    break;

                case SB_BOTTOM :
                    SetScrollPosition(bufferedLines - 3);
                    break;

                case SB_TOP :
                    SetScrollPosition(0);
                    break;

                case SB_THUMBPOSITION :
                case SB_THUMBTRACK :
                    SetScrollPosition(HIWORD(wparam));
                    break;

            };
            break;
        case WM_TIMER :

            if(bufferedLines != commandLine->GetNumLines())
            {
                bufferedLines = commandLine->GetNumLines();

                SetupScrollBar();

                if(bufferedLines > (startLine + linesPerScreen - 2))
                    SetScrollPosition(bufferedLines - linesPerScreen + 2);

                InvalidateRect((HWND)win, NULL, TRUE);
            }
            else
            {
                TEXTMETRIC metric;
                HFONT font = (HFONT)GetStockObject(DEFAULT_GUI_FONT);
                HDC hdc = GetDC((HWND)win);
                HANDLE old = SelectObject(hdc, font);

                GetTextMetrics(hdc, &metric);

                RECT rect;
                rect.left = 0;
                rect.right = clientX;

                rect.top = 5 + (((bufferedLines - 1) - startLine) * metric.tmHeight);
                rect.bottom = 5 + ((bufferedLines - startLine) * metric.tmHeight);
                InvalidateRect((HWND)win, &rect, TRUE);
                SelectObject(hdc, old);
                ReleaseDC((HWND)win, hdc);
            }
            break;

        case WM_PAINT:
            {
                PAINTSTRUCT paint;
                TEXTMETRIC metric;
                HFONT font = (HFONT)GetStockObject(DEFAULT_GUI_FONT);

                HDC hdc = BeginPaint((HWND)win, &paint);
                HANDLE old = SelectObject(hdc, font);
                GetTextMetrics(hdc, &metric);

                SetTextColor(hdc, GetSysColor(COLOR_WINDOWTEXT));
                SetBkColor(hdc, GetSysColor(COLOR_WINDOW));

                int h = 5;
                for(unsigned i = startLine; (i < commandLine->GetNumLines()) && (i < startLine + linesPerScreen); i++)
                {
                    const char* text = commandLine->GetLine(i);
                    TextOut(hdc, 5, h, text, strlen(text));
                    h += metric.tmHeight;
                }
                SelectObject(hdc, old);
                EndPaint((HWND)win, &paint);
            }
            break;

        // If the window is destroyed, make sure a Quit message is posted, 
        // otherwise DirectDraw will hork
        case WM_DESTROY:
              if(!absorbDestroy)
              {
                  PostQuitMessage(0);
                  win = 0;
              }
              else
              {
                  absorbDestroy = 0;
              }
            break;

        // All other messages should be processed or passed on to Pure3D 
        // or the default window handler as the program sees fit.
        default:
            return 0;
    }
    return 1;
}

void ConsoleWindow::SetScrollPosition(unsigned l)
{
    if( l < 0)
        l = 0;

    if(l > bufferedLines) 
        l = bufferedLines - 3;

    SCROLLINFO info;
    info.cbSize = sizeof(SCROLLINFO);
    info.fMask = SIF_POS;
    info.nPos = l;

    startLine = l;

    InvalidateRect((HWND)win, NULL, TRUE);
    SetScrollInfo((HWND)win, SB_VERT, &info,TRUE);
}

void ConsoleWindow::SetupScrollBar(void)
{
    SCROLLINFO info;
    info.cbSize = sizeof(SCROLLINFO);
    info.fMask = SIF_RANGE | SIF_PAGE;
    info.nMin = 0;
    info.nMax = bufferedLines - 1;
    info.nPage = linesPerScreen;

    SetScrollInfo((HWND)win, SB_VERT, &info,TRUE);
}

