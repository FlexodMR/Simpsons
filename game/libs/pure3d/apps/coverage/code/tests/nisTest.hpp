//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef NISTEST_HPP
#define NISTEST_HPP

#include "coverage.hpp"

//--------------------------------------
// NIS test
//--------------------------------------
class NISTest : public CoverageTest
{
public:
    NISTest();

    virtual const char* GetName() { return "NIS"; }
    virtual rmt::Vector GetCameraPos() { return rmt::Vector( 15.0f, 10.0f, -10.0f ); }

    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();
    virtual void Update(float deltaTime);
    virtual void CleanUp();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
         Displays a Simpsons NIS\n\
         \n";
    }

private:

    tDirectionalLight* directionalLight;
    tView* view;
    tDrawable* scene;
    tVectorCamera* camera;
    tMultiController* multiController;
    tCameraAnimationController* camController;
};
#endif