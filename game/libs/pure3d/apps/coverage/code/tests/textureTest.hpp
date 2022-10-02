//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef TEXTURETEST_HPP
#define TEXTURETEST_HPP

#include "coverage.hpp"

//-------------------------------------------------------------------
// Expected result:
//   Blended quads correctly reflect mode they were drawn with
// API coverage:
//   PDDI_BLEND_NONE, PDDI_BLEND_ALPHA, PDDI_BLEND_ADD,
//   PDDI_BLEND_SUBTRACT, PDDI_BLEND_MODULATE, PDDI_BLEND_MODULATE2,
//   PDDI_BLEND_ADDMODULATEALPHA
class AlphaTest : public CoverageTest
{
public:
    AlphaTest() : shader(NULL) {}
    virtual const char* GetName() { return "Alpha blending"; }
    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();
private:
    pddiShader* shader;
};

//-------------------------------------------------------------------
// Expected result:
//   Textured quads rendered with correct tiling modes
// API coverage:
//   pddiShader::SetUVMode()
class TilingTest : public CoverageTest
{
public:
    TilingTest() : shader(NULL) {}

    virtual const char* GetName() { return "Texture tiling"; }
    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();

private:
    pddiShader* shader;
};

//-------------------------------------------------------------------
// Expected result:
//   Draws and animates texture
// API coverage:
//   tTextureAnimation

class TexAnimTest : public CoverageTest
{
public:
    TexAnimTest () : controller(NULL), draw(NULL) {}
    virtual const char* GetName() { return "Texture Animation"; }
    virtual void Setup();
    virtual void Shutdown();
    virtual void Update(float deltaTime);
    virtual void Display();
protected:
    tFrameController* controller;
    tDrawable* draw;
};

//-------------------------------------------------------------------
// Expected result:
//   Draws 5 two-triangle quads with a palettized texture map applied.
//   NONE
//   BILINEAR
//   MIPMAP
//   MIPMAP_BILINEAR
//   MIPMAP_TRILINEAR 
// API coverage:
//   pddiShader::SetTexture();
//   pddiShader::SetFilterMode();
//   pddiRenderContext::DrawIndexedPrims(PDDI_PRIM_TRIANGLES);
//   palettized texture support
class MipMapPalettizedTextureTest : public CoverageTest
{
public:
    MipMapPalettizedTextureTest() : shader(NULL), texture(NULL) {}

    virtual const char* GetName() { return "Mipmap/Palettized"; }
    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();

private:
    tShader* shader;
    tTexture* texture;
};

//-------------------------------------------------------------------
// Expected result:
//   Draws bunch of rectangles with different textures
// API coverage:
//   pddiShader::SetTexture();
//   pddiRenderContext::DrawIndexedPrims(PDDI_PRIM_TRIANGLES);
class TextureTest : public CoverageTest
{
public:
    TextureTest() : shader(NULL) {}

    virtual const char* GetName() { return "Textures"; }
    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected result:\n\
        Draws bunch of rectangles with different textures\n\
    API coverage:\n\
        pddiShader::SetTexture();\n\
        pddiRenderContext::DrawIndexedPrims(PDDI_PRIM_TRIANGLES);\n";
    }

private:
    tShader* shader;
    tTexture* textures[7];
};

//-------------------------------------------------------------------
// Expected result:
//   Draws dxt texture
// API coverage:
//

class DxtTest : public CoverageTest
{
public:
    DxtTest() : shader(NULL) {}
    virtual const char* GetName() { return "Dxt Texture"; }
    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();

private:   
    tShader* shader;
    tTexture* textures[4];
};

//-----------------
// Texturing Test
//-----------------
class TexturingTest : public CoverageTest
{
public:
    TexturingTest();

    virtual const char* GetName() { return "Texturing"; }

    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
         Displays 12 textures, half mipmapped\n\
         textures of 16Bit depths don't work\n";
    }

private:
    tShader* shader;
    tTexture* textures[12];
};

class SpecularTest : public GeometryTest
{
public:
    SpecularTest();
    virtual const char* GetName() { return "Specular"; }
    virtual void Display();
};

//-------------------------------------------------------------------
// Expected result:
//   Draws textures that are in different powers of 2 in many different bit depths
// API coverage:
//   pddiShader::SetTexture();
//   pddiRenderContext::DrawIndexedPrims(PDDI_PRIM_TRIANGLES);
class PowerOf2Test : public CoverageTest
{
public:
    PowerOf2Test() : shader(NULL) {}

    virtual rmt::Vector GetCameraPos() { return rmt::Vector( 1.0f, 5.0f, -250.0f ); }

    virtual const char* GetName() { return "Varying Power of 2 Textures"; }
    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected result:\n\
        Draws textures that are in different powers of 2 \n\
        in 4 different bit depths\n\
    API coverage:\n\
        pddiShader::SetTexture();\n\
        pddiRenderContext::DrawIndexedPrims(PDDI_PRIM_TRIANGLES);\n";
    }

private:
    tShader* shader;
    tTexture* textures[12];
};

//-----------------------------------------------------------
// Expected Result:
//   Correctly draws 4 large 512 x 512 pixel 24-bit textures
//   Doing this in order to measure the texture cache performance

class LargeTextureTest : public CoverageTest
{
public:
    LargeTextureTest() : shader(NULL) {}

    virtual rmt::Vector GetCameraPos() { return rmt::Vector( 1.0f, 40.0f, -250.0f ); }

    virtual const char* GetName() { return "Large Textures";}
    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
        Correctly draws 4 large 512 x 512 pixel 24-bit textures. \n\
        Doing this in order to measure the texture cache performance. \n";
    }

private:
    tShader* shader;
    tTexture* textures[4];
};

//-------------------------------------------------------------
// render to texture test
//-------------------------------------------------------------

class RenderToTextureTest : public CoverageTest
{
public:
    RenderToTextureTest();
    virtual ~RenderToTextureTest();

    virtual const char* GetName() { return "Rendering To Texture";}
    virtual void Setup();
    virtual void Display();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
        \n\
        \n";
    }

private:
    tGeometry* cube;
    tDrawable* scene;
    tTexture* texture;
    tShader* shader;
    bool isGrabbed;
};


#endif