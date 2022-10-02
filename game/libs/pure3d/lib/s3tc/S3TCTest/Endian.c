// Endian.c
// Routines for endian-switching structures as required by target architecture
// Based on code by Mike Ockenden, Nintendo of America
//
// Part of S3TCTest, example application using S3TCLib.
// Developed for S3 by Seth Sowerby, Volume 11 Software

#include "MemAlloc.h"
#include "DDSFile.h"
#include "Endian.h"

#ifdef MAC
void FixEndian(u8* src, unsigned long numBytes)
{
	unsigned char  tmp[8];  // large enough to hold a double
	unsigned long  max, i;

	if((numBytes == 0) || (numBytes == 1) || (numBytes > 8))
		return;

	max = numBytes - 1;
	for(i=0; i< numBytes; i++)
		tmp[(max - i)] = src[i];

	for(i=0; i< numBytes; i++)
		src[i] = tmp[i];
}

void ReverseDesc2Endian(DDSURFACEDESC2* pDesc2)
{
	FixEndian( (u8*)( &pDesc2->dwSize ), sizeof(DWORD));

    FixEndian( (u8*)( &pDesc2->dwFlags ), sizeof(DWORD));

    FixEndian( (u8*)( &pDesc2->dwHeight ), sizeof(DWORD) );

    FixEndian( (u8*)( &pDesc2->dwWidth ), sizeof(DWORD) );

    FixEndian( (u8*)( &pDesc2->dwLinearSize ), sizeof(DWORD) );

    FixEndian( (u8*)( &pDesc2->dwBackBufferCount ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->dwMipMapCount ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->dwAlphaBitDepth ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->dwReserved ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->lpSurface ), sizeof(LPVOID) );

    FixEndian( (u8*)( &pDesc2->ddckCKDestOverlay.dwColorSpaceLowValue  ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->ddckCKDestOverlay.dwColorSpaceHighValue ), sizeof(DWORD) );

    FixEndian( (u8*)( &pDesc2->ddckCKDestBlt.dwColorSpaceLowValue  ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->ddckCKDestBlt.dwColorSpaceHighValue ), sizeof(DWORD) );

    FixEndian( (u8*)( &pDesc2->ddckCKSrcOverlay.dwColorSpaceLowValue  ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->ddckCKSrcOverlay.dwColorSpaceHighValue ), sizeof(DWORD) );

    FixEndian( (u8*)( &pDesc2->ddckCKSrcBlt.dwColorSpaceLowValue  ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->ddckCKSrcBlt.dwColorSpaceHighValue ), sizeof(DWORD) );

    FixEndian( (u8*)( &pDesc2->ddpfPixelFormat.dwSize            ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->ddpfPixelFormat.dwFlags           ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->ddpfPixelFormat.dwFourCC          ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->ddpfPixelFormat.dwRGBBitCount     ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->ddpfPixelFormat.dwRBitMask        ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->ddpfPixelFormat.dwGBitMask        ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->ddpfPixelFormat.dwBBitMask        ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->ddpfPixelFormat.dwRGBAlphaBitMask ), sizeof(DWORD) );

    FixEndian( (u8*)( &pDesc2->ddsCaps.dwCaps                    ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->ddsCaps.dwCaps2                   ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->ddsCaps.dwCaps3                   ), sizeof(DWORD) );
    FixEndian( (u8*)( &pDesc2->ddsCaps.dwCaps4                   ), sizeof(DWORD) );

    FixEndian( (u8*)( &pDesc2->dwTextureStage                    ), sizeof(DWORD) );
}

void ReverseCmpColorBlocks( char* pData, int size )
{

    unsigned char* pClr;

    int i;

    pClr = (unsigned char*)pData;

    // flip each 4x4 texel block
    for( i=0; i< size; i += 8 )
    {
        // flip both 16b colors
        FixEndian( pClr, 2 );
        pClr+= 2;

        FixEndian( pClr, 2 );
        pClr+= 2;

        // flip texel block
        FixEndian( pClr, 4 );
        pClr += 4;
    }

}

#else // !MAC
void FixEndian(u8* src, unsigned long numBytes)
{
}

void ReverseDesc2Endian(DDSURFACEDESC2* pDesc2)
{
}

void ReverseCmpColorBlocks( char* pData, int size )
{
}
#endif // !MAC

