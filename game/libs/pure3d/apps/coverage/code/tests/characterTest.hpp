//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef CHARACTERTEST_HPP
#define CHARACTERTEST_HPP

#include "coverage.hpp"

//-------------------------------------------------------------------
// Expected result:
//   Draws and animates stuff
// API coverage:
//   Composite drawables, visibility animation

class CompDrawTest : public CoverageTest
{
public:
    CompDrawTest();
    virtual const char* GetName() { return "Composite Drawable"; }
    rmt::Vector GetCameraPos() { return rmt::Vector(0.0f, 0.0f, -5.0f); }

    virtual void Setup();
    virtual void Shutdown();
    virtual void Update(float deltaTime);
    virtual void Display();

private:

    tCompositeDrawable* model;

    tMultiController* controller;   
    
};

//-------------------------------------------------------------------
// Expected result:
//   Draws and animates a polyskin character
// API coverage:
//   tPolySkin, tPoseAnimation
class tPoseAnimationController;

class PolySkinTest : public CoverageTest
{
public:
    PolySkinTest();
    virtual const char* GetName() { return "Animated PolySkin"; }
    rmt::Vector GetCameraPos() { return rmt::Vector(-3.0f, 0.2f, 0.5f); }
    virtual void Setup();
    virtual void Shutdown();
    virtual void Update(float deltaTime);
    virtual void Display();

protected:
    tPoseAnimationController* bodyController;
    tPoseAnimationController* headController;
    tPoseAnimationController* hairController;

    tPolySkin* body;
    tPolySkin* head;
    tPolySkin* hair;
};

//-----------------------
// pose evaluation test
//-----------------------
class PoseEvaluationTest : public CoverageTest
{
public:
    PoseEvaluationTest();

    virtual const char* GetName() { return "Pose Evaluation"; }
    virtual rmt::Vector GetCameraPos() { return rmt::Vector( -3.0f, 0.5f, 0.5f ); }

    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();
    virtual void Update(float deltaTime);

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
         Displays the DA Max character with\n\
         object appended to her hand\n";
    }

private:
    
    tCompositeDrawable* body;
    tPoseAnimationController* controller;
    tPose* bodyPose;
    tDrawable* weapon;
    tSkeleton* skeleton;
};

//----------------------
// looping test
//----------------------
class LoopingTest : public CoverageTest
{
public:
    LoopingTest();

    virtual const char* GetName() { return "Looping";}

    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();
    virtual void Update(float deltaTime);

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
         Mr Brain walks in a square path\n\
         \n";
    }

private:
    tCompositeDrawable* mrBrain;
    tMultiController* controller;

    int state;
    float time;
};

class AnimationRetargetingTest : public CoverageTest
{
public:
    AnimationRetargetingTest();

    virtual const char* GetName() { return "Animation Retargeting";}
    rmt::Vector GetCameraPos() { return rmt::Vector(-0.5f, 5.0f, -30.0f);}
    
    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();
    virtual void Update(float deltaTime);
    
protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
        Draws two Mr Brain characters.\n";
    }

private:
    tCompositeDrawable* brainEye;
    tCompositeDrawable* brain;
    tPoseAnimationController* controllerEye;
    tPoseAnimationController* controller;
    
    tPose* pose;
    tPose* poseEye;
    
    float totalTime;
    int animCount;
    char* dispText;

};

#endif
