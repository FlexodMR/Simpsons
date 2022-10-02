//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _PDDIWIN32_HPP
#define _PDDIWIN32_HPP

#include <pddi/pddienum.hpp>

// machine dependent types
typedef __int64        PDDI_S64;
typedef __int64        PDDI_U64;
typedef int            PDDI_S32;
typedef unsigned       PDDI_U32;
typedef char           PDDI_S8;
typedef unsigned char  PDDI_U8;
typedef short          PDDI_S16;
typedef unsigned short PDDI_U16;

//-------------------------------------------------------------------
// PDDI DLL initialization
// pddiCreate() is the only function that needs to be imported by an
// application loading a PDDI DLL. This function will create a
// pddiDevice object for the particular renderer that the DLL
// supports.
//-------------------------------------------------------------------

class pddiDevice;

// prototype for the initialization function through implicit linking
extern "C" DLLEXPORT int pddiCreate(int versionMajor, int versionMinor, pddiDevice** dev);

// prototype for the initialization function through LoadLibrary
typedef int (*PDDICREATEPROC)(int, int, pddiDevice**);

// the Win32 version of PDDI uses fully virtualized interfaces
#define PDDI_INTERFACE virtual
#define PDDI_PURE = 0
#define PDDI_VIRTUAL

// PDDI will tell an app to stop drawing with this message
#define WM_PDDI_DRAW_ENABLE (WM_USER + 666)

class pddiDisplayInit
{
public:
    pddiDisplayInit()
    {
        xsize = 640;
        ysize = 480;
        bpp = 32;
        bufferMask = PDDI_BUFFER_COLOUR | PDDI_BUFFER_DEPTH | PDDI_BUFFER_STENCIL;;
        nColourBuffer = 2;
        nSamples = 0;
        displayMode = PDDI_DISPLAY_WINDOW;
        lockToVsync = false;
        asyncSwap = true;
        enableSnapshot = false;
    }

    int xsize;         // x resolution (fullscreen only)
    int ysize;         // y resolution (fullscreen only)
    int bpp;           // bits per pixel
    unsigned bufferMask;
    int nColourBuffer;
    int nSamples;
    pddiDisplayMode displayMode;
    bool lockToVsync;
    bool asyncSwap;
    bool enableSnapshot;
};

#include <pddi/pddipc.hpp>


#endif /* _PDDIWIN32_HPP */

