//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the HashedNameExporter class.
//
// Authors:     Darwin Chau
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================
#include "HashedNameExporter.h"

#include "..\NamedElements\Project.h"
#include "..\NamedElements\Screen.h"
#include "..\NamedElements\Page.h"
#include "..\NamedElements\Layer.h"
#include "..\NamedElements\Group.h"
#include "..\NamedElements\DrawingElement.h"
#include "..\ResourceFiles\ScreenFile.h"
#include "..\Helpers\FileName.h"
#include "..\Helpers\NameManager.h"

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
// HashedNameExporter::HashedNameExporter
//===========================================================================
// Description: HashedNameExporter's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

HashedNameExporter::HashedNameExporter()
{
}


//===========================================================================
// HashedNameExporter::~HashedNameExporter
//===========================================================================
// Description: HashedNameExporter's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

HashedNameExporter::~HashedNameExporter()
{
}

//===========================================================================
// HashedNameExporter::ExportHashedNames
//===========================================================================
// Description: This is used to export all the names of screens, pages,
//              layers and drawing elements used in the project as hash
//              values to a header file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      true  - the exported header file could be created.
//              false - otherwise.
//
//===========================================================================

bool HashedNameExporter::ExportHashedNames
(
    Project* theProject
)
{
    //
    // Debug message to the output window.
    //
    PascalCString message( "Exporting hashed names" );
    g_OutputMessage.Add( message );
    

    //
    // The header file will be created in the same directory as the
    // project file and will have the same filename except with .h
    // as the extension.
    //
    char drive[_MAX_DRIVE];
    char dir[_MAX_DIR];
    char fname[_MAX_FNAME];
    char ext[_MAX_EXT];

    _splitpath( theProject->GetName(), drive, dir, fname, ext );

    PascalCString filename;

    filename += drive;
    filename += dir;
    filename += fname;
    filename += ".h";

    //
    // Open the header file for writing.
    //
    if( !this->CreateFile( filename ) )
    {
        return( false );
    }
    
    //
    // Output recompilation protection.
    //
    this->Print( "// Recompilation protection flag\n" );
    this->Print( "#ifndef __" );
    this->Print( fname );
    this->Print( "_h\n" );

    this->Print( "#define __" );
    this->Print( fname );
    this->Print( "_h\n\n" );

    //
    // Iterate through each screen in the project.
    //
    int screenCount = theProject->GetNumberOfScreens();

    int i;
    for( i = 0; i < screenCount; ++i )
    {
        //
        // Get the filename. ( e.g. "Screen1.scr" )
        //
        FileName screenFileName;
        theProject->GetScreenFileName( i, screenFileName );
       
        PascalCString screenFileNameString;
        screenFileName.Get( screenFileNameString );

        //
        // Remove the extension and export the defined hash value.
        //
        //_splitpath( screenFileNameString, 0, 0, fname, 0 );

        this->ExportScreenName( screenFileNameString.FullFilename() );

        //
        // Generate the full path and filename. 
        // (e.g. "C:\FeProject\Screens\Screen1.scr" )
        //
        PascalCString fullPath( theProject->GetRootPath() ) ;
        fullPath += theProject->GetScreenPath();
        fullPath += screenFileNameString;

        FileName tempFileName;
        tempFileName.Set( fullPath );

        //
        // Load the screen file so we can get access to the pages.
        //
        ResourceFileManager* resFileMan = theProject->GetResourceFileManager();
        ScreenFile* pScreenFile = resFileMan->GetScreenFile( tempFileName, theProject );
        Screen* pScreen = pScreenFile->GetScreen();
        

        //
        // Iterate through the pages.
        //
        int pageCount = pScreen->GetNumberOfPages();

        int j;
        for( j = 0; j < pageCount; ++j )
        {
            Page* pPage = pScreen->GetPage( j );
            
            //
            // Export the hash value.
            //
            PascalCString pageName = pPage->GetName();
            //::_splitpath( pageName, 0, 0, fname, 0 );
            this->ExportPageName( pageName.FullFilename() );
            
            //
            // Iterate through the layers.
            //
            int layerCount = pPage->GetNumberOfLayers();
            
            int k;
            for( k = 0; k < layerCount; ++k )
            {
                Layer* pLayer = pPage->GetLayer( k );

                //
                // Export the hash value.
                //
                this->ExportLayerName( pLayer->GetName() );

                //
                // Iterate through the drawing elements.
                //
                int elementCount = pLayer->GetNumberOfDrawingElements();

                int l;
                for( l = 0; l < elementCount; ++l )
                {   
                    DrawingElement* pElement = pLayer->GetDrawingElement( l );

                    //
                    // Export the hash value.
                    //
                    this->ExportDrawingElementName( pElement->GetName() );

                    Group* pGroup = dynamic_cast<Group*>( pElement );

                    if( NULL != pGroup )
                    {
                        this->RecurseGroupMembers( pGroup );
                    }
                }
            }
        }
       
        //
        // Release the screen file.
        //
        resFileMan->Release( (ResourceFile**)&pScreenFile );
    }

    //
    // Output end of recompliation protection.
    //
    this->Print( "#endif  // End conditional inclusion\n" );
    
    //
    // Finished so close the file.
    //
    this->CloseFile();
   
    
    return( true );
}


//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
// PRIVATE MEMBERS
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------

//===========================================================================
// HashedNameExporter::RecurseGroupMembers
//===========================================================================
// Description: 
//
// Constraints:    
//
// Parameters:    
//
// Return:      
//
//===========================================================================
void HashedNameExporter::RecurseGroupMembers
(
    Group* pGroup
)
{
    //
    // Iterate through the drawing elements.
    //
    int elementCount = pGroup->GetNumberOfDrawingElements();

    int i;
    for( i = 0; i < elementCount; ++i )
    {   
        DrawingElement* pElement = pGroup->GetDrawingElement( i );

        //
        // Export the hash value.
        //
        this->ExportDrawingElementName( pElement->GetName() );

        Group* pGroup = dynamic_cast<Group*>( pElement );

        if( NULL != pGroup )
        {
            this->RecurseGroupMembers( pGroup );
        }
    }
}


//===========================================================================
// HashedNameExporter::ExportScreenName
//===========================================================================
// Description: 
//
// Constraints:    
//
// Parameters:    
//
// Return:      
//
//===========================================================================
void HashedNameExporter::ExportScreenName
(
    char* name 
)
{
    //
    // Some pretty comments.
    //
    this->Print( "//===========================================================================\n" );
    this->Print( "//===========================================================================\n" );
    
    this->Print( "// SCREEN: " );
    this->Print( name );
    this->Print( "\n" );
    
    this->Print( "//===========================================================================\n" );
    this->Print( "//===========================================================================\n" );
    this->Print( "\n" );

    //
    // Turn the name into a valid #define symbol name.
    //
    PascalCString defineName;
    this->MakeDefineName( name, defineName );

    //
    // Protection to ignore redefinition since the same name can appear
    // mulitple times in a project.
    //
    this->Print( "#ifndef SCROOBY_Screen_" );
    this->Print( defineName );
    this->Print( "\n" );
    
    this->Print( "\t#define SCROOBY_Screen_" );
    this->Print( defineName );
    this->Print( "\t\t\t\t\t\t" );
    
    //
    // Calculate the hash value and print it out.
    //
    this->PrintUID( name );
    this->Print( "\n" );
    
    this->Print( "#endif\n\n" );
}


//===========================================================================
// HashedNameExporter::ExportPageName
//===========================================================================
// Description: exports the page name
//
// Constraints:    The extension should already have been removed
//
// Parameters:    name - the name of the page without the extension
//
// Return:      NONE
//
//===========================================================================
void HashedNameExporter::ExportPageName
(
    char* name 
)
{
    //
    // Some pretty comments.
    //
    this->Print( "//===========================================================================\n" );
    this->Print( "// PAGE: " );
    this->Print( name );
    this->Print( "\n" );
    this->Print( "//===========================================================================\n" );
    this->Print( "\n" );

    //
    // Turn the name into a valid #define symbol name.
    //
    PascalCString defineName;
    this->MakeDefineName( name, defineName );

    //
    // Protection to ignore redefinition since the same name can appear
    // mulitple times in a project.
    //
    this->Print( "#ifndef SCROOBY_Page_" );
    this->Print( defineName );
    this->Print( "\n" );
    
    this->Print( "\t#define SCROOBY_Page_" );
    this->Print( defineName );
    this->Print( "\t\t\t\t\t\t" );

    //
    // Calculate the hash value and print it out.
    //
    this->PrintUID( name );
    this->Print( "\n" );
    
    this->Print( "#endif\n\n" );
}


//===========================================================================
// HashedNameExporter::ExportLayerName
//===========================================================================
// Description: 
//
// Constraints:    
//
// Parameters:    
//
// Return:      
//
//===========================================================================
void HashedNameExporter::ExportLayerName
(
    char* name 
)
{
    //
    // Some pretty comments.
    //
    this->Print( "//---------------------------------------------------------------------------\n" );
    this->Print( "// LAYER: " );
    this->Print( name );
    this->Print( "\n" );
    this->Print( "//---------------------------------------------------------------------------\n" );
    this->Print( "\n" );

    //
    // Turn the name into a valid #define symbol name.
    //
    PascalCString defineName;
    this->MakeDefineName( name, defineName );

    //
    // Protection to ignore redefinition since the same name can appear
    // mulitple times in a project.
    //
    this->Print( "#ifndef SCROOBY_" );
    this->Print( defineName );
    this->Print( "\n" );
    
    this->Print( "\t#define SCROOBY_" );
    this->Print( defineName );
    this->Print( "\t\t\t\t\t\t" );

    //
    // Calculate the hash value and print it out.
    //
    this->PrintUID( name );
    this->Print( "\n" );
    
    this->Print( "#endif\n\n" );
}


//===========================================================================
// HashedNameExporter::ExportDrawingElementName
//===========================================================================
// Description: 
//
// Constraints:    
//
// Parameters:    
//
// Return:      
//
//===========================================================================
void HashedNameExporter::ExportDrawingElementName
(
    char* name 
)
{
    //
    // Turn the name into a valid #define symbol name.
    //
    PascalCString defineName;
    this->MakeDefineName( name, defineName );

    //
    // Protection to ignore redefinition since the same name can appear
    // mulitple times in a project.
    //
    this->Print( "#ifndef SCROOBY_" );
    this->Print( defineName );
    this->Print( "\n" );
    
    this->Print( "\t#define SCROOBY_" );
    this->Print( defineName );
    this->Print( "\t\t\t\t\t\t" );

    //
    // Calculate the hash value and print it out.
    //
    this->PrintUID( name );
    this->Print( "\n" );
    
    this->Print( "#endif\n\n" );
}


//===========================================================================
// HashedNameExporter::PrintUID
//===========================================================================
// 
// Description: This has function is copied from Pure3D's tEntity::MakeUID().
//              Any changes to that function must be propogated here or
//              we will fail to find objects in the runtime.
//
//              From tEntity::MakeUID()...
//
//              Hashing function that uses the x65599 algorithm
//              Taken from Dragon book, p435
//
// Constraints:    
//
// Parameters:    
//
// Return:      
//
//===========================================================================
void HashedNameExporter::PrintUID( char* name )
{
    //
    // Calculate the hash value.

    __int64 h = 0;
    char* s = name;
    while(*s)
    {
        h *= 65599;
        h = (h ^ *s);
        ++s;
    }
 
    //
    // Convert to a string (as hex).
    //
    char buffer[20];
    _i64toa( h, buffer, 16 );

    //
    // Output to the file.
    //
    this->Print( "0x" );
    this->Print( buffer );
}


//===========================================================================
// HashedNameExporter::MakeDefineName
//===========================================================================
// 
// Description: Converts a name to a string that is valid to use as
//              a #define symbol. Spaces are converted to underscores and
//              underscores are doubled up.
//
// Constraints:    
//
// Parameters:    
//
// Return:      
//
//===========================================================================
void HashedNameExporter::MakeDefineName
(
    char* name,
    PascalCString& defineName
)
{
    PascalCString newName = name;
    if( newName.JustExtension() == "" )
    {
    }
    else
    {
        PascalCString extension = ".";
        extension += newName.JustExtension();
        newName.Replace( extension, "" );
    }
    //
    // Check the name and popup a warning if it's invalid.
    //
    FeData::NameManager nameManager;
    PascalCString checkName( newName );
    
    if( !nameManager.IsNameValid( checkName ) )
    {
        PascalCString message( "Warning! The name: " );
        message += checkName;
        message += " generates an invalid #define symbol.";

        ::MessageBox( NULL, message, NULL, MB_OK );
    }

    //
    // Convert spaces to underscores and underscores to 2 underscores.
    //
    int i = 0;
    while( newName[i] != '\0' )
    {
        switch( newName[i] )
        {
            case ' ':
            {
                defineName += "_";
                break;
            }

            case '_':
            {
                defineName += "__";
                break;
            }
            default:
            {
                defineName += newName[i];
                break;
            }
        }
        
        ++i;
    }
}

//===========================================================================
// HashedNameExporter::CreateFile
//===========================================================================
// Description: 
//
// Constraints:    
//
// Parameters:    
//
// Return:      
//
//===========================================================================
bool HashedNameExporter::CreateFile
(
    const char* filename
)
{
    m_hFile = ::CreateFile
    (
        filename,              // the path
        GENERIC_WRITE,         // open for writing
        0,                     // prevent sharing
        0,                     // security is ignored in Win95
        CREATE_ALWAYS,         // opens an existing file, creates a new file
        FILE_ATTRIBUTE_NORMAL, // normal file attributes
        0                      // no file to copy attributes from
    );
    
    if( m_hFile == INVALID_HANDLE_VALUE )
    {
        return( false );
    }

    return( true );
}

//===========================================================================
// HashedNameExporter::CloseFile
//===========================================================================
// Description: 
//
// Constraints:    
//
// Parameters:    
//
// Return:      
//
//===========================================================================
bool HashedNameExporter::CloseFile()
{
    ::CloseHandle( m_hFile );

    return( true );
}


//===========================================================================
// HashedNameExporter::Print
//===========================================================================
// Description: Writes the specified string to the output file.
//
// Constraints:    
//
// Parameters:    
//
// Return:      
//
//===========================================================================
bool HashedNameExporter::Print
(
    const char* string 
)
{
    // Get the number of bytes to be written
    DWORD dwBytesWritten;
    DWORD dwBytesToWrite = strlen( string );

    ::WriteFile
    ( 
        m_hFile,             // handle of file to write to
        (LPVOID)string,      // pointer to data to write to file
        dwBytesToWrite,      // number of bytes to write 
        &dwBytesWritten,     // pointer to number of bytes written 
        0                    // address of structure for data (must be non-zero if
                             // m_hfile is created with FILE_FLAG_OVERLAPPED set.
    );

    // The number of bytes actually written MUST equal the number of bytes requested,
    // otherwise we have some bad data (or a bad data file).
    if( dwBytesWritten != dwBytesToWrite )
    {
        return( false );
    }
    else
    {
        return( true );
    }
}

} // End NameSpace
