#ifndef __SPATIAL_TREE_H__
#define __SPATIAL_TREE_H__

//#include <p3d/entity.hpp>

#include "OctTreeNode.h"
#include "FixedArray.h"
#include "SpatialNode.h"
#include "BoxPts.h"

class SpatialTree 
//: public tEntity
{
public:
   SpatialTree();
   ~SpatialTree();

   void Generate( OctTreeNode* ipTreeRoot, Bounds3f& irTreeBounds );
   
   ContiguousBinNode< SpatialNode >* GetRoot();

   void SetTo( int iNumNodes, Bounds3f iTreeBounds );

   Bounds3f& GetBounds();

protected:
   FixedArray< ContiguousBinNode< SpatialNode > > mTreeNodes;
   Bounds3f mTreeBounds;

   void CountNodes(  int& orCount,                                         OctTreeNode* ipTreeRoot );
   void SetNodes(    int& orSubTreeSize, int iNodeIndex, int iParentIndex, OctTreeNode* ipTreeRoot, BoxPts& irBoxPts );
};

//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
inline 
SpatialTree::SpatialTree()
{
}
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
inline 
SpatialTree::~SpatialTree()
{
}
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
inline 
void SpatialTree::Generate( OctTreeNode* ipTreeRoot, Bounds3f& irTreeBounds )
{
   int nNodes=0, SubTreeSize=0, NodeIndex=0;

   mTreeBounds = irTreeBounds;

   CountNodes( nNodes, ipTreeRoot );

   mTreeNodes.Allocate(nNodes);

   BoxPts rootBBox;
   rootBBox.SetTo( mTreeBounds );

   SetNodes( SubTreeSize, NodeIndex, ContiguousBinNode< SpatialNode >::msNoParent, ipTreeRoot, rootBBox );
}

//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
inline 
ContiguousBinNode< SpatialNode >* SpatialTree::GetRoot()
{
   return mTreeNodes.mpData;
}
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
inline 
Bounds3f& SpatialTree::GetBounds()
{
   return mTreeBounds;
}

//========================================================================
// SpatialTree::
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
void SpatialTree::SetTo( int iNumNodes, Bounds3f iTreeBounds )
{
   mTreeNodes.Allocate(iNumNodes);
   mTreeBounds = iTreeBounds;
}

//////////////////////////////////////////////////////////////////////////
//
// TODO: remove assert associated code
//
//////////////////////////////////////////////////////////////////////////
inline 
void SpatialTree::SetNodes( int& orSubTreeSize, int iNodeIndex, int iParentIndex, OctTreeNode* ipTreeRoot, BoxPts& irBoxPts )
{
   int rightSubTreeSize = 0;

   mTreeNodes[iNodeIndex].mData.mSubDivPlane.Set( ipTreeRoot->mAxis, ipTreeRoot->mPlanePosn );
   mTreeNodes[iNodeIndex].mData.mBBox = irBoxPts;
   mTreeNodes[iNodeIndex].LinkParent(iParentIndex - iNodeIndex);

   if( ipTreeRoot->mpChildLT != NULL )
   {
      assert( ipTreeRoot->mpChildGT != NULL );

      BoxPts BBoxLT( irBoxPts );
      BBoxLT.CutOffGT(     mTreeNodes[iNodeIndex].mData.mSubDivPlane );
      irBoxPts.CutOffLT(   mTreeNodes[iNodeIndex].mData.mSubDivPlane );

      SetNodes( orSubTreeSize,      iNodeIndex+1,                iNodeIndex, ipTreeRoot->mpChildLT, BBoxLT   );
      SetNodes( rightSubTreeSize,   iNodeIndex+orSubTreeSize+1,  iNodeIndex, ipTreeRoot->mpChildGT, irBoxPts );

      orSubTreeSize = orSubTreeSize + rightSubTreeSize;
      mTreeNodes[iNodeIndex].SetSubTreeSize( orSubTreeSize );
   }
   else
   {
      assert( ipTreeRoot->mpChildGT == NULL );

      mTreeNodes[iNodeIndex].SetSubTreeSize( ContiguousBinNode< SpatialNode >::msNoChildren );
   }
   
   orSubTreeSize++;
}

//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
inline 
void SpatialTree::CountNodes( int& orCount, OctTreeNode* ipTreeRoot )
{
   orCount++;

   if( ipTreeRoot->mpChildLT != NULL )
   {
      assert( ipTreeRoot->mpChildGT != NULL );
      CountNodes( orCount, ipTreeRoot->mpChildLT );
      CountNodes( orCount, ipTreeRoot->mpChildGT );
   }
   else
   {
      assert( ipTreeRoot->mpChildGT == NULL );
   }
}

#endif