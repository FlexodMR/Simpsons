//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


//=============================================================================
//
// File:        renderstrategygcn.cpp
// Subsystem:	Foundation Technologies - Movie
//
// Description:	This is an gcn render strategy implementation
//
// Date:    	July 16, 2002 RWS
//
//=============================================================================

//=============================================================================
// Include Files
//=============================================================================

#include <radoptions.hpp>

#ifndef RAD_MOVIEPLAYER_USE_BINK

#include <p3d/pure3d.hpp>
#include "renderstrategygcn.hpp"

//=============================================================================
// Definitions
//=============================================================================

//
// Current implementation only plays movies of 640 * 480. May change in future. For
// PAL, we use  640 * 528
//
#ifndef PAL
#define IMAGE_WIDTH     640
#define IMAGE_HEIGHT    480    
#else
#define IMAGE_WIDTH     640
#define IMAGE_HEIGHT    528    
#endif

//=============================================================================
// Global variables
//=============================================================================

//
// The following are some crazy tables that are used
// the convert the decoded video data into a 
// renderable format.  I think that they came from
// Eric Honsch.  So talk to him.
//

//Table for converting 0-64<x<255+64 to 0<x<255

static u8 ClipTbl[] ATTRIBUTE_ALIGN(32) =
{
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//0x00
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//0x10
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//0x20
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//0x30
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  //0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//0x40
  //0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  //0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//0x50
  //0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  //0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//0x60
  //0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  //0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,//0x70
  //0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,

  0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,//0x00
  0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f,
  0x10,0x11,0x12,0x13,0x14,0x15,0x16,0x17,//0x10
  0x18,0x19,0x1a,0x1b,0x1c,0x1d,0x1e,0x1f,
  0x20,0x21,0x22,0x23,0x24,0x25,0x26,0x27,//0x20
  0x28,0x29,0x2a,0x2b,0x2c,0x2d,0x2e,0x2f,
  0x30,0x31,0x32,0x33,0x34,0x35,0x36,0x37,//0x30
  0x38,0x39,0x3a,0x3b,0x3c,0x3d,0x3e,0x3f,
  0x40,0x41,0x42,0x43,0x44,0x45,0x46,0x47,//0x40
  0x48,0x49,0x4a,0x4b,0x4c,0x4d,0x4e,0x4f,
  0x50,0x51,0x52,0x53,0x54,0x55,0x56,0x57,//0x50
  0x58,0x59,0x5a,0x5b,0x5c,0x5d,0x5e,0x5f,
  0x60,0x61,0x62,0x63,0x64,0x65,0x66,0x67,//0x60
  0x68,0x69,0x6a,0x6b,0x6c,0x6d,0x6e,0x6f,
  0x70,0x71,0x72,0x73,0x74,0x75,0x76,0x77,//0x70
  0x78,0x79,0x7a,0x7b,0x7c,0x7d,0x7e,0x7f,
  0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,//0x80
  0x88,0x89,0x8a,0x8b,0x8c,0x8d,0x8e,0x8f,
  0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,//0x90
  0x98,0x99,0x9a,0x9b,0x9c,0x9d,0x9e,0x9f,
  0xa0,0xa1,0xa2,0xa3,0xa4,0xa5,0xa6,0xa7,//0xa0
  0xa8,0xa9,0xaa,0xab,0xac,0xad,0xae,0xaf,
  0xb0,0xb1,0xb2,0xb3,0xb4,0xb5,0xb6,0xb7,//0xb0
  0xb8,0xb9,0xba,0xbb,0xbc,0xbd,0xbe,0xbf,
  0xc0,0xc1,0xc2,0xc3,0xc4,0xc5,0xc6,0xc7,//0xc0
  0xc8,0xc9,0xca,0xcb,0xcc,0xcd,0xce,0xcf,
  0xd0,0xd1,0xd2,0xd3,0xd4,0xd5,0xd6,0xd7,//0xd0
  0xd8,0xd9,0xda,0xdb,0xdc,0xdd,0xde,0xdf,
  0xe0,0xe1,0xe2,0xe3,0xe4,0xe5,0xe6,0xe7,//0xe0
  0xe8,0xe9,0xea,0xeb,0xec,0xed,0xee,0xef,
  0xf0,0xf1,0xf2,0xf3,0xf4,0xf5,0xf6,0xf7,//0xf0
  0xf8,0xf9,0xfa,0xfb,0xfc,0xfd,0xfe,0xff,

  //0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,//0x00
  //0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,
  //0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,//0x10
  //0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,
  //0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,//0x20
  //0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,
  //0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,//0x30
  //0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,
  0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,//0x40
  0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,
  0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,//0x50
  0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,
  0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,//0x60
  0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,
  0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff,//0x70
  0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xff
};

//Table for converting v to 1.140*(V-128)

static s16 rvTbl[] ATTRIBUTE_ALIGN(32) =
{
  -146,-145,-144,-143,-142,-141,-140,-138,
  -137,-136,-135,-134,-133,-132,-130,-129,
  -128,-127,-126,-125,-124,-122,-121,-120,
  -119,-118,-117,-116,-114,-113,-112,-111,
  -110,-109,-108,-106,-105,-104,-103,-102,
  -101,-100,-99,-97,-96,-95,-94,-93,
  -92,-91,-89,-88,-87,-86,-85,-84,
  -83,-81,-80,-79,-78,-77,-76,-75,
  -73,-72,-71,-70,-69,-68,-67,-65,
  -64,-63,-62,-61,-60,-59,-57,-56,
  -55,-54,-53,-52,-51,-50,-48,-47,
  -46,-45,-44,-43,-42,-40,-39,-38,
  -37,-36,-35,-34,-32,-31,-30,-29,
  -28,-27,-26,-24,-23,-22,-21,-20,
  -19,-18,-16,-15,-14,-13,-12,-11,
  -10,-8,-7,-6,-5,-4,-3,-2,
  0,1,2,3,4,5,6,7,
  9,10,11,12,13,14,15,17,
  18,19,20,21,22,23,25,26,
  27,28,29,30,31,33,34,35,
  36,37,38,39,41,42,43,44,
  45,46,47,49,50,51,52,53,
  54,55,56,58,59,60,61,62,
  63,64,66,67,68,69,70,71,
  72,74,75,76,77,78,79,80,
  82,83,84,85,86,87,88,90,
  91,92,93,94,95,96,98,99,
  100,101,102,103,104,105,107,108,
  109,110,111,112,113,115,116,117,
  118,119,120,121,123,124,125,126,
  127,128,129,131,132,133,134,135,
  136,137,139,140,141,142,143,144
};

//Table for converting U to -0.396*(U-128)

static s16 guTbl[] ATTRIBUTE_ALIGN(32) =
{
  50,50,49,49,49,48,48,47,
  47,47,46,46,45,45,45,44,
  44,44,43,43,42,42,42,41,
  41,40,40,40,39,39,38,38,
  38,37,37,36,36,36,35,35,
  34,34,34,33,33,32,32,32,
  31,31,30,30,30,29,29,28,
  28,28,27,27,26,26,26,25,
  25,24,24,24,23,23,22,22,
  22,21,21,21,20,20,19,19,
  19,18,18,17,17,17,16,16,
  15,15,15,14,14,13,13,13,
  12,12,11,11,11,10,10,9,
  9,9,8,8,7,7,7,6,
  6,5,5,5,4,4,3,3,
  3,2,2,1,1,1,0,0,
  0,-1,-1,-2,-2,-2,-3,-3,
  -4,-4,-4,-5,-5,-6,-6,-6,
  -7,-7,-8,-8,-8,-9,-9,-10,
  -10,-10,-11,-11,-12,-12,-12,-13,
  -13,-14,-14,-14,-15,-15,-16,-16,
  -16,-17,-17,-18,-18,-18,-19,-19,
  -20,-20,-20,-21,-21,-22,-22,-22,
  -23,-23,-23,-24,-24,-25,-25,-25,
  -26,-26,-27,-27,-27,-28,-28,-29,
  -29,-29,-30,-30,-31,-31,-31,-32,
  -32,-33,-33,-33,-34,-34,-35,-35,
  -35,-36,-36,-37,-37,-37,-38,-38,
  -39,-39,-39,-40,-40,-41,-41,-41,
  -42,-42,-43,-43,-43,-44,-44,-45,
  -45,-45,-46,-46,-46,-47,-47,-48,
  -48,-48,-49,-49,-50,-50,-50,-51
};

//Table for converting V to -0.581*(V-128)

static s16 gvTbl[] ATTRIBUTE_ALIGN(32) =
{
  74,73,73,72,72,71,70,70,
  69,69,68,67,67,66,66,65,
  65,64,63,63,62,62,61,61,
  60,59,59,58,58,57,56,56,
  55,55,54,54,53,52,52,51,
  51,50,49,49,48,48,47,47,
  46,45,45,44,44,43,42,42,
  41,41,40,40,39,38,38,37,
  37,36,36,35,34,34,33,33,
  32,31,31,30,30,29,29,28,
  27,27,26,26,25,24,24,23,
  23,22,22,21,20,20,19,19,
  18,18,17,16,16,15,15,14,
  13,13,12,12,11,11,10,9,
  9,8,8,7,6,6,5,5,
  4,4,3,2,2,1,1,0,
  0,-1,-2,-2,-3,-3,-4,-5,
  -5,-6,-6,-7,-7,-8,-9,-9,
  -10,-10,-11,-12,-12,-13,-13,-14,
  -14,-15,-16,-16,-17,-17,-18,-19,
  -19,-20,-20,-21,-21,-22,-23,-23,
  -24,-24,-25,-25,-26,-27,-27,-28,
  -28,-29,-30,-30,-31,-31,-32,-32,
  -33,-34,-34,-35,-35,-36,-37,-37,
  -38,-38,-39,-39,-40,-41,-41,-42,
  -42,-43,-43,-44,-45,-45,-46,-46,
  -47,-48,-48,-49,-49,-50,-50,-51,
  -52,-52,-53,-53,-54,-55,-55,-56,
  -56,-57,-57,-58,-59,-59,-60,-60,
  -61,-62,-62,-63,-63,-64,-64,-65,
  -66,-66,-67,-67,-68,-68,-69,-70,
  -70,-71,-71,-72,-73,-73,-74,-74
};

//Table for converting U to 2.029*(U-128)

static s16 buTbl[] ATTRIBUTE_ALIGN(32) =
{
  -260,-258,-256,-254,-252,-250,-248,-246,
  -244,-242,-240,-238,-236,-234,-232,-230,
  -228,-226,-224,-222,-220,-218,-216,-214,
  -212,-210,-207,-205,-203,-201,-199,-197,
  -195,-193,-191,-189,-187,-185,-183,-181,
  -179,-177,-175,-173,-171,-169,-167,-165,
  -163,-161,-159,-157,-155,-153,-151,-149,
  -147,-145,-143,-141,-138,-136,-134,-132,
  -130,-128,-126,-124,-122,-120,-118,-116,
  -114,-112,-110,-108,-106,-104,-102,-100,
  -98,-96,-94,-92,-90,-88,-86,-84,
  -82,-80,-78,-76,-74,-72,-69,-67,
  -65,-63,-61,-59,-57,-55,-53,-51,
  -49,-47,-45,-43,-41,-39,-37,-35,
  -33,-31,-29,-27,-25,-23,-21,-19,
  -17,-15,-13,-11,-9,-7,-5,-3,
  0,2,4,6,8,10,12,14,
  16,18,20,22,24,26,28,30,
  32,34,36,38,40,42,44,46,
  48,50,52,54,56,58,60,62,
  64,66,68,71,73,75,77,79,
  81,83,85,87,89,91,93,95,
  97,99,101,103,105,107,109,111,
  113,115,117,119,121,123,125,127,
  129,131,133,135,137,140,142,144,
  146,148,150,152,154,156,158,160,
  162,164,166,168,170,172,174,176,
  178,180,182,184,186,188,190,192,
  194,196,198,200,202,204,206,209,
  211,213,215,217,219,221,223,225,
  227,229,231,233,235,237,239,241,
  243,245,247,249,251,253,255,257
};

//=============================================================================
// radMovieRenderStrategyGcn::radMovieRenderStrategyGcn
//=============================================================================

radMovieRenderStrategyGcn::radMovieRenderStrategyGcn( void )
    :
    radRefCount( 0 ),
    m_refTTexture( NULL ),
    m_refTShader( NULL ),
    m_pFrameBuffer( NULL ),
    m_Width( 0 ),
    m_Height( 0 )
{

    //
    // Lets constuct the frame buffer to perform rendering.
    //
    m_pFrameBuffer = radMemoryAllocAligned( GetThisAllocator( ), 
                                            IMAGE_WIDTH * IMAGE_HEIGHT * VI_DISPLAY_PIX_SZ,
                                            32 );

}

//=============================================================================
// radMovieRenderStrategyGcn::~radMovieRenderStrategyGcn
//=============================================================================

radMovieRenderStrategyGcn::~radMovieRenderStrategyGcn( void )
{

}

//=============================================================================
// radMovieRenderStrategyGcn::SetParameters
//=============================================================================

void radMovieRenderStrategyGcn::SetParameters( unsigned int width, unsigned int height )
{
    rAssert( width == 640 && height == 480 );

    if( width != m_Width || height != m_Height )
    {
        m_Width = width;
        m_Height = height;

        //
        // Pure3d passes allocators in to its objects by using a 
        // global current allocator.  Hang on to whatever it is,
        // provide a new one, and then later we'll restore it.
        //

        radMemoryAllocator allocatorBefore = ::radMemorySetCurrentAllocator( GetThisAllocator( ) );

        //
        // Create new texture and shader to fit the required width and height
        //

	    pddiTextureDesc textureDesc;
        textureDesc.SetSizeX( m_Width );
        textureDesc.SetSizeY( m_Height );
        textureDesc.SetBitDepth( 32 );
        textureDesc.SetAlphaDepth( 8 );
        textureDesc.SetType( PDDI_TEXTYPE_GC_32BIT );
        textureDesc.SetMemImage( true );

        m_refTTexture = p3d::device->NewTexture( & textureDesc );
        rAssert( m_refTTexture != NULL );

        // I'm creating a new shader each time because I had problems 
        // with the shader not properly handling the 

	    m_refTShader = p3d::device->NewShader("simple");
	    rAssert( m_refTShader != NULL );
        m_refTShader->SetTexture( PDDI_SP_BASETEX, m_refTTexture );
        GXInvalidateTexAll();
    }
}

//=============================================================================
// radMovieRenderStrategyGcn::ResetParameters
//=============================================================================

void radMovieRenderStrategyGcn::Reset( void )
{
}

//=============================================================================
// radMovieRenderStrategyGcn::Render
//=============================================================================

bool radMovieRenderStrategyGcn::Render( void * pBuffer )
{
    rAssert( m_Width != 0 && m_Height != 0 );
#if 0
    //
    // Waiting here for VSynch stops tearing.
    //
    VIWaitForRetrace( );

    //
    // Here we have the frame to render. Convert it to the correct format.
    //
    m_MoviePlayerUtil.Yuv4112yuv( (unsigned char*) pBuffer,
                                  (unsigned char*) m_pFrameBuffer,
                                  0,
                                  0,
                                  m_Width, 
                                  m_Height,
                                  m_Width, 
                                  m_Height );

    DCStoreRange( m_pFrameBuffer, IMAGE_WIDTH * IMAGE_HEIGHT * VI_DISPLAY_PIX_SZ );

    VISetNextFrameBuffer( m_pFrameBuffer );
    VIFlush();  


#else

    rAssert( pBuffer != NULL );

    // Don't get messed around by what the game is doing

    bool isZBuf = p3d::pddi->IsZBufferEnabled( );
    pddiProjectionMode projectionMode = p3d::pddi->GetProjectionMode( );
    pddiCullMode cullMode = p3d::pddi->GetCullMode( );

    p3d::pddi->EnableZBuffer( false );
	p3d::pddi->SetProjectionMode(PDDI_PROJECTION_DEVICE);
	p3d::pddi->SetCullMode(PDDI_CULL_NONE);

    //////////////////////////////////////////////////////////////////
    // Function: ConvertAndPure3DRender
    //
    // Description: Convert the decocded Video frame from YUV411 into RGBA8888 and render using Pure3D
    // Inputs:  pDecodeVideoFrame - pointer to decoded video data in YUV411 format.
    //          tex - Pure3D PDDI texture pointer
    //          shader - Pure3D PDDI shader pointer
    //          x - the x coordinate of the video frame
    //          y - the y coordinate of the video frame
    //
    // Notes:
    //
    //////////////////////////////////////////////////////////////////

    //
    // We're going to convert the data in the decodevideoframe into
    // a format that can be rendered.  This requires locking the texture
    // so that we can access its bits.  The zero means that we want
    // the first surface (there is only one)
    //

	pddiLockInfo * pTempLockInfo = m_refTTexture->Lock( 0 );

    // Convert the frame and transfer it into the texture


    ConvertTexRgba8( ( char * ) pBuffer,
                     ( char * ) pTempLockInfo->bits,
                     m_Width, 
                     m_Height );

    // We can unlock the texture, it's good now

	m_refTTexture->Unlock( 0 );

    // Eric H. said that putting this invalidate texture call might be good

    GXInvalidateTexAll();    

    //
    // Put the texture up on the screen.  We stream the texture
    // using a prim stream and by placing the vertices of the
    // polygon.  As if by magic, the video buffer will get filled
    // with the image of our movie frame.  I find this all very 
    // miraculous
    //

    // Start a tristrip of 4 vertices

    m_refTShader->SetInt(PDDI_SP_BLENDMODE, PDDI_BLEND_NONE );

    float m_vCoord = 1.0f;
    float m_uCoord = 1.0f;

    float x = 0.0f;
    float y = 0.0f;
    float z = 5.0f;

    float sx = (float)p3d::display->GetWidth();
    float sy = (float) p3d::display->GetHeight();

    pddiPrimStream* stream = p3d::pddi->BeginPrims( m_refTShader, PDDI_PRIM_TRIANGLES, PDDI_V_CT, 6 );

    stream->Colour(tColour(255,255,255));
    stream->UV(0.0f, m_vCoord);
    stream->Coord(x, y + sy, z);

    stream->Colour(tColour(255,255,255));
    stream->UV(m_uCoord, m_vCoord);
    stream->Coord(x + sx, y + sy, z);

    stream->Colour(tColour(255,255,255));
    stream->UV(m_uCoord, 0.0f);
    stream->Coord(x + sx, y, z);

    stream->Colour(tColour(255,255,255));
    stream->UV(0.0f, m_vCoord);
    stream->Coord(x, y + sy, z);

    stream->Colour(tColour(255,255,255));
    stream->UV(m_uCoord, 0.0f);
    stream->Coord(x + sx, y, z);

    stream->Colour(tColour(255,255,255));
    stream->UV(0.0f, 0.0f);
    stream->Coord(x, y, z);
    p3d::pddi->EndPrims(stream);

    // Restore everything else

    p3d::pddi->EnableZBuffer( isZBuf );
	p3d::pddi->SetProjectionMode( projectionMode );
	p3d::pddi->SetCullMode( cullMode );

#endif // 0

	return true;
}

//=============================================================================
// radMovieRenderStrategyGcn::ConverTexRgba8
//=============================================================================
//	fnc	Converts decoded data to RGBA8 format
//	arg	pSrc	Pointer to pre-converted data
//		pDst	Pointer to converted data
//		ImageW
//		ImageH
//	ret	None
//	note	The height of image should be a multiple of 4,
//		and the width should be a multiple of 4
//      This function is from HVQM-support.  This routine generally takes 10ms
//      to convert a 640X480 video frame.
////////////////////////////////////////////////////////////////////////////

/*

void radMovieRenderStrategyGcn::ConvertTexRgba8(u8 *pSrc,u8 *pDst,u32 ImageW,u32 ImageH)
{

  u32 *pTex;
  u32 *pTexb;
  u32 *pTexT;
  s16 *prvTbl,*pguTbl,*pgvTbl,*pbuTbl;
  u8 *pY1,*pY2,*pU,*pV;
  u8 *pClipTbl;
  s32 u,v;
  s32 y1,y2;
  s32 ruv,guv,buv;
  u32 w,h;

  ASSERT(pSrc!=NULL);
  ASSERT(pDst!=NULL);

  pClipTbl=ClipTbl;

  prvTbl=rvTbl;
  pguTbl=guTbl;
  pgvTbl=gvTbl;
  pbuTbl=buTbl;

  ASSERT((ImageH%4)==0);
  ASSERT((ImageW%4)==0);

  pY1=pSrc;
  pY2=pY1+ImageW;
  pU=pY1+ImageW*ImageH;
  pV=pU+(ImageW/2)*(ImageH/2);

  pTex=(u32 *)pDst;
  pTexb=pTex+4;

  for(h=0;h<ImageH;h+=2){
    for(w=0;w<ImageW;w+=4){
      u=pU[0];
      v=pV[0];

      ruv=prvTbl[v]+64;
      guv=pguTbl[u]+pgvTbl[v]+64;
      buv=pbuTbl[u]+64;

      y1=pY1[0];
      y2=pY1[1];

      pTex[0]=(u32)((255<<24)|(pClipTbl[y1+ruv]<<16)|(255<<8)|pClipTbl[y2+ruv]);
      pTex[8]=(u32)((pClipTbl[y1+guv]<<24)|(pClipTbl[y1+buv]<<16)|(pClipTbl[y2+guv]<<8)|pClipTbl[y2+buv]);

      y1=pY2[0];
      y2=pY2[1];

      pTex[2]=(u32)((255<<24)|(pClipTbl[y1+ruv]<<16)|(255<<8)|pClipTbl[y2+ruv]);
      pTex[10]=(u32)((pClipTbl[y1+guv]<<24)|(pClipTbl[y1+buv]<<16)|(pClipTbl[y2+guv]<<8)|pClipTbl[y2+buv]);

      u=pU[1];
      v=pV[1];

      ruv=prvTbl[v]+64;
      guv=pguTbl[u]+pgvTbl[v]+64;
      buv=pbuTbl[u]+64;

      y1=pY1[2];
      y2=pY1[3];

      pTex[1]=(u32)((255<<24)|(pClipTbl[y1+ruv]<<16)|(255<<8)|pClipTbl[y2+ruv]);
      pTex[9]=(u32)((pClipTbl[y1+guv]<<24)|(pClipTbl[y1+buv]<<16)|(pClipTbl[y2+guv]<<8)|pClipTbl[y2+buv]);

      y1=pY2[2];
      y2=pY2[3];

      pTex[3]=(u32)((255<<24)|(pClipTbl[y1+ruv]<<16)|(255<<8)|pClipTbl[y2+ruv]);
      pTex[11]=(u32)((pClipTbl[y1+guv]<<24)|(pClipTbl[y1+buv]<<16)|(pClipTbl[y2+guv]<<8)|pClipTbl[y2+buv]);

      pU+=2;
      pV+=2;
      pY1+=4;
      pY2+=4;
      pTex+=16;
    }
    pY1=pY2;
    pY2+=ImageW;

    pTexT=pTex;
    pTex=pTexb;
    pTexb=pTexT;
  }

  DCFlushRange(pDst,ImageW*ImageH*sizeof(u32));
}

 */

//=============================================================================
// ::radMovieSimpleFullScreenRenderStrategyCreate
//=============================================================================

IRadMovieRenderStrategy * radMovieSimpleFullScreenRenderStrategyCreate( radMemoryAllocator allocator )
{
    return new( allocator )radMovieRenderStrategyGcn( );
}



/**************************************************************************

    YUV411 to RGBA32 converter

  GQR Settings:

    gqr0 is always NO translation (floats)
    gqr4 8 bit unsigned in/out in 0.8
  
  Input Registers:

    r3  width       
    r4  height
    r5  src pointer
    r6  alpha value     

  Used registers:

    r3  Y Scanline pitch
    r4  tile loop counter
    r5  WGP Pointer
    r6  alpha value     
    r7  Y pointer
    r8  U pointer
    r9  V pointer
    r10 UV Scanline pitch 
    r11 temp Y pointer
    r12 temp Y pointer for line offsets inside tile

    f0  - f7   ey[0][0] - ey[3][3]
    f8  - f9   eu[0][0] - eu[1][1]
    f10 - f11  ev[0][0] - ev[1][1]

    

WGP: 
    Must be redirected to the texture destination pointer
    NOTE: There must be AT LEAST 32 extra pad bytes at then end of the texture to flush the WGP!


GQR:
    Stomps GQR 4

Algorithm:
    For each pixel:                                                 

    ey = Y[y][x] - 16;
    eu = U[y/2][x/2] - 128;
    ev = V[y/2][x/2] - 128;

    R = (1.164 * ey) + (0     * eu) + (1.596 * ev)
    G = (1.164 * ey) - (0.391 * eu) - (0.813 * ev)
    B = (1.164 * ey) + (2.018 * eu) + (0     * ev)

**************************************************************************/

static float convconsts[8] = {
                                0.07275F, // f25   - 16   for Y
                                0.500F,   // f26   - 128  for UV
                                1.164F,   // f27
                                1.596F,   // f28
                               -0.391F,   // f29 ps0
                                2.018F,   // f29 ps1
                               -0.813F,   // f30 ps0
                                0.0F      // f30 ps1
                             };

asm void YUV411ToRGBA32(register int width, register int height, register void *src, register unsigned char alpha)
{
    nofralloc

    // spill the extra registers
    stwu    r1,  -160(r1)
    stfd    f14,   8(r1)
    stfd    f15,  16(r1)
    stfd    f16,  24(r1)
    stfd    f17,  32(r1)
    stfd    f18,  40(r1)
    stfd    f19,  48(r1)
    stfd    f20,  56(r1)
    stfd    f21,  64(r1)
    stfd    f22,  72(r1)
    stfd    f23,  80(r1)
    stfd    f24,  88(r1)
    stfd    f25,  96(r1)
    stfd    f26, 104(r1)
    stfd    f27, 112(r1)
    stfd    f28, 120(r1)
    stfd    f29, 128(r1)
    stfd    f30, 136(r1)
    stfd    f31, 144(r1)

    // setup GQR 4 for 8 bit unsigned in 0.8 fixed format

    li      r12, 0x0804
    oris    r12, r12, 0x0804
    mtspr   gqr4, r12

    // Load f Constants
    lis       r12, convconsts@h
    ori       r12, r12, convconsts@l

    lfs     f25, 0x00(r12) //  0.0625 
    lfs     f26, 0x04(r12) //  0.500 
    lfs     f27, 0x08(r12) //  1.164 
    lfs     f28, 0x0C(r12) //  1.596 
    psq_l   f29, 0x10(r12), 0, 0 //  -0.391 2.018 
    psq_l   f30, 0x18(r12), 0, 0 //  -0.813 0.000

    // Convert width & height to tile count

    // create YUV pointers
    mullw   r11, r3, r4     // Number of pixels in r11

    mr      r7, r5          // Y Pointer is the input pointer
    add     r8, r5, r11     // U Pointer is w*h bytes into the source data
    srwi    r11, r11, 2     // divide pixel count by four
    add     r9, r8, r11     // V pointer is w*h/4 bytes after U pointer  

    srwi    r10, r4, 2      // divide h by four to convert to row tile count
    mtctr   r10             // move the row tile count into the count register

    srwi    r10, r3, 1      // divide w by two to convert to UV Pitch

    // Done with the source pointer, stomp it with the WGP address
    lis     r5, 0xCC00      // upper 16 bits 
    ori     r5, r5, 0x8000  // lower 16 bits 

RowLoop:

    srwi        r4, r3, 2               // Divide the width by four for the number of tiles per scanline
    

TileLoop:

    add         r11, r7, r3
    add         r12, r11, r3


    psq_l       f0, 0x00(r7),  0, 4     // Load Y00 Y10
    psq_l       f2, 0x00(r11), 0, 4     // Load Y01 Y11
    psq_l       f4, 0x00(r12), 0, 4     // Load Y02 Y12

    subi        r4, r4, 1               // decrement the tile count

    psq_l       f1, 0x02(r7),  0, 4     // Load Y20 Y30
    psq_l       f3, 0x02(r11), 0, 4     // Load Y21 Y31
    psq_l       f5, 0x02(r12), 0, 4     // Load Y22 Y32

    addi        r7, r7, 4               // Move pointer to the start of the next tile

    psq_lux     f6, r12, r3,   0, 4     // Load Y03 Y13

    ps_msub     f0, f0, f27, f25        // f0 = (Y - 16) * 1.164  0,0 & 1,0
    ps_msub     f1, f1, f27, f25        // f1 = (Y - 16) * 1.164  2,0 & 3,0

    psq_l       f7, 0x02(r12), 0, 4     // Load Y23 Y33 

    ps_msub     f2, f2, f27, f25        // f2 = (Y - 16) * 1.164  0,1 & 1,1
    ps_msub     f3, f3, f27, f25        // f3 = (Y - 16) * 1.164  2,1 & 3,1

    psq_l       f8,  0x00(r8), 0, 4     // Load U00 U10

    ps_msub     f4, f4, f27, f25        // f4 = (Y - 16) * 1.164  0,2 & 1,2
    ps_msub     f5, f5, f27, f25        // f5 = (Y - 16) * 1.164  2,2 & 3,2

    psq_lx      f9,  r8, r10, 0, 4      // Load U01 U11
              
    ps_msub     f6, f6, f27, f25        // f6 = (Y - 16) * 1.164  0,3 & 1,4
    ps_msub     f7, f7, f27, f25        // f7 = (Y - 16) * 1.164  2,3 & 3,4

    psq_l       f10, 0x00(r9), 0, 4     // Load V00 U10
    psq_lx      f11, r9, r10, 0, 4      // Load V01 U11

    addi        r8, r8, 2               // Move U pointer to start of next tile
    ps_sub      f8,  f8,  f26           // f8  = (U-128)   0,0 & 1,0
    ps_sub      f9,  f9,  f26           // f9  = (U-128)   0,1 & 1,1

    addi        r9, r9, 2               // Move V pointer to start of next tile

    ps_sub      f10, f10, f26           // f10 = (V-128)   0,0 & 1,0
    ps_sub      f11, f11, f26           // f11 = (V-128)   0,1 & 1,1


    // Compute Red 00 - 13
    ps_madds0   f12, f28, f10, f0       // f12 is R00 R10
    ps_madds1   f13, f28, f10, f1       // f13 is R20 R30
    ps_madds0   f14, f28, f10, f2       // f14 is R01 R11
    ps_madds1   f15, f28, f10, f3       // f15 is R31 R31

    stb         r6,  0x00(r5)           // Alpha 0
    psq_st      f12, 0x00(r5), 1, 4     // Red 0 

    ps_merge11  f16, f12, f12           // Put Red11 in f12
    ps_merge11  f17, f13, f13           // Put Red33 in f12
    ps_merge11  f18, f14, f14           // Put Red55 in f12
    ps_merge11  f19, f15, f15           // Put Red77 in f12

    // Store Alpha & Red for first 8 pixels
    stb         r6,  0x00(r5)           // Alpha 1
    psq_st      f16, 0x00(r5), 1, 4     // Red 1

    stb         r6,  0x00(r5)           // Alpha 2
    psq_st      f13, 0x00(r5), 1, 4     // Red 2 

    stb         r6,  0x00(r5)           // Alpha 3
    psq_st      f17, 0x00(r5), 1, 4     // Red 3

    stb         r6,  0x00(r5)           // Alpha 4
    psq_st      f14, 0x00(r5), 1, 4     // Red 4 

    stb         r6,  0x00(r5)           // Alpha 5
    psq_st      f18, 0x00(r5), 1, 4     // Red 5

    stb         r6,  0x00(r5)           // Alpha 6
    psq_st      f15, 0x00(r5), 1, 4     // Red 0 

    stb         r6,  0x00(r5)           // Alpha 7
    psq_st      f19, 0x00(r5), 1, 4     // Red 7


    // Compute Red 20 - 33
    ps_madds0   f12, f28, f11, f4       // f12 is R02 R12
    ps_madds1   f13, f28, f11, f5       // f13 is R22 R32 
    ps_madds0   f14, f28, f11, f6       // f14 is R03 R13
    ps_madds1   f15, f28, f11, f7       // f15 is R33 R33

    stb         r6,  0x00(r5)           // Alpha 0
    psq_st      f12, 0x00(r5), 1, 4     // Red 0 

    ps_merge11  f16, f12, f12           // Put Red11 in f12
    ps_merge11  f17, f13, f13           // Put Red33 in f12
    ps_merge11  f18, f14, f14           // Put Red55 in f12
    ps_merge11  f19, f15, f15           // Put Red77 in f12

    // Store Alpha & Red for second 8 pixels
    stb         r6,  0x00(r5)           // Alpha 1
    psq_st      f16, 0x00(r5), 1, 4     // Red 1

    stb         r6,  0x00(r5)           // Alpha 2
    psq_st      f13, 0x00(r5), 1, 4     // Red 2 

    stb         r6,  0x00(r5)           // Alpha 3
    psq_st      f17, 0x00(r5), 1, 4     // Red 3

    stb         r6,  0x00(r5)           // Alpha 4
    psq_st      f14, 0x00(r5), 1, 4     // Red 4 

    stb         r6,  0x00(r5)           // Alpha 5
    psq_st      f18, 0x00(r5), 1, 4     // Red 5

    stb         r6,  0x00(r5)           // Alpha 6
    psq_st      f15, 0x00(r5), 1, 4     // Red 0 

    stb         r6,  0x00(r5)           // Alpha 7
    psq_st      f19, 0x00(r5), 1, 4     // Red 7
                         
    // Compute Blue & Green.  Green in ps0, Blue is ps1
    ps_merge00  f12, f0, f0             // Y 00 in ps0 & ps1
    ps_merge11  f13, f0, f0             // Y 10 in ps0 & ps1
    ps_merge00  f14, f1, f1             // Y 20 in ps0 & ps1
    ps_merge11  f15, f1, f1             // Y 30 in ps0 & ps1

    ps_merge00  f16, f2, f2             // Y 01 in ps0 & ps1
    ps_merge11  f17, f2, f2             // Y 11 in ps0 & ps1
    ps_merge00  f18, f3, f3             // Y 21 in ps0 & ps1
    ps_merge11  f19, f3, f3             // Y 31 in ps0 & ps1

    ps_madds0   f12, f29, f8,  f12      // Pixel 00 U  f8 is U00 U10
    ps_madds0   f13, f29, f8,  f13      // Pixel 10 U
    ps_madds1   f14, f29, f8,  f14      // Pixel 20 U
    ps_madds1   f15, f29, f8,  f15      // Pixel 30 U

    ps_madds0   f12, f30, f10, f12      // Pixel 00 V  f10 is V00 V10
    ps_madds0   f13, f30, f10, f13      // Pixel 10 V
    ps_madds1   f14, f30, f10, f14      // Pixel 20 V
    ps_madds1   f15, f30, f10, f15      // Pixel 30 V

    ps_madds0   f16, f29, f8,  f16      // Pixel 01 U  f8 is U00 U10
    ps_madds0   f17, f29, f8,  f17      // Pixel 11 U
    ps_madds1   f18, f29, f8,  f18      // Pixel 21 U
    ps_madds1   f19, f29, f8,  f19      // Pixel 31 U

    ps_madds0   f16, f30, f10, f16      // Pixel 01 V  f10 is V00 V10
    ps_madds0   f17, f30, f10, f17      // Pixel 11 V
    ps_madds1   f18, f30, f10, f18      // Pixel 21 V
    ps_madds1   f19, f30, f10, f19      // Pixel 31 V

    psq_st      f12, 0x00(r5), 0, 4     // Store GB Pixel 00
    psq_st      f13, 0x00(r5), 0, 4     // Store GB Pixel 10
    psq_st      f14, 0x00(r5), 0, 4     // Store GB Pixel 20
    psq_st      f15, 0x00(r5), 0, 4     // Store GB Pixel 30
    psq_st      f16, 0x00(r5), 0, 4     // Store GB Pixel 01
    psq_st      f17, 0x00(r5), 0, 4     // Store GB Pixel 11
    psq_st      f18, 0x00(r5), 0, 4     // Store GB Pixel 21
    psq_st      f19, 0x00(r5), 0, 4     // Store GB Pixel 31

    // Green & Blue second half
    ps_merge00  f12, f4, f4             // Y 00 in ps0 & ps1
    ps_merge11  f13, f4, f4             // Y 10 in ps0 & ps1
    ps_merge00  f14, f5, f5             // Y 20 in ps0 & ps1
    ps_merge11  f15, f5, f5             // Y 30 in ps0 & ps1
    ps_merge00  f16, f6, f6             // Y 01 in ps0 & ps1
    ps_merge11  f17, f6, f6             // Y 11 in ps0 & ps1
    ps_merge00  f18, f7, f7             // Y 21 in ps0 & ps1
    ps_merge11  f19, f7, f7             // Y 31 in ps0 & ps1

    ps_madds0   f12, f29, f9,  f12      // Pixel 02 U  f9 is U01 U11
    ps_madds0   f13, f29, f9,  f13      // Pixel 12 U
    ps_madds1   f14, f29, f9,  f14      // Pixel 22 U
    ps_madds1   f15, f29, f9,  f15      // Pixel 32 U

    ps_madds0   f12, f30, f11, f12      // Pixel 02 V  f11 is V01 V11
    ps_madds0   f13, f30, f11, f13      // Pixel 12 V
    ps_madds1   f14, f30, f11, f14      // Pixel 22 V
    ps_madds1   f15, f30, f11, f15      // Pixel 32 V

    ps_madds0   f16, f29, f9,  f16      // Pixel 03 U  f9 is U01 U11
    ps_madds0   f17, f29, f9,  f17      // Pixel 13 U
    ps_madds1   f18, f29, f9,  f18      // Pixel 23 U
    ps_madds1   f19, f29, f9,  f19      // Pixel 33 U
                                    
    ps_madds0   f16, f30, f11, f16      // Pixel 03 V  f11 is V01 V11
    ps_madds0   f17, f30, f11, f17      // Pixel 13 V
    ps_madds1   f18, f30, f11, f18      // Pixel 23 V
    ps_madds1   f19, f30, f11, f19      // Pixel 33 V
    
    cmpwi       cr0, r4, 0              // test the tile counter

    psq_st      f12, 0x00(r5), 0, 4     // Store GB Pixel 02
    psq_st      f13, 0x00(r5), 0, 4     // Store GB Pixel 12
    psq_st      f14, 0x00(r5), 0, 4     // Store GB Pixel 22
    psq_st      f15, 0x00(r5), 0, 4     // Store GB Pixel 32
    psq_st      f16, 0x00(r5), 0, 4     // Store GB Pixel 03
    psq_st      f17, 0x00(r5), 0, 4     // Store GB Pixel 13
    psq_st      f18, 0x00(r5), 0, 4     // Store GB Pixel 23
    psq_st      f19, 0x00(r5), 0, 4     // Store GB Pixel 33

    bne         cr0, TileLoop           // if not done with this row loop

    // Update the YUV pointers to the start of the next row
    add         r7, r7, r3
    add         r8, r8, r10             // One scanline for U
    add         r7, r7, r3
    add         r9, r9, r10             // One scanline for V
    add         r7, r7, r3              // Add three scanlines to Y pointer to move to next tile

    bdnz        RowLoop                 // branch if not the last row

    // restore the registers that I stomped
    lfd         f14,   8(r1)
    lfd         f15,  16(r1)
    lfd         f16,  24(r1)
    lfd         f17,  32(r1)
    lfd         f18,  40(r1)
    lfd         f19,  48(r1)
    lfd         f20,  56(r1)
    lfd         f21,  64(r1)
    lfd         f22,  72(r1)
    lfd         f23,  80(r1)
    lfd         f24,  88(r1)
    lfd         f25,  96(r1)
    lfd         f26, 104(r1)
    lfd         f27, 112(r1)
    lfd         f28, 120(r1)
    lfd         f29, 128(r1)
    lfd         f30, 136(r1)
    lfd         f31, 144(r1)

    addi        r1, r1, 160

    blr
}




//******************************************************************************************************
//******************************************************************************************************
//******************************************************************************************************
//
//
//
//  Convert YUV411 to RGBA32 wrapper function
//
//


void radMovieRenderStrategyGcn::ConvertTexRgba8(char *src, char *dest, unsigned int width, unsigned int height)
{
    unsigned int wgp = (unsigned int) GXRedirectWriteGatherPipe(dest);
//    assert(wgp == 0xCC008000);

    YUV411ToRGBA32(width, height, src, 0xFF);
    
    GXRestoreWriteGatherPipe();

    GXInvalidateTexAll();
}

#endif // ! RAD_MOVIEPLAYER_USE_BINK



