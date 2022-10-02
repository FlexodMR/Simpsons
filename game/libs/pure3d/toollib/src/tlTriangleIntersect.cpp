/*===========================================================================
    File:: tlTriangleIntersect.cpp

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlTriangleIntersect.hpp"
#include "tlVertex.hpp"
#include "tlPoint.hpp"
#include "tlRay.hpp"
#include <assert.h>

#define EPSILON    0.00001f

#define EQUAL( a, b )       ( ( a < b + EPSILON ) && ( a > b - EPSILON ) )

tlTriangleIntersect::tlTriangleIntersect() : 
        tlTriangle()
{
    
}

tlTriangleIntersect::tlTriangleIntersect(const char* mat, tlVertex* verts[3]) :
        tlTriangle(mat, verts)
{
    ComputeIntersectData();
}

tlTriangleIntersect::tlTriangleIntersect(tlTriangle *tri) :
        tlTriangle(tri)
{
    ComputeIntersectData();
}

tlTriangleIntersect::tlTriangleIntersect(const tlTriangle &tri) :
        tlTriangle(tri)
{
    ComputeIntersectData();
}

tlTriangleIntersect::~tlTriangleIntersect()
{
}


void 
tlTriangleIntersect::ComputeIntersectData()
{
    edges[0] = vertices[1]->GetCoord() - vertices[0]->GetCoord();
    edges[1] = vertices[2]->GetCoord() - vertices[1]->GetCoord();
    edges[2] = vertices[0]->GetCoord() - vertices[2]->GetCoord();

    // Find face normal
    normal = Normalize(CrossProd(edges[0], edges[1]));

    // Find plane constant
    d = DotProd(normal, vertices[0]->GetCoord());

    SetTangentBinormal();


    //
    // Find "dominant" part of normal vector.
    //
    tlPoint anorm;
    anorm.x = fabsf(normal.x);
    anorm.y = fabsf(normal.y);
    anorm.z = fabsf(normal.z);

    //
    // Scale edges by dominant part of normal.  This makes intersection
    // testing a bit faster.
    // 

    float scale;
    if (anorm.x > anorm.y && anorm.x > anorm.z) 
    {
        index = XNORMAL;
        scale = 1.0f / normal.x;
    } 
    else if (anorm.y > anorm.z) 
    {
        index = YNORMAL;
        scale = 1.0f / normal.y;
    } 
    else 
    {
        index = ZNORMAL;
        scale = 1.0f / normal.z;
    }

    edges[0] *= scale;
    edges[1] *= scale;
    edges[2] *= scale;
}


bool
tlTriangleIntersect::Intersect( const tlRay& ray, float mindist, float& maxdist)
{

    tlPoint pos, dir;

    pos = ray.Start();
    dir = ray.Direction();

    /*
     * Plane intersection.
     */
    
    float k = DotProd(normal, dir);
    if (fabs(k) < EPSILON)
    {
        return false;
    }
    
    float s = (d - DotProd(normal, pos)) / k;

    if (s < mindist || ( s > maxdist && maxdist >= 0. ) )
    {
        return false;
    }

/*
    //the intersection is the start point, then this is a self-intersection, return false then;
    if( EQUAL( s, mindist ) )
         return false;
*/    
    if (index == XNORMAL) 
    {
        float qi1 = pos.y + s * dir.y;
        float qi2 = pos.z + s * dir.z;
        const tlPoint& p1 = vertices[1]->GetCoord();
        float b0 = edges[1].y * (qi2 - p1.z) - edges[1].z * (qi1 - p1.y);
        if (b0 < 0.0f)
        {
            return false;
        }
        
        const tlPoint& p2 = vertices[2]->GetCoord();
        float b1 = edges[2].y * (qi2 - p2.z) - edges[2].z * (qi1 - p2.y);
        if (b1 < 0.0f)
        {
            return false;
        }
        
        const tlPoint& p0 = vertices[0]->GetCoord();
        float b2 = edges[0].y * (qi2 - p0.z) - edges[0].z * (qi1 - p0.y);
        if (b2 < 0.0f)
        {
            return false;
        }
    } 
    else if (index == YNORMAL)
    {
        float qi1 = pos.x + s * dir.x;
        float qi2 = pos.z + s * dir.z;
        const tlPoint& p1 = vertices[1]->GetCoord();
        float b0 = edges[1].z * (qi1 - p1.x) - edges[1].x * (qi2 - p1.z);
        if (b0 < 0.0f)
        {
            return false;
        }
        
        const tlPoint& p2 = vertices[2]->GetCoord();
        float b1 = edges[2].z * (qi1 - p2.x) - edges[2].x * (qi2 - p2.z);
        if (b1 < 0.0f)
        {
            return false;
        }
        
        const tlPoint& p0 = vertices[0]->GetCoord();
        float b2 = edges[0].z * (qi1 - p0.x) - edges[0].x * (qi2 - p0.z);
        if (b2 < 0.0f)
        {
            return false;
        }
    } else {
        float qi1 = pos.x + s * dir.x;
        float qi2 = pos.y + s * dir.y;

        const tlPoint& p1 = vertices[1]->GetCoord();
        float b0 = edges[1].x * (qi2 - p1.y) - edges[1].y * (qi1 - p1.x);
        if (b0 < 0.0f)
        {
            return false;
        }

        const tlPoint& p2 = vertices[2]->GetCoord();
        float b1 = edges[2].x * (qi2 - p2.y) - edges[2].y * (qi1 - p2.x);
        if (b1 < 0.0f)
        {
            return false;
        }

        const tlPoint& p0 = vertices[0]->GetCoord();
        float b2 = edges[0].x * (qi2 - p0.y) - edges[0].y * (qi1 - p0.x);
        if (b2 < 0.0f)
        {
            return false;
        }
    }

/*   tri->b[0] = b0;
    tri->b[1] = b1;
    tri->b[2] = b2;

    TriHits++;
*/
    maxdist = s;
    return true;
}

bool tlTriangleIntersect::ContainPoint( tlPoint point )
{
    if (index == XNORMAL) 
    {
        float qi1 = point.y;
        float qi2 = point.z;
        const tlPoint& p1 = vertices[1]->GetCoord();
        float b0 = edges[1].y * (qi2 - p1.z) - edges[1].z * (qi1 - p1.y);
        if (b0 < 0.0f)
        {
            return false;
        }
        
        const tlPoint& p2 = vertices[2]->GetCoord();
        float b1 = edges[2].y * (qi2 - p2.z) - edges[2].z * (qi1 - p2.y);
        if (b1 < 0.0f)
        {
            return false;
        }
        
        const tlPoint& p0 = vertices[0]->GetCoord();
        float b2 = edges[0].y * (qi2 - p0.z) - edges[0].z * (qi1 - p0.y);
        if (b2 < 0.0f)
        {
            return false;
        }
    } 
    else if (index == YNORMAL)
    {
        float qi1 = point.x;
        float qi2 = point.z;
        const tlPoint& p1 = vertices[1]->GetCoord();
        float b0 = edges[1].z * (qi1 - p1.x) - edges[1].x * (qi2 - p1.z);
        if (b0 < 0.0f)
        {
            return false;
        }
        
        const tlPoint& p2 = vertices[2]->GetCoord();
        float b1 = edges[2].z * (qi1 - p2.x) - edges[2].x * (qi2 - p2.z);
        if (b1 < 0.0f)
        {
            return false;
        }
        
        const tlPoint& p0 = vertices[0]->GetCoord();
        float b2 = edges[0].z * (qi1 - p0.x) - edges[0].x * (qi2 - p0.z);
        if (b2 < 0.0f)
        {
            return false;
        }
    } else {
        float qi1 = point.x;
        float qi2 = point.y;

        const tlPoint& p1 = vertices[1]->GetCoord();
        float b0 = edges[1].x * (qi2 - p1.y) - edges[1].y * (qi1 - p1.x);
        if (b0 < 0.0f)
        {
            return false;
        }

        const tlPoint& p2 = vertices[2]->GetCoord();
        float b1 = edges[2].x * (qi2 - p2.y) - edges[2].y * (qi1 - p2.x);
        if (b1 < 0.0f)
        {
            return false;
        }

        const tlPoint& p0 = vertices[0]->GetCoord();
        float b2 = edges[0].x * (qi2 - p0.y) - edges[0].y * (qi1 - p0.x);
        if (b2 < 0.0f)
        {
            return false;
        }
    }

    return true;
}

