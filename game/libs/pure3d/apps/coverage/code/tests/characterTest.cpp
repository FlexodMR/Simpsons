//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <p3d/anim/animate.hpp>
#include <p3d/anim/polyskin.hpp>
#include <p3d/anim/poseanimation.hpp>

#include "characterTest.hpp"

using namespace RadicalMathLibrary;

//-------------------------------------------------------------------
// Composite Drawable Test
CompDrawTest::CompDrawTest()
:
model(NULL),
controller(NULL)
{
}

void CompDrawTest::Setup()
{
    SetupSection();
    
    // HACK HACK HACK HACK.  Fails if set to true.  Why?
    p3d::inventory->SetCurrentSectionOnly(false);
    
    // Load the art from file into the inventory
    Load("14CompositeDrawable.p3d");

    //
    // Now Go and fetch the items you care about out of the inventory
    //
    model = p3d::find<tCompositeDrawable>("Motion_Root");
    if(model) model->AddRef();

    controller = p3d::find<tMultiController>("MasterController");
    if(controller) controller->AddRef();
}

void CompDrawTest::Shutdown()
{
    if(controller)
    {
        controller->Release();
    }

    if(model)
    {
        model->Release();
    }
}

void CompDrawTest::Update(float deltaTime)
{
    if(controller)
    {
        controller->Advance(deltaTime);      
    }
}

void CompDrawTest::Display()
{
    if(model) model->Display();
}

//-------------------------------------------------------------------
// poly skin test
//-------------------------------------------------------------------
PolySkinTest::PolySkinTest()
{
    bodyController = NULL;
    hairController = NULL;
    headController = NULL;
    body = NULL;
    head = NULL;
    hair = NULL;
}

void PolySkinTest::Setup()
{
    SetupSection();

    // This polyskin is broken up into three smaller polyskins
    // We need a controller for each
    Load("PoseEvaluationTest/max.p3d");
    body = p3d::find<tPolySkin>("mx_bodygeo_xShape");
    if(body)
    {
        body->AddRef();
        bodyController = new tPoseAnimationController();
        bodyController->AddRef();
        bodyController->SetPose(body->GetPose());
    }

    head = p3d::find<tPolySkin>("mx_head_geoShape");
    if (head) 
    {
        head->AddRef();
        headController = new tPoseAnimationController();
        headController->AddRef();
        headController->SetPose(head->GetPose());
    }

    hair = p3d::find<tPolySkin>("mx_hairgeo_xShape");
    if (hair) 
    {
        hair->AddRef();
        hairController = new tPoseAnimationController();
        hairController->AddRef();
        hairController->SetPose(hair->GetPose());
    }
    
    tAnimation* anim = p3d::find<tAnimation>("World_Root");
    if(anim)
        {
            //anim->SetCyclic(true);
            bodyController->SetAnimation(anim);
            hairController->SetAnimation(anim);
            headController->SetAnimation(anim);
        }
}

void PolySkinTest::Shutdown()
{
    if(headController) headController->Release();
    if(bodyController) bodyController->Release();
    if(hairController) hairController->Release();
    if (body) body->Release();
    if (head) head->Release();
    if (hair) hair->Release();
}

void PolySkinTest::Update(float deltaTime)
{
    if(bodyController) bodyController->Advance(deltaTime);
    if(hairController) hairController->Advance(deltaTime);
    if(headController) headController->Advance(deltaTime);
    
}

void PolySkinTest::Display()
{
    if (body) body->Display();
    if (head) head->Display();
    if (hair) hair->Display();
}

//----------------------
// pose evaluation test
//----------------------
PoseEvaluationTest::PoseEvaluationTest() : body(NULL), controller(NULL), bodyPose(NULL), weapon(NULL), skeleton(NULL)
{
    
}

void PoseEvaluationTest::Shutdown()
{
    if (body) body->Release();
    if (bodyPose) bodyPose->Release();
    if (controller) controller->Release();
    if (weapon) weapon->Release();
    if (skeleton) skeleton->Release();
}

void PoseEvaluationTest::Setup()
{
    SetupSection();

    Load("PoseEvaluationTest/max.p3d");

    body = p3d::find<tCompositeDrawable>("World_Root");
    if (body) 
    {
        body->AddRef();
        bodyPose = body->GetPose();
        bodyPose->AddRef();

        controller = new tPoseAnimationController();
        controller->AddRef();
        controller->SetPose(bodyPose);
    }

    tAnimation* anim = p3d::find<tAnimation>("World_Root");
    if(anim)
    {
        //anim->SetCyclic(true);
        controller->SetAnimation(anim);
    }

    Load("PoseEvaluationTest/weapon.p3d");
    weapon = p3d::find<tDrawable>("maxWeaponShape");
    if (weapon) weapon->AddRef();

    skeleton = p3d::find<tSkeleton>("World_Root");
    if (skeleton) skeleton->AddRef();
}

void PoseEvaluationTest::Display()
{
    if (body) body->Display();

    // create new identity matrix
    Matrix rootMatrix;
    rootMatrix.Identity();

    Matrix jointMatrix;
    jointMatrix.Identity();

    tSkeleton::Joint* wrist = skeleton->FindJoint("R_mid_bot_jnt");

    //find position and rotation of joint
    bodyPose->EvaluateJointMatrix(wrist->uid, &rootMatrix, &jointMatrix);

    p3d::stack->Push();
    p3d::stack->Multiply(jointMatrix);
    weapon->Display();
    p3d::stack->Pop();

}

void PoseEvaluationTest::Update(float deltaTime)
{
    if (controller) controller->Advance(deltaTime);
}

//---------------
// looping test
//---------------
LoopingTest::LoopingTest() : mrBrain(NULL), controller(NULL)
{
    time = 0;
    state = 0;
}

void LoopingTest::Shutdown()
{
    if (mrBrain) mrBrain->Release();
    if (controller) controller->Release();
}

void LoopingTest::Setup()
{
    SetupSection();

    Load("CharacterAnimationTests/build/mrBrainWalkCycle.p3d");
    mrBrain = p3d::find<tCompositeDrawable>("pelvis");
    if (mrBrain) mrBrain->AddRef();

    controller = p3d::find<tMultiController>("MasterController");
    if (controller) controller->AddRef();
    controller->SetCycleMode(FORCE_CYCLIC);
}

void LoopingTest::Display()
{
    p3d::stack->Push();
    p3d::stack->Translate(50.f, 0.0f, 50.0f);

    // there are four states, Mr Brain walking north, east, south, and west
    switch (state)
    {
        case 0:

            if ((time/10) == 100.0f)
            {
                time = 0;
                state = 1;
            }
            p3d::stack->Translate(0.0f, 0.0f, -(time/10));
            if (mrBrain) mrBrain->Display();
            time++;
            break;

        case 1:

            if ((time/10) == -100.0f)
            {
                time = 1000;
                state = 2;
            }
            p3d::stack->Translate((time/10), 0.0f, -100.0f);
            p3d::stack->Push();
            p3d::stack->RotateY(DegToRadian(90));
            if (mrBrain) mrBrain->Display();
            p3d::stack->Pop();
            time--;
            break;

        case 2:

            if ((time/10) == 0.0f)
            {
                time = 1000;
                state = 3;
            }
            p3d::stack->Translate(-100.0f, 0.0f, -(time/10));
            p3d::stack->Push();
            p3d::stack->RotateY(DegToRadian(180));
            if (mrBrain) mrBrain->Display();
            p3d::stack->Pop();
            time--;
            break;

        case 3:
            
            if ((time/10) == 0.0f)
            {
                time = 0;
                state = 0;
            }
            p3d::stack->Translate(-(time/10), 0.0f, 0.0f);
            p3d::stack->Push();
            p3d::stack->RotateY(DegToRadian(270));
            if (mrBrain) mrBrain->Display();
            p3d::stack->Pop();
            time--;
            break;
    }


    p3d::stack->Pop();
}

void LoopingTest::Update(float deltaTime)
{
    if (controller) controller->Advance(deltaTime);
}

// ------------------------------------------------
// Animation Retargeting Test
// ------------------------------------------------
AnimationRetargetingTest::AnimationRetargetingTest()
{
    brain = NULL;
    brainEye = NULL;
    controller = NULL;
    controllerEye = NULL;
    pose = NULL;
    poseEye = NULL;
    
    totalTime = 0.0f;
    animCount =0;
    dispText = "";
}

void AnimationRetargetingTest::Shutdown()
{
    if (brain) brain->Release();
    if (brainEye) brainEye->Release();
    if (controller) controller->Release();
    if (controllerEye) controllerEye->Release();
    if (pose) pose->Release();
    if (poseEye) poseEye->Release();
}

void AnimationRetargetingTest::Setup()
{
    // In this test, there are two very similar characters: One with eyes, and one without.
    // All variables ending with 'Eye' refer to the character with the eyes.
    SetupSection();

    Load("CharacterAnimationTests/build/MrBrainNoEyes.p3d");

    brain = p3d::find<tCompositeDrawable>("pelvis");
    brain->AddRef();
    controller = p3d::find<tPoseAnimationController>("pelvis");
    controller->AddRef();
    
    Load("CharacterAnimationTests/build/MrBrainWithEyes.p3d");
    
    brainEye = p3d::find<tCompositeDrawable>("pelvisEye");
    brainEye->AddRef();
    controllerEye = p3d::find<tPoseAnimationController>("pelvisEye");
    controllerEye->AddRef();
    
    
    pose = brain->GetPose();
    pose->AddRef();
    poseEye = brainEye->GetPose();
    poseEye->AddRef();
  
    //controller->GetAnimation()->SetCyclic(true);
    controller->SetCycleMode(FORCE_CYCLIC);

    //controllerEye->GetAnimation()->SetCyclic(true);
    controllerEye->SetCycleMode(FORCE_CYCLIC);

}

void AnimationRetargetingTest::Display()
{
    const float timeToShow = 6000.0f;     //Time in milliseconds
    
    // Code to control when animation is retargeted
    if (animCount == 0)
        {  
            controller->SetPose(pose);
            controllerEye->SetPose(poseEye);
            
            dispText = "No animation retargeting";
        }
        else if (animCount == 1)
        {
            controller->SetPose(poseEye);
            controllerEye->SetPose(pose);
            
            dispText = "Applying animation retargeting from 'no eyes' to 'eyes' \nand from 'eyes' to 'no eyes'";
        }
        
    if (totalTime >= timeToShow)
    {
        animCount++;
        if (animCount > 1) animCount = 0;
        totalTime = 0.0f;
    }
    p3d::stack->Push();
    p3d::stack->Translate(-10.0f, 0.0f, 0.0f);

    brain->Display();
    
    p3d::stack->Translate(20.0f, 0.0f, 0.0f);
    
    brainEye->Display();
    p3d::stack->Pop();

    // Write whether animation is being retargeted
    char buf[255];
    sprintf(buf, "%s\nfor %i more seconds", dispText, (int)((timeToShow - totalTime + 1000)/1000));
    p3d::pddi->DrawString(buf, 50, 50, tColour(255,255,255));
}

void AnimationRetargetingTest::Update(float deltaTime)
{
    totalTime += deltaTime;

    if (controller) controller->Advance(deltaTime);
    if (controllerEye) controllerEye->Advance(deltaTime);
}
