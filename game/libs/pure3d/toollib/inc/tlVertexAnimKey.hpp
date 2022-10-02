//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _TLVERTEXANIMKEY_HPP
#define _TLVERTEXANIMKEY_HPP

#include "tlEntity.hpp"
#include "tlLoadManager.hpp"
#include "tlColour.hpp"
#include "tlPoint.hpp"
#include "tlUV.hpp"
#include <assert.h>

#define MAX_UV_NUM  4

class tlInventory;
class tlDataChunk;

extern bool BinVertexAnimKeyToPrimGroup( tlInventory & inventory, tlDataChunk *inchunk );
class tlOffsetIndexList
{
public:
    tlOffsetIndexList( );
    tlOffsetIndexList( unsigned long num, bool bHasIndices = true );
    ~tlOffsetIndexList( );

    void LoadFromChunk16(tlDataChunk *ch){ assert( 0 ); }
    tlDataChunk *Chunk16(void){ assert( 0 ); return NULL; }

    void LoadFromChunk( tlDataChunk *ch );
    tlDataChunk* Chunk();

    virtual void Reset( );
    virtual void Index( tlTable<unsigned long> & newindex );
    virtual void Deindex( tlTable<unsigned long> & newindex ){ };
    virtual void CompressOffsets( ){ };

    unsigned long    *mIndex;
    unsigned long  mNumber;
};

class tlColourOffsetList : public tlOffsetIndexList
{
public:
    tlColourOffsetList( );
    tlColourOffsetList( unsigned long num, bool bHasIndices = true );
    tlColourOffsetList( tlDataChunk *ch );
    ~tlColourOffsetList( );


    virtual void Reset( );
    void Index( tlTable<unsigned long> &newindex );
    void Deindex( tlTable<unsigned long> &newindex );
    void CompressOffsets( );

    // Chunk reading / writing code
    void LoadFromChunk16(tlDataChunk *ch){ assert( 0 ); }
    tlDataChunk *Chunk16(void){ assert( 0 ); return NULL; }

    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk* Chunk();

    tlColourOffset     *mColour;    
};

class tlVectorOffsetList : public tlOffsetIndexList
{
public:

    tlVectorOffsetList( );
    tlVectorOffsetList( unsigned long num, bool bHasIndices = true );
    tlVectorOffsetList( tlDataChunk *ch );
    ~tlVectorOffsetList( );

    void        SetParam( unsigned param );

    virtual void Reset( );
    void Index( tlTable<unsigned long> &newindex );
    void Deindex( tlTable<unsigned long> &newindex );
    void CompressOffsets( );

    // Chunk reading / writing code
    void LoadFromChunk16(tlDataChunk *ch){ assert( 0 ); }
    tlDataChunk *Chunk16(void){ assert( 0 ); return NULL; }

    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk* Chunk();

    tlPoint     *mVector;
    unsigned       mParam;
};

class tlVector2OffsetList : public tlOffsetIndexList
{   
public:

    tlVector2OffsetList( );
    tlVector2OffsetList( unsigned long num, bool bHasIndices = true );
    tlVector2OffsetList( tlDataChunk *ch );
    ~tlVector2OffsetList( );

    void        SetParam( unsigned param );

    virtual void Reset( );
    void Index( tlTable<unsigned long> &newindex );
    void Deindex( tlTable<unsigned long> &newindex );
    void CompressOffsets( );

    // Chunk reading / writing code
    void LoadFromChunk16(tlDataChunk *ch){ assert( 0 ); }
    tlDataChunk *Chunk16(void){ assert( 0 ); return NULL; }

    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk* Chunk();

    tlUV     *mVector2; 
    unsigned       mParam;
};

class tlVertexAnimKey:  public tlEntity
{

public:
    tlVertexAnimKey( );
    tlVertexAnimKey( tlVertexAnimKey *k, float delta = 1.f );
    tlVertexAnimKey( tlDataChunk *ch );

    tlVertexAnimKey * Interpolate( float targetf, float myframe );

    bool                        SetPositionKey( tlPoint* pOffset, int* pIndex, size_t numComponents );
    bool                        SetNormalKey( tlPoint* pOffset, int* pIndex, size_t numComponents );
    bool                        SetColourKey( tlColourOffset* pOffset, int* pIndex, size_t numComponents );
    bool                        SetUvKey( unsigned int uvSet, tlPoint2D* pOffset, int* pIndex, size_t numComponents );

    // Chunk reading / writing code
    void LoadFromChunk16(tlDataChunk *ch){ assert( 0 ); }
    tlDataChunk *Chunk16(void){ assert( 0 ); return NULL; }

    void LoadFromChunk(tlDataChunk* ch);
    tlDataChunk* Chunk();

    void Reset( );

    //given the new index list of the host mesh, index the key
    void Index( tlTable<unsigned long> &newindex );

    //given the old index list of the host mesh, de-index the key
    void Deindex( tlTable<unsigned long> &oldindex );

    tlColourOffsetList *mColour;
    tlVectorOffsetList *mPosition;
    tlVectorOffsetList *mNormal;
    tlVector2OffsetList *mUV[ MAX_UV_NUM ];

protected:
    ~tlVertexAnimKey( );
    

};

#endif
