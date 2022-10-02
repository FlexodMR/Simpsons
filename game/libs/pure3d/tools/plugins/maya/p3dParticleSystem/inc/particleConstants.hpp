//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _PARTICLE_CONSTANTS_HPP_
#define _PARTICLE_CONSTANTS_HPP_

#define P3D_PARTICLE_SYSTEM_ID             0x040100
#define P3D_EMITTER_ID                     0x040101
#define P3D_EMITTER_BLEND_STATE_NODE_ID    0x040102
#define P3D_PARTICLE_FORCE_ID              0x040103
#define P3D_PARTICLE_COLLISION_ID          0x040104
#define MAYA_LAMBERT_ID                    1380729165
#define MAYA_PHONG_ID                      1380993103
#define MAYA_LAYERED_SHADER_ID             1280922195

namespace P3DParticleSystem
{

const float MIN_DISPLAY_SIZE=0.001f;

enum {
    POINT_GENERATOR,
    PLANE_GENERATOR,
    SPHERE_GENERATOR
}; 

enum {
    SPRITE_PARTICLE
};

enum {
    WIREFRAME,
    WIREFRAME_SHADED,
    SMOOTH_SHADED,
    FLAT_SHADED,
    LAST_TOKEN
};

enum {
    SPECIFIED_ANGLE,
    RANDOM_ANGLE,
    ALIGNED_TO_MOTION
};

enum {
    NO_ANIMATION,
    LINEAR_ANIMATION,
    SPECIFIED_ANIMATION,
    RANDOM_ANIMATION
};

};  //namespace P3DParticleSystem

namespace PPS = P3DParticleSystem;

#endif //_PARTICLE_CONSTANTS_HPP_
