//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Pure3dObject class.
//
// Authors:     Ian Gipson
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include <assert.h>
#include "Pure3dObject.h"
#include "Page.h"
#include "Descriptions\Pure3dObjectDescription.h"
#include "..\Helpers\NameManager.h"
#include "..\Helpers\OutputMessage.h"
#include "..\Helpers\ResourceManager.h"
#include "..\Resources\Pure3dFile.h"
#include <tlScroobyProjectChunk.hpp>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================
static int g_Pure3dObjectVersion = 1;

//===========================================================================
// Member Functions
//===========================================================================

namespace FeData
{

//===========================================================================
// Pure3dObject::Pure3dObject
//===========================================================================
// Description: Pure3dObject's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Pure3dObject::Pure3dObject():
    m_Pure3dFile( NULL )
{
}


//===========================================================================
// Pure3dObject::~Pure3dObject
//===========================================================================
// Description: Pure3dObject's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================
Pure3dObject::~Pure3dObject()
{
}


//===========================================================================
// Pure3dObject::GetDescription
//===========================================================================
// Description: This returns a description of the object without any pointers
//              to other objects.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      The pointer to a newly created description (this must be 
//              deleted by the caller),
//              or NULL if the description could not be made.
//
//===========================================================================
DrawingElementDescription* Pure3dObject::GetDescription()
{
    Pure3dObjectDescription* description = new Pure3dObjectDescription;
    if( description == NULL )
    {
        g_OutputMessage.Add( "Pure3dObject::GetDescription: Out of Memory!", 
                             ErrorOutputMessage );
        return NULL;
    }

    Pure3dObject::FillInDescription( description );
 
    return description;
}


//===========================================================================
// Pure3dObject::SetFromDescription
//===========================================================================
// Description: This sets the state of the element to match that of the
//              passed description.
//
// Constraints:    The page for this element must have been set before this can 
//              be called.
//
// Parameters:    description - Description to set from
//
// Return:      true  - if successful,
//              false - otherwize
//
//===========================================================================

bool Pure3dObject::SetFromDescription( DrawingElementDescription* description ) 
{
    Pure3dObjectDescription* pure3dObjectDescription = dynamic_cast< Pure3dObjectDescription* >( description );
    if( pure3dObjectDescription == NULL )
    {
        g_OutputMessage.Add( "Pure3dObject::SetFromDescription: Invalid description type!", 
                             DebugOutputMessage );
        return false;
    }
    #pragma message( "Pure3dObject::SetFromDescription - finish writing this!" )
    assert( false );

    // Set the parent settings
    if( !BoxDrawingElement::SetFromDescription( description ) )
    {
        return false;
    }

    return true;
}


//===========================================================================
// Pure3dObject::FillInDescription
//===========================================================================
// Description: This fills in the description with settings from this class.
//
// Constraints:    None
//
// Parameters:    description - description to fill.
//
// Return:      true  - if successful,
//              false - otherwize
//
//===========================================================================

bool Pure3dObject::FillInDescription( DrawingElementDescription* description )
{
    Pure3dObjectDescription* pure3dObjectDescription = dynamic_cast< Pure3dObjectDescription* >( description );
    if( pure3dObjectDescription == NULL )
    {
        g_OutputMessage.Add( "Pure3dObject::FillInDescription: Invalid description type!", 
                             DebugOutputMessage );
        return false;
    }

    // Fill in parent settings
    BoxDrawingElement::FillInDescription( description );

    return true;
}

//===========================================================================
// Movie::GetPure3dFile
//===========================================================================
// Description: Gets the pure3dfile resource associtate with this movie
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      pointer to the Pure 3d file
//
//===========================================================================
Pure3dFile* Pure3dObject::GetPure3dFile()
{
    return this->m_Pure3dFile;
}


//===========================================================================
// Movie::SetMovieClip
//===========================================================================
// Description: sets the movie clip resource associtated with this movie
//
// Constraints:    None
//
// Parameters:    theMovieCLip - pointer ot the movie clip that we're setting
//
// Return:      t/f was this set
//
//===========================================================================
bool Pure3dObject::SetPure3dFile( Pure3dFile* thePure3dFile )
{
    this->m_Pure3dFile = thePure3dFile;
    return true;
}

//===========================================================================
// Pure3dObject::GetPure3dFileName
//===========================================================================
// Description: gets the filename of the resource file
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      the name of the resource
//
//===========================================================================
PascalCString Pure3dObject::GetPure3dFileName() const
{
    if( this->m_Pure3dFile == NULL )
    {
        return "";
    }
    PascalCString name = this->m_Pure3dFile->GetName();
    return name;
}

//===========================================================================
// Pure3dObject::MakeChunk
//===========================================================================
// Description: Makes a tlDataChunk out of the object
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      the tlDataChunk
//
//===========================================================================
tlDataChunk* Pure3dObject::MakeChunk() const
{
    tlScroobyPure3dObjectChunk* chunk = new tlScroobyPure3dObjectChunk;
    chunk->SetName( this->GetName() );
    chunk->SetVersion( g_Pure3dObjectVersion );
    chunk->SetPositionX( this->GetX() );
    chunk->SetPositionY( this->GetY() );
    chunk->SetDimensionX( this->GetWidth() );
    chunk->SetDimensionY( this->GetHeight() );
    chunk->SetJustificationX( this->GetJustificationHorizontal() );
    chunk->SetJustificationY( this->GetJustificationVertical() );
    tlColour color( GetRed(), GetGreen(), GetBlue(), GetAlpha() );
    chunk->SetColor( color.ULong() );
    chunk->SetTranslucency( this->GetTranslucency() );
    chunk->SetRotationValue( this->GetRotation() );
    chunk->SetPure3dFilename( this->GetPure3dFileName() );
    return chunk;
}

} // End NameSpace
