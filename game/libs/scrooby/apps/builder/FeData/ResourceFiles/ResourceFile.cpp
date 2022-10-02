//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the ResourceFile class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include <assert.h>
#include "../helpers/FileName.h"
#include "../helpers/NameManager.h"
#include "../Helpers/OutputMessage.h"
#include "ResourceFile.h"
#include <stdio.h>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

namespace FeData
{

//===========================================================================
// ResourceFile::ResourceFile
//===========================================================================
// Description: ResourceFile's constructor
//
// Constraints:    if the filename is not compliant with the PS2, then it will
//                output a warning message
//
// Parameters:    fileName - The name of the resource file.
//
// Return:      Nothing
//
//===========================================================================
ResourceFile::ResourceFile( FileName &fileName ) :
m_FileName( fileName ),
m_FileLoaded( false ),
m_FileDirty( false )
{
    assert( fileName.Get().Length() != 0 );

    //check if the resource filename is a valid one
    PascalCString pcsFilename;
    bool success = fileName.Get( pcsFilename );
    assert( success == true );
    bool validOnPs2 = FileName::IsCompliantPS2( pcsFilename );
    if( validOnPs2 == false )
    {
        char message[ 1000 ] = "";
        sprintf( message, "ResourceFile::ResourceFile - Filename not PS2 Compliant \"%s\"", static_cast< char* >( pcsFilename ) );
        FeData::g_OutputMessage.Add( message, FeData::ErrorOutputMessage );
    }
    m_InventoryName = "";
}


//===========================================================================
// ResourceFile::~ResourceFile
//===========================================================================
// Description: ResourceFile's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ResourceFile::~ResourceFile()
{
}


//===========================================================================
// ResourceFile::GetFileName
//===========================================================================
// Description: This is used to get the file name.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      A copy of the file name
//
//===========================================================================

FileName ResourceFile::GetFileName() const
{
    return m_FileName;
}

const char* ResourceFile::GetInventoryName() const
{
    return m_InventoryName;
}

void ResourceFile::SetInventoryName( const char* inventoryName )
{
    m_InventoryName = inventoryName;
}


//===========================================================================
// ResourceFile::FileLoaded
//===========================================================================
// Description: This tells if the file was loaded.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      true  - If the file was loaded,
//              false - otherwise
//
//===========================================================================

bool ResourceFile::FileLoaded()
{
    return m_FileLoaded;
}


//===========================================================================
// ResourceFile::FileDirty
//===========================================================================
// Description: This tells if the file has been changed since it was saved 
//              last.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      true  - If the file was changed,
//              false - otherwise
//
//===========================================================================

bool ResourceFile::FileDirty()
{
    return m_FileDirty;
}


//===========================================================================
// ResourceFile::SetDirty
//===========================================================================
// Description: This sets wether the file has been changed since it was saved 
//              last.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

void ResourceFile::SetDirty( bool isDirty )
{
    m_FileDirty = isDirty;
}



} // End NameSpace
