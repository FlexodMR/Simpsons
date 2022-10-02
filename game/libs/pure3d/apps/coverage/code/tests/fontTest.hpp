//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef FONTTEST_HPP
#define FONTTEST_HPP

#include "coverage.hpp"

//-------------------------------------------------------------------
// Expected result:
//   Draws a text string ("The quick brown fox...") 
//   Should be white letters, transparent background
// API coverage:
//   tPolyFontLoader
//   tPolyFont
//   tFontFactory
class FontTest : public CoverageTest
{
public:
    FontTest();
    virtual ~FontTest(){ /* nop */ };

    virtual const char* GetName() { return "Font"; }
    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();

private:
    tImageConverter conv;
    pddiShader*     material;
    tTextureFont*   loadTexFont;
    tImageFont*     loadImageFont;
    P3D_UNICODE     unicode1[256];
    P3D_UNICODE     unicode2[256];

    tTexture*       textTex1;
    tImage32*       image1;
    int    imageWidth1;
    int    imageHeight1;
};

//-------------------------------------------------------------------
// Expected result:
//   Renders several text strings
//   All characters should be correctly formed
//   Text should be yellow
// API coverage:
//   pddiRenderContext::DrawString()
//   pddiRenderContext::DrawPrims(PDDI_PRIM_LINESTRIP)
//   pddiShader::SetDiffuse()
class TextTest : public CoverageTest
{
public:
    virtual const char* GetName() { return "Yellow text"; }
    virtual void Setup() {};
    virtual void Shutdown() {};
    virtual void Display();
};

//-------------------
// unicode font test
//-------------------

class UnicodeFontTest : public CoverageTest
{
public:
    UnicodeFontTest();

    virtual const char* GetName() { return "Unicode Font"; }

    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
         Prints \"Radical Entertainment\"\n\
         in Japanese characters\n";
    }

private:

    tTextureFont* japaneseRadical;
};

#endif