//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        renderstrategyxbox.cpp
// Subsystem:	Foundation Technologies - Movie
//
// Description:	This is an xbox render strategy implementation
//
// Date:    	July 10, 2002 RWS
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include "pch.hpp"

#ifndef RAD_MOVIEPLAYER_USE_BINK

#include <pddi/xbox/display.hpp>
#include <p3d/pure3d.hpp>
#include "renderstrategyxbox.hpp"

//=============================================================================
// Global variables
//=============================================================================

//=============================================================================
// radMovieRenderStrategyXBox::radMovieRenderStrategyXBox
//=============================================================================

radMovieRenderStrategyXBox::radMovieRenderStrategyXBox( void )
    :
    radRefCount( 0 ),
    m_pD3dTexture( NULL ),
    m_pPddiShader( NULL ),
    m_pIDirect3DSurface8( NULL ),
    m_pIDirect3DTexture8( NULL ),
    m_Width( 0 ),
    m_Height( 0 )
{
}

//=============================================================================
// radMovieRenderStrategyXBox::~radMovieRenderStrategyXBox
//=============================================================================

radMovieRenderStrategyXBox::~radMovieRenderStrategyXBox( void )
{
    if( m_pPddiShader != NULL )
    {
        m_pPddiShader->Release( );
        m_pPddiShader = NULL;
    }

    if( m_pD3dTexture != NULL )
    {
        m_pD3dTexture->Release( );
        m_pD3dTexture = NULL;
    }

    if( m_pIDirect3DSurface8 != NULL )
    {
        m_pIDirect3DSurface8->Release( );
        m_pIDirect3DSurface8 = NULL;
    }

    if( m_pIDirect3DTexture8 != NULL )
    {
        m_pIDirect3DTexture8->Release( );
        m_pIDirect3DTexture8 = NULL;
    }
}

//=============================================================================
// radMovieRenderStrategyXBox::SetParameters
//=============================================================================

void radMovieRenderStrategyXBox::SetParameters( unsigned int width, unsigned int height )
{
    rAssert( width > 0 && height > 0 );

    //
    // We'll need to create a new texture to match the new parameters.
    //
    // Theis requires starting in Direct3D and working towards a 
    // pddi d3dTexture.  We can't just create a pddi d3dTexture using
    // the usual means, because the YUY2 xbox format isn't available
    // through any of the factories.  However, we can wrap the direct3d
    // texture in the pddi texture and things are clever enough to 
    // still work.
    //
    // Only do this if necessary...
    //

    if( width != m_Width || height != m_Height )
    {

        if( m_pPddiShader != NULL )
        {
            m_pPddiShader->Release( );
            m_pPddiShader = NULL;
        }

        if( m_pD3dTexture != NULL )
        {
            m_pD3dTexture->Release( );
            m_pD3dTexture = NULL;
        }

        if( m_pIDirect3DSurface8 != NULL )
        {
            m_pIDirect3DSurface8->Release( );
            m_pIDirect3DSurface8 = NULL;
        }

        if( m_pIDirect3DTexture8 != NULL )
        {
            m_pIDirect3DTexture8->Release( );
            m_pIDirect3DTexture8 = NULL;
        }


        m_Width = width;
        m_Height = height;


        HRESULT hr = ( ( d3dDisplay * ) p3d::context->GetDisplay( ) )->GetD3DDevice( )->CreateTexture( 
            width,
            height,
            0,
            0,
            D3DFMT_YUY2,
            0,
            & m_pIDirect3DTexture8 );

        rAssert( hr == D3D_OK );

        m_pD3dTexture = new d3dTexture( ( ( d3dContext * ) p3d::context->GetContext( ) ), m_pIDirect3DTexture8 );
        rAssert( m_pD3dTexture != NULL );
        m_pD3dTexture->AddRef( );

        hr = m_pIDirect3DTexture8->GetSurfaceLevel( 0, & m_pIDirect3DSurface8 );
        rAssert( hr == D3D_OK );

        //
        // This shader will eventually put movie textures on the
        // screen.  It's not complicated, it can be 'simple'
        // 

        m_pPddiShader = p3d::context->GetDevice()->NewShader("simple");
        rAssert( m_pPddiShader != NULL );
        m_pPddiShader->AddRef( );

        m_pPddiShader->SetTexture(PDDI_SP_BASETEX, m_pD3dTexture);
    }
}

//=============================================================================
// radMovieRenderStrategyXBox::ResetParameters
//=============================================================================

void radMovieRenderStrategyXBox::ResetParameters( void )
{
}

//=============================================================================
// radMovieRenderStrategyXBox::GetDestination
//=============================================================================

void radMovieRenderStrategyXBox::GetDestination( IDirect3DSurface8 ** ppIDirect3DSurface8 )
{
    rAssert( m_pD3dTexture != NULL );
    rAssert( ppIDirect3DSurface8 != NULL );
    rAssert( * ppIDirect3DSurface8 == NULL );
    rAssert( m_pIDirect3DSurface8 != NULL );

    //
    // Assume that there is always a surface at level 0
    //

    ( * ppIDirect3DSurface8 ) = m_pIDirect3DSurface8;
    ( * ppIDirect3DSurface8 )->AddRef( );
}

//=============================================================================
// radMovieRenderStrategyXBox::Render
//=============================================================================

bool radMovieRenderStrategyXBox::Render( void )
{
    rAssert( m_pD3dTexture != NULL );
    rAssert( m_pPddiShader != NULL );

    // Don't get messed around by what the game is doing

    bool isZBuf = p3d::pddi->IsZBufferEnabled( );
    pddiProjectionMode projectionMode = p3d::pddi->GetProjectionMode( );
    pddiCullMode cullMode = p3d::pddi->GetCullMode( );

    p3d::pddi->EnableZBuffer( false );
	p3d::pddi->SetProjectionMode(PDDI_PROJECTION_DEVICE);
	p3d::pddi->SetCullMode(PDDI_CULL_NONE);

    // The yuy2 texture is unsual and must be explicitly enabled.

    ( ( d3dDisplay * ) p3d::context->GetDisplay( ) )->GetD3DDevice( )->SetRenderState( D3DRS_YUVENABLE, true );

    // Use a pddi prim stream to render the movie.  We need 4 vertices.

    pddiPrimStream * pStream = p3d::context->GetContext( )->BeginPrims(m_pPddiShader, PDDI_PRIM_TRISTRIP, PDDI_V_CT, 4);

    // The coordinate values

/*    float top = 0.0f;
    float left = 0.0f;
    float bottom = (float) p3d::context->GetDisplay()->GetHeight();
    float right = (float) p3d::context->GetDisplay()->GetWidth();
    float topv = 0.0f;
    float leftu = 0.0f;
    float bottomv = bottom;
    float rightu = right;
    float nearPlane = 1.0f;
*/
    D3DSURFACE_DESC desc;
    HRESULT hr = m_pIDirect3DSurface8->GetDesc( & desc );
    rAssert( hr == S_OK );

    float top = ( float )( p3d::context->GetDisplay()->GetHeight() - desc.Height ) / 2.0f;
    float left = ( float )( p3d::context->GetDisplay( )->GetWidth( ) - desc.Width ) / 2.0f;
    float bottom = ( float )( p3d::context->GetDisplay( )->GetHeight( ) - desc.Height ) / 2.0f + desc.Height;
    float right = (float)( p3d::context->GetDisplay( )->GetWidth( ) - desc.Width ) /2.0f + desc.Width;
    float topv = 0.0f;
    float leftu = 0.0f;
    float bottomv = ( float ) desc.Height;
    float rightu = ( float ) desc.Width;
    float nearPlane = 1.0f;


    // Upper left

    pStream->Colour( tColour(255,255,255) );
    pStream->UV(leftu,topv);
    pStream->Coord(left, top, nearPlane);

    // Upper right

    pStream->Colour( tColour(255,255,255) );
    pStream->UV(rightu,topv);
    pStream->Coord(right, top, nearPlane);

    // Lower left

    pStream->Colour( tColour(255,255,255) );
    pStream->UV(leftu,bottomv);
    pStream->Coord(left, bottom, nearPlane);

    // Lower right

    pStream->Colour( tColour(255,255,255) );
    pStream->UV(rightu,bottomv);
    pStream->Coord(right, bottom, nearPlane);

    // Done

    p3d::context->GetContext( )->EndPrims( pStream );

    // Because the yuv enabled render mode may affect other art, turn it off

    ( ( d3dDisplay * ) p3d::context->GetDisplay( ) )->GetD3DDevice( )->SetRenderState( D3DRS_YUVENABLE, false );

    // Restore everything else

    p3d::pddi->EnableZBuffer( isZBuf );
	p3d::pddi->SetProjectionMode( projectionMode );
	p3d::pddi->SetCullMode( cullMode );

    return true;
}

//=============================================================================
// ::radMovieSimpleFullScreenRenderStrategyCreate
//=============================================================================

IRadMovieRenderStrategy * radMovieSimpleFullScreenRenderStrategyCreate( radMemoryAllocator allocator )
{
    return new( allocator )radMovieRenderStrategyXBox( );
}

#endif // !RAD_MOVIEPLAYER_USE_BINK