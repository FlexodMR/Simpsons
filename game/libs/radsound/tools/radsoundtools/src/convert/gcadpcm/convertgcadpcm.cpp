//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <Windows.h>
#include <convert/gcadpcm/convertgcadpcm.hpp>

lpFunc1 getBytesForAdpcmBuffer;
lpFunc1 getBytesForAdpcmSamples;
lpFunc1 getBytesForPcmBuffer;
lpFunc1 getBytesForPcmSamples;
lpFunc1 getSampleForAdpcmNibble;
lpFunc1 getNibbleAddress;
lpFunc2 getBytesForAdpcmInfo;
lpFunc3 encode;
lpFunc4 decode;
lpFunc5 getLoopContext;

static HMODULE hDll = NULL;

bool LoadGCAdpcmDLL( )
{
    hDll = ::LoadLibrary("dsptool.dll");
    if ( hDll == NULL )
    {
        return false;
    }
    if ( !( getBytesForAdpcmBuffer = (lpFunc1)::GetProcAddress( hDll, "getBytesForAdpcmBuffer" ) ) )
    {
        return false;
    }

    if ( !( getBytesForAdpcmSamples = (lpFunc1)::GetProcAddress( hDll, "getBytesForAdpcmSamples" ) ) )
    {
        return false;
    }

    if ( !( getBytesForPcmBuffer = (lpFunc1)::GetProcAddress( hDll, "getBytesForPcmBuffer" ) ) )
    {
        return false;
    }

    if ( !( getBytesForPcmSamples = (lpFunc1)::GetProcAddress( hDll, "getBytesForPcmSamples" ) ) )
    {
        return false;
    }

    if ( !(getNibbleAddress = (lpFunc1)::GetProcAddress( hDll, "getNibbleAddress" ) ) )
    {
        return false;
    }

    if ( !(getSampleForAdpcmNibble = (lpFunc1)::GetProcAddress( hDll, "getSampleForAdpcmNibble" ) ) )
    {
        return false;
    }

    if ( !(getBytesForAdpcmInfo = (lpFunc2)::GetProcAddress( hDll, "getBytesForAdpcmInfo" ) ) )
    {
        return false;
    }

    if ( !(encode = (lpFunc3)::GetProcAddress( hDll, "encode" ) ) )
    {
        return false;
    }

    if ( !(decode = (lpFunc4)::GetProcAddress( hDll, "decode" ) ) )
    {
        return false;
    }

    if ( !(getLoopContext = (lpFunc5)::GetProcAddress( hDll, "getLoopContext" ) ) )
    {
        return false;
    }

    return true;
}

void UnloadGCAdpcmDLL( )
{
    if ( hDll )
    {
        ::FreeLibrary(hDll);
    }
}
