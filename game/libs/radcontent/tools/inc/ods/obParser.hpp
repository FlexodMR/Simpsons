//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef PARSER_HPP
#define PARSER_HPP

#include <stdlib.h>
#include <string.h>
#include "obStream.hpp"

class obParser
{
	public:

		obParser( obDataStream & dataStream );
		~obParser( void );

        static bool IsDelim( char c, const char * pDelim );
		static bool IsWhite( char c );
		static bool IsNumber( char c );
		static bool IsStartOfVarName( char c );
		static bool IsLetter( char c );
		static bool IsMiddleOfVarName( char c );

		void SkipWhite( void );

		bool IsToken( const char * pToken );
        bool IsTokenNsw( const char * pToken );

		bool IsEndOfLine( void );
		bool IsNumber( void );
		bool IsStartOfVarName( void );

		void SkipToken( void );
		bool SkipToken( const char * pToken );
        bool SkipTokenNsw( const char * pToken );
		bool SkipChar( char c );
		void SkipLine( void );

		bool GetToken( char * pBuffer, int size );
		bool GetTokenDelim( char * pBuffer, int size, const char * pDelim );
        bool GetChar( char * pChar );
		int  GetInteger( void );
        float GetFloat( void );
        bool GetQuotedString( char * pBuffer, int size );

		bool GetVariableName( char * pBuffer, int size );
		bool GetCompositeVariableName( char * pBuffer, int size );
		bool IsEof( void );

        unsigned int GetLineCount( void );


	private:

        void NextChar( );

		char * m_pStart;
		char * m_pEnd;
		char * m_pCurrent;

        unsigned int m_LineCount;

		char m_TempBuffer[ 1024 ];
};

#endif // PARSER_HPP
