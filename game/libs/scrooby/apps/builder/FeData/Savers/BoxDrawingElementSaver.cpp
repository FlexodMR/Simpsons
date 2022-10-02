//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the BoxDrawingElementSaver class.
//
// Authors:     Eric Tong
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "BoxDrawingElementSaver.h"
#include "..\Loaders\BoxDrawingElementLoader.h"
#include "..\NamedElements\BoxDrawingElement.h"
#include "XMLSaver.h"
#include "..\Helpers\OutputMessage.h"

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
// BoxDrawingElementSaver::BoxDrawingElementSaver
//===========================================================================
// Description: BoxDrawingElementSaver's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

BoxDrawingElementSaver::BoxDrawingElementSaver()
{
}


//===========================================================================
// BoxDrawingElementSaver::~BoxDrawingElementSaver
//===========================================================================
// Description: BoxDrawingElementSaver's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

BoxDrawingElementSaver::~BoxDrawingElementSaver()
{
}


//===========================================================================
// BoxDrawingElementSaver::Save
//===========================================================================
// Description: This is used to save a BoxDrawingElement to a file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      true  - if the element could be added
//              false - otherwise.
//
//===========================================================================

bool BoxDrawingElementSaver::Save( BoxDrawingElement* theBoxDrawingElement, XMLSaver& theSaver )
{
    theSaver.PushElement( g_BoxDrawingElementTagPosition );
    theSaver.AddAttribute( g_BoxDrawingElementTagPositionX, theBoxDrawingElement->GetX() );
    theSaver.AddAttribute( g_BoxDrawingElementTagPositionY, theBoxDrawingElement->GetY() );
    theSaver.PopElement();

    theSaver.PushElement( g_BoxDrawingElementTagDimension );
    theSaver.AddAttribute( g_BoxDrawingElementTagDimensionWidth, theBoxDrawingElement->GetWidth() );
    theSaver.AddAttribute( g_BoxDrawingElementTagDimensionHeight, theBoxDrawingElement->GetHeight() );
    theSaver.PopElement();

    theSaver.PushElement( g_BoxDrawingElementTagJustification );
    theSaver.AddAttribute( g_BoxDrawingElementTagJustificationVertical, 
                           JustificationEnumToString( theBoxDrawingElement->GetJustificationVertical() ) );
    theSaver.AddAttribute( g_BoxDrawingElementTagJustificationHorizontal, 
                           JustificationEnumToString( theBoxDrawingElement->GetJustificationHorizontal() ) );
    theSaver.PopElement();

    theSaver.PushElement( g_BoxDrawingElementTagColor );
    theSaver.AddAttribute( g_BoxDrawingElementTagColorRed, theBoxDrawingElement->GetRed() );
    theSaver.AddAttribute( g_BoxDrawingElementTagColorGreen, theBoxDrawingElement->GetGreen() );
    theSaver.AddAttribute( g_BoxDrawingElementTagColorBlue, theBoxDrawingElement->GetBlue() );
    theSaver.AddAttribute( g_BoxDrawingElementTagColorAlpha, theBoxDrawingElement->GetAlpha() );
    theSaver.PopElement();


    theSaver.PushElement( g_BoxDrawingElementTagTranslucency );
    theSaver.AddAttribute( g_BoxDrawingElementTagTranslucencyValue, 
                           TranslucencyEnumToString( theBoxDrawingElement->GetTranslucency() ) );
    theSaver.PopElement();

    theSaver.PushElement( g_BoxDrawingElementTagRotation );
    theSaver.AddAttribute( g_BoxDrawingElementTagRotationValue, theBoxDrawingElement->GetRotation() );
    theSaver.PopElement();

    return true;
}


} // End NameSpace
