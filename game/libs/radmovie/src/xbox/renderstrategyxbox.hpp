//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        renderstrategyxbox.hpp
//
// Subsystem:	Foundation Technologies - Movie Player
//
// Description:	This is an xbox render strategy implementation
//
// Date:    	July 10, 2002 RWS
//
//=============================================================================

#ifndef RENDERSTRATEGYXBOX_HPP
#define RENDERSTRATEGYXBOX_HPP

//=============================================================================
// Include Files
//=============================================================================

#undef _TEXTURE_HPP
#include <pddi/xbox/texture.hpp>


#include <radmovie2.hpp>

#ifndef RAD_MOVIEPLAYER_USE_BINK

//=============================================================================
// Definitions
//=============================================================================

//=============================================================================
// Forward Class/Struct Declarations
//=============================================================================

class radMovieRenderStrategyXBox;

//=============================================================================
// Class radMovieRenderStrategyXBox
//=============================================================================

class radMovieRenderStrategyXBox
    : 
    public IRadMovieRenderStrategy,
    public radRefCount

{
    public:

        IMPLEMENT_REFCOUNTED( "radMovieRenderStrategyXBox" )
    
        //
        // Constructor / Destructor
        //

        radMovieRenderStrategyXBox( void );
        virtual ~radMovieRenderStrategyXBox( void );

        //
        // IRadMovieRenderStrategy
        //

        virtual void SetParameters( unsigned int width, unsigned int height );
        virtual void ResetParameters( void );
        virtual void GetDestination( IDirect3DSurface8 ** ppIDirect3DSurface8 );
        virtual bool Render( void );

    private:

        d3dTexture * m_pD3dTexture;
        pddiShader * m_pPddiShader;
        IDirect3DSurface8 * m_pIDirect3DSurface8;
        IDirect3DTexture8 * m_pIDirect3DTexture8;
        unsigned int m_Width;
        unsigned int m_Height;
};

#endif // ! RAD_MOVIEPLAYER_USE_BINK

#endif // RENDERSTRATEGYXBOX_HPP
