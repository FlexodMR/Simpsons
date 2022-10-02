//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        renderstrategyps2.hpp
//
// Subsystem:	Foundation Technologies - Movie Player
//
// Description:	This file declares the render strategy class for the ps2.
//              The intention is for all of the these render strategy
//              classes to belong to pure3d one day
//
// Date:    	July 22, 2002 RWS
//
//=============================================================================

#ifndef RENDERSTRATEGYPS2_HPP
#define RENDERSTRATEGYPS2_HPP

//=============================================================================
// Include Files
//=============================================================================

#include <libgraph.h>
#include <radmovie2.hpp>
#include <pddi/pddiext.hpp>

//=============================================================================
// Forward Class/Struct Declarations
//=============================================================================

class radMovieRenderStrategyPs2;

//=============================================================================
// Definitions
//=============================================================================

#define UNCMASK 0x0fffffff
#define UNCBASE 0x20000000

//
// I know that macros are bad but I stole much of this code from sony.
// (I know that's bad too)
//

#define DmaAddr(val) \
    ((void*)((unsigned int)(val) & UNCMASK))
#define UncachedAddr(val) \
    ((void*)(((unsigned int)(val) & UNCMASK) | UNCBASE))

//=============================================================================
// Class radMovieRenderStrategyPs2
//=============================================================================

class radMovieRenderStrategyPs2
    :
    public IRadMovieRenderStrategy,
    public radRefCount
{
    public:

        IMPLEMENT_REFCOUNTED( "radMovieRenderStrategyPs2" )
    
        //
        // Constructor / Destructor
        //

        radMovieRenderStrategyPs2( void );
        virtual ~radMovieRenderStrategyPs2( void );

        //
        // IRadMovieRenderStrategy
        //

        virtual void SetParameters( unsigned int width, unsigned int height );
        virtual bool Render( void * pBuffer );

    private:

        void PrepareImageTags( void * pVideoFrameBuffer, unsigned int * pTags );

        static void setDMAscTag(
            u_int *p,
            u_int spr,
            void *addr,
            u_int irq,
            u_int id,
            u_int pce,
            u_int qwc
        )
        {
            u_long *val = (u_long*)p;
            *val = \
	          (u_long)spr << 63
	        | (u_long)((u_int)addr & 0xfffffff0) << 32
	        | (u_long)irq << 31
	        | (u_long)id << 28
	        | (u_long)pce << 26
	        | (u_long)qwc << 0;
        }

        static void setGIFtag(
            u_int *p,
            u_long regs,
            u_int nreg,
            u_int flg,
            u_int prim,
            u_int pre,
            u_int eop,
            u_int nloop
        )
        {
            p[0] = eop<<15 | nloop;
            p[1] = pre<<(46-32) | prim<<(47-32) | flg<<(58-32) | nreg<<(60-32);
            p[2] = regs&0xffffffff;
            p[3] = regs>>32;
        }

        static void setGIFad(u_int *p, u_int reg, u_long value)
        {
            p[0] = value&0xffffffff;
            p[1] = value>>32;
            p[2] = reg;
            p[3] = 0x00;
        }

        static void setBITBLTBUF(u_int *p, u_int dbp, u_int dbw, u_int dpsm)
        {
            u_long val =
	          ((u_long)dpsm << 56)
	        | ((u_long)dbw << 48)
	        | ((u_long)dbp << 32);

            setGIFad(p, SCE_GS_BITBLTBUF, val);
        }

        static void setTRXPOS(u_int *p, u_int dir, u_int dsax, u_int dsay)
        {
            u_long val =
	          ((u_long)dir << 59)
	        | ((u_long)dsay << 48)
	        | ((u_long)dsax << 32);
            setGIFad(p, SCE_GS_TRXPOS, val);
        }

        static void setTRXREG(u_int *p, u_int rrw, u_int rrh)
        {
            u_long val =
	          ((u_long)rrh << 32)
	        | ((u_long)rrw << 0);
            setGIFad(p, SCE_GS_TRXREG, val);
        }

        static void setTRXDIR(u_int *p, u_int xdir)
        {
            setGIFad(p, SCE_GS_TRXDIR, (u_long)xdir);
        }

        void LoadImage(u_int *tags)
        {
            DPUT_D2_TADR((u_int)DmaAddr(tags));
            DPUT_D2_QWC(0);
            DPUT_D2_CHCR(0x105);
            while( ( * D2_CHCR & 0x100 ) != 0 ) { }
        }

        unsigned int * m_pTags;
        sceGsDispEnv m_SceGsDispEnv;
        unsigned int m_Width;
        unsigned int m_Height;
};

#endif // RENDERSTRATEGYPS2_HPP
