#pragma warning( disable : 4786 )
#include "xScreen.h"
#include "DlgProp.h"
#include "OverlayDlg.h"
#include "ScreenDlg.h"
#include "ResourceDlg.h"
#include "TabView.h"
#include "xUtil.h"
#include "xOverlay.h"

class CScreenDlg ;

/////////////////////////////////////////////////////////////////////////////
// CXScreen

void CXScreen::Copy(CXObject* pObject)
{
    CXObject::Copy(pObject);

    CXScreen* p = (CXScreen*)pObject;
    m_arOverlay.Copy(p->m_arOverlay);
}

void CXScreen::OnProperties()
{
    CXObjectArray* pArray = m_pDocument->GetObjectArray(DOC_OVERLAYS);
    if (!pArray->GetSize())
    {
        AfxMessageBox(IDP_NO_OVERLAYS);
        return;
    }

    CScreenPropDlg dlg;
    dlg.m_strName = m_strName;
    dlg.m_pOverlayArray = pArray;
    CXOverlayArray arOverlayNew;
    arOverlayNew.Copy(m_arOverlay);
    dlg.m_pSelections = &arOverlayNew;
    if (dlg.DoModal() != IDOK)
        return;

    // check if there is a change in overlays
    BOOL bOverlayChange = TRUE;
    int nSize2 = arOverlayNew.GetSize();
    int nSize = m_arOverlay.GetSize();
    if (nSize == nSize2)
    {
        for (int i = 0; i < nSize; i++)
        {
            if (arOverlayNew[i] != m_arOverlay[i])
                break;
        }

        if (i == nSize)
            bOverlayChange = FALSE;
    }

    if (!bOverlayChange && dlg.m_strName == m_strName)
        return;

    CUndoScreen* pUndo = new CUndoScreen(this, UNDO_MODIFY);
    pUndo->m_bOverlayChange = bOverlayChange;
    m_pDocument->AddUndoObject(pUndo);

    SetNewName(dlg.m_strName);

    if (bOverlayChange)
    {
        m_arOverlay.Copy(arOverlayNew);
    //    ((CScreenDlg*)m_pDocument->GetTabView()->GetPage(SCREEN_PAGE))->SetOverlays(this);
    }
}

void CXScreen::Show()
{
    int nSizeOvr = m_arOverlay.GetSize();
    if (!nSizeOvr)
        return;

    COverlayDlg* pDlg = (COverlayDlg*)m_pDocument->GetTabView()->GetPage(OVERLAY_PAGE, FALSE);
    CXOverlayArray* pArray = (CXOverlayArray*)m_pDocument->GetObjectArray(DOC_OVERLAYS);
    int nSize = pArray->GetSize();
    int nIndex = 0;
    for (int i = 0; i < nSize; i++)
    {
        CXOverlay* pOverlay = pArray->GetAt(i);
        BOOL bVisible = FALSE;
        if (nIndex < nSizeOvr && pOverlay == m_arOverlay[nIndex])
        {
            bVisible = TRUE;
            nIndex++;
        }
        pOverlay->EnableVisible(bVisible);
        pDlg->SetVisible(pOverlay, bVisible);
    }

    pDlg->SelectObject(NULL);
}

void CXScreen::OnDelete()
{
    int nIndex = FindIndex();

    //m_pDocument->GetTabView()->GetPage(SCREEN_PAGE)->DeleteObj(this);
    m_pDocument->DeleteDocItem(this);

    CUndoScreen* pUndo = new CUndoScreen(this, UNDO_DELETE);
    pUndo->m_nIndex = nIndex;
    m_pDocument->AddUndoObject(pUndo);
}

void CXScreen::OnDeleteOverlay(CXOverlay* pOverlay)
{
/*    CTreeDlg* pDlg = m_pDocument->GetTabView()->GetPage(SCREEN_PAGE, FALSE);

    int nSize = m_arOverlay.GetSize();
    for (int i = 0; i < nSize; i++)
    {
        if (m_arOverlay[i] == pOverlay)
        {
            pDlg->DeleteObj(this, pOverlay);
            m_arOverlay.RemoveAt(i);
            break;
        }
    }*/
}

void CXScreen::OnMove(BOOL bMoveUp)
{
    MoveObject(m_pDocument->GetObjectArray(GetType()), this, bMoveUp);
//    m_pDocument->GetTabView()->GetPage(SCREEN_PAGE)->MoveObject(this, bMoveUp);
}

void CXScreen::AddUndoObjectModify()
{
    m_pDocument->AddUndoObject(new CUndoScreen(this, UNDO_MODIFY));
}

int CXScreen::GetImage() 
{ 
    return TREE_SCREEN; 
}

DOCARRAYTYPE CXScreen::GetType() 
{ 
    return DOC_SCREENS; 
}
