//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the DrawingElement class.
//
// Authors:     Ryan Bedard, Eric Tong
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include <stdio.h>

#include "DrawingElement.h"
#include "Page.h"

#include "Descriptions\DrawingElementDescription.h"

#include "..\DrawingContexts\DrawingContext.h"
#include "..\Helpers\NameManager.h"
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
// DrawingElement::DrawingElement
//===========================================================================
// Description: DrawingElement's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

DrawingElement::DrawingElement()
{
}

//===========================================================================
// DrawingElement::~DrawingElement
//===========================================================================
// Description: DrawingElement's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

DrawingElement::~DrawingElement()
{
}


//===========================================================================
// DrawingElement::GetXResolution
//===========================================================================
// Description: This is used to get the x resolution of the page
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      x resolution in pixels
//
//===========================================================================

int DrawingElement::GetXResolution() {
    return GetPage()->GetResolutionWidth();
}


//===========================================================================
// DrawingElement::GetYResolution
//===========================================================================
// Description: This is used to get the y resolution of the page
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      y resolution in pixels
//
//===========================================================================

int DrawingElement::GetYResolution() {
    return GetPage()->GetResolutionHeight();
}


//===========================================================================
// DrawingElement::SetFromDescription
//===========================================================================
// Description: This sets the state of the element to match that of the
//              passed description.
//
// Constraints:    The page for this element must have been set before this can 
//              be called.
//
// Parameters:    description - Description to set from
//
// Return:      true  - if successful,
//              false - otherwize
//
//===========================================================================

bool DrawingElement::SetFromDescription( DrawingElementDescription* description )
{
    // Find a valid name
    PascalCString name( description->GetName() );
    
    NameManager nameManager;
    if( !nameManager.IsPageElementNameUnique( this, name ) )
    {
        SetName( name );  // Set default name
        nameManager.GenerateUniqueDrawingElementCopyName( this, name, GetPage() ); 
    }
    SetName( name );    

    return true;
}

//===========================================================================
// DrawingElement::FillInDescription
//===========================================================================
// Description: This fills in the description with settings from this class.
//
// Constraints:    None
//
// Parameters:    description - description to fill.
//
// Return:      true  - if successful,
//              false - otherwize
//
//===========================================================================

bool DrawingElement::FillInDescription( DrawingElementDescription* description )
{
    PascalCString name( GetName() );
    description->SetName( name );

    return true;
}


} // End NameSpace
