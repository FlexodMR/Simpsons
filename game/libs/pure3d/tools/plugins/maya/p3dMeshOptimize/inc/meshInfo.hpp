//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     03 December, 2002
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
#ifndef MESHINFO_HPP
#define MESHINFO_HPP

//===========================================================================
// Nested Includes
//===========================================================================

#include "edgeInfo.hpp"

#include <maya/MIntArray.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

class CMeshInfo
{
// Constructor / Destructor
public:
    CMeshInfo( MDagPath& dagPath, const MIntArray& edgeIndices, MStatus* pStatus = NULL );
    ~CMeshInfo();

public:
    MStatus                     Initialize( MDagPath& dagPath, const MIntArray& edgeIndices );
    void                        GetDagPath( MDagPath& dagPath ) const;

    unsigned int                NumEdges( void ) const;
    CEdgeInfo*                  EdgeInfo( int edge ) const;
        
    void                        Clear( void );

private:
    MDagPath                    m_dagPath;

    unsigned int                m_numEdgeInfo;
    CEdgeInfo*                  m_pEdgeInfo;
};

//===========================================================================
// Inlines
//===========================================================================

inline
unsigned int CMeshInfo::NumEdges( void ) const
{
    return m_numEdgeInfo;
}

#endif // __MESHINFO_HPP_
