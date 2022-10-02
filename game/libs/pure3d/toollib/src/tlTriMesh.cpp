/*===========================================================================
    File:: tlTriMesh.cpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlTriMesh.hpp"
#include <assert.h>

#include "tlTriangle.hpp"
#include "tlVertex.hpp"
#include "tlIndexedVertex.hpp"
#include "tlIndexedSkinVertex.hpp"
#include "tlSkinVertex.hpp"
#include "tlPrimGroupMesh.hpp"
#include "tlPrimGroup.hpp"
#include "tlHashTable.hpp"

#include <bewert_debug.h>

//===========================================================================
//
// class tlUniqueIndexedVertexNormalList
//
//===========================================================================
// Description: Storage / accumulator class for recalculating and averaging
//              binormals for shared vertexed normals in tlTriMesh geo.
//
//              See tlTriMesh::AverageCommonBinormals()
//
//===========================================================================
tlUniqueIndexedVertexNormalList::~tlUniqueIndexedVertexNormalList()
{
    Clear();
}

void tlUniqueIndexedVertexNormalList::Clear( void )
{
    for ( int i = 0; i < m_table.Count(); i++ )
    {
        delete m_table[i];
    }
    m_table.ZeroCount();
}

int tlUniqueIndexedVertexNormalList::Append( const tlIndexedVertex* pVertex )
{
    int i = -1;

    if ( Find( pVertex->VertexIndex(), pVertex->GetNormal(), &i ) )
    {
        tlUniqueIndexedVertexNormal* pTableVertex = m_table[ i ];

//        CDEBUG << ">>> Vertex [ Face #" << pVertex->FaceIndex() << " Vertex #" << pVertex->VertexIndex() << " ] will be stored at index [ " << i << " ] -> Normal: { " << pVertex->GetNormal().x << ", " << pVertex->GetNormal().y << ", " << pVertex->GetNormal().z << " }" << endl;

        pTableVertex->m_binormal.Add( pVertex->GetBinormal() );
        pTableVertex->m_tangent.Add( pVertex->GetTangent() );

//        CDEBUG << "\t Tangent: { " << pTableVertex->m_tangent.x << ", " << pTableVertex->m_tangent.y << ", " << pTableVertex->m_tangent.z << " }" << endl;
//        CDEBUG << "\t Binormal: { " << pTableVertex->m_binormal.x << ", " << pTableVertex->m_binormal.y << ", " << pTableVertex->m_binormal.z << " }" << endl;
    }
    else
    {
//        CDEBUG << "+++ Vertex [ Face #" << pVertex->FaceIndex() << " Vertex #" << pVertex->VertexIndex() << " ] is UNIQUE and will be added at index [ " << m_table.Count() << " ] -> Normal: { " << pVertex->GetNormal().x << ", " << pVertex->GetNormal().y << ", " << pVertex->GetNormal().z << " }" << endl;
        m_table.Append( new tlUniqueIndexedVertexNormal( pVertex ) );
    }

    return i;
}

bool tlUniqueIndexedVertexNormalList::Find( int index, const rmt::Vector& normal, int* pIndex ) const
{
//    CDEBUG << "~~~~~~~  Looking in list for Maya Vertex # [ " << index << " ]" << endl;

    for ( int i = 0; i < m_table.Count(); i++ )
    {
        const tlUniqueIndexedVertexNormal* pVertex = m_table[ i ];
//        CDEBUG << "\t~~~~ against # [ " << pVertex->m_pVertex->VertexIndex() << " ]" << endl;
        if ( ( index == pVertex->m_pVertex->VertexIndex() ) && ( normal.Equals( pVertex->m_pVertex->GetNormal() ) ) )
        {
            if ( pIndex != NULL ) *pIndex = i;
            return true;
        }
    }

    return false;
}

bool tlUniqueIndexedVertexNormalList::GetTangent(  const tlIndexedVertex* pVertex, rmt::Vector& tangent ) const
{
//    if ( pVertex->VertexIndex() == 2 && pVertex->FaceIndex() == 2 ) __asm int 3;

    // Initialize tangent with that of the specified vertex.
    tangent = pVertex->GetTangent();

    int i = -1;

//    CDEBUG << endl << "??? Look up Vertex [ Face #" << pVertex->FaceIndex() << " Vertex #" << pVertex->VertexIndex() << " ] -> Normal: { " << pVertex->GetNormal().x << ", " << pVertex->GetNormal().y << ", " << pVertex->GetNormal().z << " }" << endl;

    if ( Find( pVertex->VertexIndex(), pVertex->GetNormal(), &i ) )
    {
        const tlUniqueIndexedVertexNormal* pTableVertex = m_table[ i ];

        tangent = pTableVertex->m_tangent;
        tangent.Normalize();

//    CDEBUG << "\tFOUND at index #" << i << "; vertex normal { " << pVertex->GetNormal().x << ", " << pVertex->GetNormal().y << ", " << pVertex->GetNormal().z << " }" << endl;

        return true;
    }

//    CDEBUG << "\tNOT IN LIST -> Use original for vertex normal { " << pVertex->GetNormal().x << ", " << pVertex->GetNormal().y << ", " << pVertex->GetNormal().z << " }" << endl;

    return false;
}

bool tlUniqueIndexedVertexNormalList::GetBinormal(  const tlIndexedVertex* pVertex, rmt::Vector& binormal ) const
{
    // Initialize binormal with that of the specified vertex.
    binormal = pVertex->GetBinormal();

    int i = -1;

    if ( Find( pVertex->VertexIndex(), pVertex->GetNormal(), &i ) )
    {
        const tlUniqueIndexedVertexNormal* pTableVertex = m_table[ i ];

        binormal = pTableVertex->m_binormal;
        binormal.Normalize();

//    CDEBUG << "getBINORMAL for shared vertex #" << i << " for normal { " << pVertex->GetNormal().x << ", " << pVertex->GetNormal().y << ", " << pVertex->GetNormal().z << " }" << endl;

        return true;
    }

//    CDEBUG << "UNIQUE binormal for vertex #" << i << " for normal { " << pVertex->GetNormal().x << ", " << pVertex->GetNormal().y << ", " << pVertex->GetNormal().z << " }" << endl;

    return false;
}



//===========================================================================
//
// class tlTriMesh
//
//===========================================================================

tlTriMesh::tlTriMesh() : faces(), bbox(), bsphere(), bCastShadow( true )
{
    bbox.Invalidate();
}

tlTriMesh::tlTriMesh(const tlPrimGroupMesh& mesh, const tlTriangleFactory* factory)
{
    bbox.Invalidate();
    SetName(mesh.GetName());
    SetCastShadow( mesh.CastShadow( ) );
    AppendMesh(mesh, factory);

    UpdateBounds();
}

tlTriMesh::tlTriMesh( tlPrimGroup* mesh, const tlTriangleFactory* factory)
{
    bbox.Invalidate();
    for(int t = 0; t < mesh->GetTriangleCount(); t++){
        tlTriangle * tri = factory->Create();
        tri->SetMaterial(mesh->GetMaterial());
        tri->SetVertexFormat(mesh->GetVertexType());
        unsigned v1, v2, v3;
        
        mesh->GetTriangle(t, &v1, &v2, &v3);
        tri->SetVertex(0, mesh->GetVertex(v1)->Clone());
        tri->SetVertex(1, mesh->GetVertex(v2)->Clone());
        tri->SetVertex(2, mesh->GetVertex(v3)->Clone());
        AddFace( tri );
    }
    
    UpdateBounds();
      
    bCastShadow = true;
}

tlTriMesh::~tlTriMesh()
{
     //clean the faces
     for( int i = 0; i < faces.Count( ); ++i ){
         if( faces[ i ] ){
             for( int j = 0; j < 3; ++j )
                 delete faces[ i ]->GetVertex( j );

             delete faces[ i ];
         }
     }
}

void tlTriMesh::AppendMesh( const tlPrimGroupMesh& mesh , const tlTriangleFactory* factory)
{
    for(int p = 0; p < mesh.NumPrimGroups(); p++)
    {
        tlPrimGroup *pg = mesh.GetPrimGroup(p);
                
        for(int t = 0; t < pg->GetTriangleCount(); t++)
        {
            tlTriangle * tri = factory->Create();
            tri->SetMaterial(pg->GetMaterial());
            tri->SetVertexFormat(pg->GetVertexType());
            unsigned v1, v2, v3;

            pg->GetTriangle(t, &v1, &v2, &v3);
            tri->SetVertex(0, pg->GetVertex(v1)->Clone());
            tri->SetVertex(1, pg->GetVertex(v2)->Clone());
            tri->SetVertex(2, pg->GetVertex(v3)->Clone());
            AddFace( tri );
        }
    }
}

void tlTriMesh::AppendMesh( const tlTriMesh& mesh, const tlTriangleFactory* factory)
{
    for(int t = 0; t < mesh.GetFaces().Count(); t++)
    {
        tlTriangle* tri = factory->Create(); 
        tri->Copy(mesh.GetFace(t)); 
        AddFace( tri );
    }
}

void 
tlTriMesh::AddFace( tlTriangle* face )
{
    faces.Append(face);


    for(int i = 0; i < 3; i++)
    {
        bbox.AddPoint( face->GetVertex(i)->GetCoord() );
   }
}

void tlTriMesh::Scale(float x, float y, float z)
{
    int i;
    for(i = 0; i < faces.Count(); i++)
    {
        tlTriangle* face = faces[i];
        face->Scale(x, y, z);
    }
    UpdateBounds();
}

void 
tlTriMesh::Translate(float x, float y, float z)
{
    int i;
    for(i = 0; i < faces.Count(); i++)
    {
        tlTriangle* face = faces[i];
        face->Translate(x, y, z);
    }
    UpdateBounds();
}

void
tlTriMesh::Transform(tlMatrix &m)
{
    int i;
    for(i = 0; i < faces.Count(); i++)
    {
        tlTriangle* face = faces[i];
        face->Transform(m);
    }
    UpdateBounds();
}


void 
tlTriMesh::Resize(int numfaces)
{
    faces.Resize(numfaces); 
}


void 
tlTriMesh::WrapUV(float min, float max)
{
    int i;
    for(i = 0; i < faces.Count(); i++)
    {
        faces[i]->WrapUV(min, max);
    }
}

void
tlTriMesh::FlipFaces(void)
{
    int i;
    for(i = 0; i < faces.Count(); i++)
    {
        faces[i]->FlipFacing();
    }
}

void
tlTriMesh::UpdateBounds(void)
{
    tlPoint*    pPoints = new tlPoint [ faces.Count() * 3 ];
    int p, v = 0;

    for ( p = 0; p < faces.Count(); p++ )
    {
        pPoints[v++] = faces[p]->GetVertex(0)->GetCoord();
        pPoints[v++] = faces[p]->GetVertex(1)->GetCoord();
        pPoints[v++] = faces[p]->GetVertex(2)->GetCoord();
    }
    
    bbox.Bound( pPoints, v );

    bsphere.centre = bbox.Centre();
    bsphere.Bound( pPoints, v );

    delete [] pPoints;
}

//===========================================================================
// tlTriMesh::AverageCommonBinormals
//===========================================================================
// Description: After all of the triangles have been added to the TriMesh
//              call this function to recompute the binormals and tangents
//              for all vertices.
//
//              Whereas the binormal for each triangle is technically correct,
//              it is misrepresented in context of the entire TriMesh. In
//              the cases where a vertex is shared by multiple triangles
//              AND where said vertex has an identical normal for each
//              triangle, the binormals calculated against the triangle
//              will generate an aberration in the bump-mapped surface.
//
//              To counter this, all vertices having the same Maya index
//              and same normal vector are summed. The normalization of 
//              this sum is assigned to all vertices contributing to the
//              sum.
//
//              In other words, all shared vertices are assigned the 
//              average vector for all their binormals.
//
// Constraints: Not proven with skins yet.
//
//              Uses (class tlUniqueIndexedVertexNormalList) - functionality
//              at the top of this source file.
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void tlTriMesh::AverageCommonBinormals( void )
{
    int f, v;
    
    tlUniqueIndexedVertexNormalList             list;
    
//    CDEBUG << endl << "BUILD THE LIST -----------------------------------------" << endl << endl;

    for ( f = 0; f < faces.Count(); f++ )
    {
        for ( v = 0; v < 3; v++ )
        {
            const tlIndexedVertex* pVertex = dynamic_cast<const tlIndexedVertex*>( faces[f]->GetVertex(v) );
            if ( ( pVertex != NULL ) && ( pVertex->VertexFormat() & (PDDI_V_TANGENT | PDDI_V_BINORMAL) ) )
            {
//                CDEBUG << "----- ADD to list: [ Face #" << f << " Vertex #" << v << " ] -> Maya Vertex # [ " << pVertex->VertexIndex() << " ]" << endl;

                list.Append( pVertex );
            }
        }
    }

//    CDEBUG << endl << "AVERAGE THE BINORMALS -----------------------------------------" << endl << endl;

    // Now go through all faces again, find all vertices 
    // that match the current index, and replace the tlVertex
    // with one specifying the new tangent/binormal.
    for ( f = 0; f < faces.Count(); f++ )
    {
        for ( v = 0; v < 3; v++ )
        {
            const tlIndexedVertex* pVertex = dynamic_cast<const tlIndexedVertex*>( faces[f]->GetVertex(v) );
            if ( ( pVertex != NULL ) && ( pVertex->VertexFormat() & (PDDI_V_TANGENT | PDDI_V_BINORMAL) ) )
            {
                rmt::Vector     tangent( 0.0, 0.0, 0.0 );
                rmt::Vector     binormal( 0.0, 0.0, 0.0 );

                list.GetTangent( pVertex, tangent );
                list.GetBinormal( pVertex, binormal );

                // Replace this vertex
                tlIndexedVertex* pNewVertex = new tlIndexedVertex( *pVertex );

//                CDEBUG << "Replace binormal in [ Face #" << f << " Vertex #" << v << " ] (Maya vertex # [ " << pVertex->VertexIndex() << " ] ) for normal { " << pVertex->GetNormal().x << ", " << pVertex->GetNormal().y << ", " << pVertex->GetNormal().z << " }" << endl;

                pNewVertex->SetTangent( tangent );
                pNewVertex->SetBinormal( binormal );

                faces[f]->SetVertex( v, pNewVertex );

                // Free the old one.
                delete pVertex;
                pVertex = NULL;
            }
        }
    }
}
