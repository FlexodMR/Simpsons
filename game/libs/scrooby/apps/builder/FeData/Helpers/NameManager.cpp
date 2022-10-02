//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder GUI
//
// Description: This contains the NameManager class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "NameManager.h"

#include "..\Helpers\OutputMessage.h"
#include "..\Helpers\ResourceManager.h"

#include "..\NamedElements\Group.h"
#include "..\NamedElements\Layer.h"
#include "..\NamedElements\Movie.h"
#include "..\NamedElements\MultiSprite.h"
#include "..\NamedElements\MultiText.h"
#include "..\NamedElements\Page.h"
#include "..\NamedElements\PageElement.h"
#include "..\NamedElements\Pure3dObject.h"
#include "..\NamedElements\Polygon.h"
#include "..\NamedElements\Screen.h"
#include "..\NamedElements\Sprite.h"
#include "..\NamedElements\Text.h"


#include "..\Resources\Resource.h"
#include "..\Resources\Image.h"
#include "..\Resources\Pure3dFile.h"
#include "..\Resources\TextBible.h"
#include "..\Resources\TextStyle.h"

#include "Strings\PCString.h"


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
// NameManager::NameManager
//===========================================================================
// Description: NameManager's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

NameManager::NameManager()
{
}


//===========================================================================
// NameManager::~NameManager
//===========================================================================
// Description: NameManager's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

NameManager::~NameManager()
{
}


//===========================================================================
// NameManager::GetDrawingElementsType
//===========================================================================
// Description: This returns the type of a drawing element.
//
// Constraints:    None
//
// Parameters:    drawingElement - the drawing element to find the type for.
//
// Return:      The type of the drawing element.
//
//===========================================================================

DrawingElementsEnum NameManager::GetDrawingElementsType( DrawingElement* drawingElement )
{
    // NULL is bad
    if( drawingElement == NULL )
    {
        return DRAWING_ELEMENT_INVALID;
    }

    // Is it a BoxDrawingElement
    if( dynamic_cast< BoxDrawingElement* >( drawingElement ) != NULL )
    {
        // Is it in the Sprite family
        if( dynamic_cast< MultiSprite* >( drawingElement ) != NULL )
        {
            // Is it a Sprite
            if( dynamic_cast< Sprite* >( drawingElement ) != NULL )
            {
                return DRAWING_ELEMENT_SPRITE;
            }
            else
            {
                return DRAWING_ELEMENT_MULTI_SPRITE;
            }
        }

        // Is it in the Text family
        else if( dynamic_cast< MultiText* >( drawingElement) != NULL )
        {
            // Is it a Text
            if( dynamic_cast< Text* >( drawingElement ) != NULL )
            {
                return DRAWING_ELEMENT_TEXT;
            }
            else
            {
                return DRAWING_ELEMENT_MULTI_TEXT;
            }
        }

        // Is it in the Movie family
        else if( dynamic_cast< Movie* >( drawingElement ) != NULL )
        {
            return DRAWING_ELEMENT_MOVIE;
        }

        // Is it in the Movie family
        else if( dynamic_cast< Pure3dObject* >( drawingElement ) != NULL )
        {
            return DRAWING_ELEMENT_PURE3DOBJECT;
        }
    }
    // It is not a BoxDrawingElement
    else
    {
        if( dynamic_cast<Group*>( drawingElement ) != NULL )
        {
            return DRAWING_ELEMENT_GROUP;
        }
        else if( dynamic_cast<Polygon*>( drawingElement ) != NULL )
        {
            return DRAWING_ELEMENT_POLYGON;
        }
    }    

    // Not a valid type so return Invalid
    return DRAWING_ELEMENT_INVALID;
}


//===========================================================================
// NameManager::GenerateUniqueLayerName
//===========================================================================
// Description: This is used to generate a unique layer name.
//
// Constraints:    None
//
// Parameters:    string - place to put the name
//              page - page to create the name for
//
// Return:      True  - if the a name was generated,
//              false - otherwise.
//
//===========================================================================
bool NameManager::GenerateUniqueLayerName( PascalCString& string, Page* page )
{
    if( page == NULL )
    {
        return false;
    }
   
    char buffer[80];
    int count = 1;
    do
    {
        sprintf( buffer, "Layer %d", count );
        string = buffer;
        count++;
    } 
    while( !IsLayerNameUnique( string, page ) );
    return true;
}

//===========================================================================
// NameManager::GenerateUniqueMovieName
//===========================================================================
// Description: This is used to generate a unique movie name.
//
// Constraints:    None
//
// Parameters:    string - place to put the name
//              page - page to create the name for
//
// Return:      True  - if the a name was generated,
//              false - otherwise.
//
//===========================================================================
bool NameManager::GenerateUniqueMovieName( PascalCString& string, Page* page )
{
    if( page == NULL )
    {
        return false;
    }
   
    char buffer[80];
    int count = 1;
    do
    {
        sprintf( buffer, "Movie %d", count );
        string = buffer;
        count++;
    } 
    while( !IsDrawingElementNameUniqueInPage( DRAWING_ELEMENT_MOVIE, string, page ) );
    return true;
}

//===========================================================================
// NameManager::GenerateUniquePure3dObjectName
//===========================================================================
// Description: This is used to generate a unique pure3d object name.
//
// Constraints:    None
//
// Parameters:    string - place to put the name
//              page - page to create the name for
//
// Return:      True  - if the a name was generated,
//              false - otherwise.
//
//===========================================================================
bool NameManager::GenerateUniquePure3dObjectName( PascalCString& string, Page* page )
{
    if( page == NULL )
    {
        return false;
    }
   
    char buffer[80];
    int count = 1;
    do
    {
        sprintf( buffer, "Pure3d %d", count );
        string = buffer;
        count++;
    } 
    while( !IsDrawingElementNameUniqueInPage( DRAWING_ELEMENT_PURE3DOBJECT, string, page ) );
    return true;
}



//===========================================================================
// NameManager::GenerateUniqueGroupName
//===========================================================================
// Description: This is used to generate a unique group name.
//
// Constraints:    None
//
// Parameters:    string - place to put the name
//              page - page to create the name for
//
// Return:      True  - if the a name was generated,
//              false - otherwise.
//
//===========================================================================

bool NameManager::GenerateUniqueGroupName( PascalCString& string, Page* page )
{
    if( page == NULL )
    {
        return false;
    }
   
    char buffer[80];
    int count = 1;
    do
    {
        sprintf( buffer, "Group %d", count );
        string = buffer;
        count++;
    } 
    while( !IsDrawingElementNameUniqueInPage( DRAWING_ELEMENT_GROUP, string, page ) );
    return true;
}


//===========================================================================
// NameManager::GenerateUniqueSpriteName
//===========================================================================
// Description: This is used to generate a unique sprite name.
//
// Constraints:    None
//
// Parameters:    string - place to put the name
//              page - page to create the name for
//
// Return:      True  - if the a name was generated,
//              false - otherwise.
//
//===========================================================================

bool NameManager::GenerateUniqueSpriteName( PascalCString& string, Page* page )
{
    if( page == NULL )
    {
        return false;
    }
   
    char buffer[80];
    int count = 1;
    do
    {
        sprintf( buffer, "Sprite %d", count );
        string = buffer;
        count++;
    } 
    while( !IsDrawingElementNameUniqueInPage( DRAWING_ELEMENT_SPRITE, string, page ) );
    return true;
}


//===========================================================================
// NameManager::GenerateUniqueMultiSpriteName
//===========================================================================
// Description: This is used to generate a unique multi sprite name.
//
// Constraints:    None
//
// Parameters:    string - place to put the name
//              page - page to create the name for
//
// Return:      True  - if the a name was generated,
//              false - otherwise.
//
//===========================================================================

bool NameManager::GenerateUniqueMultiSpriteName( PascalCString& string, Page* page )
{
    if( page == NULL )
    {
        return false;
    }
   
    char buffer[80];
    int count = 1;
    do
    {
        sprintf( buffer, "MultiSprite %d", count );
        string = buffer;
        count++;
    } 
    while( !IsDrawingElementNameUniqueInPage( DRAWING_ELEMENT_MULTI_SPRITE, string, page ) );
    return true;
}


//===========================================================================
// NameManager::GenerateUniqueTextName
//===========================================================================
// Description: This is used to generate a unique text name.
//
// Constraints:    None
//
// Parameters:    string - place to put the name
//              page - page to create the name for
//
// Return:      True  - if the a name was generated,
//              false - otherwise.
//
//===========================================================================

bool NameManager::GenerateUniqueTextName( PascalCString& string, Page* page )
{
    if( page == NULL )
    {
        return false;
    }
   
    char buffer[80];
    int count = 1;
    do
    {
        sprintf( buffer, "Text %d", count );
        string = buffer;
        count++;
    } 
    while( !IsDrawingElementNameUniqueInPage( DRAWING_ELEMENT_TEXT, string, page ) );
    return true;
}


//===========================================================================
// NameManager::GenerateUniqueMultiTextName
//===========================================================================
// Description: This is used to generate a unique multi text name.
//
// Constraints:    None
//
// Parameters:    string - place to put the name
//              page - page to create the name for
//
// Return:      True  - if the a name was generated,
//              false - otherwise.
//
//===========================================================================

bool NameManager::GenerateUniqueMultiTextName( PascalCString& string, Page* page )
{
    if( page == NULL )
    {
        return false;
    }
   
    char buffer[80];
    int count = 1;
    do
    {
        sprintf( buffer, "MultiText %d", count );
        string = buffer;
        count++;
    } 
    while( !IsDrawingElementNameUniqueInPage( DRAWING_ELEMENT_MULTI_TEXT, string, page ) );
    return true;
}


//===========================================================================
// NameManager::GenerateUniquePolygonName
//===========================================================================
// Description: This is used to generate a unique polygon name.
//
// Constraints:    None
//
// Parameters:    string - place to put the name
//              page - page to create the name for
//
// Return:      True  - if the a name was generated,
//              false - otherwise.
//
//===========================================================================

bool NameManager::GenerateUniquePolygonName( PascalCString& string, Page* page )
{
    if( page == NULL )
    {
        return false;
    }
   
    char buffer[80];
    int count = 1;
    do
    {
        sprintf( buffer, "Polygon %d", count );
        string = buffer;
        count++;
    } 
    while( !IsDrawingElementNameUniqueInPage( DRAWING_ELEMENT_POLYGON, string, page ) );
    return true;
}


//===========================================================================
// NameManager::MakeSureImageNameIsUnique
//===========================================================================
// Description: This is used to make sure the Image name is unique.
//
// Constraints:    None
//
// Parameters:    string - place to put the name
//              page - page to create the name for
//
// Return:      True  - if the a name was generated,
//              false - otherwise.
//
//===========================================================================

bool NameManager::MakeSureImageNameIsUnique( PascalCString& string, Page* page )
{
    if( page == NULL )
    {
        return false;
    }
    
    ResourceManager* resMan = page->GetResourceManager();
    if( resMan == NULL )
    {
        g_OutputMessage.Add( "NameManager::MakeSureImageNameIsUnique: Cannot get ResourceManager!",
                             DebugOutputMessage );
        return false;
    }

    PascalCString tryString = string;
    char buffer[80];
    int count = 2;

    while( resMan->GetImageWithoutCounting( tryString ) != NULL )
    {
        sprintf( buffer, " %d", count );
        tryString = string;
        tryString += buffer;
        count++;
    } 

    string = tryString;
    return true;
}

//===========================================================================
// NameManager::MakeSureMovieClipNameIsUnique
//===========================================================================
// Description: This is used to make sure the MovieClip name is unique.
//
// Constraints:    None
//
// Parameters:    string - place to put the name
//              page - page to create the name for
//
// Return:      True  - if the a name was generated,
//              false - otherwise.
//
//===========================================================================
bool NameManager::MakeSureMovieClipNameIsUnique( PascalCString& string, Page* page )
{
    if( page == NULL )
    {
        return false;
    }
    
    ResourceManager* resMan = page->GetResourceManager();
    if( resMan == NULL )
    {
        g_OutputMessage.Add( "NameManager::MakeSureMovieClipNameIsUnique: Cannot get ResourceManager!",
                             DebugOutputMessage );
        return false;
    }

    PascalCString tryString = string;
    char buffer[80];
    int count = 2;

    while( resMan->GetMovieClipWithoutCounting( tryString ) != NULL )
    {
        sprintf( buffer, " %d", count );
        tryString = string;
        tryString += buffer;
        count++;
    } 

    string = tryString;
    return true;
}

//===========================================================================
// NameManager::MakeSurePure3dFileNameIsUnique
//===========================================================================
// Description: This is used to make sure the Pure3DFile name is unique.
//
// Constraints:    None
//
// Parameters:    string - place to put the name
//              page - page to create the name for
//
// Return:      True  - if the a name was generated,
//              false - otherwise.
//
//===========================================================================
bool NameManager::MakeSurePure3dFileNameIsUnique( PascalCString& string, Page* page )
{
    if( page == NULL )
    {
        return false;
    }
    
    ResourceManager* resMan = page->GetResourceManager();
    if( resMan == NULL )
    {
        g_OutputMessage.Add( "NameManager::MakeSurePure3dFileNameIsUnique: Cannot get ResourceManager!",
                             DebugOutputMessage );
        return false;
    }

    PascalCString tryString = string;
    char buffer[80];
    int count = 2;

    while( resMan->GetPure3dFileWithoutCounting( tryString ) != NULL )
    {
        sprintf( buffer, " %d", count );
        tryString = string;
        tryString += buffer;
        count++;
    } 

    string = tryString;
    return true;
}

//===========================================================================
// NameManager::MakeSureTextBibleNameIsUnique
//===========================================================================
// Description: This is used to make sure the TextBible name is unique.
//
// Constraints:    None
//
// Parameters:    string - place to put the name
//              page - page to create the name for
//
// Return:      True  - if the a name was generated,
//              false - otherwise.
//
//===========================================================================

bool NameManager::MakeSureTextBibleNameIsUnique( PascalCString& string, Page* page )
{
    if( page == NULL )
    {
        return false;
    }
    
    ResourceManager* resMan = page->GetResourceManager();
    if( resMan == NULL )
    {
        g_OutputMessage.Add( "NameManager::MakeSureImageNameIsUnique: Cannot get ResourceManager!",
                             DebugOutputMessage );
        return false;
    }

    PascalCString tryString = string;
    char buffer[80];
    int count = 2;

    while( resMan->GetTextBibleWithoutCounting( tryString ) != NULL )
    {
        sprintf( buffer, " %d", count );
        tryString = string;
        tryString += buffer;
        count++;
    } 

    string = tryString;
    return true;
}


//===========================================================================
// NameManager::MakeSureTextStyleNameIsUnique
//===========================================================================
// Description: This is used to make sure the TextStyle name is unique.
//
// Constraints:    None
//
// Parameters:    string - place to put the name
//              page - page to create the name for
//
// Return:      True  - if the a name was generated,
//              false - otherwise.
//
//===========================================================================

bool NameManager::MakeSureTextStyleNameIsUnique( PascalCString& string, Page* page )
{
    if( page == NULL )
    {
        return false;
    }
    
    ResourceManager* resMan = page->GetResourceManager();
    if( resMan == NULL )
    {
        g_OutputMessage.Add( "NameManager::MakeSureImageNameIsUnique: Cannot get ResourceManager!",
                             DebugOutputMessage );
        return false;
    }

    PascalCString tryString = string;
    char buffer[80];
    int count = 2;

    while( resMan->GetTextStyleWithoutCounting( tryString ) != NULL )
    {
        sprintf( buffer, " %d", count );
        tryString = string;
        tryString += buffer;
        count++;
    } 

    string = tryString;
    return true;
}


//===========================================================================
// NameManager::GenerateUniqueDrawingElementCopyName
//===========================================================================
// Description: This is used to generate a unique copy drawing element name.
//
// Constraints:    None
//
// Parameters:  elementToCopy - the element to copy the name from
//              string - place to put the name
//              page - page to create the name for
//
// Return:      True  - if the a name was generated,
//              false - otherwise.
//
//===========================================================================

bool NameManager::GenerateUniqueDrawingElementCopyName( DrawingElement* elementToCopy,
                                                        PascalCString& string,
                                                        Page* page )
{
    if( (page == NULL) || (elementToCopy == NULL) )
    {
        return false;
    }

    DrawingElementsEnum type = GetDrawingElementsType( elementToCopy );

    char buffer[80];
    int count = 1;
    do
    {
        sprintf( buffer, "%s Copy %d", elementToCopy->GetName(), count );
        string = buffer;
        count++;
    } 
    while( !IsDrawingElementNameUniqueInPage( type, string, page ) );
    return true;
}



//===========================================================================
// NameManager::IsPageElementNameUnique
//===========================================================================
// Description: This checks to see if a name is in use in a page.
//
// Constraints:    None
//
// Parameters:    layerName - name to try
//              page - page to look in
//
// Return:      True  - if the name is not used,
//              false - if the name is used.
//
//===========================================================================

bool NameManager::IsPageElementNameUnique( PageElement* elementType, 
                                           PascalCString& name )
{
    Page* page = elementType->GetPage();
    if( page == NULL )
    {
        return false;
    }
     
    // Do we have a layer
    Layer* layer = dynamic_cast<Layer*>( elementType );
    if( layer != NULL )
    {
        return IsLayerNameUnique( name, page );
    }

    // Do we have a drawing elmement
    DrawingElement* drawingElement = dynamic_cast<DrawingElement*>( elementType );
    if( drawingElement == NULL )
    {
        return false;
    }

    // What kind of drawing element do we have?
    DrawingElementsEnum drawingElementType = GetDrawingElementsType( drawingElement );
    if( drawingElementType != DRAWING_ELEMENT_INVALID )
    {
        return IsDrawingElementNameUniqueInPage( drawingElementType, name, page );
    }

    return false;
}



//===========================================================================
// NameManager::IsPageNameUnique
//===========================================================================
// Description: This checks to see if a page name unique in a screen.
//
// Constraints:    None
//
// Parameters:    name - name to try
//              screen - screen to look in
//
// Return:      True  - if the name is unique,
//              false - if the name is used.
//
//===========================================================================

bool NameManager::IsPageNameUnique( PascalCString& name, Screen* screen )
{
    for( int i = 0; i < screen->GetNumberOfPages(); i++ )
    {
        Page* page = screen->GetPage( i );
        if( page != NULL )
        {
            PascalCString existingName( page->GetName() );
            if( existingName.EqualsInsensitive( name ) ) 
            {
                return false;
            }
        }
    }
    return true;
}


//===========================================================================
// NameManager::IsResourceNameUnique
//===========================================================================
// Description: This checks to see if a resource name unique in a page.
//
// Constraints:    None
//
// Parameters:    resourceType - this indicates the type of resource
//              name - name to try
//              page - page to look in
//
// Return:      True  - if the name is unique,
//              false - if the name is used.
//
//===========================================================================
bool NameManager::IsResourceNameUnique( Resource* resourceType, 
                                        PascalCString& name,
                                        Page* page )
{
    ResourceManager* resMan = page->GetResourceManager();
    if( resMan == NULL )
    {
        g_OutputMessage.Add( "NameManager::IsResourceNameUnique: Cannot get ResourceManager!",
                             DebugOutputMessage );
        return false;
    }

    if( dynamic_cast< Image* >( resourceType ) != NULL )
    {
        return( resMan->GetImageWithoutCounting( name ) == NULL );
    }

    if( dynamic_cast< Pure3dFile* >( resourceType ) != NULL )
    {
        return( resMan->GetPure3dFileWithoutCounting( name ) == NULL );
    }

    if( dynamic_cast< TextBible* >( resourceType ) != NULL )
    {
        return( resMan->GetTextBibleWithoutCounting( name ) == NULL );
    }

    if( dynamic_cast< TextStyle* >( resourceType ) != NULL )
    {
        return( resMan->GetTextStyleWithoutCounting( name ) == NULL );
    }

    //if( existingName.EqualsInsensitive( name ) ) 
    g_OutputMessage.Add( "NameManager::IsResourceNameUnique: Invalid resource type!",
                         DebugOutputMessage );
    return false;
}                           

//===========================================================================
// NameManager::IsLayerNameUnique
//===========================================================================
// Description: This checks to see if a name unique in a page.
//
// Constraints:    None
//
// Parameters:    name - name to try
//              page - page to look in
//
// Return:      True  - if the name is unique,
//              false - if the name is used.
//
//===========================================================================
bool NameManager::IsLayerNameUnique( PascalCString& name, Page* page )
{
    for(int i = 0; i < page->GetNumberOfLayers(); i++ )
    {
        Layer* layer = page->GetLayer( i );
        if( layer != NULL )
        {
            PascalCString existingName( layer->GetName() );
            if( existingName.EqualsInsensitive( name ) ) 
            {
                return false;
            }
        }
    }
    return true;
}




//===========================================================================
// NameManager::IsDrawingElementNameUniqueInPage
//===========================================================================
// Description: This checks to see if a name unique in a page.
//
// Constraints:    None
//
// Parameters:    layerName - name to try
//              page - page to look in
//
// Return:      True  - if the name is unique,
//              false - if the name is used.
//
//===========================================================================

bool NameManager::IsDrawingElementNameUniqueInPage( DrawingElementsEnum elementType, 
                                                    PascalCString& name, 
                                                    Page* page )
{
    for( int layerIndex = 0; layerIndex < page->GetNumberOfLayers(); layerIndex++ )
    {
        Layer* layer = page->GetLayer( layerIndex );
        if( layer == NULL )
        {
            continue;
        }

        for( int i = 0; i < layer->GetNumberOfDrawingElements(); i++ )
        {
            DrawingElement* drawingElement = layer->GetDrawingElement( i );
            if( drawingElement == NULL )
            {
                continue;
            }

            if( elementType == GetDrawingElementsType( drawingElement ) )
            {
                PascalCString existingName( drawingElement->GetName() );
                if( existingName.EqualsInsensitive( name ) )
                {
                    return false;
                }
            }
        
            Group* group = dynamic_cast<Group*>( drawingElement );
            if( group != NULL )
            {
                if( !( IsDrawingElementNameUniqueInGroup( elementType, name, group ) ) )
                {
                    return false;
                }
            }
        }
    }
    return true;
}


bool NameManager::IsDrawingElementNameUniqueInGroup( DrawingElementsEnum elementType, 
                                                     PascalCString& name, 
                                                     Group* group )
{
    for( int i = 0; i < group->GetNumberOfDrawingElements(); i++ )
    {
        DrawingElement* drawingElement = group->GetDrawingElement( i );
        if( drawingElement == NULL )
        {
            continue;
        }

        if( elementType == GetDrawingElementsType( drawingElement ) )
        {
            PascalCString existingName( drawingElement->GetName() );
            if( existingName.EqualsInsensitive( name ) )
            {
                return false;
            }
        }

        Group* group = dynamic_cast<Group*>( drawingElement );
        if( group != NULL )
        {
            if( !( IsDrawingElementNameUniqueInGroup( elementType, name, group ) ) )
            {
                return false;
            }
        }
    }
    return true;
}


bool NameManager::IsNameValid( PascalCString& name )
{
    int i = 0;

    while( name[i] != '\0' )
    {
        if( ( name[i] >= 'a' && name[i] <= 'z' ) || 
            ( name[i] >= 'A' && name[i] <= 'Z' ) ||
            ( name[i] >= '0' && name[i] <= '9' ) ||
            ( name[i] == ' ' ) ||
            ( name[i] == '_' ) )
        {
            ++i;
        }
        else
        {
            return( false );
        }
    }

    return( true );
}



} // End NameSpace
