//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "viewercamera.hpp"
#include <p3d/utility.hpp>
#include <radmath/radmath.hpp>
#include <config/settings.hpp>
#include <console/objectscripter.hpp>
#include <p3d/shader.hpp>
#include <p3d/anim/pose.hpp>

using namespace rmt;

ViewerCamera::ViewerCamera() : pushing(false), pushX(0.0f), pushY(0.0f), curPush(0), watchedPose(NULL), watchedJoint(0)
{
    shader = new tShader;
    shader->AddRef();

    
    for(int i = 0 ; i < VIEWER_CAMERA_PUSH_COUNT; i++)
        pushesX[i] = pushesY[i] = 0.0f;

    Reset();
};

ViewerCamera::~ViewerCamera() 
{
    shader->Release();
};


void ViewerCamera::Configure(Settings* s, Console::ObjectScripter* interp)
{
    settings = s;

    if(s->SectionExists("camera.default"))
    {
        target = settings->GetVector("camera.default.target");
        position = settings->GetVector("camera.default.position");
        vup = settings->GetVector("camera.default.up");
    }

    updated = false;

    interp->SetClosure("camMoveX", (ViewerCamera*)this, &ViewerCamera::MoveX);
    interp->SetClosure("camMoveY", (ViewerCamera*)this, &ViewerCamera::MoveY);
    interp->SetClosure("camPushX", (ViewerCamera*)this, &ViewerCamera::PushX);
    interp->SetClosure("camPushY", (ViewerCamera*)this, &ViewerCamera::PushY);
    interp->SetClosure("camLetGo", (ViewerCamera*)this, &ViewerCamera::LetGo);
    interp->SetClosure("camRotateX", (ViewerCamera*)this, &ViewerCamera::RotateX);
    interp->SetClosure("camRotateY", (ViewerCamera*)this, &ViewerCamera::RotateY);
    interp->SetClosure("camZoom", (ViewerCamera*)this, &ViewerCamera::Zoom);
    interp->SetClosure("camReset", (ViewerCamera*)this, &ViewerCamera::Reset);
    interp->SetClosure("camPosition", (ViewerCamera*)this, &ViewerCamera::SetPositionF);
    interp->SetClosure("camTarget", (ViewerCamera*)this, &ViewerCamera::SetTargetF);
    interp->SetClosure("camSave", (ViewerCamera*)this, &ViewerCamera::Save);

    interp->SetFloatRef("camSetMoveX", &moveX);
    interp->SetFloatRef("camSetMoveY", &moveY);
    interp->SetFloatRef("camSetRotateX", &rotateX);
    interp->SetFloatRef("camSetRotateY", &rotateY);
    interp->SetFloatRef("camSetZoom", &zoom);
    interp->SetFloatRef("camSpeed", &speed);

    rotateX = rotateY = moveX = moveY = zoom = 0.0f;
    speed = 1.0f;

    settings->Bind("camera.showTarget", &showTarget);
    settings->Bind("camera.showTargetHeight", &showTargetHeight);
    settings->Bind("camera.speed", &speed);
    

}

void ViewerCamera::Save(void)
{
    settings->Set("camera.default.target", target);
    settings->Set("camera.default.position", position);
    settings->Set("camera.default.up", vup);
}

void ViewerCamera::Tick(float ms)
{
    float setSpeed = 0.33f;

    RotateX(rotateX * ms * setSpeed);
    RotateY(rotateY * ms * setSpeed);
    MoveX(moveX * ms * setSpeed);
    MoveY(moveY * ms * setSpeed);
    Zoom(zoom * ms * setSpeed);

    pushesX[curPush] = pushX / ms;
    pushesY[curPush] = pushY / ms;
    curPush = (curPush + 1) % VIEWER_CAMERA_PUSH_COUNT;

    if(pushing)
    {
        RealRotateX(pushX * ms);
        RealRotateY(pushY * ms);
    }
    else
    {
        pushX = 0.0f;
        pushY = 0.0f;
    }

}

void ViewerCamera::PushX(float f)
{
    if(pushing)
    {
        pushing = false;
        pushX = 0.0f;
        pushY = 0.0f;
    }

    pushX += f;
    RotateX(f);
}

void ViewerCamera::PushY(float f)
{
    if(pushing)
    {
        pushing = false;
        pushX = 0.0f;
        pushY = 0.0f;
    }

    pushY += f;
    RotateY(f);
}

void ViewerCamera::LetGo(void)
{
    pushing = true;

    pushX = 0.0f;
    pushY = 0.0f;

    for(int i = 0 ; i < VIEWER_CAMERA_PUSH_COUNT; i++)
    {
        pushX += pushesX[i];
        pushY += pushesY[i];
    }

    pushX /= VIEWER_CAMERA_PUSH_COUNT;
    pushY /= VIEWER_CAMERA_PUSH_COUNT;
}


void ViewerCamera::RealRotateX(float f) 
{
    f *= speed;

    Matrix m;
    m.Identity();
    m.FillRotateY(f / 100);
    Vector v = position;
    v.Sub(target);

    v.Transform(m);
    vup.Transform(m);

    position = v;
    position.Add(target);
    updated = false;
}

void ViewerCamera::RealRotateY(float f) 
{
    f *= speed;

    Matrix m;
    m.Identity();
    m.FillRotateX(f / 100);
    Vector v = position;
    v.Sub(target);

    Matrix w2c = worldToCamera;
    Matrix c2w = cameraToWorld;
    w2c.IdentityTranslation();
    c2w.IdentityTranslation();

    v.Transform(w2c);
    vup.Transform(w2c);
    v.Transform(m);
    vup.Transform(m);
    v.Transform(c2w);
    vup.Transform(c2w);

    position = v;
    position.Add(target);
    updated = false;
}

void ViewerCamera::RotateX(float f) 
{
    pushing = false;
    RealRotateX(f);
}

void ViewerCamera::RotateY(float f) 
{
    pushing = false;
    RealRotateY(f);
}

void ViewerCamera::Zoom(float f) 
{
    f *= speed;

    pushing = false;

    Vector v = position;
    v.Sub(target);
    float mag = v.NormalizeSafe();

    f *= (mag / 200.0f);

    if((mag - f) > 0)
    {
        Vector tmpV = v;
        tmpV.Scale(-1);

        v.Scale(mag - f);
        position = v;
        position.Add(target);

        if((f > 0) && (mag < 1) )
        {
            target = position;
            target.Add(tmpV);
        }
    }

    updated = false;
}

void ViewerCamera::MoveX(float f) 
{
    f *= speed;

    pushing = false;

    f *= (position.Magnitude() / 200.0f);
    Vector right = cameraToWorld.Row(0);
    right.Scale(-f);
    position.Add(right);
    target.Add(right);
    updated = false;
}

void ViewerCamera::MoveY(float f) 
{
    f *= speed;

    pushing = false;

    f *= (position.Magnitude() / 200.0f);
    Vector up = cameraToWorld.Row(1);
    up.Scale(f);
    position.Add(up);
    target.Add(up);
    updated = false;
}

void ViewerCamera::Reset(void) 
{
    pushing = false;

    SetPosition(Vector(20,20,-20));
    SetTarget(Vector(0,0,0));
    vup.Set(-1,1,1);
    vup.Normalize();
}

void ViewerCamera::Watch(const rmt::Sphere& sphere)
{
    Reset();
    SetTarget(sphere.centre);

    Vector v(1,1,-1);
    v.Normalize();
    float distance = sphere.radius * 2;
    if(distance < 1)
        distance = 10;

    v.Scale(distance);
    v.Add(sphere.centre);
    SetPosition(v);
}

void ViewerCamera::Watch(const rmt::Vector& newTarget, bool track)
{
    if(track)
    {
        Vector lastTarget = target;
        Vector to;
        to.Sub(newTarget, lastTarget);
        position.Add(to);
    }

    target = newTarget;

    updated = false;
}

void ViewerCamera::Update(void)
{
    if(updated)
        return;

    if(watchedJoint)
    {
    }
    
    Vector v;
    Vector v2;
    v = target;
    v.Sub(position);
    v.Normalize();
    v2.CrossProduct(v, vup);
    if(v2.y != 0.0f)
    {
        v2.y = 0;
        v2.Normalize();
        vup.CrossProduct(v2,v);
    }

    tPointCamera::Update();
}

void ViewerCamera::SetTargetF(float x, float y, float z)
{
    pushing = false;

    target = Vector(x,y,z);
    updated = false;
}

void ViewerCamera::SetPositionF(float x, float y, float z)
{
    pushing = false;

    position = Vector(x,y,z);
    updated = false;
}

void ViewerCamera::DrawCircle(const rmt::Vector& center, tColour lineColour, float radius)
{
    Vector cursur;
    Vector cursurTail;
    unsigned wireResolution = 32;    
    float anglephi = 0;
    float angletheta = 0;

    pddiPrimStream* stream = p3d::pddi->BeginPrims(shader->GetShader(), PDDI_PRIM_LINES, PDDI_V_C, ((2*wireResolution)+1)*2);
    SphericalToCartesian(radius, angletheta, anglephi, &(cursur.x), &(cursur.y), &(cursur.z) );
    for( anglephi = 0; anglephi <= 2*PI; anglephi += PI/wireResolution )   
    {
        cursurTail = cursur;
        SphericalToCartesian(radius, angletheta, anglephi, &(cursur.x), &(cursur.y), &(cursur.z) );

        Vector lineStart = cursurTail;
        Vector lineEnd = cursur;
        lineStart.x += center.x;
        lineStart.y += center.y;
        lineStart.z += center.z;
        lineEnd.x += center.x;
        lineEnd.y += center.y;
        lineEnd.z += center.z;

        stream->Vertex(((pddiVector*)(&(lineStart))), lineColour);
        stream->Vertex(((pddiVector*)(&(lineEnd))), lineColour);
    }
    p3d::pddi->EndPrims(stream);
}


void ViewerCamera::Display()
{
    if (showTarget)
    {
        Vector center = GetTarget();
        float radius = .5;

        //Draw target circles
        DrawCircle(Vector(center.x,0,center.z), tColour(0,0,0), 0.5f);
        DrawCircle(Vector(center.x,0,center.z), tColour(0,0,0), 0.1f);
        DrawCircle(Vector(center.x,center.y,center.z), tColour(255,0,0), 0.5f);
        DrawCircle(Vector(center.x,center.y,center.z), tColour(255,0,0), 0.1f);

        //Code to draw line between
        if (showTargetHeight)
        {
            pddiPrimStream* stream = p3d::pddi->BeginPrims(shader->GetShader(), PDDI_PRIM_LINES, PDDI_V_C, 2);
            stream->Colour(tColour(0,255,0));
            stream->Coord(center.x,center.y,center.z);
            stream->Colour(tColour(0,0,0));
            stream->Coord(center.x,0,center.z);
            p3d::pddi->EndPrims(stream);
        }

    /*        //Old code for cross
    float xtarget = target.x;
    float ytarget = target.y;
    float ztarget = target.z;
    float size = 0.3;
    pddiPrimStream* stream = p3d::pddi->BeginPrims(shader->GetShader(), PDDI_PRIM_LINES, PDDI_V_C);
    stream->Colour(tColour(255,128,128));
    stream->Coord(xtarget - size,ytarget,ztarget);
    stream->Colour(tColour(255,128,128));
    stream->Coord(xtarget + size,ytarget,ztarget);
    stream->Colour(tColour(128,255,128));
    stream->Coord(xtarget,ytarget - size,ztarget);
    stream->Colour(tColour(128,255,128));
    stream->Coord(xtarget,ytarget + size,ztarget);
    stream->Colour(tColour(128,128,255));
    stream->Coord(xtarget,ytarget,ztarget - size);
    stream->Colour(tColour(128,128,255));
    stream->Coord(xtarget,ytarget,ztarget + size);
    p3d::pddi->EndPrims(stream);*/
    }
}

