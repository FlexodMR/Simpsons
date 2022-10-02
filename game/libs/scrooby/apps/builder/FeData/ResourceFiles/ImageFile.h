//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the ImageFile class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __IMAGEFILE_H
#define __IMAGEFILE_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "ResourceFile.h"

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

const int g_DefaultImageWidth  = 50;
const int g_DefaultImageHeight = 50
;
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
    class ImageFile : public ResourceFile
    {
        public:
            ImageFile( FileName &fileName );
            virtual ~ImageFile();

            virtual bool Load();
            virtual bool Reload();

            virtual int GetWidth();
            virtual int GetHeight();

        protected:

        private:
            // Create this methods as private so they can not be used
            ImageFile(const ImageFile &right);
            const ImageFile & operator = (const ImageFile &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

