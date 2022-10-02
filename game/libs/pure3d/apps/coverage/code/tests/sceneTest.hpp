//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef SCENETEST_HPP
#define SCENETEST_HPP

#include "coverage.hpp"

// ***************************************
// scenegraphTest is found in coverage.hpp
// ***************************************

//-------------------------------------------------------------------
// Expected result:
//   Draws three phong shaded polygons
//   Should fog to white
//   Should fog linearly
// API coverage:
//   pddiRenderContext::EnableFog();
//   pddiRenderContext::SetFog(PDDI_FOG_LINEAR);
//   pddiRenderContext::DrawIndexedPrims(PDDI_PRIM_TRIANGLES);
//   pddiRenderContext::PushState(PDDI_STATE_FOG);
//   pddiRenderContext::PopState(PDDI_STATE_FOG);
class LinearFogTest : public CoverageTest
{
public:
    virtual const char* GetName() { return "Linear fog & Fog stack"; }
    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected result:\n\
        Draws three phong shaded polygons\n\
        Should fog to white\n\
        Should fog linearly\n\
    API coverage:\n\
        pddiRenderContext::EnableFog();\n\
        pddiRenderContext::SetFog(PDDI_FOG_LINEAR);\n\
        pddiRenderContext::DrawIndexedPrims(PDDI_PRIM_TRIANGLES);\n\
        pddiRenderContext::PushState(PDDI_STATE_FOG);\n\
        pddiRenderContext::PopState(PDDI_STATE_FOG);\n";
    }
};

class DebugDrawTest : public ScenegraphTest
{
public:
    DebugDrawTest ();
    virtual const char* GetName() { return "DebugDrawTest"; }
    virtual rmt::Vector GetCameraPos() { return rmt::Vector( 0.0f, 2.0f, -10.0f ); }
    virtual void Display();
};
#endif