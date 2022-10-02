//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the PageFile class.
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
#include "..\Loaders\PageLoader.h"
#include "..\NamedElements\Page.h"
#include "..\NamedElements\Project.h"
#include "PageFile.h"
#include "..\Savers\PageSaver.h"
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
// PageFile::PageFile
//===========================================================================
// Description: PageFile's constructor
//
// Constraints:    None
//
// Parameters:    fileName - The name of the resource file.
//
// Return:      Nothing
//
//===========================================================================

PageFile::PageFile( FileName &fileName ) : 
ResourceFile( fileName ),
m_Page( NULL ),
m_Project( NULL )
{
}


//===========================================================================
// PageFile::~PageFile
//===========================================================================
// Description: PageFile's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

PageFile::~PageFile()
{
    if( m_Page != NULL )
    {
        delete m_Page;
        m_Page = NULL;
    }
}


//===========================================================================
// PageFile::Create
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

bool PageFile::Create( Project *project )
{
    PascalCString message( "Creating Page file: " );
    PascalCString fileName;
    m_FileName.Get( fileName );
    message += fileName;
    g_OutputMessage.Add( message );

    m_Project = project;

    if( m_Page != NULL )
    {
        delete m_Page;
        m_Page = NULL;
    }

    BaseFactory* objectFactory = project->GetObjectFactory();

    m_Page = objectFactory->NewPage();
    if( m_Page == NULL )
    {
        g_OutputMessage.Add( "PageFile::Create: Out of Memory!",
                              ErrorOutputMessage );
        return false;
    }

    m_Page->SetProject( project );

    PascalCString pageName;
    m_FileName.Get( pageName );
    m_Page->SetName( pageName );
    m_Page->SetResolutionWidth( project->GetResolutionWidth() );
    m_Page->SetResolutionHeight( project->GetResolutionHeight() );

    return Save();
}

//===========================================================================
// PageFile::Load
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

bool PageFile::Load( Project* project )
{
    m_FileLoaded = false;
    PascalCString message( "Loading page file: " );
    PascalCString fileName;
    m_FileName.Get( fileName );
    g_OutputMessage.Add( message );

    //change directory to the page directory
    project->GotoPageDirectory();
    m_Project = project;

    XMLTree fileTree;
    if( fileTree.LoadTreeFromFile( fileName, g_PageTag ) )
    {
        if( m_Page != NULL )
        {
            delete m_Page;
            m_Page = NULL;
        }

        PageLoader loader;

        m_Page = loader.Load( fileTree, project );
        if( m_Page == NULL )
        {
            g_OutputMessage.Add( "PageFile::Load: Could not load page file.",
                                 ErrorOutputMessage );
            return false;
        }
        else
        {
            project->GotoPageDirectory();
            m_Page->SetReadOnly( IsFileReadOnly( fileName ) );
            m_FileLoaded = true;
            return true;
        }
    }
    else
    {
        // Here we create a dummy page object with just the name,
        // and set it to read only
        if( m_Page != NULL )
        {
            delete m_Page;
            m_Page = NULL;
        }

        // Get the object factory
        BaseFactory* objectFactory = project->GetObjectFactory();

        // Create the new Page
        m_Page = objectFactory->NewPage();

        // Set the project
        m_Page->SetProject( project );

        m_Page->SetName( fileName );

        m_Page->SetLoaded( false );
        m_Page->SetReadOnly( true );

        return true;
    }
}


//===========================================================================
// PageFile::Reload
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

bool PageFile::Reload()
{
    return Load( m_Project );
}


//===========================================================================
// PageFile::Save
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

bool PageFile::Save()
{
    if( m_Page != NULL )
    {
        PageSaver saver;
        if( m_Page->IsLoaded() && ( !m_Page->IsReadOnly() ) )
        {
            return saver.Save( m_Page);
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
// PageFile::GetPage
//===========================================================================
// Description: This is used to get the loaded page.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      A pointer to the page or NULL if one is not loaded.
//
//===========================================================================

Page* PageFile::GetPage()
{
    return m_Page;
}


} // End NameSpace
