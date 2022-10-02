//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "textureTest.hpp"

//-------------------------------------------------------------------
void AlphaTest::Shutdown()
{
    if(shader) shader->Release();
}

void AlphaTest::Setup()
{
    SetupSection();
    shader = p3d::device->NewShader("simple");
}

void AlphaTest::Display()
{
    p3d::pddi->PushState(PDDI_STATE_VIEW);
    p3d::pddi->PushState(PDDI_STATE_RENDER);
    p3d::pddi->SetProjectionMode(PDDI_PROJECTION_DEVICE);
    p3d::pddi->EnableZBuffer(false);
        
    p3d::stack->Push();
    p3d::stack->LoadIdentity();

    // Draw 7 squares, each with a different type of blending overlaying it
    BlendTest(shader,  30.0f,  40.0f, PDDI_BLEND_NONE,      tColour(255,255,255),      "PDDI_BLEND_NONE");
    BlendTest(shader,  30.0f, 110.0f, PDDI_BLEND_ALPHA,     tColour(255,255,255,0x7f), "PDDI_BLEND_ALPHA");
    BlendTest(shader,  30.0f, 180.0f, PDDI_BLEND_ADD,       tColour(0x5f,0x5f,0x5f),   "PDDI_BLEND_ADD");
    BlendTest(shader,  30.0f, 250.0f, PDDI_BLEND_SUBTRACT,  tColour(0x7f,0x7f,0x7f), "PDDI_BLEND_SUBTRACT");
    BlendTest(shader, 250.0f,  40.0f, PDDI_BLEND_MODULATE,  tColour(0x7f,0x7f,0x7f), "PDDI_BLEND_MODULATE");
    BlendTest(shader, 250.0f, 110.0f, PDDI_BLEND_MODULATE2, tColour(0x2f,0x2f,0x2f), "PDDI_BLEND_MODULATE2");
    BlendTest(shader, 250.0f, 180.0f, PDDI_BLEND_ADDMODULATEALPHA, tColour(0x7f,0x7f,0x7f), "PDDI_BLEND_ADDMODULATEALPHA");

    p3d::stack->Pop();

    p3d::pddi->PopState(PDDI_STATE_RENDER);
    p3d::pddi->PopState(PDDI_STATE_VIEW);
}

//-------------------------------------------------------------------
void TilingTest::Shutdown()
{
    if(shader) shader->Release();
}

void TilingTest::Setup()
{
    SetupSection();
    shader = p3d::device->NewShader("simple");

    tImageFactory factory;
    char name[512];
    FillPath("Textures/256x256x8.bmp", name);
    tTexture* texture = factory.LoadAsTexture(name);
    if(texture)
    {
        shader->SetTexture(PDDI_SP_BASETEX, texture->GetTexture());
        texture->Release();
    }
}

void TilingTest::Display()
{
    p3d::pddi->PushState(PDDI_STATE_VIEW);
    p3d::pddi->SetProjectionMode(PDDI_PROJECTION_DEVICE);
    
    p3d::stack->Push();
    p3d::stack->LoadIdentity();
    
    shader->SetInt(PDDI_SP_UVMODE, PDDI_UV_TILE);
    Square(shader, 20.0f, 20.0f, 100.0f, 100.0f, 2.0f, tColour(255,255,255));
    p3d::pddi->DrawString("PDDI_UV_TILE (4x)", 20, 120, tColour(255,255,0));

    Square(shader, 20.0f, 140.0f, 100.0f, 100.0f, 8.0f, tColour(255,255,255));
    p3d::pddi->DrawString("PDDI_UV_TILE (8x)", 20, 240, tColour(200,200,0));

    Square(shader, 190.0f, 20.0f, 100.0f, 100.0f, 16.0f, tColour(255,255,255));
    p3d::pddi->DrawString("PDDI_UV_TILE (16x)", 190, 120, tColour(200,200,0));

    shader->SetInt(PDDI_SP_UVMODE, PDDI_UV_CLAMP);
    Square(shader, 190.0f, 140.0f, 100.0f, 100.0f, 2.0f, tColour(255,255,255));
    p3d::pddi->DrawString("PDDI_UV_CLAMP", 190, 240, tColour(200,200,0));

    p3d::stack->Pop();

    p3d::pddi->PopState(PDDI_STATE_VIEW);
}

//-------------------------------------------------------------------
// Texture Animation Test
//    Draws an object with an animated texture
//    Texture counts from 1 to 20

void TexAnimTest::Shutdown()
{
    if (controller) controller->Release();
    if (draw) draw->Release();
}

void TexAnimTest::Setup()
{
    SetupSection();

    Load("Textures/20TextureAnimation.p3d");
    p3d::inventory->SelectSection(GetName());

    // Get frame controller for texture animation
    controller = p3d::find<tMultiController>("MasterController");
    if (controller) controller->AddRef();
    controller->SetCycleMode(FORCE_CYCLIC);
    // Get drawable object
    draw = p3d::find<tDrawable>("pPlaneShape1");
    if (draw) draw->AddRef();
}

void TexAnimTest::Update(float deltaTime)
{
    if(controller)
    {
        controller->Advance(deltaTime);
    }
}

void TexAnimTest::Display()
{
    if(draw)
    {
        p3d::stack->Push();
        p3d::stack->RotateX(rmt::DegToRadian(-90.0f));
        p3d::stack->Scale(10);
        draw->Display();
        p3d::stack->Pop();
    }
}

//-------------------------------------------------------------------
void MipMapPalettizedTextureTest::Shutdown()
{
    if(shader) shader->Release();
}

void MipMapPalettizedTextureTest::Setup()
{
    SetupSection();

    Load("Textures/mipmap.p3d");

    shader = new tShader;
    texture = p3d::find<tTexture>("mipmap.bmp");
}

void MipMapPalettizedTextureTest::Display()
{
    // Draw 5 quads, each with different filtering methods on them
    shader->SetInt(PDDI_SP_FILTER, PDDI_FILTER_NONE);
    DoQuad(shader, texture, -160.0f, 0.0f, 0.0f, 50.0f, 50.0f, PDDI_BLEND_NONE);

    shader->SetInt(PDDI_SP_FILTER, PDDI_FILTER_BILINEAR);   
    DoQuad(shader, texture, -100.0f, 0.0f, 0.0f, 50.0f, 50.0f, PDDI_BLEND_NONE);

    shader->SetInt(PDDI_SP_FILTER, PDDI_FILTER_MIPMAP);
    DoQuad(shader, texture, -40.0f, 0.0f, 0.0f, 50.0f, 50.0f, PDDI_BLEND_NONE);

    shader->SetInt(PDDI_SP_FILTER, PDDI_FILTER_MIPMAP_BILINEAR);
    DoQuad(shader, texture, 20.0f, 0.0f, 0.0f, 50.0f, 50.0f, PDDI_BLEND_NONE);

    shader->SetInt(PDDI_SP_FILTER, PDDI_FILTER_MIPMAP_TRILINEAR);
    DoQuad(shader, texture, 80.0f, 0.0f, 0.0f, 50.0f, 50.0f, PDDI_BLEND_NONE);

    p3d::pddi->DrawString("NONE, BILINEAR, MIPMAP, MIPMAP_BILINEAR, MIPMAP_TRILINEAR",
        20, 50, tColour(200,200,200));

    return;
}

//-------------------------------------------------------------------
void TextureTest::Shutdown()
{
    for(int i = 0; i < 7; i++)
    {
        tRefCounted::Release(textures[i]);
    }

    if(shader) shader->Release();
}

void TextureTest::Setup()
{
    SetupSection();

    tImageFactory factory;
    char name[512];
    char* images[32] =
    {
        "Textures/textestmono.bmp",
        "Textures/textest4.bmp",
        "Textures/textest8.bmp",
        "Textures/textest16.bmp",
        "Textures/textest24.tga",
        "Textures/textest32.tga",
        "Textures/textest32a.tga"      
    };

    for(int i = 0; i < 7; i++)
    {
        FillPath(images[i], name);            
        textures[i] = factory.LoadAsTexture(name);
        if(textures[i]) textures[i]->AddRef();
    }

    shader = new tShader;
}

void TextureTest::Display()
{
    // Draw a quad for each of the seven textures
    shader->SetInt(PDDI_SP_ALPHATEST, 1 );
    DoQuad(shader, textures[0], -100.0f, 0.0f, 0.0f, 50.0f, 50.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[1], -40.0f, 0.0f, 0.0f, 50.0f, 50.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[2], 20.0f, 0.0f, 0.0f, 50.0f, 50.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[3], 80.0f, 0.0f, 0.0f, 50.0f, 50.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[4], -100.0f, -60.0f, 0.0f, 50.0f, 50.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[5], -40.0f, -60.0f, 0.0f, 50.0f, 50.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[6], 20.0f, -60.0f, 0.0f, 50.0f, 50.0f, PDDI_BLEND_ALPHA);
}

//-------------------------------------------------------------------
void DxtTest::Shutdown()
{
    for(int i = 0; i < 4; i++)
    {
        if(textures[i]) textures[i]->Release();
    }
    if(shader)
        shader->Release();
}

void DxtTest::Setup()
{
    tImageFactory factory;
    char name[512];
    char* images[32] =
    {
        "Textures/texture0.dds",
        "Textures/texture1.dds",
        "Textures/texture2.dds",
        "Textures/texture3.dds"
    };

    for(int i = 0; i < 4; i++)
    {
        FillPath(images[i], name);            
        textures[i] = factory.LoadAsTexture(name);
        if(textures[i]) textures[i]->AddRef();
    }

    shader = new tShader;
}

void DxtTest::Display()
{
    DoQuad(shader, textures[0], -160.0f, 0.0f, 0.0f, 50.0f, 50.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[1], -100.0f, 0.0f, 0.0f, 50.0f, 50.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[2], -40.0f, 0.0f, 0.0f, 50.0f, 50.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[3], 20.0f, 0.0f, 0.0f, 50.0f, 50.0f, PDDI_BLEND_NONE);
}

//------------------
// Texturing Test
//------------------
TexturingTest::TexturingTest() : shader(NULL)
{
    for (int i = 0; i < 12; i++)
    {
        textures[i] = NULL;
    }
}

void TexturingTest::Shutdown()
{
    if (shader) shader->Release();
}

void TexturingTest::Setup()
{
    SetupSection();

    Load("TexturingTest/128x128x32Bit.p3d");
    Load("TexturingTest/256x256x32Bit.p3d");
    Load("TexturingTest/256x256x8BitPalettized.p3d");
    Load("TexturingTest/512x512x32Bit.p3d");
    Load("TexturingTest/512x512x4BitPalettized.p3d");
    Load("TexturingTest/512x512x8BitPalettized.p3d");
    
    textures[0] = p3d::find<tTexture>("128x128x32Bit.tga");
    textures[1] = p3d::find<tTexture>("256x256x32Bit.tga");
    textures[2] = p3d::find<tTexture>("256x256x8BitPalettized.bmp");
    textures[3] = p3d::find<tTexture>("512x512x32Bit.tga");
    textures[4] = p3d::find<tTexture>("512x512x4BitPalettized.bmp");
    textures[5] = p3d::find<tTexture>("512x512x8BitPalettized.bmp");

    textures[6] = p3d::find<tTexture>("128x128x32Bit.tga");
    textures[7] = p3d::find<tTexture>("256x256x32Bit.tga");
    textures[8] = p3d::find<tTexture>("256x256x8BitPalettized.bmp");
    textures[9] = p3d::find<tTexture>("512x512x32Bit.tga");
    textures[10] = p3d::find<tTexture>("512x512x4BitPalettized.bmp");
    textures[11] = p3d::find<tTexture>("512x512x8BitPalettized.bmp");

    shader = new tShader;
    shader->AddRef();
}

void TexturingTest::Display()
{
    shader->SetInt(PDDI_SP_FILTER, PDDI_FILTER_NONE);
    DoQuad(shader, textures[0], -175.0f, 0.0f, 0.0f, 50.0f, 50.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[1], -115.0f, 0.0f, 0.0f, 50.0f, 50.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[2], -55.0f, 0.0f, 0.0f, 50.0f, 50.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[3], 5.0f, 0.0f, 0.0f, 50.0f, 50.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[4], 65.0f, 0.0f, 0.0f, 50.0f, 50.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[5], 125.0f, 0.0f, 0.0f, 50.0f, 50.0f, PDDI_BLEND_NONE);

    shader->SetInt(PDDI_SP_FILTER, PDDI_FILTER_MIPMAP);
    DoQuad(shader, textures[5], -175.0f, -60.0f, 0.0f, 50.0f, 50.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[7], -115.0f, -60.0f, 0.0f, 50.0f, 50.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[8], -55.0f, -60.0f, 0.0f, 50.0f, 50.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[9], 5.0f, -60.0f, 0.0f, 50.0f, 50.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[10], 65.0f, -60.0f, 0.0f, 50.0f, 50.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[11], 125.0f, -60.0f, 0.0f, 50.0f, 50.0f, PDDI_BLEND_NONE);

    p3d::pddi->DrawString("Size \n 128x128  256x256   256x256   512x512   512x512   512x512",
        25, 50, tColour(255,255,255));
    
    p3d::pddi->DrawString("Depth \n  32Bit      32Bit       8Bit       32Bit       4Bit       8Bit",
        25, 90, tColour(255, 255, 255));

    p3d::pddi->DrawString("non mip mapped", 25, 130, tColour(255,255,255));
    p3d::pddi->DrawString("mip mapped", 25, 350, tColour(255,255,255));
}

//----------------------------------------------
// specular test
//----------------------------------------------
SpecularTest::SpecularTest()
{
    strcpy(geoFile, "6SpecularShading.p3d");
    strcpy(geoName, "polySurfaceShape1");
}

void SpecularTest::Display()
{
    p3d::stack->Push();
    p3d::stack->Scale(25.0f);
    GeometryTest::Display();
    p3d::stack->Pop();
}

// ------------------------------------------------------------------
// Draws quads that are not the same power of 2. ie( 256x128, 64x1024)
// ------------------------------------------------------------------
void PowerOf2Test::Shutdown()
{
    for (int i=0; i < 12; i++)
    {
        if(textures[i]) textures[i]->Release();
    }
    if (shader) shader->Release();
}

void PowerOf2Test::Setup()
{
    SetupSection();
    
    tImageFactory factory;
    char name[512];
    char* images[32] =
    {
        "PowerOf2Test/16x256x24bit.bmp",
        "PowerOf2Test/16x256x16bit.bmp",
        "PowerOf2Test/16x256x8bit.bmp",
        "PowerOf2Test/16x256x4bit.bmp",
        "PowerOf2Test/8x512x24Bit.bmp",
        "PowerOf2Test/8x512x16Bit.bmp",
        "PowerOf2Test/8x512x8Bit.bmp",
        "PowerOf2Test/8x512x4Bit.bmp",
        "PowerOf2Test/32x1024-24Bit.bmp",
        "PowerOf2Test/32x1024-16Bit.bmp",
        "PowerOf2Test/32x1024-8Bit.bmp",
        "PowerOf2Test/32x1024-4Bit.bmp"
    };

    for (int i=0; i < 12; i++)
    {
        FillPath(images[i], name);
        textures[i] = factory.LoadAsTexture(name);
        if(textures[i]) textures[i]->AddRef();
    }

    shader = new tShader;
    shader->AddRef();
}

void PowerOf2Test::Display()
{
    shader->SetInt(PDDI_SP_ALPHATEST, 1 );
    DoQuad(shader, textures[0], -100.0f, -200.0f, 200.0f, 16.0f, 256.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[1], -75.0f, -200.0f, 200.0f, 16.0f, 256.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[2], -50.0f, -200.0f, 200.0f, 16.0f, 256.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[3], -25.0f, -200.0f, 200.0f, 16.0f, 256.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[4], 0.0f, -200.0f, 200.0f, 8.0f, 512.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[5], 15.0f, -200.0f, 200.0f, 8.0f, 512.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[6], 30.0f, -200.0f, 200.0f, 8.0f, 512.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[7], 45.0f, -200.0f, 200.0f, 8.0f, 512.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[8], 60.0f, -200.0f, 200.0f, 32.0f, 1024.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[9], 100.0f, -200.0f, 200.0f, 32.0f, 1024.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[10], 140.0f, -200.0f, 200.0f, 32.0f, 1024.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[11], 180.0f, -200.0f, 200.0f, 32.0f, 1024.0f, PDDI_BLEND_NONE);


}

// ------------------------------------------------------------------
// Display a few very large textures( 512x512) to ensure they display 
// properly
// ------------------------------------------------------------------
void LargeTextureTest::Shutdown()
{
    for (int i=0; i < 4; i++)
    {
        if(textures[i]) textures[i]->Release();
    }

    if (shader) shader->Release();
}

void LargeTextureTest::Setup()
{
    SetupSection();
    
    tImageFactory factory;
    char name[512];
    char* images[32] =
    {
        "LargeTexturesTest/512x512x24BitTexture.bmp",
        "LargeTexturesTest/512x512x24BitTexture2.bmp",
        "LargeTexturesTest/512x512x24BitTexture3.bmp",
        "LargeTexturesTest/512x512x24BitTexture4.bmp"
    };

    for (int i=0; i < 4; i++)
    {
        FillPath(images[i], name);
        textures[i] = factory.LoadAsTexture(name);
        if(textures[i]) textures[i]->AddRef();
    }

    shader = new tShader;
    shader->AddRef();
}

void LargeTextureTest::Display()
{
    shader->SetInt(PDDI_SP_ALPHATEST,1);
    // Uses the DoQuad global function
    DoQuad(shader, textures[0], -1100.0f, -100.0f, 200.0f, 512.0f, 512.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[1], -550.0f, -100.0f, 200.0f, 512.0f, 512.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[2], -0.0f, -100.0f, 200.0f, 512.0f, 512.0f, PDDI_BLEND_NONE);
    DoQuad(shader, textures[3], 550.0f, -100.0f, 200.0f, 512.0f, 512.0f, PDDI_BLEND_NONE);

}

//--------------------------------------------------------------------
// rendering to texture test
// UV's need to be corrected
//--------------------------------------------------------------------
RenderToTextureTest::RenderToTextureTest() :
    cube(NULL),
    scene(NULL),
    texture(NULL),
    shader(NULL),
    isGrabbed(0)
{
}

RenderToTextureTest::~RenderToTextureTest()
{
    if (cube) cube->Release();
    if (scene) scene->Release();
    if (texture) texture->Release();
    if (shader) shader->Release();
}

void RenderToTextureTest::Setup()
{
    SetupSection();

    Load("cube.p3d");
    Load("4LinearFog.p3d");

    cube = p3d::find<tGeometry>("pCubeShape1");
    if (cube) cube->AddRef();

    scene = p3d::find<tDrawable>("ground");
    if (scene) scene->AddRef();

    shader = new tShader;
    shader->AddRef();

    texture = new tTexture;
    texture->Create(256, 256, 64, 0, 0, PDDI_TEXTYPE_RENDERTARGET);
    texture->AddRef();

    p3d::pddi->SetRenderTarget(texture->GetTexture());
}

void RenderToTextureTest::Display()
{
    if (isGrabbed)
    {
        shader->SetTexture(PDDI_SP_BASETEX, texture);
        shader->SetInt(PDDI_SP_UVMODE, PDDI_UV_TILE);
        cube->SetShader(0, shader);
        cube->Display();
    }
    else
    {
        p3d::stack->Push();
        p3d::stack->Scale(20.0f);
        scene->Display();
        p3d::stack->Pop();
        isGrabbed = true;
        p3d::pddi->SetRenderTarget(NULL);
    }

}
    
