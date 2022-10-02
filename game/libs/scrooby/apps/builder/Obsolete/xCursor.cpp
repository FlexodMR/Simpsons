#include "xConDoc.h"
#include "xCursor.h"
#include "DlgProp.h"
#include "xcon.h"

/////////////////////////////////////////////////////////////////////////////
// CXCursor

BOOL CXCursor::Load(LPCTSTR pszPathName)
{
    m_hCursor = ::LoadCursorFromFile(pszPathName);
    if (!m_hCursor)
    {
        DisplayErrorMsg(IDP_FAILED_LOAD_CURSOR, pszPathName);
        return FALSE;
    }

    ICONINFO info;
    ::GetIconInfo(m_hCursor, &info);
    m_ptHotspot = CPoint(info.xHotspot, info.yHotspot);
    return TRUE;
}

void CXCursor::OnProperties()
{
    CCursorPropDlg dlg;
    dlg.m_strName = m_strName;
    dlg.m_strFileName = m_strPathName;
    dlg.m_pCursor = this;
    if (dlg.DoModal() != IDOK)
    {
        if (dlg.m_strFileName != m_strPathName)
        {
            CDirectoryMgr dmg(m_pDocument->GetResourcePath());
            Reload();
        }
        return;
    }

    if (dlg.m_strName == m_strName && dlg.m_strFileName == m_strPathName)
        return;

    m_pDocument->AddUndoObject(new CUndoResource(this, UNDO_MODIFY));
    SetNewName(dlg.m_strName);
    m_strPathName = dlg.m_strFileName;
}

void CXCursor::OnDelete()
{
    DeleteResource();
}

int CXCursor::GetImage() 
{ 
    return TREE_CURSOR; 
}

DOCARRAYTYPE CXCursor::GetType() 
{ 
    return DOC_CURSORS; 
}
