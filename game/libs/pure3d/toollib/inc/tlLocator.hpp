/*===========================================================================
    File:: tlLocator.hpp

    Copyright (c) 1997, 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLLOCATOR_HPP
#define _TLLOCATOR_HPP

#include "tlEntity.hpp"
#include "tlPoint.hpp"
#include "tlLoadManager.hpp"

class tlLocatorChunk;
class tlDataChunk;

class tlLocator : public tlEntity
{
public:
    tlLocator(tlDataChunk *ch = NULL);
    ~tlLocator();

    void LoadFromChunk(tlDataChunk* ch);
    
    tlDataChunk *Chunk();

    tlDataChunk *Chunk16();
    void LoadFromChunk16(tlDataChunk* ch);

    inline tlPoint  Position() { return mPosition; }
    inline tlPoint  GetPosition() {return mPosition; }
    inline void     SetPosition(tlPoint newPosition) { mPosition = newPosition; }

    void                        Scale( float s );       // INLINE // Compensate for Maya UI Unit Preference

private:
    tlLocator(const tlLocator&);
    tlLocator& operator=(const tlLocator&);

    // General Parameters:
    // -------------------
    tlPoint     mPosition;
    static const int CurrentLocatorVersion;
};

//===========================================================================
// tlLocator::Scale
//===========================================================================
// Description: This is here to compensate for Maya's UI Unit Preference
//              when exporting.
//
//              For reference, see tlLight::Scale().
//
// Constraints: 
//
//  Parameters: float s: The value returned by SceneNode::UIScale().
//
//      Return: (void)
//
//===========================================================================
inline
void tlLocator::Scale( float s )
{
    mPosition *= s;
}

//*****************************************************************************
// tlLocatorLoader
//*****************************************************************************
class tlLocatorLoader : public tlEntityLoader
{
public:
    tlLocatorLoader();

    virtual tlEntity* Load(tlDataChunk* chunk);
};

#endif

