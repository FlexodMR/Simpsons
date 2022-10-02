/*===========================================================================
    File:: tlStringTable.hpp

    Copyright (c) 1997 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLSTRINGTABLE_HPP
#define _TLSTRINGTABLE_HPP


#include "tlTable.hpp"

class tlStringTable : public tlTable<char*>
{
public:
    tlStringTable() {}
    ~tlStringTable();
    int AppendUnique( const char *el );
    int Append( const char * el, int allocExtra=0 );
//     int Append( char *& el, int allocExtra=0 );
    int Delete( int start,int num );
    bool Find( const char* el, int* pIndex = NULL ) const;

    void SetCount( int n );
};

#endif

