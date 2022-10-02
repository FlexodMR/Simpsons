//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     28 November, 2002
//
// Component:   p3dMeshOptimize Maya plug-in (edgeInfo.hpp)
//
// Description: 
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef EDGEINFO_HPP
#define EDGEINFO_HPP

//===========================================================================
// Nested Includes
//===========================================================================

#include <maya/MDagPath.h>
#include <maya/MObject.h>
#include <maya/MDGModifier.h>
#include <radmath/vector.hpp>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

const unsigned int kEdgeInfoNumUVs = 8;

//===========================================================================
// Interface Definitions
//===========================================================================

class CEdgeInfo
{
// Constructor / Destructor
public:
    CEdgeInfo();
    CEdgeInfo( MDagPath& dagPath, int index, MStatus* pStatus = NULL );
    ~CEdgeInfo();

public:

    enum EdgeInfoUvEnum
    {
        kSelectedEdgeFaceA = 0,
        kSelectedEdgeFaceB,
        kOppositeEdgeFaceA,
        kOppositeEdgeFaceB,

        kEdgeInfoUvEnumLast
    };

    enum EdgeInfoFaceEnum
    {
        kFaceA = 0,
        kFaceB
    };

    MStatus                     Initialize( MDagPath& dagPath, int index );
    MStatus                     Refresh( void );

    int                         Index(void) const;
    bool                        Boundary(void) const;
    bool                        FacesShareShader(void);
    int                         GetFaceIndices( int2& faceIndices ) const;

    bool                        GetUVs( EdgeInfoUvEnum kEdgeFace, rmt::Vector2* pUV );
    bool                        GetFaceUVNormal( EdgeInfoFaceEnum kFace, rmt::Vector& normal ); // Uses only X, Y of vector.

    float                       MaxUV( bool bAbsolute = true ) const;
    float                       MaxUVRange( void ) const;
    double                      Area( void ) const;

    MStatus                     MoveAndSew( MDGModifier* pDGModifier );

    MString                     AsString( void ) const;

protected:

private:
    MStatus                     CalculateOppositeEdges( void );
    MStatus                     GetEdgeUV( int index, int faceIndex, rmt::Vector2* pUV );

    MDagPath                    m_dagPath;
    int                         m_index;
    bool                        m_bBoundaryEdge;
    int                         m_vertexIndices[2];
    int                         m_adjacentFaces[2];
    int                         m_numAdjacentFaces;
    int                         m_oppositeEdges[2];
    float                       m_maxUVRange;
    double                      m_area;

    // Four pairs of UVs:
    //
    //  +-----+  - The edge opposite the selected edge on Face A. [2,3]
    //  +  A  +
    //  +     +  / The selected edge on Face A. [0,1]
    //  +=====+
    //  +     +  \ The selected edge on Face B. [4,5]
    //  +  B  +
    //  +-----+  - The edge opposite the selected edge on Face B. [6,7]
    rmt::Vector2                m_pUVs[kEdgeInfoNumUVs];    // *Assigned* not allocated.
};

//===========================================================================
// Inlines
//===========================================================================

inline
int CEdgeInfo::Index(void) const
{
    return m_index;
}

inline
bool CEdgeInfo::Boundary( void ) const
{
    return m_bBoundaryEdge;
}

inline
int CEdgeInfo::GetFaceIndices( int2& faceIndices ) const
{
    faceIndices[0] = m_adjacentFaces[0];
    faceIndices[1] = m_adjacentFaces[1];

    return m_numAdjacentFaces;
}

inline
float CEdgeInfo::MaxUVRange( void ) const
{
    return m_maxUVRange;
}

inline
double CEdgeInfo::Area( void ) const
{
    return m_area;
}

#endif // EDGEINFO_HPP
