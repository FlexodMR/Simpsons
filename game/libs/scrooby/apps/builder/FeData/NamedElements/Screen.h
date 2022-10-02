//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Screen class which represents a screen.
//
// Authors:     Ryan Bedard, Victor Medrano
//
//===========================================================================

// Recompilation protection flag.
#ifndef __SCREEN_H
#define __SCREEN_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "ProjectElement.h"
#include "..\Helpers\ElementList.h"
#include "..\Helpers\FileName.h"

//===========================================================================
// Forward References
//===========================================================================
class tlDataChunk;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

namespace FeData
{
    class DrawingContext;
    class PageFile;
    class Page;
    class DrawingElement;

    struct PageStruct
    {
        PageFile* m_PageFile;
        bool      m_ExportValue;
    };
}

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to represent a front-end screen.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class Screen : public ProjectElement
    {
        public:
            Screen();
            virtual ~Screen();

            int  GetNumberOfPages() const;
 
            bool AddPageFile( PageFile* pageFile, bool newExportValue  );
            bool AddPageFileAtIndex( PageFile* pageFile, bool newExportValue, int index  );
            bool DeletePageFile( int index );
            bool RemovePageFileWithoutRelease( PageFile* existingPageFile );

            Page* GetPage( int index );
            const Page* GetPage( int index ) const;
            Page* GetPage( const PascalCString& pageName );
            
            PageFile* GetPageFileFromPage( Page* existingPage );

            int GetPageFileIndex( PageFile* existingPageFile );
            int GetPageIndex( Page* existingPage );
            bool GetPageFileInfo( int index, FileName &fileName, bool &exportFlag );
            int GetVersion() const;            
            void SetVersion( int newVersion );
            void SetLoaded( bool loaded );
            bool IsLoaded();
            void SetReadOnly( bool readOnly );
            bool IsReadOnly();

            bool IsExportable( int index );
            void SetExportable( int index, bool exportValue );

            bool Draw( DrawingContext* theDrawingContext );
            DrawingElement* GetDrawingElementUnderLocation( int x, int y );

            bool SavePageFiles();

            bool MovePage( Page* existingPage, int moveToIndex );

            int GetChangeNumber();
            void IncrementChangeNumber();

            //builds a tlDataChunk for saving this object
            tlDataChunk* MakeChunk() const;

        protected:

        private:
            // Create this methods as private so they can not be used
            Screen(const Screen &right);
            const Screen & operator = (const Screen &right);

           // Data members
            ElementList< PageStruct > m_PageList;

            int m_Version;

            bool m_loaded;
            bool m_readOnly;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

