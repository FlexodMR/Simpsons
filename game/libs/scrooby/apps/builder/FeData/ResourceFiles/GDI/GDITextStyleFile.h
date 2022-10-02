//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the ImageFile class.
//
// Authors:     Victor Medrano
//
//===========================================================================

// Recompilation protection flag.
#ifndef __GDITextStyleFile_H
#define __GDITextStyleFile_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "stdafx.h"
#include "..\TextStyleFile.h"

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
// Description: This class is used to represent a front-end Image 
//              resource file.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class GDITextStyleFile : public TextStyleFile
    {
        public:
            GDITextStyleFile( FileName &fileName );
            virtual ~GDITextStyleFile();

            virtual bool GetStringExtent( UnicodeString&, int& width, int& height );
            virtual CFont* GetFont();

        protected:
            virtual void RemakeFont();

        private:
            // Create this methods as private so they can not be used
            GDITextStyleFile(const GDITextStyleFile &right);
            const GDITextStyleFile & operator = (const GDITextStyleFile &right);

            CFont m_Font;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

