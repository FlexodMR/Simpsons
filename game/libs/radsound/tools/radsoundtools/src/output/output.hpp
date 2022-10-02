//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef OUTPUT_HPP
#define OUTPUT_HPP

//=============================================================================
// rDebugPrintf
//=============================================================================

void printProgress( const char *fmt, ... );
void printWarning( const char *fmt, ... );
bool printError( const char *fmt, ... );
void printInfoSilent( const char *fmt, ... );
void printInfoLoud( const char *fmt, ... );

void printSetSilent( bool );
void printClearError( void );


#endif // OUTPUT_HPP