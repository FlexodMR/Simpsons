//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Project class which represents a Front-end
//              project.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __PROJECT_H
#define __PROJECT_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "NamedElement.h"
#include "..\Helpers\ElementList.h"
#include "..\Helpers\FileName.h"
#include "..\Helpers\ResourceFileManager.h"
#include "..\Factories\BaseFactory.h"

//===========================================================================
// Forward References
//===========================================================================
class tlDataChunk;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to represent a front-end project.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class Project : public NamedElement
    {
        public:
            Project();
            virtual ~Project();

            int  GetNumberOfScreens() const;
            bool GetScreenFileName( int index, FileName &theFileName ) const;
            void GotoPageDirectory() const;
            void GotoResourceDirectory() const;
            void GotoRootDirectory() const;
            void GotoScreenDirectory() const;

            bool AddScreenFileName( FileName &newFileName );
            bool DeleteScreenFileName( int index );

            void SetLoaded( bool loaded );
            bool IsLoaded();
            void SetReadOnly( bool readOnly );
            bool IsReadOnly();

            PascalCString GetRootPath() const;
            
            int GetVersion();
            int GetResolutionWidth() const;
            int GetResolutionHeight() const;

            PascalCString GetPlatform() const;

            PascalCString GetScreenPath() const;
            PascalCString GetPagePath() const;
            PascalCString GetResourcePath() const;

            BaseFactory* GetObjectFactory();
            const BaseFactory* GetObjectFactory() const;
            ResourceFileManager*  GetResourceFileManager();
            const ResourceFileManager*  GetResourceFileManager() const;


            void SetRootPath( PascalCString &newRootPath );

            void SetVersion( int newVersion );
            void SetResolutionWidth( int newWidth );
            void SetResolutionHeight( int newHeight );

            void SetPlatform( PascalCString &newPlatform );

            void SetScreenPath( PascalCString &newPath );
            void SetPagePath( PascalCString &newPath );
            void SetResourcePath( PascalCString &newPath );

            void SetObjectFactory( BaseFactory* objectFactory );

            //builds a tlDataChunk for saving this object
            tlDataChunk* MakeChunk() const;

        protected:

        private:
            // Create this methods as private so they can not be used
            Project(const Project &right);
            const Project & operator = (const Project &right);

            // Data members
            ElementList< FileName > m_FileNameList;

            int m_Version;
            int m_ResolutionWidth;
            int m_ResolutionHeight;

            bool m_loaded;
            bool m_readOnly;

            PascalCString m_RootPath;
            PascalCString m_Platform;

            PascalCString m_ScreenPath;
            PascalCString m_PagePath;
            PascalCString m_ResourcePath;

            BaseFactory*        m_ObjectFactory;
            ResourceFileManager m_ResourceFileManager;

    };
}      

//===========================================================================
// Inlines
//===========================================================================


#endif                                  // End conditional inclusion

