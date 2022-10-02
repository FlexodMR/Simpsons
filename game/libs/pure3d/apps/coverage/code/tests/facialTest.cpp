//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "facialTest.hpp"

//------------------------
// Facial animation tests
//------------------------
// ------------------------------------------------------------------
// A simple facial animation test... 
// basically driven by the SceneGraph 
// ------------------------------------------------------------------
FacialAnimTestSimple::FacialAnimTestSimple()
{
    SetFileName("FacialAnimation/build/sergSimpleShapes.p3d");
    SetControllerName("MasterController");
    SetSceneName("Scene");
    SetCameraName("perspShape");
    isCyclic = true;
}

FacialAnimTestSimple2::FacialAnimTestSimple2()
{
    SetFileName("FacialAnimation/build/sergAnimation.p3d");
    SetControllerName("MasterController");
    SetSceneName("Scene");
    SetCameraName("perspShape");
    isCyclic = true;
}



FacialAnimationTest::FacialAnimationTest() 
: 
maxHead(NULL), 
maxSkeleton(NULL), 
maxHeadController(NULL), 
maxSkeletonController(NULL),
m_normalPlay(true),
m_Frame(0.0f)
{
    SetFileName("FacialAnimation/build/maxDialog.p3d");
    SetCameraName("perspShape");
    isCyclic = true;
}


void FacialAnimationTest::Setup()
{
 
    //
    // The ScenegraphTest::Setup(); handles loading and stuff
    //
    ScenegraphTest::Setup();

    maxHead = p3d::find<tCompositeDrawable>("Motion_Root");
    if (maxHead) 
    {   
        maxHead->AddRef();
    }

    maxSkeleton = p3d::find<tSkeleton>("Motion_Root");

    if (maxSkeleton)
    { 
        maxSkeleton->AddRef();
    }

    //controller for the animation of facial movement
    maxHeadController = p3d::find<tExpressionAnimationController>("EXP_maxDialog");
    if (maxHeadController) 
    {   
        maxHeadController->AddRef();
        //maxHeadController->GetAnimation()->SetCyclic(true);
    }

    //controller for head (skeletal) movement
    maxSkeletonController = p3d::find<tPoseAnimationController>("PTRN_Motion_Root");
    if (maxSkeletonController) 
    {
        maxSkeletonController->AddRef();
        //maxSkeletonController->GetAnimation()->SetCyclic(true);
    }
}

void FacialAnimationTest::Shutdown()
{
    ScenegraphTest::Shutdown();
    tRefCounted::Release(maxHead);
    tRefCounted::Release(maxSkeleton);
    tRefCounted::Release(maxHeadController);
    tRefCounted::Release(maxSkeletonController);
}

void FacialAnimationTest::Display()
{
    p3d::stack->Push();
    if (maxHead) 
    {
        maxHead->Display();
    }
    p3d::stack->Pop();
}

void FacialAnimationTest::Update(float deltaTime)
{
    if(m_normalPlay)
    {
        if (maxHeadController)
        {
            maxHeadController->Advance(deltaTime);
        }
        if (maxSkeletonController) 
        {
            maxSkeletonController->Advance(deltaTime);
        }
    }
    else
    {
        if (maxHeadController)
        {
            maxHeadController->SetFrame(m_Frame);
            maxHeadController->Advance(0.0f);
        }
        if (maxSkeletonController) 
        {
            maxSkeletonController->SetFrame(m_Frame);
            maxSkeletonController->Advance(0.0f);
        }
    }
}

//------------------------
// facial blend animation test
//------------------------
FacialBlendAnimTest::FacialBlendAnimTest() 
: 
maxHead(NULL), 
maxSkeleton(NULL),
maxHeadController(NULL),
maxSkeletonController(NULL),
oMouthAnim(NULL),
smileAnim(NULL),
startBlending(false)
{
    //
    // This is the base file
    //
    SetFileName("FacialAnimation/build/max_mouth_smile.p3d"); 
    SetCameraName("perspShape");
}

void FacialBlendAnimTest::Shutdown()
{
    ScenegraphTest::Shutdown();
    tRefCounted::Release(maxHead);
    tRefCounted::Release(maxSkeleton);
    tRefCounted::Release(maxHeadController);
    tRefCounted::Release(maxSkeletonController);
    tRefCounted::Release(oMouthAnim);
    tRefCounted::Release(smileAnim);
}

void FacialBlendAnimTest::Setup()
{
    SetupSection();

    ScenegraphTest::Setup();
    //
    // This is a supporting file
    //
    Load("FacialAnimation/build/max_mouth_U.p3d");

     maxHead = p3d::find<tCompositeDrawable>("Motion_Root");
    if (maxHead) maxHead->AddRef();

    maxSkeleton = p3d::find<tSkeleton>("Motion_Root");
    if (maxSkeleton) maxSkeleton->AddRef();

    //controller for the animation of facial movement
    maxHeadController = p3d::find<tExpressionAnimationController>("EXP_max_mouth_smile");
    if (maxHeadController) 
    {
        maxHeadController->AddRef();
        //maxHeadController->GetAnimation()->SetCyclic(false);
    }

    //controller for head (skeletal) movement
    maxSkeletonController = p3d::find<tPoseAnimationController>("PTRN_Motion_Root");
    if (maxSkeletonController)
    {
        maxSkeletonController->AddRef();
    }

    //
    // Bind and RefCount the animations
    //
    oMouthAnim = p3d::find<tAnimation>("EXP_max_mouth_U");
    if(oMouthAnim)
    {
        oMouthAnim->AddRef();
        //oMouthAnim->SetCyclic(false);
    }

    smileAnim = p3d::find<tAnimation>("EXP_max_mouth_smile");
    if(smileAnim)
    {
        smileAnim->AddRef();
        //smileAnim->SetCyclic(false);
    }
}

void FacialBlendAnimTest::Display()
{
    p3d::stack->Push();
    if (maxHead) 
    {
        maxHead->Display();
    }
    p3d::stack->Pop();
}

void FacialBlendAnimTest::Update(float deltaTime)
{
    if (maxHeadController) 
    {
        float frame = maxHeadController->GetFrame();

        tAnimation* currentAnimation = maxHeadController->GetAnimation();

        if(currentAnimation == oMouthAnim)
        {
            if(oMouthAnim && maxHeadController->LastFrameReached()) 
            {
                maxHeadController->SetAnimation(smileAnim, 0, 10);    
            }
        }
        else if(currentAnimation == smileAnim)
        {
            if(oMouthAnim && maxHeadController->LastFrameReached()) 
            {
                maxHeadController->SetAnimation(oMouthAnim, 0, 40 );    
            }
        }
        
        maxHeadController->Advance(deltaTime);    
    }

    if (maxSkeletonController)
    {
        maxSkeletonController->Advance(deltaTime);
    }
}
