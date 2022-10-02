//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the ScreenSaver class.
//
// Authors:     Victor Medrano
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include <assert.h>
#include <direct.h>
#include "..\Loaders\ScreenLoader.h"
#include "..\NamedElements\Project.h"
#include "..\NamedElements\Screen.h"
#include "ScreenSaver.h"
#include <toollib.hpp>
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
// ScreenSaver::ScreenSaver
//===========================================================================
// Description: ScreenSaver's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ScreenSaver::ScreenSaver()
{
}


//===========================================================================
// ScreenSaver::~ScreenSaver
//===========================================================================
// Description: ScreenSaver's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ScreenSaver::~ScreenSaver()
{
}


//===========================================================================
// ScreenSaver::Save
//===========================================================================
// Description: This is used to save a project to a file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      true  - if the element could be added
//              false - otherwise.
//
//===========================================================================

bool ScreenSaver::Save( Screen* theScreen )
{
    PascalCString message( "Saving screen file: " );
    message += theScreen->GetName();
    g_OutputMessage.Add( message );

    //change the directory to the screens directory
    Project* project = theScreen->GetProject();
    PascalCString screenDir = project->GetRootPath();
    screenDir += project->GetScreenPath();
    int result = ::_chdir( screenDir );
    assert( result == 0 );

    XMLSaver theSaver;
    if( !theSaver.OpenFile( theScreen->GetName() ) )
    {
        g_OutputMessage.Add( "ScreenSaver::Save: Could not open Screen file.",
            ErrorOutputMessage );
        return false;
    }

    theSaver.PushElement( g_ScreenTag );
    theSaver.PushElement( g_ScreenTagVersion );
    theSaver.AddAttribute( g_ScreenTagVersionValue, theScreen->GetVersion() );
    theSaver.PopElement();

    theSaver.PushElement( g_ScreenTagPages );

    // Save the list of screens
    FileName tempFileName;
    bool exportFlag;
    int numPages = theScreen->GetNumberOfPages();
    for( int i=numPages-1; i>=0; i-- )
    {
        theScreen->GetPageFileInfo( i, tempFileName, exportFlag );
        
        PascalCString fileName;
        tempFileName.Get( fileName );

        char drive[ 80 ];
        char dir[ 80 ];
        char fname[ 80 ];
        char ext[ 80 ];
        ::_splitpath( fileName, drive, dir, fname, ext );
        PascalCString outputName = fname;
        outputName += ext;

        theSaver.PushElement( g_ScreenTagPage );
        theSaver.AddAttribute( g_ScreenTagPagesFile, outputName );
        theSaver.AddAttribute( g_ScreenTagPagesExport, exportFlag );
        theSaver.PopElement();
    }

    theSaver.PopElement(); // End Pages
    theSaver.PopElement(); // End Screen
    theSaver.CloseFile();
    return true;
}


} // End NameSpace
