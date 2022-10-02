//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the BoxDrawingElementLoader class.
//
// Authors:     Eric Tong, Ryan Bedard, Ian Gipson
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "..\..\stdafx.h"
#include "BoxDrawingElementLoader.h"
#include "..\NamedElements\BoxDrawingElement.h"
#include "..\NamedElements\Movie.h"
#include "..\NamedElements\MultiSprite.h"
#include "..\NamedElements\MultiText.h"
#include "..\NamedElements\Pure3dObject.h"
#include "..\NamedElements\Sprite.h"
#include "..\NamedElements\Text.h"
#include "SpriteLoader.h"
#include "Pure3dObjectLoader.h"
#include "MovieLoader.h"
#include "MultiSpriteLoader.h"
#include "TextLoader.h"
#include "MultiTextLoader.h"
#include "..\Helpers\EnumConversion.h"
#include "..\Helpers\OutputMessage.h"
#include "XML\XMLTree.h"
#include "..\Factories\BaseFactory.h"
#include "..\NamedElements\Project.h"
#include "..\NamedElements\Page.h"

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
// BoxDrawingElementLoader::BoxDrawingElementLoader
//===========================================================================
// Description: BoxDrawingElementLoader's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

BoxDrawingElementLoader::BoxDrawingElementLoader()
{
}


//===========================================================================
// BoxDrawingElementLoader::~BoxDrawingElementLoader
//===========================================================================
// Description: BoxDrawingElementLoader's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

BoxDrawingElementLoader::~BoxDrawingElementLoader()
{
}


//===========================================================================
// BoxDrawingElementLoader::Load
//===========================================================================
// Description: This is used to load a BoxDrawingElement from a file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      A pointer to a newly created BoxDrawingElement or NULL if an error
//              occured.
//
//===========================================================================

BoxDrawingElement* BoxDrawingElementLoader::Load( XMLTree &loadTree, Page* thePage )
{
    // Get the type of box element
    PascalCString elementTypeName;
    loadTree.GetName( elementTypeName );

    PascalCString buffer;

    // Load the element name
    PascalCString nameBuffer;
    int loadedNameBuffer = loadTree.GetAttribute( g_BoxDrawingElementTagName, nameBuffer );

    // Load the position
    int x;
    int y;
    bool loadedX = false;
    bool loadedY = false;
    if( loadTree.SetCurrentElementByName( g_BoxDrawingElementTagPosition ) )
    {
        loadedX = loadTree.GetAttribute( g_BoxDrawingElementTagPositionX, &x );
        loadedY = loadTree.GetAttribute( g_BoxDrawingElementTagPositionY, &y );
    }

    // Load the dimension
    int width;
    int height;
    bool loadedWidth = false;
    bool loadedHeight = false;
    if( loadTree.SetCurrentElementByName( g_BoxDrawingElementTagDimension ) )
    {
        loadedWidth = loadTree.GetAttribute( g_BoxDrawingElementTagDimensionWidth, &width );
        loadedHeight = loadTree.GetAttribute( g_BoxDrawingElementTagDimensionHeight, &height );
    }

    // Load the justification
    JustificationEnum justVertical;
    JustificationEnum justHorizontal;
    int loadedJustVertical = 0;
    int loadedJustHorizontal = 0;
    if( loadTree.SetCurrentElementByName( g_BoxDrawingElementTagJustification ) )
    {
        loadedJustVertical = loadTree.GetAttribute( g_BoxDrawingElementTagJustificationVertical, buffer );
        justVertical = StringToJustificationEnum( buffer );

        loadedJustHorizontal = loadTree.GetAttribute( g_BoxDrawingElementTagJustificationHorizontal, buffer );
        justHorizontal = StringToJustificationEnum( buffer );
    }

    // Load Color
    int red;
    int green;
    int blue;
    int alpha;
    bool loadedRed = false;
    bool loadedGreen = false;
    bool loadedBlue = false;
    bool loadedAlpha = false;
    if( loadTree.SetCurrentElementByName( g_BoxDrawingElementTagColor ) )
    {
        loadedRed = loadTree.GetAttribute( g_BoxDrawingElementTagColorRed, &red );
        loadedGreen = loadTree.GetAttribute( g_BoxDrawingElementTagColorGreen, &green );
        loadedBlue = loadTree.GetAttribute( g_BoxDrawingElementTagColorBlue, &blue );
        loadedAlpha = loadTree.GetAttribute( g_BoxDrawingElementTagColorAlpha, &alpha );
    }

    // Load the translucency
    TranslucencyEnum translucency;
    int loadedTranslucency = 0;
    if( loadTree.SetCurrentElementByName( g_BoxDrawingElementTagTranslucency ) )
    {
        loadedTranslucency = loadTree.GetAttribute( g_BoxDrawingElementTagTranslucencyValue, buffer );
        translucency = StringToTranslucencyEnum( buffer );
    }

    // Load the rotation
    double rotation;
    bool loadedRotation = false;
    if( loadTree.SetCurrentElementByName( g_BoxDrawingElementTagRotation ) )
    {
        loadedRotation = loadTree.GetAttribute( g_BoxDrawingElementTagRotationValue, &rotation );
    }


    BoxDrawingElement* boxDrawingElement = NULL;

    // Now based on the type of the box drawing element, retreive its states
    if( stricmp( elementTypeName, g_BoxDrawingElementTagSprite ) == 0 )
    {
        SpriteLoader spriteLoader;
        boxDrawingElement = spriteLoader.Load( loadTree, thePage ); 

    }
    else if( stricmp( elementTypeName, g_BoxDrawingElementTagMultiSprite ) == 0 )
    {
        MultiSpriteLoader multiSpriteLoader;
        boxDrawingElement = multiSpriteLoader.Load( loadTree, thePage ); 
    }
    else if( stricmp( elementTypeName, g_BoxDrawingElementTagText ) == 0 )
    {
        TextLoader textLoader;
        boxDrawingElement = textLoader.Load( loadTree, thePage ); 
    }
    else if( stricmp( elementTypeName, g_BoxDrawingElementTagMultiText ) == 0 )
    {
        MultiTextLoader multiTextLoader;
        boxDrawingElement = multiTextLoader.Load( loadTree, thePage ); 
    }
    else if( stricmp( elementTypeName, g_BoxDrawingElementTagPure3dObject ) == 0 )
    {
        Pure3dObjectLoader loader;
        Pure3dObject* loadedObject = loader.Load( loadTree, thePage );
        boxDrawingElement =  loadedObject ; 
    }
    else if( stricmp( elementTypeName, g_BoxDrawingElementTagMovie ) == 0 )
    {
        MovieLoader loader;
        boxDrawingElement = loader.Load( loadTree, thePage ); 
    }
    else
    {
        char errorStr[200];
        sprintf( errorStr, "BoxDrawingElementLoader::Load - Invalid box drawing element! (%s)", elementTypeName );
        g_OutputMessage.Add( errorStr, ErrorOutputMessage );
        return NULL;
    }

    if( boxDrawingElement == NULL )
    {
        // Out of memory message already shown.
        return NULL;
    }

    if( loadedNameBuffer )     { boxDrawingElement->SetName( nameBuffer ); }
    if( loadedX )              { boxDrawingElement->SetX( x ); }
    if( loadedY )              { boxDrawingElement->SetY( y ); }
    if( loadedWidth )          { boxDrawingElement->SetWidth( width ); }
    if( loadedHeight )         { boxDrawingElement->SetHeight( height ); }
    if( loadedJustVertical )   { boxDrawingElement->SetJustificationVertical( justVertical ); }
    if( loadedJustHorizontal ) { boxDrawingElement->SetJustificationHorizontal( justHorizontal ); }
    if( loadedTranslucency )   { boxDrawingElement->SetTranslucency( translucency ); }
    if( loadedRotation )       { boxDrawingElement->SetRotation( rotation ); }
    if( loadedRed && loadedGreen && loadedBlue && loadedAlpha ) { boxDrawingElement->SetColor( red, green, blue, alpha ); }

    return boxDrawingElement;

}


} // End NameSpace
