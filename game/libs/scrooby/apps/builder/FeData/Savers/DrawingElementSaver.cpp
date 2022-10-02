//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the DrawingElementSaver class.
//
// Authors:     Eric Tong
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "DrawingElementSaver.h"
#include "GroupSaver.h"
#include "SpriteSaver.h"
#include "MultiSpriteSaver.h"
#include "TextSaver.h"
#include "MovieSaver.h"
#include "MultiTextSaver.h"
#include "PolygonSaver.h"
#include "Pure3dObjectSaver.h"
#include "..\NamedElements\DrawingElement.h"
#include "..\NamedElements\Group.h"
#include "..\NamedElements\Sprite.h"
#include "..\NamedElements\MultiSprite.h"
#include "..\NamedElements\Text.h"
#include "..\NamedElements\Movie.h"
#include "..\NamedElements\MultiText.h"
#include "..\NamedElements\Polygon.h"
#include "..\NamedElements\Pure3dObject.h"
#include "XMLSaver.h"

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
// DrawingElementSaver::DrawingElementSaver
//===========================================================================
// Description: DrawingElementSaver's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

DrawingElementSaver::DrawingElementSaver()
{
}


//===========================================================================
// DrawingElementSaver::~DrawingElementSaver
//===========================================================================
// Description: DrawingElementSaver's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

DrawingElementSaver::~DrawingElementSaver()
{
}


//===========================================================================
// DrawingElementSaver::Save
//===========================================================================
// Description: This is used to save a DrawingElement to a file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      true  - if the element could be added
//              false - otherwise.
//
//===========================================================================

bool DrawingElementSaver::Save( DrawingElement* theDrawingElement, XMLSaver& theSaver )
{
    Group* group = dynamic_cast< Group* >( theDrawingElement ) ;
    Sprite* sprite = dynamic_cast< Sprite* >( theDrawingElement ) ;
    MultiSprite* multiSprite = dynamic_cast< MultiSprite* >( theDrawingElement ) ;
    Text* text = dynamic_cast< Text* >( theDrawingElement ) ;
    Movie* movie = dynamic_cast< Movie* >( theDrawingElement ) ;
    MultiText* multiText = dynamic_cast< MultiText* >( theDrawingElement ) ;
    Polygon* polygon = dynamic_cast< Polygon* >( theDrawingElement ) ;
    Pure3dObject* pure3dObject = dynamic_cast< Pure3dObject* >( theDrawingElement ) ;

    if( group != NULL )
    {
        GroupSaver saver;
        saver.Save( group, theSaver );
    }
    else if( sprite != NULL )
    {
        SpriteSaver saver;
        saver.Save( sprite, theSaver );
    }
    else if( multiSprite != NULL )
    {
        MultiSpriteSaver saver;
        saver.Save( multiSprite, theSaver );
    }
    else if( text != NULL )
    {
        TextSaver saver;
        saver.Save( text, theSaver );
    }
    else if( multiText != NULL )
    {
        MultiTextSaver saver;
        saver.Save( multiText, theSaver );
    }
    else if( polygon != NULL )
    {
        PolygonSaver saver;
        saver.Save( polygon, theSaver );
    }
    else if( movie != NULL )
    {
        MovieSaver saver;
        saver.Save( movie, theSaver );
    }
    else if( pure3dObject != NULL )
    {
        Pure3dObjectSaver saver;
        saver.Save( pure3dObject, theSaver );
    }
    else 
    {
        g_OutputMessage.Add( "DrawingElementSaver: Unknown drawing element type!", ErrorOutputMessage );
        return false;
    }

    return true;
}


} // End NameSpace
