// stdafx.h : include file for standard system include files,
//  or project specific include files that are used frequently, but
//      are changed infrequently
//
#if !defined(AFX_STDAFX_H__3CDC80E5_314C_4A5A_B179_A3A5A9422CC9__INCLUDED_)
#define AFX_STDAFX_H__3CDC80E5_314C_4A5A_B179_A3A5A9422CC9__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#define _WIN32_WINNT 0x0500 // Support functions used in Windows 2000
#define _WIN32_IE 0x0500 
#define RADMEMORYMONITOR    // enable link with functions used in radmemorymonitor 

#include <afxwin.h>         // MFC core and standard components
#include <afxext.h>         // MFC extensions
#include <afxdisp.h>        // MFC Automation classes
#include <afxdtctl.h>       // MFC support for Internet Explorer 4 Common Controls
#ifndef _AFX_NO_AFXCMN_SUPPORT
#include <afxcmn.h>         // MFC support for Windows Common Controls
#endif // _AFX_NO_AFXCMN_SUPPORT

#include <math.h>
//#include <afxsock.h>      // MFC socket extensions
#include <afxcview.h>
#include <afxmt.h>
#include <Shlwapi.h>
#include <commctrl.h>

#include <bcgcb.h>          // BCG Control Bar

#include <typeinfo.h>
#include <vector>
#include <map>
#include <algorithm>
#include <queue>
#include <list>
using namespace std;

#include <radmemorymonitor.hpp>
#include <raddebugcommunication.hpp>
#include <memorymonitorprotocol.hpp>
#include <radkey.hpp>

#include "..\..\..\Sdks\win32\mfc\mfcrefcount.h"
#include "..\..\..\Sdks\win32\mfc\Observer.h"

#include "PEAddr2Line.h"

CString MMGetPlatformString( MM_ClientPlatform eType );
CString MMGetMemorySpaceString( MM_ClientMemorySpace eType );
CString MMGetMemorySectionString( IRadMemoryMonitor::MemorySectionType eType );
CString MMGetMemorySectionShortString( IRadMemoryMonitor::MemorySectionType eType );
CString MMFormatMemorySizeString( const unsigned int uSize );
vector< CString > ReadStackTrace( const unsigned int uStackTrace[ MM_MAX_CALLSTACK_DEPTH ], unsigned int uCallStackDepth );

extern CCriticalSection g_cs;

CArchive& AFXAPI operator << ( CArchive& ar, MM_ClientPlatform Object );
CArchive& AFXAPI operator >> ( CArchive& ar, MM_ClientPlatform & Object );

//
// Global table to all Observer and Subject state changes
//
enum MemmonitorSubjectState
{
//    SSC_SECTION_DATA_MODIFIED = 0x00001000,
//    SSC_COLOUR_TABLE_MODIFIED,
//    SSC_CELLVIEW_LOOK_MODIFIED,
    SSC_USER_START = SSC_GOLBAL_USER,

    SSC_MEM_HOST_SUSPENDED,         // nHint = NULL, pUser = NULL

    SSC_MEM_HOST_RESUMED,           // nHint = NULL, pUser = NULL

    SSC_MEM_HOST_RECONNECT,         // nHint = NULL; pUser = NULL
    SSC_MEM_HOST_DISCONNECT,        

    SSC_MEM_HOST_ONRECIEVE,         // nHint = NULL; pUser = MM_DataPacketBlock *

    SSC_MEM_HOST_CLIENT_SYSINFO_RECIEVED,   // nHint = NULL; pUser = NULL;

    SSC_MEM_RAWDATAQUEUE_NEWDATA,   // nHint = NULL; pUser = NULL

    SSC_MEM_TRANSLATOR_PROCESS_NEWDATA, // nHint = NULL; pUser = CMemRawData *

    SSC_MEM_ERROR_MSG,              // nHint = NULL; pUser = CMemErrorMsg *
    SSC_MEM_ERROR_MSG_RECIEVED,     // nHint = NULL; pUser = CMemMonitorErrorHandler *;

    // remove a memory content document from session data    
//    SSC_MEM_CONTENT_REMOVE,         // nHint = uSize (size of byte requested; pUser = __int64 * nAbsoluteMemoryAddress = (__int64)eMemorySpaceType << 32 + uAddress;
    // request a memory content from client
    SSC_MEM_CONTENT_REQUEST,        // nHint = uSize (size of byte requested; pUser = __int64 * nAbsoluteMemoryAddress = (__int64)eMemorySpaceType << 32 + uAddress;
    // host has recieved memory content from client
    SSC_MEM_CONTENT_RECIEVED,       // nHint = NULL; pUser = CMemContent *
    SSC_MEM_CONTENT_CLEARED,        // nHint = NULL; pUser = CMemContent *

    SSC_MEM_BLOCK_NEW,              // nHint = NULL; pUser = CMemoryBlock *
    SSC_MEM_BLOCK_FREE,             // nHint = NULL; pUser = CMemoryBlock *

    SSC_MEM_SECTION_ADDED,          // nHint = NULL; pUser = CMemorySection *
    SSC_MEM_SECTION_REMOVED,        // nHint = NULL; pUser = CMemorySection *
    SSC_MEM_SECTION_MODIFIED,       // nHint = NULL; pUser = CMemorySection *

    SSC_MEM_SECTION_CELLMAP_DONE,   // nHint = NULL; pUser = CMemorySection *

//    SSC_MEM_SECTION_CONTENT_DONE,   // nHint = NULL; pUser = CMemorySection *

    SSC_MEM_SPACE_ADDED,            // nHint = NULL; pUser = CMemorySpace *
    SSC_MEM_SPACE_REMOVED,          // nHint = NULL; pUser = CMemorySpace *
    SSC_MEM_SPACE_MODIFIED,         // nHint = NULL; pUser = CMemorySpace *

    SSC_MEM_IMAGE_CLEARED,          // nHint = NULL; pUser = CMemoryImage *
    SSC_MEM_IMAGE_MODIFIED,         // nHint = NULL; pUser = CMemoryImage *
    SSC_MEM_IMAGE_CLONED,           // nHint = NULL; pUser = CMemoryImage *
    //
    // session document notification message
    //
    SSC_MEM_SESSION_DOC_CLOSE,      // nHint = NULL; pUser = NULL

    SSC_MEM_CONFIG_MODIFIED,        // nHint = 1 - Colour changed; pUser = CMemConfiguration *

    SSC_MEM_VIEW_OVERALLVIEW_DESTROY,   // nHint = 0; pUser = CMemOverallView *
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_STDAFX_H__3CDC80E5_314C_4A5A_B179_A3A5A9422CC9__INCLUDED_)
