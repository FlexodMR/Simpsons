#ifndef __SPATIAL_TREE_ITER_H__
#define __SPATIAL_TREE_ITER_H__

//#include <p3d/version.hpp>

#include "SpatialTree.h"
#include "ISpatialProxy.h"
#include "Bounds.h"
#include "BoxPts.h"
#include "FixedArray.h"

//#include <render/culling/../../profiler/profiler.hpp>

typedef int tMark;

 class SpatialTreeIter
{
public:
   SpatialTreeIter();
   ~SpatialTreeIter();

   void SetToRoot( SpatialTree& irTree );
   void Clear();

   //Allocation&Placement Navigation
/*
   void              Place(          ISpatialProxyAA& irTVolume, T*  ipT );
   void              ReservePlaceT(  ISpatialProxyAA& irTVolume, int iCount );
   void              Place(          ISpatialProxyAA& irTVolume, D*  ipD );
   void              ReservePlaceD(  ISpatialProxyAA& irTVolume, int iCount );
   void              Place(          ISpatialProxyAA& irIVolume, I*  ipI );
   void              ReservePlaceI(  ISpatialProxyAA& irIVolume, int iCount );
   void              AllocateAllReservations();
*/

   //Node Retrieval Methods
   SpatialNode&   rSeekNode(     ISpatialProxyAA& irTVolume, 
                                        int              iCurNodeOffset=0 );
   SpatialNode&   rIthNode(      int              iIth );
   int                   NumNodes();

   void                  SeekSubNodes(  ISpatialProxyAA& irTVolume,
                                        UseArray<int>&   orNodeOffsets, 
                                        int              iCurNodeOffset=0 );
   void                  SeekAllNodes(  ISpatialProxyAA& irTVolume,
                                        UseArray<int>&   orNodeOffsets, 
                                        int              iCurNodeOffset=0 );
   void                  SetUpNodeList( UseArray<int>&   orNodeOffsets );

   //Iteration Initialization
   void              MarkAll( ISpatialProxyAA& irDesiredVolume, tMark iMark );
   void              MarkTree( tMark iMark );
   void              AndTree(  tMark iMark );
   void              OrTree(   tMark iMark );

   //Iteration Navigation
   SpatialNode&   rSeekLeaf( Vector3f& irPt );

   void              SetIterFilter( tMark iMark );
   void              MoveToFirst();
   
   SpatialNode&   rCurrent();
   SpatialNode*   pCurrent();

   void              MoveToNext();
   SpatialNode&   rMoveToNext();
   SpatialNode*   pMoveToNext();
   
   bool              NotDone();
   bool              IsCurrentLeaf();

   //Debug Functionality
//   void              DisplayBoundingBox();
//   void              DisplayCurrentBoundingBox( const tColour& irColour );
   bool              IsSetUp();
   BoxPts*           CurrentBBox();
   
   BoxPts&           rBBox();
   void              BuildBBoxes( BoxPts iBoxPts, int iCurNodeOffset = 0);

   enum 
   {
      msFilterAll = 0xFFFFFFFF
   };

protected:
   ContiguousBinNode< SpatialNode >* mpRootNode;
   ContiguousBinNode< SpatialNode >* mpCurNode;
   
   int mCurNodeOffset;

   FixedArray<tMark>   mNodeMarks;
   tMark               mCurMarkFilter;


   //Bounding Box is left as series of defining points to make iteration simpler
   BoxPts mBBox;


   SpatialNode& rSeekLeaf( int iCurNodeOffset, Vector3f& irPt );

   void MarkAll( int                ipCurNode,
                 BoxPts&            irBoxPts, 
                 ISpatialProxyAA&   irDesiredVolume, 
                 tMark              iMark );

   void MarkSubTree( int   iCurNodeOffset,
                     tMark iMark );

/*
   void Place(           int iCurNodeOffset, ISpatialProxyAA& irTVolume, T*  ipT );
   void ReservePlaceT(   int iCurNodeOffset, ISpatialProxyAA& irTVolume, int iCount );
   void Place(           int iCurNodeOffset, ISpatialProxyAA& irTVolume, D*  ipD );
   void ReservePlaceD(   int iCurNodeOffset, ISpatialProxyAA& irTVolume, int iCount );
   void Place(           int iCurNodeOffset, ISpatialProxyAA& irIVolume, I*  ipI );
   void ReservePlaceI(   int iCurNodeOffset, ISpatialProxyAA& irIVolume, int iCount );
*/
   //Debug functionality
//   void DisplayBoundingBox( int iCurNodeOffset, BoxPts& orBBox, tColour colour );
//   void DisplayBoundingBox( BoxPts& irBBox, tColour colour );

};

/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
inline 
SpatialTreeIter::SpatialTreeIter()
:    mpRootNode( NULL )
{
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
inline  
bool SpatialTreeIter::IsSetUp()
{
   return ( mpRootNode != NULL );
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
inline  
SpatialTreeIter::~SpatialTreeIter()
{
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
inline  
void SpatialTreeIter::SetToRoot( SpatialTree& irTree )
{
   mpRootNode = irTree.GetRoot();

   mBBox.SetTo( irTree.GetBounds() );

   mNodeMarks.Allocate( mpRootNode->GetSubTreeSize()+1 );
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
inline  
void SpatialTreeIter::Clear()
{
   mpRootNode  = NULL;
}
//========================================================================
// SpatialTreeIter::
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
inline 
SpatialNode&   SpatialTreeIter::rSeekNode
(
   ISpatialProxyAA& irVolume, 
   int              iCurNodeOffset 
)
{
   ContiguousBinNode< SpatialNode >* pCurNode = (mpRootNode+iCurNodeOffset);

   if( pCurNode->GetSubTreeSize() > 0 )
   {
      float PlaneVolResult = irVolume.CompareTo( pCurNode->mData.mSubDivPlane );

      if( PlaneVolResult > 0.0f ) //The Plane is greater than TVolume in Posn, so TVolume is in the LT Partitiion..
      {
         return rSeekNode( irVolume, iCurNodeOffset + pCurNode->LChildOffset() );
      } 
      else
      {
         if( PlaneVolResult < 0.0f ) //The Plane is less han TVolume in Posn, so TVolume is in the GT Partitiion..
         {
            return rSeekNode( irVolume, iCurNodeOffset + pCurNode->RChildOffset() );
         }
         else //  PlaneVolResult == 0 
         {
            return (pCurNode->mData);
         }
      }
   }
   else
   {
      return (pCurNode->mData);
   }
}
//========================================================================
// SpatialTreeIter::
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
inline 
SpatialNode&   SpatialTreeIter::rIthNode
(
   int              iIth
)
{
   return (mpRootNode+iIth)->mData;
}
//========================================================================
// SpatialTreeIter::
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
inline  
int   SpatialTreeIter::NumNodes
(
)
{
   return (mpRootNode->GetSubTreeSize()+1);
}
//========================================================================
// SpatialTreeIter::
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
inline  
void SpatialTreeIter::SeekSubNodes
( 
   ISpatialProxyAA& irVolume,
   UseArray<int>&   orNodeOffsets,
   int              iCurNodeOffset 
)
{
   ContiguousBinNode< SpatialNode >* pCurNode = (mpRootNode+iCurNodeOffset);

   if( pCurNode->GetSubTreeSize() > 0 )
   {
      float PlaneVolResult = irVolume.CompareTo( pCurNode->mData.mSubDivPlane );

      if( PlaneVolResult > 0.0f ) //The Plane is greater than TVolume in Posn, so TVolume is in the LT Partitiion..
      {
         SeekSubNodes( irVolume, orNodeOffsets, iCurNodeOffset + pCurNode->LChildOffset() );
      } 
      else
      {
         if( PlaneVolResult < 0.0f ) //The Plane is less han TVolume in Posn, so TVolume is in the GT Partitiion..
         {
            SeekSubNodes( irVolume, orNodeOffsets, iCurNodeOffset + pCurNode->RChildOffset() );
         }
         else //  PlaneVolResult == 0 
         {
            //return *pCurNode;
            int max = pCurNode->GetSubTreeSize()+1;
            for(int i=0; i<max; i++, iCurNodeOffset++)
            {
               orNodeOffsets.Add(iCurNodeOffset);
            }
            
         }
      }
   }
   else
   {
      //return *pCurNode;
      orNodeOffsets.Add(iCurNodeOffset);
   }
}

//========================================================================
// SpatialTreeIter::
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
inline  
void SpatialTreeIter::SeekAllNodes
( 
   ISpatialProxyAA& irVolume,
   UseArray<int>&   orNodeOffsets,
   int              iCurNodeOffset 
)
{
   ContiguousBinNode< SpatialNode >* pCurNode = (mpRootNode+iCurNodeOffset);

   if( pCurNode->GetSubTreeSize() > 0 )
   {
      float PlaneVolResult = irVolume.CompareTo( pCurNode->mData.mSubDivPlane );

      if( PlaneVolResult > 0.0f ) //The Plane is greater than TVolume in Posn, so TVolume is in the LT Partitiion..
      {
         orNodeOffsets.Add(iCurNodeOffset);
         SeekAllNodes( irVolume, orNodeOffsets, iCurNodeOffset + pCurNode->LChildOffset() );
      } 
      else
      {
         if( PlaneVolResult < 0.0f ) //The Plane is less han TVolume in Posn, so TVolume is in the GT Partitiion..
         {
            orNodeOffsets.Add(iCurNodeOffset);
            SeekAllNodes( irVolume, orNodeOffsets, iCurNodeOffset + pCurNode->RChildOffset() );
         }
         else //  PlaneVolResult == 0 
         {
            //return *pCurNode;
            int max = pCurNode->GetSubTreeSize()+1;
            for(int i=0; i<max; i++, iCurNodeOffset++)
            {
               orNodeOffsets.Add(iCurNodeOffset);
            }
            
         }
      }
   }
   else
   {
      //return *pCurNode;
      orNodeOffsets.Add(iCurNodeOffset);
   }
}
//========================================================================
// SpatialTreeIter::
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
inline  
void SpatialTreeIter::SetUpNodeList
( 
   UseArray<int>&   orNodeOffsets 
)
{
   orNodeOffsets.Allocate( mpRootNode->GetSubTreeSize()+1 );
}
/*
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
 
void SpatialTreeIter::ReservePlaceD(   ISpatialProxyAA& irDVolume, int iCount)
{
   ReservePlaceD( 0, irDVolume, iCount );   
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
 
void SpatialTreeIter::ReservePlaceD
( 
   int               iCurNodeOffset, 
   ISpatialProxyAA&  irDVolume, 
   int               iCount
)
{
   ContiguousBinNode< SpatialNode >* pCurNode = (mpRootNode+iCurNodeOffset);

   if( pCurNode->GetSubTreeSize() > 0 )
   {
      float PlaneVolResult = irDVolume.CompareTo( pCurNode->mData.mSubDivPlane );

      if( PlaneVolResult > 0.0f ) //The Plane is greater than TVolume in Posn, so TVolume is in the LT Partitiion..
      {
         ReservePlaceD( iCurNodeOffset + pCurNode->LChildOffset(), irDVolume, iCount );
      } 
      else
      {
         if( PlaneVolResult < 0.0f ) //The Plane is less han TVolume in Posn, so TVolume is in the GT Partitiion..
         {
            ReservePlaceD( iCurNodeOffset + pCurNode->RChildOffset(), irDVolume, iCount );
         }
         else //  PlaneVolResult == 0 
         {
            //pCurNode = pCurNode->Parent();
            pCurNode->mData.mDynamicElems.Reserve(iCount);
         }
      }
   }
   else
   {
      pCurNode->mData.mDynamicElems.Reserve(iCount);
   }
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
 
void SpatialTreeIter::ReservePlaceT(   ISpatialProxyAA& irTVolume, int iCount)
{
   ReservePlaceT( 0, irTVolume, iCount );   
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
 
void SpatialTreeIter::ReservePlaceT
( 
   int               iCurNodeOffset, 
   ISpatialProxyAA&  irTVolume, 
   int               iCount
)
{
   ContiguousBinNode< SpatialNode >* pCurNode = (mpRootNode+iCurNodeOffset);

   if( pCurNode->GetSubTreeSize() > 0 )
   {
      float PlaneVolResult = irTVolume.CompareTo( pCurNode->mData.mSubDivPlane );

      if( PlaneVolResult > 0.0f ) //The Plane is greater than TVolume in Posn, so TVolume is in the LT Partitiion..
      {
         ReservePlaceT( iCurNodeOffset + pCurNode->LChildOffset(), irTVolume, iCount );
      } 
      else
      {
         if( PlaneVolResult < 0.0f ) //The Plane is less han TVolume in Posn, so TVolume is in the GT Partitiion..
         {
            ReservePlaceT( iCurNodeOffset + pCurNode->RChildOffset(), irTVolume, iCount );
         }
         else //  PlaneVolResult == 0 
         {
            //pCurNode = pCurNode->Parent();
            pCurNode->mData.mSpatialElems.Reserve(iCount);
         }
      }
   }
   else
   {
      pCurNode->mData.mSpatialElems.Reserve(iCount);
   }
}
*/
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
inline  
SpatialNode& SpatialTreeIter::rSeekLeaf( Vector3f& irPt )
{
   return rSeekLeaf( 0, irPt );
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
inline  
SpatialNode& SpatialTreeIter::rSeekLeaf
( 
   int iCurNodeOffset, 
   Vector3f& irPt 
)
{
   ContiguousBinNode< SpatialNode >* pCurNode = (mpRootNode+iCurNodeOffset);

   if( pCurNode->GetSubTreeSize() > 0 )
   {
      if( irPt[(int)pCurNode->mData.mSubDivPlane.mAxis] < pCurNode->mData.mSubDivPlane.mPosn  )
      {
         return rSeekLeaf( iCurNodeOffset + pCurNode->LChildOffset(), irPt );
      }
      else
      {
         return rSeekLeaf( iCurNodeOffset + pCurNode->RChildOffset(), irPt );
      }
   }
   else
   {
      return pCurNode->mData;
   }
}
/*
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
 
void SpatialTreeIter::ReservePlaceI(   ISpatialProxyAA& irIVolume, int iCount)
{
   ReservePlaceI( 0, irIVolume, iCount );   
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
 
void SpatialTreeIter::ReservePlaceI
( 
   int               iCurNodeOffset, 
   ISpatialProxyAA&  irIVolume, 
   int               iCount
)
{
   ContiguousBinNode< SpatialNode >* pCurNode = (mpRootNode+iCurNodeOffset);

   if( pCurNode->GetSubTreeSize() > 0 )
   {
      float PlaneVolResult = irIVolume.CompareTo( pCurNode->mData.mSubDivPlane );

      if( PlaneVolResult > 0.0f ) //The Plane is greater than TVolume in Posn, so TVolume is in the LT Partitiion..
      {
         ReservePlaceI( iCurNodeOffset + pCurNode->LChildOffset(), irIVolume, iCount );
      } 
      else
      {
         if( PlaneVolResult < 0.0f ) //The Plane is less han TVolume in Posn, so TVolume is in the GT Partitiion..
         {
            ReservePlaceI( iCurNodeOffset + pCurNode->RChildOffset(), irIVolume, iCount );
         }
         else //  PlaneVolResult == 0 
         {
            //pCurNode = pCurNode->Parent();
            pCurNode->mData.mIntersectElems.Reserve(iCount);
         }
      }
   }
   else
   {
      pCurNode->mData.mIntersectElems.Reserve(iCount);
   }
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
 
void SpatialTreeIter::Place(   ISpatialProxyAA& irDVolume,       D* ipD )
{
   Place( 0, irDVolume, ipD );   
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
 
void SpatialTreeIter::Place
( 
   int               iCurNodeOffset, 
   ISpatialProxyAA&  irDVolume, 
   D*                ipD
)
{
   ContiguousBinNode< SpatialNode >* pCurNode = (mpRootNode+iCurNodeOffset);

   if( pCurNode->GetSubTreeSize() > 0 )
   {
      float PlaneVolResult = irDVolume.CompareTo( pCurNode->mData.mSubDivPlane );

      if( PlaneVolResult > 0.0f ) //The Plane is greater than TVolume in Posn, so TVolume is in the LT Partitiion..
      {
         Place( iCurNodeOffset + pCurNode->LChildOffset(), irDVolume, ipD );
      } 
      else
      {
         if( PlaneVolResult < 0.0f ) //The Plane is less han TVolume in Posn, so TVolume is in the GT Partitiion..
         {
            Place( iCurNodeOffset + pCurNode->RChildOffset(), irDVolume, ipD );
         }
         else //  PlaneVolResult == 0 
         {
            //pCurNode = pCurNode->Parent();
            pCurNode->mData.mDynamicElems.Add(ipD);
         }
      }
   }
   else
   {
      pCurNode->mData.mDynamicElems.Add(ipD);
   }
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
 
void SpatialTreeIter::Place(   ISpatialProxyAA& irTVolume,       T* ipT )
{
   Place( 0, irTVolume, ipT );   
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
 
void SpatialTreeIter::Place
( 
   int               iCurNodeOffset, 
   ISpatialProxyAA&  irTVolume, 
   T*                ipT
)
{
   ContiguousBinNode< SpatialNode >* pCurNode = (mpRootNode+iCurNodeOffset);

   if( pCurNode->GetSubTreeSize() > 0 )
   {
      float PlaneVolResult = irTVolume.CompareTo( pCurNode->mData.mSubDivPlane );

      if( PlaneVolResult > 0.0f ) //The Plane is greater than TVolume in Posn, so TVolume is in the LT Partitiion..
      {
         Place( iCurNodeOffset + pCurNode->LChildOffset(), irTVolume, ipT );
      } 
      else
      {
         if( PlaneVolResult < 0.0f ) //The Plane is less han TVolume in Posn, so TVolume is in the GT Partitiion..
         {
            Place( iCurNodeOffset + pCurNode->RChildOffset(), irTVolume, ipT );
         }
         else //  PlaneVolResult == 0 
         {
            //pCurNode = pCurNode->Parent();
            pCurNode->mData.mSpatialElems.Add(ipT);
         }
      }
   }
   else
   {
      pCurNode->mData.mSpatialElems.Add(ipT);
   }
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
 
void SpatialTreeIter::Place(   ISpatialProxyAA& irIVolume,       I* ipI )
{
   Place( 0, irIVolume, ipI );   
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
 
void SpatialTreeIter::Place
( 
   int               iCurNodeOffset, 
   ISpatialProxyAA&  irIVolume, 
   I*                ipI
)
{
   ContiguousBinNode< SpatialNode >* pCurNode = (mpRootNode+iCurNodeOffset);

   if( pCurNode->GetSubTreeSize() > 0 )
   {
      float PlaneVolResult = irIVolume.CompareTo( pCurNode->mData.mSubDivPlane );

      if( PlaneVolResult > 0.0f ) //The Plane is greater than TVolume in Posn, so TVolume is in the LT Partitiion..
      {
         Place( iCurNodeOffset + pCurNode->LChildOffset(), irIVolume, ipI );
      } 
      else
      {
         if( PlaneVolResult < 0.0f ) //The Plane is less han TVolume in Posn, so TVolume is in the GT Partitiion..
         {
            Place( iCurNodeOffset + pCurNode->RChildOffset(), irIVolume, ipI );
         }
         else //  PlaneVolResult == 0 
         {
            //pCurNode = pCurNode->Parent();
            pCurNode->mData.mIntersectElems.Add(ipI);
         }
      }
   }
   else
   {
      pCurNode->mData.mIntersectElems.Add(ipI);
   }
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
 
void SpatialTreeIter::AllocateAllReservations()
{
   int TreeSize = mpRootNode->GetSubTreeSize();

   for( int i=0; i<=TreeSize; i++ )
   {
      (mpRootNode+i)->mData.mSpatialElems.Allocate();
      (mpRootNode+i)->mData.mDynamicElems.Allocate();
      (mpRootNode+i)->mData.mIntersectElems.Allocate();
   }
}
*/
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
inline  
void SpatialTreeIter::MarkAll( ISpatialProxyAA& irDesiredVolume, tMark iMark )
{
   BoxPts tmpBBox(mBBox);
   MarkAll( 0, tmpBBox, irDesiredVolume, iMark );   
}

/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
inline  
void SpatialTreeIter::MarkAll( int                 iCurNodeOffset, 
                                  BoxPts&             irBoxPts, 
                                  ISpatialProxyAA&    irDesiredVolume, 
                                  tMark               iMark )
{
   ContiguousBinNode< SpatialNode >* pCurNode = (mpRootNode+iCurNodeOffset);

   if( pCurNode->GetSubTreeSize() == 0 ) //if leaf, mark and leave
   {
      mNodeMarks[iCurNodeOffset] |= iMark;
      return;
   }

   if( irBoxPts.TestNotOutside( irDesiredVolume ) < 0.0f ) 
   {
      //if any pt, or the volume defined by said pts of desired volume is in the AABB...
      mNodeMarks[iCurNodeOffset] |= iMark;

      //If all of the pts of the AABB are inside the Desired Volume, 
      //just mark the whole subtree, otherwise recurse

      //BEGIN_PROFILE("Tree Compare")

      int nPtsInside = 0;
      for( int i=0; i<8; i++ )
      {
         if( irDesiredVolume.CompareTo( irBoxPts[i] ) < 0.0f ) 
         {
            //Pt is inside SpatialProxy
            nPtsInside++;
         }
      }

      //END_PROFILE("Tree Compare")

      //debug: make this inclusion threshold a parameter
      //if( nPtsInside > 5 && nPtsInside !=8 )
      //   nPtsInside = 8;

      // if the entire subspace is within the desired volume
      switch( nPtsInside )
      {
      case 8:
         //BEGIN_PROFILE("SubTree Marked")
         mNodeMarks[iCurNodeOffset] |= iMark;
         MarkSubTree( iCurNodeOffset, iMark );
         //END_PROFILE("SubTree Marked")
         break;
       
      default: 
         mNodeMarks[iCurNodeOffset] |= iMark;
         //partial intersection; recurse 
         if( pCurNode->GetSubTreeSize() > 0 )
         {
            //split subspace representation, and recurse
            BoxPts BoxPtsLT;
            BoxPtsLT = irBoxPts;

            BoxPtsLT.CutOffGT( pCurNode->mData.mSubDivPlane );

            MarkAll( iCurNodeOffset + pCurNode->LChildOffset(), BoxPtsLT, irDesiredVolume, iMark );   
      
            irBoxPts.CutOffLT( pCurNode->mData.mSubDivPlane );
      
            MarkAll( iCurNodeOffset + pCurNode->RChildOffset(), irBoxPts, irDesiredVolume, iMark );
         }
         break;

      }
   } //else, no desired volume and AABB don't intersect, therefore do nothing
/*
   int nPtsInside = 0;
   for( int i=0; i<8; i++ )
   {
      if( irDesiredVolume.CompareTo( irBoxPts[i] ) < 0.0f ) 
      {
         //Pt is inside SpatialProxy
         nPtsInside++;
      }
   }

   ContiguousBinNode< SpatialNode >* pCurNode = (mpRootNode+iCurNodeOffset);

   // if the entire subspace is within the desired volume
   switch( nPtsInside )
   {
   case 8:
      mNodeMarks[iCurNodeOffset] = iMark;
      MarkSubTree( iCurNodeOffset, iMark );
      break;

   case 0: 
      //Find out whether the subtree is outside the volume
      //or the subtree envelopes the volume
//      if( irBoxPts.CompareTo( irDesiredVolume.GetPoint() ) < 0.0f )
//      {
//         mNodeMarks[iCurNodeOffset] = iMark;
//         MarkSubTree( iCurNodeOffset, iMark );
//      }
      //TODO: can reuse the code in default by saying if compare fails break (else continue, no break;).

      if( irBoxPts.CompareTo( irDesiredVolume.GetPoint() ) < 0.0f )
      //if( irBoxPts.TestNotOutside( irDesiredVolume ) < 0.0f ) //if any pt, or the volume defined by said pts of desired volume is in the AABB...
      {
         mNodeMarks[iCurNodeOffset] = iMark;

         if( pCurNode->GetSubTreeSize() > 0 )
         {
            //split subspace representation, and recurse
            BoxPts BoxPtsLT;
            BoxPtsLT = irBoxPts;

            BoxPtsLT.CutOffGT( pCurNode->mData.mSubDivPlane );

            MarkAll( iCurNodeOffset + pCurNode->LChildOffset(), BoxPtsLT, irDesiredVolume, iMark );   
      
            irBoxPts.CutOffLT( pCurNode->mData.mSubDivPlane );
      
            MarkAll( iCurNodeOffset + pCurNode->RChildOffset(), irBoxPts, irDesiredVolume, iMark );
         }
      }
      break;


   default: 
      mNodeMarks[iCurNodeOffset] = iMark;
      //partial intersection; recurse 
      if( pCurNode->GetSubTreeSize() > 0 )
      {
         //split subspace representation, and recurse
         BoxPts BoxPtsLT;
         BoxPtsLT = irBoxPts;

         BoxPtsLT.CutOffGT( pCurNode->mData.mSubDivPlane );

         MarkAll( iCurNodeOffset + pCurNode->LChildOffset(), BoxPtsLT, irDesiredVolume, iMark );   
      
         irBoxPts.CutOffLT( pCurNode->mData.mSubDivPlane );
      
         MarkAll( iCurNodeOffset + pCurNode->RChildOffset(), irBoxPts, irDesiredVolume, iMark );
      }
      break;
   }
   */
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
inline  
BoxPts* SpatialTreeIter::CurrentBBox()
{
   return &(mpCurNode->mData.mBBox);
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
/*
 
void SpatialTreeIter::DisplayBoundingBox( )
{
   BoxPts tmpBBox( mBBox );

   DisplayBoundingBox( 0, tmpBBox, tColour(0,255,0) );
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
 
void SpatialTreeIter::DisplayBoundingBox( int iCurNodeOffset, BoxPts& orBBox, tColour colour )
{
   DisplayBoundingBox( orBBox, colour );

   
   ContiguousBinNode< SpatialNode >* pCurNode = (mpRootNode+iCurNodeOffset);

   if( pCurNode->GetSubTreeSize() > 0 )
   {
      //split subspace representation, and recurse
      BoxPts BBoxLT;
      BBoxLT = orBBox;

      BBoxLT.CutOffGT( pCurNode->mData.mSubDivPlane );

      DisplayBoundingBox( iCurNodeOffset + pCurNode->LChildOffset(), BBoxLT, colour );   

      orBBox.CutOffLT( pCurNode->mData.mSubDivPlane );

      DisplayBoundingBox( iCurNodeOffset + pCurNode->RChildOffset(), orBBox, colour );
   }
}
*/
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
inline 
BoxPts& SpatialTreeIter::rBBox()
{
   return mBBox;
}
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
inline 
void SpatialTreeIter::BuildBBoxes( BoxPts iBoxPts, int iCurNodeOffset )
{
   ContiguousBinNode< SpatialNode >* pCurNode = (mpRootNode+iCurNodeOffset);

   pCurNode->mData.mBBox = iBoxPts;

   if( pCurNode->GetSubTreeSize() > 0 )
   {
      iBoxPts.CutOffGT(pCurNode->mData.mSubDivPlane);
      BuildBBoxes(iBoxPts, iCurNodeOffset+pCurNode->LChildOffset());

      iBoxPts = pCurNode->mData.mBBox;
      iBoxPts.CutOffLT(pCurNode->mData.mSubDivPlane);
      BuildBBoxes(iBoxPts, iCurNodeOffset+pCurNode->RChildOffset());
   }
}
/*
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
inline  
void SpatialTreeIter::DisplayCurrentBoundingBox( const tColour& irColour )
{
   DisplayBoundingBox( mpCurNode->mData.mBBox, irColour );
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
inline  
void SpatialTreeIter::DisplayBoundingBox( BoxPts& irBBox, tColour colour )
{
//#if PURE3D_VERSION_MAJOR < 15
//   tShader* testMat = p3d::find<tShader>("p3d_default");
//#endif

//#if PURE3D_VERSION_MAJOR < 15
//   pddiPrimStream* stream = p3d::pddi->BeginPrims(testMat->GetShader(), PDDI_PRIM_LINESTRIP, PDDI_V_C );
//#else
   pddiPrimStream* stream = p3d::pddi->BeginPrims(NULL, PDDI_PRIM_LINESTRIP, PDDI_V_C, 5);
//#endif
   stream->Colour(colour);
   stream->Coord(irBBox.mBounds.mMin.x, irBBox.mBounds.mMin.y, irBBox.mBounds.mMin.z);
   stream->Colour(colour);
   stream->Coord(irBBox.mBounds.mMax.x, irBBox.mBounds.mMin.y, irBBox.mBounds.mMin.z);
   stream->Colour(colour);
   stream->Coord(irBBox.mBounds.mMax.x, irBBox.mBounds.mMax.y, irBBox.mBounds.mMin.z);
   stream->Colour(colour);
   stream->Coord(irBBox.mBounds.mMin.x, irBBox.mBounds.mMax.y, irBBox.mBounds.mMin.z);
   stream->Colour(colour);
   stream->Coord(irBBox.mBounds.mMin.x, irBBox.mBounds.mMin.y, irBBox.mBounds.mMin.z);
   p3d::pddi->EndPrims(stream);

//#if PURE3D_VERSION_MAJOR < 15
//   stream = p3d::pddi->BeginPrims(testMat->GetShader(), PDDI_PRIM_LINESTRIP, PDDI_V_C );
//#else
   stream = p3d::pddi->BeginPrims(NULL, PDDI_PRIM_LINESTRIP, PDDI_V_C, 5);
//#endif
   stream->Colour(colour);
   stream->Coord(irBBox.mBounds.mMax.x, irBBox.mBounds.mMax.y, irBBox.mBounds.mMax.z);
   stream->Colour(colour);
   stream->Coord(irBBox.mBounds.mMin.x, irBBox.mBounds.mMax.y, irBBox.mBounds.mMax.z);
   stream->Colour(colour);
   stream->Coord(irBBox.mBounds.mMin.x, irBBox.mBounds.mMin.y, irBBox.mBounds.mMax.z);
   stream->Colour(colour);
   stream->Coord(irBBox.mBounds.mMax.x, irBBox.mBounds.mMin.y, irBBox.mBounds.mMax.z);
   stream->Colour(colour);
   stream->Coord(irBBox.mBounds.mMax.x, irBBox.mBounds.mMax.y, irBBox.mBounds.mMax.z);
   p3d::pddi->EndPrims(stream);

//#if PURE3D_VERSION_MAJOR < 15
//   stream = p3d::pddi->BeginPrims(testMat->GetShader(), PDDI_PRIM_LINESTRIP, PDDI_V_C );
//#else
   stream = p3d::pddi->BeginPrims(NULL, PDDI_PRIM_LINESTRIP, PDDI_V_C, 5);
//#endif
   stream->Colour(colour);
   stream->Coord(irBBox.mBounds.mMax.x, irBBox.mBounds.mMax.y, irBBox.mBounds.mMax.z);
   stream->Colour(colour);
   stream->Coord(irBBox.mBounds.mMax.x, irBBox.mBounds.mMin.y, irBBox.mBounds.mMax.z);
   stream->Colour(colour);
   stream->Coord(irBBox.mBounds.mMax.x, irBBox.mBounds.mMin.y, irBBox.mBounds.mMin.z);
   stream->Colour(colour);
   stream->Coord(irBBox.mBounds.mMax.x, irBBox.mBounds.mMax.y, irBBox.mBounds.mMin.z);
   stream->Colour(colour);
   stream->Coord(irBBox.mBounds.mMax.x, irBBox.mBounds.mMax.y, irBBox.mBounds.mMax.z);
   p3d::pddi->EndPrims(stream);

//#if PURE3D_VERSION_MAJOR < 15
//   stream = p3d::pddi->BeginPrims(testMat->GetShader(), PDDI_PRIM_LINESTRIP, PDDI_V_C );
//#else
   stream = p3d::pddi->BeginPrims(NULL, PDDI_PRIM_LINESTRIP, PDDI_V_C, 5);
//#endif
   stream->Colour(colour);
   stream->Coord(irBBox.mBounds.mMin.x, irBBox.mBounds.mMax.y, irBBox.mBounds.mMax.z);
   stream->Colour(colour);
   stream->Coord(irBBox.mBounds.mMin.x, irBBox.mBounds.mMin.y, irBBox.mBounds.mMax.z);
   stream->Colour(colour);
   stream->Coord(irBBox.mBounds.mMin.x, irBBox.mBounds.mMin.y, irBBox.mBounds.mMin.z);
   stream->Colour(colour);
   stream->Coord(irBBox.mBounds.mMin.x, irBBox.mBounds.mMax.y, irBBox.mBounds.mMin.z);
   stream->Colour(colour);
   stream->Coord(irBBox.mBounds.mMin.x, irBBox.mBounds.mMax.y, irBBox.mBounds.mMax.z);
   p3d::pddi->EndPrims(stream);
}
*/
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
inline  
void SpatialTreeIter::MarkTree( tMark iMark )
{
   for( int i=mNodeMarks.mSize-1; i>= 0; i-- )
   {
      mNodeMarks[i] = iMark;
   }
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
inline  
void SpatialTreeIter::AndTree(  tMark iMark )
{
   for( int i=mNodeMarks.mSize-1; i>= 0; i-- )
   {
      mNodeMarks[i] &= iMark;
   }
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
inline  
void SpatialTreeIter::OrTree(   tMark iMark )
{
   for( int i=mNodeMarks.mSize-1; i>= 0; i-- )
   {
      mNodeMarks[i] |= iMark;
   }
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
inline 
void SpatialTreeIter::MarkSubTree(  int   iCurNodeOffset,
                                       tMark iMark )
{
   for( int i=mpRootNode->GetSubTreeSize(); i>=iCurNodeOffset; i-- )
   {
      mNodeMarks[i] |= iMark;
   }
/*
   mNodeMarks[iCurNodeOffset] = iMark;
   
   if( (mpRootNode+iCurNodeOffset)->GetSubTreeSize() > 0 )
   {
      int newOffset =  (mpRootNode+iCurNodeOffset)->LChildOffset();
      MarkSubTree( newOffset + iCurNodeOffset, iMark ); 

      newOffset =  (mpRootNode+iCurNodeOffset)->RChildOffset();
      MarkSubTree( newOffset + iCurNodeOffset, iMark ); 
   }
*/
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
inline  
void SpatialTreeIter::SetIterFilter( tMark iMark )
{
   mCurMarkFilter = iMark;
}
/////////////////////////////////////////////////////////////////////////////////////
//-------------------------Iteration Navigation------------------------------------//
/////////////////////////////////////////////////////////////////////////////////////
inline  
void SpatialTreeIter::MoveToFirst()
{
   mpCurNode = mpRootNode;
   mCurNodeOffset = 0;
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
inline  
SpatialNode&   SpatialTreeIter::rCurrent()
{
   return mpCurNode->mData;
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
inline  
SpatialNode*   SpatialTreeIter::pCurrent()
{
   return &(mpCurNode->mData);
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
inline  
void SpatialTreeIter::MoveToNext()
{
   for( mCurNodeOffset++; mCurNodeOffset < mNodeMarks.mSize; mCurNodeOffset++ )
   {
     // if( mNodeMarks[mCurNodeOffset] == mCurMarkFilter )
      if( mNodeMarks[mCurNodeOffset] & mCurMarkFilter )
      {
         mpCurNode = mpRootNode + mCurNodeOffset;
         return;
      }
   }
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
inline  
SpatialNode&   SpatialTreeIter::rMoveToNext()
{
   MoveToNext();
   return rCurrent();
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
inline  
SpatialNode*   SpatialTreeIter::pMoveToNext()
{
   MoveToNext();
   return pCurrent();
}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
inline  
bool SpatialTreeIter::NotDone()
{
   if( mCurNodeOffset < mNodeMarks.mSize )
   {
      return true;
   }
   else
   {
      return false;
   }

}
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
inline  
bool SpatialTreeIter::IsCurrentLeaf()
{
   return (mpCurNode->GetSubTreeSize() == 0);
}


#endif