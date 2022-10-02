//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "fontTest.hpp"

//-------------------------------------------------------------------
// font test
//-------------------------------------------------------------------
FontTest::FontTest() : 
    material(NULL), 
    loadTexFont(NULL),
    loadImageFont(NULL),
    textTex1(NULL),
    image1(NULL)
{
}

void FontTest::Setup()
{
    SetupSection();

    material = p3d::device->NewShader("simple");
    material->SetInt(PDDI_SP_ISLIT,0);
    material->SetInt(PDDI_SP_BLENDMODE,PDDI_BLEND_ALPHA);
    material->SetInt(PDDI_SP_FILTER,PDDI_FILTER_BILINEAR);
    material->SetInt(PDDI_SP_ALPHATEST, 1 );

    // Load text from pure3D file
    Load("Fonts/arialtex.p3d");
    loadTexFont = p3d::find<tTextureFont>("arial_25");
    if (loadTexFont)
    {
        loadTexFont->AddRef();
        p3d::AsciiToUnicode("This texture font is loaded from a .p3d file", unicode1, 256);
    }
    
    // Load text from a true type font file
    Load("Fonts/arialimg.p3d");
    loadImageFont = p3d::find<tImageFont>("arial_25");
    if (loadImageFont)
    {
        loadImageFont->AddRef();
    }

    if(loadImageFont) 
    {
        p3d::AsciiToUnicode("This image font is loaded from a .p3d file", unicode2, 256);
        imageWidth1 = loadImageFont->GetTextWidth(unicode2);
        imageHeight1 = loadImageFont->GetTextHeight(unicode2);

        if (!rmt::IsPow2(imageWidth1))
        {
            imageWidth1 = rmt::NextPow2(imageWidth1);
        }

        if (!rmt::IsPow2(imageHeight1))
        {
            imageHeight1 = rmt::NextPow2(imageHeight1);
        }

        image1 = new tImage32;
        image1->AddRef();
        image1->SetAlpha(true);
        image1->SetSize(imageWidth1, imageHeight1);
        image1->Clear(tColour(255,255,255,0));

        loadImageFont->DisplayText(image1, imageWidth1/2, 0, unicode2, 1);
        textTex1 = conv.ImageToTexture(image1);
        textTex1->AddRef();
    }
}

void FontTest::Shutdown()
{
    if (loadTexFont)
        loadTexFont->Release();
    if (loadImageFont)
        loadImageFont->Release();
    if (material)
        material->Release();
    if (textTex1)
        textTex1->Release();
    if (image1)
        image1->Release();
}

void FontTest::Display()
{
    p3d::stack->Push();

    if(loadTexFont) 
    {  
        loadTexFont->DisplayText(unicode1, 1);
        p3d::stack->Translate(0, -20, 0);
    }

    if(loadImageFont)
    {
        material->SetTexture(PDDI_SP_BASETEX, textTex1->GetTexture());
        pddiPrimStream* stream = p3d::pddi->BeginPrims(material, PDDI_PRIM_TRIANGLES, PDDI_V_CT, 6);

        stream->Colour(pddiColour(255,255,255,255));
        stream->UV(0.0f, 0.0f);
        stream->Coord(-imageWidth1/2.0f, -imageHeight1/2.0f,0);

        stream->Colour(pddiColour(255,255,255,255));
        stream->UV(0.0f, 1.0f);
        stream->Coord(-imageWidth1/2.0f, imageHeight1/2.0f,0);

        stream->Colour(pddiColour(255,255,255,255));
        stream->UV(1.0f, 1.0f);
        stream->Coord(imageWidth1/2.0f, imageHeight1/2.0f,0);

        //------------

        stream->Colour(pddiColour(255,255,255,255));
        stream->UV(0.0f, 0.0f);
        stream->Coord(-imageWidth1/2.0f, -imageHeight1/2.0f,0);

        stream->Colour(pddiColour(255,255,255,255));
        stream->UV(1.0f, 1.0f);
        stream->Coord(imageWidth1/2.0f, imageHeight1/2.0f,0);

        stream->Colour(pddiColour(255,255,255,255));
        stream->UV(1.0f, 0.0f);
        stream->Coord(imageWidth1/2.0f, -imageHeight1/2.0f,0);

        p3d::pddi->EndPrims(stream);

        p3d::stack->Translate(0, -60, 0);
    }

    p3d::stack->Pop();
}


//-------------------------------------------------------------------
// text test - displays yellow text
//-------------------------------------------------------------------
void TextTest::Display()
{
    int x = p3d::display->GetWidth() / 2;
    int y = p3d::display->GetHeight() / 2;
    p3d::pddi->DrawString(
        "ABCDEFGHIJKLM\n"
        "NOPQRSTUVWXYZ\n"
        "abcdefghijklm\n"
        "nopqrstuvwxyz\n"
        "0123456789\n"
        "`~!@#$%^&*()_-\n"
        "+={[}]|\\:;\"'<,>.?/",
        x, y, tColour(200,200,0));
}

//-------------------
// unicode font test
//-------------------

UnicodeFontTest::UnicodeFontTest() : japaneseRadical(NULL)
{

}

void UnicodeFontTest::Setup()
{
    SetupSection();

    Load("Fonts/Arialuni.p3d");
    japaneseRadical = p3d::find<tTextureFont>("Arialuni_30");
    if (japaneseRadical) japaneseRadical->AddRef();

    // set of characters for future reference
    // {0x30E9, 0x30C2, 0x30AB, 0x30EB, 0x30A8, 0x30F3, 0x30BF, 0x30C6, 0x30A3, 0x30E1, 0x30C8}
}

void UnicodeFontTest::Shutdown()
{
    if (japaneseRadical) japaneseRadical->Release();
}

void UnicodeFontTest::Display()
{
    P3D_UNICODE string[] = {0x30E9,0x30C2,0x30AB,0x30EB,0x30A8,0x30F3,0x30BF,0x30C6,0x30A3,0x30F3,0x30E1,0x30F3,0x30C8, 0x0000};

    p3d::stack->Push();
    p3d::stack->Translate(0.0f, 30.0f, 0.0f);

    if (japaneseRadical)
    {
        japaneseRadical->DisplayText(string,1);
    }

    p3d::stack->Pop();

    char display[128] = "radical entertainment";
    p3d::pddi->DrawString(display, 225, 275, tColour(255, 0, 0));

}
