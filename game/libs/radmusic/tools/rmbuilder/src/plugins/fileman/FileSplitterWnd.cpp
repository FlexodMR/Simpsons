
#include "pch.hpp"
#include "FileSplitterWnd.h"

BOOL CFileSplitterWnd::OnNotify( WPARAM wParam, LPARAM lParam, LRESULT* pResult )
{
    *pResult = GetParent( )->SendMessage( WM_NOTIFY, wParam, lParam );
    
    return TRUE;
    
}
