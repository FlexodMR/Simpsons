/*====================================================================
   ps2shader.hpp
   03-Apr-02 Created by Neall

   Copyright (c)2002 Radical Entertainment Ltd
   All rights reserved.
====================================================================*/

#include <pddi/ps2/ps2shader.hpp>
#include <eestruct.h>

namespace SHADER
{
    const u_long DitherMatrix[2] =
    {
        SCE_GS_SET_DIMX( 0x4,0x2,0x5,0x3, 0x0,0x6,0x1,0x7, 0x5,0x3,0x4,0x2, 0x1,0x7,0x0,0x6 ),  // opaque polys
        SCE_GS_SET_DIMX( 0x0,0x2,0x1,0x3, 0x0,0x2,0x1,0x3, 0x1,0x3,0x0,0x2, 0x1,0x3,0x0,0x2 )   // alpha'd polys
    };

    const unsigned filterMinTable[] =
    {
        0x00, // NONE
        0x01, // BILINEAR
        0x02, // MIPMAP
        0x04, // MIPMAP_BILINEAR
        0x05  // MIPMAP_TRILINEAR
    };

    const unsigned filterMagTable[] =
    {
        0x00, // NONE
        0x01, // BILINEAR
        0x00, // MIPMAP
        0x01, // MIPMAP_BILINEAR
        0x01  // MIPMAP_TRILINEAR
    };

    const unsigned uvTable[] =
    {
        0x00, // REPEAT
        0x01  // CLAMP
    };

    const unsigned alphaTestTable[] =
    {
        0x00, // NONE
        0x01, // ALWAYS
        0x02, // LESS
        0x03, // LESSEQUAL
        0x06, // GREATER
        0x05, // GREATEREQUAL
        0x04, // EQUAL
        0x07  // NOTEQUAL
    };

    const BlendParam alphaBlendTable[] =
    {
        // 0x00 = src colour, src alpha
        // 0x01 = dst colour, dst alpha
        // 0x02 = zero, fixed alpha
        // 0x03 = reserved
        // for PDDI_BLEND_ALPHA:
        // Oc = As*Sc - As*Dc + Dc
        //    = As*Sc - Dc*(As - 1)
        //    = As*Sc + Dc*(1 - As) ???
        //   A     B     C     D   FIX
        { 0x02, 0x02, 0x02, 0x00, 0x80 }, // NONE
        { 0x00, 0x01, 0x00, 0x01, 0x80 }, // ALPHA
//        { 0x01, 0x00, 0x00, 0x01, 0x80 }, // ALPHA mode for Fog!!
        { 0x00, 0x02, 0x02, 0x01, 0x80 }, // ADD
        { 0x01, 0x00, 0x02, 0x02, 0x80 }, // SUBTRACT
        { 0x01, 0x02, 0x00, 0x02, 0x80 }, // MODULATE (not the real thing, uses funky colour*alpha blending)
        { 0x02, 0x02, 0x02, 0x00, 0x80 }, // MODULATE2 (NOPE)
        { 0x01, 0x02, 0x00, 0x02, 0x80 }, // ADDMODULATEALPHA (not the real thing, uses funky colour*alpha blending)
        { 0x01, 0x00, 0x00, 0x02, 0x80 }, // SUBMODULATEALPHA (for mangled lightmaps) = (Cd - Cs)*As
        { 0x00, 0x02, 0x01, 0x01, 0x80 }  // DESTALPHA
        //{ 0x00, 0x01, 0x00, 0x01, 0xff }   // ANTIALIAS
    };
    
    const int zCompareTable[] =
    {
        0x00, // NONE
        0x01, // ALWAYS
        0x03, // LESS (not supported - mapped to GREATER)
        0x02, // LESSEQUAL (not supported - mapped to GREATEREQUAL)
        0x03, // GREATER
        0x02, // GREATEREQUAL
        0x00, // EQUAL (not supported - mapped to NONE)
        0x00  // NOTEQUAL (not supported - mapped to NONE)
    };
      
    const unsigned primTable[] =
    {
        0x03, // PDDI_PRIM_TRIANGLES
        0x04, // PDDI_PRIM_TRISTRIP
        0x01, // PDDI_PRIM_LINES
        0x02, // PDDI_PRIM_LINESTRIP
        0x00  // PDDI_PRIM_POINT
    };

    const int destAlphaTestTable[] =
    {
        1, // PS2_DESTALPHA_NONE,
        0, // PS2_DESTALPHA_PASS_0,
        1  // PS2_DESTALPHA_PASS_1
    };

    const float mipTable[3] =
    {
        -6.68f,
        -3.32f,
        0.0f
    };
} // namespace SHADER
