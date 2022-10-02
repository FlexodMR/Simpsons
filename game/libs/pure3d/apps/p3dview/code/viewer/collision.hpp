//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _VIEWER_COLLISION_HPP_
#define _VIEWER_COLLISION_HPP_

//
//  Pure3D Viewer
//
//  Collision object viewing support
//
#include <simcommon/tlist.hpp>
#include <utility/pointer.hpp>

class tDrawable;

namespace sim
{
    class CollisionObject;
    class SimStateArticulated;
}

namespace Scenegraph
{
    class Scenegraph;
    class Node;
}

class CollisionVolumeViewer
{
public:
    CollisionVolumeViewer();
    ~CollisionVolumeViewer();

    void Setup(void);
    void Flush(void);

    void Display(tDrawable* currentObject);

protected:
    // Functions to retrieve the collision object from the inventory
    sim::CollisionObject* GetCollisionObject(tDrawable* currentObject, bool clone = false);
    rmt::Matrix* GetSimMatrix(Scenegraph::Node* nn);
    void GetCollisionObjectFromSceneGraph(Scenegraph::Scenegraph* sg);
    void GetCollisionObjectFromSceneGraphNode(Scenegraph::Node* node);

    // Sets the currentCollisionObject pointer
    void SetCurrentCollisionObject(tDrawable* currentObject);

    RefPtr<tDrawable> currentObject;
    sim::TList<sim::CollisionObject*>* collisionObjectList;
};

#endif