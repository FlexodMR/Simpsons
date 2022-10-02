//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef VISIBILITYTEST_HPP
#define VISIBILITYTEST_HPP

#include "coverage.hpp"

//-------------------------------------------------------------------
// Expected result:
//   Draws and animates texture
// API coverage:
//   tVizibilityAnimation
class VizAnimTest : public ScenegraphTest
{
public:
    VizAnimTest ();
    virtual const char* GetName() { return "Visibility Animation"; }
    virtual rmt::Vector GetCameraPos() { return rmt::Vector( 0.0f, 2.0f, -10.0f ); }
};

//-------------------------------------------------------------------
// Expected result:
//   Draws and animates texture
// API coverage:
//   tVizibilityAnimation
class ScenegraphVisibilityAnimTest : public ScenegraphTest
{
public:
    ScenegraphVisibilityAnimTest();
    virtual const char* GetName() { return "Visibility Animation Using Scenegraph"; }
    virtual rmt::Vector GetCameraPos() { return rmt::Vector( 0.0f, 4.0f, -20.0f ); }

protected:
    virtual char* GetHelpText()
    { return "\
    Expected result:\n\
        Draws a sun with an object orbiting it. For one quarter of the object's\n\
        revolution, the object's visibility is set to 'off'.\n\
        Note that the sun is transparent.\n\
        Done using a scenegraph\n";
    }

};

//-------------------------------------------------------------------
// Expected result:
//   Draws and animates texture
// API coverage:
//   tVizibilityAnimation
class CompDrawableVisibilityAnimTest : public CoverageTest
{
public:
    CompDrawableVisibilityAnimTest();

    virtual const char* GetName() { return "Visibility Animation Using Composite Drawable"; }
    virtual rmt::Vector GetCameraPos() { return rmt::Vector( 3.0f, 2.0f, -25.0f ); }

    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();
    virtual void Update(float deltaTime);

protected:
    virtual char* GetHelpText()
    { return "\
    Expected result:\n\
        Draws a moving, transparent red cube in front of a blue cube.\n\
        The blue cube visiblity is animated.  Done using the \n\
        tCompositeDrawable class.\n";
    }

private:
    tCompositeDrawable* scene;
    tMultiController* mcontroller;
    tFrameController* controller;
    tCompDrawVisibilityAnimationController* visAnimController;
    
};

#endif