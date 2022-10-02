//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Image class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "Image.h"
#include "../resourcefiles/resourcefile.h"
#include <tlScroobyProjectChunk.hpp>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================
static int g_ImageVersionNumber = 1;
//===========================================================================
// Member Functions
//===========================================================================

namespace FeData
{

//===========================================================================
// Image::Image
//===========================================================================
// Description: Image's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Image::Image()
{
}

//===========================================================================
// Image::~Image
//===========================================================================
// Description: Image's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================
Image::~Image()
{
}

//===========================================================================
// Image::MakeChunk
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
tlDataChunk* Image::MakeChunk() const
{
    tlScroobyImageResourceChunk* chunk = new tlScroobyImageResourceChunk;
    chunk->SetName( this->GetName() );
    chunk->SetVersion( g_ImageVersionNumber );
    const ResourceFile* resFile = this->GetResourceFile();
    chunk->SetFilename( resFile->GetFileName().Get() );
    return chunk;
}



} // End NameSpace
