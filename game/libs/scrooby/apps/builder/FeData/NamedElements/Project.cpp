//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Project class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================
#include <assert.h>
#include <direct.h>
#include "..\Helpers\OutputMessage.h"
#include "Page.h"
#include "Project.h"
#include "../ResourceFiles/ScreenFile.h"
#include "Screen.h"
#include <set>
#include <tlDataChunk.hpp>
#include <tlScroobyProjectChunk.hpp>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

const char* const g_DefaultScreenPath   = "Screens\\";
const char* const g_DefaultPagePath     = "Pages\\";
const char* const g_DefaultResourcePath = "Resource\\";
static const unsigned long g_ChunkFileVersion = 1;

//===========================================================================
// Member Functions
//===========================================================================

namespace FeData
{

//===========================================================================
// Project::Project
//===========================================================================
// Description: Project's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Project::Project() :
m_FileNameList(),
m_Version( 0 ),
m_ResolutionWidth( 0 ),
m_ResolutionHeight( 0 ),
m_loaded(true),
m_readOnly(false),
m_RootPath( "" ),
m_Platform( "" ),
m_ScreenPath( g_DefaultScreenPath ),
m_PagePath( g_DefaultPagePath ),
m_ResourcePath( g_DefaultResourcePath ),
m_ObjectFactory( NULL ),
m_ResourceFileManager()
{

}


//===========================================================================
// Project::~Project
//===========================================================================
// Description: Project's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Project::~Project()
{
    // Delete all the file names
    for( int i = 0; i < m_FileNameList.GetNumberOfElements(); i++ )
    {
        FileName* fileName = m_FileNameList.GetElement( i );

        if( fileName != NULL )
        {
            delete fileName;
            fileName = NULL;
        }
    }
}


//===========================================================================
// Project::GetNumberOfScreens
//===========================================================================
// Description: Return number of screens
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

int Project::GetNumberOfScreens() const
{
    return m_FileNameList.GetNumberOfElements();
}


//===========================================================================
// Project::GetScreenFileName
//===========================================================================
// Description: Returns screen file name
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

bool Project::GetScreenFileName( int index, FileName &theFileName ) const
{
    FileName* fileName = m_FileNameList.GetElement( index );

    if( fileName == NULL )
    {
        return false;
    }

    theFileName = *fileName;
    return true;
}


//===========================================================================
// Project::AddScreenFileName
//===========================================================================
// Description: Add screen to project
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      true  - if the file was added,
//              false - otherwise.
//
//===========================================================================

bool Project::AddScreenFileName( FileName& newFileName )
{
    // Make sure the screen is not already in the project
    for( int i = 0; i < m_FileNameList.GetNumberOfElements(); i++ )
    {
        FileName* fileName = m_FileNameList.GetElement(i);
        if( (*fileName) == newFileName )
        {
            return false;
        }
    }

    // Add the screen    
    FileName* fileName = new FileName( newFileName );
    if( fileName == NULL )
    {
        g_OutputMessage.Add( "Project::AddScreenFileName: Out of Memory!",
                             ErrorOutputMessage );
        return false;
    }
    return m_FileNameList.AddElementToBack( fileName );
}


//===========================================================================
// Project::DeleteScreenFileName
//===========================================================================
// Description: Remove screen filename
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

bool Project::DeleteScreenFileName( int index )
{
    FileName* fileName = m_FileNameList.GetElement( index );

    if( fileName != NULL )
    {
        delete fileName;
        fileName = NULL;
    }

    return m_FileNameList.RemoveElement( index );
}


//===========================================================================
// Project::Accessor methods
//===========================================================================
// Description: None
//
// Constraints:    None
//
// Parameters:    N/A
//
// Return:      N/A
//
//===========================================================================
void Project::SetLoaded( bool loaded )
{
    m_loaded = loaded;
}

bool Project::IsLoaded()
{
    return m_loaded;
}

void Project::SetReadOnly( bool readOnly )
{
    m_readOnly = readOnly;
}

bool Project::IsReadOnly()
{
    return m_readOnly;
}

//===========================================================================
// Project::MakeChunk
//===========================================================================
// Description: makes a tlDataChunk out of the project
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      The tlDataChunk
//
//===========================================================================
tlDataChunk* Project::MakeChunk() const
{
    tlScroobyProjectChunk* chunk = new tlScroobyProjectChunk;
    chunk->SetName( this->GetName() );
    chunk->SetVersion( g_ChunkFileVersion );
    chunk->SetResolutionX( this->GetResolutionWidth() );
    chunk->SetResolutionY( this->GetResolutionHeight() );
    chunk->SetPlatform( this->GetPlatform() );
    chunk->SetScreenPath( this->GetScreenPath() );
    chunk->SetResourcePath( this->GetResourcePath() );
    chunk->SetPagePath( this->GetPagePath() );

    //get all the screens for export
    int screenCount = this->GetNumberOfScreens();
    std::vector< const Screen* > screens;
    int i;
    for( i = 0; i < screenCount; i++ )
    {
        //  
        // Get the filename. ( e.g. "Screen1.scr" )
        //
        FileName screenFileName;
        GetScreenFileName( i, screenFileName );
      
        PascalCString screenFileNameString;
        screenFileName.Get( screenFileNameString );

        //
        // Generate the full path and filename. 
        // (e.g. "C:\FeProject\Screens\Screen1.scr" )
        //
        PascalCString fullPath( GetRootPath() ) ;
        fullPath += GetScreenPath();
        fullPath += screenFileNameString;

        FileName tempFileName;
        tempFileName.Set( fullPath );

        //
        // Load the screen file so we can get access to the pages.
        //
        const ResourceFileManager* resFileMan = GetResourceFileManager();
        const ScreenFile* pScreenFile = resFileMan->GetScreenFile( tempFileName, this );
        const Screen* pScreen = pScreenFile->GetScreen();
        screens.push_back( pScreen );
    }

    //get all the pages for export
    std::set< const Page* > pages;
    for( i = 0; i < screenCount; i++ )
    {
        const Screen* screen = screens[ i ];
        int numberOfPages = screen->GetNumberOfPages();
        int p;
        for( p = 0; p < numberOfPages; p++ )
        {
            const Page* page = screen->GetPage( p );
            pages.insert( page );
        }
    }

    //add subchunks for all the pages
    std::set< const Page* >::iterator pIt;
    for( pIt = pages.begin(); pIt != pages.end(); pIt++ )
    {
        const Page* page = *pIt;
        tlDataChunk* pageChunk = page->MakeChunk();
        chunk->AppendSubChunk( pageChunk );
    }

    //add subchunks for all the screens
    int size = screens.size();
    for( i = 0; i < size; ++i )
    {
        const Screen* screen = screens[ i ];
        tlDataChunk* screenChunk = screen->MakeChunk();
        chunk->AppendSubChunk( screenChunk );
    }

    return chunk;
}

//===========================================================================
// Project::Gets
//===========================================================================
// Description: The following functions are used to get the data members of
//              project.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      The data member.
//
//===========================================================================

PascalCString Project::GetRootPath() const
{
    return m_RootPath;
}

int Project::GetVersion()
{
    return m_Version;
}

//===========================================================================
// Project::GotoPageDirectory
//===========================================================================
// Description: changes the current path to the page file directory
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      None
//
//===========================================================================
void Project::GotoPageDirectory() const
{
    int result;
    result = ::chdir( this->GetRootPath() );
    assert( result == 0 );
    result = ::chdir( this->GetPagePath() );
    assert( result == 0 );
}

//===========================================================================
// Project::GotoResourceDirectory
//===========================================================================
// Description: changes the current path to the resource file directory
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      None
//
//===========================================================================
void Project::GotoResourceDirectory() const
{
    int result;
    result = ::chdir( this->GetRootPath() );
    assert( result == 0 );
    result = ::chdir( this->GetResourcePath() );
    assert( result == 0 );
}

//===========================================================================
// Project::GotoRootDirectory
//===========================================================================
// Description: changes the current path to the root project directory
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      None
//
//===========================================================================
void Project::GotoRootDirectory() const
{
    int result;
    result = ::chdir( this->GetRootPath() );
    assert( result == 0 );
}

//===========================================================================
// Project::GotoScreenDirectory
//===========================================================================
// Description: changes the current path to the screen file directory
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      None
//
//===========================================================================
void Project::GotoScreenDirectory() const
{
    int result;
    result = ::chdir( this->GetRootPath() );
    assert( result == 0 );
    result = ::chdir( this->GetScreenPath() );
    assert( result == 0 );
}

int Project::GetResolutionWidth() const
{
    return m_ResolutionWidth;
}

int Project::GetResolutionHeight() const
{
    return m_ResolutionHeight;
}

PascalCString Project::GetPlatform() const
{
    return m_Platform;
}

PascalCString Project::GetScreenPath() const
{
    return m_ScreenPath;
}

PascalCString Project::GetPagePath() const
{
    return m_PagePath;
}

PascalCString Project::GetResourcePath() const
{
    return m_ResourcePath;
}

//===========================================================================
// Project::GetObjectFactory
//===========================================================================
// Description: allows access to the object factory
//
// Constraints:    None
//
// Parameters:    None.
//
// Return:      BaseFactory* the object we wanted to get
//
//===========================================================================
BaseFactory* Project::GetObjectFactory()
{
    return m_ObjectFactory;
}

//===========================================================================
// Project::GetObjectFactory
//===========================================================================
// Description: allows const access to the object factory
//
// Constraints:    None
//
// Parameters:    None.
//
// Return:      BaseFactory* the object we wanted to get
//
//===========================================================================
const BaseFactory* Project::GetObjectFactory() const
{
    return m_ObjectFactory;
}

//===========================================================================
// Project::GetResourceFileManager
//===========================================================================
// Description: allows access to the resource file manager.
//
// Constraints:    None
//
// Parameters:    None.
//
// Return:      ResourceFileManager* the object we wanted to get
//
//===========================================================================
ResourceFileManager* Project::GetResourceFileManager()
{
    return &m_ResourceFileManager;
}

//===========================================================================
// Project::GetResourceFileManager
//===========================================================================
// Description: allows const access to the resource file manager.
//
// Constraints:    None
//
// Parameters:    None.
//
// Return:      const ResourceFileManager* the object we wanted to get
//
//===========================================================================
const ResourceFileManager* Project::GetResourceFileManager() const
{
    return &m_ResourceFileManager;
}

//===========================================================================
// Project::Sets
//===========================================================================
// Description: The following functions are used to set the data members of
//              project.
//
// Constraints:    None
//
// Parameters:    The value the data member should be set to.
//
// Return:      Nothing
//
//===========================================================================
void Project::SetRootPath( PascalCString &newRootPath )
{
    m_RootPath = newRootPath;
    m_RootPath.Replace( g_BadSlashString, g_GoodSlashString );
}

void Project::SetVersion( int newVersion )
{
    m_Version = newVersion;
}

void Project::SetResolutionWidth( int newWidth )
{
    m_ResolutionWidth = newWidth;
}

void Project::SetResolutionHeight( int newHeight )
{
    m_ResolutionHeight = newHeight;
}


void Project::SetPlatform( PascalCString &newPlatform )
{
    m_Platform = newPlatform;
}


void Project::SetScreenPath( PascalCString &newPath )
{
    m_ScreenPath = newPath;
    m_ScreenPath.Replace( g_BadSlashString, g_GoodSlashString );
}

void Project::SetPagePath( PascalCString &newPath )
{
    m_PagePath = newPath;
    m_PagePath.Replace( g_BadSlashString, g_GoodSlashString );
}

void Project::SetResourcePath( PascalCString &newPath )
{
    m_ResourcePath = newPath;
    m_ResourcePath.Replace( g_BadSlashString, g_GoodSlashString );
}


void Project::SetObjectFactory( BaseFactory* objectFactory )
{
    m_ObjectFactory = objectFactory;
}


} // End NameSpace
