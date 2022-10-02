//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef BILLBOARDTEST_HPP
#define BILLBOARDTEST_HPP

#include "coverage.hpp"

//-----------------------------------------------------------
// Expected Result:
//   Draws a billboarded quad

class BillboardQuadTest : public CoverageTest
{
public:
    BillboardQuadTest() : billboard(NULL) {}

    virtual const char* GetName() { return "Billboard Quad";}
    virtual rmt::Vector GetCameraPos() { return rmt::Vector(0.0f, 0.0f, 2.0f); }
    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
        Draws a billboarded quad. \n";
    }

private:
    tBillboardQuadGroup* billboard;
};

//------------------------------------------------------------
// animated billboard quad test
//------------------------------------------------------------
class AnimatedBillboardQuadGroupTest : public CoverageTest
{
public:
    AnimatedBillboardQuadGroupTest();

    virtual const char* GetName() { return "Animated Billboard Quads";}
    virtual rmt::Vector GetCameraPos() { return rmt::Vector(0.0f, 0.0f, 2.0f); }
    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();
    virtual void Update(float deltaTime);

private:
    tBillboardQuadGroup* billboard;
    tMultiController* billboardController;
};

#endif