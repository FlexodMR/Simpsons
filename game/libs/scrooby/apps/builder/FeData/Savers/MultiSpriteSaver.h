//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the MultiSpriteSaver class.
//
// Authors:     Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __MULTISPRITESAVER_H
#define __MULTISPRITESAVER_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================
namespace FeData
{
    class MultiSprite;
}
class XMLSaver;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

//===========================================================================
// Interface Definitions
//===========================================================================

//===========================================================================
//
// Description: This class is used save a MultiSprite to a file.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class MultiSpriteSaver
    {
        public:
            MultiSpriteSaver();
            ~MultiSpriteSaver();

            bool Save( MultiSprite* theMultiSprite, XMLSaver& theSaver );

        protected:

        private:
            // Create this methods as private so they can not be used
            MultiSpriteSaver(const MultiSpriteSaver &right);
            const MultiSpriteSaver & operator = (const MultiSpriteSaver &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

