//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Image class.
//
// Authors:     Victor Medrano
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "TextStyle.h"
#include "../resourcefiles/resourcefile.h"
#include <tlScroobyProjectChunk.hpp>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================
static int g_TextStyleVersion = 1;
//===========================================================================
// Member Functions
//===========================================================================

namespace FeData
{

//===========================================================================
// TextStyle::TextStyle
//===========================================================================
// Description: TextStyle's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================
TextStyle::TextStyle()
{
}


//===========================================================================
// TextStyle::~TextStyle
//===========================================================================
// Description: TextStyle's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================
TextStyle::~TextStyle()
{
}

//===========================================================================
// MakeChunk
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
tlDataChunk* TextStyle::MakeChunk() const
{
    tlScroobyTextStyleResourceChunk* chunk = new tlScroobyTextStyleResourceChunk;
    chunk->SetName( GetName() );
    chunk->SetVersion( g_TextStyleVersion );
    chunk->SetFilename( this->GetResourceFile()->GetFileName().Get() );
    chunk->SetInventoryName( this->GetResourceFile()->GetInventoryName() );
    return chunk;
}


} // End NameSpace
