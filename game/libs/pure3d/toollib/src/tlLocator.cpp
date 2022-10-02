/*===========================================================================
    File:: tlLocator.cpp

    Copyright (c) 2001 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlLocator.hpp"
#include "tlLocatorChunk.hpp"
#include "tlColour.hpp"

const int tlLocator::CurrentLocatorVersion = 0x0101; // Version 1.01

//************************************************
//
// Class tlLocator
//
//
tlLocator::tlLocator(tlDataChunk *ch /* = NULL */) :
    mPosition() 
{
    if (ch != NULL) LoadFromChunk(ch);
}



//************************************************
//
// Class tlLocator
// Default Destructor
//
//
tlLocator::~tlLocator()
{

}

tlDataChunk* tlLocator::Chunk16()
{
    return Chunk();
}
void tlLocator::LoadFromChunk16(tlDataChunk* ch)
{
    LoadFromChunk(ch);
}

void tlLocator::LoadFromChunk(tlDataChunk *ch)
{
    tlLocatorChunk *lc = dynamic_cast<tlLocatorChunk *>(ch);
    if (lc == NULL) return;

    assert(lc->GetVersion() == (unsigned long)CurrentLocatorVersion);

    SetName(lc->GetName());
    SetPosition(lc->GetPosition() );


}

tlDataChunk* tlLocator::Chunk()
{
    tlLocatorChunk *lc = new tlLocatorChunk;
    lc->SetName(GetName());
    lc->SetVersion(CurrentLocatorVersion);
    lc->SetPosition(GetPosition());
    
    return lc;
}

// tlLocator::Scale() is INLINE //

//*****************************************************************************
// tlLocatorLoader
//*****************************************************************************
tlLocatorLoader::tlLocatorLoader() : 
    tlEntityLoader(Pure3D::Locator::LOCATOR)
{
}

tlEntity*
tlLocatorLoader::Load(tlDataChunk* chunk)
{
    return new tlLocator(chunk);
}

