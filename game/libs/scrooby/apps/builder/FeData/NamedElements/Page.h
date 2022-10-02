//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Page class which represents a page.
//
// Authors:     Ryan Bedard, Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __PAGE_H
#define __PAGE_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "ProjectElement.h"
#include "..\Helpers\ElementList.h"
#include "..\Helpers\EnumConversion.h"
#include "..\Helpers\ResourceManager.h"
#include "Layer.h"

//===========================================================================
// Forward References
//===========================================================================
class tlDataChunk;

namespace FeData
{
    class DrawingContext;
    class DrawingElement;
    class PageElement;
}

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to represent a front-end page.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class Page : public ProjectElement
    {
        public:
            Page();
            virtual ~Page();

            virtual void SetName( PascalCString& pageFileName );

            int GetNumberOfLayers() const;
            tlDataChunk* MakeChunk() const;
            bool AddLayer( Layer* newLayer );
            bool AddLayerAtIndex( Layer* newLayer, int index );
            bool RemoveLayer( int index );
            bool RemoveLayerWithoutDelete( Layer* existingLayer );
            Layer* GetLayer( int index );
            const Layer* GetLayer( int index ) const;
            
            int GetLayerIndex( Layer* existingLayer );

            void SetLoaded( bool loaded );
            bool IsLoaded() const;
            void SetReadOnly( bool readOnly );
            bool IsReadOnly() const;

            int GetVersion() const;
            int GetResolutionWidth() const;
            int GetResolutionHeight() const;
            ResourceManager* GetResourceManager();
            const ResourceManager* GetResourceManager() const;
            PascalCString GetShortName() const;

            void SetVersion( int newVersion );
            void SetResolutionWidth( int newWidth );
            void SetResolutionHeight( int newHeight );

            bool Draw( DrawingContext* theDrawingContext );
            DrawingElement* GetDrawingElementUnderLocation( int x, int y );

            DrawingElementOrderEnum GetOrder( DrawingElement* first, DrawingElement* second );

            PageElement* GetParent( DrawingElement* child );

            int GetChangeNumber();
            void IncrementChangeNumber();

        protected:

        private:
            // Create this methods as private so they can not be used
            Page(const Page &right);
            const Page & operator = (const Page &right);

            // Data members
            ElementList< Layer > m_LayerList;
            int m_version;
            int m_resolutionWidth;
            int m_resolutionHeight;

            bool m_loaded;
            bool m_readOnly;

            ResourceManager m_ResourceManager;

            int m_ChangeNumber;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

