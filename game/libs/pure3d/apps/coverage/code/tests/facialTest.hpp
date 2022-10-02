//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef FACIALTEST_HPP
#define FACIALTEST_HPP

#include "coverage.hpp"

//-----------------------
// facial animation test
//-----------------------
class FacialAnimTestSimple : public ScenegraphTest
{
public:
    FacialAnimTestSimple ();
    virtual const char* GetName() { return "Simple Facial Animation"; }
    virtual rmt::Vector GetCameraPos() { return rmt::Vector( 0.0790291f, 1.76626f, -1.19724f ); }
};

class FacialAnimTestSimple2 : public ScenegraphTest
{
public:
    FacialAnimTestSimple2 ();
    virtual const char* GetName() { return "Simple Facial Animation2"; }
    virtual rmt::Vector GetCameraPos() { return rmt::Vector( 0.0790291f, 1.76626f, -1.19724f ); }
};

class FacialAnimationTest : public ScenegraphTest
{
public:
    FacialAnimationTest();
 
    virtual const char* GetName() { return "Facial Animation"; }
    virtual rmt::Vector GetCameraPos() { return rmt::Vector(0.442453f, 0.155941f, -1.10838f);}

    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();
    virtual void Update(float deltaTime);

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
         Displays the Dark Angel Max rig saying:\n\
         \"Men, they just don't have the mental or emotional \n\
             capacity to make a real connection...\n\
             I'm swearing off the whole gender.\"\n";
    }

private:

    tCompositeDrawable* maxHead;
    tSkeleton* maxSkeleton;
    tExpressionAnimationController* maxHeadController;
    tPoseAnimationController* maxSkeletonController;

    //
    // Simple Play Controls
    //
    bool  m_normalPlay;
    float m_Frame;
};


//-------------------------------
// facial animation blending test
//-------------------------------

class FacialBlendAnimTest : public ScenegraphTest
{
public:
    FacialBlendAnimTest();

    virtual const char* GetName() { return "Facial Animation with Blending"; }
    virtual rmt::Vector GetCameraPos() { return rmt::Vector(0.0f, 0.0f, -1.25f);}

    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();
    virtual void Update(float deltaTime);

protected:
    virtual char* GetHelpText()
    { return " Expected Result: Head deforms from bad to normal position:\n";
    }

private:
    tCompositeDrawable* maxHead;
    tSkeleton* maxSkeleton;
    tExpressionAnimationController* maxHeadController;
    tPoseAnimationController* maxSkeletonController;
    tAnimation* oMouthAnim;
    tAnimation* smileAnim;
    bool startBlending;
};

#endif
