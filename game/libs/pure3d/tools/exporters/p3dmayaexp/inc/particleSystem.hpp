/*===========================================================================
    particleSystem.hpp
    created: Jan 27, 2000

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/
#ifndef _PARTICLESYSTEM_HPP
#define _PARTICLESYSTEM_HPP

#include <maya/MDagPath.h>

#include "tlParticleSystem.hpp"
#include "tlInventory.hpp"
#include "exporteroptions.hpp"
#include "scene.hpp"

class ParticleSystemProcess
{
public:
    static tlParticleSystemFactory* ExportParticleSystemFactory(SceneNode* node, tlInventory* tlInv);
protected:
    static void ExportEmitterFactory(tlParticleSystemFactory* partSys, SceneNode* systemNode, SceneNode* emitterNode, tlInventory* tlInv);
}; 

#endif // _PARTICLESYSTEM_HPP

