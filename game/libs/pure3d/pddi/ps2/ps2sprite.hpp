//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef PS2SPRITE_HPP
#define PS2SPRITE_HPP

/*
**
** ps2Sprite
** nov7/2001 amb
*/

class ps2Sprite
{
private:
    struct sprite_t
    {
        int r,g,b,a;
        int u0,v0,u1,v1;
        int x0,y0,x1,y1;
    };

    sprite_t sprite;
    int      base;
    int      psm;
    class ps2Context* context;


public:

    ps2Sprite(class ps2Context* ctx) : context(ctx)
    {
        /* nop */
    };

    int SetBase( int base , int psm )
    {
        this->base = base;
        this->psm = psm;

        return 0;
    }

    int SetCoords( int u0, int v0, int u1, int v1, int x, int y, int w, int h, int center )
    {
        sprite.u0 = u0<<4;
        sprite.v0 = v0<<4;
        sprite.u1 = u1<<4;
        sprite.v1 = v1<<4;
        if ( center )
        {
            sprite.u0 += 8;
            sprite.v0 += 8;
            sprite.u1 += 8;
            sprite.v1 += 8;
        }
        sprite.x0 = x<<4;
        sprite.y0 = y<<4;
        sprite.x1 = (x+w)<<4;
        sprite.y1 = (x+h)<<4;

        return 0;
    }

    int SetColour( int r, int g, int b, int a )
    {
        sprite.r = r;
        sprite.g = g;
        sprite.b = b;
        sprite.a = a;

        return 0;
    }

    void MoveBuffToBuff( int src_buff, int dest_buff, short filter, unsigned long blend );    
    void ZBuffToBuff( int src_buff, int dest_buff, short filter, unsigned long blend );
    void MoveRG2BA( int src_buff, int dest_buff, short filter, unsigned long blend );
    void ClampNearPlane();
    void FogSprite();
    #if 0
    void InvertZBuffer();
    void BlitTo(unsigned fbp, unsigned psm );
    #endif
};


#endif // PS2SPRITE_HPP
