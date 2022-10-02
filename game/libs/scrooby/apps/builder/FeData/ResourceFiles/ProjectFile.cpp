//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the ProjectFile class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "ProjectFile.h"
#include "..\NamedElements\Project.h"
#include "..\Loaders\ProjectLoader.h"
#include "..\Savers\ProjectSaver.h"
#include "..\Savers\HashedNameExporter.h"
#include "..\Helpers\Util.h"
#include "..\Helpers\OutputMessage.h"
#include "XMLTree.h"

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
// ProjectFile::ProjectFile
//===========================================================================
// Description: ProjectFile's constructor
//
// Constraints:    None
//
// Parameters:    fileName - The name of the resource file.
//
// Return:      Nothing
//
//===========================================================================

ProjectFile::ProjectFile( FileName &fileName ) : 
ResourceFile( fileName ),
m_Project( NULL ),
m_ObjectFactory( NULL )
{
}


//===========================================================================
// ProjectFile::~ProjectFile
//===========================================================================
// Description: ProjectFile's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ProjectFile::~ProjectFile()
{
    if( m_Project != NULL )
    {
        delete m_Project;
        m_Project = NULL;
    }
}


//===========================================================================
// ProjectFile::Create
//===========================================================================
// Description: This is used to create the resource file.
//
// Constraints:    None
//
// Parameters:    project - The project to use with creation.
//
// Return:      true  - if the file could be created,
//              false - otherwise
//
//===========================================================================

bool ProjectFile::Create( BaseFactory* objectFactory )
{
    PascalCString message( "Creating Project file: " );
    PascalCString fileName;
    m_FileName.Get( fileName );
    message += fileName;
    g_OutputMessage.Add( message );

    m_ObjectFactory = objectFactory;

    if( m_Project != NULL )
    {
        delete m_Project;
        m_Project = NULL;
    }

    m_Project = objectFactory->NewProject();
    if( m_Project == NULL )
    {
        g_OutputMessage.Add( "ProjectFile::Create: Out of Memory!",
                              ErrorOutputMessage );
        return false;
    }

    m_Project->SetObjectFactory( objectFactory );
    m_Project->SetName( fileName );
            
    if( ::IsFileExist( fileName ) )
    {
        m_Project->SetReadOnly( ::IsFileReadOnly( fileName ) );
    }
    else
    {
        m_Project->SetReadOnly( false );
    }
    m_FileLoaded = true;

    
    // Set the path
    FileName tempFileName;
    PascalCString pathName;
    tempFileName.Set( fileName );
    tempFileName.GetPath( pathName );
    m_Project->SetRootPath( pathName );

    return Save();
}


//===========================================================================
// ProjectFile::Load
//===========================================================================
// Description: This is used to load the resource file.
//
// Constraints:    None
//
// Parameters:    objectFactory - The object factory to use with loading.
//
// Return:      true  - if the file was the correct type and loaded fine
//              false - otherwise
//
//===========================================================================

bool ProjectFile::Load( BaseFactory* objectFactory )
{
    PascalCString message( "Loading Project file: " );
    PascalCString fileName;
    m_FileName.Get( fileName );
    message += fileName;
    g_OutputMessage.Add( message );

    m_ObjectFactory = objectFactory;

    XMLTree fileTree;
    if( fileTree.LoadTreeFromFile( fileName, g_ProjectTag ) )
    {
        if( m_Project != NULL )
        {
            delete m_Project;
            m_Project = NULL;
        }

        ProjectLoader loader;

        m_Project = loader.Load( fileTree, objectFactory );
        if( m_Project == NULL )
        {
            g_OutputMessage.Add( "ProjectFile::Load: Could not load Project file.",
                                 ErrorOutputMessage );
            return false;
        }
        else
        {
            m_Project->SetObjectFactory( objectFactory );
            m_Project->SetReadOnly( IsFileReadOnly( fileName ) );
            m_FileLoaded = true;
            return true;
        }
    }
    else
    {
        // Here we create a dummy page object with just the name,
        // and set it to read only
        if( m_Project != NULL )
        {
            delete m_Project;
            m_Project = NULL;
        }

        // Create the new Project
        m_Project = objectFactory->NewProject();
        m_Project->SetObjectFactory( objectFactory );

        // Set the project settings
        m_Project->SetName( fileName );
        m_Project->SetLoaded( false );
        m_Project->SetReadOnly( true );

        return true;
    }
}


//===========================================================================
// ProjectFile::Reload
//===========================================================================
// Description: This is used to reload the resource file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      true  - if the file was the correct type and loaded fine
//              false - otherwise
//
//===========================================================================

bool ProjectFile::Reload()
{
    return Load( m_ObjectFactory );
}


//===========================================================================
// ProjectFile::Save
//===========================================================================
// Description: This is used to save the resource file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      true  - if the file was saved fine
//              false - otherwise
//
//===========================================================================

bool ProjectFile::Save()
{
    if( m_Project != NULL )
    {
        FeData::ProjectSaver saver;
        if( m_Project->IsLoaded() && ( !m_Project->IsReadOnly() ) )
        {
            return saver.Save( m_Project );
        }
        else
        {
            return true;
        }
    }
    else
    {
        return false;
    }
}


//===========================================================================
// ProjectFile::ExportHashedNames
//===========================================================================
// Description: This is used to generate a header file containing
//              #define's of the hashed equivalents for all the names
//              in the project.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      true  - if the file was saved fine
//              false - otherwise
//
//===========================================================================

bool ProjectFile::ExportHashedNames()
{
    if( m_Project != NULL )
    {
        if( m_Project->IsLoaded() )
        {
            FeData::HashedNameExporter exporter;
            return( exporter.ExportHashedNames( m_Project ) );
        }
        
        return( false );
    }
    else
    {
        return( false );
    }
}



//===========================================================================
// ProjectFile::GetProject
//===========================================================================
// Description: This is used to get the loaded Project.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      A pointer to the Project or NULL if one is not loaded.
//
//===========================================================================

Project* ProjectFile::GetProject()
{
    return m_Project;
}


} // End NameSpace
