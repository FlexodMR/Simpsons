//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "toollib.hpp"
#include "tlPlane.hpp"
#include "tlSegment.hpp"

#define LESS( a, b )   (  a < b+ 1.0e-7  )
#define GREATER( a, b )   (  a > b - 1.0e-7  )

tlSegment::tlSegment( tlPoint s, tlPoint e )
: start(s), end( e )
{

}

tlSegment::tlSegment( )
{
}


tlSegment::~tlSegment( )
{
}

bool tlSegment::Intersect( tlSegment l, tlPoint & ints )
{

    tlPlane plane( start, end, l.start );

    if( plane.CheckSide( l.end, 2.e-3f ) != tlPlane::Contained)
        return false;

    float nx, ny, nz;

    nx = (float)fabs( (double)(plane.normal.x) );
    ny = (float)fabs( (double)(plane.normal.y) );
    nz = (float)fabs( (double)(plane.normal.z) );

    //default primary plane is xy plane
    tlPoint2D s0( start.x, start.y ), e0( end.x, end.y ), s1( l.start.x, l.start.y ), e1( l.end.x, l.end.y );

    if( nx >= ny && nx >= nz ){     //primary plane is yz plane
        s0.x = start.z;
        e0.x = end.z;
        s1.x = l.start.z;
        e1.x = l.end.z;
    }
    else if( ny >= nx && ny >= nz ){ //primary plane is zx plane
        s0.y = start.z;
        e0.y = end.z;
        s1.y = l.start.z;
        e1.y = l.end.z;
    }

    tlSegment2D l0, l1;
    float t0;

    l0.start = s0;
    l0.end = e0;

    l1.start = s1;
    l1.end = e1;

    bool bInts;

    if( bInts = l0.Intersect( l1, t0 ) )
        ints = start + t0*( end - start );

    return bInts;

}

tlSegment2D::tlSegment2D( tlPoint2D s, tlPoint2D e )
: start(s), end( e )
{

}

tlSegment2D::tlSegment2D( )
{
}

tlSegment2D::~tlSegment2D( )
{
}

bool tlSegment2D::Intersect( tlSegment2D l, float &t0 )
{
   
    // Intersection is a solution to P0+s*D0 = P1+t*D1.  Rewrite as
    // s*D0 - t*D1 = P1 - P0, a 2x2 system of equations.  If D0 = (x0,y0)
    // and D1 = (x1,y1) and P1 - P0 = (c0,c1), then the system is
    // x0*s - x1*t = c0 and y0*s - y1*t = c1.  The error tests are relative
    // to the size of the direction vectors, |Cross(D0,D1)| >= e*|D0|*|D1|
    // rather than absolute tests |Cross(D0,D1)| >= e.  The quantities
    // P1-P0, |D0|^2, and |D1|^2 are returned for use by calling functions.

    tlPoint2D d0, d1;

    d0 = end - start;
    d1 = l.end - l.start;

    tlPoint2D diff = l.start - start;
    float len0 = d0.Length();
    float len1 = d1.Length( );
    
    float fDet = d1.x*d0.y - d1.y*d0.x;

    float t1;
    
    const float fEpsilon = 1e-6f;

    if ( fDet*fDet > fEpsilon*len0*len0*len1*len1 )
    {
        // Lines intersect in a single point.  Return both s and t values for
        // use by calling functions.
        float fInvDet = 1.0f/fDet;
        
        t0 = (d1.x*diff.y - d1.y*diff.x)*fInvDet;
        t1 = (d0.x*diff.y - d0.y*diff.x)*fInvDet;

        if( GREATER(t0, 0.f) && LESS( t0, 1.f ) && GREATER( t1, 0.f ) && LESS( t1, 1.f ) )
            return true;
        else{
            return false;
        }
    }
    else
    {
        // lines are parallel
        fDet = d0.x*diff.y - d0.y*diff.x;
        if ( fDet*fDet > fEpsilon*len0*len0*len1*len1 )
        {
            // lines are disjoint
            return false;
        }
        else
        {
            // lines are the same
            return false;
        }

    }

}
