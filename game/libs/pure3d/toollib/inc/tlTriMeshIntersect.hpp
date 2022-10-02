/*===========================================================================
    File:: tlTriMeshIntersect.hpp

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLTRIMESHINTERSECT_HPP
#define _TLTRIMESHINTERSECT_HPP

#include "tlTriMesh.hpp"
#include "tlTriangleIntersectFactory.hpp"

class tlRay;

class tlTriMeshIntersect : public tlTriMesh
{
public:
    tlTriMeshIntersect();
    void MarkTriangle( tlTriangle *tri, int flag );
    virtual ~tlTriMeshIntersect();

    explicit tlTriMeshIntersect( const tlPrimGroupMesh& mesh, const tlTriangleFactory* factory = tlTriangleIntersectFactory::Factory());
    tlTriMeshIntersect(  tlPrimGroup * mesh, const tlTriangleFactory* factory = tlTriangleIntersectFactory::Factory());
    
    //calc the closest intersection with the ray
    bool Intersect( tlRay& ray, tlPoint &intersect );
    bool Intersect( tlRay& ray, tlPoint &intersect, int mark);

    //test if the ray hit the trimesh or not
    bool Intersect( const tlRay& ray );
    bool Intersect( const tlRay& ray, int mark );

private:
};

#endif

