/*===========================================================================
    File:: tlTriMeshIntersect.cpp

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlTriMeshIntersect.hpp"
#include <assert.h>
#include "tlRay.hpp"
#include "tlTriangleIntersect.hpp"

tlTriMeshIntersect::tlTriMeshIntersect() : tlTriMesh()
{
}

tlTriMeshIntersect::~tlTriMeshIntersect()
{

}


tlTriMeshIntersect::tlTriMeshIntersect( const tlPrimGroupMesh& mesh, const tlTriangleFactory* factory) :
        tlTriMesh(mesh, factory)
{
    
    for(int i = 0; i < faces.Count(); i++){
        tlTriangleIntersect* tri = dynamic_cast<tlTriangleIntersect*>(faces[i]);
        
        tri->ComputeIntersectData( );
    }

}

tlTriMeshIntersect::tlTriMeshIntersect( tlPrimGroup * mesh, const tlTriangleFactory* factory) :
        tlTriMesh(mesh, factory)
{
    
    for(int i = 0; i < faces.Count(); i++){
        tlTriangleIntersect* tri = dynamic_cast<tlTriangleIntersect*>(faces[i]);
        
        tri->ComputeIntersectData( );
    }

}
//---------------------------------------------------------------------------------
//          Tested if a ray intersect with the trimesh
//          and return the intersection point closest 
//          to the start point of the ray along its direction
//---------------------------------------------------------------------------------
bool
tlTriMeshIntersect::Intersect( tlRay& ray, tlPoint & intersect )
{
   // test on bounding sphere first
   tlRay infiniteRay(ray);
   infiniteRay.Reset();
    if( !bsphere.Intersect( infiniteRay, intersect ) )
        return false;
 
    //further optimization should be done for testing on bounding box
    //if the number of triangles is above a threshold

   float closest = ray.Length();         //record the closest intersection of the ray with the trimesh
   int   closestIndex = -1;
   const float orignalLength = ray.Length();

   for(int i = 0; i < faces.Count(); i++)
   {
      tlTriangleIntersect* tri = dynamic_cast<tlTriangleIntersect*>(faces[i]);
      
      float maxdist = orignalLength;
      if(tri->Intersect(ray, 0.0f, maxdist))  // maxdist is updated upon success.
      {
          if( maxdist < closest || closest < 0. )
          {
              closest = maxdist;                  
              closestIndex = i;
          }
      }
   }

   if( closestIndex != -1 ){
       intersect = ray.Start( ) + closest*ray.Direction( );
       ray.SetIntersection( closest, dynamic_cast<tlTriangle*>(faces[closestIndex]) );
       return true;
   }
   else
       return false;
}

//---------------------------------------------------------------------------------
//          Tested if a ray intersect with the trimesh
//          and return the intersection point closest to 
//          the start point of the ray along its direction
//          ignore the triangle marked as "mark"
//---------------------------------------------------------------------------------
bool
tlTriMeshIntersect::Intersect( tlRay& ray, tlPoint &intersect,  int mark)
{
    // test on bounding sphere first
    if( !bsphere.Intersect( ray, intersect ) )
        return false;

   float closest = -1.;         //record the closest intersection of the ray with the trimesh

    for(int i = 0; i < faces.Count(); i++){

        tlTriangleIntersect* tri = dynamic_cast<tlTriangleIntersect*>(faces[i]);

        //do not check the intersection with the marked triangle
        if( tri->GetMark( ) == mark )
          continue;
        
        float maxdist = ray.Length();
        if(tri->Intersect(ray, 0.0f, maxdist)){
             if( maxdist > 0. )
                  return true;                                
        }
    }

    return false;
}

//---------------------------------------------------------------------------------
//          Tested if a ray intersect with the trimesh
//          no intersection point is returned
//---------------------------------------------------------------------------------
bool tlTriMeshIntersect::Intersect( const tlRay& ray )
{
   // test on bounding sphere first
    tlPoint intersect;

    if( !bsphere.Intersect( ray, intersect ) )
        return false;
 
   //further optimization should be done for testing on bounding box
   //if the number of triangles is above a threshold


   for(int i = 0; i < faces.Count(); i++){

      tlTriangleIntersect* tri = dynamic_cast<tlTriangleIntersect*>(faces[i]);
      
      float maxdist = ray.Length();
      if(tri->Intersect(ray, 0.0f, maxdist)){
          if( maxdist > 0. )
              return true;                                
      }
   }

   return false;
}

//---------------------------------------------------------------------------------
//          Tested if a ray intersect with the trimesh
//          no intersection point is returned
//          ignore the triangle marked as "mark"
//---------------------------------------------------------------------------------
bool tlTriMeshIntersect::Intersect( const tlRay& ray, int mark )
{
    tlPoint intersect;

    // test on bounding sphere first
    if( !bsphere.Intersect( ray, intersect ) )
        return false;

   for(int i = 0; i < faces.Count(); i++){

      tlTriangleIntersect* tri = dynamic_cast<tlTriangleIntersect*>(faces[i]);

      //do not check the intersection with the marked triangle
      if( tri->GetMark( ) == mark )
          continue;
      
      float maxdist = ray.Length();
      if(tri->Intersect(ray, 0.0f, maxdist)){
           if( maxdist > 0.  )
              return true;
      }
   }

   return false;
}

void tlTriMeshIntersect::MarkTriangle( tlTriangle *tri, int mark )
{
     for( int i = 0; i < faces.Count( ); i++ ){
          if( (*faces[ i ]).CompareCoord( *tri ) == 0 ){
                faces[ i ]->Mark( mark );
                return;
          }
     }
}

