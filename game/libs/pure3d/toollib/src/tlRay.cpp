/*===========================================================================
    File:: tlRay.cpp

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "stdlib.h"
#include "stdio.h"
#include "tlColour.hpp"
#include "tlRay.hpp"
#include "tlSimpleShader.hpp"
#include "tlTriMeshIntersect.hpp"
#include "tlVertex.hpp"
#include "tlUV.hpp"
#include <assert.h>

#ifndef TWOPI
#define TWOPI 6.28318530718f
#endif

tlRay::tlRay() :
   start(), 
   end(),
   direction(),
   type( Finite ),
   length( -1 ),
   intersectedTriangle( NULL )
{
}

tlRay::tlRay(const tlPoint& s, const tlPoint& endOrDirection, const tlColour &c, tlRayType t ) :
   start(s), 
   colour(c),
   type(t),
   intersectedTriangle( NULL )
{
   tlPoint segment;

   if( type == Finite ){
       end       = endOrDirection;
       segment   = end - start;
       length    = segment.Length();
       direction = Normalize( segment );
   }
   else{
       direction = Normalize(endOrDirection );
       length = -1;
   }

}


tlRay::~tlRay()
{

}

float
tlRay::Length() const
{
    if( type == Finite ){
       return length;
    }
    else{           //infinite ray
        return -1;
    }
}
   
void
tlRay::SetIntersection( float newLength, const tlTriangle *newIntersectedTriangle )
{
   length = newLength;
   end    = start + length * direction;
   intersectedTriangle = newIntersectedTriangle;

   if( type == Infinite ){
      type = Finite;
   }
}

// Find the diffuse colour based on the intesected point of the triangle.
// If a texture is applied to the triangle, then use the texel at the
// intersection point.  Otherwise use the diffuse colour of the shader.
bool
tlRay::GetIntersectedDiffuseColour( tlColour *diffuse, const tlTable<tlShader *> &shaders ) const
{
    bool result = false;
    const tlColour BLACK( 0.0f, 0.0f, 0.0f, 0.0f );
    const tlColour DEFAULT_COLOUR( 0.5f, 0.5f, 0.5f ); // Default to gray.

    // Find the colour at the point of intersection.  Return the success.
    if( intersectedTriangle == NULL )
    {
        *diffuse = BLACK;
        return result;
    }

    // Lookup the shader associated with this triangle.
    tlSimpleShader *currentShader = NULL;
    int i;
    for( i = 0; i < shaders.Count(); i++ )
    {
        if( ::strcmp( shaders[i]->GetName(), intersectedTriangle->GetMaterial() ) == 0 ||
            result == true )
        {
            
            // Find the main (and possibly only) texture.
            tlTexture *texture1 = shaders[i]->GetTexturePtr();
            if( texture1 != NULL )
            {
                // Get the vertices of the intersected triangle.
                const tlVertex *v0 = intersectedTriangle->GetVertex( 0 );
                const tlVertex *v1 = intersectedTriangle->GetVertex( 1 );
                const tlVertex *v2 = intersectedTriangle->GetVertex( 2 );

                const tlPoint *p0 = &v0->GetCoord();
                const tlPoint *p1 = &v1->GetCoord();
                const tlPoint *p2 = &v2->GetCoord();
                const tlPoint *p = &end;

                // Barycentric coordinates are used to determine the u,v coordinates
                // of the intesected point.  This is determine by the ratio of sub-triangles
                // areas to the total area of the intesected triangle.
                // It might be faster to find triangle areas using Heron's Formula
                // http://mathworld.wolfram.com/HeronsFormula.html
                // area0 is the area of triangle( p0, p1, p ).
                // area1 is the area of triangle( p1, p2, p ).
                // area2 is the area of triangle( p2, p0, p ).
                // area is the area of the intersected triangle, the sum of the other areas.
                float area0 = ::Length( ::CrossProd( *p1, *p2 ) + ::CrossProd( *p2, *p ) +
                                        ::CrossProd( *p, *p1) ) / 2.0f;
                float area1 = ::Length( ::CrossProd( *p2, *p0 ) + ::CrossProd( *p0, *p ) +
                                        ::CrossProd( *p, *p2) ) / 2.0f;
                float area2 = ::Length( ::CrossProd( *p0, *p1 ) + ::CrossProd( *p1, *p ) +
                                        ::CrossProd( *p, *p0) ) / 2.0f;
                float area  = area0 + area1 + area2;
                float areaCheck = ::Length( ::CrossProd( *p0, *p1 ) + ::CrossProd( *p1,*p2) +
                                        ::CrossProd( *p2,*p0) ) / 2.0f;

                tlUV pUV0 = ( area0 / area ) * v0->GetUV( 0 );
                tlUV pUV1 = ( area1 / area ) * v1->GetUV( 0 );
                tlUV pUV2 = ( area2 / area ) * v2->GetUV( 0 );
                tlUV pUV = pUV0 + pUV1 + pUV2;

                *diffuse = texture1->GetTexel( pUV.u, pUV.v );

                int dummy;
                dummy=1;

                // What happens with texture2 if the type is
                // "layered", layeredlmap", or "lightmap"
            }
            else
            {
                // There is no texture so use the diffuse colour as the reflectance.
                if( strcmp( shaders[i]->GetShaderType() , "simple" ) == 0 ) 
                {
                    currentShader = (tlSimpleShader*)( shaders[i] );
                    *diffuse = currentShader->GetDiffuse();
                }
                else 
                {
                    // No texture, no diffuse colour.  Set to default.
                    *diffuse = DEFAULT_COLOUR;
                }
            }
            result = true;
            break;
        }
    }

    // colour = intersectedTriangle.GetTheColor( );
    return result;
}

const tlTriangle* tlRay::GetIntersectedTri() const
{
  return intersectedTriangle;
}

// Intersect this ray with a table of triMeshIntersects.  Call Reset if previous comparisons 
// should be ignored, otherwise this intersection is done with respect to previous calls.
// this is updated with intersection information by the called mesh-Intersect routine.
bool
tlRay::Intersect(const tlTable<tlTriMeshIntersect *>&trimesh)
{
   bool  foundIntersection = false;
   tlPoint intersect;

   for( int i = 0; i < trimesh.Count( ); ++i ){
      tlTriMeshIntersect *mesh = trimesh[ i ];

      if( mesh->Intersect( *this, intersect ) ){
         foundIntersection = true;
      }
   }

   return foundIntersection;
}

void  
tlRay::Reset()
{
   length = -1;
   end    = start + length * direction;
   intersectedTriangle = NULL;
}

static inline float MAX(float a, float b)
{
   return (a>b) ? a : b;
}

static inline float MAX(float a, float b, float c)
{
   return MAX(MAX(a,b),c);
}


// Scatter the ray off a surface using Russian Roulette to determine
// the scatter method.
tlRay::tlScatterMethod
tlRay::Scatter( tlRay &scatteredRay, const tlTable<tlShader *> &shaders ) const
{
   tlScatterMethod result;
   tlPoint normal = intersectedTriangle->CalcFaceNormal( );   

   float dirDotNormal = DotProd(direction,normal);

   if( dirDotNormal >= 0.0f )
   {
      return eRemoved; // The face normal is probably backwards.
   }

   tlSimpleShader *currentShader = NULL;
   int i;
   for( i = 0; i < shaders.Count(); i++ )
   {
      if( ::strcmp( shaders[i]->GetName(), intersectedTriangle->GetMaterial() ) == 0 )
      {
         if( strcmp( shaders[i]->GetShaderType() , "simple" ) == 0 ) 
         {
            currentShader = (tlSimpleShader*)( shaders[i] );
            break;
         }
      }
   }
   if( NULL == currentShader )
   {
      return eRemoved;
   }

   // Get reflection attributes from surface.

   tlColour diffuseReflectance;
   GetIntersectedDiffuseColour( &diffuseReflectance, shaders );
   // Hack to deal with spectral intensity changes in RGB space.
   // The maxDiffReflectance is chosen on the basis of scatteredIntensity rather
   // than simply using the maximum diffuseReflectance.
   tlColour scatteredIntensity( colour * diffuseReflectance );
   float maxScatteredIntensity;
   float maxDiffReflectance;
   if( scatteredIntensity.red > scatteredIntensity.green )
   {
      maxDiffReflectance = diffuseReflectance.red;
      maxScatteredIntensity = scatteredIntensity.red;
   }
   else
   {
      maxDiffReflectance = diffuseReflectance.green;
      maxScatteredIntensity = scatteredIntensity.green;
   }
   // if( scatteredIntensity.blue > maxDiffReflectance )
   if( scatteredIntensity.blue > maxScatteredIntensity )
   {
      maxDiffReflectance = diffuseReflectance.blue;
      maxScatteredIntensity = scatteredIntensity.blue;
   }

   if( maxScatteredIntensity <= 0.0f )
   {
      result = eAbsorb;
      return result;
   }
   //if( maxScatteredIntensity > 1.0f )
   //{
   //    maxScatteredIntensity = 1.0f;
   //}
   assert( maxScatteredIntensity <= 1.0f );
   // Now scale the intensity to normalize max channel to 1.
   tlColour normalizedScatteredIntensity( scatteredIntensity * ( 1.0f / maxScatteredIntensity ) );

   float absorb    = 1.0f - maxScatteredIntensity;
   float diffuse   = 1.0f;
   float reflect   = diffuse + 0.0f;
   float transmit  = reflect + 0.0f;

   float action = (float)::rand() / (float)RAND_MAX;
   if( action <= absorb )
   {
      result = eAbsorb;
   }
   else if( action <= diffuse )
   {

      float r1 = (float)::rand() / (float)RAND_MAX;
      float r2 = (float)::rand() / (float)RAND_MAX;

      float tmp1 = TWOPI * r1;
      float tmp2 = ::sqrtf( 1.0f - r2 );
      // Generate random direction on unit hemisphere (local surface normal +y-axis) with
      // distribution cos( theta ) / PI.  This is the light scattering property of a diffuse
      // surface.
      tlPoint dir( ::cosf( tmp1 ) * tmp2, ::sqrtf( r2 ) , ::sinf( tmp1 ) * tmp2);
      tlPoint newDir( dir ); // This will be dir tranformed to world space.
      tlPoint u( 1.0f, 0.0f, 0.0f ), v( 0.0f, 0.0f, 1.0f ); // new coordinate system is (u, normal, v).
      const float MAX_SAFE = 0.9999f; // Limit of safe y values to rotate.
      if( fabsf( normal[1] ) < MAX_SAFE )
      {
         // u = ::Normalize( ::CrossProd( normal, tlPoint( 0.0f, 1.0f, 0.0f ) ) );
         u = ::Normalize( tlPoint( -normal.z, 0.0f, normal.x ) ); // Optimized version of above
         v = ::Normalize( ::CrossProd( u, normal ) );
         for( i = 0; i < 3; i++ )
         {
            newDir[i] = dir[0] * u[i] + dir[1] * normal[i] + dir[2] * v[i];
         }
      }
      else if( normal[1] < -MAX_SAFE )  // Too close to neg. y-axis, Assume it is y-axis.
      {
         // newDir[0] is already correct
         newDir[1] *= -1.0f;
         newDir[2] *= -1.0f;
      }
      // else if normal very closely alligned to y-axis, leave alone.

      // Should the new just inherit this ray's colour?
      tlPoint  newPosition = end + newDir * 0.001f;
      scatteredRay = tlRay( newPosition, newDir, normalizedScatteredIntensity, Infinite );

      result = eDiffuse;
   }
   else if( action <= reflect )
   {
      tlPoint newDir = direction + normal * ( -2.0f * dirDotNormal );

      tlPoint newPosition = end + newDir * 0.001f;
      tlColour newColour = colour; // Assume non-coloured reflection.
      scatteredRay = tlRay( newPosition, newDir, colour, Infinite );

      result = eReflect;
   }
   else if( action <= transmit )
   {
      // result = eTransmit;  Not yet available
      result = eRemoved;
   }
   else
   {
      fprintf(stderr, "Unknown scatter request in tlRay::Scatter()\n");
      result = eRemoved;
   }
   

   return result; 
}

