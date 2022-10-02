/*===========================================================================
    vertexOffsetAnimProcess.hpp
    Created: August 31, 2000
    Auuthor: Bryan Brandt

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/
#ifndef _VERTEXOFFSETANIMPROCESS_HPP
#define _VERTEXOFFSETANIMPROCESS_HPP

#include "tlTable.hpp"
#include "tlVertex.hpp"
#include "tlSkin.hpp"
#include "tlPrimGroup.hpp"
#include "tlOffsetList.hpp"

#include "tlExpression.hpp"
#include "tlExpressionAnim.hpp"

#include <maya/MItDependencyNodes.h>
#include <maya/MItDependencyGraph.h>
#include <maya/MFnTransform.h>
#include "set.hpp"

class tlPrimGroupMesh;
class tlPrimGroup;
class tlInventory;
class SceneNode;

class MString;
class MDagPath;
class MObject;



class DeformerExpression
{
public:

    // export for meshes and skins
    static void ResetMixer();
    static void Export(tlInventory* inventory, SceneNode* meshNode, tlSkin*& pgmesh);
    static void pgOptimize(tlPrimGroupMesh* pgmesh, int pgIdx, Set& vtxList, tlTable<tlPrimGroup*>& primGroupTable );

    // -> Note: Once the tlExpressionMixer is added to the Inventory the
    //          tlExpressionAnim objects reference it only by name.  It is
    //          not necessary to allocate a copy of the pointers in this array.
    //
    static std::vector<tlExpressionMixer*>       Mixers( void )      { return exprMixers; }

    // -> Note: It is, however, necessary to allocate a copy of the tlExpressionAnim
    //          objects.  Each animation in the inventory must be a unique pointer.
    //          Each stores a copy to its tlExpression Mixer; it is OK for multiple
    //          tlExpressionAnim objects to point to the same tlExpressionMixer.
    //
    static std::vector<tlExpressionAnim*>        Anims( void )       { return exprAnims; }

    static void Clear( void );

protected:
    // Anims and Mixers are built in this queue within the ::Export() method.
    // The AnimNode Class then makes its own local copy for each 
    // as necessary for writing to P3D file.
    static std::vector<tlExpressionAnim*> exprAnims;
    static std::vector<tlExpressionMixer*> exprMixers;

};

static const unsigned P3D_DEFORM_BLEND_STAGE_COUNT = 3;

// Finds first instance of a geometry with the given name
// - retrieves its dagpath in meshPath
//
extern MStatus p3dDeformFindDependencyNode(const MString& depName, MObject& depNode);


// Retrieves the first instance of a dependency node of the given
// type (nodeType) in the history (past or future) of the passed node
//
extern MStatus p3dDeformFindInHistory(const MObject& node, const MString& nodeType, bool future, MObject& object);

extern bool SkinClusterHasDownstreamTopologyChange( MObject& skinCluster );

// Description: Provides methods for optimizing a primgroup by creating a subset
// based on the set of vertex indices provided. This vertex indices are the ordinal no.
// of the vertex in primgroup (not Maya indices).
// Note: These methods are called by DeformerExpression::pgOptimize.
// 
class PrimGroupOptimizer
{
public:
    PrimGroupOptimizer() {}
    ~PrimGroupOptimizer();

    void SetInitialVtxs(Set& vtxList);
    void SetMemberFaces(Set& memFaces);
    Set& GetMemberFaces(){return memberFaces;}
    Set& GetNonMemberFaces(){return nonMemberFaces;}

    //Computes the set of desired vertices to include vtxs sharing the same face.
    void ComputeVtxSubSet(const tlTable<unsigned long int>& pgIndxlist);

    void ComputeFaceLists(const tlTable<unsigned long int>& pgIndxlist);

    //Delete those vertices not in the subset.
    void TrimVtxList(tlTable<tlVertex*>& pgVertexList);

    //Prune the index list for faces not part of this subset
    void TrimFaces(tlTable<unsigned long int>& pgIndxlist);

    //Reindex the index list based on the vertex subset
    void Reindex(tlTable<unsigned long int>& pgIndxlist);

    //Reindex the offsetlist
    void Reindex(tlOffsetList& pgOffsetlist);
    
    Set& GetVtxSubset(){return finalVtxs;}

private:
    Set nonMemberFaces;    //set of face indices e.g.{ 3 , 10 ...} - refers to face i defined  as indexlist[3i], indexlist[3i+1], indexlist[3i+2] 
    Set memberFaces;
    Set initialVtxs;    //initial set of vertices not considering faces
    Set finalVtxs;        //vertices that define the faces which contain selected Vtxs
    
};


#endif // _VERTEXOFFSETANIMPROCESS_HPP

