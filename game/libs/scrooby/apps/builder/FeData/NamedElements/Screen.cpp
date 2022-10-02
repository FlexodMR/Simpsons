//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Screen class.
//
// Authors:     Ryan Bedard, Victor Medrano
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include <assert.h>
#include "..\..\GUI\Undo\ActionManager.h"
#include "..\Helpers\OutputMessage.h"
#include "..\Helpers\ResourceFileManager.h"
#include "Page.h"
#include "Project.h"
#include "..\ResourceFiles\PageFile.h"
#include "Screen.h"
#include <tlScroobyProjectChunk.hpp>

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
// Screen::Screen
//===========================================================================
// Description: Screen's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Screen::Screen() :
m_PageList(),
m_Version(0),
m_loaded(true),
m_readOnly(false)
{

}


//===========================================================================
// Screen::~Screen
//===========================================================================
// Description: NamedElement's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Screen::~Screen()
{
    // Remove the screen from the Undo list
    g_ActionManager.ClearActionsOfScreen( this );


    Project* project = GetProject();
    ResourceFileManager* resourceFileManager = project->GetResourceFileManager();

    // Delete all the file names
    for( int i = 0; i < m_PageList.GetNumberOfElements(); i++ )
    {
        PageStruct* pageStruct = m_PageList.GetElement( i );

        if( pageStruct != NULL )
        {
            // Release the page file.
            resourceFileManager->Release( (ResourceFile**)&(pageStruct->m_PageFile) );

            delete pageStruct;
            pageStruct = NULL;
        }
    }
}



//===========================================================================
// Screen::GetNumberOfPages
//===========================================================================
// Description: Gets the number of pages in the screen.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      int - number of pages
//
//===========================================================================

int Screen::GetNumberOfPages() const
{
    return m_PageList.GetNumberOfElements();
}


//===========================================================================
// Screen::AddPageFile
//===========================================================================
// Description: Adds a page file name to the list.
//
// Constraints:    None
//
// Parameters:    newFileName - reference to the new page file name
//                newExportValue - reference to new export value of page
//
// Return:      true - if file name is added
//
//===========================================================================

bool Screen::AddPageFile( PageFile* pageFile, bool newExportValue )
{
    // Make sure the pageFile is ok
    if( pageFile == NULL )
    {
        g_OutputMessage.Add( "Screen::AddPageFile: pageFile should not be NULL!",
                             DebugOutputMessage );
        return false;
    }

    // Make the Page Struct
    PageStruct* pageStruct = new PageStruct;
    if( pageStruct == NULL )
    {
        g_OutputMessage.Add( "Screen::AddPageFile: Out of memory!",
                             ErrorOutputMessage );
        return false;
    }

    pageStruct->m_PageFile = pageFile;
    pageStruct->m_ExportValue = newExportValue;

    return m_PageList.AddElementToFront( pageStruct );
}


//===========================================================================
// Screen::AddPageFileAtIndex
//===========================================================================
// Description: Adds a page file name to the list at the given index.
//
// Constraints:    None
//
// Parameters:    newFileName - reference to the new page file name
//                newExportValue - reference to new export value of page
//              index - index to add the page file
//
// Return:      true - if file name is added
//
//===========================================================================

bool Screen::AddPageFileAtIndex( PageFile* pageFile, bool newExportValue, int index )
{
    // Make sure the pageFile is ok
    if( pageFile == NULL )
    {
        g_OutputMessage.Add( "Screen::AddPageFileAtIndex: pageFile should not be NULL!",
                             DebugOutputMessage );
        return false;
    }

    // Make the Page Struct
    PageStruct* pageStruct = new PageStruct;
    if( pageStruct == NULL )
    {
        g_OutputMessage.Add( "Screen::AddPageFileAtIndex: Out of memory!",
                             ErrorOutputMessage );
        return false;
    }

    pageStruct->m_PageFile = pageFile;
    pageStruct->m_ExportValue = newExportValue;

    if( index > m_PageList.GetNumberOfElements() )
    {
        index = m_PageList.GetNumberOfElements();
    }

    return m_PageList.AddElement( pageStruct, index );
}


//===========================================================================
// Screen::DeletePageFile
//===========================================================================
// Description: Deletes the page file name at a given index.
//
// Constraints:    None
//
// Parameters:    index - index of page file name
//
// Return:      true - if the file name is removed successfully
//
//===========================================================================

bool Screen::DeletePageFile( int index )
{
    // Get the page
    PageStruct* pageStruct = m_PageList.GetElement( index );

    if( pageStruct != NULL )
    {
        // Release the page file.
        Project* project = GetProject();
        ResourceFileManager* resourceFileManager = project->GetResourceFileManager();
        resourceFileManager->Release( (ResourceFile**)&(pageStruct->m_PageFile) );

        delete pageStruct;
        pageStruct = NULL;
    }

    return m_PageList.RemoveElement( index );
}


//===========================================================================
// Screen::RemovePageFileWithoutRelease
//===========================================================================
// Description: Removes the page file without releasing the PageFile.
//
// Constraints:    None
//
// Parameters:    existingPageFile - index of page file name
//
// Return:      true - if the file name is removed successfully
//
//===========================================================================

bool Screen::RemovePageFileWithoutRelease( PageFile* existingPageFile )
{
    for( int i = 0; i < m_PageList.GetNumberOfElements(); i++ )
    {
        PageStruct* pageStruct = m_PageList.GetElement( i );

        if( pageStruct != NULL )
        {
            if( pageStruct->m_PageFile == existingPageFile )
            {
                delete pageStruct;
                pageStruct = NULL;

                return m_PageList.RemoveElement( i );
            }
        }
    }
    return false;
}


//===========================================================================
// Screen::GetPage (index)
//===========================================================================
// Description: Retrieves a page pointer.
//
// Constraints:    None
//
// Parameters:    index - index of page file name
//
// Return:      A pointer to a page or NULL if the page could not be found.
//
//===========================================================================
Page* Screen::GetPage( int index )
{
    // Get the page
    PageStruct* pageStruct = m_PageList.GetElement( index );

    if( (pageStruct == NULL) || (pageStruct->m_PageFile == NULL) )
    {
        return NULL;
    }
    else
    {
        return pageStruct->m_PageFile->GetPage();
    }
}

//===========================================================================
// Screen::GetPage (index)
//===========================================================================
// Description: Retrieves a page pointer.
//
// Constraints:    None
//
// Parameters:    index - index of page file name
//
// Return:      A pointer to a page or NULL if the page could not be found.
//
//===========================================================================
const Page* Screen::GetPage( int index ) const
{
    // Get the page
    PageStruct* pageStruct = m_PageList.GetElement( index );

    if( (pageStruct == NULL) || (pageStruct->m_PageFile == NULL) )
    {
        return NULL;
    }
    else
    {
        return pageStruct->m_PageFile->GetPage();
    }
}

//===========================================================================
// Screen::GetPage (name)
//===========================================================================
// Description: Retrieves a page pointer.
//
// Constraints:    None
//
// Parameters:    pageName - name of the page to look for
//
// Return:      A pointer to a page or NULL if the page could not be found.
//
//===========================================================================

Page* Screen::GetPage( const PascalCString& pageName )
{
    
    for( int i = 0; i < m_PageList.GetNumberOfElements(); i++ )
    {
        PageStruct* pageStruct = m_PageList.GetElement( i );

        if( (pageStruct == NULL) || (pageStruct->m_PageFile == NULL) )
        {
            return NULL;
        }
        else
        {   
            Page* page = pageStruct->m_PageFile->GetPage();
            if( page != NULL )
            {
                PascalCString temp( page->GetName() );
                if( temp == pageName )
                {
                    return page;
                }
            }
        }
    }

    // Did not find it.
    return NULL;
}


//===========================================================================
// Screen::GetPageFileFromPage
//===========================================================================
// Description: Retrieves a page file pointer from a page pointer
//
// Constraints:    None
//
// Parameters:    existingPage - the page to find the page file from
//
// Return:      A pointer to a page file or NULL if the page could not be found.
//
//===========================================================================

PageFile* Screen::GetPageFileFromPage( Page* existingPage )
{
    for( int i = 0; i < m_PageList.GetNumberOfElements(); i++ )
    {
        PageStruct* pageStruct = m_PageList.GetElement( i );

        if( (pageStruct == NULL) || (pageStruct->m_PageFile == NULL) )
        {
            return NULL;
        }
        else
        {   
            if( existingPage == pageStruct->m_PageFile->GetPage() )
            {
                return pageStruct->m_PageFile;
            }
        }
    }

    // Did not find it.
    return NULL;
}


//===========================================================================
// Screen::GetPageFileIndex
//===========================================================================
// Description: Retrieves the index for a page file.
//
// Constraints:    None
//
// Parameters:    existingPageFile - the page file to look for
//
// Return:      the index of the page file,
//              -1 if the page file cannot be found.
//
//===========================================================================

int Screen::GetPageFileIndex( PageFile* existingPageFile )
{
    for( int i = 0; i < m_PageList.GetNumberOfElements(); i++ )
    {
        PageStruct* pageStruct = m_PageList.GetElement( i );

        if( (pageStruct != NULL) && (pageStruct->m_PageFile == existingPageFile) )
        {
            return i;
        }
    }

    // Did not find it.
    return -1;
}


//===========================================================================
// Screen::GetPageIndex
//===========================================================================
// Description: Retrieves the index for a page.
//
// Constraints:    None
//
// Parameters:    existingPage - the page to look for
//
// Return:      the index of the page,
//              -1 if the page file cannot be found.
//
//===========================================================================

int Screen::GetPageIndex( Page* existingPage )
{
    for( int i = 0; i < m_PageList.GetNumberOfElements(); i++ )
    {
        PageStruct* pageStruct = m_PageList.GetElement( i );

        if( (pageStruct != NULL) && 
            (pageStruct->m_PageFile->GetPage() == existingPage) )
        {
            return i;
        }
    }

    // Did not find it.
    return -1;
}


//===========================================================================
// Screen::GetPageFileName
//===========================================================================
// Description: Gets the page file name at given index.
//
// Constraints:    None
//
// Parameters:    index - index in list
//              fileName - place to put the file name
//              exportFlag - place to put the export flag
//
// Return:      true  - if the file name was retieved fine,
//              false - otherwise
//
//===========================================================================

bool Screen::GetPageFileInfo( int index, FileName &fileName, bool &exportFlag )
{
    PageStruct* page = m_PageList.GetElement( index );
    
    if( page == NULL )
    {
        return false;
    }

    PageFile* pageFile = page->m_PageFile;

    if( pageFile == NULL )
    {
        return NULL;
    }

    Project* project = GetProject();

    exportFlag = page->m_ExportValue;

    // Find the file name without the project path
    FileName fullFileName = pageFile->GetFileName();
    PascalCString fullFileNameString;
    fullFileName.Get( fullFileNameString );
    fileName.Set( fullFileNameString );
    if( fullFileNameString.Length() == 0 )
    {
        assert( fullFileNameString.Length() != 0 );       //filename must not be blank
        return false;
    }
    else
    {
        return true;
    }
/*
    PascalCString projectPathString = project->GetRootPath();
    projectPathString += project->GetPagePath();

    int newLength = fullFileNameString.Length() - projectPathString.Length();
    if( newLength < 0 )
    {
        fileName = fullFileName;
        g_OutputMessage.Add( "Screen::GetPageFileInfo: Warning, page file name may to be corrupt!",
                             WarningOutputMessage );
        return true;
    }


    char* buffer = new char[ newLength + 1 ];

    int i;
    for( i = 0; i < newLength; i++ )
    {
        buffer[i] = fullFileNameString[ i + projectPathString.Length() ];
    }
    buffer[ newLength ] = '\0';

    PascalCString returnString( buffer );
    FileName returnFileName;
    returnFileName.Set( returnString );

    fileName = returnFileName;

    delete [] buffer;

    return true;
    */
}


//===========================================================================
// Screen::Accessor methods
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
void Screen::SetLoaded( bool loaded )
{
    m_loaded = loaded;
}

bool Screen::IsLoaded()
{
    return m_loaded;
}

void Screen::SetReadOnly( bool readOnly )
{
    m_readOnly = readOnly;
}

bool Screen::IsReadOnly()
{
    return m_readOnly;
}

//===========================================================================
// Screen::Gets
//===========================================================================
// Description: builds a tlDataChunk for saving this object
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      The tlDataChunk that has been build
//
//===========================================================================
tlDataChunk* Screen::MakeChunk() const
{
    tlScroobyScreenChunk* chunk = new tlScroobyScreenChunk;
    chunk->SetName( this->GetName() );
    chunk->SetVersion( this->GetVersion() );
    chunk->SetNumberOfPages( this->GetNumberOfPages() );

    char* pageNames[ 256 ];

    int size = this->GetNumberOfPages();
    int i;
    for( i = 0; i < size; i++ )
    {
        pageNames[ i ] = new char[ 256 ];
        const Page* thisPage = this->GetPage( size - i - 1 );
        strcpy( pageNames[ i ], thisPage->GetName() );
    }
    chunk->SetPageNames( pageNames, size );

    for( i = 0; i < size; i++ )
    {
        delete[] pageNames[ i ];
    }
    return chunk;
}

//===========================================================================
// Screen::Gets
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
int Screen::GetVersion() const
{
    return m_Version;
}

bool Screen::IsExportable( int index )
{
    PageStruct* page = m_PageList.GetElement( index );
    if( page == NULL )
    {
        return false;
    }

    return page->m_ExportValue;
}


//===========================================================================
// Screen::Sets
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

void Screen::SetVersion( int newVersion )
{
    m_Version = newVersion;
}


void Screen::SetExportable( int index, bool exportValue )
{
    PageStruct* page = m_PageList.GetElement( index );
    if( page != NULL )
    {
        page->m_ExportValue = exportValue;
    }
}


//===========================================================================
// Screen::Draw
//===========================================================================
// Description: This is used to draw the screen.
//
// Constraints:    None
//
// Parameters:    theDrawingContext - The drawing context used to draw the
//                                  elements.
//
// Return:      true  - if successful
//              false - otherwise.
//
//===========================================================================

bool Screen::Draw( DrawingContext* theDrawingContext )
{
    // Draw all the layers in the reverse order
    for( int i = m_PageList.GetNumberOfElements() - 1; i >= 0; i-- )
    {
        PageStruct* pageStruct = m_PageList.GetElement( i );
        Page* page = pageStruct->m_PageFile->GetPage();

        if( page != NULL )
        {
            if( !page->Draw( theDrawingContext ) )
            {
               return false;
            }
        }
    }

    return true;
}


//===========================================================================
// Screen::GetDrawingElementUnderLocation
//===========================================================================
// Description: This is used to find the first drawing element that is under
//              the given location.
//
// Constraints:    None
//
// Parameters:    x - x co-ordinate of the location.
//              y - y co-ordinate of the location.
//
// Return:      A pointer to the first found drawing element or NULL if no 
//              elements are under the location.
//
//===========================================================================

DrawingElement* Screen::GetDrawingElementUnderLocation( int x, int y )
{
    // Search the pages in normal order
    for( int i = 0; i < m_PageList.GetNumberOfElements(); i++ )
    {
        PageStruct* pageStruct = m_PageList.GetElement( i );
        Page* page = pageStruct->m_PageFile->GetPage();

        DrawingElement* foundElement = page->GetDrawingElementUnderLocation( x, y );

        if( foundElement != NULL )
        {
            return foundElement;
        }
    }

    return NULL;
}


//===========================================================================
// Screen::SavePageFiles
//===========================================================================
// Description: This is used to save all the pages in a screen.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      true  - if successful
//              false - otherwise.
//
//===========================================================================

bool Screen::SavePageFiles()
{
    // Save all the page files
    for( int i = 0; i < m_PageList.GetNumberOfElements(); i++ )
    {
        PageStruct* pageStruct = m_PageList.GetElement( i );

        if( !pageStruct->m_PageFile->Save() )
        {
           return false;
        }
    }

    return true;
}


//===========================================================================
// Screen::MovePage
//===========================================================================
// Description: This move a page to a different location in the screen
//
// Constraints:    None
//
// Parameters:    existingPage - page to move
//              moveToIndex - index of new location
//
// Return:      true  - if successful
//              false - otherwise.
//
//===========================================================================

bool Screen::MovePage( Page* existingPage, int moveToIndex )
{
    int oldIndex = GetPageIndex( existingPage );
    if( oldIndex < 0 )
    {
        return false;
    }

    return m_PageList.MoveElement( oldIndex, moveToIndex );
}


//===========================================================================
// Screen::GetChangeNumber
//===========================================================================
// Description: This returns a number indicated the state of the screen.
//              Each time a screen element changes this number is increased.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      The change number
//
//===========================================================================

int Screen::GetChangeNumber()
{
    int tempChangeNumber = 0;

    for( int i = 0; i < m_PageList.GetNumberOfElements(); i++ )
    {
        PageStruct* pageStruct = m_PageList.GetElement( i );
        Page* page = pageStruct->m_PageFile->GetPage();

        tempChangeNumber += page->GetChangeNumber();
    }

    return tempChangeNumber;
}


//===========================================================================
// Screen::IncrementChangeNumber
//===========================================================================
// Description: This increments the change number.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

void Screen::IncrementChangeNumber()
{
    for( int i = 0; i < m_PageList.GetNumberOfElements(); i++ )
    {
        PageStruct* pageStruct = m_PageList.GetElement( i );
        Page* page = pageStruct->m_PageFile->GetPage();
        page->IncrementChangeNumber();
    }
}


} // End NameSpace
