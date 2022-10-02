//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the LayerSaver class.
//
// Authors:     Eric Tong
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "LayerSaver.h"
#include "DrawingElementSaver.h"
#include "..\Loaders\LayerLoader.h"
#include "..\Loaders\DrawingElementLoader.h"
#include "..\NamedElements\Layer.h"
#include "..\NamedElements\DrawingElement.h"
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
// LayerSaver::LayerSaver
//===========================================================================
// Description: LayerSaver's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

LayerSaver::LayerSaver()
{
}


//===========================================================================
// LayerSaver::~LayerSaver
//===========================================================================
// Description: LayerSaver's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

LayerSaver::~LayerSaver()
{
}


//===========================================================================
// LayerSaver::Save
//===========================================================================
// Description: This is used to save a Layer to a file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      true  - if the element could be added
//              false - otherwise.
//
//===========================================================================

bool LayerSaver::Save( Layer* theLayer, XMLSaver& theSaver )
{
    theSaver.PushElement( g_LayerTag );

    theSaver.AddAttribute( g_LayerTagName, theLayer->GetName() );
    theSaver.AddAttribute( g_LayerTagVisible, theLayer->IsVisible() );
    theSaver.AddAttribute( g_LayerTagEditable, theLayer->IsEditable() );
    theSaver.AddAttribute( g_LayerTagAlpha, theLayer->GetAlpha() );

    theSaver.PushElement( g_LayerTagDrawingElements );

    // Save the drawing elements
    DrawingElementSaver saver;
    int numDrawingElements = theLayer->GetNumberOfDrawingElements();
    for( int i=numDrawingElements-1; i>=0; i-- )
    {
        DrawingElement* drawingElement = theLayer->GetDrawingElement( i );
        saver.Save( drawingElement, theSaver );
    }

    theSaver.PopElement();  // End LayerTagDrawingElement
    
    theSaver.PopElement();  // End LayerTag

    return true;
}


} // End NameSpace
