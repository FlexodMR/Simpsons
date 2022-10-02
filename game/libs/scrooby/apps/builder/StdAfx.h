/////////////////////////////////////////////////////////////////////////////
// StdAfx.h : include file for standard system include files,
//  or project specific include files that are used frequently, but
//      are changed infrequently

#pragma once

#define VC_EXTRALEAN        // Exclude rarely-used stuff from Windows headers

#include <afxwin.h>         // MFC core and standard components
#include <afxext.h>         // MFC extensions
#include <afxole.h>         // MFC OLE classes
#include <afxdisp.h>        // MFC Automation classes
#include <afxtempl.h>        // MFC templates
#include <afxpriv.h>        // MFC private header
#ifndef _AFX_NO_AFXCMN_SUPPORT
#include <afxcmn.h>            // MFC support for Windows Common Controls
#endif // _AFX_NO_AFXCMN_SUPPORT

#include <shlobj.h>            // Shell stuff

#define _countof(array) (sizeof(array)/sizeof(array[0]))

// subset of pure3d types
#define _P3DTYPES_H

typedef signed char SBYTE;
typedef unsigned char UBYTE;

typedef signed short SWORD;
typedef unsigned short UWORD;

typedef signed long SLONG;
typedef unsigned long ULONG;

// colour functions
typedef ULONG P3DCOLOUR;

#define P3DRGB(r,g,b)    ((P3DCOLOUR)(((0xff)<<24) | ((r)<<16) | ((g)<<8) |(b)))
#define P3DRGBA(r,g,b,a) ((P3DCOLOUR)(((a)<<24) | ((r)<<16) | ((g)<<8) |(b)))
#define P3DGETA(c)       (*(((UBYTE *)&(c)) + 3))
#define P3DGETR(c)       (*(((UBYTE *)&(c)) + 2))
#define P3DGETG(c)       (*(((UBYTE *)&(c)) + 1))
#define P3DGETB(c)       (*(((UBYTE *)&(c)) + 0))

#define P3DSETA(a,c)     (*(((UBYTE *)&(c)) + 3)) = (a)
#define P3DSETR(r,c)     (*(((UBYTE *)&(c)) + 2)) = (r)
#define P3DSETG(g,c)     (*(((UBYTE *)&(c)) + 1)) = (g)
#define P3DSETB(b,c)     (*(((UBYTE *)&(c)) + 0)) = (b)

#pragma warning( disable : 4786 )
