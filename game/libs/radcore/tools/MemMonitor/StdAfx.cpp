//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// stdafx.cpp : source file that includes just the standard includes
//	MemMonitor.pch will be the pre-compiled header
//	stdafx.obj will contain the pre-compiled type information
#pragma warning ( disable : 4786 )

#pragma comment( user, "You must have Nov 2001 edition of Microsoft Platform SDK installed to compile and link correctly" )

#include "stdafx.h"
#include "memmonitor.h"

CCriticalSection g_cs;

CArchive& AFXAPI operator << ( CArchive& ar, MM_ClientPlatform Object )
{
    ar << (unsigned int)Object;
    return ar;
}

CArchive& AFXAPI operator >> ( CArchive& ar, MM_ClientPlatform & Object )
{
    unsigned int uData;
    ar >> uData;
    Object = (MM_ClientPlatform)uData;
    return ar;
}

vector< CString > ReadStackTrace( const unsigned int uStackTrace[ MM_MAX_CALLSTACK_DEPTH ], unsigned int uCallStackDepth )
{
    CMemMonitorApp * pApp = static_cast< CMemMonitorApp * >( ::AfxGetApp( ) );
    ASSERT( pApp );
    CMemSessionDataManager * pDataManager = pApp->GetMemSessionDataManagerPtr( );
    ASSERT( pDataManager );

    vector< CString > arySubText;
    arySubText.reserve( uCallStackDepth );

    if ( ! radPEAddr2LineIsExeLoaded( ) )
    {
        radPEAddr2LineLoadExe( pDataManager->GetMemConfigurationPtr( )->GetClientExecutablePath( ) );
    }

    char * szText[ MM_MAX_CALLSTACK_DEPTH ] = { NULL };
    char * szLine[ MM_MAX_CALLSTACK_DEPTH ] = { NULL };

    unsigned int uCallStackIdx;
    for ( uCallStackIdx = 0; uCallStackIdx < uCallStackDepth; uCallStackIdx ++ )
    {
        szText[ uCallStackIdx ] = new char[ 512 ];
        szLine[ uCallStackIdx ] = new char[ 512 ];
    }

    bool bEvaluated = radPEAddr2LineV( uStackTrace, uCallStackDepth, szText, szLine );

    char szDisplay[ 1024 ];
    for ( uCallStackIdx = 0; uCallStackIdx < uCallStackDepth; uCallStackIdx ++ )
    {
        if ( bEvaluated )
        {
            sprintf( szDisplay, "%s : %s", szText[ uCallStackIdx ], szLine[ uCallStackIdx ] );
            arySubText.push_back( szText[ uCallStackIdx ] );
        }
        else
        {
            arySubText.push_back( CString( "-Program database cannot be loaded.-" ) );
        }
    }

    for ( uCallStackIdx = 0; uCallStackIdx < uCallStackDepth; uCallStackIdx ++ )
    {
        delete[] szText[ uCallStackIdx ];
        delete[] szLine[ uCallStackIdx ];
    }
    return arySubText;
}

CString MMGetPlatformString( MM_ClientPlatform eType )
{
    switch( eType )
    {
        case MM_Platform_Unknown :
        {
            return CString( "Unknown Platform" );
        }
        break;

        case MM_Platform_PS2 :
        {
            return CString( "PlayStation 2" );
        }
        break;

        case MM_Platform_GCN :
        {
            return CString( "GameCube" );
        }
        break;

        case MM_Platform_XBOX :
        {
            return CString( "XBox" );
        }
        break;

        case MM_Platform_WIN :
        {
            return CString( "Windows" );
        }
        break;

        default:
        {
            ASSERT( false );
            return CString( "Wrong Type" );
        }
        break;
    }
}

CString MMGetMemorySectionShortString( IRadMemoryMonitor::MemorySectionType eType )
{
    switch( eType )
    {
        case IRadMemoryMonitor::MemorySectionType_Code :
        {
            return CString( "C" );
        }
        break;

        case IRadMemoryMonitor::MemorySectionType_StaticData :
        {
            return CString( "Stc" );
        }
        break;

        case IRadMemoryMonitor::MemorySectionType_DynamicData :
        {
            return CString( "D" );
        }
        break;

        case IRadMemoryMonitor::MemorySectionType_Stack :
        {
            return CString( "S" );
        }
        break;

        default:
        {
            ASSERT( false );
            return CString( "Wrong Type" );
        }
        break;
    }
    return CString( "Wrong Type" );
}

CString MMGetMemorySectionString( IRadMemoryMonitor::MemorySectionType eType )
{
    switch( eType )
    {
        case IRadMemoryMonitor::MemorySectionType_Code :
        {
            return CString( "Code" );
        }
        break;

        case IRadMemoryMonitor::MemorySectionType_StaticData :
        {
            return CString( "Static Data" );
        }
        break;

        case IRadMemoryMonitor::MemorySectionType_DynamicData :
        {
            return CString( "Dynamic Data" );
        }
        break;

        case IRadMemoryMonitor::MemorySectionType_Stack :
        {
            return CString( "Stack" );
        }
        break;

        default:
        {
            ASSERT( false );
            return CString( "Wrong Type" );
        }
        break;
    }
    return CString( "Wrong Type" );
}

CString MMGetMemorySpaceString( MM_ClientMemorySpace eType )
{
    switch( eType )
    {
        case MM_UNKNOWN :
        {
            return CString( "Unknown" );
        }
        break;

        case MM_PS2_EE :
        {
            return CString( "EE" );
        }
        break;

        case MM_PS2_IOP :
        {
            return CString( "IOP" );
        }
        break;

        case MM_PS2_SOUND :
        {
            return CString( "Sound" );
        }
        break;
        
        case MM_GCN_MAIN :
        {
            return CString( "Main" );
        }
        break;
        
        case MM_GCN_ARAM :
        {
            return CString( "AuxRAM" );
        }
        break;
        
        case MM_WIN_MAIN :
        {
            return CString( "Main" );
        }
        break;
        
        default:
        {
            ASSERT( false );
            return CString( "Wrong Type" );
        }
        break;
    }
    return CString( "Wrong Type" );
}

CString MMFormatMemorySizeString( const unsigned int uSize )
{
    CString strSize;
    if ( uSize >= 1024 * 1024 )
    {
        // in Meg Byte range
        strSize.Format( "%.2fMB", (float)uSize / ( 1024.0f * 1024.f ) );
    }
    else if ( uSize >= 1024 )
    {
        // in Meg Byte range
        strSize.Format( "%.2fKB", (float)uSize / ( 1024.0f ) );
    }
    else
    {
        // in Byte range
        strSize.Format( "%uByte", uSize );
    }
    return strSize;
}