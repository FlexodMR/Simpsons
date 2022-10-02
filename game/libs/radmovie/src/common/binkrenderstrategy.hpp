//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        binkrenderstrategyxbox.hpp
//
// Subsystem:	Foundation Technologies - Movie Player
//
// Description:	This is an xbox render strategy implementation
//
// Date:    	August 21, 2002 RWS
//
//=============================================================================

#ifndef BINKRENDERSTRATEGYXBOX_HPP
#define BINKRENDERSTRATEGYXBOX_HPP

//=============================================================================
// Include Files
//=============================================================================

#include <radmovie2.hpp>

#ifdef RAD_MOVIEPLAYER_USE_BINK

//=============================================================================
// Definitions
//=============================================================================

#ifdef RAD_WIN32
// Some pc video cards have max texture size so limit all texture dimensions to this
#define RMV_TEXTURE_MAX_TEX_DIM 256
#else
#define RMV_TEXTURE_MAX_TEX_DIM 1024 // somewhat arbitrary, just needs to be big
#endif // RAD_XBOX

#define RMV_TEXTURE_BITDEPTH 32

// Max number of textures to be used to render a video frame. (Video frame broken
// across many textures to keep texture dimensions smaller than RMV_TEXTURE_MAX_TEX_DIM)
// This value limits the maximum movies (and can be changed if necessary.)

#ifdef RAD_WIN32
#define RMV_MAX_NUM_TILES 9
#else
#define RMV_MAX_NUM_TILES 1
#endif // RAD_XBOX

//=============================================================================
// Forward Class/Struct Declarations
//=============================================================================

class radMovieRenderStrategyBink;
class tShader;
class tTexture;

//=============================================================================
// Class radMovieRenderStrategyBink
//=============================================================================

class radMovieRenderStrategyBink
    : 
    public IRadMovieRenderStrategy,
    public radRefCount
{
    public:

        IMPLEMENT_REFCOUNTED( "radMovieRenderStrategyBink" )
    
        //
        // Constructor / Destructor
        //

        radMovieRenderStrategyBink( void );
        virtual ~radMovieRenderStrategyBink( void );

        //
        // IRadMovieRenderStrategy
        //

        virtual void ResetDestinations( void );
        virtual unsigned int LockNextDestination( LockedDestination * pLockedDestination );
        virtual void UnlockDestination( void );

        virtual void ChangeParameters( unsigned int width, unsigned int height );

        virtual bool Render( void );

    private:

        struct Tile
        {
            tTexture * m_pTexture;
            
            int m_PosX;    // Position in pixels (left)
            int m_PosY;    // Position in pixels (top)
            unsigned int m_Width;   // Width in pixels
            unsigned int m_Height;  // Height in pixels
        };

        tShader* m_pShader;

        int m_MoviePosX;
        int m_MoviePosY;
        unsigned int m_MovieWidth;
        unsigned int m_MovieHeight;
		float m_DisplayMultiplier;

		unsigned int m_NumTiles;
        unsigned int m_CurrentDestIndex;

        Tile m_pTile[ RMV_MAX_NUM_TILES ];

        bool m_DestLocked;
};

#endif // RAD_MOVIEPLAYER_USE_BINK

#endif // BINKRENDERSTRATEGYXBOX_HPP
