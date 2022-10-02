//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _BOUNDING_CONSTANTS_HPP_
#define _BOUNDING_CONSTANTS_HPP_

#define LEAD_COLOR            18 // green
#define ACTIVE_COLOR       15 // white
#define ACTIVE_AFFECTED_COLOR 8  // purple
#define DORMANT_COLOR         14  // blue
#define HILITE_COLOR       17 // pale blue

#define P3D_BOUNDING_VOLUME_ID                0x040200
#define P3D_BOUNDING_NODE_ID                0x040201

namespace P3DBoundingVolume
{

const float MIN_BOUNDING_SIZE=0.1f;

enum {
    BOUNDING_BOX,
    BOUNDING_SPHERE,
    BOUNDING_CYLINDER,
    BOUNDING_CAPSULE,
    BOUNDING_PLANE,
};

enum DrawMode {
    WIREFRAME,
    WIREFRAME_SHADED,
    SMOOTH_SHADED,
    FLAT_SHADED,
    LAST_TOKEN
};

};  //namespace P3DBoundingVolume

namespace PBV = P3DBoundingVolume;

#endif //_BOUNDING_CONSTANTS_HPP_
