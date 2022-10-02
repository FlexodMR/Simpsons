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

// Recompilation protection flag.
#ifndef __RESOURCEMANAGER_H
#define __RESOURCEMANAGER_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "ElementList.h"
#include "pcstring.h"

//===========================================================================
// Forward References
//===========================================================================

namespace FeData
{
    class Resource;
    class Image;
    class MovieClip;
    class Pure3dFile;
    class TextBible;
    class TextStyle;
    class FileName;
    class Project;

    struct ResourceManagerStruct
    {
        Resource* m_Resource;
        int       m_Count;
    };
}

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is to manage the resources.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class ResourceManager
    {
        public:
            ResourceManager();
            ~ResourceManager();

            bool AddImage( PascalCString& name, FileName& fileName, 
                           Project* project );
            bool AddMovieClip( PascalCString& name, FileName& fileName, 
                           Project* project );
            bool AddPure3dFile
            ( 
                PascalCString& name, 
                PascalCString& inventoryName,
                PascalCString& cameraName,
                PascalCString& animationName,
                FileName& fileName, 
                Project* project 
            );
            bool AddTextBible( PascalCString& name, FileName& fileName, 
                               Project* project );
            bool AddTextStyle( PascalCString& name, FileName& fileName, 
                               Project* project );


            Image* GetImage( PascalCString& name );
            MovieClip* GetMovieClip( PascalCString& name );
            Pure3dFile* GetPure3dFile( PascalCString& name );
            TextBible* GetTextBible( PascalCString& name );
            TextStyle* GetTextStyle( PascalCString& name );

            Image* GetImage( const int i );
            MovieClip* GetMovieClip( const int i );
            Pure3dFile* GetPure3dFile( const int i );
            TextBible* GetTextBible( const int i );
            TextStyle* GetTextStyle( const int i );

            bool Release( Resource** resource );
         //   bool RemoveResource( Resource** resource );

            int  GetNumberOfImages() const;
            int  GetNumberOfMovieClips() const;
            int  GetNumberOfPure3dFiles() const;
            int  GetNumberOfTextBibles() const;
            int  GetNumberOfTextStyles() const;
            
            Image* GetImageWithoutCounting( int index );
            Image* GetImageWithoutCounting( PascalCString& name );
            MovieClip* GetMovieClipWithoutCounting( int index );
            MovieClip* GetMovieClipWithoutCounting( PascalCString& name );
            Pure3dFile* GetPure3dFileWithoutCounting( int index );
            Pure3dFile* GetPure3dFileWithoutCounting( PascalCString& name );
            TextBible* GetTextBibleWithoutCounting( int index );
            TextBible* GetTextBibleWithoutCounting( PascalCString& name );
            TextStyle* GetTextStyleWithoutCounting( int index );
            TextStyle* GetTextStyleWithoutCounting( PascalCString& name );

            bool GetImageInfo( int index, int& count,
                               PascalCString& name, PascalCString& fileName );
            bool GetMovieClipInfo( int index, int& count,
                               PascalCString& name, PascalCString& fileName );
            bool GetPure3dFileInfo
            ( 
                int index, 
                int& count,
                PascalCString& name, 
                PascalCString& animationName,
                PascalCString& cameraName,
                PascalCString& inventoryName,
                PascalCString& fileName 
            );
            bool GetTextBibleInfo( int index, int &count,
                                   PascalCString& name, PascalCString& fileName, PascalCString& inventoryName );
            bool GetTextStyleInfo( int index, int &count,
                                   PascalCString& name, PascalCString& fileName, PascalCString& inventoryName );

        protected:

        private:
            ResourceManager(const ResourceManager& right);
            const ResourceManager & operator = (const ResourceManager& right);

            bool AddNewResourceToList( Resource* resource,
                                       ElementList<ResourceManagerStruct>& resourceList );

            int Find( Resource* resource, 
                      ElementList<ResourceManagerStruct>& resourceList );
            int Find( PascalCString& name,
                      ElementList<ResourceManagerStruct>& resourceList );

            Resource* GetResource( PascalCString& name,
                                   ElementList<ResourceManagerStruct>& resourceList);
            Resource* GetResource( const int index,
                                   ElementList<ResourceManagerStruct>& resourceList);


            bool GetResourceInfo( int index, int& count,
                                  PascalCString& name, PascalCString& fileName, PascalCString& inventoryName,
                                  ElementList<ResourceManagerStruct>& resourceList );

            bool TryRelease( Resource** resource,
                             ElementList<ResourceManagerStruct>& resourceList );

            void ClearList( ElementList<ResourceManagerStruct>& resourceList );

            // Data members
            ElementList< ResourceManagerStruct > m_ImageList;
            ElementList< ResourceManagerStruct > m_MovieClipList;
            ElementList< ResourceManagerStruct > m_Pure3dFileList;
            ElementList< ResourceManagerStruct > m_TextBibleList;
            ElementList< ResourceManagerStruct > m_TextStyleList;
    };
}

//===========================================================================
// Inlines
//===========================================================================


#endif                                  // End conditional inclusion


