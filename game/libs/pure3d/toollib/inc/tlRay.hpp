/*===========================================================================
    File:: tlRay.hpp

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLRAY_HPP
#define _TLRAY_HPP

#include "tlColour.hpp"
#include "tlPoint.hpp"
#include "tlShader.hpp"
#include "tlTable.hpp"
#include "tlTriMeshIntersect.hpp"

class tlRay
{
public:
   enum tlRayType { Infinite, Finite };
   enum tlScatterMethod { eAbsorb,   // Diffuse absorption - Create a photon
                          eDiffuse,  // Diffuse reflection - Create a photon
                          eReflect,  // Pure specular reflection - need to change code if this is
                                     // mixed with other scattering methods.
                          eTransmit, // Not yet implemented
                          eRemoved   // Removed due to back face intersection, etc.
                        };

    tlRay();
    tlRay(const tlPoint& s, const tlPoint& e, const tlColour & c, tlRayType t=Finite );
    virtual ~tlRay();

   const tlPoint& Start() const { return start; }
   const tlPoint& End() const { return end; }
   const tlPoint& Direction() const { return direction; }
   const tlRayType& Type( ) const { return type; }
   const tlColour& Colour( ) const { return colour; }
   
   float Length() const;
   void  Reset();
   bool  Intersect( const tlTable<tlTriMeshIntersect *>&trimesh );
   void  SetIntersection( float newLength, const tlTriangle *newIntersectedTriangle );
   const tlTriangle* GetIntersectedTri() const;
   tlScatterMethod Scatter( tlRay &scatteredRay, const tlTable<tlShader *> &shaders ) const;

private:
   tlPoint   start;
   tlPoint   end;
   tlPoint   direction;
   tlRayType type; 
   tlColour  colour;
   float     length;
   const tlTriangle *intersectedTriangle;

   bool GetIntersectedDiffuseColour( tlColour *diffuse, const tlTable<tlShader *> &shaders ) const;
};

#endif

