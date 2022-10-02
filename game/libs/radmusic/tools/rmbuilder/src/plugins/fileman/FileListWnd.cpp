#include "pch.hpp"
#include "FileListWnd.h"

IMPLEMENT_DYNCREATE( CFileListWnd, CListCtrl )

BOOL CFileListWnd::Create(LPCTSTR lpszClassName,
	LPCTSTR lpszWindowName, DWORD dwStyle,
	const RECT& rect,
	CWnd* pParentWnd, UINT nID,
	CCreateContext* pContext)
{
    return CWnd::Create(
        WC_LISTVIEW,
        NULL,
        dwStyle | LVS_EDITLABELS | LVS_LIST | LVS_SMALLICON | LVS_SORTASCENDING,
        rect,
        pParentWnd,
        nID );
}
        
        	            
