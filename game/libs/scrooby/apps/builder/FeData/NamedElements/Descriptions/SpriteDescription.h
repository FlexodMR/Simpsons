//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the SpriteDescription class which represents a 
//              SpriteDescription.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __SPRITEDESCRIPTION_H
#define __SPRITEDESCRIPTION_H

//===========================================================================
// Nested Includes
//===========================================================================

#include "MultiSpriteDescription.h"

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

const char* const g_SpriteDescriptionHeader = "<Sprite>";
const char* const g_SpriteDescriptionFooter = "</Sprite>";
    
//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to represent a front-end  sprite.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class SpriteDescription : public MultiSpriteDescription
    {
        public:
            SpriteDescription();
            virtual ~SpriteDescription();
            
            virtual bool AddToTokenList( TokenList& tokenList );
            virtual bool SetFromTokenList( TokenList& tokenList );

            virtual DrawingElement* CreateHierarchyElement( Page* page );

        protected:

        private:
            // Create this methods as private so they can not be used
            SpriteDescription(const SpriteDescription &right);
            const SpriteDescription & operator = (const SpriteDescription &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

