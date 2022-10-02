//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef RECURSE_HPP
#define RECURSE_HPP

bool FindFiles( const char * pFileName );
void CleanUp( );

void Reset( void );
bool GetNext( const char ** ppFileName );

#endif