//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the TextBible class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================
#include <assert.h>
#include "../resourcefiles/resourcefile.h"
#include "TextBible.h"
#include <tlScroobyProjectChunk.hpp>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================
static int g_TextBibleVersion = 1;

//===========================================================================
// Member Functions
//===========================================================================

namespace FeData
{

//===========================================================================
// TextBible::TextBible
//===========================================================================
// Description: TextBible's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

TextBible::TextBible()
{
}


//===========================================================================
// TextBible::~TextBible
//===========================================================================
// Description: TextBible's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

TextBible::~TextBible()
{
}

//===========================================================================
// TextBible::MakeChunk
//===========================================================================
// Description: makes a toollib chunk for this object
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================
tlDataChunk* TextBible::MakeChunk() const
{
    tlScroobyTextBibleResourceChunk* chunk = new tlScroobyTextBibleResourceChunk;
    chunk->SetName( this->GetName() );
    chunk->SetVersion( g_TextBibleVersion );
    chunk->SetFilename( this->GetResourceFile()->GetFileName().Get() );
    chunk->SetInventoryName( this->GetResourceFile()->GetInventoryName() );
    return chunk;
}


} // End NameSpace
