//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the GDIImageFile class.
//
// Authors:     Ryan Bedard
//
//===========================================================================

// Recompilation protection flag.
#ifndef __GDIIMAGEFILE_H
#define __GDIIMAGEFILE_H


//===========================================================================
// Nested Includes
//===========================================================================

#include "..\ImageFile.h"
#include "ImageLib.h"

//===========================================================================
// Forward References
//===========================================================================
class tlSprite;
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
    class GDIImageFile : public ImageFile
    {
        public:
            GDIImageFile( FileName &fileName );
            virtual ~GDIImageFile();

            virtual bool Load();

            virtual int GetWidth();
            virtual int GetHeight();

            ImageLib* GetImageLib();

            tlSprite* GetSprite() { return mSprite; }

        protected:

        private:
            // Create this methods as private so they can not be used
            GDIImageFile(const GDIImageFile &right);
            const GDIImageFile & operator = (const GDIImageFile &right);

            // Data members
            ImageLib m_ImageLib;
            tlSprite* mSprite;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

