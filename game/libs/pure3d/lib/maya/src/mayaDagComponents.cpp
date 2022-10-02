//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     02 July, 2002
//
// Component:   mayaDagComponents.cpp
//
// Description: Initialize this object with a MSelectionList. All selected
//              components for the first unique DAG shape in the selection
//              list will be stored by their indices, rather than a 
//              conglomerate MObject. This makes it easy to access 
//              individual components, and to convert from one component
//              type to another.
//
// Constraints: This class will reference only one unique DAG shape. Multiple
//              DAG paths may be represented for instances of the same shape,
//              but if a request is made to add a DAG path for a shape which
//              is not an instance of the DAG already stored in this object
//              then the add will fail.
//
//              Use this in conjunction with the CMayaDagSelection class
//              to handle multiple DAG paths representing unique shapes.
//
// Creator:     Bryan Ewert
//
//===========================================================================
//===========================================================================
// Includes
//===========================================================================

#include "mayaDagComponents.hpp"

#include <maya/MFnMesh.h>
#include <maya/MItMeshVertex.h>
#include <maya/MItMeshEdge.h>
#include <maya/MItMeshPolygon.h>
#include <maya/MSelectionList.h>
#include <maya/MItSelectionList.h>

#include <bewert_debug.h>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Constructor / Destructor
//===========================================================================

CMayaDagComponents::CMayaDagComponents( const MDagPath& dag, MObject& component )
:   mNumVtx( 0 ),
    mpbVtx( NULL ),
    mppbVtxFace( NULL ),
    mNumEdge( 0 ),
    mpbEdge( NULL ),
    mNumFace( 0 ),
    mpbFace( NULL )
{
    MStatus                     status;

    mDagArray.append( dag );

    // Size arrays to size of dag.
    MFnMesh                     fnMesh( dag, &status );
    if ( status == MS::kSuccess )
    {
        mNumVtx = fnMesh.numVertices();
        mpbVtx = new bool [ mNumVtx ];
        memset( mpbVtx, 0, mNumVtx * sizeof(bool) );

        mNumEdge = fnMesh.numEdges();
        mpbEdge = new bool [ mNumEdge ];
        memset( mpbEdge, 0, mNumEdge * sizeof(bool) );

        mNumFace = fnMesh.numPolygons();
        mpbFace = new bool [ mNumFace ];
        memset( mpbFace, 0, mNumFace * sizeof(bool) );

        // Number of vtxFace components inflated to maximum size.
        // Is this overkill?
        mppbVtxFace = new bool* [ mNumVtx ];

        unsigned int i;
        for ( i = 0; i < mNumVtx; i++ )
        {
            mppbVtxFace[i] = new bool [ mNumFace ];
            memset( mppbVtxFace[i], 0, mNumFace * sizeof(bool) );
        }
    }

    AddToDag( dag, component );
}

CMayaDagComponents::~CMayaDagComponents()
{
    Clear();
}

//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

//===========================================================================
// Operator Overloads
//===========================================================================

std::ostream& operator << ( std::ostream& os, const CMayaDagComponents& mdc )
{
    if ( mdc.mDagArray.length() > 0 )
    {
        MString name = mdc.mDagArray[0].partialPathName();

        os << mdc.mDagArray[0].fullPathName().asChar() << ": ";

        unsigned int v,f;
        for ( v = 0; v < mdc.mNumVtx; v++ )
        {
            if ( mdc.mpbVtx[v] ) os << name.asChar() << ".vtx[" << v << "] ";
        }
        for ( v = 0; v < mdc.mNumVtx; v++ )
        {
            for ( f = 0; f < mdc.mNumFace; f++ )
            {
                if ( mdc.mppbVtxFace[v][f] ) os << name.asChar() << ".vtxFace[" << v << "][" << f << "] ";
            }
        }
    }

    return os;
}

//===========================================================================
// Member Functions
//===========================================================================

void CMayaDagComponents::Clear( void )
{
    unsigned int v;
    for ( v = 0; v < mNumVtx; v++ )
    {
        delete [] mppbVtxFace[v];
    }
    delete [] mppbVtxFace;
    mppbVtxFace = NULL;

    delete [] mpbVtx;
    mpbVtx = NULL;
    mNumVtx = 0;

    delete [] mpbEdge;
    mpbEdge = NULL;
    mNumEdge = 0;

    delete [] mpbFace;
    mpbFace = NULL;
    mNumFace = 0;
}

//===========================================================================
// CMayaDagComponents::ParseVtxFace
//===========================================================================
// Description: Because the API offers NO access to vtxFace components,
//              determining their indices must be achieved by parsing
//              a selection string. Bah!
//
//              This function parses the provided string which represents
//              the vtxFace component in the form returned from
//              MSelectionList::getStrings():
//
//                  {object}.vtxFace[{vertex index range}][{face index range}]
//
//              where:
//
//                  {object} is the name of the object; e.g. "pCube1"
//                  {vertex index range} is Maya's compressed representation
//                      for one or more vertices; e.g. [0] or [0:3]
//                  {face index range} is Maya's compressed representation
//                      for one or more faces; e.g. [2] or [2:3]
//
//              The result is an _expanded_ set of vertex/face index arrays.
//              For example, if the vtxFace set is  pSphere1.vtxFace[56][52:54]
//              the resulting arrays will be:
//
//                   vtx: { 56, 56, 56 }
//                  face: { 52, 53, 54 }
//
//  Parameters: const MString& vtxFace: A string retrieved via 
//                                      MSelectionList::getStrings().
//              MIntArray& vtxArray: Storage for the vertex indices.
//              MIntArray& faceArray: Storage for the face indices.
//
//      Return: (unsigned int): The number of indices returned in each array.
//
//===========================================================================
unsigned int CMayaDagComponents::ParseVtxFace( const MString& vtxFace, MIntArray& vtxArray, MIntArray& faceArray )
{
    vtxArray.clear();
    faceArray.clear();

    MStringArray                tokens;
    MStringArray                token0, token1;
    MStringArray                range;
    unsigned int                vtxRange[2], faceRange[2];
    unsigned int v, f;

    vtxFace.split( '[', tokens );

    // If not 3 tokens, input was invalid.
    if ( tokens.length() != 3 ) return 0;

    // pCube1.vtxFace[2][0:1]

    // "pCube1.vtxFace" "2]" "0:1]"
    tokens[1].split( ']', token0 );
    tokens[2].split( ']', token1 );

    // "2"
    // "0:1"
    range.clear();  // because MString doesn't do this for me.
    token0[0].split( ':', range );
    vtxRange[0] = vtxRange[1] = range[0].asInt();
    if ( range.length() > 1 )
    {
        vtxRange[1] = range[1].asInt();
    }

    range.clear();  // because MString doesn't do this for me.
    token1[0].split( ':', range );
    faceRange[0] = faceRange[1] = range[0].asInt();
    if ( range.length() > 1 )
    {
        faceRange[1] = range[1].asInt();
    }

    for ( v = vtxRange[0]; v <= vtxRange[1]; v++ )
    {
        for ( f = faceRange[0]; f <= faceRange[1]; f++ )
        {
            vtxArray.append( v );
            faceArray.append( f );
        }
    }

    return vtxArray.length();
}

//===========================================================================
// CMayaDagComponents::IsInstanceOf
//===========================================================================
// Description: Determines if the specified DAG can be considered an
//              instance of the DAG stored in this CMayaDagComponents object.
//
// Constraints: 
//
//  Parameters: const MDagPath& dagInstance: The DAG which is potentially an
//                  instance.
//
//      Return: (bool): TRUE if specified DAG can be considered an instance
//                      of this object's DAG; else FALSE.
//
//===========================================================================
bool CMayaDagComponents::IsInstanceOf( const MDagPath& dagInstance ) const
{
    bool                                isInstance = false;

    if ( mDagArray.length() > 0 )
    {
        MDagPathArray                       allDags;
        unsigned                            dag;

        MDagPath::getAllPathsTo( mDagArray[0].node(), allDags );

        for ( dag = 0; dag < allDags.length(); dag++ )
        {
            if ( allDags[dag] == dagInstance )
            {
                isInstance = true;
                break;
            }
        }
    }

    return isInstance;
}

//===========================================================================
// CMayaDagComponents::HasDag
//===========================================================================
// Description: One or more instances for a given shape may be represented
//              by this object's DAG array. This function determines if the
//              specified DAG - typically an instance of this DAG family -
//              has already been stored in this object's DAG array.
//
// Constraints: 
//
//  Parameters: const MDagPath& dag: Query if this DAG is already in the
//                  array.
//
//      Return: (bool): TRUE if the DAG is in the array; else FALSE.
//
//===========================================================================
bool CMayaDagComponents::HasDag( const MDagPath& dag )
{
    bool                        bHasDag = false;

    unsigned int i = 0;
    for ( i = 0; i < mDagArray.length(); i++ )
    {
        if ( mDagArray[i] == dag )
        {
            bHasDag = true;
            break;
        }
    }

    return bHasDag;
}

//===========================================================================
// CMayaDagComponents::AddDag
//===========================================================================
// Description: Adds, conditionally, the specified DAG to this object's array.
//
// Constraints: DAG is added _only_ if:
//
//              (a) The DAG array is empty
//                  OR
//                  The DAG represents an instance of the DAG in the array;
//
//              AND
//
//              (b) The DAG is not already in the array.
//
//  Parameters: const MDagPath& dag: The DAG to add, conditionally.
//
//      Return: (bool): TRUE if DAG was added OR represents an instance
//                      of the DAG family already stored; else FALSE.
//
//===========================================================================
bool CMayaDagComponents::AddDag( const MDagPath& dag )
{
    bool bAddToDag = false;
    
    if ( ( mDagArray.length() == 0 ) || IsInstanceOf( dag ) )
    {
        bAddToDag = true;

        if ( !HasDag( dag ) )
        {
            mDagArray.append( dag );
        }
    }

    return bAddToDag;
}

//===========================================================================
// CMayaDagComponents::AddToDag
//===========================================================================
// Description: Component selection in Maya is represented as a combination
//              of a MDagPath and an MObject, the latter representing one
//              or more components.
//
//              Adds, conditionally, the specified DAG and/or its components
//              to this object.
//
//              The DAG and components are added _only_ if the DAG specified
//              satisfies the return condition from AddDag() above.
//
// Constraints: Components are stored as _indices_ and not as a MObject
//              amalgamate.
//
//  Parameters: const MDagPath& dag: The DAG to add.
//
//      Return: (bool): TRUE if DAG was added OR represents an instance
//                      of the DAG family already stored; else FALSE.
//
//===========================================================================
bool CMayaDagComponents::AddToDag( const MDagPath& dag, MObject& component )
{
    bool                        bAddToDag = false;

    MStatus                     status;
    bAddToDag = AddDag( dag );

    // TRUE if we need to consider adding the specified components.
    if ( bAddToDag )
    {
        // Vertex components may be retrieved via MItMeshVertex
//        CDEBUG << "CMayaDagComponents: VTX -> [ ";
        MItMeshVertex           itVertex( dag, component );
        for ( /* nothing */; !itVertex.isDone(); itVertex.next() )
        {
//            CDEBUG << itVertex.index() << " ";
            mpbVtx[ itVertex.index() ] = true;
        }
//        CDEBUG << "]" << endl;

        // Edge components may be retrieved via MItMeshEdge
        MItMeshEdge             itEdge( dag, component );
        for ( /* nothing */; !itEdge.isDone(); itEdge.next() )
        {
            mpbEdge[ itEdge.index() ] = true;
        }

        // Face components may be retrieved via MItMeshPolygon
//        CDEBUG << "CMayaDagComponents: FACE -> [ ";
        MItMeshPolygon          itPolygon( dag, component );
        for ( /* nothing */; !itPolygon.isDone(); itPolygon.next() )
        {
//            CDEBUG << itPolygon.index() << " ";
            mpbFace[ itPolygon.index() ] = true;
        }
//        CDEBUG << "]" << endl;

        // VtxFace components must be deduced by parsing selection strings.
        // MAJOR oversight in Maya's API!!
        MSelectionList          vtxFaceSelection;
        vtxFaceSelection.add( dag, component );
        MItSelectionList        itVtxFace( vtxFaceSelection, MFn::kMeshVtxFaceComponent, &status );
//        CDEBUG << "CMayaDagComponents: VTX-FACE -> [ ";
        if ( status == MS::kSuccess )
        {
            MStringArray        vtxFaceStrings;
            itVtxFace.getStrings( vtxFaceStrings );

            unsigned int i, v;
            for ( i = 0; i < vtxFaceStrings.length(); i++ )
            {
                MIntArray       vtxArray;
                MIntArray       faceArray;
                ParseVtxFace( vtxFaceStrings[i], vtxArray, faceArray );

                for ( v = 0; v < vtxArray.length(); v++ )
                {
//                    CDEBUG << "[" << vtxArray[v] << "][" << faceArray[v] << "] ";
                    mppbVtxFace[vtxArray[v]][faceArray[v]] = true;
                   
                }
                
            }
//            CDEBUG << "]" << endl;
        }

    }

    return bAddToDag;
}

bool CMayaDagComponents::RemoveDag( const MDagPath& dag )
{
    bool                        bDagRemoved = false;

    unsigned int d;
    for ( d = 0; d < mDagArray.length(); d++ )
    {
        if ( mDagArray[d] == dag )
        {
            mDagArray.remove(d);
            bDagRemoved = true;
            break;
        }
    }

    return bDagRemoved;
}

//===========================================================================
// CMayaDagComponents::GetDagArray      (const)
//===========================================================================
// Description: Returns an array of DAG paths for all of the instances
//              stored in this object.
//
//        Note: Components are stored as index arrays and not as a MObject
//              amalgamate. See GetVtxIndices(), et al.
//
//  Parameters: MDagPathArray& dagArray: Storage for the DAG array.
//
//      Return: (unsigned int): The number of DAGs returned in the array.
//
//===========================================================================
unsigned int CMayaDagComponents::GetDagArray( MDagPathArray& dagArray ) const
{
    dagArray.clear();

    unsigned int d;
    for ( d = 0; d < mDagArray.length(); d++ )
    {
        dagArray.append( mDagArray[d] );
    }

    return dagArray.length();
}

bool CMayaDagComponents::HasComponents( void ) const
{
    return ( HasVertex() || 
             HasVertexFace() ||
             HasEdge() ||
             HasFace() );
}

bool CMayaDagComponents::HasVertex( void ) const
{
    unsigned int i;
    for ( i = 0; i < mNumVtx; i++ )
    {
        if ( mpbVtx[i] ) return true;
    }
    return false;
}

bool CMayaDagComponents::HasVertexFace( void ) const
{
    unsigned int v,f;
    for ( v = 0; v < mNumVtx; v++ )
    {
        for ( f = 0; f < mNumFace; f++ )
        {
            if ( mppbVtxFace[v][f] ) return true;
        }
    }
    return false;
}

bool CMayaDagComponents::HasEdge( void ) const
{
    unsigned int i;
    for ( i = 0; i < mNumEdge; i++ )
    {
        if ( mpbEdge[i] ) return true;
    }
    return false;
}

bool CMayaDagComponents::HasFace( void ) const
{
    unsigned int i;
    for ( i = 0; i < mNumFace; i++ )
    {
        if ( mpbFace[i] ) return true;
    }
    return false;
}

unsigned int CMayaDagComponents::GetVtxIndices( MIntArray& vtx ) const
{
    vtx.clear();

    unsigned int i;
    for ( i = 0; i < mNumVtx; i++ )
    {
        if ( mpbVtx[i] ) vtx.append( i );
    }

    return vtx.length();
}

unsigned int CMayaDagComponents::GetVtxFaceIndices( MIntArray& vtx, MIntArray& face ) const
{
    vtx.clear();
    face.clear();

    unsigned int v, f;
    for ( v = 0; v < mNumVtx; v++ )
    {
        for ( f = 0; f < mNumFace; f++ )
        {
            if ( mppbVtxFace[v][f] ) 
            {
                vtx.append( v );
                face.append( f );
            }
        }
    }

    return vtx.length();    // they're both the same length.
}

unsigned int CMayaDagComponents::GetEdgeIndices( MIntArray& edge ) const
{
    edge.clear();

    unsigned int i;
    for ( i = 0; i < mNumEdge; i++ )
    {
        if ( mpbEdge[i] ) edge.append( i );
    }

    return edge.length();
}

unsigned int CMayaDagComponents::GetFaceIndices( MIntArray& face ) const
{
    face.clear();

    unsigned int i;
    for ( i = 0; i < mNumFace; i++ )
    {
        if ( mpbFace[i] ) face.append( i );
    }

    return face.length();
}

// I don't think this is actually necessary: Maya provides the 
// first-selected component type, so there is no overlap.
//void CMayaDagComponents::ResolveVtxOverlap( DagComponentsResolveEnum keep )
//{
//    unsigned int v, f;
//
//    if ( keep == kResolveKeepVtx )
//    {
//        for ( v = 0; v < mNumVtx; v++ )
//        {
//            if ( mpbVtx[v] )
//            {
//                for ( f = 0; f < mNumFace; f++ )
//                {
//                    mppbVtxFace[v][f] = false;
//                }
//            }
//        }
//    }
//    if ( keep == kResolveKeepVtxFace )
//    {
//        for ( v = 0; v < mNumVtx; v++ )
//        {
//            for ( f = 0; f < mNumFace; f++ )
//            {
//                if ( mppbVtxFace[v][f] )
//                {
//                    mpbVtx[v] = false;
//                    break;
//                }
//            }
//        }
//    }
//}

/* I get this for free */
//void CMayaDagComponents::ConvertObjectToVtx( void )
//{
//    unsigned int numVtx = mNumVtx ;
//
//    if ( !HasComponents() )
//    {
//        while ( numVtx-- )
//        {
//            mpbVtx[numVtx] = true;
//        }
//    }
//}

//===========================================================================
// CMayaDagComponents::ConvertEdgeToVtx
//===========================================================================
// Description: Converts all edge indices to vertex indices, adding the
//              associated vertex indices and removing the edge indices.
//
//              HasEdgeComponents() will return FALSE after calling this.
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void CMayaDagComponents::ConvertEdgeToVtx( void )
{
    unsigned int numEdges = mNumEdge;

    if ( numEdges > 0 )
    {
        MFnMesh                 fnMesh( mDagArray[0] );
        int2                    vertexList;

        while ( numEdges-- )
        {
            if ( mpbEdge[numEdges] )
            {
                fnMesh.getEdgeVertices( numEdges, vertexList );

                mpbVtx[vertexList[0]] = true;
                mpbVtx[vertexList[1]] = true;

                mpbEdge[numEdges] = false;
            }
        }
    }
}

//===========================================================================
// CMayaDagComponents::ConvertFaceToVtx
//===========================================================================
// Description: Converts all face indices to vertex indices, adding the
//              associated vertex indices and removing the face indices.
//
//              HasFaceComponents() will return FALSE after calling this.
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void CMayaDagComponents::ConvertFaceToVtx( void )
{
    unsigned int numFaces = mNumFace;

    if ( numFaces > 0 )
    {
        MFnMesh                 fnMesh( mDagArray[0] );
        MIntArray               vertexList;
        unsigned int            v;

        while ( numFaces-- )
        {
            if ( mpbFace[numFaces] )
            {
                fnMesh.getPolygonVertices( numFaces, vertexList );

                for ( v = 0; v < vertexList.length(); v++ )
                {
                    mpbVtx[vertexList[v]] = true;
                }

                mpbFace[numFaces] = false;
            }
        }
    }
}

//===========================================================================
// CMayaDagComponents::ConvertFaceToVtxFace
//===========================================================================
// Description: Converts all face indices to vertex-face indices, adding the
//              associated vertex-face indices and removing the face indices.
//
//              HasFaceComponents() will return FALSE after calling this.
//
//  Parameters: bool bReplaceVertices: TRUE if this operation will replace
//                  any vertex indices already set, always setting the 
//                  associated vtxFace to on and setting the associated
//                  vertex to off. If FALSE, then the vtxFace index will
//                  be set _only_ if the associated vertex is _not_ set.
//
//      Return: (void)
//
//===========================================================================
void CMayaDagComponents::ConvertFaceToVtxFace( bool bReplaceVertices )
{
    unsigned int numFaces = mNumFace;

    if ( numFaces > 0 )
    {
        MFnMesh                 fnMesh( mDagArray[0] );
        MIntArray               vertexList;
        unsigned int            v;

        while ( numFaces-- )
        {
            if ( mpbFace[numFaces] )
            {
                fnMesh.getPolygonVertices( numFaces, vertexList );

                for ( v = 0; v < vertexList.length(); v++ )
                {
                    if ( !mpbVtx[vertexList[v]] || bReplaceVertices )
                    {
                        mppbVtxFace[vertexList[v]][numFaces] = true;
                        mpbVtx[vertexList[v]] = false;  // .vtxFace replace .vtx, if requested.
                    }
                }

                mpbFace[numFaces] = false;
            }
        }
    }
}

//===========================================================================
// CMayaDagComponents::ConvertVtxToVtxFace
//===========================================================================
// Description: Converts all vertex indices to vertexFace indices, adding the
//              associated vertexFace indices and removing the vertex indices.
//
//              HasVertexComponents() will return FALSE after calling this.
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void CMayaDagComponents::ConvertVtxToVtxFace( void )
{
    unsigned int numVtx = mNumVtx;

    while ( numVtx-- )
    {
        if ( mpbVtx[numVtx] )
        {
            // Get a list of faces for this vtx.
            MItMeshVertex           itVertex( mDagArray[0] );
            MIntArray               faceList;
            int                     prevIndex;
            unsigned int            f;

            itVertex.setIndex( numVtx, prevIndex );
            itVertex.getConnectedFaces( faceList );

            for ( f = 0; f < faceList.length(); f++ )
            {
                mppbVtxFace[numVtx][faceList[f]] = true;
            }

            mpbVtx[numVtx] = false;
        }
    }
}

//===========================================================================
// CMayaDagComponents::SelectAllVtx
//===========================================================================
// Description: Sets all vertex indices to ON.
//
//              This does not affect any edge, face or vertexFace indices.
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void CMayaDagComponents::SelectAllVtx( void )
{
    unsigned int numVtx = mNumVtx ;

    while ( numVtx-- )
    {
        mpbVtx[numVtx] = true;
    }
}
