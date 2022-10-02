//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Pure3dFileFile class.
//
// Authors:     Ian Gipson
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "Pure3dFileFile.h"
#include "..\Helpers\OutputMessage.h"

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
// Pure3dFileFile::Pure3dFileFile
//===========================================================================
// Description: Pure3dFileFile's constructor
//
// Constraints:    None
//
// Parameters:    fileName - The name of the resource file.
//
// Return:      Nothing
//
//===========================================================================

Pure3dFileFile::Pure3dFileFile( FileName &fileName ) : 
ResourceFile( fileName )
{
}


//===========================================================================
// Pure3dFileFile::~Pure3dFileFile
//===========================================================================
// Description: Pure3dFileFile's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================
Pure3dFileFile::~Pure3dFileFile()
{
}

//===========================================================================
// Pure3dFileFile::Load
//===========================================================================
// Description: Ian doesn't know what this is for
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================
bool Pure3dFileFile::Load()
{
    FeData::g_OutputMessage.Add( "Pure3dFileFile::Load(): this shouldn't have been called", 
                                         FeData::DebugOutputMessage );    
    return true;
}
//===========================================================================
// Pure3dFileFile::Reload
//===========================================================================
// Description: Ian doesn't know what this is for
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================
bool Pure3dFileFile::Reload()
{
    FeData::g_OutputMessage.Add( "Pure3dFileFile::Reload(): this shouldn't have been called", 
                                         FeData::DebugOutputMessage );    
    return false;
}

} // End NameSpace
