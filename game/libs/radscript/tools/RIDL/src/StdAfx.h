// stdafx.h : include file for standard system include files,
//  or project specific include files that are used frequently, but
//      are changed infrequently
//

#if !defined(AFX_STDAFX_H__27C26216_649A_4864_81CF_CA2C33F8A1AB__INCLUDED_)
#define AFX_STDAFX_H__27C26216_649A_4864_81CF_CA2C33F8A1AB__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#define VC_EXTRALEAN		// Exclude rarely-used stuff from Windows headers

#include <afx.h>
#include <afxwin.h>         // MFC core and standard components
#include <afxext.h>         // MFC extensions
#include <afxdtctl.h>		// MFC support for Internet Explorer 4 Common Controls
#ifndef _AFX_NO_AFXCMN_SUPPORT
#include <afxcmn.h>			// MFC support for Windows Common Controls
#endif // _AFX_NO_AFXCMN_SUPPORT

#include <math.h>       // ceil( )

#pragma warning ( disable : 4786 )  // disable warning for symbol longer than 256
#include <map>
#include <vector>
#include <algorithm>

#include <iostream>
using namespace std;

#include <math.h>   // ceil

// MFC extension to work with STL container
#include "MFCHelper.h"
#include "MFCRefCount.h"

// help function
#include "helpfunc.hpp"

// some typeinfo constants
#include "radtypeinfo.hpp"

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_STDAFX_H__27C26216_649A_4864_81CF_CA2C33F8A1AB__INCLUDED_)
