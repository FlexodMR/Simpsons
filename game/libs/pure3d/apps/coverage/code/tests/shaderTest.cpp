//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "shaderTest.hpp"
/*
#include <p3d/anim/animate.hpp>
#include <p3d/anim/polyskin.hpp>
#include <p3d/anim/poseanimation.hpp>
#include <p3d/typeface.hpp>
#include <p3d/scenegraph/scenegraph.hpp>
#include <p3d/scenegraph/nodeanimation.hpp>
#include <p3d/anim/sequencer.hpp>
#include <p3d/anim/multicontroller.hpp>
#include <p3d/anim/deformpolyskin.hpp>
#include <p3d/inventory.hpp>
*/
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

using namespace RadicalMathLibrary;

LightMapTest::LightMapTest() : scene(NULL)
{
}

void LightMapTest::Shutdown()
{
    if (scene) scene->Release();
}

void LightMapTest::Setup()
{
    SetupSection();

    Load("LightMap/lmap_demo.p3d");
    scene = p3d::find<tDrawable>("Scene");

    if (scene) scene->AddRef();
}

void LightMapTest::Display()
{
    p3d::stack->Push();
    p3d::stack->Translate(-5.0f, 0.0f, -5.0f);
    if (scene) scene->Display();
    p3d::stack->Pop();
}

void BumpMapTest::Setup()
{
    SetupSection();

    Load("bumpMapTest.p3d");
    Load("phteapot.p3d");
    
    bumpMap = p3d::find<tTexture>("bumpMap");
    baseTex = p3d::find<tTexture>("Lakesm");

    teapot = p3d::find<tGeometry>("Teapot01");
    
    shader = new tShader("bumpmap");
    shader->AddRef();
    shader->SetTexture(PDDI_SP_BASETEX, baseTex);
    shader->SetTexture(PDDI_SP_BUMPMAP, bumpMap);
    

    tColour amb(32,32,32,255);
    tColour diff(128,128,128,255);
    tColour spec(128,128,128,255);
    float pow = 20.0f;
    
    shader->SetInt(PDDI_SP_ISLIT, false);
    shader->SetColour(PDDI_SP_AMBIENT, amb);
    shader->SetColour(PDDI_SP_DIFFUSE, diff);
    shader->SetColour(PDDI_SP_SPECULAR, spec);
    shader->SetFloat(PDDI_SP_SHININESS, pow);

    simpleShader = new tShader("simple");
    simpleShader->AddRef();

    simpleShader->SetTexture(PDDI_SP_BASETEX, baseTex);
    
}

BumpMapTest::~BumpMapTest()
{
}

void BumpMapTest::Display()
{
//from config file: light direction is <0,0,1>
    static float theta = 0.0f; 
    static float phi = 6.28f;
    
    pddiVector lVec;
    pddiVector cVec;
    Vector camPos;
    Vector lightPos;
    
    
    //animate light
    //lightPos.x = Cos(theta)*Sin(phi);
    //lightPos.y = Sin(theta)*Sin(phi);
    //lightPos.z = Cos(phi);
    lVec.Set(0.3f, 0.4f, 0.5f);
    
    shader->SetVector(PDDI_SP_LIGHTV, lVec );

    // No bumpmapping on this teapot
    p3d::stack->Push();
    p3d::stack->Translate(-125.0f, 0.0f, 0.0f);

    teapot->SetShader(0, simpleShader);
    simpleShader->SetInt(PDDI_SP_UVMODE, PDDI_UV_TILE);
    teapot->Display();
    
    p3d::stack->Translate(125.0f, 0.0f, 0.0f);

    teapot->SetShader(0, shader);

    
    //draw diffuse teapot
    shader->SetInt(PDDI_SP_BMSPECULAR, false);  //boolean value
    
    // Bumpmapping on this one
    shader->SetInt(PDDI_SP_UVMODE, PDDI_UV_TILE);
    teapot->Display();
    
    //put shader into specular mode 
    //**NOTE**: this requires cube mapping h/w (i.e. GeForce/Radeon or higher)
    //tell shader where the camera is (specular highlights are view-dependent)
    
    shader->SetInt(PDDI_SP_BMSPECULAR, true);   //boolean value
    
    const Matrix& cameraMatrix = p3d::context->GetView()->GetCamera()->GetCameraToWorldMatrix();
    camPos = cameraMatrix.Row(3);
    
    camPos.Normalize();
    cVec.Set(camPos.x, camPos.y, -camPos.z);
    shader->SetVector(PDDI_SP_CAMERAV,cVec ); 
    shader->SetInt(PDDI_SP_ISLIT, true);
    shader->SetInt(PDDI_SP_UVMODE, PDDI_UV_TILE);
    
    //draw specular teapots
    
    p3d::stack->Translate(125.0f, 0.0f, 0.0f);
    teapot->Display();
    
    p3d::stack->Pop();
    
}

ToonShaderTest::ToonShaderTest() : toonShader(NULL), teapot(NULL)
{
}

ToonShaderTest::~ToonShaderTest()
{
    if (toonShader) toonShader->Release();
    if (teapot) teapot->Release();
}

void ToonShaderTest::Setup()
{
    SetupSection();

    Load("phTeapot.p3d");

    teapot = p3d::find<tGeometry>("Teapot01");
    if (teapot) teapot->AddRef();

    toonShader = new tShader("toon");
    toonShader->AddRef();

    tColour diff(16,16,128,128);
    
    toonShader->SetColour(PDDI_SP_DIFFUSE, diff);
}

void ToonShaderTest::Display()
{
    p3d::stack->Push();
    p3d::stack->Translate(-150.0f, 0.0f, 0.0f);
    
    toonShader->SetInt(PDDI_SP_TOONSTYLE, 0);
    teapot->SetShader(0, toonShader);
    teapot->Display();

    p3d::stack->Translate(150.0f, 0.0f, 0.0f);
    toonShader->SetInt(PDDI_SP_TOONSTYLE, 1);
    teapot->SetShader(0, toonShader);
    teapot->Display();

    p3d::stack->Translate(150.0f, 0.0f, 0.0f);
    toonShader->SetInt(PDDI_SP_TOONSTYLE, 2);
    teapot->SetShader(0, toonShader);
    teapot->Display();

    p3d::stack->Pop();

    char display[128] = "Default              Silhouette             Depth/Metal";
    p3d::pddi->DrawString(display, 40, 50);
}

ReflectedMapTest::ReflectedMapTest() : shader(NULL), baseShader(NULL), reflShader(NULL), teapot(NULL)
{
    for (int i = 0; i < 3; i++)
    {
        textures[i] = NULL;
    }
}

void ReflectedMapTest::Shutdown()
{
    if (baseShader) baseShader->Release();
    if (reflShader) reflShader->Release();
    if (shader) shader->Release();
    if (teapot) teapot->Release();
    
    for (int i=0; i<3; i++)
    {
        if (textures[i]) textures[i]->Release();
    }
}

void ReflectedMapTest::Setup()
{
    SetupSection();
    
    int i;
    tImageFactory factory;
    char name[512];
    //load six textures
    char* images[32] =
    {
        "CubicEnvironmentTest/lobbyzpos.bmp",    // Reflected Texture
        "Textures/Pure3DLogo.bmp",  // Base Texture
        "Textures/white.bmp"

    };

    for(i = 0; i < 3; i++)
    {
        FillPath(images[i], name);            
        textures[i] = factory.LoadAsTexture(name);
        if(textures[i]) textures[i]->AddRef();
    }

    Load("cube.p3d");

    teapot = p3d::find<tGeometry>("pCubeShape1");
    if (teapot) teapot->AddRef();

    shader = new tShader("environment");
    shader->AddRef();

    shader->SetTexture(PDDI_SP_BASETEX, textures[1]);
    shader->SetTexture(PDDI_SP_REFLMAP, textures[0]);
    shader->SetInt(PDDI_SP_UVMODE, PDDI_UV_TILE);

    reflShader = new tShader("environment");
    reflShader->AddRef();
    reflShader->SetTexture(PDDI_SP_REFLMAP, textures[0]);
    reflShader->SetTexture(PDDI_SP_BASETEX, NULL);
    reflShader->SetInt(PDDI_SP_UVMODE, PDDI_UV_TILE);

    baseShader = new tShader("simple");
    baseShader->AddRef();
    baseShader->SetTexture(PDDI_SP_BASETEX, textures[1]);
    baseShader->SetInt(PDDI_SP_UVMODE, PDDI_UV_TILE);

}

void ReflectedMapTest::Display()
{
    p3d::stack->Push();

    p3d::stack->Translate(-70.0f, 0.0f, 0.0f);
    teapot->SetShader(0, baseShader);
    teapot->Display();

    p3d::stack->Translate(70.0f, 0.0f, 0.0f);
    teapot->SetShader(0, reflShader);
    teapot->Display();

    p3d::stack->Translate(70.0f, 0.0f, 0.0f);
    teapot->SetShader(0, shader);
    teapot->Display();

    p3d::stack->Pop();

    char display[128] = "Base Texture    +     Reflection Texture     =      Reflection Map";
    p3d::pddi->DrawString(display, 20, 50);
}


ProjTextureTest::ProjTextureTest()
{
    teapotBaseTex = NULL;
    groundBaseTex = NULL;
    projectionTex = NULL;
    projectionIconTex = NULL;
    projectionIconShader = NULL;
    teapotShader = NULL;
    groundShader = NULL;
    frustumShader = NULL;
    teapot = NULL;
    ground = NULL;
    projectionIcon = NULL;
    spotLightIcon = NULL;
    iconShader = NULL;
    projectionSpotLight = NULL;
    spotLight = NULL;
    totalTime = 0.0f;
}

void ProjTextureTest::Shutdown()
{
    if (teapotBaseTex) teapotBaseTex->Release();
    if (groundBaseTex) groundBaseTex->Release();
    if (projectionTex) projectionTex->Release();
    if (projectionIconTex) projectionIconTex->Release();
    if (projectionIconShader) projectionIconShader->Release();
    if (teapotShader) teapotShader->Release();
    if (groundShader) groundShader->Release();
    if (teapot) teapot->Release();
    if (ground) ground->Release();
    if (projectionIcon) projectionIcon->Release();
    if (spotLightIcon) spotLightIcon->Release();
    if (iconShader) iconShader->Release();
    if (projectionSpotLight) projectionSpotLight->Release();
    if (spotLight) spotLight->Release();
}

void ProjTextureTest::Setup()
{
    SetupSection();
    
    Load("Textures/ProjectedTextureTest.p3d");
    
    // First load up all the textures
    teapotBaseTex = p3d::find<tTexture>("teapotBaseTexture");
    if (teapotBaseTex) teapotBaseTex->AddRef();

    groundBaseTex = p3d::find<tTexture>("baseTexture");
    if (groundBaseTex) groundBaseTex->AddRef();

    projectionTex = p3d::find<tTexture>("projectedTexture");
    if (projectionTex) projectionTex->AddRef();

    projectionIconTex = p3d::find<tTexture>("projTextureIconTexture");
    if (projectionIconTex) projectionIconTex->AddRef();

    // Now set up all the shaders for the different objects in the scene
    projectionIconShader = new tShader("simple");
    projectionIconShader->AddRef();
    projectionIconShader->SetTexture(PDDI_SP_BASETEX, projectionIconTex);

    teapotShader = new tShader("projtex");
    teapotShader->AddRef();
    teapotShader->SetTexture(PDDI_SP_BASETEX, teapotBaseTex);
    teapotShader->SetTexture(PDDI_SP_PROJTEX, projectionTex);
//    teapotShader->SetInt(PDDI_SP_ISLIT, 1);
    teapotShader->SetColour(PDDI_SP_DIFFUSE, tColour(128, 128, 128));
    teapotShader->SetColour(PDDI_SP_SPECULAR, tColour(128, 128, 128));
    teapotShader->SetColour(PDDI_SP_AMBIENT, tColour(128, 128, 128));
     
    groundShader = new tShader("projtex");
    groundShader->AddRef();
    groundShader->SetTexture(PDDI_SP_BASETEX, groundBaseTex);
    groundShader->SetTexture(PDDI_SP_PROJTEX, projectionTex);
//    groundShader->SetInt(PDDI_SP_ISLIT, 1);
    groundShader->SetColour(PDDI_SP_DIFFUSE, tColour(128, 128, 128));
    groundShader->SetColour(PDDI_SP_SPECULAR, tColour(128, 128, 128));
    groundShader->SetColour(PDDI_SP_AMBIENT, tColour(128, 128, 128));
    
    Load("phTeapot.p3d");

    // Get all the drawable objects and set the shaders
    teapot = p3d::find<tGeometry>("Teapot01");
    if (teapot) teapot->AddRef();
    
    ground = p3d::find<tGeometry>("groundShape");
    if (ground) ground->AddRef();
    ground->SetShader(0, groundShader);

    projectionIcon = p3d::find<tGeometry>("projTextureIconShape1");
    if (projectionIcon) projectionIcon->AddRef();
    projectionIcon->SetShader(0, projectionIconShader);

    Load("AnimatedLightTests/LightIcons.p3d");

    spotLightIcon = p3d::find<tGeometry>("SpotShape");
    if (spotLightIcon) spotLightIcon->AddRef();

    iconShader = new tShader("simple");
    iconShader->AddRef();
    iconShader->SetColour(PDDI_SP_DIFFUSE, tColour(255, 255, 255));
    iconShader->SetColour(PDDI_SP_AMBIENT, tColour(255, 255, 255));
    iconShader->SetColour(PDDI_SP_SPECULAR, tColour(255, 255, 255));
    iconShader->SetColour(PDDI_SP_EMISSIVE, tColour(128, 128, 128));
//    iconShader->SetInt(PDDI_SP_ISLIT, 1);
    spotLightIcon->SetShader(0, iconShader);

    // Setup lights
    projectionSpotLight = new tSpotLight;
    projectionSpotLight->AddRef();
    projectionSpotLight->SetColour(tColour(255, 255, 255));
    projectionSpotLight->SetCone(PI_BY8, PI_BY8, 0.3f);
    
        
    spotLight = new tSpotLight;
    spotLight->AddRef();
    spotLight->SetColour(tColour(255, 255, 255));
    spotLight->SetCone(PI_BY8, PI_BY8, 0.2f);
    spotLight->SetPosition(100.0f, 100.0f, 10.0f);
}

void ProjTextureTest::Display()
{
    // Remove comment on line below to display frustum
    //   DrawFrustum(frustumLinesArray);

    projectionSpotLight->Activate(1);
    spotLight->Activate(2);

    // Get camera position
    const Matrix& cameraMatrix = p3d::context->GetView()->GetCamera()->GetCameraToWorldMatrix();
    
    // Get the projection of the texture 
    LoadTextureProjectionMatrix(   cameraMatrix,
                                             projectionPosition, projectionTarget,
                                             DegToRadian(30.0f),
                                             1.0f,
                                             250.0f,
                                             PDDI_MATRIX_TEXTURE1,
                                             frustumLinesArray );
    // Display ground
    p3d::stack->Push();
    p3d::stack->Scale(15.0f);
    
    p3d::stack->Translate(0.0f, 1.0f, 0.0f);
    ground->Display();
    
    p3d::stack->Pop();
    
    teapot->SetShader(0, teapotShader);
    teapot->Display();

    // Vector used to calculate light direction and spotlight icon orientation
    Vector projectionDirection;
    projectionDirection.Sub(projectionTarget, projectionPosition);
    projectionDirection.Normalize();

    p3d::stack->Push();
    p3d::stack->Translate(projectionPosition);
    p3d::stack->Scale(5.0f);
    // Rotate the Vector so the spotlight icon points in the direction as the spotlight
    p3d::stack->RotateX(DegToRadian(180.0f));
    p3d::stack->RotateXYZ(atanf(projectionDirection.z/projectionDirection.x), 
                                0.0f, 
                                atanf(projectionDirection.x/projectionDirection.y));
    spotLightIcon->Display();
    p3d::stack->Pop();   

    // Update the position and direction of the spotlights
    projectionSpotLight->SetPosition(projectionPosition.x, projectionPosition.y, projectionPosition.z);
    projectionSpotLight->SetDirection(projectionDirection.x, projectionDirection.y, projectionDirection.z);
}

void ProjTextureTest::Update( float deltaTime)
{
    totalTime += deltaTime;

    const float radsPerMs = rmt::PI_BY8 / 600;

    // Update the position and target vectors
    projectionPosition.Set( 60*Sin((totalTime * radsPerMs))-60, 150.0f, -60*Cos((totalTime * radsPerMs)));
    projectionTarget.Set( 30*Sin((totalTime * radsPerMs))+30, 0.0f, -30*Cos((totalTime * radsPerMs))+5);

    spotLight->SetDirection(-fabsf(Sin(1.5f*radsPerMs*totalTime)), -1.0f, 0.0f);

    // Display the white spotlight
    p3d::stack->Push();
    p3d::stack->Translate(100.0f, 100.0f, 10.0f);
    p3d::stack->RotateX(DegToRadian(180.0f));
    p3d::stack->RotateZ(0.5f*fabsf(Sin(1.5f*radsPerMs*totalTime)));
    p3d::stack->Scale(5.0f);

    spotLightIcon->Display();
    p3d::stack->Pop();
}

void ProjTextureTest::CleanUp()
{
    //Turn off the lights
    spotLight->Deactivate();
    projectionSpotLight->Deactivate();
}

void ProjTextureTest::LoadTextureProjectionMatrix(const Matrix& camera, Vector& position, 
    Vector& target, float fov, float n, float f, pddiMatrixType matrixType, 
    Vector* frustumLines)
{
    // Computes the matrix which for the projection texture.  
    // build the z-axis vector for the projection
    Vector axis;
    axis.Sub(target, position);
    axis.Normalize();

    // transform into space of projection frustum
    Matrix texView;
    texView.Identity();
    texView.FillHeading(axis, Vector(0.0f, 1.0f, 0.0f));
    texView.Row(3) = position;
    texView.InvertOrtho();

     // build projection matrix
    Matrix proj;
    proj.SetPerspective(fov, 1.0f, n, f);
    // scale and offset so that tex coords go from [0,1]
    Matrix bias;
    bias.Identity();
    bias.m[0][0] = 0.5f;
    bias.m[1][1] = -0.5f;
    bias.m[2][0] = 0.5f;
    bias.m[2][1] = 0.5f;
     // build texture matrix
    Matrix texProj;
    texProj.Identity();
    texProj.MultFull(camera);  // transform vertices back into world space
    texProj.MultFull(texView); // then transform into space of the projector
    texProj.MultFull(proj);    // set up view projector frustum
    texProj.MultFull(bias);    // scale uvs so they lie in range [0, 1.0]
    p3d::pddi->LoadMatrix(matrixType, (pddiMatrix*)&texProj);
    if(frustumLines)
    {
        // compute the new frustum
        texView.Invert();
        fov *= 0.5f;
        frustumLines[0].Set(-n*Sin(fov), -n*Sin(fov), n);
        frustumLines[1].Set(-f*Sin(fov), -f*Sin(fov), f);
        frustumLines[2].Set( n*Sin(fov), -n*Sin(fov), n);
        frustumLines[3].Set( f*Sin(fov), -f*Sin(fov), f);
        frustumLines[4].Set(-n*Sin(fov),  n*Sin(fov), n);
        frustumLines[5].Set(-f*Sin(fov),  f*Sin(fov), f);
        frustumLines[6].Set( n*Sin(fov),  n*Sin(fov), n);
        frustumLines[7].Set( f*Sin(fov),  f*Sin(fov), f);
        frustumLines[8] = frustumLines[0];
        frustumLines[9] = frustumLines[2];
        frustumLines[10] = frustumLines[2];
        frustumLines[11] = frustumLines[6];
        frustumLines[12] = frustumLines[6];
        frustumLines[13] = frustumLines[4];
        frustumLines[14] = frustumLines[4];
        frustumLines[15] = frustumLines[0];

        frustumLines[16] = frustumLines[1];
        frustumLines[17] = frustumLines[3];
        frustumLines[18] = frustumLines[3];
        frustumLines[19] = frustumLines[7];
        frustumLines[20] = frustumLines[7];
        frustumLines[21] = frustumLines[5];
        frustumLines[22] = frustumLines[5];
        frustumLines[23] = frustumLines[1];
        for(int i=0; i < 24; i++)
            frustumLines[i].Transform(texView);
    }
}

void ProjTextureTest::DrawFrustum(Vector* frustumLines)
{
    // Draws the texture projection frustum
    p3d::stack->Push();
    pddiPrimStream* stream = p3d::pddi->BeginPrims(frustumShader, PDDI_PRIM_LINES, PDDI_V_C, 24);
    for(int i=0; i < 24; i++)
    {
        stream->Colour(pddiColour(255, 0, 0));
        //stream->Coord(projectionPosition.x, projectionPosition.y, projectionPosition.z);
        stream->Coord(frustumLines[i].x, frustumLines[i].y, frustumLines[i].z);
    }
    p3d::pddi->EndPrims(stream);
    p3d::stack->Pop();
}

//-------------------------------------------------------------------
// shader modification test
//-------------------------------------------------------------------
ShaderModificationTest::ShaderModificationTest() :
    delta(-0.001f),
    trans(1.0f)
{
    SetFileName("debugDrawTest.p3d");
    SetControllerName("MasterController");
    SetSceneName("Scene");
    isCyclic = true;
}

void ShaderModificationTest::Update(float deltaTime)
{
    ScenegraphTest::Update(deltaTime);
    
    trans += delta * deltaTime;

    if(trans < 0.0f)
    {
        trans = 0.0f;
        delta = -delta;
    }

    if(trans > 1.0f)
    {
        trans = 1.0f;
        delta = -delta;
    }
}

void ShaderModificationTest::Display()
{
    tShaderIntBroadcast blend(PDDI_SP_BLENDMODE, PDDI_BLEND_ALPHA);
    tShaderIntBroadcast alpha(PDDI_SP_EMISSIVEALPHA, int(trans * 255.0f));
    draw->ProcessShaders(blend);
    draw->ProcessShaders(alpha);

    ScenegraphTest::Display();
}

/*
 Refraction shader test
 Jul 30 / 2002 - AMB
*/
RefractTest::RefractTest() : scene(NULL), multiController(NULL)
{
    /* nop */
}

void RefractTest::Setup()
{
    SetupSection();

    Load("refracttest.p3d");
    scene = p3d::find<tDrawable>("Scene");
    if (scene) scene->AddRef();
    multiController = p3d::find<tMultiController>("MasterController");
    if (multiController) multiController->AddRef();
}

void RefractTest::Shutdown()
{
    if (scene) scene->Release();
    if (multiController) multiController->Release();
}

void RefractTest::Update(float dt)
{
    multiController->Advance(dt);
}

void RefractTest::Display()
{
    if (scene) scene->Display();
}
