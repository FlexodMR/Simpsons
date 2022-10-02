#ifndef __IntersectDSG_H__
#define __IntersectDSG_H__

//========================================================================
// Copyright (C) 2002 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   IntersectDSG
//
// Description: The IntersectDSG does STUFF
//
// History:     + Initial Implementation		      -- Devin [2002/05/06]
//
//========================================================================

//=================================================
// System Includes
//=================================================
//#include <p3d/p3dtypes.hpp>
//#include <p3d/geometry.hpp>
//#include <p3d/primgroup.hpp>

//=================================================
// Project Includes
//=================================================
//#include <render/DSG/IEntityDSG.h>
//#include <render/Culling/ReserveArray.h>

//========================================================================
//
// Synopsis:   The IntersectDSG; Synopsis by Inspection.
//
//========================================================================
class IntersectDSG //: public IEntityDSG 
{
public:
   IntersectDSG( tGeometry* ipGeometry );
   ~IntersectDSG();
   
   void Display();

   float mTri( int inTri, rmt::Vector* opTriPts, rmt::Vector& orTriNorm, 
                          rmt::Vector& orTriCtr );
   int nTris();

   virtual void GetBoundingBox(rmt::Box3D* box);
   virtual void GetBoundingSphere(rmt::Sphere* sphere);
   virtual void SetBoundingBox(  float x1, float y1, float z1,
                                 float x2, float y2, float z2);
   virtual void SetBoundingSphere(float x, float y, float z, float radius);
   
   virtual rmt::Vector*       pPosition();
   virtual const rmt::Vector& rPosition();
   virtual void GetPosition( rmt::Vector* ipPosn );   

   virtual int  GetNumPrimGroup();
protected:
   void GenIDSG( tGeometry* ipGeometry );

   void PreParseTris( tPrimGroupStreamed* ipPrimGroup );
   void PreParseTriStrips( tPrimGroupStreamed* ipPrimGroup );
   void DoAllAllocs();
   void ParseTris( tPrimGroupStreamed* ipPrimGroup );
   void ParseTriStrips( tPrimGroupStreamed* ipPrimGroup );
   void CalcAllFields();

   ReserveArray<unsigned short>  mTriIndices;
   ReserveArray<rmt::Vector>     mTriPts;       //Separated Triangles
   ReserveArray<rmt::Vector>     mTriNorms;     //Triangle Normals
   ReserveArray<rmt::Vector>     mTriCentroids; //Triangle Centroids
   ReserveArray<float>           mTriRadius;    //Triangle Radius; the approximate 
                                                // length of the furthest pt from the centroid
   int mnPrimGroups;

   rmt::Box3D  mBox3D;
   rmt::Sphere mSphere;
   rmt::Vector mPosn;
private:
   IntersectDSG();
};

#endif
