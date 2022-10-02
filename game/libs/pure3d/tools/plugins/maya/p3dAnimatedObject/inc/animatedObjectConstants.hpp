//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _ANIMATED_OBJECT_CONSTANTS_HPP_
#define _ANIMATED_OBJECT_CONSTANTS_HPP_

#define LEAD_COLOR            1 // green
#define ACTIVE_COLOR       1 // white
#define ACTIVE_AFFECTED_COLOR 1  // purple
#define DORMANT_COLOR         1  // blue
#define HILITE_COLOR       1 // pale blue

#define P3D_ANIMATED_OBJECT_ID 0x040270
#define MAYA_LAMBERT_ID                 1380729165
#define MAYA_PHONG_ID                   1380993103
#define MAYA_LAYERED_SHADER_ID          1280922195

namespace P3DAnimatedObject
{

const float MIN_DISPLAY_SIZE=0.001f;

enum {
    WIREFRAME,
    WIREFRAME_SHADED,
    SMOOTH_SHADED,
    FLAT_SHADED,
    LAST_TOKEN
};

};  //namespace P3DAnimatedObject

namespace PAO = P3DAnimatedObject;

#endif //_ANIMATED_OBJECT_CONSTANTS_HPP_

