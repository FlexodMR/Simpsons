/*
 *   Copyright (c) 1997-8  S3 Inc.  All Rights Reserved.
 *
 *   Module Name:  s3_intrf.h
 *
 *   Purpose:  Constant, structure, and prototype definitions for S3TC
 *			   interface to DX surface
 *
 *   Author:  Dan Hung, Martin Hoffesommer
 *
 *   Revision History:
 *	version Beta 1.00.00-98-03-26
 */

/* Highlevel interface */

#ifndef _S3_INTRF_H_
#define _S3_INTRF_H_

#ifndef NOMINMAX

#ifndef max
#define max(a,b)	(((a) > (b)) ? (a) : (b))
#endif

#ifndef min
#define min(a,b)	(((a) < (b)) ? (a) : (b))
#endif

#endif  /* NOMINMAX */

/* RGB encoding types */
#define S3TC_ENCODE_RGB_FULL    		0x0
#define S3TC_ENCODE_RGB_COLOR_KEY		0x1
#define S3TC_ENCODE_RGB_ALPHA_COMPARE	0x2
#define _S3TC_ENCODE_RGB_MASK			0xff

/* alpha encoding types */
#define S3TC_ENCODE_ALPHA_NONE			0x000
#define S3TC_ENCODE_ALPHA_EXPLICIT		0x100
#define S3TC_ENCODE_ALPHA_INTERPOLATED	0x200
#define _S3TC_ENCODE_ALPHA_MASK			0xff00

/* common encoding types */
/*@@@TBD */

/* error codes */
#define NO_ERROR 0L
#define ERROR_ABORTED -1L

/*
 * PALETTEENTRY
 */
typedef struct S3_COLOR
{
	char        cRed;
	char        cGreen;
	char        cBlue;
	char        cAlpha;
} S3_COLOR;

/*
 * S3_COLOR_SPACE
 */
typedef struct _S3_COLOR_SPACE
{
	unsigned long	nLowBoundary;   /* low boundary of color space, inclusive */
	unsigned long	nHighBoundary;  /* high boundary of color space, inclusive */
} S3_COLOR_SPACE;

/*
 * S3_PIXEL_FORMAT
 */
typedef struct _S3_PIXEL_FORMAT
{
	unsigned long	nFlags;				/* pixel format flags */
	unsigned long	nARGBBitCount;		/* how many bits per pixel */
	unsigned long	nRedMask;			/* mask for red channel */
	unsigned long	nGreenMask;			/* mask for green channel */
	unsigned long	nBlueMask;			/* mask for blue channel */
	unsigned long	nAlphaMask;			/* mask for alpha channel */
} S3_PIXEL_FORMAT;

/****************************************************************************
 *
 * S3_PIXEL_FORMAT FLAGS
 *
 ****************************************************************************/

/*
 * The pixel format includes an alpha
 */
#define S3_TF_HASALPHA			0x00000001l

/*
 * The pixel format is palettised
 */
#define S3_TF_PALETTISED		0x00000002l

/*
 * The pixel format is compressed
 */
#define S3_TF_COMPRESSED		0x00000004l

/*
 * S3_TEXTURE
 */
typedef struct _S3_TEXTURE
{
	unsigned long		lWidth;			/* width of texture */
	unsigned long		lHeight;		/* height of texture */
	long				lPitch;			/* distance to start of next line */
	void*				pSurface;		/* pointer to the associated surface memory */
	S3_COLOR_SPACE      ColorKey;		/* color key for color key alpha encoding */
	S3_PIXEL_FORMAT     PixelFormat;	/* pixel format description of the surface */
	S3_COLOR*			pPalette;		/* pointer to first item in palette */
} S3_TEXTURE;

#ifdef __cplusplus
extern "C" {
#endif

/* Progress Callback for S3TCencode */
typedef int (* S3TC_PROGRESS_CALLBACK)(float fProgress, void* pUser1, void* pUser2);

/* set alpha reference value for alpha compare encoding */
void S3TC_SetAlphaReference(int nRef);

/* set alpha reference value for alpha compare encoding */
void S3TC_SetColorWeighting(float fRed, float fGreen, float fBlue);

/* determine number of bytes needed to compress given source image */
unsigned int S3TC_GetEncodeSize(unsigned long lWidth,	/* [in] */
						   unsigned long lHeight, 		/* [in] */
						   unsigned int nEncodeType 	/* [in] */
						   );

/* encode (compress) given source image to given destination surface */
int S3TC_Encode(S3_TEXTURE *pSrc,			/* [in] */
				S3_TEXTURE *pDest,			/* [out] */
				void *lpDestBuf,			/* [in] */
				unsigned int nEncodeType,  /* [in] */
				S3TC_PROGRESS_CALLBACK pS3TCProgressProc, /* [in], may be NULL */
				void* pArg1,				/* in  */
				void* pArg2				/* in  */
				);

/* determine number of bytes needed do decompress given compressed image */
unsigned int S3TC_GetDecodeSize(unsigned long lWidth,	/* [in] */
						   unsigned long lHeight 		/* [in] */
						   );

/* decode (decompress) to ARGB8888 */
void S3TC_Decode(S3_TEXTURE *pSrc,		/* [in] */
				S3_TEXTURE *pDest,		/* [out] */
				void *pDestBuf			/* [in] */
				);

#ifdef __cplusplus
};
#endif

#endif
