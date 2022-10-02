//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the PageSaver class.
//
// Authors:     Eric Tong, Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "PageSaver.h"
#include "LayerSaver.h"
#include "..\Helpers\ResourceManager.h"
#include "..\Loaders\PageLoader.h"
#include "..\Loaders\LayerLoader.h"
#include "..\NamedElements\Project.h"
#include "..\NamedElements\Page.h"
#include "..\NamedElements\Layer.h"
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
// PageSaver::PageSaver
//===========================================================================
// Description: PageSaver's constructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

PageSaver::PageSaver()
{
}


//===========================================================================
// PageSaver::~PageSaver
//===========================================================================
// Description: PageSaver's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

PageSaver::~PageSaver()
{
}


//===========================================================================
// PageSaver::Save
//===========================================================================
// Description: This is used to save a Page to a file.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      true  - if the element could be added
//              false - otherwise.
//
//===========================================================================

bool PageSaver::Save( Page* thePage )
{
    int i;
    XMLSaver theSaver;

    Project* project = thePage->GetProject();

    PascalCString projectPathString = project->GetRootPath();
    projectPathString += project->GetPagePath();

    PascalCString pageFullNameString = projectPathString;
    pageFullNameString += PascalCString( thePage->GetName() );
//    pageFullNameString += ".pag";

    PascalCString message( "Saving page file: " );
    message += pageFullNameString;
    g_OutputMessage.Add( message );

    if( !theSaver.OpenFile( pageFullNameString ) )
    {
        g_OutputMessage.Add( "PageSaver::Save: Could not open Page file.",
            ErrorOutputMessage );
        return false;
    }

    theSaver.PushElement( g_PageTag );

    // Save the version
    theSaver.PushElement( g_PageTagVersion );
    theSaver.AddAttribute( g_PageTagVersionValue, thePage->GetVersion() );
    theSaver.PopElement();

    // Save the resolution
    theSaver.PushElement( g_PageTagResolution );
    theSaver.AddAttribute( g_PageTagResolutionWidth, thePage->GetResolutionWidth() );
    theSaver.AddAttribute( g_PageTagResolutionHeight, thePage->GetResolutionHeight() );
    theSaver.PopElement();

    // Save the resources
    theSaver.PushElement( g_PageTagResources );
    ResourceManager* resMan = thePage->GetResourceManager();

    // Save the image resources
    theSaver.PushElement( g_PageTagResourcesImages );
    
    for( i = 0; i < resMan->GetNumberOfImages(); i++ )
    {
        int count;
        PascalCString name;
        PascalCString fileName;
        if( (resMan->GetImageInfo( i, count, name, fileName )) &&
            (count > 0) )
        {
//            StripResourcePath( thePage, fileName );

            theSaver.PushElement( g_PageTagResourcesImage );
            theSaver.AddAttribute( g_PageTagResourcesName, name );
            theSaver.AddAttribute( g_PageTagResourcesData, fileName );
            theSaver.PopElement();
        }
    }

    theSaver.PopElement();  // End PageTagResourcesImages

    // Save the movieClip resources
    theSaver.PushElement( g_PageTagResourcesMovieClips );
    
    for( i = 0; i < resMan->GetNumberOfMovieClips(); i++ )
    {
        int count;
        PascalCString name;
        PascalCString fileName;
        if( (resMan->GetMovieClipInfo( i, count, name, fileName )) &&
            (count > 0) )
        {
            StripResourcePath( thePage, fileName );

            theSaver.PushElement( g_PageTagResourcesMovieClip );
            theSaver.AddAttribute( g_PageTagResourcesName, name );
            theSaver.AddAttribute( g_PageTagResourcesData, fileName );
            theSaver.PopElement();
        }
    }
    theSaver.PopElement();  // End PageTagResourcesImages

    // Save the Pure3dFile resources
    theSaver.PushElement( g_PageTagResourcesPure3dFiles );
    
    for( i = 0; i < resMan->GetNumberOfPure3dFiles(); i++ )
    {
        int count;
        PascalCString name;
        PascalCString fileName;
        PascalCString animationName;
        PascalCString cameraName;
        PascalCString inventoryName;
        if( (resMan->GetPure3dFileInfo( i, count, name, animationName, cameraName, inventoryName, fileName )) &&
            (count > 0) )
        {
            StripResourcePath( thePage, fileName );

            theSaver.PushElement( g_PageTagResourcesPure3dFile );
            theSaver.AddAttribute( g_PageTagResourcesName, name );
            theSaver.AddAttribute( g_PageTagResourcesData, fileName );
            theSaver.AddAttribute( g_PageTagResourcesP3dInvent, inventoryName );
            theSaver.AddAttribute( g_PageTagResourcesP3dCamera, cameraName );
            theSaver.AddAttribute( g_PageTagResourcesP3dAnim, animationName );
            theSaver.PopElement();
        }
    }
    theSaver.PopElement();  // End PageTagResourcesImages



    // Save the text bible resources
    theSaver.PushElement( g_PageTagResourcesTextBibles );
    
    for( i = 0; i < resMan->GetNumberOfTextBibles(); i++ )
    {
        int count;
        PascalCString name;
        PascalCString fileName;
        PascalCString inventoryName;
        if( (resMan->GetTextBibleInfo( i, count, name, fileName, inventoryName )) &&
            (count > 0) )
        {
            StripResourcePath( thePage, fileName );

            theSaver.PushElement( g_PageTagResourcesTextBible );
            theSaver.AddAttribute( g_PageTagResourcesName, name );
            theSaver.AddAttribute( g_PageTagResourcesData, fileName );
            theSaver.AddAttribute( g_PageTagResourcesInventory, inventoryName );
            theSaver.PopElement();
        }
    }

    theSaver.PopElement();  // End PageTagResourcesTextBibles

    // Save the text style resources
    theSaver.PushElement( g_PageTagResourcesTextStyles );
    
    for( i = 0; i < resMan->GetNumberOfTextStyles(); i++ )
    {
        int count;
        PascalCString name;
        PascalCString fileName;
        PascalCString inventoryName;
        if( (resMan->GetTextStyleInfo( i, count, name, fileName, inventoryName )) &&
            (count > 0) )
        {
//            StripResourcePath( thePage, fileName );

            theSaver.PushElement( g_PageTagResourcesTextStyle );
            theSaver.AddAttribute( g_PageTagResourcesName, name );
            theSaver.AddAttribute( g_PageTagResourcesData, fileName );
            theSaver.AddAttribute( g_PageTagResourcesInventory, inventoryName );
            theSaver.PopElement();
        }
    }

    theSaver.PopElement();  // End PageTagResourcesTextStyles

    theSaver.PopElement();  // End PageTagResources


    // Save the layers
    theSaver.PushElement( g_PageTagLayers );

    int numLayers = thePage->GetNumberOfLayers();
    for( i = numLayers - 1; i >= 0; i-- )
    {
        LayerSaver saver;
        Layer* layer = thePage->GetLayer( i );
        if( layer != NULL )
        {
            saver.Save( layer, theSaver );
        }
    }

    theSaver.PopElement();  // End PageTagLayers

    theSaver.PopElement();  // End PageTag

    theSaver.CloseFile();

    return true;
}


//===========================================================================
// PageSaver::Save
//===========================================================================
// Description: This takes a full resource file name and removes the starting
//              resource path.  
//              For example, if the resource path was:
//                  "c:\project\resources\"
//              and the fileName started as:
//                  "c:\project\resources\Images\Image1.png"
//              the resulting fileName would be:
//                  "Images\Image1.png"
//
// Constraints:    None
//
// Parameters:    thePage  - the page the resource belongs to
//              fileName - the file name to strip
//              
//
// Return:      true  - if everything was ok,
//              false - otherwise.
//
//===========================================================================

bool PageSaver::StripResourcePath( Page* thePage, PascalCString &fileName )
{
    Project* project = thePage->GetProject();

    PascalCString projectPathString = project->GetRootPath();
    projectPathString += project->GetResourcePath();

    int newLength = fileName.Length() - projectPathString.Length();
    if( newLength < 0 )
    {
//        g_OutputMessage.Add( "PageSaver::StripResourcePath: Warning, resource file name may to be corrupt!",
//                             WarningOutputMessage );
        return false;
    }


    char* buffer = new char[ newLength + 1 ];

    int i;
    for( i = 0; i < newLength; i++ )
    {
        buffer[i] = fileName[ i + projectPathString.Length() ];
    }
    buffer[ newLength ] = '\0';

    fileName = buffer;

    delete [] buffer;
    return true;
}


} // End NameSpace
