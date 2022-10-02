//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Helper Classes
//
// Description: This contains the DescriptionManager class which represents a DescriptionManager.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __DescriptionManager_H
#define __DescriptionManager_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================

namespace FeData
{
    class TokenList;
    class DrawingElementDescription;
}

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used to represent a front-end DescriptionManager.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class DescriptionManager
    {
        public:
            DescriptionManager();
            ~DescriptionManager();

            DrawingElementDescription* GetNextDrawingElementDescription( TokenList& tokenList );

        protected:

        private:
            DescriptionManager( DescriptionManager &right );
            const DescriptionManager & operator = ( const DescriptionManager &right );
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

