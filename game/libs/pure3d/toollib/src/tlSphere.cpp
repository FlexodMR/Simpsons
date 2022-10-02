/*===========================================================================
    File:: tlSphere.cpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlSphere.hpp"
#include "tlBox.hpp"
#include <assert.h>
#include <stdio.h>
#include <string.h>

#include "tlFile.hpp"
#include "tlRay.hpp"

#include <math.h>

bool
tlSphere::operator==(const tlSphere& s)
{
    return (radius == s.radius) && (centre == s.centre);
}

void tlSphere::CalcCentre(tlPoint* points, int n)
{
    tlBox box;
    box.Bound(points,n);
    centre = box.Centre();
}

void tlSphere::CalcCentre(tlTable<tlPoint>* pnt)
{
    tlBox box;
    box.Bound(pnt);
    centre = box.Centre();
}

void tlSphere::Bound(tlPoint* points, int n)
{
    radius = 0.0f;
    for(int i = 0; i < n; i++)
    {
        float tmp = LengthSquared(points[i] - centre);
        if(tmp > radius)
            radius = tmp;
    }
    radius = static_cast<float>(sqrt(radius));
}

void tlSphere::Bound(tlTable<tlPoint>* pnt)
{
    tlTable<tlPoint> points = *pnt;
    
    radius = 0.0f;
    for(int i = 0; i < points.Count(); i++)
    {
        float tmp = LengthSquared(points[i] - centre);
        if(tmp > radius)
            radius = tmp;
    }
    radius = static_cast<float>(sqrt(radius));
}

void 
tlSphere::Read(tlFile* f)
{
    *this = f->GetSphere();
}

void
tlSphere::Write(tlFile* f)
{
    f->PutSphere(*this);
}

void
tlSphere::Print(int index, int indent)
{
    printf("%*sCentre: %8.4f %8.4f %8.4f Radius: %8.4f\n",indent,"",
             centre.x,
             centre.y,
             centre.z,
             radius);
}

void
tlSphere::PrintFormatted(int index, int indent)
{
    assert("unimplemented" == 0);
}

void
tlSphere::Init()
{
    centre = tlPoint(0,0,0);
    radius = 0.0f;
}

bool
tlSphere::GetFieldValue(char* val, int len) const
{
    char buf[256];

    sprintf(buf, "Centre(%8.8f, %8.8f, %8.8f), Radius(%8.8f)",
              centre.x, centre.y, centre.z,
              radius);
    strncpy(val, buf, len);

    return true;
}

bool
tlSphere::GetFieldUpdatable()
{
    return false;
}

bool
tlSphere::SetFieldValue(const char*)
{
    return false;
}

bool tlSphere::Intersect( const tlRay &ray, tlPoint &intersect )
{
     tlPoint p1 = ray.Start( );

     //test if both end points of ray fall into the sphere
     //if yes, return true without a intersect point
     if( ray.Type( ) == tlRay::Finite ){
          tlPoint end = ray.End( );

          if( Contain( p1 ) && Contain( end ) )
                return true;
     }

     tlPoint dir = ray.Direction( );
     
     p1 -= centre;

     float r2 = radius * radius;

     float a, b, c, t, d;

     a = DotProd(dir,dir);
     b = 2*DotProd(p1,dir);
     c = DotProd(p1,p1) - r2;

     if( a == 0. )
          return false;
     
     d = b*b - 4*a*c;

     if( d < 0 )
          return false;

     float maxdist = ray.Length( );

     d = sqrtf( d );
     //otherwise, calculate the intersected point
     a *= 2;
     t = (-b + d)/a;
     
     if( t > 0 && ( ( t < maxdist && maxdist >= 0 ) || maxdist < 0. ) ){
          intersect = t * dir + ray.Start( );
          return true;
     }
     else{       //test for another intersection
          t = (-b-d)/a;
          if( t > 0 && ( ( t < maxdist && maxdist >= 0 ) || maxdist < 0.) ){
                intersect = t * dir + ray.Start( );
                return true;
          }
          else
                return false;
     }
}

bool tlSphere::Contain( tlPoint point ) const
{
     point = point - centre;
     
     float d = point.Length( );

     if( d <= radius )
          return true;
     else
          return false;
}
