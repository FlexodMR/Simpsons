#include <pch.hpp>
#include "FileTreeCtrl.h"

IMPLEMENT_DYNCREATE( CFileTreeCtrl, CTreeCtrl );

BEGIN_MESSAGE_MAP( CFileTreeCtrl, CTreeCtrl )
END_MESSAGE_MAP( )

BOOL CFileTreeCtrl::Create(LPCTSTR lpszClassName,
	LPCTSTR lpszWindowName,
	DWORD dwStyle,
	const RECT& rect,
	CWnd* pParentWnd,
	UINT nID,
	CCreateContext* pContext)
{
	return CWnd::Create(
	    WC_TREEVIEW,
	    NULL,
	    dwStyle | TVS_EDITLABELS | TVS_TRACKSELECT | TVS_HASBUTTONS | TVS_SHOWSELALWAYS | TVS_INFOTIP | WS_VISIBLE,
	    rect,
	    pParentWnd,
	    nID);
};

