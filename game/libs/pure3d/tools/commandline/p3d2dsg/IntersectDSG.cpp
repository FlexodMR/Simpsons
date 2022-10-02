//========================================================================
// Copyright (C) 2002 Radical Entertainment Ltd.  All rights reserved.
//
// File:        IntersectDSG.cpp
//
// Description: Implementation for IntersectDSG class.
//
// History:     Implemented	                         --Devin [5/6/2002]
//========================================================================

//========================================
// System Includes
//========================================
//#include <p3d/geometry.hpp>
//#include <p3d/primgroup.hpp>
//#include <p3d/vertexlist.hpp>
//#include <raddebug.hpp>

//========================================
// Project Includes
//========================================
#include "IntersectDSG.h"

//************************************************************************
//
// Global Data, Local Data, Local Classes
//
//************************************************************************

//************************************************************************
//
// Public Member Functions : IntersectDSG Interface
//
//************************************************************************
//========================================================================
// IntersectDSG::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//========================================================================
IntersectDSG::IntersectDSG( tGeometry* ipGeometry )
{
   GenIDSG(ipGeometry);
}
//========================================================================
// IntersectDSG::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//========================================================================
IntersectDSG::~IntersectDSG()
{
}
//========================================================================
// IntersectDSG::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//========================================================================
void IntersectDSG::Display()
{
   //Currently unsupported function. Contact Devin.
   rAssert(false);
}

//========================================================================
// IntersectDSG::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//========================================================================
const rmt::Vector& IntersectDSG::rPosition()
{
   return mPosn;
}
//========================================================================
// IntersectDSG::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//========================================================================
rmt::Vector* IntersectDSG::pPosition()
{
   return &mPosn;
}
//========================================================================
// IntersectDSG::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//========================================================================
void IntersectDSG::GetPosition( rmt::Vector* ipPosn )
{
   *ipPosn = mPosn;
}

//========================================================================
// IntersectDSG::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//========================================================================
float IntersectDSG::mTri
( 
   int inTri, 
   rmt::Vector* opTriPts, 
   rmt::Vector& orTriNorm, 
   rmt::Vector& orTriCtr 
)
{
    if( mTriIndices.mUseSize > 0 )
    {
        rAssert(mTriIndices.IsSetUp());

        *opTriPts      = mTriPts[mTriIndices[inTri*3]];
        *(opTriPts+1)  = mTriPts[mTriIndices[inTri*3+1]];
        *(opTriPts+2)  = mTriPts[mTriIndices[inTri*3+2]];

        orTriNorm = mTriNorms[inTri];
        orTriCtr  = mTriCentroids[inTri];
        return mTriRadius[inTri];
    }
    else
    {
        rAssert(mTriPts.IsSetUp());

        *opTriPts      = mTriPts[inTri*3];
        *(opTriPts+1)  = mTriPts[inTri*3+1];
        *(opTriPts+2)  = mTriPts[inTri*3+2];

        orTriNorm = mTriNorms[inTri];
        orTriCtr  = mTriCentroids[inTri];
        return mTriRadius[inTri];
    }

}
//========================================================================
// IntersectDSG::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//========================================================================
int IntersectDSG::nTris()
{
    if( mTriIndices.mUseSize > 0 )
    {
        rAssert(mTriIndices.IsSetUp());

        return mTriIndices.mUseSize/3;   
    }
    else
    {
        rAssert(mTriPts.IsSetUp());

        return mTriPts.mUseSize / 3;
    }
}
//========================================================================
// IntersectDSG::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//========================================================================
void IntersectDSG::GetBoundingBox(rmt::Box3D* box)
{
   *box = mBox3D;
}
//========================================================================
// IntersectDSG::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//========================================================================
void IntersectDSG::GetBoundingSphere(rmt::Sphere* sphere)
{
   *sphere = mSphere;
}
//========================================================================
// IntersectDSG::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//========================================================================
void IntersectDSG::SetBoundingBox
(  
   float x1, float y1, float z1,
   float x2, float y2, float z2
)
{
   mBox3D.low.Set(x1,y1,z1);
   mBox3D.high.Set(x2,y2,z2);

   mPosn.Sub(mBox3D.high, mBox3D.low);
   mPosn *= 0.5f;
   mPosn.Add(mBox3D.low);
}
//========================================================================
// IntersectDSG::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//========================================================================
void IntersectDSG::SetBoundingSphere(float x, float y, float z, float radius)
{
   mSphere.centre.Set(x,y,z);
   mSphere.radius = radius;      

   mPosn.Set(x,y,z);
}
//========================================================================
// IntersectDSG::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//========================================================================
int IntersectDSG::GetNumPrimGroup()
{
   return mnPrimGroups;
}

//************************************************************************
//
// Protected Member Functions : IntersectDSG 
//
//************************************************************************
//========================================================================
// IntersectDSG::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//========================================================================
void IntersectDSG::GenIDSG( tGeometry* ipGeometry )
{
   int i;

   ipGeometry->GetBoundingBox( &mBox3D );
   ipGeometry->GetBoundingSphere( &mSphere );

   SetUID(ipGeometry->GetUID());
   CopyName(ipGeometry);
   mnPrimGroups = ipGeometry->GetNumPrimGroup();

   for( i=0; i<mnPrimGroups; i++ )
   {
      switch( ipGeometry->GetPrimGroup(i)->GetPrimType() ) 
      {
      case PDDI_PRIM_TRIANGLES:
         PreParseTris((tPrimGroupStreamed*)ipGeometry->GetPrimGroup(i));
      	break;
      case PDDI_PRIM_TRISTRIP:
         PreParseTriStrips((tPrimGroupStreamed*)ipGeometry->GetPrimGroup(i));
      	break;
      default:
         rAssert(false);
         break;
      }
   }

   DoAllAllocs();

//   for( int i=ipGeometry->GetNumPrimGroup()-1; i>-1; i-- )
   for( i=0; i<mnPrimGroups; i++ )
   {
      switch( ipGeometry->GetPrimGroup(i)->GetPrimType() ) 
      {
      case PDDI_PRIM_TRIANGLES:
         ParseTris((tPrimGroupStreamed*)ipGeometry->GetPrimGroup(i));
      	break;
      case PDDI_PRIM_TRISTRIP:
         ParseTriStrips((tPrimGroupStreamed*)ipGeometry->GetPrimGroup(i));
      	break;
      default:
         rAssert(false);
         break;
      }
   }
   CalcAllFields();
}
//========================================================================
// IntersectDSG::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//========================================================================
void IntersectDSG::PreParseTris( tPrimGroupStreamed* ipPrimGroup )
{
    int n = ipPrimGroup->GetVertexCount();
    mTriPts.Reserve(n); 
    int m = ipPrimGroup->GetNumIndices();

    // don't reserve indices if this is de-indexed geometry
    if (m > 0)
    {
        mTriIndices.Reserve(m);
        m=m/3;
        mTriNorms.Reserve(m);
        mTriCentroids.Reserve(m);
        mTriRadius.Reserve(m);
    }
    else
    {
        n=n/3;
        mTriNorms.Reserve(n);
        mTriCentroids.Reserve(n);
        mTriRadius.Reserve(n);
    }

}
//========================================================================
// IntersectDSG::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//========================================================================
void IntersectDSG::PreParseTriStrips( tPrimGroupStreamed* ipPrimGroup )
{
   //Currently unsupported feature; contact Devin
   rAssert(false);
}
//========================================================================
// IntersectDSG::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//========================================================================
void IntersectDSG::DoAllAllocs()
{
   mTriIndices.Allocate();
   mTriPts.Allocate(); 
   mTriNorms.Allocate();
   mTriCentroids.Allocate();
   mTriRadius.Allocate();
}

//========================================================================
// IntersectDSG::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//========================================================================
void IntersectDSG::ParseTris( tPrimGroupStreamed* ipPrimGroup )
{
    int nVerts = ipPrimGroup->GetVertexCount();
    int nStart = mTriPts.mUseSize;

    //mTriPts.AddUse(nVerts);

    rmt::Vector* pVerts = ipPrimGroup->GetVertexList()->GetPositions();


    //memcpy(mTriPts.mpData+nStart, pVerts, sizeof(rmt::Vector)*nVerts);
    for( int i=0; i<nVerts; i++ )
    {
        mTriPts.Add(*(pVerts+i));
    }
    //////////////////////////////////////////////////////////////////////////
    int nIndices = ipPrimGroup->GetNumIndices();
    if( nIndices > 0 )
    {
        rAssert(nStart+nVerts<=mTriIndices.mSize);

        //      nStart = mTriIndices.mUseSize;
        //      mTriIndices.AddUse(nVerts);

        unsigned short* pIndices = ipPrimGroup->GetIndices();

        rAssert(nStart+nIndices<=mTriIndices.mSize);

        //      memcpy(mTriIndices.mpData+nStart, pIndices, sizeof(unsigned short)*nVerts);
        //      for( int i=nVerts-1; i>-1; i-- )
        for( int i=0; i<nIndices; i++ )
        {
            unsigned short FuckU_MS = (*(pIndices+i))+(nStart);
            mTriIndices.Add( FuckU_MS );
        }

    }
}
//========================================================================
// IntersectDSG::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//========================================================================
void IntersectDSG::ParseTriStrips( tPrimGroupStreamed* ipPrimGroup )
{
   //Currently unsupported feature; contact Devin
   rAssert(false);
}
//========================================================================
// IntersectDSG::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//======================================================================== 
void IntersectDSG::CalcAllFields()
{
   rmt::Vector tmpA, tmpB;
   rmt::Vector *pPt0, *pPt1, *pPt2;

   if(mTriIndices.mUseSize > 0) //Indexed Geometry
   {
      mTriNorms.AddUse(    mTriIndices.mUseSize/3);
      mTriCentroids.AddUse(mTriIndices.mUseSize/3);
      mTriRadius.AddUse(   mTriIndices.mUseSize/3);

//      for( int i=mTriIndices.mUseSize-1; i>-1; i-=3 )
      for( int i=0; i<mTriIndices.mUseSize; i+=3 )
      {
         pPt0 = &mTriPts[mTriIndices[i]];
         pPt1 = &mTriPts[mTriIndices[i+1]];
         pPt2 = &mTriPts[mTriIndices[i+2]];

         tmpA.Sub( *pPt1, *pPt0 );
         tmpB.Sub( *pPt2, *pPt0 );

         mTriNorms[i/3].CrossProduct( tmpA, tmpB );
         mTriNorms[i/3].Normalize();
/*
         if( mTriNorms[i/3].y < 0.1f )
         {
            rDebugPrintf("Warning: -y in Terrain Intersect Normal\n");
            mTriNorms[i/3].Scale(-1.0f);
//            mTriNorms[i/3].Set(0.0f,1.0f,0.0f);
         }
  */       
         tmpA.Add( *pPt0, *pPt1);
         tmpA.Add( *pPt2 );
         tmpA.Scale( 0.33333333f );

         mTriCentroids[i/3] = tmpA;

         tmpA.Sub( *pPt2, tmpA ); 
         tmpB.Sub( *pPt1, mTriCentroids[i/3] ); 

         if( tmpB.MagnitudeSqr() > tmpA.MagnitudeSqr() )
            tmpA = tmpB;

         tmpB.Sub( *pPt0, mTriCentroids[i/3] );

         if( tmpB.MagnitudeSqr() > tmpA.MagnitudeSqr() )
            tmpA = tmpB;

         mTriRadius[i/3] = tmpA.Magnitude();
      }
   }
   else //De-indexed Geometry
   {
      mTriNorms.AddUse(    mTriPts.mUseSize/3);
      mTriCentroids.AddUse(mTriPts.mUseSize/3);
      mTriRadius.AddUse(   mTriPts.mUseSize/3);

      for( int i=0; i < mTriPts.mUseSize; i += 3 )
      {
         pPt0 = &mTriPts[i];
         pPt1 = &mTriPts[i+1];
         pPt2 = &mTriPts[i+2];

         tmpA.Sub( *pPt1, *pPt0 );
         tmpB.Sub( *pPt2, *pPt0 );

         mTriNorms[i/3].CrossProduct( tmpA, tmpB );
         mTriNorms[i/3].Normalize();

         tmpA.Add( *pPt0, *pPt1);
         tmpA.Add( *pPt2 );
         tmpA.Scale( 0.33333333f );

         mTriCentroids[i/3] = tmpA;

         tmpA.Sub( *pPt2, tmpA ); 
         tmpB.Sub( *pPt1, mTriCentroids[i/3] ); 

         if( tmpB.MagnitudeSqr() > tmpA.MagnitudeSqr() )
            tmpA = tmpB;

         tmpB.Sub( *pPt0, mTriCentroids[i/3] );

         if( tmpB.MagnitudeSqr() > tmpA.MagnitudeSqr() )
            tmpA = tmpB;

         mTriRadius[i/3] = tmpA.Magnitude();

         
/*         tmpA.Sub( mTriPts[i+1], mTriPts[i] );
         tmpB.Sub( mTriPts[i+2], mTriPts[i] );

         mTriNorms[i/3].CrossProduct( tmpA, tmpB );

         tmpA.Add( mTriPts[i], mTriPts[i+1] );
         tmpA.Add( mTriPts[i+2] );
         tmpA.Scale( 0.33333333f );

         mTriCentroids[i/3] = tmpA;

         tmpA.Sub( mTriPts[i+2], tmpA );
         tmpB.Sub( mTriPts[i+1], mTriCentroids[i/3] );

         if( tmpB.MagnitudeSqr() < tmpA.MagnitudeSqr() )
            tmpA = tmpB;

         tmpB.Sub( mTriPts[i], mTriCentroids[i/3] );

         if( tmpB.MagnitudeSqr() < tmpA.MagnitudeSqr() )
            tmpA = tmpB;

         mTriRadius[i/3] = tmpA.MagnitudeSqr();*/
      }
   }
}

//************************************************************************
//
// Private Member Functions : IntersectDSG 
//
//************************************************************************
//========================================================================
// IntersectDSG::
//========================================================================
//
// Description: 
//
// Parameters:  None.
//
// Return:      None.
//
// Constraints: None.
//
//========================================================================
IntersectDSG::IntersectDSG()
{
   rAssert(false);
}
