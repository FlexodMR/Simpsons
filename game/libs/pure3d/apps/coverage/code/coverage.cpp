/*===========================================================================
    coverage.hpp - PDDI test harness

    29-Oct-99 Created by Neall
    Updated by Young

    Copyright (c) 1999 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/


#include "coverage.hpp"


#include <p3d/scenegraph/scenegraph.hpp>
#include <p3d/scenegraph/nodeanimation.hpp>

#include <p3d/anim/multicontroller.hpp>
#include <p3d/inventory.hpp>
#include "coverapp.hpp"
#include "viewercamera.hpp"
#include <assert.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

using namespace RadicalMathLibrary;

RadicalMathLibrary::Vector CoverageTest::defCameraPos;



CoverageTest::CoverageTest()
{
    artPath[0] = 0;
    loadFlag = false;
}

void CoverageTest::SetArtPath(const char* path)
{
    strncpy(artPath, path, 256);
    int lastCharIdx = strlen(artPath)-1;
    if(lastCharIdx >= 0 && artPath[lastCharIdx] == '/')
    {
        artPath[lastCharIdx] = 0;
    }
}

void CoverageTest::FillPath(const char* name, char* path)
{
    sprintf(path, "%s/%s", artPath, name);
}

bool CoverageTest::Load(const char* file)
{
    char fullPath[512];
    sprintf(fullPath, "%s/%s", artPath, file);
    tLoadRequest* load = new tLoadRequest(fullPath);

    // the loading system requires the specific section is to be provided
    // otherwise, it will be loaded into the default section

    load->SetInventorySection(GetName());
    p3d::loadManager->Load(load);
    return true;
}

void CoverageTest::SetupSection()
{
    p3d::inventory->AddSection(GetName());
    p3d::inventory->SelectSection(GetName());
    p3d::inventory->SetCurrentSectionOnly(true);
}

void CoverageTest::UnloadSection()
{
    p3d::inventory->DeleteSection(GetName());
    Loaded(false);
}

void CoverageTest::BeginRender(const CoverAppRendering& appRender)
{
    appRender.GetView()->BeginRender();
}

void CoverageTest::EndRender(const CoverAppRendering& appRender)
{
    appRender.GetView()->EndRender();
}

void CoverageTest::DisplayHelpText()
{
    p3d::pddi->DrawString(GetHelpText(), 10, 10);
}




// Global function
void DoQuad(tShader* shader, tTexture* tex, float x, float y, float z, float sx, float sy, pddiBlendMode mode)
{
    shader->SetTexture(PDDI_SP_BASETEX, tex);
    shader->SetInt(PDDI_SP_BLENDMODE, mode);

    pddiPrimStream* stream = p3d::pddi->BeginPrims(shader->GetShader(), PDDI_PRIM_TRIANGLES, PDDI_V_CT, 6);

    stream->Colour(tColour(255,255,255));
    stream->UV(0.0f, 1.0f);
    stream->Coord(x, y + sy, z);

    stream->Colour(tColour(255,255,255));
    stream->UV(1.0f, 1.0f);
    stream->Coord(x + sx, y + sy, z);

    stream->Colour(tColour(255,255,255));
    stream->UV(1.0f, 0.0f);
    stream->Coord(x + sx, y, z);

    stream->Colour(tColour(255,255,255));
    stream->UV(0.0f, 1.0f);
    stream->Coord(x, y + sy, z);

    stream->Colour(tColour(255,255,255));
    stream->UV(1.0f, 0.0f);
    stream->Coord(x + sx, y, z);

    stream->Colour(tColour(255,255,255));
    stream->UV(0.0f, 0.0f);
    stream->Coord(x, y, z);

    p3d::pddi->EndPrims(stream);
}

void Square(pddiShader* mat, float x, float y, float sx, float sy, float uvTile, pddiColour colour)
{
    pddiPrimStream* stream = p3d::pddi->BeginPrims(mat, PDDI_PRIM_TRISTRIP, PDDI_V_CT, 4);

    stream->Colour(colour);
    stream->UV(0.0f, 1.0f*uvTile);
    stream->Coord(x, y, 1.0f);

    stream->Colour(colour);
    stream->UV(1.0f*uvTile, 1.0f*uvTile);
    stream->Coord(x+sx, y, 1.0f);
    
    stream->Colour(colour);
    stream->UV(0.0f, 0.0f);
    stream->Coord(x, y+sy, 1.0f);

    stream->Colour(colour);
    stream->UV(1.0f*uvTile, 0.0f);
    stream->Coord(x+sx, y+sy, 1.0f);

    p3d::pddi->EndPrims(stream);
}

void BlendTest(pddiShader* shader, float x, float y, pddiBlendMode mode, pddiColour colour, char* str)
{
    shader->SetInt(PDDI_SP_BLENDMODE, PDDI_BLEND_NONE);
    Square(shader, x,     y, 50, 50, 0.0f, tColour(170,0,0));
    Square(shader, x+50,  y, 50, 50, 0.0f, tColour(0,170,0));
    Square(shader, x+100, y, 50, 50, 0.0f, tColour(0,0,170));
    shader->SetInt(PDDI_SP_BLENDMODE, mode);
    Square(shader, x-10.0f,  y+10.0f, 170.0f,  30.0f, 0.0f, colour);
    p3d::pddi->DrawString(str, (int)x, (int)y+50, tColour(0,0,0));
}





//-------------------------------------------------------------------
GeometryTest::GeometryTest() : geo(NULL)
{
    geoName[0] = 0;
}

void GeometryTest::Setup()
{
    SetupSection();
    
    Load(geoFile);

    geo = p3d::find<tGeometry>(geoName);
    if(geo)
    {
        geo->AddRef();  
    }
}

void GeometryTest::Shutdown()
{
    if(geo)
    {
        geo->Release();
    }
}

void GeometryTest::Display()
{
    p3d::inventory->SelectSection(GetName());

    if(geo)
    {
        geo->Display();
    }
    else
    {
        char buf[255];
        sprintf(buf, "Error:  could not find geometry '%s'.", geoName);
        p3d::pddi->DrawString(buf, 300, 200, tColour(255,0,0));
    }
}




ComplexGeometryTest::ComplexGeometryTest()
{
    strcpy(geoFile, "sphere32K.p3d");
    strcpy(geoName, "GeoSphere01");
}





















//-------------------------------------------------------------------
#include "testnames.hpp"

// Not turned on

void InventoryTest::Setup()
{
    SetupSection();

    for(int i=0; i < 200; i++)//NUM_TEST_INVENTORY_NAMES; i++)
    {
        tEntity* duh = NULL;
        switch(i & 3)
        {
            case 0:
                duh = new tShader;
                duh->SetName(test_inventory_names[i]);
            break;
            case 1:
                duh = new tTexture;
                duh->SetName(test_inventory_names[i]);
            break;
            case 2:
                duh = new tGeometry(1);
                duh->SetName(test_inventory_names[i]);
            break;
            case 3:
                duh = new tImage32;
                duh->SetName(test_inventory_names[i]);
            break;
        }

        p3d::inventory->Store(duh);
    }
}

void InventoryTest::Display()
{
    p3d::inventory->SelectSection(GetName());

    int nFailure = 0;
    const int nSearch = 10000;

    for(int i=0; i < nSearch; i++)
    {
        int which = rand() % NUM_TEST_INVENTORY_NAMES;
        tEntity* obj = p3d::find<tEntity>(test_inventory_names[which]);
        if(!obj)
        {
            nFailure++;
        }
    }

    char buf[255];
    sprintf(buf, "%d items inserted\n%d searches\n%d failures.", NUM_TEST_INVENTORY_NAMES, nSearch, nFailure);
    p3d::pddi->DrawString(buf, 300, 200, tColour(255,255,255));
}




#if(HOOPED_TEST)
//-------------------------------------------------------------------
ParticlesInstanceAndCloneTest::ParticlesInstanceAndCloneTest()
{
    //initialize all pointers to static data and instances to NULL
    int i;
    fire = NULL;
    for (i = 0; i<5; i++)
    {
        fireControllers[i]=NULL;
        fireInstances[i]=NULL;
    }
    for (i = 0; i<2; i++)
    {
        fireworks[i] = NULL;
        fireworkControllers[i]=NULL;
        fireworkInstances[i]=NULL;
    }
}

ParticlesInstanceAndCloneTest::~ParticlesInstanceAndCloneTest()
{
    // release all instances and static data
    int i;
    tRefCounted::Release(fire);
    for (i = 0; i<5; i++)
    {
        tRefCounted::Release(fireControllers[i]);
        tRefCounted::Release(fireInstances[i]);
    }
    for (i = 0; i<2; i++)
    {
        tRefCounted::Release(fireworks[i]);
        tRefCounted::Release(fireworkControllers[i]);
        tRefCounted::Release(fireworkInstances[i]);
    }
}

void ParticlesInstanceAndCloneTest::Setup()
{
    SetupSection();

    // load particle system instance and clone file which contains 
    // a fire particle system (instancing test) and a fireworks particle system (cloning test)
    Load("ParticlesInstancingAndCloning.p3d");

    // set name
    char  fireName[256] = "fireShape";
    char  fireworkName[256] = "fireworkShape";

    // find the static data for the fire particle system
    fire = p3d::find<tParticleSystem>(fireName);
    fire->AddRef();

    // upon loading of the file, an instance and its' corresponding framecontroller
    // is already created by the loader and stored in the inventory
    fireInstances[0] = p3d::find<tParticleSystemInstance>(fireName);
    fireInstances[0]->AddRef();
    fireControllers[0] = p3d::find<tEffectController>(fireName);
    fireControllers[0]->AddRef();
    
    // create 4 more instances of fire (total of 5) and evenly space them out
    float x = -20.0f;
    fireInstances[0]->Translate(x,0.0f,0.0f);
    for (int i = 1; i<5; i++)
    {
        x+=10.0f;
        fireControllers[i] = fire->CreateParticleSystemInstance();
        fireControllers[i]->AddRef();
        fireInstances[i] = (tParticleSystemInstance*)(fireControllers[i]->GetEffect());
        fireInstances[i]->Translate(x,0.0f,0.0f);
        fireInstances[i]->AddRef();
    }

    // find the static data for the firework particle system
    fireworks[0] = p3d::find<tParticleSystem>(fireworkName);
    fireworks[0]->AddRef();

    // upon loading of the file, an instance and its' corresponding framecontroller
    // is already created by the loader and stored in the inventory
    fireworkInstances[0] = p3d::find<tParticleSystemInstance>(fireworkName);
    fireworkInstances[0]->AddRef();
    fireworkInstances[0]->Translate(10.0f,10.0f,0.0f);
    fireworkControllers[0] = p3d::find<tEffectController>(fireworkName);
    fireworkControllers[0]->AddRef();

    // clone the particle system
    fireworks[1] = fireworks[0]->CloneParticleSystem(fireworkName);
    fireworks[1]->AddRef();

    // although we clone the particle system, we are only cloning static data, so we still
    // need an instance of the cloned particle system, in order to actually display it.
    fireworkControllers[1] = fireworks[1]->CreateParticleSystemInstance(fireworkName);
    fireworkControllers[1]->AddRef();
    fireworkInstances[1] = (tParticleSystemInstance*)(fireworkControllers[1]->GetEffect());
    fireworkInstances[1]->AddRef();
    fireworkInstances[1]->Translate(-10.0f,10.0f,0.0f);
}

void ParticlesInstanceAndCloneTest::Update(float deltaTime)
{
    p3d::inventory->SelectSection(GetName());

    int i;
    // advance controller
    for (i = 0; i<5; i++)
    {
        fireControllers[i]->Advance(deltaTime);
    }
    for (i = 0; i<2; i++)
    {
        fireworkControllers[i]->Advance(deltaTime);
    }
}

void ParticlesInstanceAndCloneTest::Display()
{
    p3d::inventory->SelectSection(GetName());

    int i;
    // display particle system
    for (i = 0; i<5; i++)
    {
        fireInstances[i]->Display();
    }
    for (i = 0; i<2; i++)
    {
        fireworkInstances[i]->Display();
    }
}

//-------------------------------------------------------------------
ParticlesCollisionAndForceTest::ParticlesCollisionAndForceTest():
    marbles(NULL),
    birds(NULL),
    marblesPhysics(NULL),
    birdsPhysics(NULL),
    multiController(NULL)
{
    //initialize all pointers to instances, composite drawables and frame controllers to NULL
}

ParticlesCollisionAndForceTest::~ParticlesCollisionAndForceTest()
{
    // release all particle instances and their corresponding frame controllers
    tRefCounted::Release(marbles);
    tRefCounted::Release(birds);

    // release the composite drawbles used to contain the forces and collisions
    // for the particle systems
    tRefCounted::Release(marblesPhysics);
    tRefCounted::Release(birdsPhysics);

    tRefCounted::Release(multiController);
}

void ParticlesCollisionAndForceTest::Setup()
{
    SetupSection();

    // load particle system file which contains a marble particle system (collision test) 
    // and a birds particle system (forces test) with their corresponding composite drawables which
    // contain their physics objects (forces and collisions)
    Load("ParticlesCollisionsAndForces.p3d");

    // set name
    char  marblesName[256] = "marblesShape";
    char  birdsName[256] = "birdsShape";
    char  marblesPhysicsName[256] = "marblesPhysics";
    char  birdsPhysicsName[256] = "birdsPhysics";

    // upon loading of the file, an instance and its' corresponding framecontroller
    // is already created by the loader and stored in the inventory
    marbles = p3d::find<tParticleSystemInstance>(marblesName);
    marbles->AddRef();
    
    // find the composite drawable that contains all the physic elements for the marbles particle system.
    // Note: forces and collisions must be in some kind of hierarchy (scenegraph or composite drawable), otherwise
    // they are treated as if they are at the origin.  Hierarchy is not neccessary if programmer is going to place them 
    // during runtime.
    marblesPhysics = p3d::find<tCompositeDrawable>(marblesPhysicsName);
    marblesPhysics->AddRef();

    // upon loading of the file, an instance and its' corresponding framecontroller
    // is already created by the loader and stored in the inventory
    birds = p3d::find<tParticleSystemInstance>(birdsName);
    birds->AddRef();
    
    // find the composite drawable that contains all the physic elements for the birds particle system.
    // Note: forces and collisions must be in some kind of hierarchy (scenegraph or composite drawable), otherwise
    // they are treated as if they are at the origin.  Hierarchy is not neccessary if programmer is going to place them 
    // during runtime.
    birdsPhysics = p3d::find<tCompositeDrawable>(birdsPhysicsName);
    birdsPhysics->AddRef();

    // find the multi controller to update all frame controllers, can just find individual frame controllers and update
    // them individually, but this is easier and safer.
    multiController = p3d::find<tMultiController>("MasterController");
    if(multiController)
    {
        multiController->AddRef();
    }
}

void ParticlesCollisionAndForceTest::Update(float deltaTime)
{
    p3d::inventory->SelectSection(GetName());

    // advance controllers, Note the physics frame controllers should be updated before the particle systems 
    // they are connected to, so as to ensure the physics elements have the correct data for the particles to 
    // act upon.
    multiController->Advance(deltaTime);
}

void ParticlesCollisionAndForceTest::Display()
{
    p3d::inventory->SelectSection(GetName());

    // important note: you should always display the physics elements before displaying the
    // connected particle systems.  this is required because the actual update of the physic elements
    // occurs in the display call, even though there is no visual display.

    marblesPhysics->Display();
    birdsPhysics->Display();

    // display particle systems
    marbles->Display();
    birds->Display();
}
#endif // particle tests wont compile


//-------------------------------------------------------------------
// Scenegraph Test - Lots of other classes derived from this class
ScenegraphTest::ScenegraphTest() 
: 
controller(NULL), 
draw(NULL),
m_view(NULL),
m_camera(NULL)
{
    SetFileName("sceneGraph.p3d");
    SetControllerName("MasterController");
    SetSceneName("Scene");
    SetCameraName("camPerspShape");
    isCyclic = true;
}

void ScenegraphTest::Setup()
{
    SetupSection();
    
    Load(GetFileName());

    controller = p3d::find<tMultiController>(GetControllerName());
    if(controller) 
    {
        controller->AddRef();
        //controller->SetCyclic(isCyclic);
    }

    tDirectionalLight* ambiantLight = new tDirectionalLight;
    ambiantLight->SetColour(tColour(255,255,255));
    ambiantLight->SetDirection(-1.0f, 1.0f,1.0f);

    m_view = new tView;
    m_view->AddRef();

    m_view->AddLight(ambiantLight);

    m_view->SetBackgroundColour(tColour(0,0,150));
    m_view->SetAmbientLight(tColour(100,100,100));

    m_camera = p3d::find<tCamera>(GetCameraName());
    if(m_camera)
    {
        m_camera->AddRef();
    }

    draw = p3d::find<Scenegraph::Scenegraph>(GetSceneName());
    if(draw)
    {
        draw->AddRef();
        Scenegraph::LightGroupIterator lightIterator(draw);

        for(lightIterator.First();!lightIterator.IsDone(); lightIterator.Next())
        {
            Scenegraph::LightGroup* lightGroup = lightIterator.GetLightGroup();
            if(lightGroup)
            {
                tLightGroup* lights = lightGroup->GetLights();
                int nLights = lights->GetNumLights();
                for(int i=0;i<nLights;i++)
                {
                    m_view->AddLight(lights->GetLight(i));
                }
            }
        }
    }
}

void ScenegraphTest::Shutdown()
{
    tRefCounted::Release(m_view);
    tRefCounted::Release(m_camera);
    tRefCounted::Release(draw);
    tRefCounted::Release(controller);
}

void ScenegraphTest::Update(float deltaTime)
{
    if(controller)
    {
        controller->Advance(deltaTime);
    }
}

void ScenegraphTest::BeginRender(const CoverAppRendering& appRender)
{
    if(!m_camera)
    {
        m_view->SetCamera(appRender.GetCamera());
    }
    else
    {
        m_view->SetCamera(m_camera);
    }
    m_view->BeginRender();
}

void ScenegraphTest::Display()
{
    p3d::inventory->SelectSection(GetName());

    if(draw)
    {
        draw->Display();
    }
}

void ScenegraphTest::EndRender(const CoverAppRendering& appRender)
{
    m_view->SetCamera(NULL);
    m_view->EndRender();
}

//-------------------------------------------------------------------
PoseAnimationTest::PoseAnimationTest () :
skin(0),
controller(0),
blendTime(15.0f),
testCounter(0)
{

}

PoseAnimationTest::~PoseAnimationTest ()
{
    if(skin)
    {
        skin->Release();
    }

    if (controller)
    {
        controller->Release();
    }
}

void PoseAnimationTest::Setup()
{
    SetupSection();

    //
    // Using some boarding art
    //
    Load("christ.p3d");
    Load("boardAnims.p3d");

    skin = p3d::find<tDrawablePose>("riderShape");
    P3DASSERTMSG(skin, "No Skin found", 0 );
    if(skin)
    {
        skin->AddRef();

        // create a new frame controller for the animation
        controller = new tPoseAnimationController;
        controller->CopyName(skin);
        controller->SetPose(skin->GetPose());
    }

    SetAnimation("referance");

}

void PoseAnimationTest::Display()
{
    p3d::inventory->SelectSection(GetName());

    if(skin)
    {
        TestPlanUpdate();

        p3d::stack->Push();
        p3d::stack->LoadIdentity();
        p3d::stack->Translate(0.0f, -1.0f, 2);
        skin->Display();
        p3d::stack->Pop();
    }
}

void PoseAnimationTest::SetAnimation(const char* name)
{
    // find the animation in the inventory using its name
    tAnimation* anim = p3d::find<tAnimation>(name);
    if(anim)
    {
        // since we are working with jog and stand animations
        // we need to make them cyclic
        //anim->SetCyclic(true);

        if(controller)
        {
            // pass the animation to the controller, specifying
            // the start frame and blend time
            controller->SetAnimation(anim, 0.0f /* start frame */, blendTime);
        }
    }
}


void PoseAnimationTest::TestPlanUpdate(void)
{
    if(controller)
    {
        controller->Advance(5.0f);
        
        testCounter++;

        if(testCounter == 1)
        {
            SetAnimation("referance_m");
        }
        else if(testCounter == 50)
        {
            SetAnimation("referance");
        }
        else if(testCounter == 100)
        {
            SetAnimation("grab");
        }
        else if(testCounter == 300)
        {
            SetAnimation("grab_m");
        }
        else if(testCounter > 500)
        {
            testCounter = 0;
        }
    }
}

















// ------------------------------------------------------------------
// Animated Ambient light test is buggy
//    When switching to a new test, the ambient light remains
//    Bug submitted to BugTracker
//    Once fixed, turn this test back on in the config file
// ------------------------------------------------------------------

AnimatedAmbientLightTest::AnimatedAmbientLightTest()
{
    SetFileName("AnimatedLightTests/AnimatedAmbientLight.p3d");
    SetControllerName("MasterController");
    SetSceneName("Group");
    isCyclic = true;
}

void AnimatedAmbientLightTest::Display()
{
    ScenegraphTest::Display();
    
    {
        char buf[255];
        sprintf(buf, "NOTE: This test has a bug: the ambient \nlight from this test will carry over to the other tests.\n");
        p3d::pddi->DrawString(buf, 50, 50, tColour(255,0,0));
    }
    
}

void AnimatedAmbientLightTest::CleanUp()
{
    //Need to turn off residue light here
    
}


//-------------------------------------------------------------------
// This test has a slight glitch.  When the bottom cube is rotated past
// 180 degrees, it glitches.  This is one thing that should be fixed for the 
// next release
// ------------------------------------------------------------------

MovingCollisionPlaneTest::MovingCollisionPlaneTest() : light(NULL)
{
    SetFileName("ParticleMovingCollisionPlanes.p3d");
    SetControllerName("MasterController");
    SetSceneName("Scene");
    isCyclic = true;
}


// ------------------------------------------------------------------
// A bunch of particles with animated sprite textures on each particle
//    The pigs vs the farmers
// ------------------------------------------------------------------
AnimatedParticleTextureTest::AnimatedParticleTextureTest()
{
    SetFileName("TextureAnimation.p3d");
    SetControllerName("MasterController");
    SetSceneName("Scene");
    isCyclic = true;
}

// ------------------------------------------------------------------
// Particle Blending Test
//    Three particle systems shown.  One with blend ratio of 0, one with
//    blend ratio 1, and the third with changing ratio
// ------------------------------------------------------------------
#if(HOOPED_TEST)
ParticleBlendingTest::ParticleBlendingTest()
{
    fire = NULL;
    fireControllerPrimary = NULL;
    for (int i=0; i < 3; i++)
    {
        fireInstance[i] = NULL;
        fireController[i] = NULL;
    }

    totalTime=0;
}

ParticleBlendingTest::~ParticleBlendingTest()
{   
    if (fire) fire->Release();
    if (fireControllerPrimary) fireControllerPrimary->Release();
    for (int i=0; i < 3; i++)
    {
        if (fireInstance[i]) fireInstance[i]->Release();
        if (fireController[i]) fireController[i]->Release();
    }
}

void ParticleBlendingTest::Setup()
{  
    SetupSection();

    Load("ParticleBlendTest.p3d");
    
    fire = p3d::find<tParticleSystem>("Candle2Shape");
    fire->AddRef();
    
    // Create effect controller for the fire
    fireControllerPrimary = p3d::find<tEffectController>("Candle2Shape");
    fireControllerPrimary->AddRef();   
    
    float z=-10.0f;
    
    for (int i=0; i < 3; i++)
    {
        // Setup the spacing of the particle systems
        z+=10.0f;
        fireController[i] = fire->CreateParticleSystemInstance();
        fireController[i]->AddRef();
        fireInstance[i] = (tParticleSystemInstance*)(fireController[i]->GetEffect());
        
        fireInstance[i]->Translate(0.0f, 0.0f, z);
        fireInstance[i]->AddRef();
    }
    fireInstance[2]->SetBlendRatio(1.0f);
    fireInstance[1]->SetBlendRatio(1.0f);  //This blend state later oscillates during Update()
    fireInstance[0]->SetBlendRatio(0.0f);

}

void ParticleBlendingTest::Display()
{  
    p3d::inventory->SelectSection(GetName());
    
    p3d::stack->Push();
    p3d::stack->Translate(0.0f, 0.0f, -10.0f);

    for (int i=0; i < 3; i++)
    {
        fireInstance[i]->Display();
    }

    p3d::stack->Pop();
    
    // Display the blend ratio onscreen
    char buf[255];
    sprintf(buf, "Blending Ratio: %f", fabsf(Sin(totalTime/2000)));
    p3d::pddi->DrawString(buf, 50, 50, tColour(255,255,255));
    
}

void ParticleBlendingTest::Update(float deltaTime)
{
    p3d::inventory->SelectSection(GetName());
    
    totalTime += deltaTime;

    //Vary the blend ratio for the middle fire
    fireInstance[1]->SetBlendRatio(fabsf(Sin(totalTime/2000)));

    for (int i=0; i < 3; i++)
    {
        // Advance all three fire controllers
        fireController[i]->Advance(deltaTime);
    }
    
}
#endif
// ------------------------------------------------------------------
// Test that all types of geometry function correctly
//    Rotates between indexed, deindexed and streamed
//    Displays textured, non textured, multitextured objects
// ------------------------------------------------------------------
 
AllGeometryTest::AllGeometryTest() : indexedScene(NULL), deindexedScene(NULL), light(NULL), shader(NULL)
{
    totalTime=0.0f;
    currentTest=0;

    indexCubeLit= NULL;
    indexCubeUnlit = NULL;
    deindexCubeLit = NULL;
    deindexCubeUnlit = NULL;

    shaderLtMap = NULL;
}

AllGeometryTest::~AllGeometryTest()
{
    if (indexedScene) indexedScene->Release();
    if (deindexedScene) deindexedScene->Release();
    if (shader) shader->Release();
    if (light) light->Release();

    if (shaderLtMap) shaderLtMap->Release();

    if (indexCubeLit) indexCubeLit->Release();
    if (indexCubeUnlit) indexCubeUnlit->Release();
    if (deindexCubeLit) deindexCubeLit->Release();
    if (deindexCubeUnlit) deindexCubeUnlit->Release();
}

void AllGeometryTest::Setup()
{
    SetupSection();

    light = new tDirectionalLight;
    light->AddRef();

    light->SetColour(tColour(255, 255, 255));
    light->SetDirection(1.0f, -1.0f, 1.0f);
    
    //Populate the testNames array
    testNames[0] = "Indexed / Buffered";
    testNames[1] = "DeIndexed / Buffered";
    testNames[2] = "Streamed";
    
    // Load indexed objects
    Load("Geometry/GeometryTestsIndexed.p3d");
    indexedScene = p3d::find<tDrawable>("Scene");
    if (indexedScene) indexedScene->AddRef();
    indexCubeLit = p3d::find<tGeometry>("LitMultiTexturedShape");
    if (indexCubeLit) indexCubeLit->AddRef();
    indexCubeUnlit = p3d::find<tGeometry>("UnlitMultiTexturedShape");
    if (indexCubeUnlit) indexCubeUnlit->AddRef();

    // Light map for multitexture
    lightMap = p3d::find<tTexture>("LightMap");
    baseTex = p3d::find<tTexture>("baseTexture");
    textures[0] = p3d::find<tTexture>("file13"); 
    textures[1] = p3d::find<tTexture>("file14");
    textures[2] = p3d::find<tTexture>("NoTexture");

    shaderLtMap = new tShader("lightmap");
    shaderLtMap->AddRef();
    shaderLtMap->SetTexture(PDDI_SP_BASETEX, baseTex);
    shaderLtMap->SetTexture(PDDI_SP_LIGHTMAP, lightMap);
    
    // Load deindexed objects
    Load("Geometry/GeometryTestsDeIndexed.p3d");
    deindexedScene = p3d::find<tDrawable>("SceneDe");
    if (deindexedScene) deindexedScene->AddRef();
    deindexCubeLit = p3d::find<tGeometry>("LitMultiTexturedDeShape");
    if (deindexCubeLit) deindexCubeLit->AddRef();
    deindexCubeUnlit = p3d::find<tGeometry>("UnlitMultiTexturedDeShape");
    if (deindexCubeUnlit) deindexCubeUnlit->AddRef();
    
    shaderLtMap->SetInt(PDDI_SP_ISLIT, 0);
    indexCubeLit->SetShader(0, shaderLtMap);
    deindexCubeLit->SetShader(0, shaderLtMap);

    shaderLtMap->SetInt(PDDI_SP_ISLIT, 1);
    indexCubeUnlit->SetShader(0, shaderLtMap);
    deindexCubeUnlit->SetShader(0, shaderLtMap);

    shader = new tShader("simple");
    shader->AddRef();
}

void AllGeometryTest::Display()
{
    const float timeToShowTest = 6000.0f;   //Time in milliseconds

    // Code to rotate tests
    if (totalTime > timeToShowTest)
    {
        totalTime = totalTime - timeToShowTest;
        currentTest++;
        if (currentTest >=3) 
            currentTest =0;
    }

    // Display which test is currently being shown
    char buf[255];
    sprintf(buf, "Currently showing '%s' test \n for %i more seconds", testNames[currentTest], (int)((timeToShowTest - totalTime + 1000)/1000));
    p3d::pddi->DrawString(buf, 50, 50, tColour(255,255,255));
    
    DisplayTest(currentTest);
    
    light->Activate(1);
}

void AllGeometryTest::Update(float deltaTime)
{
    totalTime += deltaTime;
}

void AllGeometryTest::CleanUp()
{
    light->Deactivate();
}

void AllGeometryTest::DisplayTest(int testNumber)
{  
    testNumber = 2;
    if (testNumber == 0)
    {
        if (indexedScene) indexedScene->Display();
        if (indexCubeLit) indexCubeLit->Display();
        if (indexCubeUnlit) indexCubeUnlit->Display();
    }
    else if (testNumber == 1)
    {
        if (deindexedScene) indexedScene->Display();
        if (deindexCubeLit) deindexCubeLit->Display();
        if (deindexCubeUnlit) deindexCubeUnlit->Display();
    }
    else if (testNumber == 2)
    {
        // Draw the 6 cubes using prims
        shader->SetInt(PDDI_SP_ISLIT, 0);
        shaderLtMap->SetInt(PDDI_SP_ISLIT,0);
        
        DrawCube(Vector(-1.0f, 4.0f, 0.0f), 1.0f, shader, textures[0], PDDI_BLEND_NONE, 0);  //Textured
        DrawCube(Vector(2.0f, 4.0f, 0.0f), 1.0f, shader, textures[2], PDDI_BLEND_NONE, 0);   //Untextured
        DrawCube(Vector(5.0f, 4.0f, 0.0f), 1.0f, shaderLtMap, textures[0], PDDI_BLEND_NONE, 1);   //MultiTextured
        
        shader->SetInt(PDDI_SP_ISLIT, 1);
        shaderLtMap->SetInt(PDDI_SP_ISLIT,1);

        DrawCube(Vector(-1.0f, 0.0f, 0.0f), 1.0f, shader, textures[1], PDDI_BLEND_NONE, 0);
        DrawCube(Vector(2.0f, 0.0f, 0.0f), 1.0f, shader, textures[2], PDDI_BLEND_NONE, 0);
        DrawCube(Vector(5.0f, 0.0f, 0.0f), 1.0f, shaderLtMap, textures[1], PDDI_BLEND_NONE, 1);
    }
}

void AllGeometryTest::DrawCube(Vector cubeCenter, float width, tShader* shader, tTexture* texture, pddiBlendMode mode, bool multiTextured)
{
    // Code to draw a cube using prims
    float xpos = cubeCenter.x + width/2;
    float xneg = cubeCenter.x - width/2;
    float ypos = cubeCenter.y + width/2;
    float yneg = cubeCenter.y - width/2;
    float zpos = cubeCenter.z + width/2;
    float zneg = cubeCenter.z - width/2;

    Vector points[8] = {Vector(xpos, yneg, zneg), Vector(xpos, ypos, zneg), Vector(xpos, yneg, zpos), Vector(xpos, ypos, zpos),
        Vector(xneg, yneg, zneg), Vector(xneg, ypos, zneg), Vector(xneg, yneg, zpos), Vector(xneg, ypos, zpos)};
    
    DrawCubeFace(shader, texture, points[3], points[2], points[1], points[0], mode, multiTextured);
    DrawCubeFace(shader, texture, points[2], points[3], points[6], points[7], mode, multiTextured); 
    DrawCubeFace(shader, texture, points[6], points[7], points[4], points[5], mode, multiTextured); 
    DrawCubeFace(shader, texture, points[4], points[5], points[0], points[1], mode, multiTextured); 
    DrawCubeFace(shader, texture, points[3], points[1], points[7], points[5], mode, multiTextured); 
    DrawCubeFace(shader, texture, points[0], points[2], points[4], points[6], mode, multiTextured); 
}

void AllGeometryTest::DrawCubeFace(tShader* shader, tTexture* tex, Vector coord1, Vector coord2, Vector coord3, Vector coord4, pddiBlendMode mode, bool multiTextured)
{
    // Draw cube face using prims
    // Very similar to Draw Quad
    shader->SetInt(PDDI_SP_BLENDMODE, mode);
    
    pddiPrimStream* stream;
    
    if (!multiTextured)
    {
        shader->SetTexture(PDDI_SP_BASETEX, tex);

        stream = p3d::pddi->BeginPrims(shader->GetShader(), PDDI_PRIM_TRIANGLES, PDDI_V_CT, 6);

        stream->Colour(tColour(255,255,255));
        stream->UV(0.0f, 1.0f);
        stream->Coord(coord1.x, coord1.y, coord1.z);

        stream->Colour(tColour(255,255,255));
        stream->UV(1.0f, 1.0f);
        stream->Coord(coord2.x, coord2.y, coord2.z);

        stream->Colour(tColour(255,255,255));
        stream->UV(1.0f, 0.0f);
        stream->Coord(coord4.x, coord4.y, coord4.z);

        stream->Colour(tColour(255,255,255));
        stream->UV(0.0f, 1.0f);
        stream->Coord(coord1.x, coord1.y, coord1.z);

        stream->Colour(tColour(255,255,255));
        stream->UV(1.0f, 0.0f);
        stream->Coord(coord4.x, coord4.y, coord4.z);

        stream->Colour(tColour(255,255,255));
        stream->UV(0.0f, 0.0f);
        stream->Coord(coord3.x, coord3.y, coord3.z);
    }
    
    //MultiTextured
    else
    {
        stream = p3d::pddi->BeginPrims(shader->GetShader(), PDDI_PRIM_TRIANGLES, PDDI_V_POSITION | PDDI_V_UVCOUNT2, 6);
        
        stream->UV(0.0f, 1.0f, 0);
        stream->UV(0.0f, 1.0f, 1);
        stream->Coord(coord1.x, coord1.y, coord1.z);

        stream->UV(1.0f, 1.0f, 0);
        stream->UV(1.0f, 1.0f, 1);
        stream->Coord(coord2.x, coord2.y, coord2.z);

        stream->UV(1.0f, 0.0f, 0);
        stream->UV(1.0f, 0.0f, 1);
        stream->Coord(coord4.x, coord4.y, coord4.z);

        stream->UV(0.0f, 1.0f, 0);
        stream->UV(0.0f, 1.0f, 1);
        stream->Coord(coord1.x, coord1.y, coord1.z);

        stream->UV(1.0f, 0.0f, 0);
        stream->UV(1.0f, 0.0f, 1);
        stream->Coord(coord4.x, coord4.y, coord4.z);

        stream->UV(0.0f, 0.0f, 0);
        stream->UV(0.0f, 0.0f, 1);
        stream->Coord(coord3.x, coord3.y, coord3.z);
    }
    
    p3d::pddi->EndPrims(stream);
}
// ------------------------------------------------------------------
// Shadow Test
//    Sample code for rendering shadows - see www.gamasutra.com for details
//
//    First get the shadow volume, by calculating the edges and extruding that
//    edge in the direction of the light.  Render to the stencil buffer the shadow  
//    first with back face culling.  Increment the stencil buffer where the shadow 
//    lies.  Then render the shadow to the stencil buffer with front face culling 
//    and the stencil buffer being decremented.  Finally draw an overlayed quad with 
//    the shadow color wherever the stencil buffer is greater than zero.
// ------------------------------------------------------------------
ShadowTest::ShadowTest()
{
    gen=NULL;
    shadow=NULL;
    drawable = NULL;
    room=NULL;
    light = NULL;
}

void ShadowTest::Setup()
{
    SetupSection();

    gen = new tShadowGenerator;
    gen->AddRef();

    Load("shadow/sphere_shadow.p3d");
    Load("shadow/room.p3d");

    
    drawable = p3d::find< tDrawable >("pSphereShape1");
    if (drawable) drawable->AddRef();

    shadow = p3d::find< tShadow >("pSphereShape1");
    if (shadow) shadow->AddRef();
    
    room = p3d::find<tDrawable>("Room");
    if (room) room->AddRef();

    light = new tDirectionalLight;
    light->SetDirection(rmt::Vector( 3.0f, -4.0f, 5.0f ));
    light->SetColour(tColour(255, 255, 255));
}

void ShadowTest::Shutdown()
{
    if (room) room->Release();
    if (gen) gen->Release();
    if (light) light->Release();
    if (drawable) drawable->Release();
    if (shadow) shadow->Release();
}

void ShadowTest::BeginRender(const CoverAppRendering& appRender)
{
    CoverageTest::BeginRender(appRender);
    gen->PreRender();
}

void ShadowTest::EndRender(const CoverAppRendering& appRender)
{
    CoverageTest::EndRender(appRender);
}

void ShadowTest::Display()
{
    if (room) room->Display();
    light->Activate(0);

    p3d::stack->Push();
    p3d::stack->Translate(0,2.0f,0);
    if (drawable) drawable->Display();

    gen->Begin();
    gen->SetWashColour(tColour(128,128,128, 64));
    shadow->SetLight(false, light->GetDirection());
    shadow->Display();
    gen->End();
    p3d::stack->Pop();
}


void ShadowTest::Update(float deltaTime)
{
    p3d::inventory->SelectSection(GetName());
}

void ShadowTest::CleanUp()
{
    light->Deactivate();
}


// ------------------------------------------------------------------
// Pure 3D fountain test
//    Tests bumpmapping and particles
// ------------------------------------------------------------------
FountainTest::FountainTest()
{
    SetFileName("WaterFountain.p3d");
    SetControllerName("MasterController");
    SetSceneName("Scene");
    
    fountainTop = NULL;
    fountainBottom = NULL;
    bumpMap = NULL;
    baseTex = NULL;
    shader= NULL;
}

FountainTest::~FountainTest()
{
    if (fountainTop) fountainTop->Release();
    if (fountainBottom) fountainBottom->Release();
    if (bumpMap) bumpMap->Release();
    if (baseTex) baseTex->Release();
    if (shader) shader->Release();
}

void FountainTest::Setup()
{
    ScenegraphTest::Setup();

    fountainTop = p3d::find<tGeometry>("fountainTopShape");
    if (fountainTop) fountainTop->AddRef();
    fountainBottom = p3d::find<tGeometry>("fountainBottomShape");
    if (fountainBottom) fountainBottom->AddRef();

    bumpMap = p3d::find<tTexture>("bumpMap");
    if (bumpMap) bumpMap->AddRef();
    baseTex = p3d::find<tTexture>("BaseTex");
    if (baseTex) baseTex->AddRef();

    shader = new tShader("bumpmap");
    shader->AddRef();
    shader->SetTexture(PDDI_SP_BASETEX, baseTex);
    shader->SetTexture(PDDI_SP_BUMPMAP, bumpMap);

    pddiVector lVec;
    lVec.Set(3.0f, 4.0f, 5.0f);      //From the configuration settings
    shader->SetVector(PDDI_SP_LIGHTV, lVec );
    
    
    shader->SetInt(PDDI_SP_BMSPECULAR, false);  //boolean value
    shader->SetInt(PDDI_SP_UVMODE, PDDI_UV_TILE);
    
    tColour amb(32,32,32,255);
    tColour diff(128,128,128,255);
    tColour spec(0, 0, 128,255);
    
    shader->SetInt(PDDI_SP_ISLIT, true);
    shader->SetColour(PDDI_SP_AMBIENT, amb);
    shader->SetColour(PDDI_SP_DIFFUSE, diff);
    shader->SetColour(PDDI_SP_SPECULAR, spec);
    shader->SetInt(PDDI_SP_BMLIGHTDEP, 1);
    
    fountainTop->SetShader(0, shader);
    fountainBottom->SetShader(0, shader);

}

void FountainTest::Display()
{
    ScenegraphTest::Display();
    
    fountainTop->Display();
    fountainBottom->Display();  
}


//--------------------
//Animated Camera Test
//--------------------

AnimatedCameraTest::AnimatedCameraTest() : camera(NULL), controller(NULL), scene(NULL)
{
    
}

void AnimatedCameraTest::Setup()
{
    SetupSection();

    Load("animCamera.p3d");

    camera = p3d::find<tVectorCamera>("alexCamShape");
    if (camera)
    {
        camera->AddRef();
        controller = new tCameraAnimationController();
        controller->AddRef();
        controller->SetCamera(camera);
    }

    scene = p3d::find<tDrawable>("camAnimTOP");
    if (scene)
    {
        scene->AddRef();
    }

    tAnimation* anim = p3d::find<tAnimation>("CAM_alexCamShape");
    if (anim)
    {
        //anim->SetCyclic(true);
        controller->SetAnimation(anim);
    }   

}

void AnimatedCameraTest::Shutdown()
{
    if (camera) camera->Release();
    if (controller) controller->Release();
    if (scene) scene->Release();
}

void AnimatedCameraTest::Display()
{
 
    //get original camera
    tCamera* originalCamera = p3d::context->GetView()->GetCamera();

    if (camera)
    {
        p3d::context->GetView()->SetCamera(camera);
    }

    //camera manipulations are only done at the start of a render,
    //BeginRender() needs to be called
    p3d::context->GetView()->BeginRender();

    if (scene)
    {
        scene->Display();
    }

    char buf[255];
    sprintf(buf, "Animated Camera Test");
    p3d::pddi->DrawString(buf, 10, 10, tColour(255,255,255));

    //restore original camera
    p3d::context->GetView()->SetCamera(originalCamera);

}

void AnimatedCameraTest::Update(float deltaTime)
{
    if (controller)
    {
        controller->Advance(deltaTime);
    }

}


//------------------
// inventory test
//------------------

Inventory_Test::Inventory_Test() :
cube(NULL),
cone(NULL),
sphere(NULL),
cylinder(NULL),
torus(NULL),
redSphere(NULL),
redSphere2(NULL),
blueSphere(NULL),
xmark(NULL),
tempCube(NULL),
tempCube2(NULL),
wasDeleted(false)
{
    
}

void Inventory_Test::Setup()
{
    SetupSection();

    Load("inventoryTest.p3d");
    cube = p3d::find<tGeometry>("CubeShape1");
    if (cube) cube->AddRef();

    cone = p3d::find<tGeometry>("pConeShape1");
    if (cone) cone->AddRef();

    sphere = p3d::find<tGeometry>("pSphereShape1");
    if (sphere) sphere->AddRef();

    cylinder = p3d::find<tGeometry>("pCylinderShape1");
    if (cylinder) cylinder->AddRef();

    torus = p3d::find<tGeometry>("pTorusShape1");
    if (torus) torus->AddRef();

    redSphere = p3d::find<tGeometry>("redSphereShape");
    if (redSphere) redSphere->AddRef();

    //to show that there is a red sphere
    redSphere2 = redSphere;
    if (redSphere2) redSphere2->AddRef();
    
    blueSphere = p3d::find<tGeometry>("blueSphereShape");
    if (blueSphere) blueSphere->AddRef();

    //remove the red sphere from inventory
    p3d::inventory->Remove(redSphere);
    if (redSphere) redSphere->Release();
    redSphere = p3d::find<tGeometry>("redSphereShape");

    xmark = p3d::find<tGeometry>("pPlaneShape1");
    if (xmark) xmark->AddRef();

    //create a new section and select it
    p3d::inventory->AddSection("tempSection");
    p3d::inventory->PushSection();
    p3d::inventory->SelectSection("tempSection");
    
    char fullPath[512];
    sprintf(fullPath, "%s/%s", artPath, "cube.p3d");
    tLoadRequest* load = new tLoadRequest(fullPath);

    // the loading system requires the specific section is to be provided
    // otherwise, it will be loaded into the default section

    load->SetInventorySection("tempSection");
    p3d::loadManager->Load(load);

    tempCube = p3d::find<tGeometry>("pCubeShape1");
    if (tempCube) tempCube->AddRef();

    p3d::inventory->PopSection();

    // current section needs to be reset otherwise
    // section will be set to default
    p3d::inventory->SelectSection(GetName());
    p3d::inventory->SetCurrentSectionOnly(true);

    tempCube2 = p3d::find<tGeometry>("pCubeShape1");
    if (tempCube2) tempCube2->AddRef();

    p3d::inventory->DeleteSection("tempSection");

    //check that tempSection was deleted
    p3d::inventory->SelectSection("tempSection");
    wasDeleted = p3d::inventory->GetCurrentSection() == p3d::inventory->GetSection(P3D_DEFAULT_INV_SECTION);
}

void Inventory_Test::Shutdown()
{
    if (cube) cube->Release();
    if (cone) cone->Release();
    if (sphere) sphere->Release();
    if (cylinder) cylinder->Release();
    if (torus) torus->Release();
    if (redSphere) redSphere->Release();
    if (redSphere2) redSphere2->Release();
    if (blueSphere) blueSphere->Release();
    if (xmark) xmark->Release();
    if (tempCube) tempCube->Release();
    if (tempCube2) tempCube2->Release();
}

void Inventory_Test::Display()
{
    p3d::stack->Push();

    if (cube)
    {
        p3d::stack->Translate(-10.0f, 0.0f, 0.0f);
        cube->Display();
    }

    if (cone)
    {
        p3d::stack->Translate(10.0f, 0.0f, 0.0f);
        cone->Display();
    }

    if (sphere)
    {
        p3d::stack->Translate(10.0f, 0.0f, 0.0f);
        sphere->Display();
    }

    if (cylinder)
    {
        p3d::stack->Translate(0.0f, 0.0f, 10.0f);
        cylinder->Display();
    }

    if (torus)
    {
        p3d::stack->Translate(-10.0f, 0.0f, 0.0f);
        torus->Display();
    }

    //display the first red sphere if found, or an 'x' otherwise
    if (redSphere)
    {
        p3d::stack->Translate(-10.0f, 0.0f, 0.0f);
        redSphere->Display();
    }
    else
    {
        p3d::stack->Translate(-10.0f, 0.0f, 0.0f);
        if (xmark) xmark->Display();
    }

    if (redSphere2)
    {
        p3d::stack->Translate(0.0f, 0.0f, 10.0f);
        redSphere2->Display();
    }

    if (blueSphere)
    {
        p3d::stack->Translate(10.0f, 0.0f, 0.0f);
        blueSphere->Display();
    }

    if (tempCube)
    {
        p3d::stack->Translate(10.0f, 0.0f, 0.0f);
        p3d::stack->Scale(0.25f);
        tempCube->Display();
    }

    if (tempCube2) 
    {
        p3d::stack->Translate(0.0f, 0.0f, 10.0f);
        tempCube2->Display();
    }
    else
    {
        char buf[255];
        sprintf(buf, "second cube not drawn, cube inventory section popped");
        p3d::pddi->DrawString(buf, 50, 50, tColour(255,255,255));
    }

    p3d::stack->Pop();

    if (wasDeleted == true)
    {
        char buf[255];
        sprintf(buf, "cube inventory section deleted");
        p3d::pddi->DrawString(buf, 50, 65, tColour(255,255,255));
    }

    if (SectionTest())
    {
        p3d::pddi->DrawString("Section stack test : PASSED", 50, 80, tColour(255,255,255));
    }
    else
    {
        p3d::pddi->DrawString("Section stack test : FAILED", 50, 80, tColour(255,255,255));
    }

}

bool Inventory_Test::SectionTest(void)
{
    bool success = true;

    char* section1 = "test_section_1";
    char* section2 = "test_section_2";
    char* section3 = "test_section_3";
    tUID origSection = p3d::inventory->GetSelectedSection();

    p3d::inventory->AddSection(section1);
    p3d::inventory->AddSection(section2);
    p3d::inventory->AddSection(section3);
    
    p3d::inventory->PushSection();

    p3d::inventory->SelectSection(section1);
    p3d::inventory->PushSection();

    p3d::inventory->SelectSection(section2);

    if(tEntity::MakeUID(section2) != p3d::inventory->GetSelectedSection())
        success = false;

    p3d::inventory->SelectSection(section3);

    if(tEntity::MakeUID(section3) != p3d::inventory->GetSelectedSection())
        success = false;

    p3d::inventory->PopSection();

    if(tEntity::MakeUID(section1) != p3d::inventory->GetSelectedSection())
        success = false;

    p3d::inventory->PopSection();

    if(origSection != p3d::inventory->GetSelectedSection())
        success = false;

    p3d::inventory->DeleteSection(section1);
    p3d::inventory->DeleteSection(section2);
    p3d::inventory->DeleteSection(section3);

    return true;
}

//-------------------------
//particle instancing test
//-------------------------
#if(HOOPED_TEST)
ParticleInstancingTest::ParticleInstancingTest() : bubbles(NULL)
{
    for ( int i = 0; i < 25; i++ )
    {
        bubbleInstance[i] = NULL;
        bubbleController[i] = NULL;
    }

}

ParticleInstancingTest::~ParticleInstancingTest()
{
    if (bubbles) bubbles->Release();

    for ( int i = 0; i < 25; i++ )
    {
        if (bubbleInstance[i]) bubbleInstance[i]->Release();
        if (bubbleController[i]) bubbleController[i]->Release();
    }
}

void ParticleInstancingTest::Setup()
{
    SetupSection();

    Load("bubbles.p3d");

    bubbles = p3d::find<tParticleSystem>("bubblesShape");
    if (bubbles) bubbles->AddRef();

    bubbleInstance[0] = p3d::find<tParticleSystemInstance>("bubblesShape");
    if (bubbleInstance[0]) bubbleInstance[0]->AddRef();

    bubbleController[0] = p3d::find<tEffectController>("bubblesShape");
    if (bubbleController[0]) bubbleController[0]->AddRef();

    for (int i = 1; i < 25; i++)
    {
        bubbleController[i] = bubbles->CreateParticleSystemInstance();
        if (bubbleController[i]) bubbleController[i]->AddRef();
        bubbleInstance[i] = (tParticleSystemInstance*) (bubbleController[i]->GetEffect());
        if (bubbleInstance[i]) bubbleInstance[i]->AddRef();
    }
}

void ParticleInstancingTest::Display()
{
    p3d::stack->Push();

    //arrange in 5 by 5 grid
    for ( int i = 0; i < 25; i++)
    {
        if (bubbleInstance[i]) bubbleInstance[i]->Display();
        p3d::stack->Translate(5.0f, 0.0f, 0.0f);

        //on every five instances, make a new row
        if (((i + 1) % 5) == 0)
        {
            p3d::stack->Translate(-25.0f, 0.0f,5.0f);
        }

    }
        
    p3d::stack->Pop();
}

void ParticleInstancingTest::Update(float deltaTime)
{
    for (int i = 0; i < 25; i++)
    {
        bubbleController[i]->Advance(deltaTime);
    }
}
#endif




//------------------------
// multiple viewport test
//------------------------
MultipleViewportTest::MultipleViewportTest() : viewport1(NULL), viewport2(NULL), viewport3(NULL), viewport4(NULL), viewport5(NULL), camera1(NULL),scene(NULL), controller(NULL)
{

}

void MultipleViewportTest::Setup()
{
    SetupSection();

    Load("animCamera.p3d");

    viewport1 = new tView;
    viewport2 = new tView;
    viewport3 = new tView;
    viewport4 = new tView;
    viewport5 = new tView;

    viewport1->AddRef();
    viewport2->AddRef();
    viewport3->AddRef();
    viewport4->AddRef();
    viewport5->AddRef();

    viewport1->SetWindow(0.0f, 0.1f, 0.4f, 0.4f);
    viewport2->SetWindow(0.5f, 0.2f, 0.9f, 0.5f);
    viewport3->SetWindow(0.6f, 0.7f, 1.0f, 1.0f);
    viewport4->SetWindow(0.3f, 0.4f, 0.7f, 0.7f);
    viewport5->SetWindow(0.1f, 0.6f, 0.5f, 0.9f);

    viewport1->SetClearColour(tColour(0, 0, 255));
    viewport2->SetClearColour(tColour(255, 255, 255));
    viewport3->SetClearColour(tColour(255, 0, 0));
    viewport4->SetClearColour(tColour(0, 0, 0));
    viewport5->SetClearColour(tColour(255, 255, 0));



    camera1 = p3d::find<tVectorCamera>("alexCamShape");
    if (!camera1)
    {
        camera1 = new tVectorCamera;
    }

    camera1->AddRef();
    controller = new tCameraAnimationController();
    controller->AddRef();
    controller->SetCamera(camera1);

    viewport1->SetCamera(camera1);
    viewport2->SetCamera(camera1);
    viewport3->SetCamera(camera1);
    viewport4->SetCamera(camera1);
    viewport5->SetCamera(camera1);

    scene = p3d::find<tDrawable>("camAnimTOP");
    if (scene)
    {
        scene->AddRef();
    }

    tAnimation* anim = p3d::find<tAnimation>("CAM_alexCamShape");
    if (anim)
    {
        //anim->SetCyclic(true);
        controller->SetAnimation(anim);
    }
}

void MultipleViewportTest::Shutdown()
{
    if (viewport1) viewport1->Release();
    if (viewport2) viewport2->Release();
    if (viewport3) viewport3->Release();
    if (viewport4) viewport4->Release();
    if (viewport5) viewport5->Release();
    if (camera1) camera1->Release();
    if (scene) scene->Release();
    if (controller) controller->Release();
}

void MultipleViewportTest::Display()
{
    viewport1->BeginRender();
    scene->Display();
    viewport1->EndRender();

    viewport2->BeginRender();
    scene->Display();
    viewport2->EndRender();

    viewport3->BeginRender();
    scene->Display();
    viewport3->EndRender();

    viewport4->BeginRender();
    scene->Display();
    viewport4->EndRender();

    viewport5->BeginRender();
    scene->Display();
    viewport5->EndRender();
}

void MultipleViewportTest::Update(float deltaTime)
{
    if (controller)
    {
        controller->Advance(deltaTime);
    }

}

//------------------------
// file compression test
//------------------------
FileCompressionTest::FileCompressionTest() : mikeNoCompress(NULL), mikeFastCompress(NULL), mikeRegCompress(NULL)
{

}

FileCompressionTest::~FileCompressionTest()
{
    if (mikeNoCompress) mikeNoCompress->Release();
    if (mikeFastCompress) mikeFastCompress->Release();
    if (mikeRegCompress) mikeRegCompress->Release();
}

void FileCompressionTest::Setup()
{
    SetupSection();

    // files are compressed using the commandline tool p3dcompress
    Load("CompressionTest/mike.p3d");
    Load("CompressionTest/mikeFastCompression.p3d");
    Load("CompressionTest/mikeFullCompression.p3d");

    mikeNoCompress = p3d::find<tCompositeDrawable>("Motion_Root");
    if (mikeNoCompress) mikeNoCompress->AddRef();

    mikeFastCompress = p3d::find<tCompositeDrawable>("1Motion_Root");
    if (mikeFastCompress) mikeFastCompress->AddRef();

    mikeRegCompress = p3d::find<tCompositeDrawable>("2Motion_Root");
    if (mikeRegCompress) mikeRegCompress->AddRef();
}

void FileCompressionTest::Display()
{
    p3d::stack->Push();
    p3d::stack->Scale(0.005f);
    p3d::stack->Translate(0.0f, -80.0f, 0.0f);

    p3d::stack->Push();

    p3d::stack->Translate(-180.0f, 0.0f, 0.0f);
    if (mikeNoCompress) mikeNoCompress->Display();

    p3d::stack->Translate(180.0f, 0.0f, 0.0f);
    if (mikeFastCompress) mikeFastCompress->Display();

    p3d::stack->Translate(180.0f, 0.0f, 0.0f);
    if (mikeRegCompress) mikeRegCompress->Display();

    p3d::stack->Pop();
    p3d::stack->Pop();

    char display[128] = "No Compression          Fast Compression          Full Compression";
    p3d::pddi->DrawString(display, 10, 150);

    // display the sizes of the files
    char displaySize[128] = "Size:336KB                     277KB                    274KB";
    p3d::pddi->DrawString(displaySize, 10, 300);
}







