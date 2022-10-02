// Compress.c
// Routine to compress a 24bit RGB DDS file to a DXT1 DDS file
//
// Part of S3TCTest, example application using S3TCLib.
// Developed for S3 by Seth Sowerby, Volume 11 Software

#include "MemAlloc.h"
#include "DDSFile.h"
#include "Endian.h"

#include "..\include\S3_intrf.h"

//#define     COMPRESS_DXT1
//#define     COMPRESS_DXT3
#define     COMPRESS_DXT5
void Compress(char* pszFilenameIn, char* pszFilenameOut)
{
	DDSURFACEDESC2 SurfaceDesc;
	Handle hTextureIn = ReadDDSFile(pszFilenameIn, &SurfaceDesc);
	if(hTextureIn)
	{
		// We have a texture. Now compress it

		Handle hTextureOut;
		unsigned int nSize;
#ifdef COMPRESS_DXT1
		int nEncodeType = S3TC_ENCODE_RGB_FULL | S3TC_ENCODE_ALPHA_NONE;
#else
#ifdef  COMPRESS_DXT3
        int nEncodeType = S3TC_ENCODE_RGB_FULL | S3TC_ENCODE_ALPHA_EXPLICIT;
#else
#ifdef  COMPRESS_DXT5
        int nEncodeType = S3TC_ENCODE_RGB_FULL | S3TC_ENCODE_ALPHA_INTERPOLATED;
#endif
#endif
#endif

		S3_TEXTURE textureIn;

		memset(&textureIn, 0, sizeof(textureIn));
		textureIn.lWidth = SurfaceDesc.dwWidth;
		textureIn.lHeight = SurfaceDesc.dwHeight;
		textureIn.lPitch = SurfaceDesc.dwWidth * 4;
		textureIn.pSurface = *hTextureIn;

		textureIn.PixelFormat.nARGBBitCount = 32;
		
		textureIn.PixelFormat.nRedMask	 = 0xff0000;
		textureIn.PixelFormat.nGreenMask = 0x00ff00;
		textureIn.PixelFormat.nBlueMask	 = 0x0000ff;
        textureIn.PixelFormat.nAlphaMask = 0xff000000;
		
		// Endian switch Masks as necessary - easier than endian switching all data
		FixEndian((u8*) &textureIn.PixelFormat.nRedMask, sizeof(DWORD));
		FixEndian((u8*) &textureIn.PixelFormat.nGreenMask, sizeof(DWORD));
		FixEndian((u8*) &textureIn.PixelFormat.nBlueMask, sizeof(DWORD));

		nSize = S3TC_GetEncodeSize(SurfaceDesc.dwWidth, SurfaceDesc.dwHeight, nEncodeType);

		hTextureOut = AllocateMemory(nSize);
		if(hTextureOut)
		{
			// Compression time
			DDSURFACEDESC2 ddsd2;
			S3_TEXTURE textureOut;

			int nError = S3TC_Encode(&textureIn, &textureOut, *hTextureOut, nEncodeType, 0, 0, 0);

			// Setup structures to save compressed texture
			memset(&ddsd2, 0, sizeof(DDSURFACEDESC2));
			ddsd2.dwSize = sizeof(DDSURFACEDESC2);
			ddsd2.dwFlags = DDSD_CAPS|DDSD_WIDTH|DDSD_HEIGHT|DDSD_PIXELFORMAT|
							DDSD_MIPMAPCOUNT|DDSD_LINEARSIZE;
			ddsd2.dwWidth = textureOut.lWidth;
			ddsd2.dwHeight = textureOut.lHeight;
			ddsd2.dwMipMapCount = 0;
			ddsd2.dwLinearSize = nSize;
			ddsd2.lpSurface = *hTextureOut;

			ddsd2.ddpfPixelFormat.dwSize = sizeof(DDPIXELFORMAT);
			ddsd2.ddpfPixelFormat.dwFlags=DDPF_FOURCC;
#ifdef COMPRESS_DXT1
			ddsd2.ddpfPixelFormat.dwFourCC = FOURCC_DXT1;
#else
#ifdef COMPRESS_DXT3
            ddsd2.ddpfPixelFormat.dwFourCC = FOURCC_DXT3;
#else
#ifdef COMPRESS_DXT5
            ddsd2.ddpfPixelFormat.dwFourCC = FOURCC_DXT5;
#endif
#endif
#endif

			ddsd2.ddsCaps.dwCaps = DDSCAPS_TEXTURE|DDSCAPS_COMPLEX|DDSCAPS_MIPMAP;

			// And save it as a DDS file
			WriteDDSFile(pszFilenameOut, &ddsd2);

			FreeMemory(hTextureOut);
		}

		FreeMemory(hTextureIn);
	}
}

