
//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the GroupDescription class which represents a GroupDescription.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __GROUPDESCRIPTIION_H
#define __GROUPDESCRIPTIION_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "DrawingElementDescription.h"
#include "..\..\Helpers\ElementList.h"

//===========================================================================
// Forward References
//===========================================================================

namespace FeData
{
    class TokenList;
}

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

const char* const g_GroupDescriptionHeader = "<Group>";
const char* const g_GroupDescriptionFooter = "</Group>";

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to represent a front-end GroupDescription.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class GroupDescription : public DrawingElementDescription
    {
        public:
            GroupDescription();
            virtual ~GroupDescription();

            virtual bool AddToTokenList( TokenList& tokenList );
            virtual bool SetFromTokenList( TokenList& tokenList );

            bool AddDescription( DrawingElementDescription* description );
            int GetNumberOfDescriptions();

            virtual DrawingElement* CreateHierarchyElement( Page* page );
            virtual DrawingElement* CreateHierarchyChildElement( int index, Page* page );

            int GetAlpha() const;
            void SetAlpha( int alpha );

        protected:

        private:
            // Create this methods as private so they can not be used
            GroupDescription(const GroupDescription &right);
            const GroupDescription & operator = (const GroupDescription &right);

            // Data members
            ElementList< DrawingElementDescription > m_DescriptionList;

            int m_alpha;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

