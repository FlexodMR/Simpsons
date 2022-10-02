// stdafx.h : include file for standard system include files,
//  or project specific include files that are used frequently, but
//      are changed infrequently
//

#if !defined(AFX_STDAFX_H__B6ECF82E_8E05_4CF0_9DBE_9735E9555749__INCLUDED_)
#define AFX_STDAFX_H__B6ECF82E_8E05_4CF0_9DBE_9735E9555749__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#pragma warning(disable : 4786)

#include <bcgcb.h>          // BCG Control Bar

#include <afxwin.h>         // MFC core and standard components
#include <afxext.h>         // MFC extensions
#include <afxadv.h>
#include <afxdisp.h>        // MFC Automation classes
#include <afxdtctl.h>       // MFC support for Internet Explorer 4 Common Controls
#ifndef _AFX_NO_AFXCMN_SUPPORT
#include <afxcmn.h>         // MFC support for Windows Common Controls
#endif // _AFX_NO_AFXCMN_SUPPORT

#import <msxml.dll>         // Enable XML support

#include <Shlwapi.h>        // ::PathXxxx functions
#pragma comment(lib, "shlwapi.lib")

#include <vector>
#include <set>
#include <map>
using namespace std;

// radscript stuff
#include <radscript.hpp>
#include <radtypeinfo.hpp>  // Type info system header file
#include <radtypeinfoutil.hpp>
#include <radfile.hpp>

#include "FileInfo.h"       // Recusive file search
#include "SelectFolderDialog.h"

const unsigned int PAR_BOOL             = 0x002e3aea;
const unsigned int PAR_UNSIGNED_INT     = 0x43f60844;
const unsigned int PAR_INT              = 0x000197ef;
const unsigned int PAR_LONG             = 0x0032c67c;
const unsigned int PAR_ULONG            = 0x3acc60c7;
const unsigned int PAR_FLOAT            = 0x05d0225c;
const unsigned int PAR_CHAR             = 0x002e9356;
const unsigned int PAR_UNSIGNED_CHAR    = 0x3ac82da1;
const unsigned int PAR_INT16            = 0x0685847c;
const unsigned int PAR_UNKNOWN          = 0xef05ac4a;
const unsigned int PAR_VOID             = 0x00375194;


unsigned int X31Hash( const char * v );

//{{AFX_INSERT_LOCATION}}
    // Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_STDAFX_H__B6ECF82E_8E05_4CF0_9DBE_9735E9555749__INCLUDED_)
