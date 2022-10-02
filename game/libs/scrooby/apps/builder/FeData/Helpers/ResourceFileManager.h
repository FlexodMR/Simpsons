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

// Recompilation protection flag.
#ifndef __RESOURCEFILEMAGAGER_H
#define __RESOURCEFILEMAGAGER_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "ElementList.h"

//===========================================================================
// Forward References
//===========================================================================

namespace FeData
{
    class ResourceFile;
    class ImageFile;
    class MovieClipFile;
    class Pure3dFileFile;
    class TextBibleFile;
    class TextStyleFile;
    class PageFile;
    class ScreenFile;
    class FileName;
    class Project;

    struct ResourceFileManagerStruct
    {
        ResourceFile* m_ResourceFile;
        int           m_Count;
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
// Description: This class is to manage the resource files.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class ResourceFileManager
    {
        public:
            ResourceFileManager();
            ~ResourceFileManager();

            ImageFile* GetImageFile( FileName &fileName, Project* project );
            MovieClipFile* GetMovieClipFile( FileName &fileName, Project* project );
            Pure3dFileFile* GetPure3dFileFile( FileName &fileName, Project* project );
            TextBibleFile* GetTextBibleFile( FileName &fileName, Project* project );
            TextStyleFile* GetTextStyleFile( FileName &fileName, Project* project );

            int GetNumberOfPages() const;

            PageFile* GetPageFile( FileName &fileName, Project* project );
            ScreenFile* GetScreenFile( FileName &fileName, Project* project );
            const ScreenFile* GetScreenFile( FileName &fileName, const Project* project )const;
            bool Release( ResourceFile** resourceFile );

        protected:

        private:
            ResourceFileManager(const ResourceFileManager &right);
            const ResourceFileManager & operator = (const ResourceFileManager &right);


            int Find( ResourceFile* resourceFile ) const;
            int Find( FileName &fileName ) const;

            // Data members
            ElementList< ResourceFileManagerStruct > m_ResourceFileList;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

