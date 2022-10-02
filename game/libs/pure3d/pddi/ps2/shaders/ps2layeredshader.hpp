/*====================================================================
   ps2layeredshader.hpp
   27-Aug-01 Created by Neall

   Copyright (c)2001 Radical Entertainment Ltd.
   All rights reserved.
====================================================================*/

#ifndef _PS2LAYEREDSHADER_HPP
#define _PS2LAYEREDSHADER_HPP

#include <pddi/ps2/ps2texture.hpp>
#include <pddi/ps2/shaders/ps2lightmapshader.hpp>

class ps2LayeredShader : public ps2LightmapShader
{
public:
   ps2LayeredShader(ps2Context* c);
   virtual const char* GetType(void) { return "layered"; }


   void SetTopTex(pddiTexture* texture);

   static void Install();
};

#endif /* _PS2LAYEREDSHADER_HPP */
