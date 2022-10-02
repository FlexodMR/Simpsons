//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the MultiTextSaver class.
//
// Authors:     Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __MULTITEXTSAVER_H
#define __MULTITEXTSAVER_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================
namespace FeData
{
    class MultiText;
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
// Description: This class is used save a MultiText to a file.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class MultiTextSaver
    {
        public:
            MultiTextSaver();
            ~MultiTextSaver();

            bool Save( MultiText* theMultiText, XMLSaver& theSaver );

        protected:

        private:
            // Create this methods as private so they can not be used
            MultiTextSaver(const MultiTextSaver &right);
            const MultiTextSaver & operator = (const MultiTextSaver &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

