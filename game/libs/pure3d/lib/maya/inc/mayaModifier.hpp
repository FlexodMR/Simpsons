//===========================================================================
// Copyright ©2001 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     November 2, 2001
//
// Component:   mayaModifierStack
//
// Description: Provides a union encapsulation for MDGModifier and MDagModifier.
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __MAYAMODIFIER_H  
#define __MAYAMODIFIER_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include <maya/MDagModifier.h>          // nests DGModifier

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
// Description: Encapsulates MDGModifier and MDagModifier objects so they
//              may be treated as equal for use with the mayaModifierStack
//              object.
//
// Constraints:
//
//===========================================================================

class CMayaModifier
{
public:

    enum MayaModifierEnum
    {
        kDGModifier,
        kDagModifier
    };

    MayaModifierEnum                    Type( void ) const;             // inline
    MDGModifier*                        DGModifier( void ) const;       // inline
    MDagModifier*                       DAGModifier( void ) const;      // inline

// Constructor / Destructor
public:
    CMayaModifier( MayaModifierEnum kType );            // inline

    ~CMayaModifier();                                   // inline

protected:
    // No protected members.

private:
    MayaModifierEnum                    m_modifierType;

    union
    {
        MDGModifier*                    dgModifier;   // Use when m_modifierType is kDGModifier.
        MDagModifier*                   dagModifier;  // Use when m_modifierType is kDagModifier.
    } m_modifier;
};

//===========================================================================
// Inlines
//===========================================================================

inline
CMayaModifier::CMayaModifier( MayaModifierEnum kType )
:   m_modifierType( kType )
{
    if ( kType == kDGModifier )
    {
        m_modifier.dgModifier = new MDGModifier;
    }

    if ( kType == kDagModifier )
    {
        m_modifier.dagModifier = new MDagModifier;
    }
}

inline
CMayaModifier::~CMayaModifier()
{
}

inline
CMayaModifier::MayaModifierEnum CMayaModifier::Type( void ) const
{
    return m_modifierType;
}

inline
MDGModifier* CMayaModifier::DGModifier( void ) const
{
    if ( m_modifierType == kDGModifier )
    {
        return m_modifier.dgModifier;
    }
    else
    {
        return NULL;
    }
}

inline
MDagModifier* CMayaModifier::DAGModifier( void ) const
{
    if ( m_modifierType == kDagModifier )
    {
        return m_modifier.dagModifier;
    }
    else
    {
        return NULL;
    }
}

#endif // __MAYAMODIFIER_H  