//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "viewercamera.hpp"

using namespace rmt;

ViewerCamera::ViewerCamera() 
{
    SetDefault();
    Reset();
};

ViewerCamera::~ViewerCamera() 
{
};

void ViewerCamera::SetDefault( float x, float y, float z )
{
    m_defaultPos.Set( x, y, z );
}

void ViewerCamera::SetDefault( RadicalMathLibrary::Vector v )
{
    m_defaultPos = v;
}

void ViewerCamera::RotateX(float f) 
{
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

void ViewerCamera::RotateY(float f) 
{
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

void ViewerCamera::Zoom(float f) 
{
    Vector v = position;
    v.Sub(target);
    float mag = v.NormalizeSafe();

    if((f > 0) && (mag < 0.01) )
        return;
    f *= (mag / 200.0f);
    if((mag - f) > 0)
    {
        v.Scale(mag - f);
        position = v;
        position.Add(target);
    }
    updated = false;
}

void ViewerCamera::MoveX(float f) 
{
    f *= (position.Magnitude() / 200.0f);
    Vector right = cameraToWorld.Row(0);
    right.Scale(-f);
    position.Add(right);
    target.Add(right);
    updated = false;
}

void ViewerCamera::MoveY(float f) 
{
    f *= (position.Magnitude() / 200.0f);
    Vector up = cameraToWorld.Row(1);
    up.Scale(f);
    position.Add(up);
    target.Add(up);
    updated = false;
}

void ViewerCamera::Reset(void) 
{
    SetPosition(m_defaultPos);
    SetTarget(Vector(0,0,0));
    vup.Set(-1,1,1);
    vup.Normalize();
}

void ViewerCamera::Watch(rmt::Sphere* sphere)
{
    Reset();
    SetTarget(sphere->centre);

    Vector v(1,1,-1);
    v.Normalize();
    float distance = sphere->radius * 2;
    if(distance < 1)
        distance = 10;

    v.Scale(distance);
    v.Add(sphere->centre);
    SetPosition(v);
}

void ViewerCamera::Update(void)
{
    if(updated)
        return;
    
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


