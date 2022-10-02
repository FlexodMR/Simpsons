//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Helper Classes
//
// Description: This contains the ResourceManager class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================
#pragma warning( disable : 4786 )  

#include "ResourceManager.h"
#include "OutputMessage.h"
#include "..\Resources\Resource.h"
#include "..\Resources\Image.h"
#include "..\Resources\MovieClip.h"
#include "..\Resources\Pure3dFile.h"
#include "..\Resources\TextBible.h"
#include "..\Resources\TextStyle.h"
#include "..\ResourceFiles\ImageFile.h"
#include "..\ResourceFiles\MovieClipFile.h"
#include "..\ResourceFiles\Pure3dFileFile.h"
#include "..\ResourceFiles\TextBibleFile.h"
#include "..\ResourceFiles\TextStyleFile.h"
#include "..\Factories\BaseFactory.h"
#include "..\NamedElements\Project.h"

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
// ResourceManager::ResourceManager
//===========================================================================
// Description: ResourceManager's constructor
//
// Constraints:    None
//
// Parameters:    None.
//
// Return:      Nothing
//
//===========================================================================

ResourceManager::ResourceManager():
m_ImageList(),
m_TextBibleList(),
m_TextStyleList()
{
}


//===========================================================================
// ResourceManager::~ResourceManager
//===========================================================================
// Description: ResourceManager's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ResourceManager::~ResourceManager()
{
    ClearList( m_ImageList );
    ClearList( m_TextBibleList );
    ClearList( m_TextStyleList );
    ClearList( m_Pure3dFileList );
    ClearList( m_MovieClipList );
}


//===========================================================================
// ResourceManager::AddImage
//===========================================================================
// Description: This is used to add a resource to the resouce list.
//
// Constraints:    None
//
// Parameters:    name     - The name of the resource.
//              fileName - The file name of the resource.
//              project  - The project this object is associated with.
//
// Return:      true  - if the resources was added succesfully
//              false - otherwise
//
//===========================================================================

bool ResourceManager::AddImage( PascalCString &name, FileName &fileName, 
                                Project* project )
{
    PascalCString message( "Adding image resource: " );
    message += name;
    g_OutputMessage.Add( message, DebugOutputMessage );


    // Try and find the file
    int index = Find( name, m_ImageList );

    if( index >= 0 )
    {
        g_OutputMessage.Add( "ResourceManager::AddImage: There is already an image with that name.",
                             WarningOutputMessage );
        return false;
    }

    // Create the new image class
    BaseFactory* objectFactory = project->GetObjectFactory();

    Image* newImage = objectFactory->NewImage();
    if( newImage == NULL )
    {
        g_OutputMessage.Add( "ResourceManager::AddImage: Out of memory!",
                             ErrorOutputMessage );
        return false;
    }

    // Load the image file
    ResourceFileManager* resourceFileManager = project->GetResourceFileManager();

    // load the page file.
    ImageFile* imageFile = resourceFileManager->GetImageFile( fileName, project );
    if( imageFile == NULL )
    {
        // Error message already shown
        delete newImage;
        return false;
    }

    newImage->SetName( name );
    newImage->SetResourceFile( imageFile, resourceFileManager );

    return AddNewResourceToList( newImage, m_ImageList );
}

//===========================================================================
// ResourceManager::AddMovieClip
//===========================================================================
// Description: This is used to add a resource to the resouce list.
//
// Constraints:    None
//
// Parameters:    name     - The name of the resource.
//              fileName - The file name of the resource.
//              project  - The project this object is associated with.
//
// Return:      true  - if the resources was added succesfully
//              false - otherwise
//
//===========================================================================
bool ResourceManager::AddMovieClip( PascalCString& name, FileName& fileName, 
                           Project* project )
{
    PascalCString message( "Adding MovieClip resource: " );
    message += name;
    g_OutputMessage.Add( message, DebugOutputMessage );


    // Try and find the file
    int index = Find( name, m_MovieClipList );

    if( index >= 0 )
    {
        g_OutputMessage.Add( "ResourceManager::AddMovieClip: There is already a movie clip with that name.",
                             WarningOutputMessage );
        return false;
    }

    // Create the new image class
    BaseFactory* objectFactory = project->GetObjectFactory();

    MovieClip* newMovieClip = objectFactory->NewMovieClip();
    if( newMovieClip == NULL )
    {
        g_OutputMessage.Add( "ResourceManager::AddMovieClip: Out of memory!",
                             ErrorOutputMessage );
        return false;
    }

    // Load the MovieClip file
    ResourceFileManager* resourceFileManager = project->GetResourceFileManager();

    // load the page file.
    MovieClipFile* movieClipFile = resourceFileManager->GetMovieClipFile( fileName, project );
    if( movieClipFile == NULL )
    {
        // Error message already shown
        delete newMovieClip;
        return false;
    }

    newMovieClip->SetName( name );
    newMovieClip->SetResourceFile( movieClipFile, resourceFileManager );

    return AddNewResourceToList( newMovieClip, m_MovieClipList );
}

//===========================================================================
// ResourceManager::AddPure3dFile
//===========================================================================
// Description: This is used to add a resource to the resouce list.
//
// Constraints:    None
//
// Parameters:    name     - The name of the resource.
//              fileName - The file name of the resource.
//              project  - The project this object is associated with.
//
// Return:      true  - if the resources was added succesfully
//              false - otherwise
//
//===========================================================================
bool ResourceManager::AddPure3dFile
( 
    PascalCString& name, 
    PascalCString& inventoryName,
    PascalCString& cameraName,
    PascalCString& animationName,
    FileName& fileName, 
    Project* project 
)
{
    PascalCString message( "Adding Pure3dFile resource: " );
    message += name;
    g_OutputMessage.Add( message, DebugOutputMessage );


    // Try and find the file
    int index = Find( name, m_Pure3dFileList );

    if( index >= 0 )
    {
        g_OutputMessage.Add( "ResourceManager::AddPure3dFile: There is already a Pure3dFile with that name.",
                             WarningOutputMessage );
        return false;
    }

    // Create the new object
    BaseFactory* objectFactory = project->GetObjectFactory();

    Pure3dFile* newPure3dFile = objectFactory->NewPure3dFile();
    if( newPure3dFile == NULL )
    {
        g_OutputMessage.Add( "ResourceManager::AddPure3dFile: Out of memory!",
                             ErrorOutputMessage );
        return false;
    }

    // Load the Pure3dFile file
    ResourceFileManager* resourceFileManager = project->GetResourceFileManager();

    //IAN IMPROVE: in retrospect Pure3dFile was not the best name choice
    // load the page file.
    Pure3dFileFile* pure3dFileFile = resourceFileManager->GetPure3dFileFile( fileName, project );
    if( pure3dFileFile == NULL )
    {
        // Error message already shown
        delete newPure3dFile;
        return false;
    }

    newPure3dFile->SetName( name );
    newPure3dFile->SetAnimationName( animationName );
    newPure3dFile->SetCameraName( cameraName );
    newPure3dFile->SetInventoryName( inventoryName );
    newPure3dFile->SetResourceFile( pure3dFileFile, resourceFileManager );
    return AddNewResourceToList( newPure3dFile, m_Pure3dFileList );
}

//===========================================================================
// ResourceManager::AddTextBible
//===========================================================================
// Description: This is used to add a resource to the resouce list.
//
// Constraints:    None
//
// Parameters:    name     - The name of the resource.
//              fileName - The file name of the resource.
//              project  - The project this object is associated with.
//
// Return:      true  - if the resources was added succesfully
//              false - otherwise
//
//===========================================================================

bool ResourceManager::AddTextBible( PascalCString &name, FileName &fileName, 
                                    Project* project )
{
    PascalCString message( "Adding text bible resource: " );
    message += name;
    g_OutputMessage.Add( message, DebugOutputMessage );


    // Try and find the file
    int index = Find( name, m_TextBibleList );

    if( index >= 0 )
    {
        g_OutputMessage.Add( "ResourceManager::AddTextBible: There is already a text bible with that name.",
                             WarningOutputMessage );
        return false;
    }

    // Create the new image class
    BaseFactory* objectFactory = project->GetObjectFactory();

    TextBible* newTextBible = objectFactory->NewTextBible();
    if( newTextBible == NULL )
    {
        g_OutputMessage.Add( "ResourceManager::AddTextBible: Out of memory!",
                             ErrorOutputMessage );
        return false;
    }

    // Load the image file
    ResourceFileManager* resourceFileManager = project->GetResourceFileManager();

    // load the page file.
    TextBibleFile* textBibleFile = resourceFileManager->GetTextBibleFile( fileName, project );
    if( textBibleFile == NULL )
    {
        // Error message already shown
        delete newTextBible;
        return false;
    }

    newTextBible->SetName( name );
    newTextBible->SetResourceFile( textBibleFile, resourceFileManager );

    return AddNewResourceToList( newTextBible, m_TextBibleList );
}


//===========================================================================
// ResourceManager::AddTextStyle
//===========================================================================
// Description: This is used to add a resource to the resouce list.
//
// Constraints:    None
//
// Parameters:    name     - The name of the resource.
//              fileName - The file name of the resource.
//              project  - The project this object is associated with.
//
// Return:      true  - if the resources was added succesfully
//              false - otherwise
//
//===========================================================================

bool ResourceManager::AddTextStyle( PascalCString &name, FileName &fileName, 
                                    Project* project )
{
    PascalCString message( "Adding text style resource: " );
    message += name;
    g_OutputMessage.Add( message, DebugOutputMessage );


    // Try and find the file
    int index = Find( name, m_TextStyleList );

    if( index >= 0 )
    {
        g_OutputMessage.Add( "ResourceManager::AddTextStyle: There is already a text style with that name.",
                             WarningOutputMessage );
        return false;
    }

    // Create the new image class
    BaseFactory* objectFactory = project->GetObjectFactory();

    TextStyle* newTextStyle = objectFactory->NewTextStyle();
    if( newTextStyle == NULL )
    {
        g_OutputMessage.Add( "ResourceManager::AddTextStyle: Out of memory!",
                             ErrorOutputMessage );
        return false;
    }

    // Load the image file
    ResourceFileManager* resourceFileManager = project->GetResourceFileManager();

    // load the page file.
    TextStyleFile* textTextStyleFile = resourceFileManager->GetTextStyleFile( fileName, project );
    if( textTextStyleFile == NULL )
    {
        // Error message already shown
        delete newTextStyle;
        return false;
    }

    newTextStyle->SetName( name );
    newTextStyle->SetResourceFile( textTextStyleFile, resourceFileManager );

    return AddNewResourceToList( newTextStyle, m_TextStyleList );
}


//===========================================================================
// ResourceManager::GetImage
//===========================================================================
// Description: This is used to retrieve a pointer to a resource.
//
// Constraints:    None
//
// Parameters:    name - The name of the resource.
//
// Return:      A pointer to the resource or NULL if an error occured.
//
//===========================================================================
Image* ResourceManager::GetImage( PascalCString &name )
{
    return dynamic_cast<Image*>( GetResource( name, m_ImageList ) );
}

//===========================================================================
// ResourceManager::GetImage
//===========================================================================
// Description: This is used to retrieve a pointer to a resource.
//
// Constraints:    None
//
// Parameters:    name - The name of the resource.
//
// Return:      A pointer to the resource or NULL if an error occured.
//
//===========================================================================
Image* ResourceManager::GetImage( const int i )
{
    return dynamic_cast< Image* >( GetResource( i, m_ImageList ) );
}

//===========================================================================
// ResourceManager::GetMovieClip
//===========================================================================
// Description: This is used to retrieve a pointer to a resource.
//
// Constraints:    None
//
// Parameters:    name - The name of the resource.
//
// Return:      A pointer to the resource or NULL if an error occured.
//
//===========================================================================
MovieClip* ResourceManager::GetMovieClip( PascalCString& name )
{
    return dynamic_cast<MovieClip*>( GetResource( name, m_MovieClipList ) );
}

//===========================================================================
// ResourceManager::GetMovieClip
//===========================================================================
// Description: This is used to retrieve a pointer to a resource.
//
// Constraints:    None
//
// Parameters:    name - The name of the resource.
//
// Return:      A pointer to the resource or NULL if an error occured.
//
//===========================================================================
MovieClip* ResourceManager::GetMovieClip( const int i )
{
    return dynamic_cast<MovieClip*>( GetResource( i, m_MovieClipList ) );
}

//===========================================================================
// ResourceManager::GetPure3dFile
//===========================================================================
// Description: This is used to retrieve a pointer to a resource.
//
// Constraints:    None
//
// Parameters:    name - The name of the resource.
//
// Return:      A pointer to the resource or NULL if an error occured.
//
//===========================================================================
Pure3dFile* ResourceManager::GetPure3dFile( PascalCString& name )
{
    return dynamic_cast<Pure3dFile*>( GetResource( name, m_Pure3dFileList ) );
}

//===========================================================================
// ResourceManager::GetPure3dFile
//===========================================================================
// Description: This is used to retrieve a pointer to a resource.
//
// Constraints:    None
//
// Parameters:    name - The name of the resource.
//
// Return:      A pointer to the resource or NULL if an error occured.
//
//===========================================================================
Pure3dFile* ResourceManager::GetPure3dFile( const int i )
{
    return dynamic_cast<Pure3dFile*>( GetResource( i, m_Pure3dFileList ) );
}

//===========================================================================
// ResourceManager::GetTextBible
//===========================================================================
// Description: This is used to retrieve a pointer to a resource.
//
// Constraints:    None
//
// Parameters:    name - The name of the resource.
//
// Return:      A pointer to the resource or NULL if an error occured.
//
//===========================================================================
TextBible* ResourceManager::GetTextBible( PascalCString &name )
{
    return dynamic_cast<TextBible*>( GetResource( name, m_TextBibleList ) );
}

//===========================================================================
// ResourceManager::GetTextBible
//===========================================================================
// Description: This is used to retrieve a pointer to a resource.
//
// Constraints:    None
//
// Parameters:    i - index of the resource
//
// Return:      A pointer to the resource or NULL if an error occured.
//
//===========================================================================
TextBible* ResourceManager::GetTextBible( const int i )
{
    return dynamic_cast<TextBible*>( GetResource( i, m_TextBibleList ) );
}

//===========================================================================
// ResourceManager::GetTextStyle
//===========================================================================
// Description: This is used to retrieve a pointer to a resource.
//
// Constraints:    None
//
// Parameters:    name - The name of the resource.
//
// Return:      A pointer to the resource or NULL if an error occured.
//
//===========================================================================
TextStyle* ResourceManager::GetTextStyle( PascalCString &name )
{
    return dynamic_cast< TextStyle* >( GetResource( name, m_TextStyleList ) );
}

//===========================================================================
// ResourceManager::GetTextStyle
//===========================================================================
// Description: This is used to retrieve a pointer to a resource.
//
// Constraints:    None
//
// Parameters:    index - the index of the text style we want
//
// Return:      A pointer to the resource or NULL if an error occured.
//
//===========================================================================
TextStyle* ResourceManager::GetTextStyle( const int index )
{
    return dynamic_cast< TextStyle* >( GetResource( index, m_TextStyleList ) );
}

//===========================================================================
// ResourceManager::Release
//===========================================================================
// Description: This is used to release a resource.
//
// Constraints:    None
//
// Parameters:    resource - This is a pointer to a pointer to the resource.
//                         If the reseource is found and released, the 
//                         pointer will be set to NULL.
//
// Return:      true  - if the resource was found and released
//              false - otherwise
//
//===========================================================================

bool ResourceManager::Release( Resource** resource )
{
    if( (resource == NULL) || (*resource == NULL) )
    {
        g_OutputMessage.Add( "ResourceManager::Release: Can't release a NULL pointer",
                             DebugOutputMessage );
        return false;
    }

    bool releasedFromImages     = TryRelease( resource, m_ImageList );
    bool releasedFromTextBibles = TryRelease( resource, m_TextBibleList );
    bool releasedFromTextStyles = TryRelease( resource, m_TextStyleList );
    return( releasedFromImages ||
            releasedFromTextBibles ||
            releasedFromTextStyles );
}


/*
bool ResourceManager::RemoveResource( Resource** resource )
{
    // Is it time to delete the file
    if( resourceStruct->m_Count <= 0 )
    {
        delete resourceStruct->m_Resource
        resourceStruct->m_Resource = NULL;

        delete resourceStruct;
        resourceStruct = NULL;

        m_ResourceList.RemoveElement( index );
    }
}
*/


//===========================================================================
// ResourceManager::GetNumberOfImages
//===========================================================================
// Description: This retrieves the number of images.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      the number of images
//
//===========================================================================
int ResourceManager::GetNumberOfImages() const
{
    return m_ImageList.GetNumberOfElements();
}

//===========================================================================
// ResourceManager::GetNumberOfMovieClips
//===========================================================================
// Description: This retrieves the number of movie clips
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      the number of movie clips
//
//===========================================================================
int ResourceManager::GetNumberOfMovieClips() const
{
    return m_MovieClipList.GetNumberOfElements();
}

//===========================================================================
// ResourceManager::GetNumberOfPure3dFiles
//===========================================================================
// Description: This retrieves the number of pure 3d files
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      the number of movie clips
//
//===========================================================================
int ResourceManager::GetNumberOfPure3dFiles() const
{
    return m_Pure3dFileList.GetNumberOfElements();
}

//===========================================================================
// ResourceManager::GetNumberOfTextBibles
//===========================================================================
// Description: This retrieves the number of text bibles.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      the number of text bibles
//
//===========================================================================

int ResourceManager::GetNumberOfTextBibles() const
{
    return m_TextBibleList.GetNumberOfElements();
}


//===========================================================================
// ResourceManager::GetNumberOfTextStyles
//===========================================================================
// Description: This retrieves the number of text styles.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      the number of text styles
//
//===========================================================================

int ResourceManager::GetNumberOfTextStyles() const
{
    return m_TextStyleList.GetNumberOfElements();
}


//===========================================================================
// ResourceManager::GetImageWithoutCounting (index)
//===========================================================================
// Description: This retrieves a pointer to a resource but does not increment
//              the counter for that resource.  This should be used rarely of 
//              very specialised purposes.  If a pointer is retrieved using
//              this call, Release must not be called on the pointer.
//
// Constraints:    None
//
// Parameters:    index - index of the resource to get
//
// Return:      A pointer to the resource or NULL if the resource could 
//              not be found.
//
//===========================================================================

Image* ResourceManager::GetImageWithoutCounting( int index )
{
    ResourceManagerStruct* resourceStruct = m_ImageList.GetElement( index );

    if( resourceStruct != NULL )
    {
        return dynamic_cast<Image*>( resourceStruct->m_Resource );
    }
    else
    {
        return NULL;
    }
}


//===========================================================================
// ResourceManager::GetImageWithoutCounting (name)
//===========================================================================
// Description: This retrieves a pointer to a resource but does not increment
//              the counter for that resource.  This should be used rarely of 
//              very specialised purposes.  If a pointer is retrieved using
//              this call, Release must not be called on the pointer.
//
// Constraints:    None
//
// Parameters:    name - name of the resource to get
//
// Return:      A pointer to the resource or NULL if the resource could 
//              not be found.
//
//===========================================================================

Image* ResourceManager::GetImageWithoutCounting( PascalCString& name )
{
     // Try and find the resource
    int index = Find( name, m_ImageList );

    // Did we find the resource
    if( index >= 0 )
    {
        ResourceManagerStruct* resourceStruct = m_ImageList.GetElement( index );
        return dynamic_cast<Image*>( resourceStruct->m_Resource );
    }
    else
    {
        return NULL;
    }
}

//===========================================================================
// ResourceManager::GetMovieClipWithoutCounting (index)
//===========================================================================
// Description: This retrieves a pointer to a resource but does not increment
//              the counter for that resource.  This should be used rarely of 
//              very specialised purposes.  If a pointer is retrieved using
//              this call, Release must not be called on the pointer.
//
// Constraints:    None
//
// Parameters:    index - index of the resource to get
//
// Return:      A pointer to the resource or NULL if the resource could 
//              not be found.
//
//===========================================================================
MovieClip* ResourceManager::GetMovieClipWithoutCounting( int index )
{
    ResourceManagerStruct* resourceStruct = m_MovieClipList.GetElement( index );

    if( resourceStruct != NULL )
    {
        return dynamic_cast<MovieClip*>( resourceStruct->m_Resource );
    }
    else
    {
        return NULL;
    }
}

//===========================================================================
// ResourceManager::GetMovieClipWithoutCounting (name)
//===========================================================================
// Description: This retrieves a pointer to a resource but does not increment
//              the counter for that resource.  This should be used rarely of 
//              very specialised purposes.  If a pointer is retrieved using
//              this call, Release must not be called on the pointer.
//
// Constraints:    None
//
// Parameters:    name - name of the resource to get
//
// Return:      A pointer to the resource or NULL if the resource could 
//              not be found.
//
//===========================================================================
MovieClip* ResourceManager::GetMovieClipWithoutCounting( PascalCString& name )
{
     // Try and find the resource
    int index = Find( name, m_MovieClipList );

    // Did we find the resource
    if( index >= 0 )
    {
        ResourceManagerStruct* resourceStruct = m_MovieClipList.GetElement( index );
        return dynamic_cast<MovieClip*>( resourceStruct->m_Resource );
    }
    else
    {
        return NULL;
    }
}

//===========================================================================
// ResourceManager::GetPure3dFileWithoutCounting (index)
//===========================================================================
// Description: This retrieves a pointer to a resource but does not increment
//              the counter for that resource.  This should be used rarely of 
//              very specialised purposes.  If a pointer is retrieved using
//              this call, Release must not be called on the pointer.
//
// Constraints:    None
//
// Parameters:    index - index of the resource to get
//
// Return:      A pointer to the resource or NULL if the resource could 
//              not be found.
//
//===========================================================================
Pure3dFile* ResourceManager::GetPure3dFileWithoutCounting( int index )
{
    ResourceManagerStruct* resourceStruct = m_Pure3dFileList.GetElement( index );

    if( resourceStruct != NULL )
    {
        return dynamic_cast<Pure3dFile*>( resourceStruct->m_Resource );
    }
    else
    {
        return NULL;
    }
}

//===========================================================================
// ResourceManager::GetPure3dFileWithoutCounting
//===========================================================================
// Description: This retrieves a pointer to a resource but does not increment
//              the counter for that resource.  This should be used rarely of 
//              very specialised purposes.  If a pointer is retrieved using
//              this call, Release must not be called on the pointer.
//
// Constraints:    None
//
// Parameters:    name - name of the resource to get
//
// Return:      A pointer to the resource or NULL if the resource could 
//              not be found.
//
//===========================================================================
Pure3dFile* ResourceManager::GetPure3dFileWithoutCounting( PascalCString& name )
{
     // Try and find the resource
    int index = Find( name, m_Pure3dFileList );

    // Did we find the resource
    if( index >= 0 )
    {
        ResourceManagerStruct* resourceStruct = m_Pure3dFileList.GetElement( index );
        return dynamic_cast<Pure3dFile*>( resourceStruct->m_Resource );
    }
    else
    {
        return NULL;
    }
}


//===========================================================================
// ResourceManager::GetTextBibleWithoutCounting (index)
//===========================================================================
// Description: This retrieves a pointer to a resource but does not increment
//              the counter for that resource.  This should be used rarely of 
//              very specialised purposes.  If a pointer is retrieved using
//              this call, Release must not be called on the pointer.
//
// Constraints:    None
//
// Parameters:    index - index of the resource to get
//
// Return:      A pointer to the resource or NULL if the resource could 
//              not be found.
//
//===========================================================================

TextBible* ResourceManager::GetTextBibleWithoutCounting( int index )
{
    ResourceManagerStruct* resourceStruct = m_TextBibleList.GetElement( index );

    if( resourceStruct != NULL )
    {
        return dynamic_cast<TextBible*>( resourceStruct->m_Resource );
    }
    else
    {
        return NULL;
    }
}


//===========================================================================
// ResourceManager::GetTextBibleWithoutCounting (name)
//===========================================================================
// Description: This retrieves a pointer to a resource but does not increment
//              the counter for that resource.  This should be used rarely of 
//              very specialised purposes.  If a pointer is retrieved using
//              this call, Release must not be called on the pointer.
//
// Constraints:    None
//
// Parameters:    name - name of the resource to get
//
// Return:      A pointer to the resource or NULL if the resource could 
//              not be found.
//
//===========================================================================

TextBible* ResourceManager::GetTextBibleWithoutCounting( PascalCString& name )
{
     // Try and find the resource
    int index = Find( name, m_TextBibleList );

    // Did we find the resource
    if( index >= 0 )
    {
        ResourceManagerStruct* resourceStruct = m_TextBibleList.GetElement( index );
        return dynamic_cast<TextBible*>( resourceStruct->m_Resource );
    }
    else
    {
        return NULL;
    }
}


//===========================================================================
// ResourceManager::GetTextStyleWithoutCounting (index)
//===========================================================================
// Description: This retrieves a pointer to a resource but does not increment
//              the counter for that resource.  This should be used rarely of 
//              very specialised purposes.  If a pointer is retrieved using
//              this call, Release must not be called on the pointer.
//
// Constraints:    None
//
// Parameters:    index - index of the resource to get
//
// Return:      A pointer to the resource or NULL if the resource could 
//              not be found.
//
//===========================================================================

TextStyle* ResourceManager::GetTextStyleWithoutCounting( int index )
{
    ResourceManagerStruct* resourceStruct = m_TextStyleList.GetElement( index );

    if( resourceStruct != NULL )
    {
        return dynamic_cast<TextStyle*>( resourceStruct->m_Resource );
    }
    else
    {
        return NULL;
    }
}


//===========================================================================
// ResourceManager::GetTextStyleWithoutCounting (name)
//===========================================================================
// Description: This retrieves a pointer to a resource but does not increment
//              the counter for that resource.  This should be used rarely of 
//              very specialised purposes.  If a pointer is retrieved using
//              this call, Release must not be called on the pointer.
//
// Constraints:    None
//
// Parameters:    name - name of the resource to get
//
// Return:      A pointer to the resource or NULL if the resource could 
//              not be found.
//
//===========================================================================

TextStyle* ResourceManager::GetTextStyleWithoutCounting( PascalCString& name )
{
     // Try and find the resource
    int index = Find( name, m_TextStyleList );

    // Did we find the resource
    if( index >= 0 )
    {
        ResourceManagerStruct* resourceStruct = m_TextStyleList.GetElement( index );
        return dynamic_cast<TextStyle*>( resourceStruct->m_Resource );
    }
    else
    {
        return NULL;
    }
}


//===========================================================================
// ResourceManager::GetImageInfo
//===========================================================================
// Description: This retrieves information about an image.
//
// Constraints:    None
//
// Parameters:    index    - index of the image to get info for
//              count    - place to put the reference count of the image
//              name     - place to put the name of the image
//              fileName - place to put the file name of the image
//
// Return:      true  - if the information could be retrieved fine,
//              false - otherwise
//
//===========================================================================

bool ResourceManager::GetImageInfo( int index, int &count, 
                                   PascalCString &name, PascalCString &fileName )
{
    PascalCString inventoryName;
    return GetResourceInfo( index, count, name, fileName, inventoryName, m_ImageList );
}

//===========================================================================
// ResourceManager::GetMovieClipInfo
//===========================================================================
// Description: This retrieves information about a movieClip.
//
// Constraints:    None
//
// Parameters:    index    - index of the image to get info for
//              count    - place to put the reference count of the resource
//              name     - place to put the name of the resource
//              fileName - place to put the file name of the resource
//
// Return:      true  - if the information could be retrieved fine,
//              false - otherwise
//
//===========================================================================
bool ResourceManager::GetMovieClipInfo( int index, int &count, 
                                   PascalCString &name, PascalCString &fileName )
{
    PascalCString inventoryName;
    return GetResourceInfo( index, count, name, fileName, inventoryName, m_MovieClipList );
}


//===========================================================================
// ResourceManager::GetPure3dFileInfo
//===========================================================================
// Description: This retrieves information about an pure3dfile.
//
// Constraints:    None
//
// Parameters:    index    - index of the image to get info for
//              count    - place to put the reference count of the resource
//              name     - place to put the name of the resource
//              fileName - place to put the file name of the resource
//
// Return:      true  - if the information could be retrieved fine,
//              false - otherwise
//
//===========================================================================
bool ResourceManager::GetPure3dFileInfo
( 
    int index, 
    int& count, 
    PascalCString& name, 
    PascalCString& animationName,
    PascalCString& cameraName,
    PascalCString& inventoryName,
    PascalCString& fileName 
)
{
    ResourceManagerStruct* resourceStruct = m_Pure3dFileList.GetElement( index );

    if( ( resourceStruct == NULL ) || 
        ( resourceStruct->m_Resource == NULL ) || 
        ( resourceStruct->m_Resource->GetResourceFile() == NULL ) )
    {
        return false;
    }

    Resource* resource = resourceStruct->m_Resource;
    Pure3dFile* p3dFile = dynamic_cast< Pure3dFile* >( resource );
    if( p3dFile == NULL )
    {
        return false;
    }
    animationName = p3dFile->GetAnimationName();
    cameraName = p3dFile->GetCameraName();
    inventoryName = p3dFile->GetInventoryName();

    PascalCString blah;

    return GetResourceInfo( index, count, name, fileName, blah, m_Pure3dFileList );
}


//===========================================================================
// ResourceManager::GetTextBibleInfo
//===========================================================================
// Description: This retrieves information about an text bible.
//
// Constraints:    None
//
// Parameters:    index    - index of the image to get info for
//              count    - place to put the reference count of the image
//              name     - place to put the name of the image
//              fileName - place to put the file name of the image
//
// Return:      true  - if the information could be retrieved fine,
//              false - otherwise
//
//===========================================================================

bool ResourceManager::GetTextBibleInfo( int index, int &count, 
                                   PascalCString &name, PascalCString &fileName, PascalCString& inventoryName )
{
    return GetResourceInfo( index, count, name, fileName, inventoryName, m_TextBibleList );
}


//===========================================================================
// ResourceManager::GetTextStyleInfo
//===========================================================================
// Description: This retrieves information about an text style.
//
// Constraints:    None
//
// Parameters:    index    - index of the image to get info for
//              count    - place to put the reference count of the image
//              name     - place to put the name of the image
//              fileName - place to put the file name of the image
//
// Return:      true  - if the information could be retrieved fine,
//              false - otherwise
//
//===========================================================================

bool ResourceManager::GetTextStyleInfo( int index, int &count, 
                                   PascalCString &name, PascalCString &fileName, PascalCString& inventoryName )
{
    return GetResourceInfo( index, count, name, fileName, inventoryName, m_TextStyleList );
}


//===========================================================================
// ResourceManager::AddNewResourceToList
//===========================================================================
// Description: This is used to add an element to the a list
//
// Constraints:    None
//
// Parameters:    resource - The resource to add.
//              resourceList - The list to add the resource to.
//              resourceFileManager - The resrou
//
// Return:      true  - if the element could be added,
//              false - otherwise
//
//===========================================================================

bool ResourceManager::AddNewResourceToList( Resource* resource,
                           ElementList<ResourceManagerStruct> &resourceList )
{
    // Create the new struct
    ResourceManagerStruct* resourceStruct = new ResourceManagerStruct;

    if( resourceStruct == NULL )
    {
        g_OutputMessage.Add( "ResourceManager::AddNewResourceToList: Out of memory!",
                             ErrorOutputMessage );
        delete resource;
        return false;
    }

    resourceStruct->m_Resource = resource;
    resourceStruct->m_Count    = 0;
    
    return resourceList.AddElementToBack( resourceStruct );
}


//===========================================================================
// ResourceManager::Find (with object pointer)
//===========================================================================
// Description: This is used to find the index of a resource in the list.
//
// Constraints:    None
//
// Parameters:    resourceFile - This is a pointer to the resource file to be
//                             found.
//              resourceList - The resource list to search.
//
// Return:      The index of the resource if it is found,
//              -1 if not found.
//
//===========================================================================

int ResourceManager::Find
( 
    Resource* resource,
    ElementList<ResourceManagerStruct> &resourceList 
)
{
    // Search the list
    for( int i = 0; i < resourceList.GetNumberOfElements(); i++ )
    {
        ResourceManagerStruct* resourceStruct = resourceList.GetElement( i );

        if( (resourceStruct != NULL) && 
            (resource == resourceStruct->m_Resource) )
        {
            // Resource has been found, return the index
            return i;
        }
    }

    // The Resource was not found, return -1
    return -1;
}


//===========================================================================
// ResourceManager::Find (with name)
//===========================================================================
// Description: This is used to find the index of a resource in a resource
//              list.
//
// Constraints:    None
//
// Parameters:    name - The name of the resource.
//              resourceList - The resource list to search.
//
// Return:      The index of the resource if it is found,
//              -1 if not found.
//
//===========================================================================

int ResourceManager::Find
( 
    PascalCString &name,
    ElementList<ResourceManagerStruct> &resourceList 
) 
{
    // Search the list
    for( int i = 0; i < resourceList.GetNumberOfElements(); i++ )
    {
        ResourceManagerStruct* resourceStruct = resourceList.GetElement( i );

        if( resourceStruct != NULL )
        {
            // Get the resource
            Resource* resource = resourceStruct->m_Resource;

            if( (resource != NULL) &&
                (name.EqualsInsensitive(resource->GetName()) ) )
            {
                // Resource has been found, return the index
                return i;
            }
        }
    }

    // The Resource was not found, return -1
    return -1;
}

//===========================================================================
// ResourceManager::GetResource
//===========================================================================
// Description: This is used to retrieve a pointer to a resource.
//
// Constraints:    None
//
// Parameters:    i - the index
//              resourceList - The list to look in.
//
// Return:      A pointer to the resource or NULL if an error occured.
//
//===========================================================================
Resource* ResourceManager::GetResource( const int index,
                       ElementList<ResourceManagerStruct>& resourceList)
{
    ResourceManagerStruct* resourceStruct = resourceList.GetElement( index );

    // Increase the count
    resourceStruct->m_Count++;

    // Return the file pointer
    return resourceStruct->m_Resource;
}

//===========================================================================
// ResourceManager::GetResource
//===========================================================================
// Description: This is used to retrieve a pointer to a resource.
//
// Constraints:    None
//
// Parameters:    name - The name of the resource.
//              resourceList - The list to look in.
//
// Return:      A pointer to the resource or NULL if an error occured.
//
//===========================================================================
Resource* ResourceManager::GetResource( PascalCString &name,
                                        ElementList<ResourceManagerStruct> &resourceList )
{
    // Try and find the file
    int index = Find( name, resourceList );

    // Did we find the file
    if( index >= 0 )
    {
        ResourceManagerStruct* resourceStruct = resourceList.GetElement( index );

        // Increase the count
        resourceStruct->m_Count++;

        // Return the file pointer
        return resourceStruct->m_Resource;
    }
    else
    {
        return NULL;
    }
}

//===========================================================================
// ResourceManager::GetResourceInfo
//===========================================================================
// Description: This retrieves information about an resource.
//
// Constraints:    None
//
// Parameters:    index    - index of the image to get info for
//              count    - place to put the reference count of the image
//              name     - place to put the name of the image
//              fileName - place to put the file name of the image
//              resourceList - the list to get the info from
//
// Return:      true  - if the information could be retrieved fine,
//              false - otherwise
//
//===========================================================================

bool ResourceManager::GetResourceInfo( int index, int &count, 
                                       PascalCString &name, PascalCString &fileName, PascalCString &inventoryName,
                                       ElementList<ResourceManagerStruct> &resourceList )
{
    ResourceManagerStruct* resourceStruct = resourceList.GetElement( index );

    if( (resourceStruct == NULL) || 
        (resourceStruct->m_Resource == NULL) || 
        (resourceStruct->m_Resource->GetResourceFile() == NULL) )
    {
        return false;
    }

    Resource* resource = resourceStruct->m_Resource;

    count    = resourceStruct->m_Count;
    name     = resource->GetName();
    inventoryName = resource->GetResourceFile()->GetInventoryName();

    FileName tempFileName = resource->GetResourceFile()->GetFileName();
    tempFileName.Get( fileName );
    return true;
}


//===========================================================================
// ResourceManager::TryRelease
//===========================================================================
// Description: This is used to release a resource from a given list.
//
// Constraints:    None
//
// Parameters:    resource - This is a pointer to a pointer to the resource.
//                         If the reseource is found and released, the 
//                         pointer will be set to NULL.
//              resourceList - The resource list to look in.
//
// Return:      true  - if the resource was found and released
//              false - otherwise
//
//===========================================================================

bool ResourceManager::TryRelease( Resource** resource,
                                  ElementList<ResourceManagerStruct> &resourceList )
{
    // Try and find the file
    int index = Find( *resource, resourceList );

    // Did we find the file
    if( index >= 0 )
    {
        ResourceManagerStruct* resourceStruct = resourceList.GetElement( index );

        // Decrease the count
        resourceStruct->m_Count--;

        if( resourceStruct->m_Count < 0 )
        {
            g_OutputMessage.Add( "ResourceManager::TryRelease: Object released to many times:",
                                 DebugOutputMessage );
            g_OutputMessage.Add( resourceStruct->m_Resource->GetName(),
                                 DebugOutputMessage );

            resourceStruct->m_Count = 0;
        }

        *resource = NULL;
        return true;
    }
    else
    {
        return false;
    }
}


//===========================================================================
// ResourceManager::ClearList
//===========================================================================
// Description: This is used to clear a resource list.
//
// Constraints:    None
//
// Parameters:    resourceList - The resource list to clear.
//
// Return:      Nothing
//
//===========================================================================

void ResourceManager::ClearList( ElementList<ResourceManagerStruct> &resourceList )
{
    bool shownWarning = false;

    // Delete anything in the list
    for( int i = 0; i < resourceList.GetNumberOfElements(); i++ )
    {
        ResourceManagerStruct* resourceStruct = resourceList.GetElement( i );

        if( resourceStruct != NULL )
        {
            // Get the resource
            if( resourceStruct->m_Resource != NULL )
            {
                if( resourceStruct->m_Count > 0 )
                {
                    if( !shownWarning )
                    {
                        g_OutputMessage.Add( "ResourceManager::ClearList: Not all references to resource have been released!",
                                             DebugOutputMessage );
                        shownWarning = true;
                    }

                    g_OutputMessage.Add( resourceStruct->m_Resource->GetName(),
                                         DebugOutputMessage );
                }

                // Delete the resource
                delete resourceStruct->m_Resource;
                resourceStruct->m_Resource = NULL;
            }

            // Delete the file resourceStruct
            delete resourceStruct;
            resourceStruct = NULL;
        }
    }
}


} // End NameSpace
