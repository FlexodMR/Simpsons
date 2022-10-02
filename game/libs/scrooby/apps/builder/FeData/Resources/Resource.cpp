//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Resource class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "Resource.h"
#include "..\Helpers\ResourceFileManager.h"

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
// Resource::Resource
//===========================================================================
// Description: Resource's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Resource::Resource() :
m_ResourceFile( NULL ),
m_ResourceFileManager( NULL )
{
}


//===========================================================================
// Resource::~Resource
//===========================================================================
// Description: Resource's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Resource::~Resource()
{
    if( m_ResourceFileManager != NULL )
    {
        m_ResourceFileManager->Release( &m_ResourceFile );
    }
}


//===========================================================================
// Resource::GetResourceFile
//===========================================================================
// Description: The following functions are used to get the data members.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      The data member.
//
//===========================================================================
ResourceFile* Resource::GetResourceFile()
{
    return m_ResourceFile;
}

//===========================================================================
// Resource::GetResourceFile
//===========================================================================
// Description: The following functions are used to get the data members.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      The data member.
//
//===========================================================================
const ResourceFile* Resource::GetResourceFile() const
{
    return m_ResourceFile;
}

//===========================================================================
// Resource::Sets
//===========================================================================
// Description: The following functions are used to set the data members.
//
// Constraints:    None
//
// Parameters:    The value the data member should be set to.
//
// Return:      Nothing
//
//===========================================================================

void Resource::SetResourceFile( ResourceFile* resourceFile,
                                ResourceFileManager* resourceFileManager)
{
    m_ResourceFile = resourceFile;
    m_ResourceFileManager = resourceFileManager;
}

//===========================================================================
// Resource::ReleaseResourceFile
//===========================================================================
// Description: Releases resource file
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

void Resource::ReleaseResourceFile()
{
    if( m_ResourceFileManager != NULL )
    {
        m_ResourceFileManager->Release( &m_ResourceFile );
    }
}



} // End NameSpace
