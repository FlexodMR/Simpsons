//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "geometryTest.hpp"

//-------------------------------------------------------------------
void GouraudTriTest::Setup()
{
    shader = p3d::device->NewShader("simple");
    shader->SetInt(PDDI_SP_SHADEMODE, PDDI_SHADE_GOURAUD);
}

void GouraudTriTest::Shutdown()
{
    if(shader) shader->Release();
}

void GouraudTriTest::Display()
{
    pddiPrimStream* stream = p3d::pddi->BeginPrims(shader, PDDI_PRIM_TRIANGLES, PDDI_V_C, 3);   

    const float size = 50.0f;

    stream->Colour(pddiColour(155, 0, 0));
    stream->Coord(0.0f,  size, 0.0);
    stream->Colour(pddiColour(0, 155, 0));
    stream->Coord(size,  -size, 0.0f);
    stream->Colour(pddiColour(0, 0, 155));
    stream->Coord(-size,  -size, 0.0f);

    p3d::pddi->EndPrims(stream);
}

//-------------------------------------------------------------------

void OrthoQuadTest::Setup()
{
    shader = p3d::device->NewShader("simple");
}

void OrthoQuadTest::Shutdown()
{
    if(shader) shader->Release();
}

void OrthoQuadTest::Display()
{
    pddiProjectionMode mode = p3d::pddi->GetProjectionMode();
    p3d::pddi->SetProjectionMode(PDDI_PROJECTION_ORTHOGRAPHIC);

    pddiPrimStream* stream = p3d::pddi->BeginPrims(shader, PDDI_PRIM_TRIANGLES, PDDI_V_CT, 6);   

    const float size = 0.3f;

    stream->Colour(pddiColour(155,0,155));
    stream->Coord(-size,  size, 0.0f);

    stream->Colour(pddiColour(155,0,0));
    stream->Coord( size,  size, 0.0f);

    stream->Colour(pddiColour(155,155,155));
    stream->Coord( size, -size, 0.0f);

    stream->Colour(pddiColour(155,0,155));
    stream->Coord(-size,  size, 0.0f);

    stream->Colour(pddiColour(155,155,155));
    stream->Coord( size, -size, 0.0f);

    stream->Colour(pddiColour(155,155,155));
    stream->Coord(-size, -size, 0.0f);

    p3d::pddi->EndPrims(stream);

    p3d::pddi->SetProjectionMode(mode);
}

//-------------------------------------------------------------------
// simple geometry test
//-------------------------------------------------------------------
SimpleGeometryTest::SimpleGeometryTest() :
    cone(NULL),
    sphere(NULL),
    torus(NULL)
{
    strcpy(geoFile, "Geometry/SimpleGeometry.p3d");
    strcpy(geoName, "groundShape");
}

void SimpleGeometryTest::Setup()
{
    GeometryTest::Setup();

    cone = p3d::find<tGeometry>("coneShape");
    if (cone) cone->AddRef();

    sphere = p3d::find<tGeometry>("sphereShape");
    if (sphere) sphere->AddRef();

    torus = p3d::find<tGeometry>("torusShape");
    if (torus) torus->AddRef();
}

void SimpleGeometryTest::Shutdown()
{
    GeometryTest::Shutdown();

    if (cone) cone->Release();
    if (sphere) sphere->Release();
    if (torus) torus->Release();
}

void SimpleGeometryTest::Display()
{
    p3d::stack->Push();
    p3d::stack->Scale(10.0f);

    GeometryTest::Display();

    p3d::stack->Push();
    p3d::stack->Translate(-6.0f, 0.0f, 4.0f);
    if (cone) cone->Display();
    p3d::stack->Pop();

    p3d::stack->Push();
    p3d::stack->Translate(0.0f, 0.0f, -3.0f);
    if (sphere) sphere->Display();
    p3d::stack->Pop();

    p3d::stack->Push();
    p3d::stack->Translate(6.0f, 0.0f, 4.0f);
    if (torus) torus->Display();
    p3d::stack->Pop();

    p3d::stack->Pop();
}

//-------------------------------------------------------------------
// sprite test
//-------------------------------------------------------------------
void SpriteTest::Setup()
{
    SetupSection();

    // Create an image factory to load pictures from a file
    tImageFactory factory;
    char name[512];
    FillPath("Textures/nebula.png", name);
    tImage* image = factory.LoadAsImage(name);
    sprite = NULL;
    if(image)
    {
        sprite = new tSprite(image);
        sprite->AddRef();
        image->Release();
    }
}

void SpriteTest::Shutdown()
{
    if(sprite)
        sprite->Release();
}

void SpriteTest::Display()
{
    p3d::stack->Push();
    p3d::stack->Scale(100,100,1);
    
    // Display the sprite
    if (sprite) sprite->Display();
    p3d::stack->Pop();
}

//-------------------------------------------------------------------
// tristripping test
//-------------------------------------------------------------------

void TristripTest::Setup()
{
    SetupSection();
    
    shader = p3d::device->NewShader("simple");
    shader->SetInt(PDDI_SP_SHADEMODE, PDDI_SHADE_FLAT);
}

void TristripTest::Shutdown()
{
    if(shader)
        shader->Release();
}

void TristripTest::Display()
{
    const float size = 80.0f;
    const int count = 64;
    const float step = size * 2.0f / count;
    int r = 155;
    int g = 0;
    int b = 0;
    int tmp;

    pddiPrimStream* stream = p3d::pddi->BeginPrims(shader, PDDI_PRIM_TRISTRIP, PDDI_V_CT, count);

    for(int i=0; i < count; i+=2)
    {
        stream->Colour(pddiColour(r,g,b));
        stream->Coord(i*step - size, -size, 0.0f);

        stream->Colour(pddiColour(r,g,b));
        stream->Coord(i*step - size, size, 0.0f);

        tmp = r; r = g; g = b; b = tmp;
    }

    p3d::pddi->EndPrims(stream);
}

//------------------------------------------------------------------
// culling test
//------------------------------------------------------------------
CullingTest::CullingTest()
{
    shader = NULL;
    plane = NULL;
    texture = NULL;

    totalTime = 0.0f;
}

void CullingTest::Setup()
{
    SetupSection();

    Load("CullingTest.p3d");

    plane = p3d::find<tGeometry>("PlaneShape");
    if (plane) plane->AddRef();

    shader = new tShader("simple");
    if (shader) shader->AddRef();

    texture = p3d::find<tTexture>("Logo");
    if (texture) texture->AddRef();

    shader->SetTexture(PDDI_SP_BASETEX, texture);
    plane->SetShader(0, shader);
}

void CullingTest::Shutdown()
{
    if (shader) shader->Release();
    if (plane) plane->Release();
    if (texture) texture->Release();
}

void CullingTest::Display()
{
    const float radsPerMs = rmt::PI_BY2 / 1000.0f;
    p3d::stack->Push();
    p3d::stack->Translate(-10.0f, 0.0f, 0.0f);
    p3d::stack->RotateX(totalTime*radsPerMs);

    //Set culling mode to none and display
    p3d::pddi->SetCullMode( PDDI_CULL_NONE);
    plane->Display();

    // Set culling mode to normal. ie front face
    p3d::stack->Translate(10.0f, 0.0f, 0.0f);
    p3d::pddi->SetCullMode(PDDI_CULL_NORMAL);
    plane->Display();

    // Set culling mode to Inverted. ie Back face
    p3d::stack->Translate(10.0f, 0.0f, 0.0f);
    p3d::pddi->SetCullMode(PDDI_CULL_INVERTED);
    plane->Display();

    p3d::stack->Pop();

    char display[128] = "Culling Method: None          Normal             Inverted";
    p3d::pddi->DrawString(display, 40, 100);

    //Reset the culling mode for other tests
    p3d::pddi->SetCullMode(PDDI_CULL_NORMAL);
}

void CullingTest::Update(float deltaTime)
{
    totalTime += deltaTime;
}