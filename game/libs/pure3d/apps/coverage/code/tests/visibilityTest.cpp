//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "visibilityTest.hpp"

//-------------------------------------------------------------------
VizAnimTest::VizAnimTest()
{
    SetFileName("VisibilityTests/ScenegraphVisibilityAnimation.p3d");
    SetControllerName("MasterController");
    SetSceneName("sceneTOP");
    isCyclic = true;
}

// ------------------------------------------------------------------
// Another visibility animation test, this time checking that semi-
// transparent surfaces work properly
// ------------------------------------------------------------------
ScenegraphVisibilityAnimTest::ScenegraphVisibilityAnimTest()
{
    SetFileName("VisibilityTests/VisiblilityAnimationRevolvingSun.p3d");
    SetControllerName("MasterController");
    SetSceneName("Scene");
    isCyclic = true;
}

// ------------------------------------------------------------------
// A third visAnim test, this time using a composite Drawable
// ------------------------------------------------------------------
CompDrawableVisibilityAnimTest::CompDrawableVisibilityAnimTest() : scene(NULL), mcontroller(NULL),controller(NULL), visAnimController(NULL)
{
}

void CompDrawableVisibilityAnimTest::Setup()
{
    SetupSection();

    Load("VisibilityTests/animCompDrawableVisibilityAnimation.p3d");
    
    scene = p3d::find<tCompositeDrawable>("base");

    if (scene) scene->AddRef();

    visAnimController = new tCompDrawVisibilityAnimationController();
    visAnimController->AddRef();
   
    // When doing a visAnimation, you must load a seperate frame controller
    // to control the visibility animation
    controller = p3d::find<tFrameController>("Scene");
//    visAnimController = p3d::find<tCompDrawVisibilityAnimationController>("Scene_VisAnim");

    mcontroller = p3d::find<tMultiController>("MasterController");
    if(mcontroller) mcontroller->AddRef();

    tAnimation* vanim = p3d::find<tAnimation>("Scene_VisAnim");
    if(vanim)
    {
        //vanim->SetCyclic(true);
        visAnimController->SetAnimation(vanim);
    }

    if (controller)
    {
        controller->AddRef();
    }
    if (visAnimController)
    {
        //visAnimController->AddRef();
        visAnimController->SetDrawable(scene);
    }
}

void CompDrawableVisibilityAnimTest::Shutdown()
{
    if (scene) scene->Release();
    if (controller) controller->Release();
    if (visAnimController) visAnimController->Release();
    if (mcontroller) mcontroller->Release();
}

void CompDrawableVisibilityAnimTest::Display()
{
    if(scene)
    {
        scene->Display();
    }
}
void CompDrawableVisibilityAnimTest::Update(float deltaTime)
{
    // Advance both of the frame controllers
    mcontroller->Advance(deltaTime);
    //controller->Advance(deltaTime);
    //visAnimController->Advance(deltaTime);
}
