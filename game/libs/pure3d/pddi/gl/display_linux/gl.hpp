//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// stub OpenGL header, all pddi gl code uses this instead of '#include <GL/gl.h>
// this is neccesary because of windows api issues

// Fortunatly, under linux, we can ignore the windows problems and just
// include <GL/gl.h>

#include <GL/gl.h>

#define LIGHT_MODEL_COLOR_CONTROL_EXT (GLenum)0x81F8 
#define SINGLE_COLOR_EXT              (GLenum)0x81F9
#define SEPARATE_SPECULAR_COLOR_EXT   (GLenum)0x81FA

