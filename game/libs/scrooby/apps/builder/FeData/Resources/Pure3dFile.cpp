//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Pure3dFile class.
//
// Authors:     Ian Gipson
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================
#include <assert.h>
#include "Pure3dFile.h"
#include "../resourcefiles/resourcefile.h"
#include <tlScroobyProjectChunk.hpp>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================
static int g_Pure3dFileVersionNumber = 1;
//===========================================================================
// Member Functions
//===========================================================================

namespace FeData
{

//===========================================================================
// Pure3dFile::Pure3dFile
//===========================================================================
// Description: Pure3dFile's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Pure3dFile::Pure3dFile()
{
}


//===========================================================================
// Pure3dFile::~Pure3dFile
//===========================================================================
// Description: Pure3dFile's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Pure3dFile::~Pure3dFile()
{
}

//===========================================================================
// Pure3dFile::GetAnimationName
//===========================================================================
// Description: allows access to the animation name
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      PascalCString representing the name of the animation
//
//===========================================================================
const PascalCString& Pure3dFile::GetAnimationName() const
{
    return this->m_AnimationName;
}

//===========================================================================
// Pure3dFile::GetCameraName
//===========================================================================
// Description: allows access to the camera name
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      PascalCString representing the name of the camera
//
//===========================================================================
const PascalCString& Pure3dFile::GetCameraName() const
{
    return this->m_CameraName;
}

//===========================================================================
// Pure3dFile::GetInventoryName
//===========================================================================
// Description: allows access to the inventory name of this P3D object
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      PascalCString representing the name of the p3d object in the
//              inventory
//
//===========================================================================
const PascalCString& Pure3dFile::GetInventoryName() const
{
    return this->m_InventoryName;
}

//===========================================================================
// Pure3dFile::MakeChunk
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
tlDataChunk* Pure3dFile::MakeChunk() const
{
    tlScroobyPure3dResourceChunk* chunk = new tlScroobyPure3dResourceChunk;
    chunk->SetName( this->GetName() );
    chunk->SetVersion( g_Pure3dFileVersionNumber );
    const ResourceFile* resFile = this->GetResourceFile();
    chunk->SetFilename( resFile->GetFileName().Get() );
    chunk->SetInventoryName( this->GetInventoryName() );
    chunk->SetCameraName( this->GetCameraName() );
    chunk->SetAnimationName( this->GetAnimationName() );
    return chunk;
}


//===========================================================================
// Pure3dFile::SetAnimationName
//===========================================================================
// Description: allows access to the animation name
//
// Constraints:    None
//
// Parameters:    name - the name to set the animation name to
//
// Return:      None
//
//===========================================================================
void Pure3dFile::SetAnimationName( const PascalCString& name )
{
    this->m_AnimationName = name;
}

//===========================================================================
// Pure3dFile::SetCameraName
//===========================================================================
// Description: allows access to the camera name
//
// Constraints:    None
//
// Parameters:    name - the name to set the camera name to
//
// Return:      None
//
//===========================================================================
void Pure3dFile::SetCameraName( const PascalCString& name )
{
    this->m_CameraName = name;
}

//===========================================================================
// Pure3dFile::SetInventoryName
//===========================================================================
// Description: allows access to the inventory name
//
// Constraints:    None
//
// Parameters:    name - the name to set the camera name to
//
// Return:      None
//
//===========================================================================
void Pure3dFile::SetInventoryName( const PascalCString& name )
{
    this->m_InventoryName = name;
}

} // End NameSpace
