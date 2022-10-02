//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        renderstrategygcn.hpp
//
// Subsystem:	Foundation Technologies - Movie Player
//
// Description:	This is an gcn render strategy implementation
//
// Date:    	July 16, 2002 RWS
//
//=============================================================================

#ifndef RENDERSTRATEGYGCN_HPP
#define RENDERSTRATEGYGCN_HPP

//=============================================================================
// Include Files
//=============================================================================

#include <radoptions.hpp>

#ifndef RAD_MOVIEPLAYER_USE_BINK

#include <radmovie2.hpp>

//=============================================================================
// Definitions
//=============================================================================

//=============================================================================
// Forward Class/Struct Declarations
//=============================================================================

class radMovieRenderStrategyGcn;

//=============================================================================
// Class radMovieRenderStrategyGcn
//=============================================================================

class radMovieRenderStrategyGcn
    : 
    public IRadMovieRenderStrategy,
    public radRefCount

{
    public:

        IMPLEMENT_REFCOUNTED( "radMovieRenderStrategyGcn" )
    
        //
        // Constructor / Destructor
        //

        radMovieRenderStrategyGcn( void );
        virtual ~radMovieRenderStrategyGcn( void );

        //
        // IRadMovieRenderStrategy
        //

        virtual void SetParameters( unsigned int width, unsigned int height );
        virtual void Reset( void );
        virtual bool Render( void * pBuffer );

    private:

//        void ConvertTexRgba8(u8 *pSrc,u8 *pDst,u32 ImageW,u32 ImageH);
        void ConvertTexRgba8(char *src, char *dest, unsigned int width, unsigned int height);

        ref< pddiTexture > m_refTTexture;
        ref< pddiShader > m_refTShader;
        void * m_pFrameBuffer;

        unsigned int m_Width;
        unsigned int m_Height;
};

#endif // ! RAD_MOVIEPLAYER_USE_BINK
#endif // RENDERSTRATEGYGCN_HPP
