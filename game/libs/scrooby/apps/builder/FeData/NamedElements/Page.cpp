//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Page class.
//
// Authors:     Ryan Bedard, Eric Tong
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================
#include "Page.h"
#include "Project.h"
#include "..\DrawingContexts\DrawingContext.h"
#include "..\..\GUI\Undo\ActionManager.h"
#include "..\Helpers\OutputMessage.h"
#include "..\Helpers\ResourceManager.h"
#include "..\Resources\Image.h"
#include "..\Resources\MovieClip.h"
#include "..\Resources\Pure3dFile.h"
#include "..\Resources\TextBible.h"
#include "..\Resources\TextStyle.h"
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
// Page::Page
//===========================================================================
// Description: Page's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Page::Page() :
m_version(0),
m_resolutionWidth(0),
m_resolutionHeight(0),
m_loaded(true),
m_readOnly(false),
m_ResourceManager(),
m_ChangeNumber(0)
{
}


//===========================================================================
// Page::~Page
//===========================================================================
// Description: Page's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Page::~Page()
{
    // Remove the page from the Undo list
    g_ActionManager.ClearActionsOfPage( this );

    for( int i = 0; i < m_LayerList.GetNumberOfElements() ; i++ )
    {
        Layer* layer = m_LayerList.GetElement( i );

        if( layer != NULL )
        {
            delete layer;
            layer = NULL;
        }
    }
}


//===========================================================================
// Page::SetName
//===========================================================================
// Description: This is used to set the page's name.  It converts the 
//              file name into a usable name.
//
// Constraints:    The project must be set before this is called for it to work.
//              The extension should still be on the filename.
//
// Parameters:    pageFileName - the file name to use for setting.
//
// Return:      Nothing
//
//===========================================================================

void Page::SetName( PascalCString& pageFileName )
{
    Project* project = GetProject();
    if( project == NULL )
    {
        g_OutputMessage.Add( "Page::SetName: Project NULL!",
                             DebugOutputMessage );
        return;
    }

    // Find the file name without the project path
    PascalCString projectPathString = project->GetRootPath();
    projectPathString += project->GetPagePath();

    if( projectPathString.Length() >= pageFileName.Length() )
    {
        NamedElement::SetName( pageFileName );
//        g_OutputMessage.Add( "Page::SetName: Warning, page file name may to be corrupt!",
//                             WarningOutputMessage );
        return;
    }

    char* pageFileNameString = pageFileName;

    //strip off the extension of the filename
    PascalCString tempName( (char*)(pageFileNameString + projectPathString.Length()) ); 
    char* tempNamePtr = tempName;
//    for( int i = tempName.Length() - 1; i > 0; i-- )
//    {
//        if( tempNamePtr[i] == '.' )
//        {
//            tempNamePtr[i] = '\0';
//            break;
//        }
//    }

    PascalCString cleanName( tempNamePtr );

    NamedElement::SetName( cleanName );
}


//===========================================================================
// Page::GetNumberOfLayers
//===========================================================================
// Description: Return the number of layers
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      int - the number
//
//===========================================================================
int Page::GetNumberOfLayers() const
{
    return m_LayerList.GetNumberOfElements();
}

//===========================================================================
// Page::AddLayer
//===========================================================================
// Description: Add given layer to list
//
// Constraints:    None
//
// Parameters:    newLayer - the new layer to be added
//
// Return:      bool - whether action was successful
//
//===========================================================================
bool Page::AddLayer( Layer* newLayer )
{
    return m_LayerList.AddElementToFront( newLayer );
}


//===========================================================================
// Page::AddLayerAtIndex
//===========================================================================
// Description: Add a layer at the given index
//
// Constraints:    None
//
// Parameters:    newLayer - the new layer to be added
//              index - the index to add the layer at
//
// Return:      bool - whether action was successful
//
//===========================================================================

bool Page::AddLayerAtIndex( Layer* newLayer, int index )
{
    if( index > m_LayerList.GetNumberOfElements() )
    {
        index = m_LayerList.GetNumberOfElements();
    }

    return m_LayerList.AddElement( newLayer, index );
}


//===========================================================================
// Page::RemoveLayer
//===========================================================================
// Description: Removes the layer from list
//
// Constraints:    None
//
// Parameters:    index - the index in list
//
// Return:      bool - whether action was successful
//
//===========================================================================
bool Page::RemoveLayer( int index )
{
    Layer* layer = m_LayerList.GetElement( index );

    if( layer != NULL )
    {
        delete layer;
        layer = NULL;
    }

    return m_LayerList.RemoveElement( index );
}


//===========================================================================
// Page::RemoveLayerWithoutDelete
//===========================================================================
// Description: Removes the layer from list without deleting the layer
//
// Constraints:    None
//
// Parameters:    existingLayer - pointer to the layer to remove
//
// Return:      bool - whether action was successful
//
//===========================================================================
bool Page::RemoveLayerWithoutDelete( Layer* existingLayer )
{
    for( int i = 0; i < m_LayerList.GetNumberOfElements(); i++ )
    {
        if( existingLayer == m_LayerList.GetElement( i ) )
        {
            return m_LayerList.RemoveElement( i );
        }
    }

    return false;
}


//===========================================================================
// Page::GetLayer
//===========================================================================
// Description: Retrieve the layer from list
//
// Constraints:    None
//
// Parameters:    index - the index in list
//
// Return:      Layer* - pointer to layer
//
//===========================================================================
Layer* Page::GetLayer( int index )
{
    return m_LayerList.GetElement( index );
}

//===========================================================================
// Page::GetLayer
//===========================================================================
// Description: Retrieve the layer from list
//
// Constraints:    None
//
// Parameters:    index - the index in list
//
// Return:      Layer* - pointer to layer
//
//===========================================================================
const Layer* Page::GetLayer( int index ) const
{
    return m_LayerList.GetElement( index );
}

//===========================================================================
// Page::GetLayerIndex
//===========================================================================
// Description: Retrieve the index of a layer
//
// Constraints:    None
//
// Parameters:    existingLayer - layer to look for
//
// Return:      the index in list to the layer,
//              -1 if the layer could not be found
//
//===========================================================================
int Page::GetLayerIndex( Layer* existingLayer )
{
    for( int i = 0; i < m_LayerList.GetNumberOfElements(); i++ )
    {
        if( existingLayer == m_LayerList.GetElement( i ) )
        {
            return i;
        }
    }

    return -1;
}


//===========================================================================
// Page::Accessor methods
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
void Page::SetLoaded( bool loaded )
{
    m_loaded = loaded;
}

bool Page::IsLoaded() const
{
    return m_loaded;
}

void Page::SetReadOnly( bool readOnly )
{
    m_readOnly = readOnly;
}

bool Page::IsReadOnly() const
{
    return m_readOnly;
}

//===========================================================================
// Page::MakeChunk
//===========================================================================
// Description: creates a tlScroobyPageChunk
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      the chunk
//
//===========================================================================
tlDataChunk* Page::MakeChunk() const
{
    tlScroobyPageChunk* chunk = new tlScroobyPageChunk;
    chunk->SetName( this->GetName() );
    chunk->SetVersion( this->GetVersion() );
    chunk->SetResolutionX( this->GetResolutionWidth() );
    chunk->SetResolutionY( this->GetResolutionHeight() );

    //add the resource list
    ResourceManager* resMan = const_cast< ResourceManager* >( this->GetResourceManager() );
    //IAN IMPROVE: const cast! are you nuts!?

    // Save the image resources
    int i;
    int size = resMan->GetNumberOfImages();
    for( i = 0; i < size; i++ )
    {
        const Image* resource = resMan->GetImage( i );
        tlDataChunk* subChunk = resource->MakeChunk();
        assert( subChunk != NULL );
        chunk->AppendSubChunk( subChunk );
    }

    //Save the movie clips
    size = resMan->GetNumberOfMovieClips();
    for( i = 0; i < size; i++ )
    {
        const MovieClip* resource = resMan->GetMovieClip( i );
        tlDataChunk* subChunk = resource->MakeChunk();
        assert( subChunk != NULL );
        chunk->AppendSubChunk( subChunk );
    }

    //Save the pure3d files
    size = resMan->GetNumberOfPure3dFiles();
    for( i = 0; i < size; i++ )
    {
        const Pure3dFile* resource = resMan->GetPure3dFile( i );
        tlDataChunk* subChunk = resource->MakeChunk();
        assert( subChunk != NULL );
        chunk->AppendSubChunk( subChunk );
    }

    //Save the textbibles files
    size = resMan->GetNumberOfTextBibles();
    for( i = 0; i < size; i++ )
    {
#pragma message( "##### can I include the text bible inline?" )
        const TextBible* resource = resMan->GetTextBible( i );
        tlDataChunk* subChunk = resource->MakeChunk();
        assert( subChunk != NULL );
        chunk->AppendSubChunk( subChunk );
    }

    //Save the testStyles files
    size = resMan->GetNumberOfTextStyles();
    for( i = 0; i < size; i++ )
    {
        const TextStyle* textStyle = resMan->GetTextStyle( i );
        tlDataChunk* subChunk = textStyle->MakeChunk();
        assert( subChunk != NULL );
        chunk->AppendSubChunk( subChunk );
    }

    //iterate through all the layers
    size = this->GetNumberOfLayers();
    for( i = size - 1; i >= 0; i-- )
    {
        const Layer* theLayer = this->GetLayer( i );
        tlDataChunk* layerChunk = theLayer->MakeChunk();
        assert( layerChunk != NULL );
        chunk->AppendSubChunk( layerChunk );
    }
    return chunk;
}

//===========================================================================
// Page::Gets
//===========================================================================
// Description: The following functions are used to get the data members of
//              Page.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      The data member.
//
//===========================================================================

int Page::GetVersion() const
{
    return m_version;
}

int Page::GetResolutionWidth() const
{
    return m_resolutionWidth;
}

int Page::GetResolutionHeight() const
{
    return m_resolutionHeight;
}

//===========================================================================
// Page::GetResourceManager
//===========================================================================
// Description: Allows access to the resource manager
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      ResourcrManager* pointer to the resource manager
//
//===========================================================================
ResourceManager* Page::GetResourceManager()
{
    return &m_ResourceManager;
}

//===========================================================================
// Page::GetResourceManager
//===========================================================================
// Description: Allows const access to the resource manager
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      const ResourcrManager* pointer to the resource manager
//
//===========================================================================
const ResourceManager* Page::GetResourceManager() const
{
    return &m_ResourceManager;
}

//===========================================================================
// Page::Sets
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
void Page::SetVersion( int newVersion )
{
    m_version = newVersion;
}

void Page::SetResolutionWidth( int newWidth )
{
    m_resolutionWidth = newWidth;
}

void Page::SetResolutionHeight( int newHeight )
{
    m_resolutionHeight = newHeight;
}


//===========================================================================
// Page::Draw
//===========================================================================
// Description: This is used to draw the page.
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

bool Page::Draw( DrawingContext* theDrawingContext )
{
    // Draw all the layers in the reverse order
    for( int i = m_LayerList.GetNumberOfElements() - 1; i >= 0; i-- )
    {
        Layer* layer = m_LayerList.GetElement( i );

        if( !layer->Draw( theDrawingContext ) )
        {
           return false;
        }
    }

    return true;
}


//===========================================================================
// Page::GetDrawingElementUnderLocation
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

DrawingElement* Page::GetDrawingElementUnderLocation( int x, int y )
{
    if( m_readOnly )
    {
        return NULL;
    }

    // Search the layers in normal order
    for( int i = 0; i < m_LayerList.GetNumberOfElements(); i++ )
    {
        Layer* layer = m_LayerList.GetElement( i );

        DrawingElement* foundElement = layer->GetDrawingElementUnderLocation( x, y );
        if( foundElement != NULL )
        {
            return foundElement;
        }
    }

    return NULL;
}


//===========================================================================
// Page::GetOrder
//===========================================================================
// Description: This is used to determine if one drawing element is before 
//              another drawing element in the page.
//
// Constraints:    None
//
// Parameters:    first  - Element to check if it is first.
//              second - Element to check if it is second.
//
// Return:      A DrawingElementOrderEnum indicating the order of the drawing
//              elements.
//
//===========================================================================

DrawingElementOrderEnum Page::GetOrder( DrawingElement* first, DrawingElement* second )
{
    // Search the layers in normal order
    for( int i = 0; i < m_LayerList.GetNumberOfElements(); i++ )
    {
        Layer* layer = m_LayerList.GetElement( i );

        DrawingElementOrderEnum order = layer->GetOrder( first, second );
        if( order != DrawingElementNotFound )
        {
            return order;
        }
    }

    g_OutputMessage.Add( "Page::GetOrder: Cannot find DrawingElements!", 
                         DebugOutputMessage );
    return DrawingElementNotFound;
}


//===========================================================================
// Page::GetParent
//===========================================================================
// Description: This gets the parent of the given drawing element.
//
// Constraints:    None
//
// Parameters:    child - The drawing element to find the parent for.
//
// Return:      Pointer to the parent element,
//              or NULL if the child could not be found.
//
//===========================================================================

PageElement* Page::GetParent( DrawingElement* child )
{
    for( int i = 0; i < m_LayerList.GetNumberOfElements(); i++ )
    {
        Layer* layer = m_LayerList.GetElement( i );

        PageElement* parent = layer->GetParent( child );
        if( parent != NULL )
        {
           return parent;
        }
    }

    return NULL;
}

//===========================================================================
// Page::GetChangeNumber
//===========================================================================
// Description: This returns a number indicated the state of the page.  Each 
//              time a page element changes this number is increased.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      The change number
//
//===========================================================================

int Page::GetChangeNumber()
{
    return m_ChangeNumber;
}


//===========================================================================
// Page::IncrementChangeNumber
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

void Page::IncrementChangeNumber()
{
   m_ChangeNumber++;
}


} // End NameSpace
