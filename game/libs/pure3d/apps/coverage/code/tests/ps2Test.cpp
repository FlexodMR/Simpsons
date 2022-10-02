//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <assert.h>

#include "ps2Test.hpp"

PS2MemoryImageTest::PS2MemoryImageTest()
{
    strcpy(geoFile, "ps2memimage.p3d");
    strcpy(geoName, "pTorusShape1");
}

PS2CompressedMemoryImageTest::PS2CompressedMemoryImageTest()
{
    strcpy(geoFile, "ps2compmemimage.p3d");
    strcpy(geoName, "pTorusShape1");
}

//---------------------------
// ps2 alpha capability test
//---------------------------
/* //not working right now

#define SAFE_CALL(x,y) if ( x ) { x->y ; };

pddiShader* PS2TestDestAlpha::shader = 0;
pddiShader* PS2TestDestAlpha::fillShader = 0;
pddiPrimBuffer* PS2TestDestAlpha::buffer = 0;
pddiExtPS2Control* PS2TestDestAlpha::ps2Control = 0;


PS2TestDestAlpha::PS2TestDestAlpha() //: shader(NULL), fillShader(NULL), buffer(NULL), ps2Control(NULL)
{

}

PS2TestDestAlpha::~PS2TestDestAlpha()
{
    if (shader) shader->Release();
}

void PS2TestDestAlpha::Setup()
{
    SetupSection();

    shader = 0;
    fillShader = 0;
    buffer = 0;
    ps2Control = 0;

    if(!shader)
    {
        shader = p3d::device->NewShader(p3d::pddi, "simple");
        shader->AddRef();
        ps2Control = (pddiExtPS2Control*)p3d::pddi->GetExtension(PDDI_EXT_PS2_CONTROL);
    }

}

void PS2TestDestAlpha::Display()
{
    
    // clear alpha buffer
    //ps2Control->SetDestAlphaTest(PS2_DESTALPHA_NONE);
    SAFE_CALL(ps2Control , SetDestAlphaTest(PS2_DESTALPHA_NONE) );

    p3d::pddi->EnableZBuffer(false);
    p3d::pddi->SetColourWrite(false, false, false, true); // disable writes to colour buffer
//   FillRect(shader, 0.0f, 0.0f, p3d::display->GetWidth(), p3d::display->GetHeight(), tColour(0,0,0,0));
    p3d::pddi->EnableZBuffer(true);

    // draw mask into alpha buffer
    p3d::stack->Push();
    p3d::stack->LoadIdentity();
    p3d::stack->Translate(0.0f, 0.0f, 20.0f);

    pddiPrimStream* stream = p3d::pddi->BeginPrims(shader, PDDI_PRIM_TRIANGLES, PDDI_V_CT);
    stream->Colour(tColour(0,0,0,255));
    stream->Coord(-20.0f, -20.0f, 10.0f);
    stream->Colour(tColour(0,0,0, 255));
    stream->Coord(-20.0f, 20.0f, 10.0f);
    stream->Colour(tColour(0,0,0,255));
    stream->Coord(20.0f, -20.0f, 10.0f);
    p3d::pddi->EndPrims(stream);

    p3d::stack->Pop();

    p3d::pddi->SetColourWrite(true, true, true, false); // enable writes to colour buffer

    if ((ps2Control != 0) && (ps2Control != NULL))
    {
        ps2Control->SetDestAlphaTest(PS2_DESTALPHA_PASS_1); // render pixels where dest alpha = 1
    }
}
*/

//----------------------
// ps2 motion blur test
//----------------------
/* Not working now
PS2MotionBlurTest::PS2MotionBlurTest() : body(NULL), controller(NULL), bodyPose(NULL), weapon(NULL), skeleton(NULL), ps2Control(0)
{
    
}

PS2MotionBlurTest::~PS2MotionBlurTest()
{
    if (body) body->Release();
    if (bodyPose) bodyPose->Release();
    if (controller) controller->Release();
    if (weapon) weapon->Release();
    if (skeleton) skeleton->Release();
}

void PS2MotionBlurTest::Setup()
{
    SetupSection();

    Load("PoseEvaluationTest/max.p3d");

    body = p3d::find<tCompositeDrawable>("World_Root");
    if (body) body->AddRef();

    controller = p3d::find<tPoseAnimationController>("World_Root");
    if (controller) controller->AddRef();
    //controller->GetAnimation()->SetCyclic(true);

    bodyPose = body->GetPose();
    bodyPose->AddRef();

    Load("weapon.p3d");
    weapon = p3d::find<tDrawable>("maxWeaponShape");
    if (weapon) weapon->AddRef();

    skeleton = p3d::find<tSkeleton>("World_Root");
    if (skeleton) skeleton->AddRef();

    // motion blur
    ps2Control = (pddiExtPS2Control*)p3d::pddi->GetExtension(PDDI_EXT_PS2_CONTROL);
    assert( ps2Control != NULL );

        
}

void PS2MotionBlurTest::Display()
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

    ps2Control->EnableMotionBlur(true, 0.5, 5, 0.0);

    p3d::stack->Push();
    p3d::stack->Multiply(jointMatrix);
    weapon->Display();
    p3d::stack->Pop();

}

void PS2MotionBlurTest::Update(float deltaTime)
{
    if (controller) controller->Advance(deltaTime);
}
*/
