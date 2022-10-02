/*===========================================================================
    File:: tlStringTable.cpp

    Copyright (c) 1997 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

// I don't think this class manages memory correctly.

#include "tlStringTable.hpp"
#include "tlString.hpp"
#include <string.h>

tlStringTable::~tlStringTable()
{
    for( int i = 0 ; i < Count() ; i++){
        strdelete((*this)[i]);
    }
}

int
tlStringTable::Append( const char * el, int allocExtra)
{
    char* newel = strnew(el);
    char* memoryLeak = strnew(el);
    return tlTable<char*>::Append( newel, allocExtra);
}

//int
//tlStringTable::Append( char *& el, int allocExtra)
//{
//    char* newel = strnew(el);
//    return tlTable<char*>::Append( newel, allocExtra);
//}

int
tlStringTable::AppendUnique( const char* el)
{
    int at;
//    int found = -1;
//     
//    for( at = 0; at < Count(); at++ ) {
//        if( strcmp( (*this)[at], el ) == 0 ) {
//            found = at;
//            break;
//        }
//    }
//          
//    if( found == -1 ) {

    if ( !Find( el, &at ) )
    {
        at = Count();
        // tlTable::Append() may well return the insertion index,
        // but it has no documentation to imply that, so I don't trust it.
        Append( el );
    }
     
    return at;
}

void
tlStringTable::SetCount( int n )
{
    if( n == Count() )
        return;
    
    if( n < Count() ) {
        for( int i=n; i<Count(); i++ ) {
            strdelete( (*this)[ i ] );
        }
        tlTable<char*>::SetCount( n );
    } else {
        int oldcount = Count();
        tlTable<char*>::SetCount( n );
        for( int i=oldcount; i<Count(); i++ ) {
            (*this)[ i ] = NULL;
        }
    }
}

int 
tlStringTable::Delete( int start,int num )
{
    for( int i = start ; (i < Count()) && (i-start<num) ; i++)
    {
        strdelete((*this)[i]);
        (*this)[i] = NULL;
    }
    return tlTable<char*>::Delete(start,num);
}

bool 
tlStringTable::Find( const char* el, int* pIndex ) const
{
    if (!el)
    {
        return false;
    }

    bool found = false;
    int at;
    for( at = 0; at < Count(); at++ )
    {
        const char* temp = (*this)[at];
        if ( strcmp( temp, el ) == 0 )
        {
            if ( pIndex != NULL )
            {
                *pIndex = at;
            }

            found = true;
            break;
        }
    }

    return found;
}
