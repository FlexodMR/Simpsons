//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     02 July, 2002
// Modified:    02 July, 2002
// Version:     
//
// Component:   
//
// Description: 
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __MAYADAGCOMPONENTS_H  
#define __MAYADAGCOMPONENTS_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include <maya/MIntArray.h>
#include <maya/MDagPath.h>
#include <maya/MDagPathArray.h>
#include <maya/MObject.h>
#include <iostream>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

class CMayaDagComponents
{
// Constructor / Destructor
public:
    CMayaDagComponents( const MDagPath& dag, MObject& component = MObject::kNullObj );
    virtual ~CMayaDagComponents();

public:
// I don't think this is actually necessary: Maya provides the 
// first-selected component type, so there is no overlap.
/*
    enum DagComponentsResolveEnum
    {
        kResolveKeepVtx = 0,
        kResolveKeepVtxFace
    };
*/

    bool                        IsInstanceOf( const MDagPath& dagInstance ) const;

    bool                        AddToDag( const MDagPath& dag, MObject& component );
    bool                        RemoveDag( const MDagPath& dag );

    unsigned int                GetDagArray( MDagPathArray& dagArray ) const;
    bool                        HasDag( const MDagPath& dag );

    bool                        HasComponents( void ) const;
    bool                        HasVertex( void ) const;
    bool                        HasVertexFace( void ) const;
    bool                        HasEdge( void ) const;
    bool                        HasFace( void ) const;

    unsigned int                GetVtxIndices( MIntArray& vtx ) const;
    unsigned int                GetVtxFaceIndices( MIntArray& vtx, MIntArray& vtxFace ) const;
    unsigned int                GetEdgeIndices( MIntArray& edge ) const;
    unsigned int                GetFaceIndices( MIntArray& face ) const;

/* I get this for free */
//    void                        ConvertObjectToVtx( void );     // If object but no components, add all vertices.
    
    void                        ConvertEdgeToVtx( void );       // Select vertices instead of edges.
    void                        ConvertFaceToVtx( void );       // Select vertices instead of faces.
    void                        ConvertFaceToVtxFace( bool bReplaceVertices = false );   // Select vtxFace instead of faces.
    void                        ConvertVtxToVtxFace( void );    // Select vtxFace instead of vtx.

    void                        SelectAllVtx( void );

// I don't think this is actually necessary: Maya provides the 
// first-selected component type, so there is no overlap.
//    void                        ResolveVtxOverlap( DagComponentsResolveEnum keep );

    void                        Clear( void );

    friend std::ostream&             operator << ( std::ostream& os, const CMayaDagComponents& mdc );

protected:
    bool                        AddDag( const MDagPath& dag );
    unsigned int                ParseVtxFace( const MString& vtxFace, MIntArray& vtxArray, MIntArray& faceArray );

private:
    MDagPathArray               mDagArray;  // array of Dags (instance family)
    // Component selection is shared among instances.
    unsigned int                mNumVtx;
    bool*                       mpbVtx;       // indices for vertex components
   
    unsigned int                mNumEdge;
    bool*                       mpbEdge;      // indices for edge components

    unsigned int                mNumFace;
    bool*                       mpbFace;      // indices for face components

    // Count is derived from mNumVtx & mNumFace
    bool**                      mppbVtxFace;   // indices vertex-face components

};

//===========================================================================
// Inlines
//===========================================================================

#endif // __MAYADAGCOMPONENTS_H  
