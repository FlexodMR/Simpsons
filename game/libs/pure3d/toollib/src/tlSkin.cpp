/*===========================================================================
    File:: tlSkin.cpp

    Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlSkin.hpp"
#include "tlVertex.hpp"
#include "tlBBoxChunk.hpp"
#include "tlBSphereChunk.hpp"
#include "tlSkinChunk.hpp"
#include "tlSkinVertex.hpp"
#include "tlTriMesh.hpp"
#include "tlSkeleton.hpp"
#include "tlDataChunk.hpp"
#include "tlInventory.hpp"
#include "tlOffsetSkinVertex.hpp"

#include <assert.h>
#include <memory.h>

const unsigned SKIN_VERSION = 3;
const unsigned SKIN_NONOPTIMISED_VERSION = 4;        //don't optimise the skin

// a table to convert from V13 to V14 vertex types
static unsigned int VertexTypeConvert [] = {
    PDDI_V_COLOUR,                   // x,y,z, rgba
    PDDI_V_NORMAL,                   // x,y,z, nx,ny,nz
    PDDI_V_UVCOUNT1,                 // x,y,z, u0,v0
    PDDI_V_UVCOUNT1 | PDDI_V_COLOUR, // x,y,z, rgba, u0,v0
    PDDI_V_UVCOUNT1 | PDDI_V_NORMAL  // x,y,z, nx,ny,nz, u0,v0
};

//*****************************************************************************
// tlSkin
//*****************************************************************************
tlSkin::tlSkin() : tlPrimGroupMesh(), skeletonName(NULL), skeletonPtr(NULL)
{

}

tlSkin::~tlSkin()
{
     strdelete(skeletonName);
}

tlSkin::tlSkin(const tlTriMesh& trimesh, 
                    const char* skeleton): 
        tlPrimGroupMesh(trimesh),
        skeletonName(NULL),
        skeletonPtr(NULL)
{
    skeletonName = strnew(skeleton);
}


tlSkin::tlSkin(tlDataChunk* ch) : tlPrimGroupMesh()
{
    LoadFromChunk(ch);
}

void tlSkin::SetSkeletonName(const char* skeleton)
{
    strdelete(skeletonName);
    skeletonName = strnew(skeleton);
}

void 
tlSkin::LoadFromChunk(tlDataChunk* ch)
{
    tlSkinChunk* skinch = dynamic_cast<tlSkinChunk*>(ch);
    assert(skinch);

    SetName(skinch->GetName());
    unsigned int Version = skinch->GetVersion();
    assert(Version == SKIN_VERSION || Version == SKIN_NONOPTIMISED_VERSION );
    skeletonName = strnew(skinch->SkeletonName());

    for( int i = 0 ; i < skinch->SubChunkCount() ; i++)
    {
        tlDataChunk* subch = skinch->GetSubChunk(i);
        switch(subch->ID())
        {
            case Pure3D::Mesh::PRIMGROUP:
            {
                tlPrimGroup* pg = new tlPrimGroup(subch);
                primgroups.Append(pg);
                break;
            }
            case Pure3D::Mesh::BOX:
            case Pure3D::Mesh::SPHERE:
                // these are computed, and ignored in the file
                break;
                
            case Pure3D::Mesh::EXPRESSIONOFFSETS:
            {
                if(exprOffsets==NULL)
                {
                    exprOffsets = new tlExpressionOffsets(subch);
                }
                break;
            }

            default:
                // Just ignore unrecognized data
                break;
        }
    }

    // If any of the PrimGroups has an offset list, assign a valid ExpressionOffset.
    // *** 14 Aug 2002 : Obsolete?? I'm not certain if offsetlists are ever loaded via PrimGroups anymore??
    if (!exprOffsets)
    {
        for(int k = 0; k < primgroups.Count(); k++)
        {
            if (primgroups[k]->GetNumOffsetLists()>0)
            {
                exprOffsets = new tlExpressionOffsets;
                break;
            }
        }
    }

    for(int j = 0; j < primgroups.Count(); j++)
    {
        primgroups[j]->SetExprOffsets(exprOffsets);
    }

    if ( exprOffsets )
    {
        int numOffsetLists = exprOffsets->NumOffsetLists();
        for ( int i = 0; i < numOffsetLists; i++ )
        {
            tlOffsetList* pOffsetList = new tlOffsetList( exprOffsets->GetOffsetListChunk( i ) );
            primgroups[pOffsetList->GetPrimGroupIndex()]->AddVertexOffsetList( pOffsetList );
        }
    }
}

tlDataChunk* 
tlSkin::Chunk()
{
    // Prepare the skin.
    MaxWeights(4);

    tlSkinChunk* result = new tlSkinChunk;
    
    result->SetName(GetName());

    result->SetSkeletonName(skeletonName);
    result->SetNumPrimGroups(primgroups.Count());

    // The (exprOffsets) pointer is populated by each tlPrimGroup
    // in the loop below. Don't delete this allocation!
    delete exprOffsets; exprOffsets = NULL;
    exprOffsets = new tlExpressionOffsets;

    for(int i = 0; i < primgroups.Count(); i++)
    {
        primgroups[i]->SetExprOffsets( exprOffsets );
        tlDataChunk* pgchunk = primgroups[i]->Chunk();
        result->AppendSubChunk(pgchunk);
    }

    if( ( exprOffsets != NULL ) && ( exprOffsets->NumOffsetLists() > 0 ) )
        result->SetVersion( SKIN_NONOPTIMISED_VERSION );    //don't optimise facial animationed skin
    else
        result->SetVersion( SKIN_VERSION );    

    UpdateBounds();
    
    tlBBoxChunk *bb = new tlBBoxChunk;
    bb->SetBox(bbox);
    result->AppendSubChunk(bb);

    tlBSphereChunk *bs = new tlBSphereChunk();
    bs->SetSphere(bsphere);
    result->AppendSubChunk(bs);
    
    //create tlExpressionAnimOffset chunk if pgMesh has tlOffsetLists
    if( ( exprOffsets != NULL ) && ( exprOffsets->NumOffsetLists() > 0 ) )
    {
        result->AppendSubChunk(exprOffsets->Chunk());
    }

    // Cross fingers that this isn't needed anywhere else.
    delete exprOffsets; exprOffsets = NULL;

    return result;
}

void
tlSkin::MaxWeights(int maxweights)
{
    for(int i = 0; i < NumVertices(); i++)
    {
        tlSkinVertex* sv = dynamic_cast<tlSkinVertex*>(GetVertex(i));
        assert(sv);

        sv->MaxWeights(maxweights);
    }
}

void
tlSkin::ThresholdWeights(float mininfluence)
{
    int count = NumVertices();
    for(int i = 0; i < count; i++)
    {
        tlSkinVertex* sv = dynamic_cast<tlSkinVertex*>(GetVertex(i));
        assert(sv);

        sv->ThresholdWeights(mininfluence);
    }
}

int
tlSkin::CountWeights()
{
    int weightcount = 0;
    int vertexcount = NumVertices();
    for(int i = 0; i < vertexcount; i++)
    {
        tlSkinVertex* sv = dynamic_cast<tlSkinVertex*>(GetVertex(i));
        assert(sv);

        weightcount += sv->NumJointWeights();
    }
    return weightcount;
}

void
tlSkin::AddInstanceInfo(int numInstances)
{
    for(int i = 0; i < primgroups.Count(); i++)
    {
        primgroups[i]->AddInstanceInfo(numInstances);
    }
}

void 
tlSkin::RemapBoneWeights(tlSkeleton* skeleton)
{
    if(skeleton)
    {
        if(skeleton->IsSorted())
        {
            int vertexcount = NumVertices();
            for(int v = 0; v < vertexcount; v++)
            {
                tlSkinVertex* sv = dynamic_cast<tlSkinVertex*>(GetVertex(v));
                assert(sv);
        
                int count = sv ->NumJointWeights();

                for(int i = 0; i < count; i++)
                {
                    int oldJointIndex = sv->GetJointWeight(i).jointindex;
                    int newIndex = skeleton->GetSortedJointIndex(oldJointIndex);
                    sv->SetJointIndex(i, newIndex);
                }
            }
        }
    }
}

void tlSkin::TrimOffsets(float tolerance)
{
    int count = NumVertices();
    for(int i = 0; i < count; i++)
    {
        tlOffsetSkinVertex* sv = dynamic_cast<tlOffsetSkinVertex*>(GetVertex(i));
        if (sv)
            sv->TrimOffsets(tolerance);
    }
}

void
tlSkin::ResolveReferences(tlInventory* inv)
{
    tlPrimGroupMesh::ResolveReferences(inv);

    if(skeletonName)
    {
        skeletonPtr = toollib_find<tlSkeleton>(inv, skeletonName);
    }
}

void
tlSkin::MarkReferences(int m)
{
    tlPrimGroupMesh::MarkReferences(m);

    if(skeletonPtr)
    {
        skeletonPtr->Mark(m);
        skeletonPtr->MarkReferences(m);
    }
}

//
//      For each primgroup of the skin, break it into two new primgroups, one
//      of them has all vertex with offsets, the other one
//      contains the rest of the vertex
//      If the new created primgroup with vertex number less than the threshold,
//      skip the breaking.
//      
//
tlSkin * tlSkin::SeparateOffsets( int threshold )
{
    tlSkin* newSkin = new tlSkin();

    newSkin->SetSkeletonName( GetSkeletonName() );
    newSkin->SetName( GetName() );
    newSkin->SetExprOffsets( GetExprOffsets() );

    int i;
    for(i = 0; i < NumPrimGroups(); i++)
    {
        tlTable<tlVertex*> noOffsets;
        tlTable<tlVertex*> withOffsets;

        tlPrimGroup* in = GetPrimGroup(i);

        assert((in->GetType() == PDDI_PRIM_TRIANGLES) || (in->GetType() == PDDI_PRIM_TRISTRIP));
        
        bool tristrip = in->GetType() == PDDI_PRIM_TRISTRIP; 
        bool indexed = in->GetIndexCount() != 0;
        int count = indexed ? in->GetIndexCount() : in->GetVertexCount();

        noOffsets.Resize(count);
        withOffsets.Resize(count);

        bool flip = false;
        for( int j = 0; j+2 < count; j += tristrip ? 1 : 3)
        {
            tlVertex* v[3];
            int vIndex[3];

//            v[0] = (indexed ? in->GetVertex(in->GetIndex(j)) : in->GetVertex(j));
//            v[(tristrip && flip) ? 2 : 1] = (indexed ? in->GetVertex(in->GetIndex(j+1)) : in->GetVertex(j+1));
//            v[(tristrip && flip) ? 1 : 2] = (indexed ? in->GetVertex(in->GetIndex(j+2)) : in->GetVertex(j+2));

            vIndex[0] = (indexed ? in->GetIndex(j) : j );
            vIndex[1] = (indexed ? in->GetIndex(j+1) : j+1 );
            vIndex[2] = (indexed ? in->GetIndex(j+2) : j+2 );

            v[0] = in->GetVertex(vIndex[0]);
            v[(tristrip && flip) ? 2 : 1] = in->GetVertex(vIndex[1]);
            v[(tristrip && flip) ? 1 : 2] = in->GetVertex(vIndex[2]);

            flip = !flip;

            bool hasOffsets = false;
            
            for (int k = 0; k < 3; k++)
            {
                //if any vertex in this tri has offsets, we move it into the hasOffsets pg
                for ( int o = 0; o < in->GetNumOffsetLists(); o++ )
                {
                    tlOffsetList* pOffsetList = in->GetOffsetList(o);
                    for ( int p = 0; p < pOffsetList->GetNumOffsets(); p++ )
                    {
                        tlVtxOffset* pVtxOffset = pOffsetList->GetVtxOffsetlist();

                        if (
                                ( pVtxOffset[p].index == vIndex[0] ) || 
                                ( pVtxOffset[p].index == vIndex[1] ) || 
                                ( pVtxOffset[p].index == vIndex[2] )
                            )
                        {
                            hasOffsets = true;
                            break;
                        }
                    }
                }

//                tlOffsetSkinVertex* osv = dynamic_cast<tlOffsetSkinVertex*>(v[k]);
//                if ((osv != NULL) && (osv->GetNumOffsets() > 0))
//                {
//                    hasOffsets = true;
//                }
            }

            if (hasOffsets)
            {
                withOffsets.Append(v[0]);
                withOffsets.Append(v[1]);
                withOffsets.Append(v[2]);
            }
            else
            {
                noOffsets.Append(v[0]);
                noOffsets.Append(v[1]);
                noOffsets.Append(v[2]);
            }
        }      

        if( withOffsets.Count() > threshold )
        {
            tlPrimGroup*  pgwo = new tlPrimGroup(withOffsets);
            pgwo->SetShader(in->GetShader());
            pgwo->SetVertexType(in->GetVertexType());
            pgwo->SetOffsetIndices(in->GetOffsetIndices());
            newSkin->AddPrimGroup(pgwo);
        }
        else{
            for( int i = 0; i < withOffsets.Count( ); ++i )
                noOffsets.Append( withOffsets[ i ] );
        }

        if(noOffsets.Count() != 0)
        {
            tlPrimGroup*  pgno = new tlPrimGroup(noOffsets);
            pgno->SetShader(in->GetShader());
            pgno->SetVertexType(in->GetVertexType());
            pgno->SetOffsetIndices(in->GetOffsetIndices());
            newSkin->AddPrimGroup(pgno);
        }

    }

    return newSkin;
}

//
//      For each primgroup of the skin, break it into two new primgroups, one
//      of them has all vertex whose bones number is "bonesNum", the other one
//      contains the rest of the vertex
//      If the new created primgroup with vertex number less than the threshold,
//      skip the breaking.
//      
//
tlSkin * tlSkin::SeparateBones( int bonesNum, int threshold )
{

    tlSkin* newSkin = new tlSkin();

    newSkin->SetSkeletonName( GetSkeletonName() );
    newSkin->SetName( GetName() );
    newSkin->SetExprOffsets( GetExprOffsets());

    for(int i = 0; i < NumPrimGroups(); i++)
    {
        tlTable<tlVertex*> weighted;
        tlTable<tlVertex*> numBones;

        tlPrimGroup* in = GetPrimGroup(i);

        assert((in->GetType() == PDDI_PRIM_TRIANGLES) || (in->GetType() == PDDI_PRIM_TRISTRIP));
        
        bool tristrip = in->GetType() == PDDI_PRIM_TRISTRIP; 
        bool indexed = in->GetIndexCount() != 0;
        int count = indexed ? in->GetIndexCount() : in->GetVertexCount();

        weighted.Resize(count);
        numBones.Resize(count);

        bool flip = false;
        for(int j = 0; j+2 < count; j += tristrip ? 1 : 3)
        {
            tlVertex* v[3];
            v[0] = (indexed ? in->GetVertex(in->GetIndex(j)) : in->GetVertex(j));
            v[(tristrip && flip) ? 2 : 1] = (indexed ? in->GetVertex(in->GetIndex(j+1)) : in->GetVertex(j+1));
            v[(tristrip && flip) ? 1 : 2] = (indexed ? in->GetVertex(in->GetIndex(j+2)) : in->GetVertex(j+2));

            flip = !flip;

            bool hasNumBones = true;

            for (int k = 0; k < 3; k++)
            {
                tlSkinVertex* sv = (tlSkinVertex*)v[k];
                hasNumBones = hasNumBones && ( sv->NumberOfBones( ) == bonesNum );       
            }

            if (hasNumBones)
            {
                numBones.Append(v[0]);
                numBones.Append(v[1]);
                numBones.Append(v[2]);
            }
            else
            {
                weighted.Append(v[0]);
                weighted.Append(v[1]);
                weighted.Append(v[2]);
            }
        }

        if( numBones.Count( ) <= threshold ){
            for( int i = 0; i < numBones.Count( ); ++i )
                weighted.Append( numBones[ i ] );
        }
        else{
            tlPrimGroup*  pgo = new tlPrimGroup(numBones);
            pgo->SetShader(in->GetShader());
            pgo->SetVertexType(in->GetVertexType());
            pgo->SetOffsetIndices(in->GetOffsetIndices());
            if (bonesNum == 1)
            {
                pgo->SetVertexType(in->GetVertexType() & (~PDDI_V_WEIGHTS));
            }
            newSkin->AddPrimGroup(pgo);
        }

        if(weighted.Count() != 0)
        {
            tlPrimGroup*  pgw = new tlPrimGroup(weighted);
            pgw->SetShader(in->GetShader());
            pgw->SetVertexType(in->GetVertexType());
            pgw->SetOffsetIndices(in->GetOffsetIndices());
            newSkin->AddPrimGroup(pgw);
        }
    }

    return newSkin;
}

//-----------------------------------------------------------------------------
//  rebuild all primgroup of the mesh as triangle lists
//  if bMerge is true, then merge all the primgroups into single one
//  if maxNumVertices is used as a constraint for the number of vertices
//  a primgroup can have
//-----------------------------------------------------------------------------
tlSkin * tlSkin::Rebuild( bool bMerge, int maxNumVertices )
{
    tlSkin* newSkin = new tlSkin();
    newSkin->SetExprOffsets( GetExprOffsets() );
    newSkin->SetSkeletonName( GetSkeletonName() );
    newSkin->SetName( GetName() );
    newSkin->SetExprOffsets( GetExprOffsets() );

    tlPrimGroupMesh::Rebuild( newSkin, bMerge, maxNumVertices );

    return newSkin;
}

//-----------------------------------------------------------------------------
//  rebuild all primgroup of the mesh as triangle lists
//  if bMerge is true, then merge all the primgroups into single one
//  if maxNumVertices is used as a constraint for the number of vertices
//  a primgroup can have
//-----------------------------------------------------------------------------
tlSkin * tlSkin::RebuildForMatrices( int maxNumMatrices )
{
    tlSkin* newSkin = new tlSkin();

    newSkin->SetSkeletonName( GetSkeletonName() );
    newSkin->SetName( GetName() );
    newSkin->SetExprOffsets( GetExprOffsets());

    tlTable<tlOffsetList*> newoffsetlists;
    int numOffsetLists = 0;
    int currentPrimGroupIndex = 0;
    int o;

    for(int i = 0; i < NumPrimGroups(); i++)
    {
        bool matricesUsed[256];
        int matrixCount = 0;
        int vertexCount = 0;

        memset(matricesUsed, 0, sizeof(bool) * 256);

        tlPrimGroup* pg =  GetPrimGroup(i);

        // Must allocate this list for each new PrimGroup being added.
    // --------  BEGIN DEFORMER
        numOffsetLists = pg->GetNumOffsetLists();
        newoffsetlists.SetCount( numOffsetLists );

        for ( o = 0; o < numOffsetLists; o++ )
        {
            newoffsetlists[o] = new tlOffsetList;
            // Set index when they are added to PrimGroup - not now.
        }
    // ----------------  END DEFORMER

        for(int j = 0; j < pg->NumVertices(); j++)
        {
            tlSkinVertex* sv = (tlSkinVertex*)pg->GetVertex(j);

            for(int i = 0; i < sv->NumJointWeights(); i++)
            {
                if(sv->GetJointWeight(i).weight != 0.0f)
                {
                    assert(sv->GetJointWeight(i).jointindex < 256);

                    if(!matricesUsed[sv->GetJointWeight(i).jointindex])
                    {
                        matricesUsed[sv->GetJointWeight(i).jointindex] = true;
                        matrixCount++;
                    }
                }
            }
        }

        if(matrixCount <= maxNumMatrices)
        {
            tlTable<tlVertex*> tmpVer;
 
            assert((pg->GetType() == PDDI_PRIM_TRIANGLES) || (pg->GetType() == PDDI_PRIM_TRISTRIP));

            bool indexed = pg->GetIndexCount() != 0;
            int count = indexed ? pg->GetIndexCount() : pg->GetVertexCount();

            tmpVer.Resize(count);


            bool tristrip = pg->GetType() == PDDI_PRIM_TRISTRIP; 
            bool flip = false;

            for(int j = 0; j+2 < count; j += tristrip ? 1 : 3)
            {
                tlVertex* v[3];
                int vIndex[3];

    //            v[0] = (indexed ? in->GetVertex(in->GetIndex(j)) : in->GetVertex(j));
    //            v[(tristrip && flip) ? 2 : 1] = (indexed ? in->GetVertex(in->GetIndex(j+1)) : in->GetVertex(j+1));
    //            v[(tristrip && flip) ? 1 : 2] = (indexed ? in->GetVertex(in->GetIndex(j+2)) : in->GetVertex(j+2));

                vIndex[0] = (indexed ? pg->GetIndex(j) : j );
                vIndex[1] = (indexed ? pg->GetIndex(j+1) : j+1 );
                vIndex[2] = (indexed ? pg->GetIndex(j+2) : j+2 );

                v[0] = pg->GetVertex(vIndex[0]);
                v[(tristrip && flip) ? 2 : 1] = pg->GetVertex(vIndex[1]);
                v[(tristrip && flip) ? 1 : 2] = pg->GetVertex(vIndex[2]);

                flip = !flip;               

                // Add each vertex.
                // If a vertex was associated with a deformer vertex offset then add it to 
                // the approproate vertex offset list using its new index.
                for (int k = 0; k < 3; k++)
                {
                    tmpVer.Append(v[k]);

                    for ( o = 0; o < numOffsetLists; o++ )
                    {
                        tlOffsetList* pOffsetList = pg->GetOffsetList(o);
                        for ( int p = 0; p < pOffsetList->GetNumOffsets(); p++ )
                        {
                            tlVtxOffset* pVtxOffset = pOffsetList->GetVtxOffsetlist();

                            if ( pVtxOffset[p].index == vIndex[k] )
                            {
                                newoffsetlists[o]->AppendVertexOffset( vertexCount+k, pVtxOffset[p].offsetx, pVtxOffset[p].offsety, pVtxOffset[p].offsetz );
                            }
                        }
                    }
                }

                vertexCount += 3;

            }

            tlPrimGroup *newpg = new tlPrimGroup( tmpVer ); // 1
            newpg->SetShader(pg->GetShader());
            newpg->SetVertexType(pg->GetVertexType());
            newpg->SetOffsetIndices(pg->GetOffsetIndices());

            // Only need to perform offsets remapping if there are offsetLists to remap...
            if ( numOffsetLists > 0 )
            {
                // Allocate yet another table for the offsets that will
                // be applied to the remapped vertices in the new primGroup.
                tlTable<tlOffsetList*> finaloffsets;
                finaloffsets.SetCount( numOffsetLists );
                for ( o = 0; o < numOffsetLists; o++ )
                {
                    finaloffsets[o] = new tlOffsetList;
                    // Set index when they are added to PrimGroup - not now.
                }

                // Where did my verts go?
                tlTable<tlVertex*> vertexList = newpg->GetVertexList();
                for ( int k = 0; k < vertexList.Count(); k++ )
                {
                    for ( int m = 0; m < tmpVer.Count(); m++ )
                    {
                        if ( tmpVer[m]->Compare( *(vertexList[k]) ) == 0 )
                        {
                            // We've found vertex 'm' (the vertex added to the triangle list above)
                            // within the vertexlist 'k' (the vertex generated by the tlPrimGroup construction).

                            // Now find any offsets that applied to vertex 'm'
                            // and add them to the primGroup mapped to vertexList 'k'
                            for ( o = 0; o < numOffsetLists; o++ )
                            {
                                for ( int p = 0; p < newoffsetlists[o]->GetNumOffsets(); p++ )
                                {
                                    tlVtxOffset* pVtxOffset = newoffsetlists[o]->GetVtxOffsetlist();

                                    if ( pVtxOffset[p].index == m )
                                    {
                                        finaloffsets[o]->AppendVertexOffset( k, pVtxOffset[p].offsetx, pVtxOffset[p].offsety, pVtxOffset[p].offsetz );
                                    }
                                }
                            }

                            break;
                        }
                    }
                }

                // And, finally, add the final remapped vertex offsets to this primGroup.
                for ( o = 0; o < numOffsetLists; o++ )
                {
                    finaloffsets[o]->SetPrimGroupIndex( currentPrimGroupIndex );
                    finaloffsets[o]->SetIndex(o);
                    newpg->AddVertexOffsetList( finaloffsets[o] );
                }
            }       // if ( numOffsetLists > 0 )

            newSkin->AddPrimGroup(newpg);

            // Clear the newoffsetslist array
            for ( o = 0; o < numOffsetLists; o++ )
            {
                delete newoffsetlists[o];
            }
            newoffsetlists.Resize(0);

            tmpVer.Resize(0);
            vertexCount = 0;
            currentPrimGroupIndex++;
        }
        else
        {
            tlTable<tlVertex*> tmpVer;
            bool matricesUsed[256];
            int matrixCount = 0;

            memset(matricesUsed, 0, sizeof(bool) * 256);

            tlPrimGroup* in = GetPrimGroup(i);

            assert((in->GetType() == PDDI_PRIM_TRIANGLES) || (in->GetType() == PDDI_PRIM_TRISTRIP));

            bool indexed = in->GetIndexCount() != 0;
            int count = indexed ? in->GetIndexCount() : in->GetVertexCount();

            tmpVer.Resize(count);

            int tmpUsed[12];
            int newMatrices = 0;

            bool tristrip = in->GetType() == PDDI_PRIM_TRISTRIP; 
            bool flip = false;

            for(int j = 0; j+2 < count; j += tristrip ? 1 : 3)
            {
                tlVertex* v[3];
                v[0] = (indexed ? in->GetVertex(in->GetIndex(j)) : in->GetVertex(j));
                v[(tristrip && flip) ? 2 : 1] = (indexed ? in->GetVertex(in->GetIndex(j+1)) : in->GetVertex(j+1));
                v[(tristrip && flip) ? 1 : 2] = (indexed ? in->GetVertex(in->GetIndex(j+2)) : in->GetVertex(j+2));

                flip = !flip;

                newMatrices = 0;

                for(int i = 0; i < 12; i++)
                    tmpUsed[i] = -1;

                for(int k = 0; k < 3; k++)
                {
                    tlSkinVertex* sv = (tlSkinVertex*)v[k];

                    for(int i = 0; i < sv->NumJointWeights(); i++)
                    {
                        if((sv->GetJointWeight(i).weight != 0.0f) && !matricesUsed[sv->GetJointWeight(i).jointindex])
                        {
                            assert(sv->GetJointWeight(i).jointindex < 256);

                            int j = 0;
                            bool done = false;
                            while(!done)
                            {
                                if(tmpUsed[j] == sv->GetJointWeight(i).jointindex)
                                {
                                    done = true;
                                }

                                if(tmpUsed[j] == -1)
                                {
                                    tmpUsed[j] = sv->GetJointWeight(i).jointindex;
                                    done = true;
                                    newMatrices++;
                                }

                                j++;
                            }
                        }
                    }
                }

                // If exceeded max matrices, create a primGroup with what we have so far,
                // then start over.
                if((matrixCount + newMatrices) > maxNumMatrices)
                {
                    tlPrimGroup* npg = new tlPrimGroup(tmpVer);
                    tmpVer.Resize(0); vertexCount = 0;
                    npg->SetShader(pg->GetShader());
                    npg->SetVertexType(pg->GetVertexType());
                    npg->SetOffsetIndices(pg->GetOffsetIndices());

                    // Only need to perform offsets remapping if there are offsetLists to remap...
                    if ( numOffsetLists > 0 )
                    {
                        // Allocate yet another table for the offsets that will
                        // be applied to the remapped vertices in the new primGroup.
                        tlTable<tlOffsetList*> finaloffsets;
                        finaloffsets.SetCount( numOffsetLists );
                        for ( o = 0; o < numOffsetLists; o++ )
                        {
                            finaloffsets[o] = new tlOffsetList;
                            // Set index when they are added to PrimGroup - not now.
                        }

                        // Where did my verts go?
                        tlTable<tlVertex*> vertexList = npg->GetVertexList();
                        for ( int k = 0; k < vertexList.Count(); k++ )
                        {
                            for ( int m = 0; m < tmpVer.Count(); m++ )
                            {
                                if ( tmpVer[m]->Compare( *vertexList[k] ) == 0 )
                                {
                                    // We've found vertex 'l' (the vertex added to the triangle list above)
                                    // within the vertexlist 'k' (the vertex generated by the tlPrimGroup construction).

                                    // Now find any offsets that applied to vertex 'l'
                                    // and add them to the primGroup mapped to vertexList 'k'
                                    for ( o = 0; o < numOffsetLists; o++ )
                                    {
                                        for ( int p = 0; p < newoffsetlists[o]->GetNumOffsets(); p++ )
                                        {
                                            tlVtxOffset* pVtxOffset = newoffsetlists[o]->GetVtxOffsetlist();

                                            if ( pVtxOffset[p].index == m )
                                            {
                                                finaloffsets[o]->AppendVertexOffset( k, pVtxOffset[p].offsetx, pVtxOffset[p].offsety, pVtxOffset[p].offsetz );
                                            }
                                        }
                                    }

                                    break;
                                }
                            }
                        }

                        // And, finally, add the final remapped vertex offsets to this primGroup.
                        for ( o = 0; o < numOffsetLists; o++ )
                        {
                            finaloffsets[o]->SetPrimGroupIndex( currentPrimGroupIndex );
                            finaloffsets[o]->SetIndex(o);
                            npg->AddVertexOffsetList( finaloffsets[o] );
                        }
                    }       // if ( numOffsetLists > 0 )


                    newSkin->AddPrimGroup(npg);

                    // Clear the newoffsetslist array
                    for ( o = 0; o < numOffsetLists; o++ )
                    {
                        // no handy ::Clear() function, so just nuke and alloc a new one.
                        delete newoffsetlists[o];
                        newoffsetlists[o] = new tlOffsetList;
                    }

                    matrixCount = 0;
                    memset(matricesUsed, 0, sizeof(bool) * 256);
                    currentPrimGroupIndex++;
                }
                assert((matrixCount + newMatrices) <= maxNumMatrices);

                int m = 0;

                while(tmpUsed[m] != -1)
                {
                    if(!matricesUsed[tmpUsed[m]])
                    {
                        matricesUsed[tmpUsed[m]] = true;
                        matrixCount++;
                    }
                    m++;
                }

                tmpVer.Append(v[0]);
                tmpVer.Append(v[1]);
                tmpVer.Append(v[2]);
            }

            if(tmpVer.Count() > 0)
            {
                tlPrimGroup* npg = new tlPrimGroup(tmpVer);
                npg->SetShader(pg->GetShader());
                npg->SetVertexType(pg->GetVertexType());
                npg->SetOffsetIndices(pg->GetOffsetIndices());

                // Only need to perform offsets remapping if there are offsetLists to remap...
                if ( numOffsetLists > 0 )
                {
                    // Allocate yet another table for the offsets that will
                    // be applied to the remapped vertices in the new primGroup.
                    tlTable<tlOffsetList*> finaloffsets;
                    finaloffsets.SetCount( numOffsetLists );
                    for ( o = 0; o < numOffsetLists; o++ )
                    {
                        finaloffsets[o] = new tlOffsetList;
                        // Set index when they are added to PrimGroup - not now.
                    }

                    // Where did my verts go?
                    tlTable<tlVertex*> vertexList = npg->GetVertexList();
                    for ( int k = 0; k < vertexList.Count(); k++ )
                    {
                        for ( int m = 0; m < tmpVer.Count(); m++ )
                        {
                            if ( tmpVer[m]->Compare( *vertexList[k] ) == 0 )
                            {
                                // We've found vertex 'l' (the vertex added to the triangle list above)
                                // within the vertexlist 'k' (the vertex generated by the tlPrimGroup construction).

                                // Now find any offsets that applied to vertex 'l'
                                // and add them to the primGroup mapped to vertexList 'k'
                                for ( o = 0; o < numOffsetLists; o++ )
                                {
                                    for ( int p = 0; p < newoffsetlists[o]->GetNumOffsets(); p++ )
                                    {
                                        tlVtxOffset* pVtxOffset = newoffsetlists[o]->GetVtxOffsetlist();

                                        if ( pVtxOffset[p].index == m )
                                        {
                                            finaloffsets[o]->AppendVertexOffset( k, pVtxOffset[p].offsetx, pVtxOffset[p].offsety, pVtxOffset[p].offsetz );
                                        }
                                    }
                                }

                                break;
                            }
                        }
                    }

                    // And, finally, add the final remapped vertex offsets to this primGroup.
                    for ( o = 0; o < numOffsetLists; o++ )
                    {
                        finaloffsets[o]->SetPrimGroupIndex( currentPrimGroupIndex );
                        finaloffsets[o]->SetIndex(o);
                        npg->AddVertexOffsetList( finaloffsets[o] );
                    }
                }       // if ( numOffsetLists > 0 )

                newSkin->AddPrimGroup(npg);

                // Clear the newoffsetslist array
                for ( o = 0; o < numOffsetLists; o++ )
                {
                    delete newoffsetlists[o];
                }
                newoffsetlists.Resize(0);

                tmpVer.Resize(0);
                vertexCount = 0;
                currentPrimGroupIndex++;
            }
        }

    }
    return newSkin;
}

//*****************************************************************************
// tlSkinLoader
//*****************************************************************************
tlSkinLoader::tlSkinLoader() : 
tlEntityLoader(Pure3D::Mesh::SKIN)
{            
}

tlEntity*
tlSkinLoader::Load(tlDataChunk* chunk)
{
    return new tlSkin(chunk);
}
