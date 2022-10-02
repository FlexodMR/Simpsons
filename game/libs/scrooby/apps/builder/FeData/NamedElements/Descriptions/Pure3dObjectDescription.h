//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the MultiTextDescription class which represents a 
//              MultiTextDescription.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __PURE3DOBJECTDESCRIPTION_H
#define __PURE3DOBJECTDESCRIPTION_H

//===========================================================================
// Nested Includes
//===========================================================================

#include "BoxDrawingElementDescription.h"
#include "..\..\Helpers\ElementList.h"
#include "..\..\Helpers\EnumConversion.h"

#include "Strings\PCString.h"


//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

const char* const g_DescriptionHeader = "<Pure3dObject>";
const char* const g_DescriptionFooter = "</Pure3dObject>";
    
//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to represent a front-end multi Text.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class Pure3dObjectDescription : public BoxDrawingElementDescription
    {
        public:
            Pure3dObjectDescription();
            virtual ~Pure3dObjectDescription();
            
            virtual bool AddToTokenList( TokenList& tokenList );
            virtual bool SetFromTokenList( TokenList& tokenList );

            virtual DrawingElement* CreateHierarchyElement( Page* page );

        protected:

        private:
            // Create this methods as private so they can not be used
            Pure3dObjectDescription( const Pure3dObjectDescription& right );
            const Pure3dObjectDescription& operator = ( const Pure3dObjectDescription& right );

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

