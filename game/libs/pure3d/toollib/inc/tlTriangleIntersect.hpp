/*===========================================================================
    File:: tlTriangleIntersect.hpp

    This object is a tlTriangle with extra data for speeding up ray 
    intersection tests

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLTRIANGLEINTERSECT_HPP
#define _TLTRIANGLEINTERSECT_HPP

#include "tlTriangle.hpp"
#include "tlPoint.hpp"

class tlRay;
class tlUV;

class tlTriangleIntersect : public tlTriangle
{
public:
    tlTriangleIntersect();
    tlTriangleIntersect(const char* mat, tlVertex* verts[3]);
    tlTriangleIntersect(tlTriangle *tri); // copy from pointer
    tlTriangleIntersect(const tlTriangle& tri);

    virtual ~tlTriangleIntersect();

    bool Intersect(const tlRay& ray, float mindist, float& maxdist);
    bool ContainPoint( tlPoint point );
    
    const tlPoint& FaceNormal() const { return normal;};
    const tlPoint& NormalAtPoint(const tlPoint& point) const;

protected:
    friend class tlTriMeshIntersect;
    void ComputeIntersectData();

private:
    tlPoint normal;              // face normal
    tlPoint edges[3];            // scaled edge vectors;
    float   d;                   // Plane constant;

    enum {XNORMAL, YNORMAL, ZNORMAL} index;
};

#endif

