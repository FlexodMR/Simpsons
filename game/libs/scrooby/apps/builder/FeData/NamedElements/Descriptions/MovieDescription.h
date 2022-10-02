//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the MovieDescription class which represents a 
//              MovieDescription.
//
// Authors:     Ian Gipson
//
//===========================================================================

// Recompilation protection flag.
#ifndef __MOVIEDESCRIPTION_H
#define __MOVIEDESCRIPTION_H

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

const char* const g_MovieDescriptionHeader = "<Movie>";
const char* const g_MovieDescriptionFooter = "</Movie>";
    
//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to represent a front-end movie.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class MovieDescription : public BoxDrawingElementDescription
    {
        public:
            MovieDescription();
            virtual ~MovieDescription();
            
            virtual bool AddToTokenList( TokenList& tokenList );
            virtual bool SetFromTokenList( TokenList& tokenList );

            virtual DrawingElement* CreateHierarchyElement( Page* page );

        protected:

        private:
            // Create this methods as private so they can not be used
            MovieDescription( const MovieDescription& right );
            const MovieDescription & operator = ( const MovieDescription& right );

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

