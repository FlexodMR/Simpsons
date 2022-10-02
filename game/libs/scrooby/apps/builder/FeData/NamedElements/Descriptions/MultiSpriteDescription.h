//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the MultiSpriteDescription class which represents a 
//              MultiSpriteDescription.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __MULTISPRITEDESCRIPTION_H
#define __MULTISPRITEDESCRIPTION_H

//===========================================================================
// Nested Includes
//===========================================================================

#include "BoxDrawingElementDescription.h"
#include "..\..\Helpers\ElementList.h"

#include "Strings\PCString.h"

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

const char* const g_MultiSpriteDescriptionHeader = "<MultiSprite>";
const char* const g_MultiSpriteDescriptionFooter = "</MultiSprite>";
    
namespace FeData
{
    struct ImageDescription
    {
        PascalCString m_ImageName;
        PascalCString m_ImageFileName;
    };
}

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to represent a front-end multi sprite.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class MultiSpriteDescription : public BoxDrawingElementDescription
    {
        public:
            MultiSpriteDescription();
            virtual ~MultiSpriteDescription();
            
            virtual bool AddToTokenList( TokenList& tokenList );
            virtual bool SetFromTokenList( TokenList& tokenList );

            virtual DrawingElement* CreateHierarchyElement( Page* page );

            bool AddImageDescription( PascalCString &name, PascalCString &fileName );

            int GetCurrentImage();
            void SetCurrentImage( int index );

            int GetNumberOfImages();
            bool GetImageDescription( int index, PascalCString &name, PascalCString &fileName );
            

        protected:

        private:
            // Create this methods as private so they can not be used
            MultiSpriteDescription(const MultiSpriteDescription &right);
            const MultiSpriteDescription & operator = (const MultiSpriteDescription &right);

            // Data members
            ElementList< ImageDescription > m_ImageList;
            int m_CurrentImage;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

