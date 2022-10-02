//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "tlDataChunk.hpp"
#include "tlVertexAnimKey.hpp"
#include "tlVertexAnimChunk16.hpp"
#include "atenum.hpp"
#include "tlInventory.hpp"
#include "tlAnimation.hpp"
#include "tlFrameController.hpp"
#include "tlPrimGroupMesh.hpp"
// #include <bewert_debug.h>

static const unsigned VERTEXANIMKEY_VERSION = 0x00;
static const unsigned OFFSETLIST_VERSION = 0x00;


bool BinVertexAnimKeyToPrimGroup( tlInventory & inventory, tlDataChunk *inchunk )
{
    bool bResult = false;

    int ch;

    //the first pass checks if vertex animation exists
    //and store all vertex-anim-keys, vertex-animation, and vertex-anim controller
    //to inventory
    for(ch=0; ch < inchunk->SubChunkCount(); ch++)
    {
        tlDataChunk* sub = inchunk->GetSubChunk(ch);

        // look at the id of the subchunk to decide if we 
        // want to do something with it or not
        switch(sub->ID())
        {
            case Pure3D::Animation::VertexAnim::KEY:
            {
                bResult = true;
                tlVertexAnimKey *key = new tlVertexAnimKey( sub );
                inventory.Store( key );
            }

            break;

            case Pure3D::Animation::AnimationData::ANIMATION:
            {
                tlAnimation anim( sub );
                if( (unsigned int) anim.GetAnimationType(  ) == Pure3DAnimationChannels::Vertex::VERTEX_VRTX ) {
                    tlAnimation *vtxanim = new tlAnimation( sub );
                    inventory.Store( vtxanim );
                }
            }
            break;

            case Pure3D::Animation::FrameControllerData::FRAME_CONTROLLER:
            {
                tlFrameController ctrl( sub );
                if( ctrl.Type( ) == Pure3DAnimationChannels::Vertex::VERTEX_VRTX ){
                    tlFrameController *fctrl = new tlFrameController( sub );
                    inventory.Store( fctrl );
                }
            }
            break;
        }
    }

    if( !bResult )
        return false;

    //second pass finds all vertex animated geometry, and
    //binds all vertex-anim keys to the geometry, then
    //store the geometry in the inventory
    for(ch=0; ch < inchunk->SubChunkCount(); ch++)
    {
        // create the next sub-chunk

        tlDataChunk* sub = inchunk->GetSubChunk(ch);

        // look at the id of the subchunk to decide if we 
        // want to do something with it or not
        switch(sub->ID())
        {
            case Pure3D::Mesh::MESH:
            {
                tlPrimGroupMesh mesh(sub);
                if( mesh.BindVertexAnimKeys( inventory ) ){
                    tlPrimGroupMesh *geo = new tlPrimGroupMesh(sub);
                    geo->BindVertexAnimKeys( inventory );
                    inventory.Store( geo );
                }
                break;
            }
        }
    }

    return true;
}

template<class T>void IndexComponent( T* & components, tlTable<unsigned long> & indexlist )
{
    int offsetscount = indexlist.Count( );
    tlTable<unsigned long> newoffsetsIndex;
    tlTable<unsigned long> newoffsets;
    int i; 
    for( i = 0; i < offsetscount; i++ )
    {
          int idx = -1;
          unsigned long vertidx = idx;

          for( int j = 0; j < newoffsetsIndex.Count( ); ++j ){
                if( newoffsetsIndex[ j ] == indexlist[ i ] ){
                     idx = j;
                     break;
                }
          }
          if( idx == -1 ){              
                newoffsetsIndex.Append( indexlist[ i ] );
                newoffsets.Append( i );
          }             
    }

    T * offsets = new T[ newoffsets.Count( ) ];

    for( i = 0; i < newoffsets.Count(); ++i ){
        offsets[ i ] = components[ newoffsets[ i ] ];
    }

    delete[ ] components;

    components = offsets;
}

template<class T>void CompressComponent( T* &components, unsigned long * &oldindex, unsigned long &numcomponent )
{
    if( !oldindex )
        return;

    tlTable<T *> newoffsets;
    tlTable<unsigned long> newindex;

    unsigned long i;
    for( i = 0; i < numcomponent; ++i ){
        int idx = -1;
        for( int j = 0; j < newindex.Count( ); ++j ){
            if( oldindex[ i ] == newindex[ j ] ){
                idx = j;
                break;
            }
        }

        if( idx == -1 ){
            newoffsets.Append( &components[ i ] );
            newindex.Append( oldindex[ i ] );
        }
    }

    numcomponent = newindex.Count( );
    delete[ ] oldindex;

    oldindex = new unsigned long[ numcomponent ];
    components = new T[ numcomponent ];

    for( i = 0; i < numcomponent; ++i ){
        oldindex[ i ] = newindex[ i ];
        components[ i ] = *newoffsets[ i ];
    }
}
template<class T>void DeindexComponent( T* &components, unsigned long * &oldindex, unsigned long &numcomponent, tlTable<unsigned long> & indexlist )
{
    tlTable<T *> newoffsets;
    
    if( oldindex ){
        tlTable<unsigned long> newindex;
        unsigned long i;
        for( i = 0; i < numcomponent; ++i ){
            unsigned long idx = oldindex[ i ];
            
            for( int j = 0; j < indexlist.Count( ); ++j ){
                if( idx == indexlist[ j ] ){
                    newoffsets.Append( &components[ i ] );
                    newindex.Append( j );
                }
            }
        }

        delete[ ] oldindex;

        oldindex = new unsigned long[ newindex.Count( ) ];
        for( i = 0; i < (unsigned long)newindex.Count( ); ++i )
            oldindex[ i ] = newindex[ i ];

        numcomponent = newindex.Count( );
    }
    else{
        for( int i = 0; i < indexlist.Count( ); ++i )
            newoffsets.Append( &components[ indexlist[ i ] ] );

        numcomponent = indexlist.Count( );
    }

    T * offsets = new T[ newoffsets.Count( ) ];

    for( int i = 0; i < newoffsets.Count( ); ++i ){
        offsets[ i ] = *( newoffsets[ i ] );
    }

    delete[ ] components;

    components = offsets;
}
//------------------------------tlOffsetIndexList-----------------------------------------
tlOffsetIndexList::tlOffsetIndexList( )
: mNumber( 0 ), mIndex( NULL )
{
}

tlOffsetIndexList::tlOffsetIndexList( unsigned long num, bool bHasIndices )
:   mNumber( num ),
    mIndex( NULL )
{
    // If ALL primGroup vertices will be keyed it is 
    // not necessary to allocate the index data.
    if ( bHasIndices )
    {
        mIndex = new unsigned long[ num ];
    }
}

tlOffsetIndexList::~tlOffsetIndexList( )
{
    Reset( );
}

void tlOffsetIndexList::LoadFromChunk( tlDataChunk *ch )
{
    int i;
    for( i = 0; i < ch->SubChunkCount( ); ++i ){
        tlDataChunk* subch = ch->GetSubChunk( i );

        switch( subch->ID( ) ){
            case Pure3D::Animation::VertexAnim::OffsetList::INDEX:        
            {
                tlOffsetIndexListChunk *oilChunk = dynamic_cast<tlOffsetIndexListChunk *>(subch);
                assert( oilChunk );

                mNumber = oilChunk->GetNumIndex( );
                unsigned long * idx = oilChunk->GetIndex( );

                mIndex = new unsigned long[ mNumber ];
                for( unsigned long j = 0; j < mNumber; ++j )
                    mIndex[ j ] = idx[ j ];
            }
            break;

            default:
                assert( 0 );                //should never arrive here
        }
    }
}

tlDataChunk *tlOffsetIndexList::Chunk( )
{
    if( !mIndex  )
        return NULL;

    tlOffsetIndexListChunk * ch = new tlOffsetIndexListChunk( );

    ch->SetVersion( OFFSETLIST_VERSION );
    ch->SetNumIndex( mNumber );
    
    ch->SetIndex( mIndex, mNumber );

    return ch;
}

void tlOffsetIndexList::Reset( )
{
    delete [ ] mIndex;
    mIndex = NULL;
    mNumber = 0;
}

void tlOffsetIndexList::Index( tlTable<unsigned long> & newindex )
{
    for( unsigned long i = 0; i < mNumber; ++i ){
        mIndex[ i ] = newindex[ mIndex[ i ] ];
    }

    CompressOffsets(  );
}

//------------------------------tlColourOffsetList-----------------------------------------
tlColourOffsetList::tlColourOffsetList( )
: mColour( NULL )
{
}

tlColourOffsetList::tlColourOffsetList( tlDataChunk *ch )
: mColour( NULL )
{
    LoadFromChunk( ch );
}

tlColourOffsetList::tlColourOffsetList( unsigned long num, bool bHasIndices )
// If ALL primGroup vertices will be keyed it is not necessary to allocate the index data.
// It is, however, necessary to set the mNumber member variable in tlOffsetIndexList.
: tlOffsetIndexList( num, bHasIndices )
{
    mColour = new tlColourOffset[ num ];
}

tlColourOffsetList::~tlColourOffsetList( )
{   
    Reset( );
}

void tlColourOffsetList::Reset( )
{
    tlOffsetIndexList::Reset( );
    delete [ ] mColour;    
    mColour = NULL;
}

void tlColourOffsetList::Index( tlTable<unsigned long> &indexlist )
{
    if( mIndex )
        tlOffsetIndexList::Index( indexlist );
    else{
        IndexComponent( mColour, indexlist );
    }
}

void tlColourOffsetList::Deindex( tlTable<unsigned long> &indexlist )
{
    DeindexComponent( mColour, mIndex, mNumber, indexlist );
}

void tlColourOffsetList::CompressOffsets(  )
{
    CompressComponent( mColour, mIndex, mNumber );
}
    
void tlColourOffsetList::LoadFromChunk( tlDataChunk *ch )
{
    Reset( );
    tlColourOffsetListChunk *volChunk = dynamic_cast<tlColourOffsetListChunk *>(ch);

    assert( volChunk ); 
    mNumber = volChunk->GetNumOffsets( );

    mColour = new tlColourOffset[ mNumber ];

    const tlColourOffset *clr = volChunk->GetOffsets( );

    unsigned long i;
    for( i = 0; i < mNumber; ++i )
        mColour[ i ] = clr[ i ];
    
    tlOffsetIndexList::LoadFromChunk( ch );
}

tlDataChunk *tlColourOffsetList::Chunk( )
{
    tlColourOffsetListChunk * ch = new tlColourOffsetListChunk( );

    ch->SetVersion( OFFSETLIST_VERSION );
    ch->SetNumOffsets( mNumber );

    ch->SetOffsets( mColour, mNumber );

    if( mIndex )
        ch->AppendSubChunk( tlOffsetIndexList::Chunk( ) );

    return ch;
}

//------------------------------tlVectorOffsetList-----------------------------------------
tlVectorOffsetList::tlVectorOffsetList( )
: mVector( NULL ),
  mParam( 0 )
{
}

tlVectorOffsetList::tlVectorOffsetList( tlDataChunk *ch )
: mVector( NULL ),
  mParam( 0 )
{
    LoadFromChunk( ch );
}

tlVectorOffsetList::tlVectorOffsetList( unsigned long num, bool bHasIndices )
// If ALL primGroup vertices will be keyed it is not necessary to allocate the index data.
// It is, however, necessary to set the mNumber member variable in tlOffsetIndexList.
:   tlOffsetIndexList( num, bHasIndices ),
    mParam( 0 )
{
    mVector = new tlPoint[ num ];
}

tlVectorOffsetList::~tlVectorOffsetList( )
{    
    Reset( );
}

void tlVectorOffsetList::Reset( )
{   
    tlOffsetIndexList::Reset( );
    mParam = 0;
    delete [ ] mVector;
    mVector = NULL;
}

void tlVectorOffsetList::Index( tlTable<unsigned long> &indexlist )
{
    if( mIndex )
        tlOffsetIndexList::Index( indexlist );
    else{
        IndexComponent( mVector, indexlist );

    }
}

void tlVectorOffsetList::Deindex( tlTable<unsigned long> &indexlist )
{
    DeindexComponent( mVector, mIndex, mNumber, indexlist );
}

void tlVectorOffsetList::CompressOffsets(  )
{
    CompressComponent( mVector, mIndex, mNumber );
}


void tlVectorOffsetList::LoadFromChunk( tlDataChunk *ch )
{
    Reset( );
    tlVectorOffsetListChunk *volChunk = dynamic_cast<tlVectorOffsetListChunk *>(ch);

    assert( volChunk );    
    mNumber = volChunk->GetNumOffsets( );
    mParam = volChunk->GetParam( );

    mVector = new tlPoint[ mNumber ];

    const tlPoint *points = volChunk->GetOffsets( );
    for( unsigned long i = 0; i < mNumber; ++i )
        mVector[ i ] = points[ i ];
    
    tlOffsetIndexList::LoadFromChunk( ch );
}


tlDataChunk *tlVectorOffsetList::Chunk( )
{
    tlVectorOffsetListChunk * ch = new tlVectorOffsetListChunk( );

    ch->SetVersion( OFFSETLIST_VERSION );
    ch->SetNumOffsets( mNumber );
    ch->SetParam( mParam );

    ch->SetOffsets( mVector, mNumber );

    if( mIndex )
        ch->AppendSubChunk( tlOffsetIndexList::Chunk( ) );

    return ch;
}

//===========================================================================
// tlVectorOffsetList::SetParam
//===========================================================================
// Description: Sets the mParam member to the proper FOURCC code which
//              identifies the function of this offset list.
//
// Constraints: Should be one of (see '.\constants\atenum.hpp')
//
//                  Pure3DVertexAnim::Offset::Coord
//                  Pure3DVertexAnim::Offset::Normal
//                  Pure3DVertexAnim::Offset::Colour
//
//  Parameters: unsigned param: The FOURCC code to identify this offset list.
//
//      Return: (void)
//
//===========================================================================
void tlVectorOffsetList::SetParam( unsigned param )
{
    mParam = param;
}

//------------------------------tlVector2OffsetList-----------------------------------------
tlVector2OffsetList::tlVector2OffsetList( )
: mVector2( NULL ),
  mParam( 0 )
{
}

tlVector2OffsetList::tlVector2OffsetList( tlDataChunk *ch )
: mVector2( NULL ),
  mParam( 0 )
{
    LoadFromChunk( ch );
}


tlVector2OffsetList::tlVector2OffsetList( unsigned long num, bool bHasIndices )
// If ALL primGroup vertices will be keyed it is not necessary to allocate the index data.
// It is, however, necessary to set the mNumber member variable in tlOffsetIndexList.
: tlOffsetIndexList( num, bHasIndices ),
  mParam( 0 )
{
    mVector2 = new tlUV[ num ];
}

void tlVector2OffsetList::Reset( )
{
    tlOffsetIndexList::Reset( );
    mParam = 0;
    delete [ ] mVector2;
    mVector2 = NULL;
}

void tlVector2OffsetList::Index( tlTable<unsigned long> &indexlist )
{
    if( mIndex )
        tlOffsetIndexList::Index( indexlist );
    else{
        IndexComponent( mVector2, indexlist );

    }
}

void tlVector2OffsetList::Deindex( tlTable<unsigned long> &indexlist )
{
    DeindexComponent( mVector2, mIndex, mNumber, indexlist );
}

void tlVector2OffsetList::CompressOffsets(  )
{
    CompressComponent( mVector2, mIndex, mNumber );
}


tlVector2OffsetList::~tlVector2OffsetList( )
{
    Reset( );
}

void tlVector2OffsetList::LoadFromChunk( tlDataChunk *ch )
{
    Reset( );
    tlVector2OffsetListChunk *volChunk = dynamic_cast<tlVector2OffsetListChunk *>(ch);

    assert( volChunk ); 
    mNumber = volChunk->GetNumOffsets( );
    mParam = volChunk->GetParam( );

    mVector2 = new tlUV[ mNumber ];

    const tlUV *points = volChunk->GetOffsets( );

    unsigned long i;
    for( i = 0; i < mNumber; ++i )
        mVector2[ i ] = points[ i ];
    
    tlOffsetIndexList::LoadFromChunk( ch );
}


tlDataChunk *tlVector2OffsetList::Chunk( )
{
    tlVector2OffsetListChunk * ch = new tlVector2OffsetListChunk( );

    ch->SetVersion( OFFSETLIST_VERSION );
    ch->SetNumOffsets( mNumber );
    ch->SetParam( mParam );
    
    ch->SetOffsets( mVector2, mNumber );

    if( mIndex )
        ch->AppendSubChunk( tlOffsetIndexList::Chunk( ) );

    return ch;
}

//===========================================================================
// tlVector2OffsetList::SetParam
//===========================================================================
// Description: Sets the mParam member to the proper FOURCC code which
//              identifies the function of this offset list.
//
// Constraints: Should be one of (see '.\constants\atenum.hpp')
//
//                  Pure3DVertexAnim::Offset::UV0
//                  Pure3DVertexAnim::Offset::UV1
//                  Pure3DVertexAnim::Offset::UV2
//                  Pure3DVertexAnim::Offset::UV3
//
//  Parameters: unsigned param: The FOURCC code to identify this offset list.
//
//      Return: (void)
//
//===========================================================================
void tlVector2OffsetList::SetParam( unsigned param )
{
    mParam = param;
}

//------------------------------tlVertexAnimKey-----------------------------------------
tlVertexAnimKey::tlVertexAnimKey( )
: mColour(NULL), mPosition(NULL), mNormal(NULL)
{

    for( int i = 0; i < 4; ++i )
        mUV[ i ] = NULL;
}

tlVertexAnimKey::tlVertexAnimKey( tlDataChunk *ch )
: mColour(NULL), mPosition(NULL), mNormal(NULL)
{
    for( int i = 0; i < 4; ++i )
        mUV[ i ] = NULL;

    LoadFromChunk( ch );
}

tlVertexAnimKey::tlVertexAnimKey( tlVertexAnimKey *k, float delta )
: mColour(NULL), mPosition(NULL), mNormal(NULL)
{
    for( int i = 0; i < 4; ++i )
        mUV[ i ] = NULL;

    if( k->mColour ){
        mColour = new tlColourOffsetList( k->mColour->mNumber );
        for( unsigned long i = 0; i < mColour->mNumber; ++i ){
            if( k->mColour->mIndex )
                mColour->mIndex[ i ] = k->mColour->mIndex[ i ];
            
            mColour->mColour[ i ].red = delta*k->mColour->mColour[ i ].red;
            mColour->mColour[ i ].green = delta*k->mColour->mColour[ i ].green;
            mColour->mColour[ i ].blue = delta*k->mColour->mColour[ i ].blue;
            mColour->mColour[ i ].alpha = delta*k->mColour->mColour[ i ].alpha;
        }
    }

    if( k->mNormal ){
        mNormal = new tlVectorOffsetList( k->mNormal->mNumber );
        for( unsigned long i = 0; i < mNormal->mNumber; ++i ){
            if( k->mNormal->mIndex )
                mNormal->mIndex[ i ] = k->mNormal->mIndex[ i ];
            mNormal->mVector[ i ] = delta*k->mNormal->mVector[ i ];            
        }
    }

    if( k->mPosition ){
        mPosition = new tlVectorOffsetList( k->mPosition->mNumber );
        for( unsigned long i = 0; i < mPosition->mNumber; ++i ){
            if( k->mPosition->mIndex )
                mPosition->mIndex[ i ] = k->mPosition->mIndex[ i ];
            mPosition->mVector[ i ] = delta*k->mPosition->mVector[ i ];            
        }
    }

    for( int j = 0; j < 4; ++j ){
        if( k->mUV[ j ] ){
            mUV[ j ] = new tlVector2OffsetList( k->mUV[ j ]->mNumber );
            for( unsigned long i = 0; i < mUV[ j ]->mNumber; ++i ){
                if( k->mUV[ j ]->mIndex )
                    mUV[ j ]->mIndex[ i ] = k->mUV[ j ]->mIndex[ i ];
                mUV[ j ]->mVector2[ i ] = delta*k->mUV[ j ]->mVector2[ i ];
            }
        }
    }
}

tlVertexAnimKey::~tlVertexAnimKey( )
{
    Reset( );
}

///
///     given my frame number, create the key
///     whose frame number is targetf
///
tlVertexAnimKey * tlVertexAnimKey::Interpolate( float targetf, float myframe )
{
    float delta = targetf/myframe;

    tlVertexAnimKey *key = new tlVertexAnimKey( this, delta );

    return key;
}

bool
tlVertexAnimKey::SetPositionKey( tlPoint* pOffset, int* pIndex, size_t numComponents )
{
    delete [] mPosition;
    mPosition = NULL;

    // Compare pKey and pBase to see how many items need to be stored.
    
    if ( ( pOffset == NULL ) || ( numComponents == 0 ) ) return false;

    mPosition = new tlVectorOffsetList( numComponents, ( pIndex != NULL ) );

    // Assign the OffsetList to have the correct FOURCC code for Position
    mPosition->SetParam( Pure3DVertexAnim::Offset::Coord );

    for ( size_t i = 0; i < numComponents; i++ )
    {
        // Now write out the component's offset from the Base value.
        if ( pIndex != NULL ) mPosition->mIndex[i] = pIndex[i];
        mPosition->mVector[i] = pOffset[i];
    }

    return true;
}

bool
tlVertexAnimKey::SetNormalKey( tlPoint* pOffset, int* pIndex, size_t numComponents )
{
    delete [] mNormal;
    mNormal = NULL;

    // Compare pKey and pBase to see how many items need to be stored.
    
    if ( ( pOffset == NULL ) || ( numComponents == 0 ) ) return false;

    mNormal = new tlVectorOffsetList( numComponents, ( pIndex != NULL ) );

    // Assign the OffsetList to have the correct FOURCC code for Position
    mNormal->SetParam( Pure3DVertexAnim::Offset::Normal );

    for ( size_t i = 0; i < numComponents; i++ )
    {
        // Now write out the component's offset from the Base value.
        if ( pIndex != NULL ) mNormal->mIndex[i] = pIndex[i];
        mNormal->mVector[i] = pOffset[i];
    }

    return true;
}

bool
tlVertexAnimKey::SetColourKey( tlColourOffset* pOffset, int* pIndex, size_t numComponents )
{
    delete [] mColour;
    mColour = NULL;

    // Compare pKey and pBase to see how many items need to be stored.
    
    if ( ( pOffset == NULL ) || ( numComponents == 0 ) ) return false;

    mColour = new tlColourOffsetList( numComponents, ( pIndex != NULL ) );

    for ( size_t i = 0; i < numComponents; i++ )
    {
        // Now write out the component's offset from the Base value.
        if ( pIndex != NULL ) mColour->mIndex[i] = pIndex[i];
        mColour->mColour[i] = pOffset[i];
    }

    return true;
}

bool
tlVertexAnimKey::SetUvKey( unsigned int uvSet, tlPoint2D* pOffset, int* pIndex, size_t numComponents )
{
    if ( uvSet >= MAX_UV_NUM ) return false;

    delete [] mUV[uvSet];
    mUV[uvSet] = NULL;

    // Compare pKey and pBase to see how many items need to be stored.
    
    if ( ( pOffset == NULL ) || ( numComponents == 0 ) ) return false;

    mUV[uvSet] = new tlVector2OffsetList( numComponents, ( pIndex != NULL ) );

    switch ( uvSet )
    {
        case 0:
            mUV[uvSet]->SetParam( Pure3DVertexAnim::Offset::UV0 );
            break;
        case 1:
            mUV[uvSet]->SetParam( Pure3DVertexAnim::Offset::UV1 );
            break;
        case 2:
            mUV[uvSet]->SetParam( Pure3DVertexAnim::Offset::UV2 );
            break;
        case 3:
            mUV[uvSet]->SetParam( Pure3DVertexAnim::Offset::UV3 );
            break;
    }

    for ( size_t i = 0; i < numComponents; i++ )
    {
        // Now write out the component's offset from the Base value.
//        clog << "++ Set UV Key for INDEX #" << pIndex[i] << " -> " << pOffset[i] << endl;
        if ( pIndex != NULL ) mUV[uvSet]->mIndex[i] = pIndex[i];
        mUV[uvSet]->mVector2[i] = pOffset[i];
    }

    return true;
}

tlDataChunk* tlVertexAnimKey::Chunk()
{
    tlVertexAnimKeyChunk * data = new tlVertexAnimKeyChunk;

    data->SetVersion( VERTEXANIMKEY_VERSION  );
    data->SetName( GetName( ) );
    
    if( mColour )
        data->AppendSubChunk( mColour->Chunk( ) );

    if( mNormal )
        data->AppendSubChunk( mNormal->Chunk( ) );

    if( mPosition )
        data->AppendSubChunk( mPosition->Chunk( ) );

    for( int i = 0; i < MAX_UV_NUM; ++i )
        if( mUV[ i ] )
            data->AppendSubChunk( mUV[ i ]->Chunk( ) );

    return data;
}

void tlVertexAnimKey::Reset( )
{
    delete mColour;
    mColour = NULL;

    delete mNormal;
    mNormal = NULL;

    delete mPosition;
    mPosition = NULL;

    for( int i = 0; i < MAX_UV_NUM; ++i )
    {
        delete mUV[ i ];
        mUV[ i ] = NULL;
    }
}


void tlVertexAnimKey::LoadFromChunk(tlDataChunk* ch)
{
    //delete old data
    Reset( );

    tlVertexAnimKeyChunk *key = dynamic_cast<tlVertexAnimKeyChunk*>(ch);
    assert( key );
    
    SetName( key->GetName( ) );
    assert( key->GetVersion( ) == VERTEXANIMKEY_VERSION );

    int dch;
    for( dch = 0 ; dch < key->SubChunkCount() ; dch++){
        tlDataChunk* subch = key->GetSubChunk(dch);
        switch(subch->ID()){
            case Pure3D::Animation::VertexAnim::OffsetList::COLOUR:
            {
                mColour = new tlColourOffsetList( subch );
                break;
            }

            case Pure3D::Animation::VertexAnim::OffsetList::VECTOR:
            {
                tlVectorOffsetListChunk * vch = dynamic_cast<tlVectorOffsetListChunk*>(subch);
                assert( vch );

                unsigned long fcc = vch->GetParam( );
                
                switch( fcc ){
                    case Pure3DVertexAnim::Offset::Coord:
                        mPosition = new tlVectorOffsetList( subch );
                    break;

                    case Pure3DVertexAnim::Offset::Normal:
                        mNormal = new tlVectorOffsetList( subch );
                    break;

                    default:        //should not reach here
                        assert( 0 );
                }                
                break;
            }

            case Pure3D::Animation::VertexAnim::OffsetList::VECTOR2:
            {
                tlVector2OffsetListChunk * vch = dynamic_cast<tlVector2OffsetListChunk*>(subch);
                assert( vch );

                unsigned long fcc = vch->GetParam( );
                
                switch( fcc ){
                    case Pure3DVertexAnim::Offset::UV0:
                        mUV[ 0 ] = new tlVector2OffsetList( subch );
                    break;

                    case Pure3DVertexAnim::Offset::UV1:
                        mUV[ 1 ] = new tlVector2OffsetList( subch );
                    break;

                    case Pure3DVertexAnim::Offset::UV2:
                        mUV[ 2 ] = new tlVector2OffsetList( subch );
                    break;

                    case Pure3DVertexAnim::Offset::UV3:
                        mUV[ 3 ] = new tlVector2OffsetList( subch );
                    break;

                    default:        //should not reach here
                        assert( 0 );
                }                
                break;
            }
        }
    }

}


void tlVertexAnimKey::Index( tlTable<unsigned long> & newindex )
{
    if( mColour )
        mColour->Index( newindex );

    if( mNormal )
        mNormal->Index( newindex );

    if( mPosition )
        mPosition->Index( newindex );

    for( int i = 0; i < MAX_UV_NUM; ++i ){
        if( mUV[ i ] )
            mUV[ i ]->Index( newindex );
    }
}


void tlVertexAnimKey::Deindex( tlTable<unsigned long> & oldindex )
{
    if( mColour )
        mColour->Deindex( oldindex );

    if( mNormal )
        mNormal->Deindex( oldindex );

    if( mPosition )
        mPosition->Deindex( oldindex );

    for( int i = 0; i < MAX_UV_NUM; ++i ){
        if( mUV[ i ] )
            mUV[ i ]->Deindex( oldindex );
    }
}