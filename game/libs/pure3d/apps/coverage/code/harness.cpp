/*===========================================================================
    harness.cpp - PDDI test cases

    11-Nov-99 Created by Neall
    Updated by Young

    Copyright (c) 1999 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

#include "harness.hpp"
#include "coverage.hpp"

#include "shaderTest.hpp"
#include "geometryTest.hpp"
#include "billboardTest.hpp"
#include "fontTest.hpp"
#include "translucencyTest.hpp"
#include "visibilityTest.hpp"
#include "opticTest.hpp"
#include "lightTest.hpp"
#include "textureTest.hpp"
#include "sceneTest.hpp"
#include "particleTest.hpp"
#include "characterTest.hpp"
#include "nisTest.hpp"
#include "facialTest.hpp"
#include "sequencerTest.hpp"
#include "ps2Test.hpp"

#include "vertexAnimTest.hpp"
#include "configparam.hpp"
#include <p3d/pure3d.hpp>

#include <stdio.h>
#include <string.h>

TestHarness::TestHarness()
{
    renderingEnabled = true;
    labelsEnabled = true;
    nTest = 0;
    currentTest = 0;
    menuOption = 0;
    xPos = 30;
    yPos = 30;
    selected.Set(255,255,255);
    deselected.Set(180,180,255);
    listTop = 0;
}

//-------------------------------------------------------------------
TestHarness::~TestHarness()
{
    test[currentTest]->UnloadSection();
    test[currentTest]->Shutdown();

    for(int i=0; i < nTest; i++)
    {
        delete test[i];
    }
}

//-------------------------------------------------------------------
// initialize all the nutty tests.
// if the config file says the test is not on, then CreateTest will
// delete it.
void TestHarness::Init(ConfigParam &param)
{
//Working:

    // geometry tests
    if (param.GetOptionIntVal("All Tests") || param.GetOptionIntVal("Geometry Tests"))
    {

        CreateTest(new GouraudTriTest, param);
        CreateTest(new OrthoQuadTest, param);
        CreateTest(new SimpleGeometryTest, param);
        CreateTest(new SpriteTest, param);
        CreateTest(new TristripTest, param);
        CreateTest(new CullingTest, param);

    }

    // billboard tests
    if (param.GetOptionIntVal("All Tests") || param.GetOptionIntVal("Billboard Tests"))
    {
        CreateTest(new BillboardQuadTest, param);
        CreateTest(new AnimatedBillboardQuadGroupTest, param);
    }

    // font tests
    if (param.GetOptionIntVal("All Tests") || param.GetOptionIntVal("Font Tests"))
    {
        CreateTest(new FontTest, param);
        CreateTest(new TextTest, param);
        CreateTest(new UnicodeFontTest, param);
    }

    // translucency tests
    if (param.GetOptionIntVal("All Tests") || param.GetOptionIntVal("Translucency Tests"))
    {
        CreateTest(new TranslucencyTest, param);
        CreateTest(new SmoothMeshTranslucencyTest, param);
    }

    // visibility tests
    if (param.GetOptionIntVal("All Tests") || param.GetOptionIntVal("Visibility Tests"))
    {

        CreateTest(new ScenegraphVisibilityAnimTest, param);
        CreateTest(new VizAnimTest, param);
        CreateTest(new CompDrawableVisibilityAnimTest, param);
    }

    // optic tests
    if (param.GetOptionIntVal("All Tests") || param.GetOptionIntVal("Optic Tests"))
    {
/*
        CreateTest(new LensFlareTest, param);
        CreateTest(new LensFlareOcclusionTest, param);
*/
    }

    // light tests
    if (param.GetOptionIntVal("All Tests") || param.GetOptionIntVal("Light Tests"))
    {

        CreateTest(new AnimatedDirectionalLight, param);
        CreateTest(new AnimatedSpotLight, param);
        CreateTest(new AnimatedPointLight,param);
        CreateTest(new MultipleAnimatedLightsTest, param);
        CreateTest(new PhotonMapTest, param); // New

    }

    // texturing tests
    if (param.GetOptionIntVal("All Tests") || param.GetOptionIntVal("Texturing Tests"))
    {
        CreateTest(new AlphaTest, param);
        CreateTest(new TilingTest, param);
        CreateTest(new TexAnimTest, param);
        CreateTest(new MipMapPalettizedTextureTest, param);
        CreateTest(new TextureTest, param);
        CreateTest(new DxtTest, param);
        #ifndef RAD_PS2
         CreateTest(new TexturingTest, param);
        #endif
        CreateTest(new SpecularTest, param); // needs better art, too low poly for good look
        CreateTest(new PowerOf2Test, param); // far clipping plane cuts stuff of 

        CreateTest(new LargeTextureTest, param); // far clipping plane cuts stuff of    
        #ifndef RAD_PS2
        CreateTest(new ProjTextureTest, param);  // why was lighting turned off?
        #endif
        //CreateTest(new RenderToTextureTest, param);
    }

    // shader tests
    if (param.GetOptionIntVal("All Tests") || param.GetOptionIntVal("Shader Tests"))
    {
        CreateTest(new ShaderModificationTest, param);
        CreateTest(new LightMapTest, param);
        #ifndef RAD_PS2
        CreateTest(new ReflectedMapTest, param);
        #endif
        CreateTest( new RefractTest , param );
    }

    // scene tests
    if (param.GetOptionIntVal("All Tests") || param.GetOptionIntVal("Scene Tests"))
    {
        CreateTest(new LinearFogTest, param);
        CreateTest(new DebugDrawTest, param);
        CreateTest(new ScenegraphTest, param);
    }

    // particle tests
    if (param.GetOptionIntVal("All Tests") || param.GetOptionIntVal("Particle Tests"))
    {
        CreateTest(new RotationalCohesionParticleTest, param);
        CreateTest(new TranslationalCohesionParticleTest, param);
    }

    // character tests
    if (param.GetOptionIntVal("All Tests") || param.GetOptionIntVal("Character Tests"))
    {
        //CreateTest(new CompDrawTest, param);

        CreateTest(new PolySkinTest, param);
        CreateTest(new PoseEvaluationTest, param);
        CreateTest(new LoopingTest, param);
        CreateTest(new AnimationRetargetingTest, param); //just some shader problems

    }

    // nis tests
    if (param.GetOptionIntVal("All Tests") || param.GetOptionIntVal("NIS Tests"))
    {
        CreateTest(new NISTest, param);
    }

    // facial tests
    if (param.GetOptionIntVal("All Tests") || param.GetOptionIntVal("Facial Tests"))
    {
        CreateTest(new FacialAnimationTest, param);
        CreateTest(new FacialBlendAnimTest, param);
        CreateTest(new FacialAnimTestSimple2, param); 
        CreateTest(new FacialAnimTestSimple, param); 
    }

    // sequencer tests
    if (param.GetOptionIntVal("All Tests") || param.GetOptionIntVal("Sequencer Tests"))
    {
        CreateTest(new SequencerBlendingTest, param); 
        CreateTest(new EventAnimationTest, param);
    }

    
    // vertex animation tests
    if (param.GetOptionIntVal("All Tests") || param.GetOptionIntVal("Vertex Animation"))
    {
        CreateTest(new VertexAnimPosTest, param);         
        CreateTest(new VertexAnimColourTest, param);   
        CreateTest(new VertexAnimUVTest, param );
        CreateTest(new VertexAnimComboTest, param );
    }
    

    // misc tests
    if (param.GetOptionIntVal("All Tests") || param.GetOptionIntVal("Miscellaneous Tests"))
    {
        CreateTest(new InventoryTest, param); // text goes offscreen, not clear what is going on
        CreateTest(new Inventory_Test, param); // not at all clear wat is hapening
        CreateTest(new AnimatedCameraTest, param);
        CreateTest(new MultipleViewportTest, param);
        //CreateTest(new FileCompressionTest, param);
        CreateTest(new ShadowTest, param); 
    }

    // ps2 tests
    if (param.GetOptionIntVal("All Tests") || param.GetOptionIntVal("PS2 Tests"))
    {
        #ifdef RAD_PS2
        CreateTest(new PS2MemoryImageTest, param);
        CreateTest(new PS2CompressedMemoryImageTest, param);
//        CreateTest(new PS2TestDestAlpha, param);
//        CreateTest(new PS2MotionBlurTest, param);
        #endif
    }
    
// Need minor updates :
//    CreateTest(new PoseAnimationTest, param); //claims it tests mirroring, but doesn't seem to 
//    CreateTest(new InventoryTest, param); // text goes offscreen, not clear what is going on
//    CreateTest(new AnimatedAmbientLightTest, param); // ambient overflowing into other tests
#ifndef RAD_PS2
//    CreateTest(new AllGeometryTest, param); // should be split into three tests rather than timed cycling
#endif

// Totally broken ( either won't load or won't run )
/*
    CreateTest(new ToonShaderTest, param); // won't load on xbox  
    CreateTest(new BumpMapTest, param); // won't run (xbox)
*/

// old particle tests
/*
    CreateTest(new MovingCollisionPlaneTest, param);
    CreateTest(new AnimatedParticleTextureTest, param);
    CreateTest(new ParticleInstancingTest, param);
    CreateTest(new ParticlesInstanceAndCloneTest, param);
    CreateTest(new ParticlesCollisionAndForceTest, param);
    CreateTest(new ParticleBlendingTest, param);
    CreateTest(new FountainTest,param);
*/


// New coveage tests needed
/*
    // Memory Allocation
    // Async Loading
    // CSRP shader 
    // XBox memory imaging
    // Scenegraph positioning
*/
    // assumes you want to run at least one test
    test[currentTest]->Setup();
    test[currentTest]->Loaded(true);
}

//-------------------------------------------------------------------
bool TestHarness::CreateTest(CoverageTest* newtest, ConfigParam& param)
{
    // setup the test if on, delete it otherwise
    if( param.GetOptionIntVal( newtest->GetName() ) == 1 )
    {
#ifdef _XBOX
        newtest->SetArtPath("art");
#else
        newtest->SetArtPath(param.GetOptionStrVal("ArtPath"));
#endif
        printf("Setting up %s\n", newtest->GetName());
        //newtest->Setup();
        test[nTest] = newtest;
        nTest++;
        
        return true;
    }
    else
    {
        delete newtest;
        return false;
    }
}

//-------------------------------------------------------------------
void TestHarness::NextTest()
{
    test[currentTest]->UnloadSection();
    test[currentTest]->Shutdown();    
    currentTest = (currentTest >= nTest-1) ? 0 : currentTest+1;
    if (!test[currentTest]->IsLoaded())
    {
        test[currentTest]->Setup();
        test[currentTest]->Loaded(true);
    }
}

//-------------------------------------------------------------------
void TestHarness::PrevTest()
{
    test[currentTest]->UnloadSection();
    test[currentTest]->Shutdown();    
    currentTest = (currentTest > 0) ? currentTest-1 : nTest - 1;
    if (!test[currentTest]->IsLoaded())
    {
        test[currentTest]->Setup();
        test[currentTest]->Loaded(true);
    }
}

//-------------------------------------------------------------------
void TestHarness::BeginRender( const CoverAppRendering& appRender )
{
    if(renderingEnabled)
    {
        if(test[currentTest])
        {
            test[currentTest]->BeginRender(appRender);
        }
    }
}

//-------------------------------------------------------------------
void TestHarness::Display( float deltaTime )
{
    if(renderingEnabled)
    {
        if(test[currentTest])
        {
            if(labelsEnabled)
            {
                char buf[255];
                sprintf(buf, "%s  (test %d of %d)", test[currentTest]->GetName(), currentTest+1, nTest);
                p3d::pddi->DrawString(buf, 25, 30, tColour(200,200,200));
            }

            if (!test[currentTest]->IsLoaded())
            {
                test[currentTest]->Setup();
                test[currentTest]->Loaded(true);
            }
            test[currentTest]->Update( deltaTime );
            test[currentTest]->Display();
        }
    }
}
//-------------------------------------------------------------------
void TestHarness::ShiftMenuDown()
{
    if ((menuOption > (maxMenuOptions - 1)) && ((listTop + (maxMenuOptions + 1)) < nTest))
    {
        listTop++;
    }

    if ((menuOption + 1) < nTest)
    {
        menuOption++;
    }
}
//-------------------------------------------------------------------
void TestHarness::ShiftMenuUp()
{
    if ((listTop == menuOption) && (menuOption != 0))
    {
        listTop--;
    }

    if (menuOption > 0)
    {
        menuOption--;
    }
}
//-------------------------------------------------------------------
void TestHarness::DisplayMenu()
{
    for (int i = 0; i < (maxMenuOptions + 1); i++)
    {
        if ((listTop + i) < nTest)
        {
            if (menuOption == (listTop + i))
            {
                p3d::pddi->DrawString(test[listTop + i]->GetName(), xPos, yPos, selected);
            }
            else
            {
                p3d::pddi->DrawString(test[listTop + i]->GetName(), xPos, yPos, deselected);
            }
            yPos += 20;
        }
    }
    yPos = 30;

}
//-------------------------------------------------------------------
void TestHarness::SelectMenuOption()
{
    test[currentTest]->UnloadSection();
    test[currentTest]->Shutdown();
    currentTest = menuOption;
    if (!test[currentTest]->IsLoaded())
    {
        test[currentTest]->Setup();
        test[currentTest]->Loaded(true);
    }
}
//-------------------------------------------------------------------
void TestHarness::EndRender( const CoverAppRendering& appRender )
{
    if(renderingEnabled)
    {
        if(test[currentTest])
        {
            test[currentTest]->EndRender(appRender);
        }
    }
}

//-------------------------------------------------------------------
void TestHarness::SetDefaultCameraLoc(float x, float y, float z)
{
    CoverageTest::SetDefCameraPos( RadicalMathLibrary::Vector(x, y, z) );
}

//-------------------------------------------------------------------
RadicalMathLibrary::Vector TestHarness::GetDefaultCameraLoc()
{
    return test[currentTest]->GetCameraPos();
}

