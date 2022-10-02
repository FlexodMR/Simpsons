/*===========================================================================
    vertexOffsetAnimProcess.cpp
    Created: August 31, 2000
    Author: Bryan Brandt

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

/* SEARCH STRINGS

void DeformerExpression::Export(tlInventory* inventory, SceneNode* meshNode, tlPrimGroupMesh* pgmesh)

// 1. Allocate a new Expression Group
    // 1b. Store the Expression Groups in the inventory

// 2. Allocate a new Expression Mixer for this Expression Group
    // 2b. Store the Expression Mixers in the inventory
    // 2c. Clear the Expression Mixers array.

// 3. Allocate a new Expression Animation for the mixer/group
    // 3b. Allocate a tlOffsetList (v16+)
    // 3c. Add tlOffsetList to primGroup (v16+)
    // 3d. Allocate tlExpressionsOffset

// 4. Allocate a DeformerExpressionAnimNode to store and process the animation.
    // 4b. Delete the Expression Animation objects.
    // 4c. Clear the Expression Animation array.

*/

#ifdef WIN32
#pragma warning(disable:4786)
#endif

#include "deformerExpression.hpp"

#include <maya/MAnimUtil.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MFnIntArrayData.h>
#include <maya/MFnMesh.h>
#include <maya/MFnVectorArrayData.h>
#include <maya/MGlobal.h>
#include <maya/MItDag.h>
#include <maya/MMatrix.h>
#include <maya/MPlug.h>
#include <maya/MSelectionList.h>
#include <maya/MVectorArray.h>

#include "tlInventory.hpp"
#include "tlIndexedVertex.hpp"
#include "tlIndexedSkinVertex.hpp"
#include "tlFrameController.hpp"
#include "tlExpressionAnim.hpp"
//#include "tlExpression.hpp"
#include "tlSkeleton.hpp"
#include "tlExpressionOffsets.hpp"

#include "exporterutility.hpp"
#include "exporteroptions.hpp"
#include "exportFunctions.hpp"      // Export Log
#include "animnode.hpp"
#include "scene.hpp"
#include "set.hpp"

#include <fstream>
#include <algorithm>

#include <bewert_debug.h>

std::vector<tlExpressionAnim*> DeformerExpression::exprAnims;
std::vector<tlExpressionMixer*> DeformerExpression::exprMixers;

template <class tlEntityType>
static inline void GenerateName(tlInventory* inv, const MString& baseName, MString& finalName)
{
    finalName = baseName;
    int nameCounter = 0;

    tlInventory::Iterator<tlEntityType>* itor =
            new tlInventory::Iterator<tlEntityType>(inv);

    tlEntityType* ePtr = itor->First();
    while (ePtr != NULL)
    {
        MString eName = ePtr->GetName();

        if (finalName == eName)
        {
            finalName = baseName;
            finalName += nameCounter;
            ++nameCounter;
            ePtr = itor->First();
        }
        else
        {
            ePtr = itor->Next();
        }
    }

    delete itor;
}

//===========================================================================
// DeformerExpression::Clear
//===========================================================================
// Description: Clears the static Expression Animation and Expression Mixer
//              arrays.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void DeformerExpression::Clear( void )
{
    std::vector<tlExpressionAnim*>::iterator animIter;
    for( animIter = exprAnims.begin(); animIter != exprAnims.end(); animIter++ )
    {
        // 4b. Delete the Expression Animation objects.
//        clog << " -- Delete tlExpressionAnim @ " << hex << *animIter << dec << endl;
        delete *animIter;
    }
    // 4c. Clear the Expression Animation array.
    exprAnims.clear();

    // 2c. Clear the Expression Mixers array.
    // The ExpressionMixer is stored and used as a Pointer by tlInventory.
    // The pointers are deleted when the Inventory is cleared.
    // Therefore, all that is required here is to clear the pointers from the array.
    exprMixers.clear();
}

//===========================================================================
// DeformerExpression::ResetMixer
//===========================================================================
// Description: Iterates through all p3dDeformExpressionState nodes in the
//              scene and assigns their '.state' attribute to a value of 0.0.
//
// Constraints: No action is attempted if:
//                  (a) the Exporter option "Export Vertex Animations" is 
//                      not enabled.
//                  (b) the p3dDeformer.mll plug-in is not loaded.
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void DeformerExpression::ResetMixer( void )
{
    if (!ExporterOptions::ExportVertexAnimations() )
        return;
 
    // No sense trying to access Vertex Offsets if plug-in is not loaded.
    MString lookForPlugin = "pluginInfo -q -loaded \"p3dDeformer.mll\"";
    int nIsLoaded = 0;
    MGlobal::executeCommand( lookForPlugin, nIsLoaded, false, false );
    if ( !nIsLoaded ) return;

   MStringArray expNames;

    MString cmd = "ls -type p3dDeformExpressionState";
    MStatus status = MGlobal::executeCommand( cmd, expNames );
    if ( status != MS::kSuccess )
        return;
    else
    {
        for (unsigned i=0; i < expNames.length(); i++)
        {
            MString curState = expNames[i];
            cmd = "setAttr ";
            cmd+=curState;
            cmd+=".state 0.0";
            MGlobal::executeCommand(cmd);
        }
    }
}

//===========================================================================
// DeformerExpression::Export
//===========================================================================
// Description: Exports Deformer Expressions, adding the necessary items to
//              the inventory and populating the static Expression Animation
//              and Expression Mixer arrays.
//
// Constraints: This process is aborted if:
//                  (a) the Exporter option "Export Vertex Animations" is 
//                      not enabled.
//                  (b) the p3dDeformer.mll plug-in is not loaded.
//                  (c) meshNode is NULL.
//                  (d) meshNode does not describe a MFn::kMesh.
//                  (e) no Deformer data is found for meshNode.
//                  (f) no Pose Keys are set for the Deformer Expression
//                      Groups.
//                  (g) no Expression Groups have been created for meshNode.
//
//  Parameters: tlInventory* inventory: Pointer to the Inventory to which new
//                  Expression items will be added. Must not be NULL!
//              SceneNode* meshNode: Provides the matrix for the node to
//                  which the Deformer is applied.
//              tlSkin*& pgmesh: Provides the PrimGroup list for the Skin
//                  to which the Deformer is applied.
//
//      Return: (void)  All data is added to provided (tlInventory*) and
//                      to the static Expression Animation and Expression
//                      Mixer arrays.
//
//===========================================================================
void DeformerExpression::Export(tlInventory* inventory, SceneNode* meshNode, tlSkin*& pgmesh)
{
    if (!ExporterOptions::ExportVertexAnimations() )
        return;

    unsigned long numOffsetLists = 0;

    // No sense trying to access Vertex Offsets if plug-in is not loaded.
    MString lookForPlugin = "pluginInfo -q -loaded \"p3dDeformer.mll\"";
    int nIsLoaded = false;
    MGlobal::executeCommand( lookForPlugin, nIsLoaded, false, false );
    if ( !nIsLoaded ) return;

    int offsetListIndex = 0;

    MStatus status;
    MString cmd;
    MStringArray hist;
    unsigned i, j, curExp;
    unsigned int groupIndex, mixerIndex, animIndex;
    int s,t,u;
    bool isReferenced = false;
    std::vector<tlExpressionGroup*> exprGroups;

    // Any processing for tlExpressionMixer and tlExpressionAnim
    // must start AFTER those that have already been added.
    // (There are always the same number of Mixers as Anims.)
    unsigned int cacheIndex = exprAnims.size();

// ** These are now cached as static arrays in the class so that they
// ** may be accessed from the AnimNode class.
//
//    std::vector<tlExpressionMixer*> exprMixers;
//
//    std::vector<tlExpressionAnim*> exprAnims;
    
    MStringArray groupList; //list names of deformer group nodes

    SceneNode* node = meshNode;
    if (node == 0)
        return;       

    if (node->IsFileReference())
        isReferenced = true;

// --- get node's inclusive matrix to scale offsets later-------------------------
    MMatrix inMatrix = node->MayaPath().inclusiveMatrix(&status);
    CheckStatusReturn(status.errorString());
    tlMatrix nodeScaleMatrix;
    for (unsigned y = 0; y < 3; ++y)
    {
        for (unsigned x = 0; x < 4; ++x)
        {
            nodeScaleMatrix.element[y][x] = static_cast<float>(inMatrix(y, x));
        }
    }

//--- get skeleton-local matrix if meshes are in skin, compound mesh, etc.---------
    tlMatrix nodeParentInverseMatrix;
    if ( ( ( node->Skeleton() != 0) || ( node->Scenegraph() != 0) ) &&
         (node->Parent() != 0 ) )
    {
        tlMatrix bwm;
        node->Parent()->BindWorldMatrix( bwm );
        nodeParentInverseMatrix = Inverse( bwm );
    }

//---- get the mesh history---------------------------------------------------------
    MObject meshObject = node->MayaObject();
    if (!meshObject.hasFn(MFn::kMesh))
    {
        return;
    }

    MFnMesh mesh( meshObject, &status );
    CheckStatusReturn(status.errorString());

    MString mesh_name = mesh.fullPathName();
    cmd = "listHistory " + mesh_name;
    status = MGlobal::executeCommand( cmd, hist );

    if ( status != MS::kSuccess )
    {
        // mesh had no history
        return;
    }

//--- Get the meshes Expression Nodes if it has them-------------------------
    
    MStringArray exprStates; //array of names for each expression
    MString group; // the name of the p3dDeformExpressionMixer for this mesh

    // check to see if we have any expression states
    for ( i = 0; i < hist.length(); ++i )
    {
        MStringArray tmp;

        cmd = "ls -type p3dDeformExpressionState " + hist[i];
        status = MGlobal::executeCommand( cmd, tmp );
        if ( status != MS::kSuccess )
        {
            // probably failed because the p3dDeformer plug-in isn't installed
            break;
        }

        if ( tmp.length() > 0 )
        {
            for ( j = 0; j < tmp.length(); ++j )
            {
                exprStates.append( tmp[j] );
            }
        }
        else
        {
            // while we're at it, see if we can grab the deformer group
            cmd = "ls -type p3dDeformExpressionGroup " + hist[i];
            status = MGlobal::executeCommand( cmd, tmp );

            if ( status != MS::kSuccess )
            {
                // probably failed because the p3dDeformer plug-in isn't installed
                break;
            }

            if ( tmp.length() > 0 )
            {
                group = tmp[0];
                
                // add to mixer list, if unique
                j = 0;
                while ( j < groupList.length() )
                {
                    if ( group == groupList[j] )
                    {
                        break;
                    }
                    ++j;
                }

                if ( j == groupList.length() )
                {
                    groupList.append( tmp[0] );
                }
            }
        }
    }

//---Stop processing if this mesh has no state nodes or deformer groups-------------------
    if (( exprStates.length() <= 0 ) ||
         ( group.length() <= 0 ) )
    {
        // didn't find any p3dDeformExpressionStates or p3dDeformVertexOffsetMixer...
        return;
    }

    // !! Check all p3dDeformExpressionGroup nodes.
    // Tracing downstream should find a skinCluster node.
    // Tracing further should immediately find the mesh node.
    // If not then there is additional construction history that may affect 
    // the topology for the deformed mesh. This is a NO-NO!

    unsigned int g;
    MSelectionList degList;
    MObject degNode;
    for ( g = 0; g < groupList.length(); g++ )
    {
        MGlobal::getSelectionListByName( groupList[g], degList );
        degList.getDependNode( 0, degNode );
        MItDependencyGraph      itGraph( degNode, MFn::kSkinClusterFilter );
        
        if ( itGraph.isDone() )
        {
            continue;
        }

        MObject skinCluster = itGraph.thisNode();

        if ( SkinClusterHasDownstreamTopologyChange( skinCluster ) )
        {
            gExportLog.Add( CExportLogEntry( ExportLog::kSkinClusterHasDownstreamTopologyModifiers, meshNode->MayaPath() ) );
        }
    }

    int numKeyIndices = 0;
    for ( curExp = 0; curExp < exprStates.length(); curExp++ )
    {
        MObject stateObj;
        p3dDeformFindDependencyNode( exprStates[curExp], stateObj );
        MFnDependencyNode stateNode( stateObj );

        MPlug keyIndexArrayPlug = stateNode.findPlug("keyIndices", &status);
        if (status == MStatus::kSuccess)
        {
            for ( j = 0; j < keyIndexArrayPlug.numElements(); j++ )
            {
                int value;
                keyIndexArrayPlug[j].getValue( value );

                // Valid indices are in the range of { -1.0 <= n <= 1.0 }
                // Invalid indices return -2.0.
                if ( value >= -1.0 ) numKeyIndices++;
            }
        }
    }
    // **** NOTE **** 27 Aug 2002 **** WARNING ****
    // By bailing at this point we sacrifice support of "old skool" (v14 and prior) Deformer art.
    // I expect that this is not an issue anymore, but it may affect some old coverage art.
    if ( numKeyIndices == 0 )
    {
        gExportLog.Add( CExportLogEntry( ExportLog::kDeformerGroupNoPoseKeys, meshNode->MayaPath() ) );
        return;
    }

    // This node has at least one p3dDeformer Group.
    
    // ??? Should this preclude the application of any Vertex Animation ???
    // If so, set a flag on the SceneNode to indicate it is not 
    // applicable to Vertex Animation.
        
//--- Create 3 types of chunks for each deformer group node -------_______________________

    //Create ExpressionGroup, ExpressionMixer, and ExpressionAnimChunk for each deformer group found  
    for( j = 0; j < groupList.length(); ++j )
    {
        groupIndex = exprGroups.size();
        // 1. Allocate a new Expression Group
        exprGroups.push_back( new tlExpressionGroup );

        // generate a new name for the expression group
        MString exprGroupBaseName = groupList[j];
        MString exprGroupName;
        GenerateName <tlExpressionGroup> ( inventory, exprGroupBaseName, exprGroupName );

        // fill in the expression group
        exprGroups[groupIndex]->SetName( exprGroupName.asChar() );
        exprGroups[groupIndex]->SetTargetName( pgmesh->GetName() );

        mixerIndex = exprMixers.size();
        // 2. Allocate a new Expression Mixer for this Expression Group
        exprMixers.push_back( new tlExpressionMixer );
//        clog << " ++ New tlExpressionMixer #" << j << " @ " << hex << exprMixers[mixerIndex] << dec << endl;

        // have the mixer target our mesh and our expression group
        char* mixer_name = ExporterOptions::BuildNodeName( groupList[j] );
        exprMixers[mixerIndex]->SetName( mixer_name );
        strdelete( mixer_name );
        exprMixers[mixerIndex]->SetType( VERTEX_OFFSET );
        exprMixers[mixerIndex]->SetTargetName( pgmesh->GetName() );
        exprMixers[mixerIndex]->SetExpressionGroupName( exprGroups[groupIndex]->GetName() );

        animIndex = exprAnims.size();
        // 3. Allocate a new Expression Animation for the mixer/group
        exprAnims.push_back( new tlExpressionAnim );
//        clog << " ++ New tlExpressionAnim #" << j << " @ " << hex << exprAnims[animIndex] << dec << endl;
        
        // generate a new name for the expression animation
        MString exprAnimBaseName = groupList[j];
        MString exprAnimName;
        GenerateName<tlExpressionAnim>( inventory, exprAnimBaseName, exprAnimName );
        assert( ( exprAnimName.length() > 0 ) && "! EMPTY name generated for tlExpressionAnim !" );

        const char* seeInDebug = exprAnimName.asChar();

        // renaming will occur later just before store
        exprAnims[animIndex]->SetName( exprAnimName.asChar() );
        // node is guaranteed to be a shape node -- test for MFn::kMesh above.
        exprAnims[animIndex]->SetCyclic( node->Parent()->IsCyclic() );
    }

//---Generate a required chunks for each expression------------------------------------

    //In this section, we need to export a VertexOffsetExpression chunk for each state node
    //in the mesh history. Also export an offsetList chunk for each key in a state, and
    //attach it to the appropriate primgroup.

    //array of RunTimeVtx indices which have offset data
     int numPrimGroups = pgmesh->NumPrimGroups();
    Set* offsetVtxSets = new Set[numPrimGroups];
    bool tlOffsetListCreated = false;

    for( curExp = 0; curExp < exprStates.length(); ++curExp )
    {
        // create a new expression 
        tlExpression expression;

        // create a name for the VertexOffsetExpression
        char* state_name = ExporterOptions::BuildNodeName( exprStates[curExp].asChar() );
        expression.SetName( state_name );
        strdelete( state_name );

        // get the blend stage
        int blend_stage;
        cmd = "getAttr ";
        cmd += exprStates[curExp];
        cmd += ".blendStage";
        status = MGlobal::executeCommand( cmd, blend_stage );
        CheckStatusReturn(status.errorString());
        
        // get number of tweaked vertices
        int vtx_count;
        cmd = "getAttr -size ";
        cmd += exprStates[curExp];
        cmd += ".vertexOffsets";
        status = MGlobal::executeCommand( cmd, vtx_count );
        CheckStatusReturn(status.errorString());

        MObject stateObj;
            
        p3dDeformFindDependencyNode( exprStates[curExp], stateObj );
        MFnDependencyNode stateNode( stateObj );

        MPlug keyIndexArrayPlug = stateNode.findPlug("keyIndices", &status);
        int numKeyIndices = 0;
        if (status == MStatus::kSuccess)
            numKeyIndices = keyIndexArrayPlug.numElements();

        //--- couldn't find keyIndices-->old skool deformer art
        if (( status != MStatus::kSuccess)  || (numKeyIndices == 0))
        {
            // for every vertex in the expression
            int vertInExpr;
            bool valid = false;
            bool indexAdded =false;

            for ( vertInExpr = 0; vertInExpr < vtx_count; ++vertInExpr )
            {
                // get the vertex offset
                MDoubleArray vtx_offset;
                cmd = "getAttr ";
                cmd += exprStates[curExp];
                cmd += ".vertexOffsets[";
                cmd += (int)vertInExpr;
                cmd += "]";
                status = MGlobal::executeCommand( cmd, vtx_offset );
                CheckStatusReturn(status.errorString());

                // ignore zero-length offsets
                MVector testVec( vtx_offset[0], vtx_offset[1], vtx_offset[2] );
                
                if ( testVec.length() == 0.0f )
                    continue;
                else 
                    valid = true;

                // scale offset by scale matrix
                tlPoint orig( vtx_offset[0], vtx_offset[1], vtx_offset[2] );
                tlPoint transformed = VectorTransform( nodeScaleMatrix, orig );

                // negate z for the coordinate switch
                transformed.z = -transformed.z;

                // transform offset into skeleton's local space
                orig = transformed;
                transformed = VectorTransform( nodeParentInverseMatrix, orig );

                vtx_offset[0] = transformed.x;
                vtx_offset[1] = transformed.y;
                vtx_offset[2] = transformed.z;

                // grab the maya vertex index
                int maya_vtx_index;
                cmd = "getAttr ";
                cmd += exprStates[curExp];
                cmd += ".vertexIndices[";
                cmd += (int)vertInExpr;
                cmd += "]";
                status = MGlobal::executeCommand( cmd, maya_vtx_index );
                CheckStatusReturn(status.errorString());

                // go through every prim group and determine
                // if the current expression vertex is a
                // member of that prim group
                int numPrimGroups = pgmesh->NumPrimGroups();
                int primGroup;
                for( primGroup = 0; primGroup < numPrimGroups; primGroup++ )
                {
                    // get the number of vertices in the 
                    // current prim group
                    tlPrimGroup* pPG = pgmesh->GetPrimGroup( primGroup );
                    int numPrimGroupVerts = pPG->NumVertices();

                    // is this a skin?  If not then we 
                    // don't care about it
                    tlIndexedSkinVertex* skinVtx = dynamic_cast<tlIndexedSkinVertex*>( pPG->GetVertex(0) );
                    
                    if( skinVtx == NULL )
                        continue;
                    
                    int pgVert;
                    
                    for( pgVert = 0; pgVert < numPrimGroupVerts; ++pgVert )
                    {
                        // get the maya index of the current
                        // prim group vertex
                        skinVtx = static_cast<tlIndexedSkinVertex*>(pPG->GetVertex( pgVert ));
                        int mayaVtxIndex = skinVtx->GetVertexIndex();
                
                        // is the current expression vertex a 
                        // member of the current prim group?
                        if ( mayaVtxIndex != maya_vtx_index )
                            continue;
                        // does this prim group have an offset list for
                        // the current expression

                
                        bool bFound = false;
                        int nNumOffsetLists = pPG->GetNumOffsetLists();
                        
                        for( s = 0; s < nNumOffsetLists; ++s )
                        {
                            // if an offsetlist exists then add the vertex
                            // otherwise, create the offset list and then
                            // add the vertex to it
                            if( offsetListIndex == pPG->GetOffsetList(s)->GetIndex() )
                            {
                                pPG->GetOffsetList(s)->AppendVertexOffset( pgVert, static_cast<float>(vtx_offset[0]), static_cast<float>(vtx_offset[1]), static_cast<float>(vtx_offset[2]) );
                                bFound = true;
                                break;
                            }
                        }

                        if( !bFound )
                        {
                        // 3b. Allocate a tlOffsetList (pre v14)
                            tlOffsetList *pOffsetList = new tlOffsetList;
                            pOffsetList->SetIndex( offsetListIndex );
                            indexAdded = true;
                            pOffsetList->AppendVertexOffset( pgVert, static_cast<float>(vtx_offset[0]), static_cast<float>(vtx_offset[1]), static_cast<float>(vtx_offset[2]) );

                        // 3c. Add tlOffsetList to primGroup (pre v14)
                            pPG->AddVertexOffsetList( pOffsetList );
                        }
                    }
                }
            }

            //
            // We've proven that there are some valid offsets, so append a key
            //
            if (valid)
            {
                expression.AppendKey( offsetListIndex, 1.0f );
            }

            //
            // sort the offset lists in the 
            // prim groups that correspond to 
            // the current expression
            //
            for( t = 0; t < pgmesh->NumPrimGroups(); ++t )
            {
                tlPrimGroup *pPG = pgmesh->GetPrimGroup( t );
                for( u = 0; u < pPG->GetNumOffsetLists(); ++u )
                {
                    if( pPG->GetOffsetList(u)->GetIndex() == offsetListIndex )
                    {
                        pPG->GetOffsetList(u)->Sort();
                    }
                }
            }
            if (indexAdded)
            {
                offsetListIndex++;
            }
        }  //end if vtx_count > 0
        
        //--- late version 14, and version 16 art (which have multiple keys)
        else     
        {
            MDoubleArray cur_vtx_offset;  //the current vertex offset array- an element of the big array of arrays
            int numOffsetArrays;

            //get top-level offset array plug
            MPlug vtxOffsetArrayPlug = stateNode.findPlug( "vertexOffsetsArray", &status );
            CheckStatusReturn(status.errorString());
            numOffsetArrays = vtxOffsetArrayPlug.numElements();
            
            //now do the same for the indices array
            MPlug vtxIndexArrayPlug = stateNode.findPlug("vertexIndicesArray", &status);
            CheckStatusReturn(status.errorString());

            int numIndexArrays = vtxIndexArrayPlug.numElements();
            bool indexListAdded = false;

            int curArray;
            //for each key in this expression state
            for ( curArray = 0; curArray < numOffsetArrays; curArray++ )
            {
                //bool indexAdded = false;
                MPlug cur_vtx_offset_array = vtxOffsetArrayPlug.elementByLogicalIndex( curArray, &status );
                CheckStatusReturn(status.errorString());
                int vtx_count;
                
                MVectorArray vtxArr;
                MObject tempData;
                
                status = cur_vtx_offset_array.getValue( tempData );
                CheckStatusReturn(status.errorString());
                MFnVectorArrayData vtxArrData( tempData );
                status = vtxArrData.copyTo( vtxArr );
                CheckStatusReturn(status.errorString());

                vtx_count = vtxArr.length();

                if (vtx_count == 0)
                    continue;

                MPlug cur_vtx_idx_array = vtxIndexArrayPlug.elementByLogicalIndex( curArray, &status );
                CheckStatusReturn(status.errorString());

                MIntArray idxArr;
                status = cur_vtx_idx_array.getValue( tempData );
                CheckStatusReturn(status.errorString());
                MFnIntArrayData idxArrData( tempData );
                status = idxArrData.copyTo( idxArr );
                CheckStatusReturn(status.errorString());

                int idx_count = idxArr.length();

                float curKey;
                keyIndexArrayPlug.elementByLogicalIndex( curArray, &status ).getValue( curKey );
                expression.AppendKey( offsetListIndex, curKey );
                
                int curVtxIter;

                //for every vertex in this offset array (aka key)
                for ( curVtxIter =0; curVtxIter < vtx_count; curVtxIter++ )
                {
                    MVector curVtx = vtxArr[ curVtxIter ];
                    if (curVtx.length() == 0.0f)    //there isn't much in the way of an offset
                        continue;

                    int curIdx = idxArr [ curVtxIter ];

                    tlPoint orig( curVtx.x, curVtx.y, curVtx.z );
                    tlPoint transformed = VectorTransform( nodeScaleMatrix, orig );
                    transformed.z = -transformed.z;
                    orig = transformed;
                    transformed = VectorTransform( nodeParentInverseMatrix, orig );
                    curVtx.x = transformed.x;
                    curVtx.y = transformed.y;
                    curVtx.z = transformed.z;
                    
                    int curPG;
                    
                    for ( curPG = 0; curPG < numPrimGroups; curPG++ )
                    {
                        tlPrimGroup* pPG = pgmesh->GetPrimGroup( curPG );
                        int numPrimGroupVerts = pPG->NumVertices();
                        
                        //first check to see if this primgroups has vertices at all
                        tlIndexedSkinVertex* skinVtx = dynamic_cast<tlIndexedSkinVertex*>( pPG->GetVertex( 0 ) );
                        if ( skinVtx == NULL )
                            continue;

                        //test to see if this vertex is in current expression
                        int pgVert;
                        for ( pgVert = 0; pgVert < numPrimGroupVerts; pgVert++ )
                        {
                            skinVtx = static_cast<tlIndexedSkinVertex*>(pPG->GetVertex(pgVert));
                            int mayaVtxIndex = skinVtx->GetVertexIndex();

                            if ( mayaVtxIndex != curIdx )
                                continue;

                            else
                            {
                                //add the primgroup-vertexIdx to an array there is one of these arrayes
                                //for each primgroup in this mesh, used later for optimization
                                offsetVtxSets[curPG].Add(pgVert);
                            }
                            
                            //check existing offset lists
                            bool bFound = false;
                            int numOffsetLists = pPG->GetNumOffsetLists();
                            int curList;
                            for (curList = 0; curList < numOffsetLists; curList++)
                            {
                                tlOffsetList* thisList = pPG->GetOffsetList( curList );
                                if ( offsetListIndex == thisList->GetIndex() )
                                {
                                    thisList->AppendVertexOffset( pgVert, static_cast<float>(curVtx.x), static_cast<float>(curVtx.y), static_cast<float>(curVtx.z) );
                                    bFound = true;
                                    break;
                                }
                            }  //end going through all the existing offset lists

                            if ( !bFound )    //we didn't find an offset list with the appropriate index
                            {
                            // 3b. Allocate a tlOffsetList (v16+)
                                tlOffsetList* newOffsetList = new tlOffsetList;
                                newOffsetList->SetIndex( offsetListIndex );                       
                                newOffsetList->AppendVertexOffset( pgVert, static_cast<float>(curVtx.x), static_cast<float>(curVtx.y), static_cast<float>(curVtx.z));

                            // 3c. Add tlOffsetList to primGroup (v16+)
                                pPG->AddVertexOffsetList( newOffsetList );
                                indexListAdded = true;
                                tlOffsetListCreated = true;
                            }
                        }  //end for every vertex in every primgroup
                    }  //end for every primgroup
                }  //end for every vertex in offset array

                // sort the vertices in offset lists 
                int t;
                for(t = 0; t < pgmesh->NumPrimGroups(); ++t)
                {
                    tlPrimGroup *pPG = pgmesh->GetPrimGroup(t);
                    int u;
                    for(u = 0; u < pPG->GetNumOffsetLists(); ++u)
                    {
                        if(pPG->GetOffsetList(u)->GetIndex() == offsetListIndex)
                        {
                            pPG->GetOffsetList(u)->Sort();
                        }
                    }
                }

                if(indexListAdded)
                {
                    offsetListIndex++;
                }      
            }  //end for every offset array (key)
            
            expression.SortKeys();
        }  //end new school art style (multi-key processing)

        if (expression.GetNumKeys() > 0)
        {
            // find the group which the expression belongs to
            MStringArray tmp;

            cmd = "connectionInfo -dfs ";
            cmd += exprStates[curExp];
            cmd += ".output";
            
            status = MGlobal::executeCommand(cmd, tmp);
            if (status != MS::kSuccess)
            {
                // probably failed because the p3dDeformer plug-in isn't installed
                break;
            }

            // add the expression to the appropriate group
            std::vector<tlExpressionGroup*>::iterator iter;
            for(iter = exprGroups.begin(); iter != exprGroups.end(); iter++)
            {
                // does the group belong to the current expression
                if( strstr(tmp[0].asChar(), (*iter)->GetName()) )
                {
                    // add the expression to the group
                    (*iter)->AppendExpression(expression, (p3dExpressionStage)blend_stage);
                    break;
                }
            }
            
            // add the expression as a channel to the animation but only if animation
            // actually exists on it
            MSelectionList selList;
            selList.add(exprStates[curExp]);

            bool bIsAnim = MAnimUtil::isAnimated(selList, true, &status);
            if(bIsAnim && ExporterOptions::ExportAnimations())
            {
                // Start adding Expression States with the first newly added
                // Expression Animation -- don't re-add to previously existing!
                unsigned int aa = 0;
                for ( aa = cacheIndex; aa < exprAnims.size(); aa++ )
                {
                    const char* seeInDebug = exprAnims[aa]->GetName();

                    assert( exprAnims[aa]->GetName() && "! tlExpressionAnimation has NULL name !" );

                    if( strstr( tmp[0].asChar(), exprAnims[aa]->GetName() ) )
                    {
                        // add expression to the animation
                        exprAnims[aa]->AddExpressionAnimGroup(exprStates[curExp].asChar());
                    }
                }
            }
        }        
    }     //end iterating for all expressions

    //-----------Create a tlExpressionAnimOffset --------------------------------------
    //if this pgMesh contains offsetlists, then it requires a tlExpressionOffsetAnimChunk
//    if(tlOffsetListCreated)
//    {
//        // 3d. Allocate tlExpressionsOffset (indicates non-NULL offset list - NOT populated)
//            tlExpressionOffsets* offsets = new tlExpressionOffsets();
//            pgmesh->SetExprOffsets(offsets);
//    }


    //-------------Optimize the primgroups-------------------------------------------- 

    // ** This behavior should be deferred to tlPrimGroup / tlPrimGroupMesh  ?? **

    tlTable<tlPrimGroup*> primGroupTable; //create a temporary list of primgroup ptrs for each mesh
    primGroupTable.Resize(numPrimGroups * 2);

    for(int q = 0; q < numPrimGroups; q++)
    {
        //if this primgroup has no offset lists do not optimize it
        tlPrimGroup* pPG = pgmesh->GetPrimGroup(q);
        if(pPG->GetNumOffsetLists() == 0)
        {
            primGroupTable.Append(pPG);
        }
        else
        {
            //optimize the primgroup
            pgOptimize(pgmesh, q, offsetVtxSets[q], primGroupTable);
        }
    }

    primGroupTable.Shrink();
    pgmesh->SetPrimGroups(primGroupTable);
    primGroupTable.Delete(0, primGroupTable.Count());

    // MEMORY LEAK PATCH: 08 Aug 2002
    delete [] offsetVtxSets;

    //--------------------------------------------------------------------------------------
    if ( exprGroups.empty() )
    {
        // didn't find any meshes with expression states
        return;
    }

    if ( !( ExporterOptions::ExportAnimReferencesOnly() && isReferenced ) )
    {
        // 1b. Store the Expression Groups in the inventory
        std::vector<tlExpressionGroup*>::iterator grpIter;
        for( grpIter = exprGroups.begin(); grpIter != exprGroups.end(); grpIter++ )
        {
            inventory->Store( *grpIter );
        }
        
        // 2b. Store the Expression Mixers in the inventory
        // Bug fix: 05 Jul 2002
        //          Always export the Mixer, independent of ExportAnimations flag.
//        if(ExporterOptions::ExportAnimations())
        {
            std::vector<tlExpressionMixer*>::iterator mxrIter;
            for( mxrIter = exprMixers.begin(); mxrIter != exprMixers.end(); mxrIter++ )
            {
                inventory->Store( *mxrIter );
            }
        }
    }


//------------Export animation channels and controller----------------------------
    if ( !exprAnims.empty() && ExporterOptions::ExportAnimations())   
    {
        unsigned int animIndex;

        // Start at cacheIndex -- Only add newly created Expression Animations.
        for ( animIndex = cacheIndex; animIndex < exprAnims.size(); animIndex++ )
        {
            // 4. Allocate a DeformerExpressionAnimNode to store and process the animation.
            DeformerExpressionAnimNode* pVOEanim = new DeformerExpressionAnimNode( animIndex, meshNode );

            pVOEanim->SetIsCyclic( exprAnims[animIndex]->GetCyclic() );

            AnimNode::AddNode( pVOEanim );

// ** BEGIN OBSOLETE  *** 15 Feb 2002 ***
// The functionality for adding the tlExpressionAnim, tlFrameControllers
// and tlMultiControllers to the Inventory is now in the AnimNode class.

//            //
//            // Generate Naming here since other data structures use 
//            // the default name to bind channels to... this
//            // is a quick fix
//            //
//            char animName[256];
//            ExporterOptions::BuildAnimationName(kExpressionAnimationMode,(*animIter)->GetName(),animName);
//            (*animIter)->SetName(animName);
//
//            // add the expression animation to the inventory
//            inventory->Store(*animIter);
//
//            // create a frame controller for the mixer/animation
//            tlFrameController* exprAnimController = new tlFrameController;
//            exprAnimController->SetName((*animIter)->GetName());
//            exprAnimController->SetType(Pure3DAnimationTypes::EXPRESSION_EXP);
//            exprAnimController->SetHierarchyName((*mixerIter)->GetName());
//            exprAnimController->SetAnimationName((*animIter)->GetName());
//
//            // store frame controller in inventory
//            inventory->Store(exprAnimController);
// ** END OBSOLETE  *** 15 Feb 2002 ***

        }
        
    }
}

//===========================================================================
// DeformerExpression::pgOptimize
//===========================================================================
// Description: Splits a given primgroup into 2 primgroups which are both 
//              subset of the original. One contains faces which are not 
//              affected by vertex offset animation. The other contains 
//              faces which have vertex offset data. 
//
// Constraints: This function should only be called on primgroups which 
//              have offset data.
//
//  Parameters: tlPrimGroupMesh* pgmesh: The PrimGroup mesh to be optimized.
//              int pgIdx: The index for the primGroup.
//              Set& vtxList: List of vertex indices that defines the
//                  Deformer subset to be separated to their own PrimGroup.
//              tlTable<tlPrimGroup*>& primGroupTable: A list to keep track
//                  of all primGroups to be added to the primGroupMesh when
//                  this function returns.
//
//      Return: (void)
//
//===========================================================================
void DeformerExpression::pgOptimize(tlPrimGroupMesh* pgmesh, int pgIdx, Set& vtxList, tlTable<tlPrimGroup*>& primGroupTable )
{

    //create a duplicate primGroup
    tlPrimGroup* normalPG = pgmesh->GetPrimGroup(pgIdx);
    tlPrimGroup* offsetPG = new tlPrimGroup(*normalPG);    

    //optimize offsetPG
    PrimGroupOptimizer OffsetPrimGrp;
    OffsetPrimGrp.SetInitialVtxs(vtxList);

    tlTable<unsigned long int>& pgIndxlist = offsetPG->GetIndexList();
    tlTable<tlVertex*>& pgVertexList = offsetPG->GetVertexList();

    OffsetPrimGrp.ComputeFaceLists(pgIndxlist);
    OffsetPrimGrp.ComputeVtxSubSet(pgIndxlist);
    OffsetPrimGrp.TrimVtxList(pgVertexList);
    OffsetPrimGrp.TrimFaces(pgIndxlist);
    OffsetPrimGrp.Reindex(pgIndxlist);

    //Reindex the offsetlists    
    for(int curList = 0; curList < offsetPG->GetNumOffsetLists(); curList++)
    {
        tlOffsetList* thisList = offsetPG->GetOffsetList(curList);
        thisList->SetPrimGroupIndex(primGroupTable.Count() + 1);
        OffsetPrimGrp.Reindex(*thisList);
    }
    
    //optimize the normalPG
    int numVertices = normalPG->GetVertexCount(); 

    if(OffsetPrimGrp.GetNonMemberFaces().GetSetSize() == 0)
    {
        //
        // Just append the normal list... and delete the second offsetList
        // Since the normal list is the original
        //
        primGroupTable.Append(normalPG);
        delete offsetPG;
    }
    else
    {
        PrimGroupOptimizer normalPrimGrp;
        normalPrimGrp.SetMemberFaces(OffsetPrimGrp.GetNonMemberFaces());
        
        tlTable<unsigned long int>& normalIndxlist = normalPG->GetIndexList();
        normalPrimGrp.ComputeVtxSubSet(normalIndxlist);
        
        tlTable<tlVertex*>& normalVertexList = normalPG->GetVertexList();

        normalPrimGrp.TrimVtxList(normalVertexList);
        normalPrimGrp.TrimFaces(normalIndxlist);
        normalPrimGrp.Reindex(normalIndxlist);

        //strip offsetlists from normal primgroup:
        normalPG->RemoveVertexOffsetLists();

        //temporary ordered list of primgroups: related pgs are consecutive
        primGroupTable.Append(normalPG);
        primGroupTable.Append(offsetPG); 
    }
}


MStatus p3dDeformFindDependencyNode(const MString& depName, MObject& depNode)
{
    //first we try to find a DagNode with depName
    //if we can't, then we try to find a dependency node.
    MStatus status;
    MItDag itor;
    while (!itor.isDone())
    {
        MObject node = itor.item(&status);
        MFnDagNode nodeFn(node, &status);
        if (nodeFn.fullPathName() == depName)
        {
            depNode = node;
            return MS::kSuccess;
        }
        itor.next();
    }

    MItDependencyNodes itord;
    while (!itord.isDone())
    {
        MObject node = itord.item(&status);
        MFnDependencyNode nodeFn(node, &status);
        if (nodeFn.name() == depName)
        {
            depNode = node;
            return MS::kSuccess;
        }
        itord.next();
    }
    return MS::kFailure; 
}


static MStatus p3dDeformFindInHistoryInternal(const MObject& root,
                                                             const MString& typeName,
                                                             bool upstream,
                                                             MObject& object)
{
    MStatus status;

    MItDependencyGraph::Direction direction;
    if (upstream)
    {
        direction = MItDependencyGraph::kUpstream;
    }
    else
    {
        direction = MItDependencyGraph::kDownstream;
    }

    MObject tmpObject = root;
    MItDependencyGraph itor(tmpObject,
                                    MFn::kInvalid,
                                    direction,
                                    MItDependencyGraph::kBreadthFirst,
                                    MItDependencyGraph::kNodeLevel,
                                    &status);
    

    while (!itor.isDone())
    {
        object = itor.thisNode(&status);
        if (status)
        {
            MFnDependencyNode thisNode(object, &status);
            if (status)
            {
                MString tmp = thisNode.typeName(&status);
                if (status)
                {
                    if (tmp == typeName)
                    {
                        return MS::kSuccess;
                    }
                }
            }
        }

        status = itor.next();
        
    }

    object = MObject::kNullObj;
    return MS::kFailure;
}


MStatus p3dDeformFindInHistory(const MObject& root,
                                         const MString& typeName,
                                         bool upstream,
                                         MObject& object)
{
    MStatus status;

    MFnDependencyNode rootNode(root, &status);
    

    // short circuit search if passed node is of type typeName
    MString tmp = rootNode.typeName(&status);
    
    if (tmp == typeName)
    {
        object = root;
        return MS::kSuccess;
    }

    // search passed node's history
    status = p3dDeformFindInHistoryInternal(root, typeName, upstream, object);

    if (!status)
    {
        MStatus localStatus;

        // if it's a transform node, check its first-level children,
        // if they themselves aren't transform nodes
        MFnTransform transformFn(root, &localStatus);
        if (!localStatus)
            return status;

        unsigned childCount = transformFn.childCount(&localStatus);
        

        for (unsigned i = 0; i < childCount; ++i)
        {
            MObject child = transformFn.child(i, &localStatus);
            MFnTransform childFn(child, &localStatus);
            if (!localStatus)
            {
                // child isn't a transform, so search its history
                status = p3dDeformFindInHistoryInternal(child, typeName, upstream, object);
                if (status)
                    break;
            }
        }
    }

    return status;
}

bool SkinClusterHasDownstreamTopologyChange( MObject& skinCluster )
{
    bool bHasTopologyChange = false;
    MItDependencyGraph          itGraph( skinCluster );

    MObject nextNode;
    while ( !itGraph.isDone() )
    {
        itGraph.next();
        nextNode = itGraph.thisNode();

        if ( nextNode.hasFn( MFn::kMesh ) ) break;    // done looking

        // Compare function of node against those that can potentially change topology.
        // This isn't necessary a comprehensive list, but
        // it covers the majority of what I could find.
        if ( 
                ( nextNode.hasFn( MFn::kPolyBevel ) ) ||
                ( nextNode.hasFn( MFn::kPolyAppend ) ) ||
                ( nextNode.hasFn( MFn::kPolyChipOff ) ) ||
                ( nextNode.hasFn( MFn::kPolyCloseBorder ) ) ||
                ( nextNode.hasFn( MFn::kPolyCollapseEdge ) ) ||
                ( nextNode.hasFn( MFn::kPolyCollapseF ) ) ||
                ( nextNode.hasFn( MFn::kPolyDelFacet ) ) ||
                ( nextNode.hasFn( MFn::kPolyDelEdge ) ) ||
                ( nextNode.hasFn( MFn::kPolyDelVertex ) ) ||
                ( nextNode.hasFn( MFn::kPolyExtrudeFacet ) ) ||
                ( nextNode.hasFn( MFn::kPolyMergeFacet ) ) ||
                ( nextNode.hasFn( MFn::kPolyMergeEdge ) ) ||
                ( nextNode.hasFn( MFn::kPolyQuad ) ) ||
                ( nextNode.hasFn( MFn::kPolySmooth ) ) ||
                ( nextNode.hasFn( MFn::kPolySplit ) ) ||
                ( nextNode.hasFn( MFn::kPolySubdEdge ) ) ||
                ( nextNode.hasFn( MFn::kPolySubdFacet ) ) ||
                ( nextNode.hasFn( MFn::kPolyTriangulate ) ) ||
                ( nextNode.hasFn( MFn::kPolyUnite ) ) ||
                ( nextNode.hasFn( MFn::kPolySeparate ) ) ||
                ( nextNode.hasFn( MFn::kPolyBoolOp ) ) ||
                ( nextNode.hasFn( MFn::kPolyToSubdiv ) ) ||
                ( nextNode.hasFn( MFn::kPolySewEdge ) ) ||
                ( nextNode.hasFn( MFn::kPolyMergeVert ) ) ||
                ( nextNode.hasFn( MFn::kPolySmoothFacet ) ) ||
                ( nextNode.hasFn( MFn::kPolyExtrudeEdge ) ) ||
                ( nextNode.hasFn( MFn::kPolyAppendVertex ) ) ||
                ( nextNode.hasFn( MFn::kPolySplitVert ) ) ||
                ( nextNode.hasFn( MFn::kPolySplitEdge ) )

           )
        {
            bHasTopologyChange = true;
            break;
        }
    }

    return bHasTopologyChange;
}

///////////////////////////////////////////////////////////////////////////////////
//
//        PrimGroupOptimizer Class
//
/////////////////////////////////////////////////////////////////////////////////

PrimGroupOptimizer::~PrimGroupOptimizer()
{    
        
}


void PrimGroupOptimizer::SetInitialVtxs(Set& vtxList)
{
    assert(vtxList.GetSetSize() );
    initialVtxs = vtxList;

}


void PrimGroupOptimizer::SetMemberFaces(Set& memFaces)
{
    assert(memFaces.GetSetSize() );
    memberFaces = memFaces;

}

//===========================================================================
// PrimGroupOptimizer::ComputeFaceLists
//===========================================================================
// Description: Creates two list of faces: member faces and non-member faces.
//
// Constraints: 
//
//  Parameters: pgIndxlist: a reference to the prim group's index list
//
//      Return: (void)
//
//===========================================================================
void PrimGroupOptimizer::ComputeFaceLists(const tlTable<unsigned long int>& pgIndxlist)
{
    int numFaces = pgIndxlist.Count() / 3;

    Set face, faceTemp;

    for(int i = 0, faceNum = 0; faceNum < numFaces && i < pgIndxlist.Count(); faceNum++, i+=3)
    {
        face.Clear();
        faceTemp.Clear();

        //create a set of vtxs for each face
        face.Add(pgIndxlist[i]);
        face.Add(pgIndxlist[i+1]);
        face.Add(pgIndxlist[i+2]);
        faceTemp = face;
        
        //determine if vtxs in face intersects the set of selected vtxs.
        face.Intersect(initialVtxs);        
        if(face.IsEmptySet()) 
        {
            nonMemberFaces.Add(faceNum); 
        }
        else
        {
            memberFaces.Add(faceNum);
        }
        face.Clear();
    }
}


//===========================================================================
// PrimGroupOptimizer::ComputeVtxSubSet
//===========================================================================
// Description: Computes the set of member vertices based on the memberFaces.
//
// Constraints: The memberFace list must be correct.
//
//  Parameters: pgIndxlist: A reference to the prim group's index list
//
//      Return: (void)
//
//===========================================================================
void PrimGroupOptimizer::ComputeVtxSubSet(const tlTable<unsigned long int>& pgIndxlist)
{
    std::vector<unsigned int> faceList;
    memberFaces.GetElements(&faceList);

    finalVtxs.Clear();
    for(int i = 0; i < faceList.size(); i++)
    {
        int j = faceList[i] * 3;
        finalVtxs.Add(pgIndxlist[ j ]);
        finalVtxs.Add(pgIndxlist[ j+1 ]);
        finalVtxs.Add(pgIndxlist[ j+2 ]);
    }


}

//===========================================================================
// PrimGroupOptimizer::TrimVtxList
//===========================================================================
// Description: Delete unwanted vertices from the primgroup's vertex list.
//
// Constraints: The finalVtx set must be correct.
//
//  Parameters: pgVertexList: Reference to the primgroup's vertex list
//
//      Return: (void)
//
//===========================================================================
void PrimGroupOptimizer::TrimVtxList(tlTable<tlVertex*>& pgVertexList)
{
    //reduce vertexList for this primgroup to only those which have face anim offset data
    int numDesiredVtxs = finalVtxs.GetSetSize();

    //generate an index map (idxMap[0] = oldVtxIndex, ....)
    std::vector<unsigned int> idxMap;
    finalVtxs.GetElements(&idxMap);

    tlTable<tlVertex*> tempVtxs;

    for(int i=0 ;i < numDesiredVtxs; i++)
    {
        //copy in VertexList at position pgVertexList[i] -> to temporary list (tempVtx) at position i
        tempVtxs.Append(pgVertexList[ idxMap[i] ]);
    }

    //copy the result list to the vertex list
    pgVertexList.Delete(0, pgVertexList.Count());
    pgVertexList = tempVtxs;
    pgVertexList.Shrink();
    pgVertexList.SetCount(numDesiredVtxs);

}

//===========================================================================
// PrimGroupOptimizer::TrimFaces
//===========================================================================
// Description: Delete faces in nonMemberFaces set.
//
// Constraints: 
//
//  Parameters: pgVertexList: Reference to the primgroup's vertex list
//
//      Return: (void)
//
//===========================================================================
void PrimGroupOptimizer::TrimFaces(tlTable<unsigned long int>& pgIndxlist)
{
    //Complement the faces set to get the faces you want to keep
    int numFaces = pgIndxlist.Count()/3;

    //get list of faces we want to keep
    std::vector<unsigned int> faceIdxs;    
    memberFaces.GetElements(&faceIdxs);
    
    //find corresponding vertex indices
    std::vector<unsigned int>::iterator fIt;
    tlTable<unsigned long int> tempIdxList;

    for(fIt= faceIdxs.begin(); fIt !=faceIdxs.end(); fIt++)
    {
        tempIdxList.Append( pgIndxlist[(*fIt * 3)] );
        tempIdxList.Append( pgIndxlist[(*fIt * 3) + 1] );
        tempIdxList.Append( pgIndxlist[(*fIt * 3) + 2] );
    }
    
    pgIndxlist.Delete(0, pgIndxlist.Count());
    pgIndxlist = tempIdxList;
    pgIndxlist.Shrink();
}

//===========================================================================
// PrimGroupOptimizer::Reindex
//===========================================================================
// Description: After deleting vertices from primgroup you need to reindex 
//              its indexlist. 
//
// Constraints: 
//
//  Parameters: pgVertexList: Reference to the primgroup's vertex list
//
//      Return: (void)
//
//===========================================================================
void PrimGroupOptimizer::Reindex(tlTable<unsigned long int>& pgIndxlist)
{
    //get the indexMap - Maps the new index to the old index value
    //e.g. if face 8 is in the ith position in the indexMap then i is the new index for vtx 8.
    std::vector<unsigned int> idxMap;
    finalVtxs.GetElements(&idxMap);

    for(int i = 0; i < pgIndxlist.Count(); i++)
    {
        std::vector<unsigned int>::iterator result = std::find(idxMap.begin(), idxMap.end(), pgIndxlist[i]);
        pgIndxlist[i] = result - idxMap.begin();
    }
}

//===========================================================================
// PrimGroupOptimizer::Reindex
//===========================================================================
// Description: Reindexes a tlOffsetlist. 
//
// Constraints: 
//
//  Parameters: tlOffsetList& pgOffsetlist: Reference to offset list (actually).
//
//      Return: (void)
//
//===========================================================================
void PrimGroupOptimizer::Reindex(tlOffsetList& pgOffsetlist)
{
    //get the offsets
    tlVtxOffset* vtxOffsets = pgOffsetlist.GetVtxOffsetlist();
    
    //get the indexMap
    std::vector<unsigned int> idxMap;
    finalVtxs.GetElements(&idxMap);

    //Note: this is a brute force method could be more optimized if too slow
    //iterate thru the offset list
    for(int i = 0; i < pgOffsetlist.GetNumOffsets(); i++)
    {
        tlVtxOffset* vtx = static_cast<tlVtxOffset* >(vtxOffsets + i);
        unsigned int index = vtx->index;
        std::vector<unsigned int>::iterator result = std::find(idxMap.begin(), idxMap.end(), index );
        vtx->index = result - idxMap.begin();
    }
}





