//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the ProjectSaver class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "..\Helpers\FileName.h"
#include "..\Loaders\ProjectLoader.h"
#include "..\NamedElements\Project.h"
#include "ProjectSaver.h"
#include <time.h>
#include <toollib.hpp>
#include "..\..\version.h"
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
// ProjectSaver::ProjectSaver
//===========================================================================
// Description: ProjectSaver's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ProjectSaver::ProjectSaver()
{
}


//===========================================================================
// ProjectSaver::~ProjectSaver
//===========================================================================
// Description: ProjectSaver's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ProjectSaver::~ProjectSaver()
{
}

//===========================================================================
// ProjectSaver::HistoryChunk
//===========================================================================
// Description: Creates a history chunk for appending to P3D file
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      tlDataChunk* - pointer to the history chunk that will get 
//              appended to the binary file
//
//===========================================================================
tlDataChunk* ProjectSaver::HistoryChunk()
{
   tlHistory* chunk = new tlHistory();
   char buf[256];
   sprintf(buf,"Scrooby Builder version %s (with toollib %s)", g_VersionString, tlversion);
   chunk->AddLine(buf);

   // Logon name and date info
   time_t ltime;
   struct tm* now;
   time( &ltime );
   now = localtime( &ltime );
   strftime( buf, 256, "Run at %B %d, %Y, %H:%M:%S by ???", now );

#ifdef P3DWIN95
   DWORD size = 256;
   char lbuf[256];
   GetUserName(lbuf, &size);

   strcat(buf, lbuf);
#else
//   char* loginname = getlogin();          //IAN IMPROVE: add this username stuff again
//   if(loginname)
//   {
//      strcat(buf, loginname);
//   } else {
//      strcat(buf, "Unknown");
//   }
#endif
   chunk->AddLine(buf);
   
   return chunk->Chunk();
}

//===========================================================================
// ProjectSaver::Save
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
bool ProjectSaver::Save( Project* theProject )
{
    PascalCString message( "Saving project file: " );
    message += theProject->GetName();
    g_OutputMessage.Add( message );

    XMLSaver theSaver;
    if( !theSaver.OpenFile( theProject->GetName() ) )
    {
        g_OutputMessage.Add( "ProjectSaver::Save: Could not open Project file.",
            ErrorOutputMessage );
        return false;
    }

    theSaver.PushElement( g_ProjectTag );

    theSaver.PushElement( g_ProjectTagVersion );
    theSaver.AddAttribute( g_ProjectTagVersionValue, theProject->GetVersion() );
    theSaver.PopElement();

    theSaver.PushElement( g_ProjectTagResolution );
    theSaver.AddAttribute( g_ProjectTagResolutionWidth, theProject->GetResolutionWidth() );
    theSaver.AddAttribute( g_ProjectTagResolutionHeight, theProject->GetResolutionHeight() );
    theSaver.PopElement();

    theSaver.PushElement( g_ProjectTagPlatform );
    theSaver.AddAttribute( g_ProjectTagPlatformValue, theProject->GetPlatform() );
    theSaver.PopElement();

    theSaver.PushElement( g_ProjectTagScreenPath );
    theSaver.AddAttribute( g_ProjectTagScreenPathValue, theProject->GetScreenPath() );
    theSaver.PopElement();

    theSaver.PushElement( g_ProjectTagPagePath );
    theSaver.AddAttribute( g_ProjectTagPagePathValue, theProject->GetPagePath() );
    theSaver.PopElement();

    theSaver.PushElement( g_ProjectTagResourcePath );
    theSaver.AddAttribute( g_ProjectTagResourcePathValue, theProject->GetResourcePath() );
    theSaver.PopElement();

    theSaver.PushElement( g_ProjectTagScreens );

    // Save the list of screens
    FileName tempFileName;
    int numScreens = theProject->GetNumberOfScreens();
    for( int i = 0; i < numScreens; i++)
    {
        PascalCString fileName;

        theProject->GetScreenFileName( i, tempFileName );

        tempFileName.Get( fileName );

        theSaver.PushElement( g_ProjectTagScreen );
        theSaver.AddAttribute( g_ProjectTagScreensFile, fileName );
        theSaver.PopElement();
    }

    theSaver.PopElement();
    theSaver.PopElement();
    theSaver.CloseFile();


    //save the binary equivilant of this XML file using toolib
    // build an output chunk
    tlDataChunk* outchunk = new tlDataChunk;
    
    // put a history chunk in the output
    // a history chunk shows what version of the tool
    // was run on the file with what command-line 
    // parameters
    outchunk->AppendSubChunk( this->HistoryChunk() );

    //create the scrooby project chunk
    tlDataChunk* scroobyProjectChunk = theProject->MakeChunk();

    //append the tlScroobyProjectChunk
    outchunk->AppendSubChunk( scroobyProjectChunk );

    // create the new output file
    //goto the root directory
    theProject->GotoRootDirectory();
    PascalCString xmlName = theProject->GetName();
    int length = xmlName.Length();
    PascalCString binaryName = xmlName.SubString( 0, length - 3 );
    binaryName += "p3d";

    tlFileByteStream* byteStream = new tlFileByteStream( binaryName, omWRITE );
    tlFile output( byteStream, tlFile::CHUNK32 );
    if( !output.IsOpen() ) 
    {
        printf( "Could not open %s for writing\n", binaryName );     //IAN IMPROVE: can't printf
        assert( false );
        return false;
    }
   
    outchunk->Write( &output );
    output.Close();
    return true;
}

} // End NameSpace
