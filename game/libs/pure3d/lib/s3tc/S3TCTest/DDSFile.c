// DDSFile.c
// Routines for DDS files
//
// Part of S3TCTest, example application using S3TCLib.
// Developed for S3 by Seth Sowerby, Volume 11 Software

#include <memory.h>
#include <stdio.h>

#include "MemAlloc.h"
#include "DDSFile.h"
#include "Endian.h"

Handle ReadDDSFile(char* pszFilename, DDSURFACEDESC2* pSurfaceDesc)
{
    FILE* pFile;
    DWORD dwFileHeader;
	char* pTexture;
	Handle hTexture;
    long fSize;
	
    pFile = fopen(pszFilename, "rb");
    if(pFile == NULL)
        return 0;

// Read the fileheader
	fread(&dwFileHeader, sizeof(DWORD), 1, pFile);
	FixEndian( (u8*)&dwFileHeader, sizeof(DWORD));
	if(dwFileHeader != DDS_HEADER)
	{
		fclose(pFile);
		return 0;
	}
	
// Read the surface description
	fread(pSurfaceDesc, sizeof(DDSURFACEDESC2), 1, pFile);
	
// flip all the 'desc2' data members from little to big-end
    ReverseDesc2Endian(pSurfaceDesc);

// allocate a buffer for the texture
    if( pSurfaceDesc->dwFlags & DDSD_LINEARSIZE ){
	    hTexture = AllocateMemory(pSurfaceDesc->dwLinearSize);
        fSize = pSurfaceDesc->dwLinearSize;
    }
    else{
        hTexture = AllocateMemory( pSurfaceDesc->dwLinearSize * pSurfaceDesc->dwHeight );
        fSize = pSurfaceDesc->dwLinearSize*pSurfaceDesc->dwHeight;
    }
 
	if(hTexture == NULL)
	{
		fclose(pFile);
		return 0;
	}
	
	pTexture = (char*)*hTexture;
    if(pTexture == NULL)
    {
		fclose(pFile);
		return 0;
    }

// read the input file
	fread(pTexture, fSize, 1, pFile);
    fclose(pFile);

// We don't need to endian flip the 3B argb color blocks
// as we can simply flip the color masks instead
	
	return hTexture;
}

int WriteDDSFile(char* pszFilename, DDSURFACEDESC2* pSurfaceDesc)
{
    FILE* pFile;
	DWORD dwFileHeader = DDS_HEADER;
	char* pData = pSurfaceDesc->lpSurface;
	int nSize = pSurfaceDesc->dwLinearSize;

	pFile = fopen(pszFilename, "wb");
    if(pFile == NULL)
        return 0;
	
	FixEndian( (u8*)&dwFileHeader, sizeof(DWORD));
	fwrite(&dwFileHeader, sizeof(DWORD), 1, pFile);
	
// flip all the 'desc2' data members from little to big-end
    ReverseDesc2Endian(pSurfaceDesc);
	fwrite(pSurfaceDesc, sizeof(DDSURFACEDESC2), 1, pFile);
	
    ReverseCmpColorBlocks(pData, nSize);
	fwrite(pData, nSize, 1, pFile);

    fclose(pFile);

	return -1;
}
