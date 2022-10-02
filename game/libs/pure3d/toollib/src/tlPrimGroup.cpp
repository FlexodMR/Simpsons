/*===========================================================================
    File:: tlPrimGroup.cpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include <assert.h>

#include "tlPrimGroup.hpp"
#include "tlPrimGroupChunk.hpp"
#include "tlPoint.hpp"
#include "tlVertex.hpp"
#include "tlSkinVertex.hpp"
#include "tlOffsetSkinVertex.hpp"
#include "tlMatrix.hpp"
#include "tlShader.hpp"
#include "tlInventory.hpp"
#include "porc.hpp"
#include "pddi/pddienum.hpp"
#include "tlPrimBuffer.hpp"
#include "tlTriangle.hpp"
#include "tlImage.hpp"
#include "tlPrimGroupMesh.hpp"
#include "tlTriMeshIntersect.hpp"
#include "tlLight.hpp"
#include "tlPlane.hpp"
#include "tlPhotonMap.hpp"
#include "tlBSPTree.hpp"
#include "tlAnimation.hpp"  // for tlAnimationGroup, per vertexAnimationGroups member variable.
#include "tlVertexAnimKey.hpp"

#define NOT_LIGHTED    -1
#define DELTA          1.e-3f            //the tolerance for comparing triangle list or mesh normals
#define LIGHT_MAPPING  1
#define MAX( a, b )    a > b ? a : b
#define MIN( a, b )    a < b ? a : b
#define EPSILON        1e-3f
#define MAX_TEX_DIM    1024

#define NOT_LIGHTED    -1
#define DELTA          1.e-3f            //the tolerance for comparing triangle list or mesh normals
#define LIGHT_MAPPING  1
#define MAX( a, b )    a > b ? a : b
#define MIN( a, b )    a < b ? a : b
#define EPSILON        1e-3f
#define MAX_TEX_DIM    1024

#define VERTEX_UVMASK  15

tlPrimGroup::tlPrimGroup(): 
    primType(PDDI_PRIM_TRIANGLES),
    vertexType(PDDI_V_NT),
    shader(NULL),
    shaderPtr(NULL),
    vertexshader(NULL),
    instanceCount(0),
    instanceVertexCount(0),
    instanceIndexCount(0),
    vertexlist(),
    indexlist(),
    matrixpalette(),
    offsetlists(),
    offsetindices(),
    vertexAnimationGroups(),
    ismemoryimaged(false),
    keepNormal( false ),
    memoryimagevertexdescriptionsize(0),
    memoryimagevertexdescription(NULL),
    memoryimagevertexsize(0),
    memoryimagevertex(NULL),
    memoryimageindexsize(0),
    memoryimageindex(NULL),
    memoryimagevertexdescriptionparam(0),
    memoryimagevertexparam(0),
    memoryimageindexparam(0),
    memoryimageversion(0),
    exprOffsets(NULL)
{
}

tlPrimGroup::tlPrimGroup(tlDataChunk* ch): 
    primType(PDDI_PRIM_TRIANGLES),
    vertexType(PDDI_V_NT),
    shader(NULL),
    shaderPtr(NULL),
    vertexshader(NULL),
    instanceCount(0),
    instanceVertexCount(0),
    instanceIndexCount(0),
    vertexlist(),
    indexlist(),
    matrixpalette(),
    offsetlists(),
    offsetindices(),
    vertexAnimationGroups(),
    ismemoryimaged(false),
    keepNormal( false ),
    memoryimagevertexdescriptionsize(0),
    memoryimagevertexdescription(NULL),
    memoryimagevertexsize(0),
    memoryimagevertex(NULL),
    memoryimageindexsize(0),
    memoryimageindex(NULL),
    memoryimagevertexdescriptionparam(0),
    memoryimagevertexparam(0),
    memoryimageindexparam(0),
    memoryimageversion(0),
    exprOffsets(NULL)
{
    LoadFromChunk(ch);
}

tlPrimGroup::tlPrimGroup( const tlPrimGroup &prm ) :
    primType(prm.primType),
    vertexType(prm.vertexType),
    instanceCount(0),
    instanceVertexCount(0),
    instanceIndexCount(0),
    vertexlist(),
    indexlist(),
    matrixpalette(),
    offsetlists(),
    offsetindices(),
    vertexAnimationGroups(),
    ismemoryimaged(prm.ismemoryimaged),
    keepNormal( false ),
    memoryimagevertexdescriptionsize(prm.memoryimagevertexdescriptionsize),      
    memoryimagevertexsize(prm.memoryimagevertexsize),      
    memoryimageindexsize(prm.memoryimageindexsize),      
    memoryimagevertexdescriptionparam(prm.memoryimagevertexdescriptionparam),
    memoryimagevertexparam(prm.memoryimagevertexparam),
    memoryimageindexparam(prm.memoryimageindexparam),
    memoryimageversion(prm.memoryimageversion),
    exprOffsets(prm.exprOffsets)
{
    shader = prm.shader == NULL ? NULL : strnew( prm.shader );
    vertexshader = prm.vertexshader == NULL ? NULL : strnew( prm.vertexshader );
    shaderPtr = prm.shaderPtr == NULL ? NULL : new tlShader( *prm.shaderPtr );
    memoryimagevertexdescription = prm.memoryimagevertexdescription == NULL ? NULL : (unsigned char*)strnew( (const char *) ( prm.memoryimagevertexdescription ));
    memoryimagevertex = prm.memoryimagevertex == NULL ? NULL : (unsigned char*)strnew( (const char *) ( prm.memoryimagevertex ));
    memoryimageindex = prm.memoryimageindex == NULL ? NULL : (unsigned char*)strnew( (const char *)prm.memoryimageindex );

    int i;
    for( i = 0; i < prm.indexlist.Count( ); ++i )
         indexlist.Append( prm.indexlist[ i ] );      

    for( i = 0; i < prm.vertexlist.Count( ); ++i ){
         tlVertex *ver = prm.vertexlist[ i ]->Clone( );
         vertexlist.Append( ver );
    }
                
    for( i = 0; i < prm.matrixpalette.Count( ); ++i )
         matrixpalette.Append( prm.matrixpalette[ i ] );

    for( i = 0; i < prm.offsetindices.Count( ); ++i )
    {
        offsetindices.Append( prm.offsetindices[ i ] );
    }

    for( i = 0; i < prm.offsetlists.Count( ); ++i ){
         tlOffsetList *list = prm.offsetlists[ i ]->Clone( );
         offsetlists.Append( list );
    }
}

//===========================================================================
// tlPrimGroup::Compare
//===========================================================================
// Description: Compare function (for tlTable<tlPrimGroup*>::Sort()).
//
//              Currently compares only (in order or precedence):
//
//                  Translucency of Shader
//                  Name of Shader
//
// Constraints: The 'shaderPtr' for this tlPrimGroup and the other tlPrimGroup
//              must be valid for sorting on Translucency.  This typically
//              requires calling tlPrimGroup::ResolveReferences() prior to
//              sorting by PrimGroup.
//
// Parameters:  const tlPrimGroup& other: The tlPrimGroup against which to
//                                        compare this tlPrimGroup.
//
// Return:      (int): -1 if less, 1 if greater, 0 (zero) if equal.
//
//===========================================================================
int tlPrimGroup::Compare( const tlPrimGroup& other )
{
    int result = 0;

    if ( ( shaderPtr != NULL ) && ( other.shaderPtr != NULL ) )
    {
        // Translucent sorts after non-translucent
        result = shaderPtr->GetTranslucency() - other.shaderPtr->GetTranslucency();
    }

    if ( ( result == 0 ) && ( shader != NULL ) && ( other.shader != NULL ) )
    {
        result = strcmp( shader, other.shader );
    }

    return result;
}

// this class is used to allow sorting of tlVertex without
// needing to store the oldindex in the vertex itself.
struct VertexWrapper
{
    int oldindex;
    tlVertex* vertex;

    bool operator==(const VertexWrapper&) // for tlTable
    {
        return false;
    }
};
    
static int
VertexCompare( const void *elem1, const void *elem2 )
{
    VertexWrapper* v1 = (VertexWrapper *)( elem1 );
    VertexWrapper* v2 = (VertexWrapper *)( elem2 );
    
    return v1->vertex->Compare(*v2->vertex);
}

tlPrimGroup::tlPrimGroup(tlTable<tlVertex*>& triList) :
    primType(PDDI_PRIM_TRIANGLES),
    vertexType(PDDI_V_NT),
    shader(NULL),
    shaderPtr(NULL),
    vertexshader(NULL),
    instanceCount(0),
    instanceVertexCount(0),
    instanceIndexCount(0),
    vertexlist(),
    indexlist(),
    matrixpalette(),
    offsetlists(),
    offsetindices(),
    vertexAnimationGroups(),
    ismemoryimaged(false),
    memoryimagevertexdescriptionsize(0),
    memoryimagevertexdescription(NULL),
    memoryimagevertexsize(0),
    memoryimagevertex(NULL),
    memoryimageindexsize(0),
    memoryimageindex(NULL),
    memoryimagevertexdescriptionparam(0),
    memoryimagevertexparam(0),
    memoryimageindexparam(0),
    memoryimageversion(0),
    exprOffsets(NULL)
{
    // delete entries in the indexlist and allocate memory for the new indecies      
    indexlist.Resize(0);
    indexlist.Resize(triList.Count());

    tlTable<VertexWrapper> newverts;
    newverts.Resize(triList.Count());

    // Bug #236: Should tlPrimGroup adopt the vertexFormat from the vertices
    //           represented in the specified triList?

    // create index list for vertexlist, and copy to temporary verts array
    for(unsigned long i = 0; i < (unsigned) triList.Count(); i++)
    {
        VertexWrapper vw;
        vw.oldindex = i;
        vw.vertex = ((tlVertex*)(triList[i]))->Clone();

        // Bug #236: Added by Bryan Ewert on 22 Apr 2002
        vw.vertex->SetVertexFormat( vertexType );

        newverts.Append(vw);

        indexlist.Append(i);
    }

    // Sort and colapse the vertex list

    // Sort
    int vertcount = triList.Count();
    newverts.Sort(VertexCompare);
    
    vertexlist.Resize( vertexlist.Count() + vertcount );

    // Build remapping table and build vertex array
    int* remapping = new int[vertcount];

    for(int v = 0; v < vertcount; v++)
    {
        VertexWrapper& vw = newverts[v];
        if((v > 0) && vw.vertex->Compare(*newverts[v-1].vertex) == 0)
        {
            // delete v
            remapping[vw.oldindex] = vertexlist.Count() - 1;
        } else {
            remapping[vw.oldindex] = vertexlist.Count();
            vertexlist.Append(vw.vertex);
        }
    }

    // remap the index list
    for(int index = 0; index < indexlist.Count() ; index++)
    {
        //printf("%d %d\n",indexlist[index], remapping[indexlist[index]]);

        indexlist[index] = remapping[indexlist[index]];        
    }

    delete[] remapping;
                    
    SetVertexCount(vertexlist.Count());      
}

tlPrimGroup::~tlPrimGroup()
{
    strdelete(shader);
    strdelete(vertexshader);
    for(int i=0; i < vertexlist.Count(); i++)
    {
        delete vertexlist[i];
    }
    delete[] memoryimagevertexdescription;
    delete[] memoryimagevertex;
    delete[] memoryimageindex;
    
    // 09 Aug 2002: MEMORY LEAK PATCH
    RemoveVertexOffsetLists();
}

//-------------------------------------------------------------------
// Removes all offsetlists
//-------------------------------------------------------------------
void
tlPrimGroup::RemoveVertexOffsetLists()
{
    for ( int i = 0; i < offsetlists.Count(); i++ )
    {
        delete offsetlists[i];
    }
    offsetlists.ZeroCount();
    if(offsetindices.Count())
    {
        offsetindices.Delete(0, offsetindices.Count());
        offsetindices.Shrink();
    }
//    delete exprOffsets;
//    exprOffsets = NULL;
}

int
tlPrimGroup::CloneVertexOffsetList( const tlPrimGroup* other, long primGroupIndex )
{
    this->RemoveVertexOffsetLists();

    int numOffsets = other->GetNumOffsetLists();
    if ( numOffsets > 0 )
    {
        int i;
        for ( i = 0; i < numOffsets; i++ )
        {
             tlOffsetList *list = other->offsetlists[ i ]->Clone( );
             offsetlists.Append( list );
        }

        this->SetOffsetListPrimGroupIndex( other->offsetlists[0]->GetPrimGroupIndex() );

//        // It seems a non-NULL pointer here is used to 
//        // validate the existence of offsetlists.
//        exprOffsets = new tlExpressionOffsets;
    }
    return numOffsets;
}

//-------------------------------------------------------------------
// Removes all vertex animation lists
//-------------------------------------------------------------------
void
tlPrimGroup::RemoveVertexAnimationGroups()
{
    if(vertexAnimationGroups.Count())
    {
        vertexAnimationGroups.Delete(0, vertexAnimationGroups.Count());
        vertexAnimationGroups.Shrink();
    }
}

//-------------------------------------------------------------------
// This is required to be called when primgroups get sorted...
// Not an ideal solution... but the system if far from ideal
//-------------------------------------------------------------------
void 
tlPrimGroup::SetOffsetListPrimGroupIndex(long pgIndex)
{
    long numOffsets = offsetlists.Count();
    for(int curOffset=0;curOffset<numOffsets;curOffset++)
    {
        offsetlists[curOffset]->SetPrimGroupIndex(pgIndex);
    }
}

//-------------------------------------------------------------------
// This is required to be called when primgroups get sorted...
// Not an ideal solution... but the system if far from ideal
//-------------------------------------------------------------------
void 
tlPrimGroup::SetVertexAnimationGroupIndex(long pgIndex)
{
    long numAnimationGroups = vertexAnimationGroups.Count();
    for(int curOffset=0;curOffset<numAnimationGroups;curOffset++)
    {
        vertexAnimationGroups[curOffset]->SetGroupId(pgIndex);
    }
}

void
tlPrimGroup::LoadFromChunk(tlDataChunk* ch)
{
    tlPrimGroupChunk* pch = dynamic_cast<tlPrimGroupChunk*>(ch);
    assert(pch);
    
    primType = (pddiPrimType)pch->PrimitiveType();
    vertexType = pch->VertexType();
    shader = strnew(pch->Shader());

    int numvertices = pch->NumVertices();
    vertexlist.SetCount(numvertices);   


    // First, we must find out if there are OffsetList Chunks
    // This isn't stored in the vertex format, although perhaps
    // it should be.

    int i;
    for(i = 0; i < pch->SubChunkCount() ; i++)
    {
        tlDataChunk* subch = pch->GetSubChunk(i);
        switch(subch->ID())
        {
            case Pure3D::Mesh::OFFSETLIST:
            {
                int index = GetOffsetListIndex(subch);
                offsetindices.Append(index);
                break;
            }
          default:
              break;
        }
    }

    bool hasoffsets = (offsetindices.Count() > 0);

    // Initialize the vertex array
    for(i = 0; i < numvertices; i++)
    {
        if(vertexType & PDDI_V_INDICES)
        {
            if(hasoffsets)
            {
                vertexlist[i] = new tlOffsetSkinVertex();
            } else {
                vertexlist[i] = new tlSkinVertex();
            }
        }else{
            vertexlist[i] = new tlVertex();
        }
    
        // Bug #236: Added by Bryan Ewert on 22 Apr 2002
        vertexlist[i]->SetVertexFormat( vertexType );

    }
    
    int numindices = pch->NumIndices();
    indexlist.SetCount(numindices);

    // Load the vertices from the sub chunks

    for(i = 0; i < pch->SubChunkCount() ; i++)
    {
        tlDataChunk* subch = pch->GetSubChunk(i);
        switch(subch->ID())
        {
            case Pure3D::Mesh::VERTEXSHADER:
            {
                LoadVertexShader(subch);
                break;
            }
            case Pure3D::Mesh::POSITIONLIST:
            {
                LoadPositionList(subch);
                break;
            }
            case Pure3D::Mesh::NORMALLIST:
            {
                LoadNormalList(subch);
                break;
            }
            case Pure3D::Mesh::TANGENTLIST:
            {
                LoadTangentList(subch);
                break;
            }
            case Pure3D::Mesh::BINORMALLIST:
            {
                LoadBinormalList(subch);
                break;
            }
            case Pure3D::Mesh::PACKEDNORMALLIST:
            {
                LoadPackedNormalList(subch);
                break;
            }
            case Pure3D::Mesh::UVLIST:
            {
                LoadUVList(subch);
                break;
            }
            case Pure3D::Mesh::COLOURLIST:
            {
                LoadColourList(subch);
                break;
            }
            case Pure3D::Mesh::MULTICOLOURLIST:
            {
                LoadMultiColourList(subch);
                break;
            }
            case Pure3D::Mesh::STRIPLIST:
            {
                LoadStripList(subch);
                break;
            }
            case Pure3D::Mesh::INDEXLIST:
            {
                LoadIndexList(subch);
                break;
            }
            case Pure3D::Mesh::MATRIXLIST:
            {
                LoadMatrixList(subch);
                break;
            }
            case Pure3D::Mesh::WEIGHTLIST:
            {
                LoadWeightList(subch);
                break;
            }
            case Pure3D::Mesh::MATRIXPALETTE:
            {
                LoadMatrixPalette(subch);
                break;
            }
            case Pure3D::Mesh::OFFSETLIST:
            {
                LoadOffsetList(subch);
                break;
            }
            case Pure3D::Mesh::INSTANCEINFO:
            {
                LoadInstanceInfo(subch);
                break;
            }
            case Pure3D::Mesh::MEMORYIMAGEVERTEXDESCRIPTIONLIST:
            {
                LoadMemoryImageVertexDescription(subch);
                break;
            }
            case Pure3D::Mesh::MEMORYIMAGEVERTEXLIST:
            {
                LoadMemoryImageVertex(subch);
                break;
            }
            case Pure3D::Mesh::MEMORYIMAGEINDEXLIST:
            {
                LoadMemoryImageIndex(subch);
                break;
            }
            default:
                // Just ignore unrecognized data
                break;
        }
    }
}   

void
tlPrimGroup::SetShader(const char* sh)
{
    strdelete(shader);
    shader = strnew(sh);

    shaderPtr = NULL;
}

void
tlPrimGroup::SetVertexShader(const char* sh)
{
    strdelete(vertexshader);
    vertexshader = strnew(sh);
}

void
tlPrimGroup::ResolveReferences(tlInventory* inv)
{
    shaderPtr = toollib_find<tlShader>(inv, shader);
}

void
tlPrimGroup::MarkReferences(int m)
{
    if(shaderPtr)
    {
        shaderPtr->Mark(m);
        shaderPtr->MarkReferences(m);
    }
}

void
tlPrimGroup::BuildMemoryImage(tlPrimBuffer& buf)
{
    //HACK to choose colours over normals
    if ((vertexType & (PDDI_V_COLOUR | PDDI_V_COLOUR2)) && (vertexType & PDDI_V_NORMAL))
    {
        if( keepNormal )
            vertexType ^= (PDDI_V_COLOUR|PDDI_V_COLOUR2);
        else
            vertexType ^= PDDI_V_NORMAL;
    }

    if (vertexType & PDDI_V_INDICES)
    {
        BuildMatrixPalette();
    }


    buf.Create(GetType(), GetVertexType(), GetVertexCount(), GetIndexCount(), matrixpalette.Count());
    buf.Lock();
    
    int i;
    for(i = 0; i < GetVertexCount(); i++)
    {
        int j;
        tlVertex* vert = GetVertex(i);
        tlSkinVertex* svert = dynamic_cast<tlSkinVertex*>(vert);
        if(vertexType & PDDI_V_NORMAL)
        {
            buf.Normal(vert->GetNormal());
        }
        if(vertexType & PDDI_V_COLOUR)
        {
            buf.Colour(vert->GetColour());
        }
        else if(vertexType & PDDI_V_COLOUR2)
        {
            int numColours = PddiNumColourSets(vertexType);
            for(j = 0; j < numColours; j++)
            {
                buf.Colour(vert->GetColour(j), j);
            }
        }
        for(j = 0; j < (int)(vertexType & VERTEX_UVMASK) ; j++)
        {
            buf.UV(vert->GetUV(j), j);
        }

		if(vertexType & PDDI_V_BINORMAL)
        {
            buf.Binormal(vert->GetBinormal( ));
        }

		if(vertexType & PDDI_V_TANGENT)
        {
            buf.Binormal(vert->GetTangent( ));
        }

        if(vertexType & PDDI_V_INDICES)
        {
            assert(svert);
            
            int indices[4];
            for(int k = 0; k < 4 ; k++)
            {
                if( k <= svert->NumJointWeights())
                {
                    indices[k] = svert->GetJointWeight(k).jointindex;
                } else {
                    indices[k] = 0;
                }
            }
            
            buf.SkinIndices(indices[0], indices[1], indices[2], indices[3]);
        }

        if(vertexType & PDDI_V_WEIGHTS)
        {
            assert(svert);
            
            float weights[3];
            for(int k = 0; k < 3 ; k++)
            {
                if( k <= svert->NumJointWeights())
                {
                    weights[k] = svert->GetJointWeight(k).weight;
                } else {
                    weights[k] = 0.0f;
                }
            }
            
            buf.SkinWeights(weights[0], weights[1], weights[2]);
        }
        buf.Coord(vert->GetCoord());
    }

    for(i = 0; i < GetIndexCount(); i++)
    {
        buf.Index((short)GetIndex(i));
    }

    buf.Unlock();
    if (buf.VertexSize() > 0)
    {
        memoryimagevertexsize = buf.VertexSize();
        memoryimagevertex = new unsigned char[memoryimagevertexsize];
        memcpy(memoryimagevertex, buf.VertexData(), memoryimagevertexsize);
    }
    if (buf.IndexSize() > 0)
    {
        memoryimageindexsize = buf.IndexSize();
        memoryimageindex = new unsigned char[memoryimageindexsize];
        memcpy(memoryimageindex, buf.IndexData(), memoryimageindexsize);
    }
    if (buf.VertexDescriptionSize() > 0)
    {
        memoryimagevertexdescriptionsize = buf.VertexDescriptionSize();
        memoryimagevertexdescription = new unsigned char[memoryimagevertexdescriptionsize];
        memcpy(memoryimagevertexdescription, buf.VertexDescriptionData(), memoryimagevertexdescriptionsize);
    }

    memoryimageversion = buf.Version();
    memoryimagevertexdescriptionparam = buf.VertexDescriptionParameter();
    memoryimagevertexparam = buf.VertexParameter();
    memoryimageindexparam  = buf.IndexParameter();

    ismemoryimaged = true;
}


void 
tlPrimGroup::DumpMemoryImage(tlPrimBuffer& buf, int verbosity)
{

    if (!ismemoryimaged) return;
    buf.DumpMemoryImage(memoryimageversion, 
                              memoryimagevertexdescriptionparam, memoryimagevertexdescriptionsize, (char *)memoryimagevertexdescription,
                              memoryimagevertexparam, memoryimagevertexsize, (char *)memoryimagevertex,
                              memoryimageindexparam, memoryimageindexsize, (short *)memoryimageindex);
}

static int Iterations = 0;

tlDataChunk*
tlPrimGroup::Chunk()
{
    tlPrimGroupChunk* pgchunk = new tlPrimGroupChunk;
    pgchunk->SetShader(shader);
    pgchunk->SetPrimitiveType(primType);
    pgchunk->SetVertexType(vertexType);
    pgchunk->SetNumVertices(GetVertexCount());
    pgchunk->SetNumIndices(GetIndexCount());
    pgchunk->SetNumMatrices(0); // Set again later

    // No vertex shader chunks on the gamecube please!
    if (vertexshader && ((memoryimageversion & 0xFFFF0000)) != 0x00030000)
    {
        pgchunk->AppendSubChunk(VertexShaderChunk());
    }

    if (ismemoryimaged)
    {
        if (memoryimagevertexdescription != NULL)
        {
            pgchunk->AppendSubChunk(MemoryImageVertexDescriptionChunk());
        }
    
        if (memoryimagevertex != NULL)
        {
            pgchunk->AppendSubChunk(MemoryImageVertexChunk());
        }
        if (memoryimageindex)
        {
            pgchunk->AppendSubChunk(MemoryImageIndexChunk());
        }

        if (vertexType & PDDI_V_INDICES)
        {
            pgchunk->SetNumMatrices(matrixpalette.Count());
            pgchunk->AppendSubChunk(MatrixPaletteChunk());
        }
    }
    else 
    {
        
        pgchunk->AppendSubChunk(PositionListChunk());

        if(vertexType & PDDI_V_NORMAL)
        {
            pgchunk->AppendSubChunk(PackedNormalListChunk());
            pgchunk->AppendSubChunk(NormalListChunk());
        }
    
        unsigned i;
        for(i = 0 ; i < (vertexType & VERTEX_UVMASK) ; i++)
        {
            pgchunk->AppendSubChunk(UVListChunk(i));
        }

        if(vertexType & PDDI_V_COLOUR)
        {
            pgchunk->AppendSubChunk(ColourListChunk());
        }
        else if(vertexType & PDDI_V_COLOUR2)
        {
            int colourSets = PddiNumColourSets(vertexType);
            for(i = 0; i < colourSets; i++)
            {
                pgchunk->AppendSubChunk(MultiColourListChunk(i));
            }
        }

        if(vertexType & PDDI_V_INDICES)
        {
            BuildMatrixPalette();
            pgchunk->SetNumMatrices(matrixpalette.Count());
            pgchunk->AppendSubChunk(MatrixListChunk());
    
            if(vertexType & PDDI_V_WEIGHTS)
            {
                pgchunk->AppendSubChunk(WeightListChunk());
            }
            pgchunk->AppendSubChunk(MatrixPaletteChunk());
        }

        if(vertexType & PDDI_V_TANGENT)
        {
            pgchunk->AppendSubChunk(TangentListChunk());
        }

        if(vertexType & PDDI_V_BINORMAL)
        {
            pgchunk->AppendSubChunk(BinormalListChunk());
        }

        // striplist

        int indexcount = indexlist.Count();
        pgchunk->SetNumIndices(indexcount);

        if(indexcount)
        {
            pgchunk->AppendSubChunk(IndexListChunk());
        }


        //export offsetlists
        for(int j = 0; j < offsetlists.Count(); j++)
        {
            tlOffsetListChunk* offch = static_cast<tlOffsetListChunk*> (offsetlists[j]->Chunk());
            assert(exprOffsets);
            if(offch)
            {
                //pass the offsetlists chunk to tlExpressionAnimOffsets
                exprOffsets->AppendOffsetlistChunk( offch );
            }
        }

        /*for(int idx = 0; idx < offsetindices.Count(); idx++)
        {
            tlDataChunk* offch = OffsetListChunk(offsetindices[idx]);
            if(offch)
            {
                pgchunk->AppendSubChunk(offch);
            }
        }*/
        
        if(instanceCount)
        {
            tlInstanceInfoChunk* infoch = new tlInstanceInfoChunk;
            infoch->SetNumInstances(instanceCount);
            infoch->SetVertexCount(instanceVertexCount);
            infoch->SetIndexCount(instanceIndexCount);
            pgchunk->AppendSubChunk(infoch);
        }
    }
    return pgchunk;
}

void
tlPrimGroup::BuildMatrixPalette()
{
    matrixpalette.ZeroCount();
    matrixpalette.Resize(256);
    
    int count = GetVertexCount();
    for(int i=0; i < count; i++)
    {
        tlSkinVertex* sv = dynamic_cast<tlSkinVertex*>(GetVertex(i));
        assert(sv);
        for(int p = 0; p < sv->NumJointWeights(); p++)
        {
            unsigned long int oldindex = sv->GetJointWeight(p).jointindex;
            int newindex = -1;

            int mcount = matrixpalette.Count();
            for(int m = 0; m < mcount; m++)
            {
                if(matrixpalette[m] == oldindex)
                {
                    newindex = m;
                    break;
                }
            }
            if((newindex == -1) && (sv->GetJointWeight(p).weight != 0.0f))
            {
                newindex = matrixpalette.Count();
                matrixpalette.Append(oldindex);
            }
            
            if(sv->GetJointWeight(p).weight == 0.0f)
                newindex = 0;

            sv->SetJointIndex(p, newindex);
        }
    }
}

tlDataChunk*
tlPrimGroup::VertexShaderChunk()
{
    tlVertexShaderChunk* ch = new tlVertexShaderChunk;
    ch->SetVertexShaderName(vertexshader);
    return ch;
}

tlDataChunk*
tlPrimGroup::MemoryImageVertexDescriptionChunk()
{
    tlPrimGroupMemoryImageVertexDescriptionChunk* ch = new tlPrimGroupMemoryImageVertexDescriptionChunk;
    ch->SetVersion(memoryimageversion);
    ch->SetParam(memoryimagevertexdescriptionparam);
    ch->SetMemoryImageVertexDescriptionSize(memoryimagevertexdescriptionsize);
    ch->SetMemoryImageVertexDescription(memoryimagevertexdescription, memoryimagevertexdescriptionsize);
    return ch;
}


tlDataChunk*
tlPrimGroup::MemoryImageVertexChunk()
{
    tlPrimGroupMemoryImageVertexChunk* ch = new tlPrimGroupMemoryImageVertexChunk;
    ch->SetVersion(memoryimageversion);
    ch->SetParam(memoryimagevertexparam);
    ch->SetMemoryImageVertexSize(memoryimagevertexsize);
    ch->SetMemoryImageVertex(memoryimagevertex, memoryimagevertexsize);
    return ch;
}

tlDataChunk*
tlPrimGroup::MemoryImageIndexChunk()
{
    tlPrimGroupMemoryImageIndexChunk* ch = new tlPrimGroupMemoryImageIndexChunk;
    ch->SetVersion(memoryimageversion);
    ch->SetParam(memoryimageindexparam);
    ch->SetMemoryImageIndexSize(memoryimageindexsize);
    ch->SetMemoryImageIndex(memoryimageindex, memoryimageindexsize);
    return ch;
}

tlDataChunk*
tlPrimGroup::PositionListChunk()
{
    tlPositionListChunk* listch = new tlPositionListChunk();
    int count = GetVertexCount();
    listch->SetNumPositions(count);
    tlPoint* data = new tlPoint[count];
    for(int i=0; i < count; i++)
    {
        data[i] = GetVertex(i)->GetCoord();
    }
    listch->SetPositions(data, count);
    delete[] data;
    
    return listch;
}

tlDataChunk*
tlPrimGroup::NormalListChunk()
{
    tlNormalListChunk* listch = new tlNormalListChunk();
    int count = GetVertexCount();
    listch->SetNumNormals(count);
    tlPoint* data = new tlPoint[count];
    for(int i=0; i < count; i++)
    {
        data[i] = GetVertex(i)->GetNormal();
    }
    listch->SetNormals(data, count);
    delete[] data;
    
    return listch;
}


tlDataChunk*
tlPrimGroup::PackedNormalListChunk()
{
    tlPackedNormalListChunk* listch = new tlPackedNormalListChunk();
    int count = GetVertexCount();
    listch->SetNumNormals(count);
    unsigned char* data = new unsigned char[count];
    for(int i=0; i < count; i++)
    {
        data[i] = GetVertex(i)->GetNormal().NormalNumber();
    }
    listch->SetNormals(data, count);
    delete[] data;
    
    return listch;
}


tlDataChunk*
tlPrimGroup::BinormalListChunk()
{
    tlBinormalListChunk* listch = new tlBinormalListChunk();
    int count = GetVertexCount();
    listch->SetNumBinormals(count);
    tlPoint* data = new tlPoint[count];
    for(int i=0; i < count; i++)
    {
        data[i] = GetVertex(i)->GetBinormal();
    }
    listch->SetBinormals(data, count);
    delete[] data;
    
    return listch;
}

tlDataChunk*
tlPrimGroup::TangentListChunk()
{
    tlTangentListChunk* listch = new tlTangentListChunk();
    int count = GetVertexCount();
    listch->SetNumTangents(count);
    tlPoint* data = new tlPoint[count];
    for(int i=0; i < count; i++)
    {
        data[i] = GetVertex(i)->GetTangent();
    }
    listch->SetTangents(data, count);
    delete[] data;
    
    return listch;
}




tlDataChunk*
tlPrimGroup::UVListChunk(int channel)
{
    tlUVListChunk* listch = new tlUVListChunk();
    int count = GetVertexCount();
    listch->SetNumUVs(count);
    listch->SetChannel(channel);
    tlUV* data = new tlUV[count];
    for(int i=0; i < count; i++)
    {
        data[i] = GetVertex(i)->GetUV(channel);
    }
    listch->SetUVs(data, count);
    delete[] data;
    
    return listch;
}

tlDataChunk*
tlPrimGroup::ColourListChunk()
{
    tlColourListChunk* listch = new tlColourListChunk();
    int count = GetVertexCount();
    listch->SetNumColours(count);
    tlColour* data = new tlColour[count];
    for(int i=0; i < count; i++)
    {
        data[i] = GetVertex(i)->GetColour();
    }
    listch->SetColours(data, count);
    delete[] data;
    
    return listch;
}

tlDataChunk*
tlPrimGroup::MultiColourListChunk(int channel)
{
    tlMultiColourListChunk* listch = new tlMultiColourListChunk();
    int count = GetVertexCount();
    listch->SetNumColours(count);
    listch->SetChannel(channel);
    tlColour* data = new tlColour[count];
    for(int i=0; i < count; i++)
    {
        data[i] = GetVertex(i)->GetColour(channel);
    }
    listch->SetColours(data, count);
    delete[] data;
    
    return listch;
}

tlDataChunk*
tlPrimGroup::MatrixListChunk()
{
    tlMatrixListChunk* listch = new tlMatrixListChunk();
    int count = GetVertexCount();
    listch->SetNumMatrices(count);
    unsigned long int* data = new unsigned long int[count];
    for(int i=0; i < count; i++)
    {
        tlSkinVertex* sv = dynamic_cast<tlSkinVertex*>(GetVertex(i));
        assert(sv);
        data[i] = 0;
        for(int p = 0; (p < sv->NumJointWeights()) && (p < 4); p++)
        {
            assert(sv->GetJointWeight(p).jointindex < 256);
            unsigned char matrixindex = (unsigned char) sv->GetJointWeight(p).jointindex;
            data[i] |= matrixindex << ((3-p)*8);
        }
    }
    listch->SetMatrices(data, count);
    delete[] data;
    
    return listch;
}

tlDataChunk*
tlPrimGroup::WeightListChunk()
{
    tlWeightListChunk* listch = new tlWeightListChunk();
    int count = GetVertexCount();
    listch->SetNumWeights(count);
    tlPoint* data = new tlPoint[count];
    for(int i=0; i < count; i++)
    {
        tlSkinVertex* sv = dynamic_cast<tlSkinVertex*>(GetVertex(i));
        assert(sv);
        for(int p = 0; (p < sv->NumJointWeights()) && (p < 3); p++)
        {
            data[i][p] = sv->GetJointWeight(p).weight;
        }
    }
    listch->SetWeights(data, count);
    delete[] data;
    
    return listch;
}

tlDataChunk*
tlPrimGroup::MatrixPaletteChunk()
{
    tlMatrixPaletteChunk* listch = new tlMatrixPaletteChunk();
    int count = matrixpalette.Count();
    listch->SetNumMatrices(count);
    unsigned long int* data = new unsigned long int[count];
    for(int i=0; i < count; i++)
    {
        data[i] = matrixpalette[i];
    }
    listch->SetMatrices(data, count);
    delete[] data;
    
    return listch;
}

tlDataChunk*
tlPrimGroup::IndexListChunk()
{
    tlIndexListChunk* listch = new tlIndexListChunk();
    int count = GetIndexCount();
    listch->SetNumIndices(count);
    unsigned long int* data = new unsigned long int[count];
    for(int i=0; i < count; i++)
    {
        data[i] = indexlist[i];
    }

    listch->SetIndices(data, count);
    delete [ ]  data;
     
    return listch;
}

tlOffsetListChunk*
tlPrimGroup::OffsetListChunk(int index)
{
    tlOffsetListChunk* listch = new tlOffsetListChunk();

    // count up the offsets and build a table
    tlVtxOffset* offsets = new tlVtxOffset[GetVertexCount()];
    int count = 0;
    for(int i=0; i < GetVertexCount(); i++)
    {
        tlOffsetSkinVertex* osv = dynamic_cast<tlOffsetSkinVertex*>(GetVertex(i));
        //assert(osv);
        
        // search for an offset matching this index
        tlOffsetData* offdata = osv->FindOffset(index);
        if(offdata)
        {
            offsets[count].index = i;
            offsets[count].offsetx = offdata->offset.x;
            offsets[count].offsety = offdata->offset.y;
            offsets[count].offsetz = offdata->offset.z;
            count++;
        }
    }
    
    if(count)
    {
        // set up the chunk
        listch->SetNumOffsets(count);
        listch->SetKeyIndex(index);
        listch->SetOffsets(offsets, count);
        return listch;
    }
    else
    {
        return NULL;
    }
}


bool
tlPrimGroup::AppendTriangles(const tlPrimGroup& other)
{
    // todo:  make work with indexed prims
    if( (primType == PDDI_PRIM_TRIANGLES) &&
        (other.primType == PDDI_PRIM_TRIANGLES) &&
        (indexlist.Count() == 0) &&
        (other.indexlist.Count() == 0) &&
        (matrixpalette.Count() == 0) &&
        (other.matrixpalette.Count() == 0) &&
        (offsetlists.Count() == 0) &&
        (other.offsetlists.Count() == 0) &&
        (offsetindices.Count() == 0) &&
        (other.offsetindices.Count() == 0) )
    {
        for(int i=0; i < other.vertexlist.Count(); i++)
        {
            vertexlist.Append(other.vertexlist[i]);
        }
        SetVertexCount(vertexlist.Count());
        return true;
    }
    return false;
}

void
tlPrimGroup::SetVertex(int i, const tlVertex* vert)
{
    delete vertexlist[i];
    vertexlist[i] = vert->Clone();
}

// read the vertices from the mesh (for old loading code)
void
tlPrimGroup::LoadVertices(int vertstart, tlTable<tlVertex*> &vertices)
{
    // assumes vertex list count is already set
    int vertcount = GetVertexCount();
    for(int i = 0 ; i < vertcount; i++)
    {
        vertexlist[i] = vertices[i + vertstart]->Clone();
    }
}

int
tlPrimGroup::GetTriangleCount() const
{
    switch (primType)
    {
        case PDDI_PRIM_TRIANGLES:
            if (GetIndexCount() > 0)
            {
                return GetIndexCount() / 3;
            }
            else
            {
                return GetVertexCount() / 3;
            }
            break;

        case PDDI_PRIM_TRISTRIP:
            if (GetIndexCount() > 0)
            {
                if (GetIndexCount() >= 2)
                {
                    return GetIndexCount() - 2;
                }
                else
                {
                    return 0;
                }
            }
            else
            {
                if (GetVertexCount() >= 2)
                {
                    return GetVertexCount() - 2;
                }
                else
                {
                    return 0;
                }
            }
            break;

        default:
            return -1;
    }
}

tlTriangle tlPrimGroup::GetTriangle( int i ) const
{

     unsigned v1, v2, v3;

     GetTriangle( i, &v1, &v2, &v3 );

     tlTriangle tri;
     tri.SetVertex( 0, (tlVertex*)GetVertex( v1 ) );
     tri.SetVertex( 1, (tlVertex*)GetVertex( v2 ) );
     tri.SetVertex( 2, (tlVertex*)GetVertex( v3 ) );
     tri.SetVertexFormat( vertexType );    

     return tri;
}

tlTriangle * tlPrimGroup::CloneTriangle( int i ) const
{

     unsigned v1, v2, v3;

     GetTriangle( i, &v1, &v2, &v3 );

     tlTriangle *tri = new tlTriangle;
     tri->SetVertex( 0, (tlVertex*)GetVertex( v1 ) );
     tri->SetVertex( 1, (tlVertex*)GetVertex( v2 ) );
     tri->SetVertex( 2, (tlVertex*)GetVertex( v3 ) );
     tri->SetVertexFormat( vertexType );    

     return tri;
}

void
tlPrimGroup::GetTriangle(int i, unsigned* v1, unsigned* v2, unsigned* v3) const
{
    switch (primType)
    {
        case PDDI_PRIM_TRIANGLES:
        {
            if (GetIndexCount() > 0)
            {
                *v1 = GetIndex(i * 3);
                *v2 = GetIndex(i * 3 + 1);
                *v3 = GetIndex(i * 3 + 2);
            }
            else
            {
                *v1 = i * 3;
                *v2 = i * 3 + 1;
                *v3 = i * 3 + 2;
            }
            break;
        }

        case PDDI_PRIM_TRISTRIP:
        {
            if (GetIndexCount() > 0)
            {
                *v1 = GetIndex(i);
                if((i & 1) == 0)
                {
                    *v2 = GetIndex(i + 1);
                    *v3 = GetIndex(i + 2);
                }
                else
                {
                    // swap facing on odd triangles
                    *v2 = GetIndex(i + 2);
                    *v3 = GetIndex(i + 1);
                }
            }
            else
            {
                *v1 = i;
                if((i & 1) == 0)
                {
                    *v2 = i + 1;
                    *v3 = i + 2;
                }
                else
                {
                    // swap facing on odd triangles
                    *v2 = i + 2;
                    *v3 = i + 1;
                }
            }
            break;
        }

        default:
            // TODO: maybe should assert?
            break;
    }
}

void
tlPrimGroup::Scale(float x, float y, float z)
{

    int i;
    for(i = 0; i < vertexlist.Count(); i++)
    {
        vertexlist[i]->ScaleCoord(x, y, z);
    }
}

void 
tlPrimGroup::Translate(float x, float y, float z)
{
    int i;
    for(i = 0; i < vertexlist.Count(); i++)
    {
        tlPoint point = (vertexlist[i])->GetCoord();

        point.x = point.x + x;
        point.y = point.y + y;
        point.z = point.z + z;

        (vertexlist[i])->SetCoord(point);

    }
}

void 
tlPrimGroup::Transform(tlMatrix &m)
{
    // to transform normals, we need to use (M^-1)^T,
    // ie., the transpose of the inverse of the incoming matrix

    tlMatrix n = Inverse(m);
    n.Transpose();

    int i;
    for(i = 0; i < vertexlist.Count(); i++)
    {
        tlPoint point = (vertexlist[i])->GetCoord();
        tlPoint new_point = point * m;
        vertexlist[i]->SetCoord(new_point);

        tlPoint normal = vertexlist[i]->GetNormal();
        tlPoint new_normal = VectorTransform(n, normal);
        new_normal = Normalize(new_normal);
        vertexlist[i]->SetNormal(new_normal);
    }
}

void
tlPrimGroup::FlipUVs()
{

    int i;
    for(i = 0; i < vertexlist.Count(); i++)
    {
        vertexlist[i]->FlipUVs();
    }
}

void tlPrimGroup::FlipUV( int idx )
{
    int i;
    for(i = 0; i < vertexlist.Count(); i++)
    {
        vertexlist[i]->FlipUV( idx );
    }
}

void
tlPrimGroup::Deindex()
{
    if (GetIndexCount() == 0)
    {
        return;
    }

    // Create a new table for the replacement vertex list.
    tlTable<tlVertex*> newvertexlist;

    // Create a new table for the replacement offset list (Deformer Expressions)
    tlTable<tlOffsetList*> newoffsetlists;
    int numOffsetLists = GetNumOffsetLists();
    int list, i;

    // calculate total number of vertices in final deindexed list
    int total_count = GetIndexCount();

    // allocate space for vertex and offset lists.
    newvertexlist.SetCount(total_count);
    newoffsetlists.SetCount( numOffsetLists );

    for ( i = 0; i < numOffsetLists; i++ )
    {
        newoffsetlists[i] = new tlOffsetList;
        newoffsetlists[i]->SetIndex( i );
        newoffsetlists[i]->SetPrimGroupIndex( offsetlists[i]->GetPrimGroupIndex() );
    }

    // deindex the existing vertex list

    int indexcount = GetIndexCount();
    SetVertexCount(GetIndexCount());

    for( i = 0; i < indexcount; i++)
    {
        tlVertex* vert = vertexlist[GetIndex(i)]->Clone();
        newvertexlist[i] = vert;

        // Cycle through all of the current offsetlists.
        // When a vertex is found that targets the indexed vertex,
        // Add a new entry into the associated offsetlist with 
        // the current de-indexed index (that'd be the variable 'i').
        for ( list = 0; list < numOffsetLists; list++ )
        {
            tlVtxOffset* pVtxOffset = offsetlists[list]->GetVtxOffsetlist();

            int numOffsets = offsetlists[list]->GetNumOffsets();
            while ( numOffsets-- )
            {
                if ( pVtxOffset[numOffsets].index == GetIndex(i) )
                {
                    newoffsetlists[list]->AppendVertexOffset( i, pVtxOffset[numOffsets].offsetx, pVtxOffset[numOffsets].offsety, pVtxOffset[numOffsets].offsetz );
                }
            }
        }
    }

    //de-index all vertex animation keys bound to this primgroup
    for( i = 0; i < vertexAnimKeys.Count( ); ++i ){
        vertexAnimKeys[ i ]->Deindex( indexlist );
    }

    tlTable<unsigned long int> newindices;      // empty table
    SetIndexList(newindices);

    // free up the old vertex list and then copy
    for( i = 0; i < vertexlist.Count(); i++)
    {
        delete vertexlist[i];
    }
    vertexlist = newvertexlist;

    // free up the old offset list and then copy
    for( i = 0; i < offsetlists.Count(); i++)
    {
        delete offsetlists[i];
    }
    offsetlists = newoffsetlists;
}

void tlPrimGroup::Index( )
{
    if (GetIndexCount() != 0)
    {
        return;
    }

    // Create a new table for the replacement vertex list.
    tlTable<tlVertex*> newvertexlist;

    // Create a new table for the replacement offset list (Deformer Expressions)
    tlTable<tlOffsetList*> newoffsetlists;
    int numOffsetLists = GetNumOffsetLists();
    int list, i;

    // allocate space for offset lists.
    newoffsetlists.SetCount( numOffsetLists );
    for ( i = 0; i < numOffsetLists; i++ )
    {
        newoffsetlists[i] = new tlOffsetList;
        newoffsetlists[i]->SetIndex( i );
        newoffsetlists[i]->SetPrimGroupIndex( offsetlists[i]->GetPrimGroupIndex() );
    }

    int vertexcount = GetVertexCount( );
    for( i = 0; i < vertexcount; i++ )
    {
          int idx = -1;
          unsigned long vertidx = idx;

          for( int j = 0; j < newvertexlist.Count( ); ++j ){
                if( newvertexlist[ j ]->Compare( *vertexlist[ i ] ) == 0 ){
                     idx = j;
                     break;
                }
          }
          if( idx == -1 ){
                vertidx = newvertexlist.Count();
                tlVertex *vert = vertexlist[i]->Clone();
                newvertexlist.Append( vert );     
                unsigned long vertidx = newvertexlist.Count( ) - 1;
                indexlist.Append( vertidx );
          }
          else{
                vertidx = idx;
                indexlist.Append( vertidx );
          }

        // Cycle through all of the current offsetlists.
        // When a vertex is found that targets the de-indexed vertex,
        // add a new entry into the associated offsetlist with 
        // the current indexed index (that'd be the variable 'i').
        for ( list = 0; list < numOffsetLists; list++ )
        {
            tlVtxOffset* pVtxOffset = offsetlists[list]->GetVtxOffsetlist();

            int numOffsets = offsetlists[list]->GetNumOffsets();
            while ( numOffsets-- )
            {
                if ( pVtxOffset[numOffsets].index == i )
                {
                    newoffsetlists[list]->AppendVertexOffset( vertidx, pVtxOffset[numOffsets].offsetx, pVtxOffset[numOffsets].offsety, pVtxOffset[numOffsets].offsetz );
                }
            }
        }
    }
                

    //now pass the newly created index-list to vertex animation key for index
    for( i = 0; i < vertexAnimKeys.Count( ); ++i ){
        vertexAnimKeys[ i ]->Index( indexlist );
    }

    // free up the old list and then copy
    for( i = 0; i < vertexlist.Count(); i++)
    {
        delete vertexlist[i];
    }
    vertexlist = newvertexlist;

    // free up the old offset list and then copy
    for( i = 0; i < offsetlists.Count(); i++)
    {
        delete offsetlists[i];
    }
    offsetlists = newoffsetlists;
}

void 
tlPrimGroup::LoadVertexShader(tlDataChunk* ch)
{
    tlVertexShaderChunk* subch = dynamic_cast<tlVertexShaderChunk*>(ch);
    assert(subch);

    SetVertexShader(subch->VertexShaderName());
}

void 
tlPrimGroup::LoadPositionList(tlDataChunk* ch)
{
    tlPositionListChunk* subch = dynamic_cast<tlPositionListChunk*>(ch);
    assert(subch);

    int count = subch->NumPositions();
    const tlPoint* positions = subch->GetPositions();
    
    for(int i = 0; i < count ; i++)
    {
        vertexlist[i]->SetCoord(positions[i]);
    }
}

void 
tlPrimGroup::LoadNormalList(tlDataChunk* ch)
{
    tlNormalListChunk* subch = dynamic_cast<tlNormalListChunk*>(ch);
    assert(subch);

    int count = subch->NumNormals();
    const tlPoint* normals = subch->GetNormals();
    
    for(int i = 0; i < count ; i++)
    {
        vertexlist[i]->SetNormal(normals[i]);
    }
}

void
tlPrimGroup::LoadTangentList(tlDataChunk* ch)
{
    tlTangentListChunk* subch = dynamic_cast<tlTangentListChunk*>(ch);
    assert(subch);

    int count = subch->NumTangents();
    const tlPoint* tangents = subch->GetTangents();

    for(int i = 0; i < count; i++)
    {
        vertexlist[i]->SetTangent(tangents[i]);
    }
}

void
tlPrimGroup::LoadBinormalList(tlDataChunk* ch)
{
    tlBinormalListChunk* subch = dynamic_cast<tlBinormalListChunk*>(ch);
    assert(subch);

    int count = subch->NumBinormals();
    const tlPoint* binormals = subch->GetBinormals();

    for(int i = 0; i < count; i++)
    {
        vertexlist[i]->SetBinormal(binormals[i]);
    }
}

void 
tlPrimGroup::LoadPackedNormalList(tlDataChunk* ch)
{
    tlPackedNormalListChunk* subch = dynamic_cast<tlPackedNormalListChunk*>(ch);
    assert(subch);

    int count = subch->NumNormals();
    const unsigned char* normals = subch->GetNormals();
    
    for(int i = 0; i < count ; i++)
    {
        tlPoint norm(porcupine[normals[i]][0],
                         porcupine[normals[i]][1],
                         porcupine[normals[i]][2]);
                         
        vertexlist[i]->SetNormal(norm);
    }
}

void 
tlPrimGroup::LoadUVList(tlDataChunk* ch)
{
    tlUVListChunk* subch = dynamic_cast<tlUVListChunk*>(ch);
    assert(subch);

    int count = subch->NumUVs();
    int channel = subch->Channel();
    const tlUV* uvs = subch->GetUVs();
    
    for(int i = 0; i < count ; i++)
    {
        vertexlist[i]->SetUV(channel, uvs[i]);
    }
}

void 
tlPrimGroup::LoadColourList(tlDataChunk* ch)
{
    tlColourListChunk* subch = dynamic_cast<tlColourListChunk*>(ch);
    assert(subch);

    int count = subch->NumColours();
    const tlColour* colours = subch->GetColours();
    
    for(int i = 0; i < count ; i++)
    {
        vertexlist[i]->SetColour(colours[i]);
    }
}

void 
tlPrimGroup::LoadMultiColourList(tlDataChunk* ch)
{
    tlMultiColourListChunk* subch = dynamic_cast<tlMultiColourListChunk*>(ch);
    assert(subch);

    int count = subch->NumColours();
    int channel = subch->Channel();
    const tlColour* colours = subch->GetColours();
    
    for(int i = 0; i < count ; i++)
    {
        vertexlist[i]->SetColour(colours[i], channel);
    }
}

void 
tlPrimGroup::LoadStripList(tlDataChunk* ch)
{
    tlStripListChunk* subch = dynamic_cast<tlStripListChunk*>(ch);
    assert(subch);

//   int count = subch->NumStrips();
//   unsigned long int* strips = subch->GetStrips();

    assert("unimplemented: tlPrimGroup::LoadStripList()");
}

void 
tlPrimGroup::LoadIndexList(tlDataChunk* ch)
{
    tlIndexListChunk* subch = dynamic_cast<tlIndexListChunk*>(ch);
    assert(subch);

    int count = subch->NumIndices();
    unsigned long int* index = subch->GetIndices();
    
    for(int i = 0; i < count ; i++)
    {
        indexlist[i] = index[i];
    }
}

void 
tlPrimGroup::LoadMatrixList(tlDataChunk* ch)
{
    tlMatrixListChunk* subch = dynamic_cast<tlMatrixListChunk*>(ch);
    assert(subch);

    int count = subch->NumMatrices();
    unsigned long int* matrix = subch->GetMatrices();
    
    for(int i = 0; i < count ; i++)
    {
        tlSkinVertex* sv = dynamic_cast<tlSkinVertex*>(vertexlist[i]);
        assert(sv);
        sv->AddJointWeight( (matrix[i] >> 24) & 0xff, 1.0f);
        sv->AddJointWeight( (matrix[i] >> 16) & 0xff, 0.0f);
        sv->AddJointWeight( (matrix[i] >> 8 ) & 0xff, 0.0f);
        sv->AddJointWeight( (matrix[i]      ) & 0xff, 0.0f);
    }
}

void
tlPrimGroup::LoadOffsetList(tlDataChunk* ch)
{
    tlOffsetListChunk* subch = dynamic_cast<tlOffsetListChunk*>(ch);
    assert(subch);

    int count = subch->GetNumOffsets();
    int index = subch->GetKeyIndex();
    tlVtxOffset* offsets = subch->GetOffsets();

    for(int i = 0; i < count ; i++)
    {
        tlOffsetSkinVertex* osv = dynamic_cast<tlOffsetSkinVertex*>(vertexlist[offsets[i].index]);
        assert(osv);
        tlPoint pos(offsets[i].offsetx, offsets[i].offsety, offsets[i].offsetz);
        
        osv->AddOffset(index, pos);
    }

    //Temporary solution: create offset lists from tlOffsetSkinVertex
    //Note: clean up needed not sure why offset data is both stored in vertexlist and 
    //separately in offset list table!

    tlOffsetList* osl = new tlOffsetList();
    osl->SetIndex(index);
    osl->SetNumOffsets(count);
    osl->SetVtxOffsets(offsets);

    //get vertexidx-offset pairs
    offsetlists.Append(osl);
    
}

void
tlPrimGroup::LoadInstanceInfo(tlDataChunk* ch)
{
    tlInstanceInfoChunk* subch = dynamic_cast<tlInstanceInfoChunk*>(ch);
    assert(subch);

    instanceCount = subch->GetNumInstances();
    instanceVertexCount = subch->GetVertexCount();
    instanceIndexCount = subch->GetIndexCount();

}

int
tlPrimGroup::GetOffsetListIndex(tlDataChunk* ch)
{
    tlOffsetListChunk* pOffsetListChunk = dynamic_cast<tlOffsetListChunk*>(ch);
    assert(pOffsetListChunk);

    return pOffsetListChunk->GetKeyIndex();
}

void 
tlPrimGroup::LoadWeightList(tlDataChunk* ch)
{
    tlWeightListChunk* subch = dynamic_cast<tlWeightListChunk*>(ch);
    assert(subch);

    int count = subch->NumWeights();
    const tlPoint* weights = subch->GetWeights();
    
    for(int i = 0; i < count ; i++)
    {
        tlSkinVertex* sv = dynamic_cast<tlSkinVertex*>(vertexlist[i]);
        assert(sv);
        
        sv->SetJointWeight( 0, weights[i].x);
        sv->SetJointWeight( 1, weights[i].y);
        sv->SetJointWeight( 2, weights[i].z);
        sv->SetJointWeight( 3, 1.0f - (weights[i].x + weights[i].y + weights[i].z));
    }
}

void 
tlPrimGroup::LoadMatrixPalette(tlDataChunk* ch)
{
    tlMatrixPaletteChunk* subch = dynamic_cast<tlMatrixPaletteChunk*>(ch);
    assert(subch);

    int count = subch->NumMatrices();
    matrixpalette.SetCount(count);

    unsigned long* matrix = subch->GetMatrices();
    
    for(int i = 0; i < count ; i++)
    {
        matrixpalette[i] = matrix[i];
    }

    // unpalettize our weights
    for(int p = 0; p < vertexlist.Count(); p++)
    {
        tlSkinVertex* sv = dynamic_cast<tlSkinVertex*>(vertexlist[p]);
        assert(sv);
        sv->SetJointIndex( 0, matrixpalette[sv->GetJointWeight(0).jointindex]);
        sv->SetJointIndex( 1, matrixpalette[sv->GetJointWeight(1).jointindex]);
        sv->SetJointIndex( 2, matrixpalette[sv->GetJointWeight(2).jointindex]);
        sv->SetJointIndex( 3, matrixpalette[sv->GetJointWeight(3).jointindex]);
    }
}

void
tlPrimGroup::LoadMemoryImageVertexDescription(tlDataChunk* ch)
{
    tlPrimGroupMemoryImageVertexDescriptionChunk* subch = dynamic_cast<tlPrimGroupMemoryImageVertexDescriptionChunk*>(ch);
    assert(subch);

    memoryimageversion = subch->Version();
    memoryimagevertexdescriptionparam = subch->Param();
    memoryimagevertexdescriptionsize = subch->MemoryImageVertexDescriptionSize();
    delete[] memoryimagevertexdescription;
    memoryimagevertexdescription = new unsigned char[memoryimagevertexdescriptionsize];
    memcpy(memoryimagevertexdescription, subch->MemoryImageVertexDescription(), memoryimagevertexdescriptionsize);
    ismemoryimaged = true;
}


void
tlPrimGroup::LoadMemoryImageVertex(tlDataChunk* ch)
{
    tlPrimGroupMemoryImageVertexChunk* subch = dynamic_cast<tlPrimGroupMemoryImageVertexChunk*>(ch);
    assert(subch);

    memoryimageversion = subch->Version();
    memoryimagevertexparam = subch->Param();
    memoryimagevertexsize = subch->MemoryImageVertexSize();
    delete[] memoryimagevertex;
    memoryimagevertex = new unsigned char[memoryimagevertexsize];
    memcpy(memoryimagevertex, subch->MemoryImageVertex(), memoryimagevertexsize);
    ismemoryimaged = true;
}

void
tlPrimGroup::LoadMemoryImageIndex(tlDataChunk* ch)
{
    tlPrimGroupMemoryImageIndexChunk* subch = dynamic_cast<tlPrimGroupMemoryImageIndexChunk*>(ch);
    assert(subch);

    memoryimageversion = subch->Version();
    memoryimageindexparam = subch->Param();
    memoryimageindexsize = subch->MemoryImageIndexSize();
    delete[] memoryimageindex;
    memoryimageindex = new unsigned char[memoryimageindexsize];
    memcpy(memoryimageindex, subch->MemoryImageIndex(), memoryimageindexsize);
    ismemoryimaged = true;
}

void
tlPrimGroup::AddInstanceInfo(int numInstances)
{
    instanceCount = numInstances;
    // do we actually need to count?
    instanceVertexCount = vertexlist.Count() / numInstances;
    instanceIndexCount = indexlist.Count() / numInstances;
}

//------------------------------------------------------------------------------
//      Test if all vertex of the primgroup falls in a plane
//------------------------------------------------------------------------------
bool tlPrimGroup::IsInAPlane( ) const
{
     //if vertex has normal, we make a simple test: if all vertices have
     //the same normal, then it is lightMappable
     if(  vertexType & PDDI_V_NORMAL  ){
          assert( vertexlist.Count( ) >= 3 );
          tlPoint normal = vertexlist[ 0 ]->GetNormal( );
          tlPoint delta;

          for( int i = 1; i < vertexlist.Count( ); ++i )
                delta = delta + ( normal - vertexlist[ i ]->GetNormal( ) );          
          
          delta /= (float)( vertexlist.Count( ) );

          float l = delta.Length( );
          if( delta.Length( ) < EPSILON )
                return true;
          else
                return false;
     }
     else{       //vertex has no normal
          int count = GetTriangleCount( );
          assert( count > 0 );

          tlTriangle tri = GetTriangle( 0 );

          tlPoint normal = tri.CalcFaceNormal( );

          for( int i = 1; i < count; ++i ){
                tlTriangle tmpTri = GetTriangle( i );
                tlPoint triNormal = tmpTri.CalcFaceNormal( );

                if( !triNormal.Equal( normal, DELTA ) )
                     return false;
          }

          return true;

     }
}

//------------------------------------------------------------------------------
//      this function tests if a primgroup is light-mappable or not
//      p3dlight tool creates light map for polygons or mesh on a plane 
//      only.
//------------------------------------------------------------------------------
bool tlPrimGroup::IsLightMappable( ) const
{
     //must be triangle list to be able to be light mapped
     return( primType == PDDI_PRIM_TRIANGLES );
         

}
//--------------------------------------------------------------------------------
//      Create a light map texture for this primgroup
//--------------------------------------------------------------------------------
tlTexture * tlPrimGroup::BuildLightMap( tlTable< tlLight *> &lights, tlTable< tlPrimGroupMesh *> &geometries, 
                                       tlTable<tlTriMeshIntersect *> &trimeshes, const tlPhotonMap *photonMap,
                                       float exposure, tlTexture *grime, float filter,  int du, int dv, float sampleDensity, 
                                       bool bIntensityOnly )
{
    tlTexture * tex;

    if( IsInAPlane( ) )           //it is a plane
        tex = BuildLightMapForPlane( lights, geometries, trimeshes, photonMap, exposure, filter, 
                                      du, dv, sampleDensity, bIntensityOnly);
    else 
        tex =  BuildLightMapForTriangleList( lights, geometries, trimeshes, photonMap, exposure,
                                             filter, du, dv, sampleDensity, bIntensityOnly );

    //merge grimemap with lightmap
    if( grime )
        MergeLightMapWithGrimeMap( *grime, *tex );

    return tex;

}

//--------------------------------------------------------------------------------
//      when all vertex of this primgroup fall into a plane
//      call this func to create light map texture
//--------------------------------------------------------------------------------
tlTexture * tlPrimGroup::BuildLightMapForPlane( tlTable< tlLight *> &lights, tlTable< tlPrimGroupMesh *> & geometries, 
                                               tlTable< tlTriMeshIntersect *> & trimeshes,
                                               const tlPhotonMap *photonMap, float exposure, 
                                               float filter, int du, int dv, float sampleDensity, 
                                               bool bIntensityOnly )
{ 
    //triangle face normal in world space
    tlPoint normal = CalcPlaneNormal( );

    //matrix transform vector from light-map space to world-space
    tlMatrix matrix = MatrixToLightMapSpace( );

    //the matrix from world to UVN space;
    tlMatrix inverse = Inverse( matrix );

    float width, height;
    tlPoint corner;

    //transform to UVN space;        
    //Calculate the UV of triangle's vertex on light map space;
    CalcUVInLightMapSpace( inverse, corner, width, height );
    
    //now set the uv of light map
    SetLightMapUV( inverse, corner, width, height );

    //determine the minimum dimension which is power of 2 for the light map
    if( sampleDensity > 0. ){        //specified density
        int u = (int)(width/sampleDensity);
        int v = (int)(height/sampleDensity);

        du = 1;
        while( du < u )
            du <<= 1;

        dv = 1;
        while( dv < v )
            dv <<= 1;
    }

    double gapU = width/du;
    double gapV = height/dv;    

    tlImage *img = new tlImage( du, dv, 24 );

    //construct the plane
    tlPlane plane( normal, GetVertex( 0 )->GetCoord( ) );

    int i;

    //mark all lights that won't light current plane
    for( i = 0; i < lights.Count( ); ++i ){
        if( lights[ i ]->IsLighted( plane ) == false )
            lights[ i ]->Mark( NOT_LIGHTED );
    }

    // Center sampling
    corner.x += 0.5f * (float)gapU;
    corner.y += 0.5f * (float)gapV;
    tlPoint current = corner;

    for( i = 0; i < dv; ++i ){
        for( int j = 0; j < du; ++j ){            
            //first transform the sample back to world space
            //since sample contains the UVN space coord.
            tlPoint sample = current;
            sample = sample * matrix;
            tlColour intensity( 0.0f, 0.0f, 0.0f );          
            
            if( photonMap != NULL ) 
            {
               intensity = photonMap->Irradiance( sample, normal );
            }      

            if( photonMap == NULL /*|| photonMap->IsPrimaryIgnored()*/ )
            {
               //calc the contribution from each lights
               for( int k = 0; k < lights.Count( ); ++k ){

                   //if this light does not contribute to the primgroup, then 
                   //skip to next one
                   if( lights[ k ]->GetMark( ) == NOT_LIGHTED )
                       continue;

                   bool bInShadow = false;
                   float translucency = 1.0f;

                   //if lights[ k ] is enabled to cast shadow, then 
                   //we test if the lights are blocked by geometry or not
                   if( lights[ k ]->CastShadow( ) == true ){
                       tlPrimGroupMesh *mesh = NULL;

                
                       //if this point is not lighted by this light
                       //go to next sampling point
                       if( !( lights[ k ]->IsLighted( sample ) ) )
                           continue;

                       //test if the light is blocked by a mesh or not
                       for( int t = 0; t < geometries.Count( ); ++t ){
                           //if the mesh is marked, we are creating light map 
                           //for it right now. Or if the mesh is not 
                           //casting shadow, we just skip it
                           if( geometries[ t ]->GetMark( ) == LIGHT_MAPPING || geometries[ t ]->CastShadow( ) == false ){

                               if( geometries[ t ]->GetMark( ) == LIGHT_MAPPING )
                                   mesh = geometries[ t ];
                               continue;
                           }
                           else{       //test the ray-blocking for rest meshes
                               //create the mesh for testing intersection
                               tlTriMeshIntersect * mi =  trimeshes[ t ];
                               if( lights[ k ]->InShadow( sample, *mi ) ){
                                   if(shaderPtr->GetIntParam(tlFourCC("BLMD")) == PDDI_BLEND_ALPHA)
                                   {
                                       // translucency *= shaderPtr->LocalTranslucency(sample);
                                       translucency *= 1.0f; // HBW: Need to finish wiring this up.
                                   }
                                   else
                                   {
                                       translucency = 0.0f;
                                   }
                                   if( translucency < EPSILON ) break;
                               }

                           }
                       }
                       //a light is not blocked by any mesh that don't contain current
                       //triangle, then we should test if the light is blocked by the mesh
                       //that contains this triangle.

                       if( translucency > EPSILON ){
                           if( ( mesh != NULL ) && ( mesh->CastShadow( ) == true ) ){
                               for( int i = 0; i < mesh->NumPrimGroups( ); ++i ){
                                   tlPrimGroup * pgrm = mesh->GetPrimGroup( i );

                                   if( pgrm->GetMark( ) != LIGHT_MAPPING ){
                                       tlTriMeshIntersect tmpMesh( pgrm  );
                            
                                       bInShadow = lights[ k ]->InShadow( sample, tmpMesh );

                                       if( bInShadow == true )
                                           break;
                                   }
                               }
                           }      
                       }
                       else
                           bInShadow = true;
                   }

                   if( bInShadow == false ){
                       if( bIntensityOnly )
                           intensity = intensity + ( lights[ k ]->DiffuseLightIntensity( sample, normal ) * translucency );                    
                       else
                           intensity = intensity + ( lights[ k ]->DiffuseLight( sample, normal ) * translucency ); 
                   }
               }
            }
            intensity = intensity * ::powf( 2.0f, exposure );
            img->SetPixel( j, i, intensity );

            current.x += (float)gapU;       //move to  texel on next column
        }
        current.y += (float)gapV;           //move to next texel on raw;
        current.x = corner.x;
    }
  
   //mark all lights that won't light current plane to none
    for( i = 0; i < lights.Count( ); ++i ){
        if( lights[ i ]->GetMark(  ) == NOT_LIGHTED )
            lights[ i ]->Mark( 0 );
    }
    

    //filter the light map if required
    if( filter != 0.0f )
    {
        img->Blur( filter );
    }

    tlTexture *texture = new tlTexture( *img );
    texture->GetImage( 0 )->FlipY( );
    // Fixed red-blue swap -  texture->GetImage( 0 )->SwapChannels( 2, 1, 0 );

    delete img;
    
    return texture;

}

//--------------------------------------------------------------------------------
//      Create a light map texture for this primgroup
//--------------------------------------------------------------------------------
tlTexture * tlPrimGroup::BuildLightMapForTriangleList( tlTable< tlLight *> &lights, tlTable< tlPrimGroupMesh *> & geometries, 
                                                      tlTable<tlTriMeshIntersect *> &trimeshes, const tlPhotonMap *photonMap, 
                                                      float exposure, float filter, int du, int dv, float sampleDensity, 
                                                      bool bIntensityOnly)
{
    if( !IsLightMappable( ) )
        return NULL;

    if( IsLightMapOversizedForTriList( du, dv, sampleDensity ) )
        return  NULL;

    tlTable<tlTexture*> textures;

    //change the vertex type to append one more uv to it
    int uvidx = vertexType & 15;
    --uvidx;

    for( int i = 0; i < GetTriangleCount( ); ++i ){

        tlTriangle *originalTri = CloneTriangle( i );
        tlTriangle tmpTri( *originalTri );
       
        tlTexture * texture = tmpTri.BuildLightMap( lights, geometries, trimeshes, photonMap, exposure, filter, 
                                                    du, dv, sampleDensity, bIntensityOnly );
        textures.Append( texture );

        //now copy the new created uv from tmpTri to originalTri
        int j;
        for(j = 0; j < 3; ++j ){
            tlVertex * orgVertex = (tlVertex *)originalTri->GetVertex( j );
            orgVertex->SetUV( uvidx, tmpTri.GetVertex( j )->GetUV( uvidx ) );
        }

        for( j = 0; j < 3; ++j )            
            delete tmpTri.GetVertex( j );      

        delete originalTri;

    }


    tlTexture *tex =  PackLightMaps( textures );

    tlImage *img = tex->GetImage( 0 );
    // Fixed red-blue swap - img->SwapChannels( 2, 1, 0 );
    img->FlipY( );

    return tex;
}

tlTexture * tlPrimGroup::PackLightMaps( tlTable<tlTexture *> textures )
{
    int maxu = 0;
    int maxv = 0;

    int i, j;
    for( i = 0; i < textures.Count( ); ++i ){
        maxu = maxu < textures[ i ]->GetWidth( ) ? textures[ i ]->GetWidth( ) : maxu;
        maxv = maxv < textures[ i ]->GetHeight( ) ? textures[ i ]->GetHeight( ) : maxv;
    }
       
    int tileu, tilev;
    int texNum = textures.Count( );
    
    tileu = (int)sqrt( texNum );

    tilev = texNum/tileu;

    if( tileu*tilev < texNum )
        ++tilev;

    int du = tileu * maxu;           //dimension of resulted texture along u
    int dv = tilev * maxv;           //dimension of resulted texture along v


    //testing overflow
    if( du > MAX_TEX_DIM || dv > MAX_TEX_DIM ){
        //clean all sub textures
        for( i = 0; i < textures.Count( ); ++i )
            delete textures[ i ];

        return NULL;
    }

    int uvidx = vertexType & 15;     //uv index of light map
 
    if( uvidx > 0 )
        --uvidx;

    //round the dimension to power of 2 
    int count = 1;
    while( count < du )
        count = count << 1;

    du = count;

    count = 1;
    while( count < dv )
        count = count << 1;

    dv = count;


    tlImage image( du, dv, 32);
    count = 0;
    

    for( j = 0; j < tilev; ++j ){

        if( count >= texNum )
            break;

        for( i = 0; i < tileu; ++i ){
            if( count >= texNum )
                break;
            
            int corneru, cornerv;
            corneru = i*maxu;
            cornerv = j*maxv;

            tlImage *tmpImg = textures[ count ]->GetImage( 0 );
            
            //copy tmpImg to tile( i,j ) of image
            for( int k = 0; k < tmpImg->GetHeight( ); ++k )
                for( int t = 0; t < tmpImg->GetWidth( ); ++t )
                    image.SetPixel( corneru + t, cornerv + k, tmpImg->GetPixel( t, k ) );

            //now modify the uv coord of triangle[count] of this primgroup
            tlTriangle *tri = CloneTriangle( count );
            tlVertex *vertex;

            //first vertex
            tlUV uv = tri->GetVertex( 0 )->GetUV( uvidx );
            uv.u = ( uv.u*tmpImg->GetWidth( ) + corneru )/(float)du;
            uv.v = ( uv.v*tmpImg->GetHeight( ) + cornerv )/(float)dv;
            vertex = (tlVertex* )tri->GetVertex( 0 );
            vertex->SetUV( uvidx, uv );

            //second vertex
            uv = tri->GetVertex( 1 )->GetUV( uvidx );
            uv.u = ( uv.u*tmpImg->GetWidth( ) + corneru )/(float)du;
            uv.v = ( uv.v*tmpImg->GetHeight( ) + cornerv )/(float)dv;
            vertex = (tlVertex* )tri->GetVertex( 1 );
            vertex->SetUV( uvidx, uv );

            //thir vertex
            uv = tri->GetVertex( 2 )->GetUV( uvidx );
            uv.u = ( uv.u*tmpImg->GetWidth( ) + corneru )/(float)du;
            uv.v = ( uv.v*tmpImg->GetHeight( ) + cornerv )/(float)dv;
            vertex = (tlVertex* )tri->GetVertex( 2 );
            vertex->SetUV( uvidx, uv );

            //delete current tex after packing
            tlTexture *tex = textures[ count ];
            delete tex;

            ++count;        //next texture
            delete tri;
            
        }
    }

    tlTexture *tex = new tlTexture( image );

   
    return tex;
}

tlMatrix tlPrimGroup::MatrixToLightMapSpace( ) const
{
     tlPoint uAxis, vAxis, nAxis, origin;        //u, v, n axis;
     SetupLightMapSpace( uAxis, vAxis, nAxis, origin ); 

     tlMatrix matrix;
     matrix.IdentityMatrix( );

     //translate to origin
     matrix.Translate( origin );

     tlMatrix tmp;
     tmp.IdentityMatrix( );
     tmp.SetRow( 0, uAxis );
     tmp.SetRow( 1, vAxis );
     tmp.SetRow( 2, nAxis );

     matrix = tmp*matrix;

     return matrix;
}

//-----------------------------------------------------------------------------
//          Set up the light map space for the triangle
//          uAxis:  u axis of UV space
//          vAxis:  v axis of UV space
//          nAxis:  normal vector
//-----------------------------------------------------------------------------
void tlPrimGroup::SetupLightMapSpace( tlPoint &uAxis, tlPoint &vAxis, tlPoint &nAxis, tlPoint &origin ) const
{

    nAxis = CalcPlaneNormal( );

    tlPoint v = GetVertex( 0 )->GetCoord( );
    tlPlane plane( nAxis, v );

    tlPoint v1( 0.f, 0.f, 0.f ), v2( 1.f, 0.f, 0.f );

    // Choose a new v2 if it is parallel to the surface normal.
    if( 1.0f - fabsf( DotProd(v2, nAxis) ) < EPSILON )
    {
        v2 = tlPoint( 0.0f, 1.0f, 0.0f );
    }

    tlPoint ints1, ints2;

    plane.Intersect( v1, nAxis, &ints1 );
    plane.Intersect( v2, nAxis, &ints2 );

    origin = ints1;
    uAxis = ints2 - ints1;
    uAxis = Normalize( uAxis );

    vAxis = CrossProd(nAxis,uAxis);
/*

     nAxis = CalcPlaneNormal( );
     tlPoint v1;

     v1 = GetVertex( 1 )->GetCoord( ) - GetVertex( 0 )->GetCoord( );
 

     origin = GetVertex( 0 )->GetCoord( );
 
     uAxis = Normalize( v1 );
 
     vAxis = nAxis^uAxis;
*/
}
//------------------------------------------------------------------------------------
//          Calculatet the UV space of light map
//          if bSetUV:   set the UV coord afterword
//------------------------------------------------------------------------------------
void tlPrimGroup::CalcUVInLightMapSpace( const tlMatrix & matrix, tlPoint & corner, float &width, float &height ) const
{
     float minu, minv, maxu, maxv;


     tlPoint v = GetVertex( 0 )->GetCoord( );
     v = v*matrix;

     minu = maxu = v.x;
     minv = maxv = v.y;

     int i;
     for( i = 1; i < GetVertexCount( ); ++i ){
          v = GetVertex( i )->GetCoord( );
          v = v*matrix;

          minu = MIN( minu, v.x );   
          minv = MIN( minv, v.y );
     
          maxu = MAX( maxu, v.x );
          maxv = MAX( maxv, v.y );
     }

     corner.x = minu;
     corner.y = minv;

     width = maxu - minu;
     height = maxv - minv;

     //increase the bounding box by 20% to reduce the aliasing along
     //the edge of two neiboured planes
     float deltau, deltav;
     deltau = 0.1f*width;
     deltav = 0.1f*height;

     corner.x -= deltau;
     corner.y -= deltav;
     width  *= 1.2f;
     height *= 1.2f;
}

//--------------------------------------------------------------------------------
//      Given tranform matrix, and the light map space
//      set the uv for this primgroup
//      this should be called for a plane primgroup only
//---------------------------------------------------------------------------------
void tlPrimGroup::SetLightMapUV( const tlMatrix & matrix, const tlPoint & corner, const float &width, const float &height )
{

     int uvidx = GetVertexType( );
     uvidx &= 15;

     if( uvidx > 0 )
          --uvidx;

     //now set the uv of the light map for all vertex

     for(  int i = 0; i < GetVertexCount( ); ++i ){
          tlVertex * vertex = (tlVertex * )GetVertex( i );
          tlPoint v = vertex->GetCoord( );

          //transform the vertex to UV space
          v = v*matrix;

          tlUV uv;
          //uv coor of light map for vertex 1
          uv.u = ( v.x - corner.x )/width;
          uv.v = ( v.y - corner.y )/height;
     
          vertex->SetUV( uvidx, uv );
     }
}

tlPoint tlPrimGroup::CalcPlaneNormal( ) const
{
    tlPoint normal;

    if(  vertexType & PDDI_V_NORMAL  ){
          assert( vertexlist.Count( ) >= 3 );
          normal = vertexlist[ 0 ]->GetNormal( );
     }
     else{       //vertex has no normal
          int count = GetTriangleCount( );
          assert( count > 0 );

          tlTriangle tri = GetTriangle( 0 );
          normal = tri.CalcFaceNormal( );
     }

     return normal;
}

//--------------------------------------------------------------------------------
//          Testing if the resulted light map will be oversized
//--------------------------------------------------------------------------------
bool tlPrimGroup::IsLightMapOversizedForTriList( int du, int dv, float sDen )
{
     tlTable<tlPoint*> sizes;
     int i;
     for( i = 0; i < GetTriangleCount( ); ++i ){
          tlTriangle tri = GetTriangle( i );

          tlPoint tmp = tri.CalcLightMapSize( du, dv, sDen );          
          sizes.Append( new tlPoint( tmp ) );

          for( int j = 0; j < 3; ++j )
              delete tri.GetVertex( j );

     }

     tlPoint size = CalcPackedLightMapSize( sizes );

     for( i = sizes.Count( ) - 1; i >= 0; --i )
         delete sizes[ i ];

     if( size.x > MAX_TEX_DIM || size.y > MAX_TEX_DIM )
          return true;
     else
          return false;        
}

tlPoint tlPrimGroup::CalcPackedLightMapSize( tlTable<tlPoint *> & texSizes )
{
     int maxu = 0;
     int maxv = 0;

     int i;
     for( i = 0; i < texSizes.Count( ); ++i ){
          maxu = maxu < int( texSizes[ i ]->x ? texSizes[ i ]->x : maxu );
          maxv = maxv < int( texSizes[ i ]->y ? texSizes[ i ]->y : maxv );
     }
         
     int tileu, tilev;
     int texNum = texSizes.Count( );
     
     tileu = (int)sqrt( texNum );

     tilev = texNum/tileu;

     if( tileu*tilev < texNum )
          ++tilev;

     int du = tileu * maxu;           //dimension of resulted texture along u
     int dv = tilev * maxv;           //dimension of resulted texture along v

     tlPoint dim;
     dim.x = (float)du;
     dim.y = (float)dv;

     return dim;
}

tlPoint tlPrimGroup::CalcPackedLightMapSize( tlTable<tlTexture *> & textures )
{
     tlTable<tlPoint *> sizes;

     int i;
     for( i = 0; i < textures.Count( ); ++i ){
          tlPoint * dim = new tlPoint;

          dim->x = (float)textures[ i ]->GetWidth( );
          dim->y = (float)textures[ i ]->GetHeight( );

          sizes.Append( dim );
     }


     tlPoint size =  CalcPackedLightMapSize( sizes );

     for( i = 0; i < sizes.Count( ); ++i )
          delete sizes[ i ];

     return size;
}

//------------------------------------------------------------------------------------
//          modulate two texture of the triangle into single one
//          dstTex holds the merged texture
//------------------------------------------------------------------------------------
void tlPrimGroup::Modulate2Textures( int srcChannel, tlTexture &srcTex, int dstChannel, tlTexture & dstTex ) const
{
    for( int i = 0; i < GetTriangleCount( ); ++i ){
        tlTriangle *tri = CloneTriangle( i );
        tri->Modulate2Textures( srcChannel, srcTex, dstChannel, dstTex );

        delete tri;
    }
}

//------------------------------------------------------------------------------------
//          modulate two texture of the primgroup into single one
//          dstTex holds the merged texture
//------------------------------------------------------------------------------------
void tlPrimGroup::Merge2Textures( int srcChannel, tlTexture &srcTex, int dstChannel, tlTexture & dstTex )
{

        //change the vertex type to append one more uv to it
    int uvidx = vertexType & 15;
    --uvidx;

    //if all vertex of the primitive group are in a plane
    if( IsInAPlane( ) ){
        srcTex.GetImage( 0 )->FlipY( );        
        Modulate2Textures( uvidx - 1, srcTex, uvidx, dstTex );


        srcTex.GetImage( 0 )->FlipY( );
    }
    else{           // the merge has to be performed for each triangle

        // Fixed red-blue swap - dstTex.GetImage( 0 )->SwapChannels( 2, 1, 0 );
        srcTex.GetImage( 0 )->FlipY( );        
        for( int i = 0; i < GetTriangleCount( ); ++i ){
            
            tlTriangle * tmpTri = CloneTriangle( i );            
            tmpTri->Modulate2Textures( uvidx - 1, srcTex, uvidx, dstTex );   
            delete tmpTri;                       
                
        }
        srcTex.GetImage( 0 )->FlipY( );
        
    }

    vertexType &= (~15 );
    vertexType |= uvidx;

    CopyUV( uvidx, uvidx - 1 );

}

void tlPrimGroup::CopyUV( int srcUVidx, int dstUVidx )
{
    for( int i = 0; i < vertexlist.Count( ); ++i ){
        tlVertex *vertex = vertexlist[ i ];
        vertex->SetUV( dstUVidx, vertex->GetUV( srcUVidx ) );
    }
}

void tlPrimGroup::MergeLightMapWithGrimeMap( tlTexture &grime, tlTexture &lightmap )
{
                    //change the vertex type to append one more uv to it
    int uvidx = vertexType & 15;
    --uvidx; 

    if( IsInAPlane( ) )
        Merge2Textures( uvidx - 1, grime, uvidx, lightmap );
    else{
        // Fixed red-blue swap - lightmap.GetImage( 0 )->SwapChannels( 2, 1, 0 );   
        lightmap.GetImage( 0 )->FlipY( );
        Merge2Textures( uvidx - 1, grime, uvidx, lightmap );
        lightmap.GetImage( 0 )->FlipY( );
    }

}


//--------------------------------------------------------------------------------
//      Create a light map texture for this primgroup
//--------------------------------------------------------------------------------
tlTexture * tlPrimGroup::BuildLightMap( tlTable< tlLight *> &lights,
                                       tlBSPTree *tritree, const tlPhotonMap *photonMap,
                                       float exposure, tlTexture *grime, float filter,  int du, int dv, float sampleDensity, 
                                       bool bIntensityOnly )
{
    tlTexture * tex;

    if( IsInAPlane( ) )           //it is a plane
        tex = BuildLightMapForPlane( lights, tritree, photonMap, exposure, filter, 
                                      du, dv, sampleDensity, bIntensityOnly);
    else{
        Deindex( );         //automatically de-index non-planar primitive
        tex =  BuildLightMapForTriangleList( lights, tritree, photonMap, exposure,
                                             filter, du, dv, sampleDensity, bIntensityOnly );
    }

    //merge grimemap with lightmap
    if( grime )
        MergeLightMapWithGrimeMap( *grime, *tex );

    return tex;

}

//--------------------------------------------------------------------------------
//      when all vertex of this primgroup fall into a plane
//      call this func to create light map texture
//--------------------------------------------------------------------------------
tlTexture * tlPrimGroup::BuildLightMapForPlane( tlTable< tlLight *> &lights, 
                                               tlBSPTree *tritree,
                                               const tlPhotonMap *photonMap, float exposure, 
                                               float filter, int du, int dv, float sampleDensity, 
                                               bool bIntensityOnly )
{ 
    //triangle face normal in world space
    tlPoint normal = CalcPlaneNormal( );

    //matrix transform vector from light-map space to world-space
    tlMatrix matrix = MatrixToLightMapSpace( );

    //the matrix from world to UVN space;
    tlMatrix inverse = Inverse( matrix );

    float width, height;
    tlPoint corner;

    //transform to UVN space;        
    //Calculate the UV of triangle's vertex on light map space;
    CalcUVInLightMapSpace( inverse, corner, width, height );
    
    //now set the uv of light map
    SetLightMapUV( inverse, corner, width, height );

    //determine the minimum dimension which is power of 2 for the light map
    if( sampleDensity > 0. ){        //specified density
        int u = (int)(width/sampleDensity);
        int v = (int)(height/sampleDensity);

        du = 1;
        while( du < u )
            du <<= 1;

        dv = 1;
        while( dv < v )
            dv <<= 1;
    }

    double gapU = width/du;
    double gapV = height/dv;    

    tlImage *img = new tlImage( du, dv, 24 );

    //construct the plane
    tlPlane plane( normal, GetVertex( 0 )->GetCoord( ) );

    int i;

    //mark all lights that won't light current plane
    for( i = 0; i < lights.Count( ); ++i ){
        if( lights[ i ]->IsLighted( plane ) == false )
            lights[ i ]->Mark( NOT_LIGHTED );
    }

    // Center sampling
    corner.x += 0.5f * (float)gapU;
    corner.y += 0.5f * (float)gapV;
    tlPoint current = corner;

    for( i = 0; i < dv; ++i ){
        for( int j = 0; j < du; ++j ){            
            //first transform the sample back to world space
            //since sample contains the UVN space coord.
            tlPoint sample = current;
            sample = sample * matrix;
            tlColour intensity( 0.0f, 0.0f, 0.0f );          
            
            if( photonMap != NULL ) 
            {
               intensity = photonMap->Irradiance( sample, normal );
            }      

            if( photonMap == NULL /*|| photonMap->IsPrimaryIgnored()*/ )
            {
               //calc the contribution from each lights
               for( int k = 0; k < lights.Count( ); ++k ){

                   //if this light does not contribute to the primgroup, then 
                   //skip to next one
                   if( lights[ k ]->GetMark( ) == NOT_LIGHTED )
                       continue;

                   bool bInShadow = false;

                   //if lights[ k ] is enabled to cast shadow, then 
                   //we test if the lights are blocked by geometry or not
                   if( lights[ k ]->CastShadow( ) == true ){
                       bool blocked = false;                       
                
                       //if this point is not lighted by this light
                       //go to next sampling point
                       if( !( lights[ k ]->IsLighted( sample ) ) )
                           continue;

                       bInShadow = lights[ k ]->InShadow( sample, tritree );

                   }

                   if( bInShadow == false ){
                       if( bIntensityOnly )
                           intensity = intensity + lights[ k ]->DiffuseLightIntensity( sample, normal );                    
                       else
                           intensity = intensity + lights[ k ]->DiffuseLight( sample, normal ); 
                   }
               }
            }                    

            const tlShader *shader = GetShaderPtr();            
            if( shader && shader->HasColourParam( "DIFF" ) )
            {
                const tlColour materialDiffuseColour( shader->GetColourParam( "DIFF" ) );
                intensity = intensity * materialDiffuseColour;
            }
            
            intensity = intensity * ::powf( 2.0f, exposure );
            img->SetPixel( j, i, intensity );

            current.x += (float)gapU;       //move to  texel on next column
        }
        current.y += (float)gapV;           //move to next texel on raw;
        current.x = corner.x;
    }
  
   //mark all lights that won't light current plane to none
    for( i = 0; i < lights.Count( ); ++i ){
        if( lights[ i ]->GetMark(  ) == NOT_LIGHTED )
            lights[ i ]->Mark( 0 );
    }

    if( filter != 0.0f )
    {
        img->Blur( filter );
    }

    tlTexture *texture = new tlTexture( *img );
    texture->GetImage( 0 )->FlipY( );
    // Fixed red-blue swap - texture->GetImage( 0 )->SwapChannels( 2, 1, 0 );

    delete img;
    
    return texture;

}

//--------------------------------------------------------------------------------
//      Create a light map texture for this primgroup
//--------------------------------------------------------------------------------
tlTexture * tlPrimGroup::BuildLightMapForTriangleList( tlTable< tlLight *> &lights, 
                                                      tlBSPTree *tritree, const tlPhotonMap *photonMap, 
                                                      float exposure, float filter, int du, int dv, float sampleDensity, 
                                                      bool bIntensityOnly)
{
    if( !IsLightMappable( ) )
        return NULL;

    if( IsLightMapOversizedForTriList( du, dv, sampleDensity ) )
        return  NULL;

    tlTable<tlTexture*> textures;

    //change the vertex type to append one more uv to it
    int uvidx = vertexType & 15;
    --uvidx;

    for( int i = 0; i < GetTriangleCount( ); ++i ){

        tlTriangle *originalTri = CloneTriangle( i );
        tlTriangle tmpTri( *originalTri );
       
        tlTexture * texture = tmpTri.BuildLightMap( lights, tritree, photonMap, exposure, filter, 
                                                    du, dv, sampleDensity, bIntensityOnly );
        textures.Append( texture );

        //now copy the new created uv from tmpTri to originalTri
        int j;
        for(j = 0; j < 3; ++j ){
            tlVertex * orgVertex = (tlVertex *)originalTri->GetVertex( j );
            orgVertex->SetUV( uvidx, tmpTri.GetVertex( j )->GetUV( uvidx ) );
        }

        for( j = 0; j < 3; ++j )            
            delete tmpTri.GetVertex( j );      

        delete originalTri;
    }


    tlTexture *tex =  PackLightMaps( textures );

    tlImage *img = tex->GetImage( 0 );
    // Fixed red-blue swap - img->SwapChannels( 2, 1, 0 );
    img->FlipY( );

    return tex;
}

//---------------------------------------------------------------------------
//      Insert a vertex anim key to the primgroup
//---------------------------------------------------------------------------
void tlPrimGroup::InsertVertexAnimKey( tlVertexAnimKey *key )
{
    vertexAnimKeys.Append( key );
}
