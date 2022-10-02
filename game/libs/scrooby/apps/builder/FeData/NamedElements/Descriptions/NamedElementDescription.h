//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the NamedElement class which represents an
//              element with a name.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __NAMEDELEMENTDESCRIPTIION_H
#define __NAMEDELEMENTDESCRIPTIION_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "PCString.h"
#include <stdlib.h>

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

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This is an element that contains a name.  This class is used
//              as the top most parent for most of the classes with in the
//              FE Builder Data Structure. 
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class NamedElementDescription
    {
        public:
            NamedElementDescription();
            virtual ~NamedElementDescription();

            virtual bool AddToTokenList( TokenList& tokenList );
            virtual bool SetFromTokenList( TokenList& tokenList );

            virtual void SetName( PascalCString& newName );
            virtual char* GetName();

        protected:

        private:
            // Create this methods as private so they can not be used
            NamedElementDescription(const NamedElementDescription &right);
            const NamedElementDescription & operator = (const NamedElementDescription &right);

            // Data members
            PascalCString m_Name;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

