//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include"quakecam.hpp"

tQuakeCam::tQuakeCam()
{
    invert = false;
    sensitivity = 15.0f;
    speed = 20.0f;
    move[0] =  move[1] =  move[2] = 0;
    Reset();
    Update();
    updated = false;
}

tQuakeCam::~tQuakeCam()
{
}

void tQuakeCam::Reset(void)
{
    cameraPos.x = 0.0f;
    cameraPos.y = 35.0f; 
    cameraPos.z = -100.0f;
    cameraDirection = 0;
    cameraLookUp = 0;
}

void tQuakeCam::Move(unsigned a, int d)
{
    if(a < 3)
        move[a] = (float)d;
}

void tQuakeCam::LookX(float deltaX)
{
    cameraDirection += deltaX * 0.0001f * sensitivity;
}

void tQuakeCam::LookY(float deltaY)
{
    if(invert)
        cameraLookUp -= deltaY * 0.0001f * sensitivity;
    else
        cameraLookUp += deltaY * 0.0001f * sensitivity;
}

void tQuakeCam::Tick(float ms)
{
    Update();

    rmt::Vector forwardVec = cameraToWorld.Row(2);
    rmt::Vector rightVec = cameraToWorld.Row(0);

    forwardVec.x *= move[2] * (ms / speed);
    forwardVec.y *= move[2] * (ms / speed);
    forwardVec.z *= move[2] * (ms / speed);

    rightVec.x *= move[0] * (ms / speed);
    rightVec.y *= move[0] * (ms / speed);
    rightVec.z *= move[0] * (ms / speed);

    cameraPos.x = cameraPos.x + rightVec.x + forwardVec.x;
    cameraPos.y = cameraPos.y + rightVec.y + forwardVec.y + (move[1]  * (ms / speed));
    cameraPos.z = cameraPos.z + rightVec.z + forwardVec.z;

    cameraToWorld.Row(3) = cameraPos;
    worldToCamera = cameraToWorld;
    worldToCamera.InvertOrtho();
}

void tQuakeCam::Update(void)
{
    cameraToWorld.Identity();
    cameraToWorld.FillRotateY(cameraDirection);

    if(cameraLookUp > (3.1415f/2.0f))
    {
        cameraLookUp = (3.1415f/2.0f);
    }

    if(cameraLookUp < -(3.1415f/2.0f))
    {
        cameraLookUp = -(3.1415f/2.0f);
    }

    rmt::Matrix tmp, tmp2;
    tmp.Identity();
    tmp.FillRotateX(cameraLookUp);
    tmp2 = cameraToWorld;
    cameraToWorld.Mult(tmp,tmp2);

    updated = true;
}

