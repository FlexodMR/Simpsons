//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the MovieClipFile class.
//
// Authors:     Ian Gipson
//
//===========================================================================

// Recompilation protection flag.
#ifndef __MOVIECLIPFILE_H
#define __MOVIECLIPFILE_H


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

const int g_DefaultMovieClipWidth  = 50;
const int g_DefaultMovieClipHeight = 50
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
    class MovieClipFile : public ResourceFile
    {
        public:
            MovieClipFile( FileName &fileName );
            virtual ~MovieClipFile();

            virtual bool Load();
            virtual bool Reload();

            virtual int GetWidth();
            virtual int GetHeight();

        protected:

        private:
            // Create this methods as private so they can not be used
            MovieClipFile(const MovieClipFile &right);
            const MovieClipFile & operator = (const MovieClipFile &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

