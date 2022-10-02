/*===========================================================================
    File:: tlPrimGroupMesh.cpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlPrimGroupMesh.hpp"
#include <assert.h>
#include <string.h>
#include <stdio.h>

#include "pddi/pddienum.hpp"
#include "tlMeshChunk.hpp"
#include "tlMatrix.hpp"
#include "tlTriMesh.hpp"
#include "tlVertex.hpp"
#include "tlBBoxChunk.hpp"
#include "tlBSphereChunk.hpp"
#include "tlPlane.hpp"
#include "tlPrimGroupChunk.hpp"
#include "tlTsTriangleToTriStripConverter.hpp"
#include "tlAdjFaceList.hpp"
#include "tlSkinVertex.hpp"
#include "tlIndexedSkinVertex.hpp"
#include "tlIndexedVertex.hpp"
#include "tlTsVertexCache.h"
#include "tlTriMeshIntersect.hpp"

#include "tlDataChunk.hpp"
#include "tlInventory.hpp"
#include "tlFourCC.hpp"
#include "atenum.hpp"
#include "tlAnimation.hpp"
#include "tlVertexAnimKey.hpp"

const unsigned long MESH_VERSION = 0;
const unsigned long MESH_VERTEX_ANIMATION_VERSION = 1;

#define XBOX_CACHE_SIZE     16
#define LIGHT_MAPPING       -1
static const float DELTA = 1.0e-3f;

// vertex description
enum pddiV13VertexType
{
    PDDI_V13_VERTEX_C,   // x,y,z, rgba
    PDDI_V13_VERTEX_N,   // x,y,z, nx,ny,nz
    PDDI_V13_VERTEX_T,   // x,y,z, u0,v0
    PDDI_V13_VERTEX_CT,  // x,y,z, rgba, u0,v0
    PDDI_V13_VERTEX_NT   // x,y,z, nx,ny,nz, u0,v0
};

// a table to convert from V13 to V14 vertex types
static unsigned int VertexTypeConvert [] = {
    PDDI_V_COLOUR,                   // x,y,z, rgba
    PDDI_V_NORMAL,                   // x,y,z, nx,ny,nz
    PDDI_V_UVCOUNT1,                 // x,y,z, u0,v0
    PDDI_V_UVCOUNT1 | PDDI_V_COLOUR, // x,y,z, rgba, u0,v0
    PDDI_V_UVCOUNT1 | PDDI_V_NORMAL  // x,y,z, nx,ny,nz, u0,v0
};

//*****************************************************************************
// tlPrimGroupMesh
//*****************************************************************************
tlPrimGroupMesh::tlPrimGroupMesh() :
        tlEntity(),
        primgroups(),
        faceNormals(),
        bbox(),
        bsphere(),
        bCastShadow( true ),
        exprOffsets(NULL)
{
    bbox.Invalidate();
    vertexFormat = PDDI_V13_VERTEX_NT;   // x,y,z, nx,ny,nz, u0,v0
    version = MESH_VERSION;
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

static int
FaceCompare( const void *elem1, const void *elem2 )
{
    tlTriangle ** t1 = (tlTriangle **)( elem1 );
    tlTriangle ** t2 = (tlTriangle **)( elem2 );

    return (**t1).Compare(**t2);
}

//===========================================================================
// PrimGroupCompare     (static)
//===========================================================================
// Description: Compare callback for tlTable<tlPrimGroup*>::Sort().
//
// Constraints: See notes in tlPrimGroup::Compare().
//
// Parameters:  const void* elem1: The first item.
//              const void* elem2: The second item.
//
// Return:      (int): -1 if less, 1 if greater, 0 (zero) if equal.
//
//===========================================================================
static int
PrimGroupCompare( const void *elem1, const void *elem2 )
{
    tlPrimGroup** pg1 = (tlPrimGroup**)( elem1 );
    tlPrimGroup** pg2 = (tlPrimGroup**)( elem2 );

    return (**pg1).Compare(**pg2);
}

tlPrimGroupMesh::tlPrimGroupMesh(const tlTriMesh& trimesh):
        tlEntity(),
        primgroups(),
        faceNormals(),
        bbox(trimesh.Box()),
        bsphere(trimesh.Sphere()),
        bCastShadow( trimesh.CastShadow( ) ),
        exprOffsets( NULL )
{
    version = MESH_VERSION;
    SetName(trimesh.GetName());

    tlTable<tlTriangle*> faces = trimesh.GetFaces();
    tlTable<tlVertex *> vertexlist;

    // presize tables so they don't need to grow slowly
    tlTable <unsigned long int> indexlist;
    primgroups.Resize(faces.Count());            // This is bigger than needed
                                                                // Should we count materials first?
                                                                // or just not resize?

    faces.Sort(FaceCompare);

    int nextvertex = 0;

    int startface = 0;
    while(startface < faces.Count())
    {

        // First, find the faces using this material

        int endface = startface;
        const char* matname = faces[startface]->GetMaterial();
        const char* vertexShader = faces[startface]->GetVertexShader();
        unsigned int vertexFormat = faces[startface]->GetVertexFormat();

        for(int i = startface + 1; i < faces.Count(); i++)
        {
            if(strcmp(matname, faces[i]->GetMaterial()) != 0)
            {
                break;
            }
            if(vertexShader && faces[i]->GetVertexShader() &&
                (strcmp(vertexShader, faces[i]->GetVertexShader()) != 0))
            {
                break;
            }
            if(vertexFormat != faces[i]->GetVertexFormat())
            {
                break;
            }
            endface = i;
        }

        // delete entries in the indexlist and allocate memory for the new indecies
        indexlist.Resize(0);
        indexlist.Resize(3*(endface - startface + 1));

        // Now process each face

        nextvertex = vertexlist.Count();
        unsigned long int vertstart = nextvertex;
        unsigned long int vertfinish = vertstart;
        unsigned long int indexstart = 0;
        tlTable<VertexWrapper> newverts;
        newverts.Resize( (endface - startface +1 ) * 3);

        for(int f = startface; f <= endface; f++)
        {
            tlTriangle* face = faces[f];

            // add this faces vertices to the vertex list
            // and add the face itself to the index list
            for(int v = 0; v < 3; v++)
            {
                // Add the new vertex
                VertexWrapper vw;
                vw.oldindex = nextvertex;
                vw.vertex = ((tlVertex*)(face->GetVertex(v)))->Clone();
                newverts.Append(vw);

                // Add the vertex to the index list
                unsigned long int newindex = nextvertex - vertstart;
                indexlist.Append(newindex);

                nextvertex++;
                vertfinish++;
            }
        }

        // ××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××
        // ×
        // ×  START Vertex optimization.
        // ×
        // ×  Here the Vertex list is traversed and vertex attributes are
        // ×  compared.  If a vertex is found whose Coordinate, Normal, UV,
        // ×  Colour and (if applicable) Binormals match it is considered an
        // ×  unnecessary duplicate.  The duplicate is discarded and the index
        // ×  list is remapped to point to the first vertex matching the
        // ×  specifications.
        // ×
        // ××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××

        // Sort and colapse the vertex list

        // Sort
        int vertcount = vertfinish - vertstart;
        newverts.Sort(VertexCompare);

        vertexlist.Resize( vertexlist.Count() + vertcount );

        // Build remapping table and build vertex array
        int* remapping = new int[vertcount];

        for(int v = 0; v < vertcount; v++)
        {
            VertexWrapper& vw = newverts[v];

            // The tlVertex::Compare() method compares the Coordinate, Normal,
            // UV, Colour and (if applicable) Binormal against the specified
            // vertex.  If _any_ of these don't match it is considered
            // unique and necessary.

            // Bug #236 UPDATE: The tlVertex::Compare() method now considers
            //                  the vertex format flags, so vertex optimization
            //                  need not consider data for which vertices do
            //                  not represent.  For example, mismatched normals
            //                  will compare equal if vertex format does not include
            //                  PDDI_V_NORMAL.

            // Vertex Format on tlVertex components are inherited from their
            // tlTriMesh, and preserved when duplicated via Clone() above.

            if((v > 0) && vw.vertex->Compare(*newverts[v-1].vertex) == 0)
            {
                // delete v
                remapping[vw.oldindex - vertstart] = vertexlist.Count() - vertstart - 1;
            } else {
                remapping[vw.oldindex - vertstart] = vertexlist.Count() - vertstart;
                vertexlist.Append(vw.vertex);
            }
        }

        // remap the index list
        for(int index = indexstart; index < indexlist.Count() ; index++)
        {
            //printf("%d %d\n",indexlist[index], remapping[indexlist[index]]);

            indexlist[index] = remapping[indexlist[index]];
        }

        delete[] remapping;

        // ××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××
        // ×
        // ×  END Vertex optimization.
        // ×
        // ××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××××

        vertfinish = vertexlist.Count();

        // for each material, we make a prim group
        //primgroups.SetCount(primgroups.Count() + 1);
        tlPrimGroup * pg = new tlPrimGroup;
        pg->SetType(PDDI_PRIM_TRIANGLES);
        pg->SetMaterial(matname);
        pg->SetVertexShader(vertexShader);
        pg->SetVertexCount(vertfinish - vertstart);
        pg->SetVertexType(vertexFormat);
        pg->SetIndexList(indexlist);
        pg->LoadVertices(vertstart, vertexlist);
        // FIXME: needs to be fixed for tlOffsetSkinVerts

        // our index list contains triangles
        assert(pg->GetIndexCount() % 3 == 0);

        primgroups.Append(pg);

        startface = endface+1;
    }

// NOTE: No point sorting PrimGroups here -- references haven't been resolved
//       at this point so all shaderPtrs are NULL, and thus cannot compare
//       for translucency.

}

tlPrimGroupMesh::tlPrimGroupMesh(tlDataChunk* ch):
        tlEntity(),
        primgroups(),
        faceNormals(),
        bbox(),
        bsphere(),
        bCastShadow( true ),
        exprOffsets( NULL )
{
    bbox.Invalidate();
    LoadFromChunk(ch);
}

tlPrimGroupMesh::tlPrimGroupMesh( const tlPrimGroupMesh & mesh ) :
        bbox( mesh.bbox ),
        bsphere( mesh.bsphere ),
        version( mesh.version ),
        vertexFormat( mesh.vertexFormat ),
        bCastShadow( mesh.bCastShadow ),
        exprOffsets( NULL )
{
     int i;

     SetName( strnew( mesh.GetName( ) ) );

     for( i = 0; i < mesh.faceNormals.Count( ); ++i ){
          tlPoint *normal = new tlPoint( mesh.faceNormals[ i ] );
          faceNormals.Append( *normal );
     }

     for ( i = 0; i < mesh.primgroups.Count( ); ++i ){
          tlPrimGroup *prm = new tlPrimGroup( *mesh.primgroups[ i ] );
          primgroups.Append( prm );
     }

}

tlPrimGroupMesh::~tlPrimGroupMesh()
{
    for (int i = 0; i < primgroups.Count(); i++)
    {
        delete primgroups[i];
    }
    delete exprOffsets;
}

void
tlPrimGroupMesh::LoadFromChunk(tlDataChunk* ch)
{
    tlTable<tlVertex *> vertexlist;

    tlMeshChunk* meshch = dynamic_cast<tlMeshChunk*>(ch);
    assert(meshch);

    SetName(meshch->GetName());
    version = meshch->GetVersion();
    if( version != MESH_VERSION  && version != MESH_VERTEX_ANIMATION_VERSION )
    {
        printf("Warning, mesh %s has version %ld (%ld supported)\n",
                 meshch->GetName(),
                 version,
                 MESH_VERSION);
    }

    for( int i = 0 ; i < meshch->SubChunkCount() ; i++)
    {
        tlDataChunk* subch = meshch->GetSubChunk(i);
        switch(subch->ID())
        {
            case Pure3D::Mesh::PRIMGROUP:
            {
                tlPrimGroup* pg = new tlPrimGroup(subch);
                primgroups.Append(pg);
                break;
            }
            case Pure3D::Mesh::BOX:
            {
                tlBBoxChunk* bb = dynamic_cast<tlBBoxChunk*>(subch);
                bbox = bb->Box();
                break;
            }
            case Pure3D::Mesh::SPHERE:
            {
                tlBSphereChunk* bb = dynamic_cast<tlBSphereChunk*>(subch);
                bsphere = bb->Sphere();
                break;
            }
            case Pure3D::Mesh::EXPRESSIONOFFSETS:
            {
                if(exprOffsets==NULL)
                {
                    exprOffsets = new tlExpressionOffsets(subch);
                }
                break;
            }

            case Pure3D::Mesh::RENDERSTATUS:
            {
                tlRenderStatusChunk* rsc = dynamic_cast<tlRenderStatusChunk*>(subch);
                bCastShadow = ( rsc->CastShadow( ) != 0 );
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
        while ( numOffsetLists-- )
        {
            tlOffsetList* pOffsetList = new tlOffsetList( exprOffsets->GetOffsetListChunk( numOffsetLists ) );
            primgroups[pOffsetList->GetPrimGroupIndex()]->AddVertexOffsetList( pOffsetList );
        }
    }
}

tlDataChunk*
tlPrimGroupMesh::Chunk()
{
    UpdateBounds();

    tlMeshChunk* result = new tlMeshChunk;

    result->SetName(GetName());
    result->SetVersion(version);
    result->SetNumPrimGroups(primgroups.Count());

// ----  TEST  ----  TEST  ----  TEST  ----

    delete exprOffsets;
    exprOffsets = NULL;

    exprOffsets = new tlExpressionOffsets;

// ----  TEST  ----  TEST  ----  TEST  ----

    for(int i = 0; i < primgroups.Count(); i++)
    {
        primgroups[i]->SetExprOffsets( exprOffsets );
        tlDataChunk* pgchunk = primgroups[i]->Chunk();
        result->AppendSubChunk(pgchunk);
    }

    tlBBoxChunk *bb = new tlBBoxChunk;
    bb->SetBox(bbox);
    result->AppendSubChunk(bb);

    tlBSphereChunk *bs = new tlBSphereChunk();
    bs->SetSphere(bsphere);
    result->AppendSubChunk(bs);

    if ( exprOffsets->NumOffsetLists() > 0 )
    {
        result->AppendSubChunk(exprOffsets->Chunk());
    }

    tlRenderStatusChunk *rsc = new tlRenderStatusChunk( );
    rsc->SetCastShadow( bCastShadow );
    result->AppendSubChunk( rsc );

    return result;
}

void
tlPrimGroupMesh::UpdateBounds()
{
    if(primgroups[0]->IsMemoryImaged())
    {
        return;
    }

    int count = NumVertices();
    tlPoint* points = new tlPoint[count];
    int i = 0;
    int next = 0;
    int last = 0;
    for(int p = 0; p < NumPrimGroups() ; p++)
    {
        tlPrimGroup* pg = GetPrimGroup(p);
        last = next;
        next += pg->GetVertexCount();
        while(i < next && i < count)
        {
            points[i] = pg->GetVertex(i - last)->GetCoord();
            i++;
        }
    }

    bbox.Bound(points, count);
    // This generates a suboptimal bounding sphere
    bsphere.centre = bbox.Centre();
    bsphere.Bound(points, count);

    delete[] points;
}

int
tlPrimGroupMesh::NumVertices() const
{
    int total = 0;

    for(int i = 0; i < NumPrimGroups() ; i++)
    {
        total += GetPrimGroup(i)->NumVertices();
    }

    return total;
}

tlVertex*
tlPrimGroupMesh::GetVertex(int i)
{

    int start = 0;
    for(int p = 0; p < NumPrimGroups() ; p++)
    {
        tlPrimGroup* pg = GetPrimGroup(p);
        if(i < start + pg->GetVertexCount())
        {
            return pg->GetVertex( i - start);
        }
        start += pg->GetVertexCount();
    }
    return NULL;
}

const tlVertex*
tlPrimGroupMesh::GetVertex(int i) const
{
    int start = 0;
    for(int p = 0; p < NumPrimGroups() ; p++)
    {
        tlPrimGroup* pg = GetPrimGroup(p);
        if(i < start + pg->GetVertexCount())
        {
            return pg->GetVertex( i - start);
        }
        start += pg->GetVertexCount();
    }
    return NULL;
}

void
tlPrimGroupMesh::SetVertex(int i, const tlVertex* vert)
{
    int start = 0;
    for(int p = 0; p < NumPrimGroups() ; p++)
    {
        tlPrimGroup* pg = GetPrimGroup(p);
        if(i < start + pg->GetVertexCount())
        {
            pg->SetVertex( i - start, vert);
            return;
        }
        start += pg->GetVertexCount();
    }
    assert(0 == "Failed to set vertex in tlPrimGroupMesh::SetVertex()");
}

int
tlPrimGroupMesh::ConvertTrianglesToTriangleStrips( float &averageVReuse, float &averageLen, unsigned long int & numOfReuse, int maxNumOfVertsPerStrip, int maxNumOfTrisPerStrip, bool bInnerMerge, bool bOptimizeXBox, bool bDiscardIrregular, unsigned int cacheSize )
{
    // How many Expression Offset Lists do I have at the start?
    unsigned long numOffsetLists = 0;

    tlTsTriangleToTriStripConverter TriToTriStripConverter;
    tlTable<tlPrimGroup *> newPrimgroups;

    int mergedStripsNum = 0;
    long totalStripLength = 0;
    long totalStripNum = 0;

    float totalVReuse = 0;
    long totalVStripNum = 0;

    TriToTriStripConverter.SetOptimizeXBox( bOptimizeXBox );

    for (int i = 0; i < primgroups.Count(); i++)
    {
        if (primgroups[i]->GetType() == PDDI_PRIM_TRIANGLES)
        {
            tlTable< tlTable<unsigned long int>  *> triStrips;
            triStrips = TriToTriStripConverter.ConvertWithTesting( primgroups[i]->GetIndexList(),
                                                                      primgroups[i]->GetVertexCount(),
                                                                      maxNumOfVertsPerStrip,
                                                                      maxNumOfTrisPerStrip);

            long len = 0;
            for( int j = 0; j < triStrips.Count( ); ++j ){
                 totalStripLength += triStrips[ j ]->Count( );
                 len += triStrips[ j ]->Count( );
            }

            if( bDiscardIrregular ){
                 //minimum length after merge
                 len += ( triStrips.Count( ) - 1  )*2;

                 //if the length of merged tristrips is longer than the number of triangles multiple by 3
                 //then we leave the primgroup as a triangle list instead of  creating the tristrip
                 if(( len > primgroups[i]->GetTriangleCount( )*3 ) || (triStrips.Count() <= 0 ))
                 {
                    numOffsetLists = primgroups[i]->GetNumOffsetLists();
                    newPrimgroups.Append(primgroups[i]);
                    continue;
                 }
            }

            totalStripNum += triStrips.Count( );

            if( bOptimizeXBox ){


                tlTable<unsigned long> outStrip;
                SplitUpStripsAndOptimize( triStrips, outStrip, cacheSize );


                tlTsVertexCache vCache;
                totalVReuse += vCache.CalcNumHitsOfStripEX( outStrip );
                totalVStripNum += outStrip.Count( );

                tlPrimGroup * pg = new tlPrimGroup;
                pg->SetType(PDDI_PRIM_TRISTRIP);
                pg->SetMaterial(primgroups[i]->GetMaterial());
                pg->SetVertexShader(primgroups[i]->GetVertexShader());
                pg->SetVertexType(primgroups[i]->GetVertexType());
                pg->SetOffsetIndices(primgroups[i]->GetOffsetIndices());
                pg->CloneVertexOffsetList(primgroups[i]);

                // if the vertex list is shorter than the index list, just
                // copy it.  Otherwise, do a pseudo deindex to save space.

                int vertcount = primgroups[i]->GetVertexCount();
                int indexcount = outStrip.Count();
                if( vertcount < indexcount)
                {
                    pg->SetVertexCount(vertcount);
                    for(int v = 0 ; v < vertcount; v++)
                    {
                        pg->SetVertex(v, primgroups[i]->GetVertex(v)->Clone());
                    }
                    pg->SetIndexList(outStrip);
                }
                else
                {
                    pg->SetVertexCount(indexcount);
                    tlTable<unsigned long int> indexlist;
                    indexlist.SetCount(indexcount);
                    for(int v = 0 ; v < indexcount ; v++)
                    {
                        pg->SetVertex(v, primgroups[i]->GetVertex( outStrip[v])->Clone());
                        indexlist[v] = v;
                    }
                    pg->SetIndexList(indexlist);
                }

                numOffsetLists = pg->GetNumOffsetLists();

                newPrimgroups.Append(pg);


            }
            else
            if( bInnerMerge ){

                 if( triStrips.Count( ) > 0 ){

                     mergedStripsNum += ( triStrips.Count( ) - 1 );
                     tlTable<unsigned long int> *pLastStrip = triStrips[ 0 ];
                     triStrips.Delete( 0, 1 );

                     int totalVertex = pLastStrip->Count( );

                     while( triStrips.Count( ) > 0 ){
                          int idxStrip = Internal_SearchForNearestStrip( *primgroups[ i ], *pLastStrip, triStrips );
                          totalVertex = Internal_StitchStripsFromSrcToDest( *triStrips[ idxStrip ], *pLastStrip );
                          triStrips.Delete( idxStrip, 1 );
                     }

                     tlTsVertexCache vCache;
                     totalVReuse += vCache.CalcNumHitsOfStripEX( *pLastStrip );
                     totalVStripNum += pLastStrip->Count( );

                     tlPrimGroup * pg = new tlPrimGroup;
                     pg->SetType(PDDI_PRIM_TRISTRIP);
                     pg->SetMaterial(primgroups[i]->GetMaterial());
                     pg->SetVertexShader(primgroups[i]->GetVertexShader());
                     pg->SetVertexType(primgroups[i]->GetVertexType());
                     pg->SetOffsetIndices(primgroups[i]->GetOffsetIndices());
                     numOffsetLists = pg->CloneVertexOffsetList(primgroups[i]);

                     // if the vertex list is shorter than the index list, just
                     // copy it.  Otherwise, do a pseudo deindex to save space.

                     int vertcount = primgroups[i]->GetVertexCount();
                     int indexcount = pLastStrip->Count();
                     if( vertcount < indexcount)
                     {
                         pg->SetVertexCount(vertcount);
                         for(int v = 0 ; v < vertcount; v++)
                         {
                             pg->SetVertex(v, primgroups[i]->GetVertex(v)->Clone());
                         }
                         pg->SetIndexList(*pLastStrip);
                     }
                     else
                     {
                         pg->SetVertexCount(indexcount);
                         tlTable<unsigned long int> indexlist;
                         indexlist.SetCount(indexcount);
                         for(int v = 0 ; v < indexcount ; v++)
                         {
                             pg->SetVertex(v, primgroups[i]->GetVertex((*pLastStrip)[v])->Clone());
                             indexlist[v] = v;
                         }
                         pg->SetIndexList(indexlist);
                     }

                    numOffsetLists = pg->GetNumOffsetLists();

                     newPrimgroups.Append(pg);
                 }
            }
            else
            {

//                numOffsetLists = primgroups[i]->GetNumOffsetLists();
//                int o;

                // ** NOTE: Any Deformer information on this PrimGroup WILL BE LOST **
                //          While it is possible to re-map the tlOffsetLists for the PrimGroup,
                //          they will be meaningless due to the fact that the corresponding
                //          tlExpressionGroup will be out of sync with the assignments for
                //          said tlOffsetLists. You'll notice that neither tlPrimGroupMesh
                //          nor tlPrimGroup have any knowledge of the tlExpressionGroup that
                //          is supposed to tie all of this together...

                for(int j = 0; j < triStrips.Count(); j++)
                {
                    tlPrimGroup * pg = new tlPrimGroup;
                    pg->SetType(PDDI_PRIM_TRISTRIP);
                    pg->SetMaterial(primgroups[i]->GetMaterial());
                    pg->SetVertexShader(primgroups[i]->GetVertexShader());
                    pg->SetVertexType(primgroups[i]->GetVertexType());
                    pg->SetOffsetIndices(primgroups[i]->GetOffsetIndices());
                     numOffsetLists = pg->CloneVertexOffsetList(primgroups[i]);

                    // Must allocate this list for each new PrimGroup being added.
                    // Not all of these will be used; those that aren't will just be deleted.
                    // Those that _are_ used will be added to the PrimGroup, and it is
                    // then the responsibility of the PrimGroup to delete it.
    // --------  BEGIN DEFORMER
                    tlTable<tlOffsetList*> newoffsetlists;
                    int numOffsetLists = primgroups[i]->GetNumOffsetLists();
                    newoffsetlists.SetCount( numOffsetLists );

                    for ( int o = 0; o < numOffsetLists; o++ )
                    {
                        newoffsetlists[o] = new tlOffsetList;
                        // Set index when they are added to PrimGroup - not now.
                    }
    // ----------------  END DEFORMER

                    // if the vertex list is shorter than the index list, just
                    // copy it.  Otherwise, do a pseudo deindex to save space.

                        int vertcount = primgroups[i]->GetVertexCount();
                    int indexcount = triStrips[j]->Count();
                    if( vertcount < indexcount)
                    {
                        pg->SetVertexCount(vertcount);
                        for(int v = 0 ; v < vertcount; v++)
                        {
                            pg->SetVertex(v, primgroups[i]->GetVertex(v)->Clone());
                        }
                        pg->SetIndexList(*triStrips[j]);

                    }
                    else
                    {
                        pg->SetVertexCount(indexcount);
                        tlTable<unsigned long int> indexlist;
                        indexlist.SetCount(indexcount);
                        for(int v = 0 ; v < indexcount ; v++)
                        {
                            pg->SetVertex(v, primgroups[i]->GetVertex((*triStrips[j])[v])->Clone());
                            indexlist[v] = v;

    // --------  BEGIN DEFORMER
                            for ( o = 0; o < numOffsetLists; o++ )
                            {
                                tlOffsetList* pOffsetList = primgroups[i]->GetOffsetList( o );
                                tlVtxOffset* pVtxOffset = pOffsetList->GetVtxOffsetlist();
                                for ( int p = 0; p < pOffsetList->GetNumOffsets(); p++ )
                                {
                                    if ( pVtxOffset[p].index == (*triStrips[j])[v] )
                                    {
                                        newoffsetlists[o]->AppendVertexOffset( v, pVtxOffset[p].offsetx, pVtxOffset[p].offsety, pVtxOffset[p].offsetz );
                                    }
                                }
                            }
    // ----------------  END DEFORMER

                        }

                        pg->SetIndexList(indexlist);

    // --------  BEGIN DEFORMER

                        int offsetIndex = 0;
                        for ( o = 0; o < numOffsetLists; o++ )
                        {
                            if ( newoffsetlists[o]->GetNumOffsets() > 0 )
                            {
                                newoffsetlists[o]->SetIndex( offsetIndex++ );
                                newoffsetlists[o]->SetPrimGroupIndex( j );
                                pg->AddVertexOffsetList( newoffsetlists[o] );
                            }
                            else
                            {
                                delete newoffsetlists[o];
                            }
                        }
    // ----------------  END DEFORMER

                    }

    // --------  BEGIN DEFORMER
                    numOffsetLists = pg->GetNumOffsetLists();
    // ----------------  END DEFORMER

                    newPrimgroups.Append(pg);
                }
            }

            delete primgroups[i];
        }
        else
        {
            newPrimgroups.Append(primgroups[i]);
        }
    }

    numOfReuse = TriToTriStripConverter.GetNumberOfReuse( );

    if( totalStripNum != 0 )
          averageLen = (float)totalStripLength/(float)totalStripNum;
    else
         averageLen = 0.0;


     if( totalVStripNum != 0 )
          averageVReuse = totalVReuse/(float)totalVStripNum;
    else
         averageVReuse = 0.0;

    primgroups = newPrimgroups;

    return mergedStripsNum;

}


void
tlPrimGroupMesh::ReorderTriangles()
{
    tlTsTriangleToTriStripConverter TriToTriStripConverter;

    for (int i = 0; i < primgroups.Count(); i++)
    {
        if (primgroups[i]->GetType() == PDDI_PRIM_TRIANGLES)
        {
            tlTable<unsigned long int> newIndexList;

            newIndexList = TriToTriStripConverter.ReorderTriangles( primgroups[i]->GetIndexList(),
                                                                                      primgroups[i]->GetVertexCount());

            primgroups[i]->SetIndexList(newIndexList);
        }
    }
}

void
tlPrimGroupMesh::AddIndices()
{
    int vtx_count = NumVertices();
    for (int i = 0; i < vtx_count; ++i)
    {
        tlVertex* vtx = GetVertex(i);
        tlSkinVertex* skin_vtx = dynamic_cast<tlSkinVertex*>(vtx);
        if (skin_vtx != NULL)
        {
            tlIndexedSkinVertex* new_vtx = new tlIndexedSkinVertex(*skin_vtx);
            new_vtx->SetVertexIndex(i);
            SetVertex(i, new_vtx);
        }
        else
        {
            tlIndexedVertex* new_vtx = new tlIndexedVertex(*vtx);
            new_vtx->SetVertexIndex(i);
            SetVertex(i, new_vtx);
        }
    }
}

void
tlPrimGroupMesh::Deindex()
{
    for (int i = 0; i < primgroups.Count(); i++)
    {
        tlPrimGroup* pg = primgroups[i];
        pg->Deindex();
    }
}

void
tlPrimGroupMesh::Index()
{
    for (int i = 0; i < primgroups.Count(); i++)
    {
        tlPrimGroup* pg = primgroups[i];
        pg->Index();
    }
}

//===========================================================================
// tlPrimGroupMesh::SortPrimGroups
//===========================================================================
// Description: Sorts the PrimGroups so that PrimGroups using a Translucent
//              shader are rendered last. (Bug #430)
//
// Constraints: See notes in tlPrimGroup::Compare().
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
void
tlPrimGroupMesh::SortPrimGroups( void )
{
    primgroups.Sort( PrimGroupCompare );

    //
    // Needs to re-index the OffsetList prim-group index info
    //

    // ExpressionAnimOffsets will be rebuilt below
//    if ( this->exprOffsets )
//    {
//        this->exprOffsets->Clear();
//    }

    long numPrimgroups = primgroups.Count();
    for(int pgIndex = 0; pgIndex < numPrimgroups; pgIndex++)
    {
        tlPrimGroup* pPrimGroup = primgroups[pgIndex];
        int numOffsetLists = pPrimGroup->GetNumOffsetLists();
        if ( numOffsetLists > 0 )
        {
            pPrimGroup->SetOffsetListPrimGroupIndex(pgIndex);

//            for ( int o = 0; o < numOffsetLists; o++ )
//            {
//                this->exprOffsets->AppendOffsetlistChunk( reinterpret_cast<tlOffsetListChunk*>(pPrimGroup->GetOffsetList( o )->Chunk()) );
//            }

        }

        primgroups[pgIndex]->SetVertexAnimationGroupIndex(pgIndex);
    }
}

//tlPrimGroup*
//tlPrimGroupMesh::SplitPrimGroup( int index, const int* pIndices, int numIndices )
//{
//    if ( index < 0 || index >= primgroups.Count() ) return NULL;
//
//    tlPrimGroup* newPrimGroup = NULL;
//
//    int* pNewIndices = new int [numIndices];
//    int newIndices = 0;
//    int v;
//
//    // Any affected vertices?
//    tlPrimGroup* pPrimGroup = primgroups[index];
//    int numVertices = pPrimGroup->NumVertices();
//    for ( v = 0; v < numIndices; v++ )
//    {
//        if ( pIndices[v] >=0 && pIndices[v] < numVertices )
//        {
//            pNewIndices[newIndices++] = pIndices[v];
//        }
//    }
//
//    // Nothing to split.. bail.
//    if ( newIndices == 0 ) return NULL;
//
//    newPrimGroup = new tlPrimGroup;
//
//    for ( v = 0; v < numVertices; v++ )
//    {
//
//    }
//
//    delete [] pNewIndices;
//
//    return newPrimGroup;
//}

void
tlPrimGroupMesh::Scale(float x, float y, float z)
{
    for(int i = 0 ; i < NumPrimGroups(); i++)
    {
        GetPrimGroup(i)->Scale(x,y,z);
    }
    UpdateBounds();
}


void
tlPrimGroupMesh::Translate(float x, float y, float z)
{
    for(int i = 0 ; i < NumPrimGroups(); i++)
    {
        GetPrimGroup(i)->Translate(x,y,z);
    }

    UpdateBounds();
}


void
tlPrimGroupMesh::Transform(tlMatrix &m)
{
    for(int i = 0 ; i < NumPrimGroups(); i++)
    {
        GetPrimGroup(i)->Transform(m);
    }
    UpdateBounds();
}


void
tlPrimGroupMesh::ComputeFaceNormals()
{
    int pgcount = primgroups.Count();
    int facecount = 0;
    int pg;

    for(pg = 0; pg < pgcount; pg++)
    {
        tlPrimGroup* pgrp = primgroups[pg];
        if(pgrp->GetType() != PDDI_PRIM_TRIANGLES)
        {
            printf("Warning, Primgroup %d ignored (face normals probably won't work)\n", pg);
        }
        facecount += pgrp->GetIndexCount() / 3;
    }
    faceNormals.SetCount(facecount);
    int face = 0;;
    for(pg = 0; pg < pgcount; pg++)
    {
        tlPrimGroup* pgrp = primgroups[pg];
        if(pgrp->GetType() == PDDI_PRIM_TRIANGLES)
        {
            for(int idx = 0; idx < pgrp->GetIndexCount(); idx += 3)
            {
                const tlPoint& a = pgrp->GetVertex(pgrp->GetIndex(idx + 0))->GetCoord();
                const tlPoint& b = pgrp->GetVertex(pgrp->GetIndex(idx + 1))->GetCoord();
                const tlPoint& c = pgrp->GetVertex(pgrp->GetIndex(idx + 2))->GetCoord();

                faceNormals[face++] = TriNormal(a,b,c);
            }
        }
    }
}

void
tlPrimGroupMesh::ComputeVertexNormals()
{
    if(faceNormals.Count() == 0)
    {
        ComputeFaceNormals();
    }

    tlAdjFaceList vertexface(*this);

    /*
    for(int v = 0; v < vertexlist.Count(); v++)
    {
        tlPoint p;
        int count = vertexface.list[v].Count();
        for( int f = 0; f < count; f++)
        {
            p += faceNormals[vertexface.list[v][f]];
        }
        if(count)
        {
            vertexlist[v]->SetNormal(Normalize(p));
        }
    }
    */
}

int tlPrimGroupMesh::MergePrimGroups()
{
    int mergeCount = MergeStrips();

    tlTable<tlPrimGroup*> newPrimgroups;

    for (int i = 0; i < primgroups.Count(); i++)
    {
        //if a primgroup is not a tristrip, we search for rest of
        //the primgroups, and merge it with ones with the same shader
        for(int j=i+1; j < primgroups.Count(); j++)
        {
            if( (primgroups[i] && primgroups[j]) &&
                (0 == strcmp(primgroups[i]->GetShader(), primgroups[j]->GetShader())) )
            {
                bool merged = primgroups[i]->AppendTriangles(*primgroups[j]);
                if(merged)
                {
                    mergeCount++;
                    primgroups.Delete(j, 1);
                }
            }
        }

        if(primgroups[i])
        {
            newPrimgroups.Append(primgroups[i]);
        }
    }

    primgroups = newPrimgroups;
    return mergeCount;
}

int tlPrimGroupMesh::MergeStrips( int maximumVerts )
{

    tlTable<tlPrimGroup *> newPrimgroups;

    int mergedStripNum = 0;

    int count = primgroups.Count( );

    int i;
    for ( i = 0; i < count; i++)
    {

        //if a primgroup is tristrip, we search for rest of
        //the primgroups, and merge it with ones with the same shader
        if (primgroups[i]->GetType() == PDDI_PRIM_TRISTRIP)
        {

            int nextGroup = SearchForNearestStrip( *primgroups[ i ],  primgroups,  i+1  );

            while( nextGroup != -1 )
            {
                StitchStripsFromSrcToDest( primgroups[ nextGroup ], primgroups[ i ] );

                //delete the primgroup, and don't increase the index of next group
                delete primgroups[ nextGroup ];
                primgroups.Delete( nextGroup, 1 );
                ++mergedStripNum;

                nextGroup = SearchForNearestStrip( *primgroups[ i ],  primgroups,  i+1  );
            }

            //primgroups[ i ] holds the merged tripstrips
            newPrimgroups.Append( primgroups[ i ] );

        }
        else
        {
            newPrimgroups.Append(primgroups[i]);
        }

        count = primgroups.Count( );

    }

    primgroups = newPrimgroups;

    return mergedStripNum;
}

bool tlPrimGroupMesh::Is2GroupMergable( tlPrimGroup *grp1, tlPrimGroup *grp2 )
{
    //the same shader?
    if( strcmp( grp1->GetShader( ), grp2->GetShader( ) ) != 0 )
          return false;

    //both are tristrip?
    if( grp1->GetType() != PDDI_PRIM_TRISTRIP || grp2->GetType() != PDDI_PRIM_TRISTRIP )
         return false;

    //both are either indexed  or non-indexed
    if( ( grp1->GetIndexList( ).Count( ) == 0 ) && ( grp2->GetIndexList( ).Count( ) != 0 ) )
         return false;

    if( ( grp1->GetIndexList( ).Count( ) != 0 ) && ( grp2->GetIndexList( ).Count( ) == 0 ) )
         return false;

    return true;
}

bool tlPrimGroupMesh::Is2GroupMergableRegardlessShader( tlPrimGroup *grp1, tlPrimGroup *grp2 )
{
    //both are tristrip?
    if( grp1->GetType() != PDDI_PRIM_TRISTRIP || grp2->GetType() != PDDI_PRIM_TRISTRIP )
         return false;

    //both are either indexed  or non-indexed
    if( ( grp1->GetIndexList( ).Count( ) == 0 ) && ( grp2->GetIndexList( ).Count( ) != 0 ) )
         return false;

    if( ( grp1->GetIndexList( ).Count( ) != 0 ) && ( grp2->GetIndexList( ).Count( ) == 0 ) )
         return false;

    return true;
}

void tlPrimGroupMesh::StitchStripsFromSrcToDest( tlPrimGroup *stripSrc, tlPrimGroup *stripDest )
{
     const tlTable<unsigned long int> & srcIdxList = stripSrc->GetIndexList( );
     const tlTable<unsigned long int> & dstIdxList = stripDest->GetIndexList( );

     //non-indexed strip
     if( srcIdxList.Count( ) == 0 ){
          int base = stripDest->GetVertexCount( );
          stripDest->SetVertexCount( stripSrc->GetVertexCount( ) + stripDest->GetVertexCount( ) + 2 );

          //repeat the last vertext of stripDest
          stripDest->SetVertex( base, stripDest->GetVertex( base - 1 ) );

          ++base;

          if( base%2 == 0 ){            //even number of triangles
                //repeat the last vertext of stripDest
                stripDest->SetVertex( base, stripDest->GetVertex( base - 1 ) );
                ++base;
                stripDest->SetVertexCount( stripDest->GetVertexCount( ) + 1 );
          }

          //repeat the first vertex of stripSrc
          stripDest->SetVertex( base, stripSrc->GetVertex( 0 ) );

          ++base;

          int i;
          for(  i = 0; i < stripSrc->GetVertexCount( ); ++i )
                stripDest->SetVertex( base + i, stripSrc->GetVertex( i ) );
     }
     else{       //indexed strip
          int base = stripDest->GetIndexCount( );
          int baseVertex = stripDest->GetVertexCount( );

          tlTable<unsigned long int> newDstIdxList( dstIdxList );

          newDstIdxList.SetCount( base + srcIdxList.Count( ) + 2 );
          stripDest->SetVertexCount( baseVertex + stripSrc->GetVertexCount( ) );

          //repeat the last index of dest
          newDstIdxList[ base ] = dstIdxList[ base - 1 ];

          ++base;


          if( base%2 == 0 ){
                //repeat the last index of dest
                newDstIdxList[ base ] = dstIdxList[ base - 2 ];
                ++base;
                newDstIdxList.SetCount( newDstIdxList.Count( ) + 1 );
          }

          //repeat the first index of src
          newDstIdxList[ base ] = baseVertex + srcIdxList[ 0 ];

          ++base;

          int i;
          //attach all index of stripSrc to stripDest
          for(  i = 0; i < srcIdxList.Count( ); ++i )
                newDstIdxList[ base + i ] = baseVertex + srcIdxList[ i ];

          //attach all vertex of stripSrc to stripDest
          for( i = 0; i < stripSrc->GetVertexCount( ); ++i )
                stripDest->SetVertex( baseVertex + i, stripSrc->GetVertex( i ) );

          stripDest->SetIndexList( newDstIdxList );

     }
}


int tlPrimGroupMesh::Internal_StitchStripsFromSrcToDest( tlTable<unsigned long int> & stripSrc, tlTable<unsigned long int> &stripDest )
{

     int count  = 0;

     //last two vertex of dest strip  are the same as the first two vertex of source strip
     if( stripDest[ stripDest.Count( ) - 2 ] == stripSrc[ 0 ] && stripDest[ stripDest.Count( ) - 1 ] == stripSrc[ 1 ] ){
          if( stripDest.Count( ) % 2 == 0 ){
                int base = stripDest.Count( );
                count = base + stripSrc.Count( ) - 2;
                stripDest.SetCount( count );

                int i;
                //attach all index of stripSrc to stripDest
                for(  i = 2; i < stripSrc.Count( ); ++i )
                     stripDest[ base + i - 2 ] =  stripSrc[ i ];
          }
          else{
                int base = stripDest.Count( );
                count = base + stripSrc.Count( ) - 1;
                stripDest.SetCount( count );

                stripDest[ base ] = stripDest[ base  - 2 ];

                ++base;

                int i;
                //attach all index of stripSrc to stripDest
                for(  i = 2; i < stripSrc.Count( ); ++i )
                     stripDest[ base + i - 2 ] =  stripSrc[ i ];
          }
     }
     else{

          int base = stripDest.Count( );

          count = base + stripSrc.Count( ) + 2;

          stripDest.SetCount( count );

          //repeat the last index of dest
          stripDest[ base ] = stripDest[ base - 1 ];

          ++base;

          if( base%2 == 0 ){
                //repeat the last index of dest
                stripDest[ base ] = stripDest[ base - 2 ];
                ++base;
                ++count;
                stripDest.SetCount( count );

          }

          //repeat the first index of src
          stripDest[ base ] = stripSrc[ 0 ];

          ++base;

          int i;
          //attach all index of stripSrc to stripDest
          for( i = 0; i < stripSrc.Count( ); ++i )
                stripDest[ base + i ] =  stripSrc[ i ];
     }

     return count;
}

int tlPrimGroupMesh::Internal_SearchForNearestStrip( tlPrimGroup &primgroup, tlTable<unsigned long int> & strip, tlTable< tlTable<unsigned long int>  *> &triStrips )
{
     int idx = 0;
     float miniDist;
     int i;
     for(  i = 0; i < triStrips.Count( ); ++i ){
          tlTable<unsigned long int> * pStrip = triStrips[ i ];

          tlVertex *v1 = primgroup.GetVertex( strip[ strip.Count( ) - 1 ] );
          tlVertex *v2 = primgroup.GetVertex( (*pStrip)[ 0 ] );

          tlPoint p1 = v1->GetCoord( );
          tlPoint p2 = v2->GetCoord( );

          p1 -= p2;
          float dist = p1.Length( );

          if( i == 0 )
                miniDist = dist;
          else
                if( miniDist > dist ){
                     miniDist = dist;
                     idx = i;
                }
     }

     return idx;
}

int tlPrimGroupMesh::SearchForNearestStrip( tlPrimGroup &primgroup,  tlTable<tlPrimGroup *> & primgroups, int start  )
{

     int idx = -1;
     bool bFirst = true;
     float miniDist;

     int i;
     for(  i = start; i < primgroups.Count( ); ++i ){
          if( Is2GroupMergable( &primgroup, primgroups[ i ] ) ){

                tlVertex *v1, *v2;

                if( primgroup.GetIndexCount( ) == 0 ){      //indexed primitive
                     v1 = primgroup.GetVertex( primgroup.GetVertexCount( ) - 1 );
                     v2 = primgroups[i]->GetVertex( 0 );
                }
                else{
                     v1 = primgroup.GetVertex( primgroup.GetIndex( primgroup.GetIndexCount( ) - 1 ) );
                     v2 = primgroups[i]->GetVertex( primgroups[ i ]->GetIndex( 0 ) );
                }

                tlPoint p1 = v1->GetCoord( );
                tlPoint p2 = v2->GetCoord( );

                p1 -= p2;
                float dist = p1.Length( );

                if( bFirst ){
                     miniDist = dist;
                     idx = i;
                     bFirst = false;
                }
                else
                     if( miniDist > dist ){
                          miniDist = dist;
                          idx = i;
                     }
          }
     }

     return idx;
}

int tlPrimGroupMesh::SearchForNearestStripRegardlessShader( tlPrimGroup &primgroup,  tlTable<tlPrimGroup *> & primgroups, int start  )
{

     int idx = -1;
     bool bFirst = true;
     float miniDist;

     int i;
     for(  i = start; i < primgroups.Count( ); ++i ){
          if( Is2GroupMergableRegardlessShader( &primgroup, primgroups[ i ] ) ){

                tlVertex *v1, *v2;

                if( primgroup.GetIndexCount( ) == 0 ){      //indexed primitive
                     v1 = primgroup.GetVertex( primgroup.GetVertexCount( ) - 1 );
                     v2 = primgroups[i]->GetVertex( 0 );
                }
                else{
                     v1 = primgroup.GetVertex( primgroup.GetIndex( primgroup.GetIndexCount( ) - 1 ) );
                     v2 = primgroups[i]->GetVertex( primgroups[ i ]->GetIndex( 0 ) );
                }

                tlPoint p1 = v1->GetCoord( );
                tlPoint p2 = v2->GetCoord( );

                p1 -= p2;
                float dist = p1.Length( );

                if( bFirst ){
                     miniDist = dist;
                     idx = i;
                     bFirst = false;
                }
                else
                     if( miniDist > dist ){
                          miniDist = dist;
                          idx = i;
                     }
          }
     }

     return idx;
}


int tlPrimGroupMesh::MergeStripsRegardlessShader( int maximuVerts )
{

    tlTable<tlPrimGroup *> newPrimgroups;

    int mergedStripNum = 0;

    int count = primgroups.Count( );

    int i;
    for ( i = 0; i < count; i++){

        //if a primgroup is tristrip, we search for rest of
        //the primgroups, and merge it with ones with the same shader
        if (primgroups[i]->GetType() == PDDI_PRIM_TRISTRIP){

          int nextGroup = SearchForNearestStripRegardlessShader( *primgroups[ i ],  primgroups,  i+1  );

          while( nextGroup != -1 ){
                StitchStripsFromSrcToDest( primgroups[ nextGroup ], primgroups[ i ] );

                //delete the primgroup, and don't increase the index of next group
                delete primgroups[ nextGroup ];
                primgroups.Delete( nextGroup, 1 );
                ++mergedStripNum;

                nextGroup = SearchForNearestStripRegardlessShader( *primgroups[ i ],  primgroups,  i+1  );
          }


          //primgroups[ i ] holds the merged tripstrips
          newPrimgroups.Append( primgroups[ i ] );

        }
        else
        {
            newPrimgroups.Append(primgroups[i]);
        }

        count = primgroups.Count( );

    }

    primgroups = newPrimgroups;

    return mergedStripNum;
}


///////////////////////////////////////////////////////////////////////////////////////////
// SplitUpStripsAndOptimize()
//
// Splits the input vector of strips (allStrips) into smaller, cache friendly pieces, then
//  reorders these pieces and merge them into a single strip to maximize cache hits
// The final strip are outStrip
//
void tlPrimGroupMesh::SplitUpStripsAndOptimize( tlTable< tlTable<unsigned long> * >allStrips, tlTable<unsigned long> &outStrip, int cacheSize )
{
    int threshold;

    if( cacheSize & 0x01 )  //odd
        threshold = cacheSize - 1;
    else
        threshold = cacheSize;

    tlTable< tlTable<unsigned long> *> tempStrips;

    int i;
    //split up strips into threshold-sized pieces
    for( i = 0; i < allStrips.Count( ); i++)
    {
        tlTable<unsigned long>* currentStrip;

        if(allStrips[i]->Count( ) > threshold)
        {

            int numTimes    = allStrips[i]->Count( ) / threshold;
            int numLeftover = allStrips[i]->Count( ) % threshold;

            int j;
            for( j = 0; j < numTimes; j++)
            {
                currentStrip = new tlTable<unsigned long>;
                currentStrip->ZeroCount( );

                //repeat the last two vertex of last strip
                if( j > 0 ){
                    int base = j*threshold;
                    currentStrip->Append( (*allStrips[i])[base-2] );
                    currentStrip->Append( (*allStrips[i])[base-1] );
                }

                for( int faceCtr = j*threshold; faceCtr < threshold+(j*threshold); faceCtr++)
                {
                    currentStrip->Append( (*allStrips[i])[faceCtr] );
                }

                tempStrips.Append(currentStrip);
            }

            int leftOff = j * threshold;

            //if the leftover is more than half of threshold
            //we create a new strip. otherwise, just append
            //it to the last strip
            if( numLeftover > threshold/2 ){
                if(numLeftover != 0)
                {
                    currentStrip = new tlTable<unsigned long>;
                    currentStrip->ZeroCount( );
                    currentStrip->Append( (*allStrips[i])[leftOff-2] );
                    currentStrip->Append( (*allStrips[i])[leftOff-1] );

                    for(int k = 0; k < numLeftover; k++)
                    {
                        currentStrip->Append((*allStrips[i])[leftOff++]);
                    }
                    tempStrips.Append(currentStrip);
                }
            }
            else{
                int k;
                for( k = 0; k < numLeftover; k++)
                {
                    currentStrip->Append((*allStrips[i])[leftOff++]);
                }
            }
        }
        else
        {
            //we're not just doing a tempStrips.push_back(allBigStrips[i]) because
            // this way we can delete allBigStrips later to free the memory
            currentStrip = new tlTable<unsigned long>;

            int j;
            for( j = 0; j < allStrips[i]->Count( ); j++)
                currentStrip->Append( (*allStrips[i])[j] );

            tempStrips.Append(currentStrip);
        }
    }

    if(tempStrips.Count() != 0)
    {
        //Optimize for the vertex cache
        tlTsVertexCache* vcache = new tlTsVertexCache(cacheSize);

        float bestNumHits = -1.0f;
        float numHits;
        int bestIndex;

        int firstIndex = 0;
        outStrip.ZeroCount( );

        int i;
        for(  i = 0; i < tempStrips[ firstIndex ]->Count( ); ++i )
        {
            outStrip.Append( (*tempStrips[ firstIndex ])[ i ] );
        }

        vcache->UpdateCacheFromStrip( *tempStrips[firstIndex]);

        delete tempStrips[ firstIndex ];
        tempStrips.Delete( firstIndex, 1 );

        while(1)
        {
            bestNumHits = -1.0f;

            //find best strip to add next, given the current cache
            for( i = 0; i < tempStrips.Count(); i++)
            {
                numHits = vcache->CalcNumHitsOfStrip( *tempStrips[i]);
                if(numHits > bestNumHits)
                {
                    bestNumHits = numHits;
                    bestIndex = i;
                }
            }

            if(bestNumHits == -1.0f)
                break;


            //stitch strips
            Internal_StitchStripsFromSrcToDest( *tempStrips[bestIndex], outStrip );

            vcache->UpdateCacheFromStrip( *tempStrips[bestIndex] );

            delete tempStrips[bestIndex];
            tempStrips.Delete( bestIndex, 1 );
        }

        delete vcache;
    }
}

void
tlPrimGroupMesh::ResolveReferences(tlInventory* inv)
{
    for(int i = 0 ; i < primgroups.Count(); i++)
    {
        primgroups[i]->ResolveReferences(inv);
    }
}

void
tlPrimGroupMesh::MarkReferences(int m)
{
    for(int i = 0 ; i < primgroups.Count(); i++)
    {
        primgroups[i]->MarkReferences(m);
    }
}


//--------------------------------------------------------------------------------
//      Create a light map texture for this primgroupmesh
//--------------------------------------------------------------------------------
void tlPrimGroupMesh::BuildLightMap( tlTable< tlLight *>lights, tlTable< tlPrimGroupMesh *> geometries,
                                     tlTable<tlTriMeshIntersect *> &trimeshes, const tlPhotonMap *photonMap,
                                     float exposure, bool bIntensityOnly )
{
     int oldMark = GetMark( );

     //mark this mesh is being created light map
     Mark( LIGHT_MAPPING );

     for( int i = 0; i < primgroups.Count( ); ++i ){
        primgroups[ i ]->BuildLightMap( lights, geometries, trimeshes, photonMap, exposure, NULL );
     }

     Mark( oldMark );

}

//------------------------------------------------------------------------------
//      Test if all vertices of the mesh falls in a plane
//------------------------------------------------------------------------------
bool tlPrimGroupMesh::IsInAPlane( )
{
    if( NumPrimGroups() <= 0 )
    {
        return false;  // Ambiguous question.  Return false.
    }

    tlPlane *plane = NULL;
    int i, j;

    for( i = NumPrimGroups() - 1 ; i >= 0; i-- )
    {
        tlPrimGroup *prm = GetPrimGroup( i );
        if( prm->GetTriangleCount() <= 0 )
        {
            continue;
        }

        // Get a base plane with which to compare vertices of prim groups.
        if( plane == NULL )
        {
            const tlTriangle tri = prm->GetTriangle( 0 );
            plane = new tlPlane( tri.GetVertex( 0 )->GetCoord(),
                tri.GetVertex( 1 )->GetCoord(), tri.GetVertex( 2 )->GetCoord() );
        }

        // First check to see that triangles within this one primgroup are in same plane.
        if( ! prm->IsInAPlane() )
        {
            return false;
        }

        // Next check to first three points to see if the planes are equal.
        const tlTriangle tmpTri = prm->GetTriangle( 0 );

        for( j = 0; j < 3; j++ )
        {
            if( plane->CheckSide( tmpTri.GetVertex( j )->GetCoord(), DELTA ) != tlPlane::Contained )
            {
                return false;
            }
        }
    }

    delete plane;

    return true;
}

//------------------------------------------------------------------------------
// SetExprOffsets
//
// Passes a pointer to an instance of tlExpressionAnimOffset object to
// tlPrimGroupMesh and to each of its tlPrimGroups.
//------------------------------------------------------------------------------
void tlPrimGroupMesh::SetExprOffsets(tlExpressionOffsets* pOffsets)
{
    if(!pOffsets)
        return;

    delete exprOffsets;
    exprOffsets = new tlExpressionOffsets(*pOffsets);
    int i;
    for( i = 0; i < primgroups.Count(); i++)
    {
        primgroups[i]->RemoveVertexOffsetLists();
        primgroups[i]->SetExprOffsets(exprOffsets);
    }

    for( i = 0; i < (int)exprOffsets->NumOffsetLists(); i++)
    {
        // Only assign offsets for primgroups that actually exist.
        if ( exprOffsets->GetOffsetListChunk( i )->GetPrimGroupIndex() < (unsigned long)primgroups.Count() )
        {
            tlOffsetList* pOffsetList = new tlOffsetList( exprOffsets->GetOffsetListChunk( i ) );
            primgroups[pOffsetList->GetPrimGroupIndex()]->AddVertexOffsetList( pOffsetList );
        }
    }
}

//===========================================================================
// tlPrimGroupMesh::SetHasVertexAnimation
//===========================================================================
// Description: 02 May 2002
//
//              Hongzhi needed a way to detect that a tlMeshChunk is
//              expecting vertex animation (via tlVertexAnim).
//
//              This is a (not so) temporary hack to flag such a relationship;
//              ideally this should be achieved by adding a new parameter
//              to the chunk (e.g. "HasVertexAnimation"); however, Hongzhi
//              preferred not to change the data format for tlMeshChunk
//              at this time, so we did it this way.
//
// Constraints:
//
//  Parameters: bool bHasVA: TRUE if vertex animation will be applied to
//                           this mesh; else FALSE.
//
//      Return: (void)
//
//===========================================================================
void tlPrimGroupMesh::SetHasVertexAnimation( bool bHasVA, int index, tlAnimationGroup* pGroup )
{
    if ( bHasVA )
    {
        version = MESH_VERTEX_ANIMATION_VERSION;

        if ( ( index >= 0 ) && ( index < NumPrimGroups() ) && ( pGroup != NULL ) )
        {
            GetPrimGroup( index )->AddVertexAnimationGroup( pGroup );
        }
    }
    else
    {
        version = MESH_VERSION;

        if ( ( index >= 0 ) && ( index < NumPrimGroups() ) )
        {
            GetPrimGroup( index )->RemoveVertexAnimationGroups();
        }
    }
}

//-----------------------------------------------------------------------------
//      Find all animation keys, and hook them up to tlprimgroup
//-----------------------------------------------------------------------------
bool tlPrimGroupMesh::BindVertexAnimKeys( tlInventory &inventory )
{

    //composal the animation name
    char animName[ 1024 ];

    strcpy( animName, "VRTX_" );
    strcat( animName, GetName( ) );

    tlFourCC fourCC( Pure3DAnimationChannels::Vertex::VERTEX_VRTX );
    tlAnimation *anim = toollib_find<tlAnimation>( &inventory, animName );

    if( !anim )
        return false;

    for( int i = 0; i < anim->GetNumAnimationGroups( ); ++i ){
        tlAnimationGroup *group = anim->GetAnimationGroup( i );

        int idx = group->GetGroupId( );

        assert( idx >=0 && idx < primgroups.Count( ) );

        tlStringChannel *channel = group->GetStringChannel( fourCC );

        for( int j = 0; j < (int)channel->GetNumKeys( ); ++j ){
            tlString keyName;
            short dummy;
            channel->GetKey( j, dummy, keyName );

            tlVertexAnimKey *key = toollib_find<tlVertexAnimKey>( &inventory, keyName.GetString( ) );
            primgroups[ idx ]->InsertVertexAnimKey( key );

        }
    }

    return true;
}

//-----------------------------------------------------------------------------
//  rebuild all primgroup of the mesh as triangle lists
//  if bMerge is true, then merge all the primgroups into single one
//  if maxNumVertices is used as a constraint for the number of vertices
//  a primgroup can have
//-----------------------------------------------------------------------------
void tlPrimGroupMesh::Rebuild( tlPrimGroupMesh * newMesh, bool bMerge, int maxNumVertices )
{
    assert( newMesh );
    tlTable<tlVertex*> verts;
    tlPrimGroup* in;

    tlTable<tlOffsetList*> newoffsetlists;
    int numOffsetLists = 0;
    int currentPrimGroupIndex = 0;
    int o;

    for( int i = 0; i < NumPrimGroups( ); ++i )
    {
        int vertexCount = 0;

        in = GetPrimGroup(i);

        assert((in->GetType() == PDDI_PRIM_TRIANGLES) || (in->GetType() == PDDI_PRIM_TRISTRIP));

        // Must allocate this list for each new PrimGroup being added.
    // --------  BEGIN DEFORMER
        numOffsetLists = in->GetNumOffsetLists();
        newoffsetlists.SetCount( numOffsetLists );

        for ( o = 0; o < numOffsetLists; o++ )
        {
            newoffsetlists[o] = new tlOffsetList;
            // Set index when they are added to PrimGroup - not now.
        }
    // ----------------  END DEFORMER

        bool tristrip = in->GetType() == PDDI_PRIM_TRISTRIP;
        bool indexed = in->GetIndexCount() != 0;
        int count = indexed ? in->GetIndexCount() : in->GetVertexCount();

        bool flip = false;
        for(int j = 0; j+2 < count; j += tristrip ? 1 : 3)
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

            if((v[0] == v[1]) || (v[1] == v[2]) || (v[0] == v[2]))
            {
                continue;
            }

            // If exceeded max vertices, create a primGroup with what we have so far,
            // then start over.
            if( maxNumVertices > 0 && (vertexCount + 3) > maxNumVertices )
            {
                tlPrimGroup* pgn = new tlPrimGroup(verts);
                pgn->SetShader(in->GetShader());
                pgn->SetVertexType(in->GetVertexType());
                pgn->SetOffsetIndices(in->GetOffsetIndices());

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
                    tlTable<tlVertex*> vertexList = pgn->GetVertexList();
                    for ( int k = 0; k < vertexList.Count(); k++ )
                    {
                        for ( int m = 0; m < verts.Count(); m++ )
                        {
                            if ( verts[m]->Compare( *vertexList[k] ) == 0 )
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
                        pgn->AddVertexOffsetList( finaloffsets[o] );
                    }
                }

                newMesh->AddPrimGroup(pgn);

                // Clear the newoffsetslist array
                for ( o = 0; o < numOffsetLists; o++ )
                {
                    // no handy ::Clear() function, so just nuke and alloc a new one.
                    delete newoffsetlists[o];
                    newoffsetlists[o] = new tlOffsetList;
                }

                verts.Resize(0);
                vertexCount = 0;
                currentPrimGroupIndex++;
            }

            // Add each vertex.
            // If a vertex was associated with a deformer vertex offset then add it to 
            // the approproate vertex offset list using its new index.
            for (int k = 0; k < 3; k++)
            {
                verts.Append(v[k]);

                for ( o = 0; o < numOffsetLists; o++ )
                {
                    tlOffsetList* pOffsetList = in->GetOffsetList(o);
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

        // Finished this primGroup.. if we're not merging, add this one to the PrimGroupMesh.
        if( !bMerge && verts.Count( ) > 0 )
        {
            // Constructing a tlPrimGroup from a vertex table creates an indexed primGroup...
            // but the vertex offsets are non-indexed!
            tlPrimGroup* pgn = new tlPrimGroup(verts);
            pgn->SetShader(in->GetShader());
            pgn->SetVertexType(in->GetVertexType());
            pgn->SetOffsetIndices(in->GetOffsetIndices());
  
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
                tlTable<tlVertex*> vertexList = pgn->GetVertexList();
                for ( int k = 0; k < vertexList.Count(); k++ )
                {
                    for ( int m = 0; m < verts.Count(); m++ )
                    {
                        if ( verts[m]->Compare( *vertexList[k] ) == 0 )
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
                    finaloffsets[o]->SetPrimGroupIndex( currentPrimGroupIndex ); // 1
                    finaloffsets[o]->SetIndex(o);
                    pgn->AddVertexOffsetList( finaloffsets[o] );
                }
            }

            newMesh->AddPrimGroup(pgn);

            // Clear the newoffsetslist array
            for ( o = 0; o < numOffsetLists; o++ )
            {
                delete newoffsetlists[o];
            }
            newoffsetlists.Resize(0);

            verts.Resize( 0 );
            vertexCount = 0;
            currentPrimGroupIndex++;
        }
    }

    if( bMerge ){
        tlPrimGroup* pgn = new tlPrimGroup(verts);
        pgn->SetShader(in->GetShader());
        pgn->SetVertexType(in->GetVertexType());
        pgn->SetOffsetIndices(in->GetOffsetIndices());

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
            tlTable<tlVertex*> vertexList = pgn->GetVertexList();
            for ( int k = 0; k < vertexList.Count(); k++ )
            {
                for ( int m = 0; m < verts.Count(); m++ )
                {
                    if ( verts[m]->Compare( *vertexList[k] ) == 0 )
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
                pgn->AddVertexOffsetList( finaloffsets[o] );
            }
        }

        newMesh->AddPrimGroup(pgn);

        // Clear the newoffsetslist array
        for ( o = 0; o < numOffsetLists; o++ )
        {
            delete newoffsetlists[o];
        }
        newoffsetlists.Resize(0);
    }
}
//-----------------------------------------------------------------------------
//  rebuild all primgroup of the mesh as triangle lists
//  if bMerge is true, then merge all the primgroups into single one
//  if maxNumVertices is used as a constraint for the number of vertices
//  a primgroup can have
//-----------------------------------------------------------------------------
tlPrimGroupMesh * tlPrimGroupMesh::Rebuild( bool bMerge, int maxNumVertices )
{
    tlPrimGroupMesh* newMesh = new tlPrimGroupMesh();
    newMesh->SetName( GetName() );
    newMesh->SetExprOffsets( GetExprOffsets() );

    Rebuild( newMesh, bMerge, maxNumVertices );
    return newMesh;

}
//*****************************************************************************
// tlPrimGroupMeshLoader
//*****************************************************************************
tlPrimGroupMeshLoader::tlPrimGroupMeshLoader() :
    tlEntityLoader(Pure3D::Mesh::MESH)
{
}

tlEntity*
tlPrimGroupMeshLoader::Load(tlDataChunk* chunk)
{
    return new tlPrimGroupMesh(chunk);
}
