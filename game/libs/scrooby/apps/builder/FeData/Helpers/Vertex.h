//===========================================================================
// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   FE Builder Data Structure
//
// Description: This contains the Vertex class which represents a Vertex.
//
// Authors:     Eric Tong
//
//===========================================================================

// Recompilation protection flag.
#ifndef __VERTEX_H
#define __VERTEX_H


//===========================================================================
// Nested Includes
//===========================================================================

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
// Description: This class is used to represent a front-end Vertex.
//
// Constraints: None
//
//===========================================================================

namespace FeData
{
    class Vertex
    {
        public:
            Vertex();
            Vertex( Vertex &right );
            ~Vertex();

            const Vertex & operator = ( const Vertex &right );

            int GetX() const;
            int GetY() const;
            int GetRed() const;
            int GetBlue() const;
            int GetGreen() const;
            int GetAlpha() const;

            void SetX( int x );
            void SetY( int y );
            void SetRed( int red );
            void SetBlue( int blue );
            void SetGreen( int green );
            void SetAlpha( int alpha );

        protected:

        private:
            // Data members
            int m_x;
            int m_y;
            int m_red;
            int m_blue;
            int m_green;
            int m_alpha;
    };
}

//===========================================================================
// Inlines
//===========================================================================



#endif                                  // End conditional inclusion

