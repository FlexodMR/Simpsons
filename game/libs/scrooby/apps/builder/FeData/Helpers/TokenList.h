//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Helper Classes
//
// Description: This contains the TokenList class which represents a TokenList.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __TOKENLIST_H
#define __TOKENLIST_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "ElementList.h"
#include "Strings\PCString.h"

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to represent a front-end TokenList.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class TokenList
    {
        public:
            TokenList();
            ~TokenList();

            bool ToString( PascalCString& string );
            bool FromString( PascalCString& string );

            bool Add( const PascalCString& string );
            bool Add( int number );
            bool Add( double number );

            void ResetList();
            bool GetNext( PascalCString& string );
            bool GetNext( int& number );
            bool GetNext( double& number );

            bool PeekNext( PascalCString& string );

        protected:

        private:
            TokenList( TokenList &right );
            const TokenList & operator = ( const TokenList &right );

            // Data members
            ElementList< PascalCString > m_List;

            int m_CurrentPosition;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

