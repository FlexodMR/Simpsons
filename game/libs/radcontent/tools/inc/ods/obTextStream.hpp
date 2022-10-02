//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef OBTextSTREAM_HPP
#define OBTextSTREAM_HPP

#include "obStream.hpp"

class obTextStream
{
    public:

        obTextStream( obDataStream & dataStream );

        bool WriteString( const char * pString );
        bool WriteLine( const char * pString );
        bool WriteQuotedString( const char * pString );
        bool WriteFloat( float f );
        bool WriteInt( int i );
        bool WriteCrlf( void );
        bool WriteChar( char c );
        bool Indent( unsigned int chars );
        
        bool ReadString( char * pString, unsigned int buf );

        obDataStream & Ds( );

    private:
    
        bool IsWhite( char c );

        obDataStream & m_ObDataStream;
};

#endif // OBTextSTREAM_HPP
