// DDSFile.h
// Definitions & Routines for DDS files
//
// Part of S3TCTest, example application using S3TCLib.
// Developed for S3 by Seth Sowerby, Volume 11 Software

#ifndef __DDRAW_INCLUDED__

typedef void*				LPVOID;
typedef long				LONG;
typedef unsigned long       DWORD;
typedef unsigned char       BYTE;

#define NO_ERROR 0L

#ifndef MAKEFOURCC
    #define MAKEFOURCC(ch0, ch1, ch2, ch3)                              \
                ((DWORD)(BYTE)(ch0) | ((DWORD)(BYTE)(ch1) << 8) |   \
                ((DWORD)(BYTE)(ch2) << 16) | ((DWORD)(BYTE)(ch3) << 24 ))
#endif /*!defined(MAKEFOURCC)*/

#define DDS_HEADER	 (MAKEFOURCC('D','D','S',' '))
#define FOURCC_DXT1  (MAKEFOURCC('D','X','T','1'))
#define FOURCC_DXT2  (MAKEFOURCC('D','X','T','2'))
#define FOURCC_DXT3  (MAKEFOURCC('D','X','T','3'))
#define FOURCC_DXT4  (MAKEFOURCC('D','X','T','4'))
#define FOURCC_DXT5  (MAKEFOURCC('D','X','T','5'))

/*
 * PALETTEENTRY
 */
typedef struct tagPALETTEENTRY
{
	BYTE        peRed;
	BYTE        peGreen;
	BYTE        peBlue;
	BYTE        peFlags;
} PALETTEENTRY;

/*
 * DDCOLORKEY
 */
typedef struct _DDCOLORKEY
{
	DWORD		dwColorSpaceLowValue;   /* low boundary of color space that is to */
                                        /* be treated as Color Key, inclusive */
	DWORD		dwColorSpaceHighValue;  /* high boundary of color space that is */
                                        /* to be treated as Color Key, inclusive */
} DDCOLORKEY;

/*
 * DDPIXELFORMAT
 */
typedef struct _DDPIXELFORMAT
{
	DWORD		dwSize;                 /* size of structure */
	DWORD		dwFlags;                /* pixel format flags */
	DWORD		dwFourCC;               /* (FOURCC code) */
	DWORD		dwRGBBitCount;          /* how many bits per pixel */
	DWORD		dwRBitMask;             /* mask for red bit */
	DWORD		dwGBitMask;             /* mask for green bits */
	DWORD		dwBBitMask;             /* mask for blue bits */
	DWORD		dwRGBAlphaBitMask;      /* mask for alpha channel */
} DDPIXELFORMAT;

/*
 * DDSCAPS
 */
typedef struct _DDSCAPS
{
    DWORD       dwCaps;         /* capabilities of surface wanted */
} DDSCAPS;

/*
 * DDSCAPS2
 */
typedef struct _DDSCAPS2
{
    DWORD       dwCaps;         /* capabilities of surface wanted */
    DWORD       dwCaps2;
    DWORD       dwCaps3;
    DWORD       dwCaps4;
} DDSCAPS2;

/*
 * DDSURFACEDESC
 */
typedef struct _DDSURFACEDESC
{
	DWORD               dwSize;                 /* size of the DDSURFACEDESC structure */
	DWORD               dwFlags;                /* determines what fields are valid */
	DWORD               dwHeight;               /* height of surface to be created */
	DWORD               dwWidth;                /* width of input surface */
	LONG				lPitch;                 /* distance to start of next line (return value only) */
	DWORD               dwBackBufferCount;      /* number of back buffers requested */
	DWORD				dwMipMapCount;          /* number of mip-map levels requested */
	DWORD               dwAlphaBitDepth;        /* depth of alpha buffer requested */
	DWORD               dwReserved;             /* reserved */
	LPVOID              lpSurface;              /* pointer to the associated surface memory */
	DDCOLORKEY          ddckCKDestOverlay;      /* color key for destination overlay use */
	DDCOLORKEY          ddckCKDestBlt;          /* color key for destination blt use */
	DDCOLORKEY          ddckCKSrcOverlay;       /* color key for source overlay use */
	DDCOLORKEY          ddckCKSrcBlt;           /* color key for source blt use */
	DDPIXELFORMAT       ddpfPixelFormat;        /* pixel format description of the surface */
	DDSCAPS             ddsCaps;                /* direct draw surface capabilities */
} DDSURFACEDESC;

/*
 * DDSURFACEDESC2
 *
 * Not needed by s3tclib but used in DDS file format
 */
typedef struct _DDSURFACEDESC2
{
    DWORD               dwSize;                 /* size of the DDSURFACEDESC structure */
    DWORD               dwFlags;                /* determines what fields are valid */
    DWORD               dwHeight;               /* height of surface to be created */
    DWORD               dwWidth;                /* width of input surface */
	DWORD				dwLinearSize;           /* Formless late-allocated optimized surface size AKA lPitch */
    DWORD               dwBackBufferCount;      /* number of back buffers requested */
	DWORD				dwMipMapCount;          /* number of mip-map levels requested */
    DWORD               dwAlphaBitDepth;        /* depth of alpha buffer requested */
    DWORD               dwReserved;             /* reserved */
    LPVOID              lpSurface;              /* pointer to the associated surface memory */
	DDCOLORKEY			ddckCKDestOverlay;      /* color key for destination overlay use */
    DDCOLORKEY          ddckCKDestBlt;          /* color key for destination blt use */
    DDCOLORKEY          ddckCKSrcOverlay;       /* color key for source overlay use */
    DDCOLORKEY          ddckCKSrcBlt;           /* color key for source blt use */
	DDPIXELFORMAT		ddpfPixelFormat;        /* pixel format description of the surface */
    DDSCAPS2            ddsCaps;                /* direct draw surface capabilities */
    DWORD               dwTextureStage;         /* stage in multitexture cascade */
} DDSURFACEDESC2;

/***************************************************************************
*
*
* DIRECTDRAW DDSURFACEDESC/DDSURFACEDESC2 FLAGS
*
****************************************************************************/

/*
 * ddsCaps field is valid.
 */
#define DDSD_CAPS               0x00000001l     /* default */

/*
 * dwHeight field is valid.
 */
#define DDSD_HEIGHT             0x00000002l

/*
 * dwWidth field is valid.
 */
#define DDSD_WIDTH              0x00000004l

/*
 * lPitch is valid.
 */
#define DDSD_PITCH              0x00000008l

/*
 * lpSurface is valid.
 */
#define DDSD_LPSURFACE          0x00000800l

/*
 * ddpfPixelFormat is valid.
 */
#define DDSD_PIXELFORMAT        0x00001000l

/*
 * ddckCKSrcBlt is valid.
 */
#define DDSD_CKSRCBLT           0x00010000l

/*
 * dwMipMapCount is valid.
 */
#define DDSD_MIPMAPCOUNT        0x00020000l

/*
 * dwLinearSize is valid
 */
#define DDSD_LINEARSIZE         0x00080000l


/***************************************************************************
*
*
* DIRECTDRAW PIXELFORMAT FLAGS
*
****************************************************************************/

/*
 * The surface has alpha channel information in the pixel format.
 */
#define DDPF_ALPHAPIXELS                        0x00000001l

/*
 * The pixel format contains alpha only information
 */
#define DDPF_ALPHA                              0x00000002l

/*
 * The FourCC code is valid.
 */
#define DDPF_FOURCC                             0x00000004l

/*
 * The surface is 4-bit color indexed.
 */
#define DDPF_PALETTEINDEXED4                    0x00000008l

/*
 * The surface is 8-bit color indexed.
 */
#define DDPF_PALETTEINDEXED8                    0x00000020l

/*
 * The RGB data in the pixel format structure is valid.
 */
#define DDPF_RGB                                0x00000040l

/*
 * The surface is 1-bit color indexed.
 */
#define DDPF_PALETTEINDEXED1                    0x00000800l

/*
 * The surface is 2-bit color indexed.
 */
#define DDPF_PALETTEINDEXED2                    0x00001000l


/***************************************************************************
*
*
* DIRECTDRAW DDSCAPS/DDSCAPS2 FLAGS
*
****************************************************************************/

/*
 * Indicates that this surface can be used as a 3D texture.  It does not
 * indicate whether or not the surface is being used for that purpose.
 */
#define DDSCAPS_TEXTURE                         0x00001000l

/*
 * Indicates a complex surface structure is being described.  A
 * complex surface structure results in the creation of more than
 * one surface.  The additional surfaces are attached to the root
 * surface.  The complex structure can only be destroyed by
 * destroying the root.
 */
#define DDSCAPS_COMPLEX                         0x00000008l

/*
 * Indicates surface is one level of a mip-map. This surface will
 * be attached to other DDSCAPS_MIPMAP surfaces to form the mip-map.
 * This can be done explicitly, by creating a number of surfaces and
 * attaching them with AddAttachedSurface or by implicitly by CreateSurface.
 * If this bit is set then DDSCAPS_TEXTURE must also be set.
 */
#define DDSCAPS_MIPMAP                          0x00400000l


#endif /* !__DDRAW_INCLUDED__ */

Handle ReadDDSFile(char* pszFilename, DDSURFACEDESC2* pSurfaceDesc);
int WriteDDSFile(char* pszFilename, DDSURFACEDESC2* pSurfaceDesc);

