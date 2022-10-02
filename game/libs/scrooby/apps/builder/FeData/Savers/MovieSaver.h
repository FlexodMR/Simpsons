//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the MovieSaver class.
//
// Authors:     Ian Gipson
//
//===========================================================================

// Recompilation protection flag.
#ifndef __MOVIESAVER_H
#define __MOVIESAVER_H


//===========================================================================
// Nested Includes
//===========================================================================

//===========================================================================
// Forward References
//===========================================================================
namespace FeData
{
    class Movie;
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
// Description: This class is used save a Movie to a file.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class MovieSaver
    {
        public:
            MovieSaver();
            ~MovieSaver();

            bool Save( Movie* theObject, XMLSaver& theSaver );

        protected:

        private:
            // Create this methods as private so they can not be used
            MovieSaver(const MovieSaver &right);
            const MovieSaver & operator = (const MovieSaver &right);

            // Data members
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

