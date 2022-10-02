//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#ifndef _COLLISIONDISPLAY_HPP_
#define _COLLISIONDISPLAY_HPP_

#include "p3d/p3dtypes.hpp"

namespace sim
{

class CollisionVolume;
class CollisionObject;
class CollisionManager;

void DrawCollisionObject(CollisionObject* inObject);
void DrawCollisionVolume(CollisionVolume* volume);
bool TestPointOnSurf(CollisionVolume* volume, rmt::Vector r, bool rel);

void DisplayCollisions(CollisionManager* collisionManager);
void DisplayCollisionObjects(CollisionManager* collisionManager);
void DisplayCollisionObjectPairs(CollisionManager* collisionManager);


enum DrawVolumeMethod {DrawVolumeOutline=0, DrawVolumeShape};

void SetDrawVolumeMethod(DrawVolumeMethod inDrawVolumeMethod);

} // sim


#endif // _COLLISIONDISPLAY_HPP_