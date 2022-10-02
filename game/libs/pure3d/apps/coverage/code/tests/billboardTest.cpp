//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "billboardTest.hpp"

// ------------------------------------------------------------------
// Draws a simple billboard quad with the new Pure3D Logo
// ------------------------------------------------------------------

void BillboardQuadTest::Setup()
{
    SetupSection();

    Load("Billboards/3Billboard.p3d");
    billboard = p3d::find<tBillboardQuadGroup>("notWorkingShape");
    if (billboard) billboard->AddRef();
}

void BillboardQuadTest::Shutdown()
{
    if(billboard) billboard->Release();
}

void BillboardQuadTest::Display()
{
    if (billboard) billboard->Display();
}

//-------------------------------------------------------------------
// Draws two billboard quads with animated textures
// one is constrained on every axis and the other on y-axis
//-------------------------------------------------------------------

AnimatedBillboardQuadGroupTest::AnimatedBillboardQuadGroupTest() :
    billboard(NULL),
    billboardController(NULL)
{
}

void AnimatedBillboardQuadGroupTest::Setup()
{
    SetupSection();

    Load("Billboards/3AnimTextBillboard.p3d");
    billboard = p3d::find<tBillboardQuadGroup>("billBoardGroupShape");
    if (billboard) billboard->AddRef();

    billboardController = p3d::find<tMultiController>("MasterController");
    if (billboardController) billboardController->AddRef();
    billboardController->SetCycleMode(FORCE_CYCLIC);
}

void AnimatedBillboardQuadGroupTest::Shutdown()
{
    if (billboard) billboard->Release();
    if (billboardController) billboardController->Release();
}

void AnimatedBillboardQuadGroupTest::Display()
{
    if (billboard) billboard->Display();
}

void AnimatedBillboardQuadGroupTest::Update(float deltaTime)
{
    if (billboardController) billboardController->Advance(deltaTime);
}