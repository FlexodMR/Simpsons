//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef PARTICLETEST_HPP
#define PARTICLETEST_HPP

#include "coverage.hpp"

//----------------------------------------
// rotational cohesion particle test
//----------------------------------------

class RotationalCohesionParticleTest : public CoverageTest
{
public:
    RotationalCohesionParticleTest();

    virtual const char* GetName() { return "Rotational Cohesion Particle System"; }

    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();
    virtual void Update(float deltaTime);

private:

    tParticleSystem* particles;
    tEffectController* controller;
};

//----------------------------------------
// Translational cohesion particle test
//----------------------------------------

class TranslationalCohesionParticleTest : public ScenegraphTest
{
public:
    TranslationalCohesionParticleTest();
    virtual const char* GetName() { return "Translational Cohesion Particle System"; }
};

#endif