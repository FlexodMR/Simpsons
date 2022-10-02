//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


/*
 * Pure3D Tutorial 1 Rendering Interface
 *
 * Created 20-Mar-2000 Neall (verheyde@radical.ca)
 *
 */

#ifndef TUTORIAL1_HPP
#define TUTORIAL1_HPP

#include <radmath/radmath.hpp>
#include <p3d/pure3d.hpp>

class tView;
class tPointCamera;
class tDirectionalLight;
class tDrawable;
class tShader;

class Tutorial1
{
public:
    Tutorial1();
    ~Tutorial1();

    void Init();
    void Render(float deltaTime);

private:
    tView* view;
    tPointCamera* camera;
    tDirectionalLight* light;
    rmt::Matrix rotation;

    tDrawable* torus;
};

#endif
