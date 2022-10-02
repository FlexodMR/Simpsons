//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================




#ifndef DATASTREAM_H
#define DATASTREAM_H

struct IDataStream
{
    virtual bool GetSize( unsigned int * size ) = 0;
	virtual bool ReadBytes( char * pBytes, unsigned int numberOfBytes ) = 0;
    virtual bool WriteBytes( char * pBytes, unsigned int numberOfBytes ) = 0;
	virtual bool SetPosition( unsigned int position ) = 0;
	virtual bool GetPosition( unsigned int * pPosition ) = 0;
};

#endif // DATASTREAM_H