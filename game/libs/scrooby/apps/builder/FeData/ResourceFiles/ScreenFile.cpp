//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the ScreenFile class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include <assert.h>
#include <direct.h>
#include "..\Factories\BaseFactory.h"
#include "..\Helpers\OutputMessage.h"
#include "..\Helpers\Util.h"
#include "..\Loaders\ScreenLoader.h"
#include "..\NamedElements\Project.h"
#include "..\NamedElements\Screen.h"
#include "ScreenFile.h"
#include "..\Savers\ScreenSaver.h"
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
// ScreenFile::ScreenFile
//===========================================================================
// Description: ScreenFile's constructor
//
// Constraints:    None
//
// Parameters:    fileName - The name of the resource file.
//
// Return:      Nothing
//
//===========================================================================

ScreenFile::ScreenFile( FileName &fileName ) : 
ResourceFile( fileName ),
m_Screen( NULL ),
m_Project( NULL )
{
}


//===========================================================================
// ScreenFile::~ScreenFile
//===========================================================================
// Description: ScreenFile's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ScreenFile::~ScreenFile()
{
    if( m_Screen != NULL )
    {
        delete m_Screen;
        m_Screen = NULL;
    }
}


//===========================================================================
// ScreenFile::Create
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

bool ScreenFile::Create( Project *project )
{
    PascalCString message( "Creating Screen file: " );
    PascalCString fileName;
    m_FileName.Get( fileName );
    message += fileName;
    g_OutputMessage.Add( message );

    m_Project = project;

    if( m_Screen != NULL )
    {
        delete m_Screen;
        m_Screen = NULL;
    }

    BaseFactory* objectFactory = project->GetObjectFactory();

    m_Screen = objectFactory->NewScreen();
    if( m_Screen == NULL )
    {
        g_OutputMessage.Add( "ScreenFile::Create: Out of Memory!",
                              ErrorOutputMessage );
        return false;
    }

    m_Screen->SetProject( project );

    PascalCString screenName;
    m_FileName.Get( screenName );
    m_Screen->SetName( screenName );

    return Save();
}


//===========================================================================
// ScreenFile::Load
//===========================================================================
// Description: This is used to load the resource file.
//
// Constraints:    None
//
// Parameters:    project - The project to use with loading.
//
// Return:      true  - if the file was the correct type and loaded fine
//              false - otherwise
//
//===========================================================================
bool ScreenFile::Load( Project *project )
{
    PascalCString message( "Loading Screen file: " );
    PascalCString fileName;
    m_FileName.Get( fileName );
    message += fileName;
    g_OutputMessage.Add( message );

    m_Project = project;


    PascalCString projectPath = project->GetRootPath();
    projectPath += project->GetScreenPath();
    int result = ::_chdir( projectPath );
    if( result != 0 )
    {
        char message[ 1000 ];
        sprintf( message, "ScreenFile::Load: could not change directory to\"%s\"", projectPath );
        g_OutputMessage.Add( message, ErrorOutputMessage );
    }
    assert( result == 0 );

    XMLTree fileTree;
    if( fileTree.LoadTreeFromFile( fileName, g_ScreenTag ) )
    {
        if( m_Screen != NULL )
        {
            delete m_Screen;
            m_Screen = NULL;
        }

        ScreenLoader loader;

        m_Screen = loader.Load( fileTree, project );
        if( m_Screen == NULL )
        {
            g_OutputMessage.Add( "ScreenFile::Load: Could not load Screen file.",
                                 ErrorOutputMessage );
            return false;
        }
        else
        {
            project->GotoScreenDirectory();
            m_Screen->SetReadOnly( IsFileReadOnly( fileName ) );
            m_FileLoaded = true;
            return true;
        }
    }
    else
    {
        //couldn't load the screen from disk
        g_OutputMessage.Add( "ScreenFile::Load: Could not open Screen file.",
                             ErrorOutputMessage );

        // Here we create a dummy page object with just the name,
        // and set it to read only
        if( m_Screen != NULL )
        {
            delete m_Screen;
            m_Screen = NULL;
        }

        // Get the object factory
        BaseFactory* objectFactory = project->GetObjectFactory();

        // Create the new Page
        m_Screen = objectFactory->NewScreen();

        // Set the project
        m_Screen->SetProject( project );

        m_Screen->SetName( fileName );

        m_Screen->SetLoaded( false );
        m_Screen->SetReadOnly( true );

        return true;
    }
}


//===========================================================================
// ScreenFile::Reload
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

bool ScreenFile::Reload()
{
    return Load( m_Project );
}


//===========================================================================
// ScreenFile::Save
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

bool ScreenFile::Save()
{
    if( m_Screen != NULL )
    {
        ScreenSaver saver;
        if( m_Screen->IsLoaded() && ( !m_Screen->IsReadOnly() ) )
        {
            if( !saver.Save( m_Screen ) )
            {
                return false;
            }
        }
        return m_Screen->SavePageFiles();
    }
    else
    {
        return false;
    }
}

//===========================================================================
// ScreenFile::GetScreen
//===========================================================================
// Description: This is used to get the loaded Screen.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      A pointer to the Screen or NULL if one is not loaded.
//
//===========================================================================
Screen* ScreenFile::GetScreen()
{
    return m_Screen;
}

//===========================================================================
// ScreenFile::GetScreen
//===========================================================================
// Description: This is used to get the loaded Screen.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      A const pointer to the Screen or NULL if one is not loaded.
//
//===========================================================================
const Screen* ScreenFile::GetScreen() const
{
    return m_Screen;
}

} // End NameSpace
