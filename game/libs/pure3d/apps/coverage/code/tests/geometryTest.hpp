//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef GEOMETRYTEST_HPP
#define GEOMETRYTEST_HPP

#include "coverage.hpp"


//-------------------------------------------------------------------
// Expected result:
//   Draws a single gouraud shaded triangle.
//   Top vertex should be red, right green, left blue
// API coverage:
//   pddiShader::SetShadeMode(PDDI_SHADE_GOURAUD);
//   pddiRenderContext::DrawPrims(PDDI_PRIM_TRIANGLES);
class GouraudTriTest : public CoverageTest
{
public:
    GouraudTriTest() : shader(NULL) {}

    virtual void Setup();
    virtual void Shutdown();

    virtual const char* GetName() { return "RGB Gouraud shaded triangle"; }
    virtual void Display();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected result:\n\
        Draws a single gouraud shaded triangle.\n\
        Top vertex should be red, right green, left blue\n\
    API coverage:\n\
        pddiShader::SetShadeMode(PDDI_SHADE_GOURAUD);\n\
        pddiRenderContext::DrawPrims(PDDI_PRIM_TRIANGLES);";
    }

private:
    
    pddiShader* shader;
};

//-------------------------------------------------------------------
// Expected result:
//   Draws a two-triangle flat-shaded quad.
//   Quad should appear in the middle of the screen, and have
//   dimensions of 100x100
//   colour should be magenta
// API coverage:
//   pddiShader::SetAmbient(PDDI_SHADE_GOURAUD);
//   pddiRenderContext::SetProjectionMode(PDDI_PROJECTION_ORTHOGRAPHIC);
//   pddiRenderContext::DrawIndexedPrims(PDDI_PRIM_TRIANGLES);
class OrthoQuadTest : public CoverageTest
{
public:
    OrthoQuadTest() : shader(NULL) {}

    virtual const char* GetName() { return "Orthographic quad (magenta-red top)"; }
    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected result:\n\
        Draws a two-triangle flat-shaded quad.\n\
        Quad should appear in the middle of the screen, and have\n\
        dimensions of 100x100\n\
        colour should be magenta\n\
    API coverage:\n\
        pddiShader::SetAmbient(PDDI_SHADE_GOURAUD);\n\
        pddiRenderContext::SetProjectionMode(PDDI_PROJECTION_ORTHOGRAPHIC);\n\
        pddiRenderContext::DrawIndexedPrims(PDDI_PRIM_TRIANGLES);\n";
    }

private:
    pddiShader* shader;
};


//------------------------------------------------------------------
// simple geometry test - displays a cube, torus, sphere, and cone
//------------------------------------------------------------------
class SimpleGeometryTest : public GeometryTest
{
public:
    SimpleGeometryTest();
    virtual const char* GetName() { return "Simple Geometry"; }
    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();

private:
    tGeometry* cone;
    tGeometry* sphere;
    tGeometry* torus;
};

//-------------------------------------------------------------------
// Expected result:
//   draw a sprite image of a multicolored nebula
// API coverage:
//   tSprite
class SpriteTest : public CoverageTest
{
public:
    SpriteTest() : sprite(NULL) {}

    virtual const char* GetName() { return "Sprite"; }
    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();

private:
    tSprite* sprite;
};

//-------------------------------------------------------------------
// tristrip test
//-------------------------------------------------------------------
class TristripTest : public CoverageTest
{
public:
    TristripTest() : shader(NULL) {}

    virtual const char* GetName() { return "Triangle Strip"; }
    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();

private:
    pddiShader* shader;
};

//--------------------------------------------------------------------
// culling test
//--------------------------------------------------------------------
class CullingTest : public CoverageTest
{
public:
    CullingTest();

    virtual const char* GetName() {return "Culling";}

    virtual rmt::Vector GetCameraPos() {return rmt::Vector(1.0f, 0.5, -20.0f);}
    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();
    virtual void Update(float deltaTime);
    
protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
        Draws rotating planes with different methods of culling\n\
        on each one.\n";
    }

private:
    tGeometry* plane;
    tTexture* texture;
    tShader* shader;

    float totalTime;
};

#endif