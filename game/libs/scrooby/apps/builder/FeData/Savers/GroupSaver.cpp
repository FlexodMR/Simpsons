//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the GroupSaver class.
//
// Authors:     Eric Tong
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "GroupSaver.h"
#include "DrawingElementSaver.h"
#include "..\Loaders\GroupLoader.h"
#include "..\NamedElements\Group.h"
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
// GroupSaver::GroupSaver
//===========================================================================
// Description: GroupSaver's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

GroupSaver::GroupSaver()
{
}


//===========================================================================
// GroupSaver::~GroupSaver
//===========================================================================
// Description: GroupSaver's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

GroupSaver::~GroupSaver()
{
}


//===========================================================================
// GroupSaver::Save
//===========================================================================
// Description: This is used to save a Group to a file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      true  - if the element could be added
//              false - otherwise.
//
//===========================================================================

bool GroupSaver::Save( Group* theGroup, XMLSaver& theSaver )
{
    theSaver.PushElement( g_GroupTag );

    theSaver.AddAttribute( g_GroupTagName, theGroup->GetName() );

    theSaver.AddAttribute( g_GroupTagAlpha, theGroup->GetAlpha() );

    theSaver.PushElement( g_GroupTagDrawingElements );

    // Save the drawing elements
    DrawingElementSaver saver;
    int numDrawingElements = theGroup->GetNumberOfDrawingElements();
    for( int i=numDrawingElements-1; i>=0; i-- )
    {
        DrawingElement* drawingElement = theGroup->GetDrawingElement( i );
        saver.Save( drawingElement, theSaver );
    }

    theSaver.PopElement(); // End drawing elements

    theSaver.PopElement(); // End group

    return true;
}

} // End NameSpace
