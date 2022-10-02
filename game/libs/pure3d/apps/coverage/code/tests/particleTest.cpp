//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <p3d/effects/particlesystem.hpp>
#include "particleTest.hpp"

//-------------------------------------
// rotational cohesion particle test
//-------------------------------------

RotationalCohesionParticleTest::RotationalCohesionParticleTest() :
    particles(NULL),
    controller(NULL)
{
}

void RotationalCohesionParticleTest::Shutdown()
{
    if (particles) particles->Release();
    if (controller) controller->Release();
}

void RotationalCohesionParticleTest::Setup()
{
    SetupSection();

    Load("Particles/electric_shield.p3d");

    particles = p3d::find<tParticleSystem>("electricityShape");
    if (particles) particles->AddRef();

    controller = p3d::find<tEffectController>("EFX_electricityShape");
    if (controller) controller->AddRef();
}

void RotationalCohesionParticleTest::Display()
{
    if (particles) particles->Display();
}

void RotationalCohesionParticleTest::Update(float deltaTime)
{
    if (controller) controller->Advance(deltaTime);
}

//-------------------------------------
// Translational cohesion particle test
//-------------------------------------

TranslationalCohesionParticleTest::TranslationalCohesionParticleTest()
{
    SetFileName("Particles/ship.p3d"); 
    SetCameraName("sideCameraShape");
    SetControllerName("MasterController");
    SetSceneName("Scene");
    isCyclic = true;
}

