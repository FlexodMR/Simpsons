//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _TLSEGMENT_HPP
#define _TLSEGMENT_HPP

class tlPoint;
class tlPoint2D;

class tlSegment
{
public:
    tlSegment( );
    tlSegment( tlPoint s, tlPoint e );
    ~tlSegment( );

    bool Intersect( tlSegment l, tlPoint & ints );

protected:
    tlPoint start;
    tlPoint end;

};


class tlSegment2D 
{
public:
    tlSegment2D( );
    tlSegment2D( tlPoint2D s, tlPoint2D e );
    ~tlSegment2D( );

    bool Intersect( tlSegment2D l, float & t0 );

protected:
    friend class tlSegment;
    tlPoint2D start;
    tlPoint2D end;

};

#endif