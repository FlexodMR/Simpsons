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
#ifndef __NAMEDELEMENT_H
#define __NAMEDELEMENT_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "strings/PCString.h"
#include <stdlib.h>

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
// Description: This is an element that contains a name.  This class is used
//              as the top most parent for most of the classes with in the
//              FE Builder Data Structure. 
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class NamedElement
    {
        public:
            NamedElement();
            virtual ~NamedElement();

            virtual void SetName( PascalCString& newName );
            virtual const char* GetName() const;
            virtual char* GetName();

        protected:

        private:
            // Create this methods as private so they can not be used
            NamedElement(const NamedElement &right);
            const NamedElement & operator = (const NamedElement &right);

            // Data members
            PascalCString m_Name;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

