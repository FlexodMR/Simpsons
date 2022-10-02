//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifdef RAD_WIN32
    #include <pddi/gl/display_win32/gldisplay.hpp>
    #include <pddi/gl/display_win32/gl.hpp>
#endif

#ifdef RAD_LINUX
    #include <pddi/gl/display_linux/gldisplay.hpp>
    #include <pddi/gl/display_linux/gl.hpp>
#endif


#include <pddi/gl/glcon.hpp>
#include <pddi/base/debug.hpp>

#define WIN32_LEAN_AND_MEAN
#define WIN32_EXTRA_LEAN
#include<windows.h>

#include<mmsystem.h>

#include<stdio.h>
#include<string.h>
#include<math.h>

#define WM_PDDI_DRAW_ENABLE (WM_USER + 666)

bool pglDisplay::CheckExtension( char *extName )
{
    char *p = (char *) glGetString(GL_EXTENSIONS);

    if((p == NULL) || (extName == NULL))
        return false;
    
    char *end;
    int extNameLen;

    extNameLen = strlen(extName);
    end = p + strlen(p);

    while (p < end) {
        int n = strcspn(p, " ");
        if ((extNameLen == n) && (strncmp(extName, p, n) == 0)) {
             return true;
        }
        p += (n + 1);
    }
    return false;
}

pglDisplay ::pglDisplay()
{
    mode = PDDI_DISPLAY_WINDOW;
    winWidth = 640;
    winHeight = 480;
    winBitDepth = 32;

    context = NULL;

    winHWND = NULL;
    hRC = NULL;
    hFont = NULL;
    prevRC = NULL;

    extBGRA = false;

    gammaR = gammaG = gammaB = 1.0f;

    GetDeviceGammaRamp((HDC)hDC, initialGammaRamp);
    windowStyle = 0;

    reset = true;
	m_ForceVSync = false;
}

pglDisplay ::~pglDisplay()
{
    HGLRC hRC;
    HDC   hDC;

    /* release and free the device context and rendering context */
    hRC = wglGetCurrentContext();
    hDC = wglGetCurrentDC();

    if(hDC && hRC)
        wglMakeCurrent(hDC, NULL);

    if (hRC)
        wglDeleteContext(hRC);

    if (hDC)
        ReleaseDC((HWND)winHWND, hDC);

    ChangeDisplaySettings(NULL,0);
    SetDeviceGammaRamp((HDC)hDC, &initialGammaRamp);
}

#define KEYPRESSED(x) (GetKeyState((x)) & (1<<(sizeof(int)*8)-1))

long pglDisplay ::ProcessWindowMessage(void* win, unsigned uMsg, unsigned wParam, long lParam)
{
    HWND hWnd = (HWND)win;

    switch (uMsg)
    {
        // ugly code to handle alt-tab
        case WM_ACTIVATEAPP:
            if(wParam)
            {
                PostMessage(hWnd, WM_PDDI_DRAW_ENABLE, 1, 0);
            }
            else
            {
                InvalidateRect(hWnd, NULL, TRUE);
                PostMessage(hWnd, WM_PDDI_DRAW_ENABLE, 0, 0);
            }
        break;

        case WM_ACTIVATE:      
            if((!(BOOL)HIWORD(wParam)) &&
                ((unsigned short)LOWORD(wParam) == WA_ACTIVE) ||
                ((unsigned short)LOWORD(wParam) == WA_CLICKACTIVE) )
                {
                    PostMessage(hWnd, WM_PDDI_DRAW_ENABLE, 1, 1);
                }
                else
                {
                    InvalidateRect(hWnd, NULL, TRUE);
                    PostMessage(hWnd, WM_PDDI_DRAW_ENABLE, 0, 1);
                }
            break;

            case WM_SIZE:
                if(wParam == SIZE_MINIMIZED)
                {
                    PostMessage(hWnd, WM_PDDI_DRAW_ENABLE, 0, 2);
                }
                else
                {
                    RECT rect;
                    GetClientRect((HWND)winHWND, &rect);
                    winWidth = rect.right - rect.left;
                    winHeight = rect.bottom - rect.top;
                }
            break;
        case WM_PAINT :
        {
            HDC      hDC;
            PAINTSTRUCT ps;

            hDC = BeginPaint(hWnd, &ps);
            EndPaint(hWnd, &ps);
        }
        break;

        case WM_DESTROY:
        {
            HGLRC hRC;
            HDC   hDC;

            /* release and free the device context and rendering context */
            hRC = wglGetCurrentContext();
            hDC = wglGetCurrentDC();

            if(hDC && hRC)
                wglMakeCurrent(hDC, NULL);

            if (hRC)
                wglDeleteContext(hRC);

            if (hDC)
                ReleaseDC((HWND)winHWND, hDC);
        }
        break;

		default:
            return 0;
     }
     /* return 1 if handled message, 0 if not */

     return 1;
}


void pglDisplay ::SetWindowHandle(void* hWnd)
{
    winHWND = hWnd;
}

void* pglDisplay ::GetWindowHandle()
{
    return winHWND;
}

bool pglDisplay ::InitDisplay(int x, int y, int bpp)
{
    // check we are not trying to init to the same resolution
    if((x == winWidth) &&  (y == winHeight) && (bpp == winBitDepth))
    {
        return true;
    }

    // fill in the relevent portions of the casced display init structure
    displayInit.xsize = x;
    displayInit.ysize = y;
    displayInit.bpp = bpp;

    // do the full init
    return InitDisplay(&displayInit);
}

bool pglDisplay ::InitDisplay(const pddiDisplayInit* init)
{
    displayInit = *init;

    int x = init->xsize;
    int y = init->ysize;
    int bpp = init->bpp;
    pddiDisplayMode m = init->displayMode;
    int colourBufferCount = 1;
    unsigned bufMask = init->bufferMask;
    unsigned nSamples = 0;

    reset = true;

    prevRC = wglGetCurrentContext();
    prevDC = wglGetCurrentDC();

    if(hDC && hRC)
        wglMakeCurrent((HDC)hDC, NULL);

    if (hRC)
        wglDeleteContext((HGLRC)hRC );

    if (hDC)
        ReleaseDC((HWND)winHWND, (HDC)hDC);

    hDC = GetDC((HWND)winHWND);

    mode = m;

    if(mode == PDDI_DISPLAY_FULLSCREEN)
    {
        DEVMODE devMode;
        ZeroMemory(&devMode,sizeof(DEVMODE));
        devMode.dmSize = sizeof(DEVMODE);;
        devMode.dmPelsWidth = x;
        devMode.dmPelsHeight = y;
        devMode.dmBitsPerPel = bpp;
        devMode.dmFields = DM_BITSPERPEL |DM_PELSWIDTH | DM_PELSHEIGHT;

        ChangeDisplaySettings(&devMode,0);
        windowStyle = GetWindowLong((HWND)winHWND,GWL_STYLE);
        SetWindowLong((HWND)winHWND,GWL_STYLE,WS_POPUP);
        ShowWindow((HWND)winHWND,SW_MAXIMIZE);
        SetForegroundWindow((HWND)winHWND);

        winWidth = x;
        winHeight = y;
        winBitDepth = bpp;
    }
    else
    {
        if(windowStyle)
        {
            ChangeDisplaySettings(NULL,0);
            SetWindowLong((HWND)winHWND,GWL_STYLE,windowStyle);

            RECT clientRect;
            clientRect.left = 0;
            clientRect.top = 0;
            clientRect.right = x;
            clientRect.bottom = y;

            AdjustWindowRect(&clientRect, windowStyle, FALSE);
            SetWindowPos((HWND)winHWND,HWND_NOTOPMOST,0,0, 
                clientRect.right-clientRect.left,
                clientRect.bottom-clientRect.top, 0);
            ShowWindow((HWND)winHWND, TRUE);
            winWidth = x;
            winHeight = y;
        }
        else
        {
            RECT rect;
            GetClientRect((HWND)winHWND, &rect);
            winWidth = rect.right - rect.left;
            winHeight = rect.bottom - rect.top;
            winBitDepth = GetDeviceCaps((HDC)hDC, BITSPIXEL);
        }
    }


    static PIXELFORMATDESCRIPTOR pfd = {
            sizeof(PIXELFORMATDESCRIPTOR),   // size of this pfd
            1,                               // version number
            PFD_DRAW_TO_WINDOW |             // support window
            PFD_SUPPORT_OPENGL |             // support OpenGL
            PFD_DOUBLEBUFFER,                // double buffered
            PFD_TYPE_RGBA,                   // RGBA type
            winBitDepth,                     // color depth
            0, 0, 0, 0, 0, 0,                // color bits ignored
            0,                               // no alpha buffer
            0,                               // shift bit ignored
            0,                               // no accumulation buffer
            0, 0, 0, 0,                      // accum bits ignored
            32,                              // 32-bit z-buffer   
            0,                               // no stencil buffer
            0,                               // no auxiliary buffer
            PFD_MAIN_PLANE,                  // main layer
            0,                               // reserved
            0, 0, 0                          // layer masks ignored
    };

    int error = GetLastError();

    int pixelformat = ChoosePixelFormat((HDC)hDC, &pfd);
    error = GetLastError();
    PDDIASSERT(pixelformat);

    int rc = SetPixelFormat((HDC)hDC, pixelformat, &pfd);
    error = GetLastError();
    PDDIASSERT(rc);

    hRC = wglCreateContext( (HDC)hDC );
    error = GetLastError();
    PDDIASSERT(hRC);
    wglMakeCurrent( (HDC)hDC, (HGLRC)hRC );

    char* glVendor   = (char*)glGetString(GL_VENDOR);
    char* glRenderer = (char*)glGetString(GL_RENDERER);
    char* glVersion  = (char*)glGetString(GL_VERSION);
    char* glExtensions = (char*)glGetString(GL_EXTENSIONS);

    static bool doExtensions = false;

    if(doExtensions)
    {
        doExtensions = false;
        char* buffer = new char[strlen(glExtensions) + 2];
        strcpy(buffer, glExtensions);

        char* walk = buffer;
        char* last = buffer;
        while(*walk)
        {
            if(*walk == ' ')
            {
                *walk = 0;
                OutputDebugString(last);
                OutputDebugString("\n");
                last = walk+1;
            }
            walk++;
        }
        OutputDebugString(last);
    }

    extBGRA = CheckExtension("GL_EXT_bgra");

    //sprintf(userDisplayInfo[0].description,"OpenGL - Vendor: %s, Renderer: %s, Version: %s",glVendor,glRenderer,glVersion);

    PostMessage((HWND)winHWND, WM_ACTIVATE, WA_ACTIVE, (LPARAM)winHWND);

    return TRUE;
}


extern pddiDisplayInfo displayInfo[2];

pddiDisplayInfo* pglDisplay ::GetDisplayInfo(void)
{
    return &displayInfo[0];
}

unsigned pglDisplay ::GetFreeTextureMem()
{
    return unsigned(-1);
}

unsigned pglDisplay ::GetBufferMask()
{
    return unsigned(-1);
}

int pglDisplay ::GetHeight()
{
    return winHeight;
}

int pglDisplay ::GetWidth()
{
    return winWidth;
}

int pglDisplay::GetDepth()
{
    return winBitDepth;
}

pddiDisplayMode pglDisplay::GetDisplayMode(void)
{
    return mode;
}

int pglDisplay::GetNumColourBuffer(void)
{
    return 2;
}

void pglDisplay::GetGamma(float* r, float* g, float* b)
{
    *r = gammaR;
    *g = gammaG;
    *b = gammaB;
}

void pglDisplay::SetGamma(float r, float g, float b)
{
    gammaR = r;
    gammaG = g;
    gammaB = b;

    unsigned short gamma[3][256];

    double igr = 1.0 / (double)r;
    double igg = 1.0 / (double)g;
    double igb = 1.0 / (double)b;

    const double n = 1.0 / 65535.0;

    for(int i=0; i < 256; i++)
    {
        double gcr = pow((double)initialGammaRamp[0][i]   * n, igr);
        double gcg = pow((double)initialGammaRamp[1][i] * n, igg);
        double gcb = pow((double)initialGammaRamp[2][i]  * n, igb);

        gamma[0][i] =   (WORD)(65535.0 * ((1.0 < gcr) ? 1.0 : gcr));
        gamma[1][i] = (WORD)(65535.0 * ((1.0 < gcg) ? 1.0 : gcg));
        gamma[2][i] =  (WORD)(65535.0 * ((1.0 < gcb) ? 1.0 : gcb));
    }

    SetDeviceGammaRamp((HDC)hDC, &gamma);
}

void pglDisplay ::SwapBuffers(void)
{
    ::SwapBuffers(wglGetCurrentDC());
    InvalidateRect((HWND)winHWND,NULL,FALSE);
    reset = false;
}

    
unsigned pglDisplay::Screenshot(pddiColour* buffer, int nBytes)
{

    if(nBytes < (winHeight * winWidth * 4))
        return 0;

    glReadBuffer(GL_FRONT);
    glReadPixels(0, 0,  winWidth, winHeight, GL_BGRA_EXT, GL_UNSIGNED_BYTE, buffer);  
    glReadBuffer(GL_BACK);

    unsigned tmp[2048];
    PDDIASSERT(winWidth < 2048);

    for(int i = 0; i < winHeight / 2; i++)
    {
        pddiColour* a = buffer + (i * winWidth);
        pddiColour* b = buffer + (((winHeight - 1) - i) * winWidth);
        memcpy(tmp, a, winWidth * 4);
        memcpy(a, b, winWidth * 4);
        memcpy(b, tmp, winWidth * 4);
    }

    return winHeight * winWidth * 4;
}

unsigned pglDisplay::FillDisplayModes(pddiModeInfo* displayModes)
{
    int i = 0;
    int nModes = 0;

    DEVMODE devMode;
    HDC hDC = GetDC(NULL);
    unsigned int bpp = GetDeviceCaps(hDC, BITSPIXEL);
    ReleaseDC(NULL,hDC);

    while(EnumDisplaySettings(NULL,i,&devMode))
    {
        i++;
        if((devMode.dmBitsPerPel == 16) || (devMode.dmBitsPerPel == 32))
        {
            displayModes[nModes].width = devMode.dmPelsWidth;
            displayModes[nModes].height = devMode.dmPelsHeight;
            displayModes[nModes].bpp = devMode.dmBitsPerPel;
            nModes++;
        }
    }

    return nModes;
}
    
  
void pglDisplay::BeginTiming()
{
    beginTime = (float)timeGetTime();
}

float pglDisplay::EndTiming()
{
    return (float)timeGetTime() - beginTime;
}

void pglDisplay::BeginContext(void)
{
    prevRC = wglGetCurrentContext();
    prevDC = wglGetCurrentDC();
    wglMakeCurrent((HDC)hDC,(HGLRC)hRC);
}

void pglDisplay::EndContext(void)
{
    wglMakeCurrent((HDC)prevDC,(HGLRC)prevRC);
}

