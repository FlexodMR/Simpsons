//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef PS2TEST_HPP
#define PS2TEST_HPP

#include "coverage.hpp"

class PS2MemoryImageTest : public GeometryTest
{
public:
    PS2MemoryImageTest();
    virtual const char* GetName() { return "PS2 Memory Image"; }
};

class PS2CompressedMemoryImageTest : public GeometryTest
{
public:
    PS2CompressedMemoryImageTest();
    virtual const char* GetName() { return "PS2 Compressed Memory Image"; }
};

//----------------------------
// ps2 alpha capability test
//----------------------------
/* not working yet
class PS2TestDestAlpha : public CoverageTest
{
public:
    PS2TestDestAlpha();
    virtual ~PS2TestDestAlpha();

    virtual const char* GetName() { return "PS2 Destination Alpha"; }

    virtual void Setup();
    virtual void Display();
    
protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
         \n\
         \n";
    }

private:
    static pddiShader* shader;
    static pddiShader* fillShader;
    static pddiPrimBuffer* buffer;
    static pddiExtPS2Control* ps2Control;
};
*/

//-----------------------
// ps2 motion blur test
//-----------------------
/* Not working now
class PS2MotionBlurTest : public CoverageTest
{
public:
    PS2MotionBlurTest();
    virtual ~PS2MotionBlurTest();

    virtual const char* GetName() { return "PS2 Motion Blur"; }
    virtual Vector GetCameraPos() { return Vector( -3.0f, 0.5f, 0.5f ); }

    virtual void Setup();
    virtual void Display();
    virtual void Update(float deltaTime);

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
         Applying motion blur to the\n\
         pose evaluation test\n";
    }

private:
    
    tCompositeDrawable* body;
    tPoseAnimationController* controller;
    tPose* bodyPose;
    tDrawable* weapon;
    tSkeleton* skeleton;

    pddiExtPS2Control* ps2Control;
};
*/

#endif
