//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// stub OpenGL header, all pddi gl code uses this instead of '#include <GL/gl.h>
// this is neccesary because of windows api issues

#ifndef APIENTRY  
    // windows.h is not included, define API delcspecs needed bu gl.h
    #define APIENTRY    __stdcall
    #define WINAPI      __stdcall
    #define WINGDIAPI   __declspec(dllimport)
    #include <GL/gl.h>
    #undef WINAPI
    #undef WINGDIAPI   
    #undef APIENTRY   
#else 
    // we are included after window.h, don't bother doing any trickery
    #include <GL/gl.h>
#endif

#define LIGHT_MODEL_COLOR_CONTROL_EXT 0x81F8 
#define SINGLE_COLOR_EXT              0x81F9
#define SEPARATE_SPECULAR_COLOR_EXT   0x81FA

