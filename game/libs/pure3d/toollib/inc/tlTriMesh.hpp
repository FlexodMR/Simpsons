/*===========================================================================
    File:: tlTriMesh.hpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLTRIMESH_HPP
#define _TLTRIMESH_HPP

#include "tlTriangle.hpp"
#include "tlTable.hpp"
#include "tlEntity.hpp"

#include "tlBox.hpp"
#include "tlSphere.hpp"
#include "tlTriangleFactory.hpp"
#include "tlIndexedVertex.hpp"

class tlPrimGroupMesh;
class tlPrimGroup;

class tlUniqueIndexedVertexNormalList
{
private:

    // (class tlUniqueIndexedVertex) is PRIVATE to (class tlIndexedVertexNormalTable)
    class tlUniqueIndexedVertexNormal
    {
    public:
        tlUniqueIndexedVertexNormal( const tlIndexedVertex* pVertex ) : m_tangent( pVertex->GetTangent() ), m_binormal( pVertex->GetBinormal() )
        {
            // The vertex in the source triangle will likely be replaced in the process
            // of rewriting the binormal data, so must allocate a copy.
            m_pVertex = new tlIndexedVertex( *pVertex );
        }

        ~tlUniqueIndexedVertexNormal()
        {
            delete m_pVertex;
        };

        const tlIndexedVertex*                  m_pVertex;
        rmt::Vector                             m_tangent;
        rmt::Vector                             m_binormal;
    };

    tlTable< tlUniqueIndexedVertexNormal* >     m_table;

public:

    tlUniqueIndexedVertexNormalList() {}
    ~tlUniqueIndexedVertexNormalList();

    // The stability for this class is NOT GUARANTEED outside of these three functions!
    int Append( const tlIndexedVertex* pVertex );
    bool Find( int index, const rmt::Vector& normal, int* pIndex = NULL ) const;

    bool GetTangent( const tlIndexedVertex* pVertex, rmt::Vector& tangent ) const;
    bool GetBinormal( const tlIndexedVertex* pVertex, rmt::Vector& binormal) const;

    void Clear( void );
};

class tlTriMesh : public tlEntity
{
public:
    tlTriMesh();

    explicit tlTriMesh( const tlPrimGroupMesh& mesh, const tlTriangleFactory* factory = tlTriangleFactory::Factory());
    tlTriMesh( tlPrimGroup * mesh, const tlTriangleFactory* factory = tlTriangleFactory::Factory());

    virtual ~tlTriMesh();

    void AppendMesh( const tlPrimGroupMesh& mesh , const tlTriangleFactory* factory = tlTriangleFactory::Factory());
    void AppendMesh( const tlTriMesh& mesh , const tlTriangleFactory* factory = tlTriangleFactory::Factory());

    void AddFace( tlTriangle* face );
    const tlTriangle* GetFace( int index ) const
    { 
        if( index >=  faces.Count( ) )
            return NULL; 
        else 
            return faces[ index ];
    }

    const tlTable<tlTriangle*>& GetFaces() const { return faces; };

    void RotateX( float angle );
    void RotateY( float angle );
    void RotateZ( float angle );
    void Scale( float x,float y,float z );
    void Translate( float x,float y, float z );
    void Transform(tlMatrix &m); 
    void FlipFaces(void);

    bool CastShadow( ) const { return bCastShadow; }
    void SetCastShadow( bool flag ){ bCastShadow = flag; }

    const tlBox& Box(void) const { return bbox; }
    const tlSphere& Sphere(void) const { return bsphere; }

    void Resize(int numfaces);
    void WrapUV(float min, float max);

    void AverageCommonBinormals( void );

    virtual tlDataChunk *Chunk16(void) { return NULL; }
    virtual void LoadFromChunk16(tlDataChunk *ch) { ; }


protected:
    tlTable<tlTriangle*> faces;

    tlBox bbox;
    tlSphere bsphere;
    bool bCastShadow;

    void UpdateBounds(void);

    // Not implemented -- use UpdateBounds()
//    void UpdateBoundSphere(void);
//    void UpdateBoundBox(void);
};

#endif

