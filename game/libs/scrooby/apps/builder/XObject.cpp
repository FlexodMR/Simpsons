/////////////////////////////////////////////////////////////////////////////
// XObject.cpp : implementation of the object classes
/*
#include "StdAfx.h"
#include "XCon.h"
#include "XConDoc.h"
#include "XConView.h"
#include "TabView.h"
#include "OverlayDlg.h"
#include "ScreenDlg.h"
#include "ResourceDlg.h"
#include "DlgProp.h"
#include <math.h>
*/

#include "XObject.h"
#include "XConDoc.h"
//#include "xUtil.h"

//#include "xPathObject.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

//BOOL CXPathObject::s_bForceDelete = FALSE;

/////////////////////////////////////////////////////////////////////////////
// CXObject

IMPLEMENT_DYNAMIC(CXObject, CObject)

int CXObject::FindIndex()
{
    return 1;//FindObjectInArray(m_pDocument->GetObjectArray(GetType()), this);
}

