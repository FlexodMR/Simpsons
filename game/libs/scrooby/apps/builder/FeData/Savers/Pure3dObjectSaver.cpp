//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Pure3dObjectSaver class.
//
// Authors:     Ian Gipson
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "Pure3dObjectSaver.h"
#include "BoxDrawingElementSaver.h"
#include "..\Loaders\Pure3dObjectLoader.h"
#include "..\Loaders\BoxDrawingElementLoader.h"
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
// Pure3dObjectSaver::Pure3dObjectSaver
//===========================================================================
// Description: SpriteSaver's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Pure3dObjectSaver::Pure3dObjectSaver()
{
}


//===========================================================================
// Pure3dObjectSaver::~Pure3dObjectSaver
//===========================================================================
// Description: Pure3dObjectSaver's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

Pure3dObjectSaver::~Pure3dObjectSaver()
{
}


//===========================================================================
// Pure3dObjectSaver::Save
//===========================================================================
// Description: This is used to save a Pure3dObject to a file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      true  - if the element could be added
//              false - otherwise.
//
//===========================================================================

bool Pure3dObjectSaver::Save( Pure3dObject* theObject, XMLSaver& theSaver )
{
    bool returnValue = true;

    theSaver.PushElement( g_Pure3dObjectTag );

    theSaver.AddAttribute( g_BoxDrawingElementTagName, theObject->GetName() );

    // Save the common settings
    BoxDrawingElementSaver saver;
    saver.Save( theObject, theSaver );

    // Save the resource name
    PascalCString resourceName;
    
    theSaver.PushElement( g_Pure3dObjectTagResource );
    resourceName = theObject->GetPure3dFileName();
    if( resourceName.Length == 0 )
    {
        g_OutputMessage.Add( "Pure3dObjectSaver::Save - Could not get Pure3dFile name, default to blank!", ErrorOutputMessage );
        theSaver.AddAttribute( g_Pure3dObjectTagResourceName, "" );
        returnValue = false;
    }
    else
    {
        theSaver.AddAttribute( g_Pure3dObjectTagResourceName, resourceName );
    }
    theSaver.PopElement();

    theSaver.PopElement(); // End pure3dobject
    return returnValue;
}


} // End NameSpace
