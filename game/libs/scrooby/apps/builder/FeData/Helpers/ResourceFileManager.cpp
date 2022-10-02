//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Helper Classes
//
// Description: This contains the ResourceFileManager class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================
#pragma warning( disable : 4786 )  

#include "..\Factories\BaseFactory.h"
#include "..\NamedElements\Project.h"
#include "OutputMessage.h"
#include "ResourceFileManager.h"
#include "..\ResourceFiles\ResourceFile.h"
#include "..\ResourceFiles\ImageFile.h"
#include "..\ResourceFiles\MovieClipFile.h"
#include "..\ResourceFiles\Pure3dFileFile.h"
#include "..\ResourceFiles\TextBibleFile.h"
#include "..\ResourceFiles\TextStyleFile.h"
#include "..\ResourceFiles\PageFile.h"
#include "..\ResourceFiles\ScreenFile.h"

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
// ResourceFileManager::ResourceFileManager
//===========================================================================
// Description: ResourceFileManager's constructor
//
// Constraints:    None
//
// Parameters:    None.
//
// Return:      Nothing
//
//===========================================================================

ResourceFileManager::ResourceFileManager():
m_ResourceFileList()
{
}


//===========================================================================
// ResourceFileManager::~ResourceFileManager
//===========================================================================
// Description: ResourceFileManager's destructor
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================

ResourceFileManager::~ResourceFileManager()
{
    // Do we have anything in the list
    if( m_ResourceFileList.GetNumberOfElements() > 0 )
    {
        g_OutputMessage.Add( "ResourceFileManager::~ResourceFileManager: Not all references to resource files have been released!",
                             DebugOutputMessage );

        // Delete anything in the list
        for( int i = 0; i < m_ResourceFileList.GetNumberOfElements(); i++ )
        {
            ResourceFileManagerStruct* fileStruct = m_ResourceFileList.GetElement( i );

            if( fileStruct != NULL )
            {
                // Get the file
                ResourceFile* file = fileStruct->m_ResourceFile;

                PascalCString tempFileName;
                file->GetFileName().Get( tempFileName );

                g_OutputMessage.Add( tempFileName, DebugOutputMessage );
    
                // Delete the file
                if( file != NULL )
                {
                    delete file;
                    file = NULL;
                }

                // Delete the file struct
                delete fileStruct;
                fileStruct = NULL;
            }
        }
    }
}

//===========================================================================
// ResourceFileManager::GetNumberOfPages
//===========================================================================
// Description: determines how many pages the resource file manager knows of
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      int - the number of pages
//
//===========================================================================
int ResourceFileManager::GetNumberOfPages() const
{
    int total = 0;
    int size = m_ResourceFileList.GetNumberOfElements();
    int i;
    for( i = 0; i < size; i++ )
    {
        ResourceFileManagerStruct* r = m_ResourceFileList[ i ];
        PageFile* pagefile =  dynamic_cast< PageFile* >( r->m_ResourceFile );
        if( pagefile != NULL )
        {
            total++;
        }
    }
    return total;
}

//===========================================================================
// ResourceFileManager::GetImageFile
//===========================================================================
// Description: This is used to retrieve a pointer to a resource file.  If 
//              the resource file is already in memory, a pointer to the 
//              existing resource file class is returned.  If the resource 
//              file is not in memory, the file is loaded and a pointer to 
//              the new resource file class is returned.
//
// Constraints:    None
//
// Parameters:    fileName - The name of the resource file.
//              project  - The project this object is associated with.
//
// Return:      A pointer to the resource file or NULL if an error occured.
//
//===========================================================================
ImageFile* ResourceFileManager::GetImageFile( FileName &fileName, Project* project )
{
    // Try and find the file
    int index = Find( fileName );

    // Did we find the file
    if( index >= 0 )
    {
        PascalCString message( "Image file already loaded, using existing copy: " );
        PascalCString fileNameString;
        fileName.Get( fileNameString );
        message += fileNameString;
        g_OutputMessage.Add( message, DebugOutputMessage );

        ResourceFileManagerStruct* fileStruct = m_ResourceFileList.GetElement( index );

        // Increase the count
        fileStruct->m_Count++;

        // Return the file pointer
        return dynamic_cast<ImageFile*>(fileStruct->m_ResourceFile);
    }
    else
    {
        // Get the object factory
        BaseFactory* objectFactory = project->GetObjectFactory();

        // Create the image
        ImageFile* imageFile = objectFactory->NewImageFile( fileName );
         
        if( imageFile == NULL )
        {
            g_OutputMessage.Add( "ResourceFileManager::GetImageFile: Out of memory!",
                                 ErrorOutputMessage );
            return NULL;
        }

        // Load the file
        project->GotoResourceDirectory();
        if( !imageFile->Load() )
        {
            char message[ 1000 ] = "";
            PascalCString pcsFilename;
            fileName.Get( pcsFilename );
            sprintf( message, "ResourceFileManager::could not load image file \"%s\"", pcsFilename );
            g_OutputMessage.Add( message, WarningOutputMessage );

            // Could not load the image
            // This is such a hack, but it allows the p3d Export to happen
#pragma message ("### ResourceFileManager::GetImageFile : this workaround should be fixed as soon as possible")
            //delete imageFile;
            //return NULL;
            return imageFile;
        }

        // Create the new struct
        ResourceFileManagerStruct* fileStruct = new ResourceFileManagerStruct;

        if( fileStruct == NULL )
        {
            g_OutputMessage.Add( "ResourceFileManager::GetImageFile: Out of memory!",
                                 ErrorOutputMessage );
            delete imageFile;
            return NULL;
        }

        fileStruct->m_ResourceFile = imageFile;
        fileStruct->m_Count = 1;
        m_ResourceFileList.AddElementToBack( fileStruct );

        // return the new image
        return imageFile;
    }
}

//===========================================================================
// ResourceFileManager::GetMovieClipFile
//===========================================================================
// Description: This is used to retrieve a pointer to a resource file.  If 
//              the resource file is already in memory, a pointer to the 
//              existing resource file class is returned.  If the resource 
//              file is not in memory, the file is loaded and a pointer to 
//              the new resource file class is returned.
//
// Constraints:    None
//
// Parameters:    fileName - The name of the resource file.
//              project  - The project this object is associated with.
//
// Return:      A pointer to the resource file or NULL if an error occured.
//
//===========================================================================
MovieClipFile* ResourceFileManager::GetMovieClipFile( FileName &fileName, Project* project )
{
    // Try and find the file
    int index = Find( fileName );

    // Did we find the file
    if( index >= 0 )
    {
        PascalCString message( "MovieClip file already loaded, using existing copy: " );
        PascalCString fileNameString;
        fileName.Get( fileNameString );
        message += fileNameString;
        g_OutputMessage.Add( message, DebugOutputMessage );

        ResourceFileManagerStruct* fileStruct = m_ResourceFileList.GetElement( index );

        // Increase the count
        fileStruct->m_Count++;

        // Return the file pointer
        return dynamic_cast< MovieClipFile* >( fileStruct->m_ResourceFile );
    }
    else
    {
        // Get the object factory
        BaseFactory* objectFactory = project->GetObjectFactory();

        // Create the image
        MovieClipFile* movieClipFile = objectFactory->NewMovieClipFile( fileName );
         
        if( movieClipFile == NULL )
        {
            g_OutputMessage.Add( "ResourceFileManager::GetMovieClipFile: Out of memory!",
                                 ErrorOutputMessage );
            return NULL;
        }

        // Load the file
        if( !movieClipFile->Load() )
        {
            // Could not load the text bible
            delete movieClipFile;
            return NULL;
        }

        // Create the new struct
        ResourceFileManagerStruct* fileStruct = new ResourceFileManagerStruct;

        if( fileStruct == NULL )
        {
            g_OutputMessage.Add( "ResourceFileManager::GetMovieClipFile: Out of memory!",
                                 ErrorOutputMessage );
            delete movieClipFile;
            return NULL;
        }

        fileStruct->m_ResourceFile = movieClipFile;
        fileStruct->m_Count = 1;
        m_ResourceFileList.AddElementToBack( fileStruct );

        // return the new MovieClipFile
        return movieClipFile;
    }
}

//===========================================================================
// ResourceFileManager::GetPure3dFileFile
//===========================================================================
// Description: This is used to retrieve a pointer to a resource file.  If 
//              the resource file is already in memory, a pointer to the 
//              existing resource file class is returned.  If the resource 
//              file is not in memory, the file is loaded and a pointer to 
//              the new resource file class is returned.
//
// Constraints:    None
//
// Parameters:    fileName - The name of the resource file.
//              project  - The project this object is associated with.
//
// Return:      A pointer to the resource file or NULL if an error occured.
//
//===========================================================================
Pure3dFileFile* ResourceFileManager::GetPure3dFileFile( FileName &fileName, Project* project )
{
    // Try and find the file
    int index = Find( fileName );

    // Did we find the file
    if( index >= 0 )
    {
        PascalCString message( "Pure3dFile file already loaded, using existing copy: " );
        PascalCString fileNameString;
        fileName.Get( fileNameString );
        message += fileNameString;
        g_OutputMessage.Add( message, DebugOutputMessage );

        ResourceFileManagerStruct* fileStruct = m_ResourceFileList.GetElement( index );

        // Increase the count
        fileStruct->m_Count++;

        // Return the file pointer
        return dynamic_cast< Pure3dFileFile* >( fileStruct->m_ResourceFile );
    }
    else
    {
        // Get the object factory
        BaseFactory* objectFactory = project->GetObjectFactory();

        // Create the image
        Pure3dFileFile* pure3dFileFile = objectFactory->NewPure3dFileFile( fileName );
         
        if( pure3dFileFile == NULL )
        {
            g_OutputMessage.Add( "ResourceFileManager::GetPure3dFileFile: Out of memory!",
                                 ErrorOutputMessage );
            return NULL;
        }

        // Load the file
//        if( !pure3dFileFile->Load() )
//        {
//            // Could not load the text bible
//            delete pure3dFileFile;
//            return NULL;
//        }

        // Create the new struct
        ResourceFileManagerStruct* fileStruct = new ResourceFileManagerStruct;

        if( fileStruct == NULL )
        {
            g_OutputMessage.Add( "ResourceFileManager::GetPure3dFileFile: Out of memory!",
                                 ErrorOutputMessage );
            delete pure3dFileFile;
            return NULL;
        }

        fileStruct->m_ResourceFile = pure3dFileFile;
        fileStruct->m_Count = 1;
        m_ResourceFileList.AddElementToBack( fileStruct );

        // return the new pure3dFile
        return pure3dFileFile;
    }
}

//===========================================================================
// ResourceFileManager::GetTextBibleFile
//===========================================================================
// Description: This is used to retrieve a pointer to a resource file.  If 
//              the resource file is already in memory, a pointer to the 
//              existing resource file class is returned.  If the resource 
//              file is not in memory, the file is loaded and a pointer to 
//              the new resource file class is returned.
//
// Constraints:    None
//
// Parameters:    fileName - The name of the resource file.
//              project  - The project this object is associated with.
//
// Return:      A pointer to the resource file or NULL if an error occured.
//
//===========================================================================

TextBibleFile* ResourceFileManager::GetTextBibleFile( FileName &fileName, Project* project )
{
    // Try and find the file
    int index = Find( fileName );

    // Did we find the file
    if( index >= 0 )
    {
        PascalCString message( "Text bible file already loaded, using existing copy: " );
        PascalCString fileNameString;
        fileName.Get( fileNameString );
        message += fileNameString;
        g_OutputMessage.Add( message, DebugOutputMessage );

        ResourceFileManagerStruct* fileStruct = m_ResourceFileList.GetElement( index );

        // Increase the count
        fileStruct->m_Count++;

        // Return the file pointer
        return dynamic_cast<TextBibleFile*>(fileStruct->m_ResourceFile);
    }
    else
    {
        // Get the object factory
        BaseFactory* objectFactory = project->GetObjectFactory();

        // Create the image
        TextBibleFile* textBibleFile = objectFactory->NewTextBibleFile( fileName );
         
        if( textBibleFile == NULL )
        {
            g_OutputMessage.Add( "ResourceFileManager::GetTextBibleFile: Out of memory!",
                                 ErrorOutputMessage );
            return NULL;
        }

        // Load the file
        project->GotoResourceDirectory();
        if( !textBibleFile->Load() )
        {
            // Could not load the text bible
            delete textBibleFile;
            return NULL;
        }

        // Create the new struct
        ResourceFileManagerStruct* fileStruct = new ResourceFileManagerStruct;

        if( fileStruct == NULL )
        {
            g_OutputMessage.Add( "ResourceFileManager::GetTextBibleFile: Out of memory!",
                                 ErrorOutputMessage );
            delete textBibleFile;
            return NULL;
        }

        fileStruct->m_ResourceFile = textBibleFile;
        fileStruct->m_Count = 1;
        m_ResourceFileList.AddElementToBack( fileStruct );

        // return the new image
        return textBibleFile;
    }
}


//===========================================================================
// ResourceFileManager::GetTextStyleFile
//===========================================================================
// Description: This is used to retrieve a pointer to a resource file.  If 
//              the resource file is already in memory, a pointer to the 
//              existing resource file class is returned.  If the resource 
//              file is not in memory, the file is loaded and a pointer to 
//              the new resource file class is returned.
//
// Constraints:    None
//
// Parameters:    fileName - The name of the resource file.
//              project  - The project this object is associated with.
//
// Return:      A pointer to the resource file or NULL if an error occured.
//
//===========================================================================
TextStyleFile* ResourceFileManager::GetTextStyleFile( FileName &fileName, Project* project )
{
    // Try and find the file
    int index = Find( fileName );

    // Did we find the file
    if( index >= 0 )
    {
        PascalCString message( "Text style file already loaded, using existing copy: " );
        PascalCString fileNameString;
        fileName.Get( fileNameString );
        message += fileNameString;
        g_OutputMessage.Add( message, DebugOutputMessage );

        ResourceFileManagerStruct* fileStruct = m_ResourceFileList.GetElement( index );

        // Increase the count
        fileStruct->m_Count++;

        // Return the file pointer
        return dynamic_cast<TextStyleFile*>(fileStruct->m_ResourceFile);
    }
    else
    {
        // Get the object factory
        BaseFactory* objectFactory = project->GetObjectFactory();

        // Create the image
        TextStyleFile* textStyleFile = objectFactory->NewTextStyleFile( fileName );
         
        if( textStyleFile == NULL )
        {
            g_OutputMessage.Add( "ResourceFileManager::GetTextStyleFile: Out of memory!",
                                 ErrorOutputMessage );
            return NULL;
        }

        // Load the file
        project->GotoResourceDirectory();
        if( !textStyleFile->Load() )
        {
            // Could not load the text bible
            delete textStyleFile;
            return NULL;
        }

        // Create the new struct
        ResourceFileManagerStruct* fileStruct = new ResourceFileManagerStruct;

        if( fileStruct == NULL )
        {
            g_OutputMessage.Add( "ResourceFileManager::GetTextBibleFile: Out of memory!",
                                 ErrorOutputMessage );
            delete textStyleFile;
            return NULL;
        }

        fileStruct->m_ResourceFile = textStyleFile;
        fileStruct->m_Count = 1;
        m_ResourceFileList.AddElementToBack( fileStruct );

        // return the new image
        return textStyleFile;
    }
}


//===========================================================================
// ResourceFileManager::GetPageFile
//===========================================================================
// Description: This is used to retrieve a pointer to a resource file.  If 
//              the resource file is already in memory, a pointer to the 
//              existing resource file class is returned.  If the resource 
//              file is not in memory, the file is loaded and a pointer to 
//              the new resource file class is returned.
//
// Constraints:    None
//
// Parameters:    fileName - The name of the resource file.
//              project  - The project this object is associated with.
//
// Return:      A pointer to the resource file or NULL if an error occured.
//
//===========================================================================

PageFile* ResourceFileManager::GetPageFile( FileName &fileName, Project* project )
{
    // Try and find the file
    int index = Find( fileName );

    // Did we find the file
    if( index >= 0 )
    {
        PascalCString message( "Page file already loaded, using existing copy: " );
        PascalCString fileNameString;
        fileName.Get( fileNameString );
        message += fileNameString;
        g_OutputMessage.Add( message );
        
        ResourceFileManagerStruct* fileStruct = m_ResourceFileList.GetElement( index );

        // Increase the count
        fileStruct->m_Count++;

        // Return the file pointer
        return dynamic_cast<PageFile*>(fileStruct->m_ResourceFile);
    }
    else
    {
        // Get the object factory
        BaseFactory* objectFactory = project->GetObjectFactory();

        // Create the image
        PageFile* pageFile = objectFactory->NewPageFile( fileName );
         
        if( pageFile == NULL )
        {
            g_OutputMessage.Add( "ResourceFileManager::GetPageFile: Out of memory!",
                                 ErrorOutputMessage );
            return NULL;
        }

        // Load the file
        project->GotoPageDirectory();
        if( !pageFile->Load( project ) )
        {
            // Could not load the page
            delete pageFile;
            return NULL;
        }

        // Create the new struct
        ResourceFileManagerStruct* fileStruct = new ResourceFileManagerStruct;

        if( fileStruct == NULL )
        {
            g_OutputMessage.Add( "ResourceFileManager::GetPageFile: Out of memory!",
                                 ErrorOutputMessage );
            delete pageFile;
            return NULL;
        }

        fileStruct->m_ResourceFile = pageFile;
        fileStruct->m_Count = 1;
        m_ResourceFileList.AddElementToBack( fileStruct );

        // return the new image
        return pageFile;
    }
}


//===========================================================================
// ResourceFileManager::GetScreenFile
//===========================================================================
// Description: This is used to retrieve a pointer to a resource file.  If 
//              the resource file is already in memory, a pointer to the 
//              existing resource file class is returned.  If the resource 
//              file is not in memory, the file is loaded and a pointer to 
//              the new resource file class is returned.
//
// Constraints:    None
//
// Parameters:    fileName - The name of the resource file.
//              project  - The project this object is associated with.
//
// Return:      A pointer to the resource file or NULL if an error occured.
//
//===========================================================================
ScreenFile* ResourceFileManager::GetScreenFile( FileName &fileName, Project* project )
{
    //IAN IMPROVE: this code is copied in a function below - BAD BAD BAD

    // Try and find the file
    int index = Find( fileName );

    // Did we find the file
    if( index >= 0 )
    {
        PascalCString message( "Screen file already loaded, using existing copy: " );
        PascalCString fileNameString;
        fileName.Get( fileNameString );
        message += fileNameString;
        g_OutputMessage.Add( message );
        
        ResourceFileManagerStruct* fileStruct = m_ResourceFileList.GetElement( index );

        // Increase the count
        fileStruct->m_Count++;

        // Return the file pointer
        return dynamic_cast<ScreenFile*>(fileStruct->m_ResourceFile);
    }
    else
    {
        // Get the object factory
        BaseFactory* objectFactory = project->GetObjectFactory();

        // Create the image
        ScreenFile* screenFile = objectFactory->NewScreenFile( fileName );
         
        if( screenFile == NULL )
        {
            g_OutputMessage.Add( "ResourceFileManager::GetScreenFile: Out of memory!",
                                 ErrorOutputMessage );
            return NULL;
        }

        // Load the file
        if( !screenFile->Load( project ) )
        {
            char output[ 1000 ] = "";
            PascalCString pcsFilename;
            fileName.Get( pcsFilename );
            sprintf( output, "ResourceFileManager::GetScreenFile: file not found! \"%s\"", pcsFilename );
            g_OutputMessage.Add( output, ErrorOutputMessage );

            // Could not load the page
            delete screenFile;
            return NULL;
        }

        // Create the new struct
        ResourceFileManagerStruct* fileStruct = new ResourceFileManagerStruct;

        if( fileStruct == NULL )
        {
            g_OutputMessage.Add( "ResourceFileManager::GetScreenFile: Out of memory!",
                                 ErrorOutputMessage );
            delete screenFile;
            return NULL;
        }

        fileStruct->m_ResourceFile = screenFile;
        fileStruct->m_Count = 1;
        m_ResourceFileList.AddElementToBack( fileStruct );

        // return the new image
        return screenFile;
    }
}

//===========================================================================
// ResourceFileManager::GetScreenFile
//===========================================================================
// Description: This is used to retrieve a pointer to a resource file.  If 
//              the resource file is already in memory, a pointer to the 
//              existing resource file class is returned.  If the resource 
//              file is not in memory, the file is loaded and a pointer to 
//              the new resource file class is returned.
//
// Constraints:    None
//
// Parameters:    fileName - The name of the resource file.
//              project  - The project this object is associated with.
//
// Return:      A pointer to the resource file or NULL if an error occured.
//
//===========================================================================
const ScreenFile* ResourceFileManager::GetScreenFile( FileName &fileName, const Project* project ) const
{
    //IAN IMPROVE: this is just a copy of the code above - that's not good style
     // Try and find the file
    int index = Find( fileName );

    // Did we find the file
    if( index >= 0 )
    {
        PascalCString message( "Screen file already loaded, using existing copy: " );
        PascalCString fileNameString;
        fileName.Get( fileNameString );
        message += fileNameString;
        g_OutputMessage.Add( message );
        
        ResourceFileManagerStruct* fileStruct = m_ResourceFileList.GetElement( index );

        // Increase the count
        fileStruct->m_Count++;

        // Return the file pointer
        return dynamic_cast<ScreenFile*>(fileStruct->m_ResourceFile);
    }
    else
    {
        // Get the object factory
        const BaseFactory* objectFactory = project->GetObjectFactory();

        // Create the image
        ScreenFile* screenFile = objectFactory->NewScreenFile( fileName );
         
        if( screenFile == NULL )
        {
            g_OutputMessage.Add( "ResourceFileManager::GetScreenFile: Out of memory!",
                                 ErrorOutputMessage );
            return NULL;
        }

        // Load the file
        //IAN IMPROVE: const cast is not good news 
        Project* nonConstProject = const_cast< Project* >( project );
        if( !screenFile->Load( nonConstProject ) )
        {
            char output[ 1000 ] = "";
            PascalCString pcsFilename;
            fileName.Get( pcsFilename );
            sprintf( output, "ResourceFileManager::GetScreenFile: file not found! \"%s\"", pcsFilename );
            g_OutputMessage.Add( output, ErrorOutputMessage );

            // Could not load the page
            delete screenFile;
            return NULL;
        }

        // Create the new struct
        ResourceFileManagerStruct* fileStruct = new ResourceFileManagerStruct;

        if( fileStruct == NULL )
        {
            g_OutputMessage.Add( "ResourceFileManager::GetScreenFile: Out of memory!",
                                 ErrorOutputMessage );
            delete screenFile;
            return NULL;
        }

        fileStruct->m_ResourceFile = screenFile;
        fileStruct->m_Count = 1;
        //m_ResourceFileList.AddElementToBack( fileStruct );    //IAN IMPROVE: is commenting this out leaving a memory leak?

        // return the new image
        return screenFile;
    }
}


//===========================================================================
// ResourceFileManager::Release
//===========================================================================
// Description: This is used to release a resource file.
//
// Constraints:    None
//
// Parameters:    resourceFile - This is a pointer to a pointer to the 
//                             resource file.  If the reseource file is 
//                             found and released, the pointer will be set 
//                             to NULL.
//
// Return:      true  - if the resource file was found and released
//              false - otherwise
//
//===========================================================================

bool ResourceFileManager::Release( ResourceFile** resourceFile )
{
    if( (resourceFile == NULL) || (*resourceFile == NULL) )
    {
        g_OutputMessage.Add( "ResourceFileManager::Release: Can't release a NULL pointer",
                             DebugOutputMessage );
        return false;
    }

    // Try and find the file
    int index = Find( *resourceFile );

    // Did we find the file
    if( index >= 0 )
    {
        ResourceFileManagerStruct* fileStruct = m_ResourceFileList.GetElement( index );
       
        // Decrease the count
        fileStruct->m_Count--;

        // Is it time to delete the file
        if( fileStruct->m_Count <= 0 )
        {
            // Remove the resource file from the list.  This must be done before
            // the actual ResourceFile is deleted because the PageFiles will 
            // call this Release to release drawing element files and the list 
            // will change.
            m_ResourceFileList.RemoveElement( index );

            delete fileStruct->m_ResourceFile;
            fileStruct->m_ResourceFile = NULL;

            delete fileStruct;
            fileStruct = NULL;
        }

        *resourceFile = NULL;
        return true;
    }
    else
    {
        g_OutputMessage.Add( "ResourceFileManager::Release: Could not find file:",
                             DebugOutputMessage );

        PascalCString tempSting;
        (*resourceFile)->GetFileName().Get( tempSting );
        
        g_OutputMessage.Add( tempSting, DebugOutputMessage );
        return false;
    }
}


//===========================================================================
// ResourceFileManager::Find (with object pointer)
//===========================================================================
// Description: This is used to find the index of a resource in the list.
//
// Constraints:    None
//
// Parameters:    resourceFile - This is a pointer to the resource file to be
//                             found.
//
// Return:      The index of the resource if it is found,
//              -1 if not found.
//
//===========================================================================

int ResourceFileManager::Find( ResourceFile* resourceFile ) const
{
    // Search the list
    for( int i = 0; i < m_ResourceFileList.GetNumberOfElements(); i++ )
    {
        ResourceFileManagerStruct* fileStruct = m_ResourceFileList.GetElement( i );

        if( (fileStruct != NULL) && 
            (resourceFile == fileStruct->m_ResourceFile) )
        {
            // Resource has been found, return the index
            return i;
        }
    }

    // The Resource was not found, return -1
    return -1;
}


//===========================================================================
// ResourceFileManager::Find (with fileName)
//===========================================================================
// Description: This is used to find the index of a resource in the list.
//
// Constraints:    None
//
// Parameters:    fileName - The name of the resource file.
//
// Return:      The index of the resource if it is found,
//              -1 if not found.
//
//===========================================================================

int ResourceFileManager::Find( FileName &fileName ) const
{
    // Search the list
    for( int i = 0; i < m_ResourceFileList.GetNumberOfElements(); i++ )
    {
        ResourceFileManagerStruct* fileStruct = m_ResourceFileList.GetElement( i );

        if( fileStruct != NULL )
        {
            // Get the file
            ResourceFile* file = fileStruct->m_ResourceFile;

            if( (file != NULL) &&
                (fileName == file->GetFileName()) )
            {
                // Resource has been found, return the index
                return i;
            }
        }
    }

    // The Resource was not found, return -1
    return -1;
}


} // End NameSpace
