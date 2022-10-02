//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "stdafx.h"
#include "radTuner.h"

#include "MainFrm.h"
#include "ScriptDoc.h"

#include "RemoteClient.h"
#include "..\src\radprotocols\RemoteCommandProtocol.hpp"

#include "ScriptDoc.h"
#include "ScriptObject.h"
#include "ScriptMethod.h"
#include "OutputBar.h"

#include "ProjectSettingDlg.h"
#include "AddNewObjectDlg.h"
#include "AddNewMethodDlg.h"
#include "ModifyMethodDlg.h"
#include "ModifyObjectDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif


//===========================================================================
// CMainFrame::OnViewWorkspace
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CMainFrame::OnViewWorkspace()
{
    ShowControlBar (&m_wndWorkSpace,
        !(m_wndWorkSpace.GetStyle () & WS_VISIBLE),
        FALSE);
    RecalcLayout ();
}


//===========================================================================
// CMainFrame::OnUpdateViewWorkspace
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CCmdUI* pCmdUI
// 
// Return: void 
//===========================================================================
void CMainFrame::OnUpdateViewWorkspace(CCmdUI* pCmdUI)
{
    pCmdUI->SetCheck (m_wndWorkSpace.GetStyle () & WS_VISIBLE);
}


//===========================================================================
// CMainFrame::OnViewOutput
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CMainFrame::OnViewOutput()
{
    ShowControlBar (&m_wndOutput,
        !(m_wndOutput.GetStyle () & WS_VISIBLE),
        FALSE);
    RecalcLayout ();
}


//===========================================================================
// CMainFrame::OnUpdateViewOutput
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CCmdUI* pCmdUI
// 
// Return: void 
//===========================================================================
void CMainFrame::OnUpdateViewOutput(CCmdUI* pCmdUI)
{
    pCmdUI->SetCheck (m_wndOutput.GetStyle () & WS_VISIBLE);
}


//===========================================================================
// CMainFrame::OnFileOpen
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CMainFrame::OnFileOpen()
{
    OUPUTMSG("File|Open is clicked\r\n");
}


//===========================================================================
// CMainFrame::OnUpdateFileOpen
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CCmdUI* pCmdUI
// 
// Return: void 
//===========================================================================
void CMainFrame::OnUpdateFileOpen(CCmdUI* pCmdUI)
{
    pCmdUI->Enable(TRUE);
}


//
// WorkSpace Operation
//

//===========================================================================
// CMainFrame::OnUpdateFileNewWorkspace
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CCmdUI* pCmdUI
// 
// Return: void 
//===========================================================================
void CMainFrame::OnUpdateFileNewWorkspace(CCmdUI* pCmdUI)
{
    pCmdUI->Enable(TRUE);
}


//===========================================================================
// CMainFrame::OnFileNewWorkspace
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CMainFrame::OnFileNewWorkspace()
{
    if (_ShouldAppCloseWorkSpace())
    {
        if (m_pWorkSpaceDoc != NULL)
        {
            m_pWorkSpaceDoc->CloseWorkSpace();
            delete m_pWorkSpaceDoc;
            m_pWorkSpaceDoc = NULL;
            _PopulateClassView();
            _PopulateFileView();
            m_wndWorkSpace.RemoveAllTab();
        }
    }

    CFileDialog oFileDlg(FALSE, "xws", NULL,
        OFN_HIDEREADONLY | OFN_OVERWRITEPROMPT,
        "XML WorkSpace Files (*.xws)|*.xws|All Files (*.*)|*.*||",
        this);

    if (oFileDlg.DoModal() == IDOK)
    {
        ASSERT(m_pWorkSpaceDoc == NULL);
        m_pWorkSpaceDoc = new CWorkSpaceDoc;
        m_pWorkSpaceDoc->NewWorkSpace(oFileDlg.GetPathName());

        m_wndWorkSpace.InsertAllTab();
        _PopulateClassView();
        _PopulateFileView();
        // set active tab to file view
        m_wndWorkSpace.GetTabWnd()->SetActiveTab(1);
    }
}

bool CMainFrame::OpenWorkSpaceFile( const CString & strFileName )
{
    // if user don't want to close workspace, just exit function
    if (_ShouldAppCloseWorkSpace())
    {
        if (m_pWorkSpaceDoc != NULL)
        {
            m_pWorkSpaceDoc->CloseWorkSpace();
            delete m_pWorkSpaceDoc;
            m_pWorkSpaceDoc = NULL;
            _PopulateClassView();
            _PopulateFileView();
            m_wndWorkSpace.RemoveAllTab();
        }

        m_pWorkSpaceDoc = new CWorkSpaceDoc;
        m_pWorkSpaceDoc->OpenWorkSpace(strFileName);
    
        AfxGetApp()->AddToRecentFileList(strFileName);

        m_wndWorkSpace.InsertAllTab();
        _PopulateClassView();
        _PopulateFileView();
        _PopulateScriptView();

        // set active tab to file view
        m_wndWorkSpace.GetTabWnd()->SetActiveTab(1);

        // set document all to non-modified
        for ( int j = 0; j < GetWorkSpaceDocPtr( )->GetScriptDocCount( ); j ++ )
        {
            GetWorkSpaceDocPtr( )->SetModified( true );
        }
        GetWorkSpacePtr( )->GetFileTreeCtrl( )->UpdateFileView( );
    }
    return true;
}

//===========================================================================
// CMainFrame::OnFileOpenWorkspace
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CMainFrame::OnFileOpenWorkspace()
{
    CFileDialog oFileDlg(TRUE, "xws", NULL,
        OFN_HIDEREADONLY | OFN_OVERWRITEPROMPT,
        "XML WorkSpace Files (*.xws)|*.xws|All Files (*.*)|*.*||",
        this);

    if (oFileDlg.DoModal() == IDOK)
    {
        OpenWorkSpaceFile( oFileDlg.GetPathName() );
    }
}


//===========================================================================
// CMainFrame::OnUpdateFileOpenWorkspace
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CCmdUI* pCmdUI
// 
// Return: void 
//===========================================================================
void CMainFrame::OnUpdateFileOpenWorkspace(CCmdUI* pCmdUI)
{
    pCmdUI->Enable(TRUE);
}


//===========================================================================
// CMainFrame::OnFileSaveWorkspace
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CMainFrame::OnFileSaveWorkspace()
{
    if (m_pWorkSpaceDoc == NULL)
    {
        return;
    }

    if (::GetFileAttributes((LPCTSTR)m_pWorkSpaceDoc->GetFilePath()) & FILE_ATTRIBUTE_READONLY)
    {
        ::AfxMessageBox("Workspace file is read only, make sure you checkout this file from P4.");
        return;
    }

    m_pWorkSpaceDoc->SaveWorkSpace();
}


//===========================================================================
// CMainFrame::OnUpdateFileSaveWorkspace
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CCmdUI* pCmdUI
// 
// Return: void 
//===========================================================================
void CMainFrame::OnUpdateFileSaveWorkspace(CCmdUI* pCmdUI)
{
    if (m_pWorkSpaceDoc != NULL && m_pWorkSpaceDoc->GetModified())
    {
        pCmdUI->Enable(TRUE);
    }
    else
    {
        pCmdUI->Enable(FALSE);
    }
}


//===========================================================================
// CMainFrame::OnFileSaveAll
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CMainFrame::OnFileSaveAll()
{
    if (m_pWorkSpaceDoc != NULL)
    {
        //
        // Save all script document
        //
        for (int i = 0; i < m_pWorkSpaceDoc->GetScriptDocCount(); i++)
        {
            CScriptDoc *pScriptDoc = m_pWorkSpaceDoc->GetScriptDocAt(i);
            if (pScriptDoc->GetModified())
            {
                if (pScriptDoc->IsFileReadOnly())
                {
                    CString strMsg;
                    strMsg.Format("Script file \"%s\" is read only, make sure you checkout this file from P4.", (LPCTSTR)pScriptDoc->GetFilePath());
                    ::AfxMessageBox((LPCTSTR)strMsg);
                }
                else if (pScriptDoc->IsAnyInvalidItem())
                {
                    CString strMsg;
                    strMsg.Format("Script file \"%s\" has invalid object.", (LPCTSTR)pScriptDoc->GetFilePath());
                    ::AfxMessageBox((LPCTSTR)strMsg);
                }
                else
                {
                    pScriptDoc->Save();
                }
            }
        }

        //
        // Save workspace file
        //
        if (m_pWorkSpaceDoc->GetModified())
        {
            OnFileSaveWorkspace();
        }

        GetWorkSpacePtr( )->GetFileTreeCtrl( )->UpdateFileView( );
    }
}


//===========================================================================
// CMainFrame::OnUpdateFileSaveAll
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CCmdUI* pCmdUI
// 
// Return: void 
//===========================================================================
void CMainFrame::OnUpdateFileSaveAll(CCmdUI* pCmdUI)
{
    if (m_pWorkSpaceDoc != NULL)
    {
        pCmdUI->Enable(TRUE);
    }
    else
    {
        pCmdUI->Enable(FALSE);
    }
}


//===========================================================================
// CMainFrame::_ShouldAppCloseWorkSpace
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: bool 
//===========================================================================
bool CMainFrame::_ShouldAppCloseWorkSpace()
{
    if (m_pWorkSpaceDoc == NULL)
    {
        return(true);
    }

    //
    // Check if any file needs to be saved
    //
    bool bRequireSave = false;
    for (int i = 0; i < m_pWorkSpaceDoc->GetScriptDocCount(); i++)
    {
        if (m_pWorkSpaceDoc->GetScriptDocAt(i)->GetModified())
        {
            bRequireSave = true;
            break;
        }
    }

    //
    // Check if workspace needs to be saved
    //
    if (m_pWorkSpaceDoc->GetModified())
    {
        bRequireSave = true;
    }

    if (bRequireSave == true)
    {
        int nRet = ::AfxMessageBox("Do you want to save any unsaved file before close it?", MB_YESNOCANCEL, NULL);
        if (nRet == IDYES)
        {
            OnFileSaveAll();
        }
        else if (nRet == IDNO)
        {
            // no save
        }
        else if (nRet == IDCANCEL)
        {
            return(false);
        }
    }

    return(true);
}



//===========================================================================
// CMainFrame::OnFileCloseWorkspace
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CMainFrame::OnFileCloseWorkspace()
{
    if (_ShouldAppCloseWorkSpace())
    {
        m_pWorkSpaceDoc->CloseWorkSpace();
        delete m_pWorkSpaceDoc;
        m_pWorkSpaceDoc = NULL;
        _PopulateClassView();
        _PopulateFileView();

        m_wndWorkSpace.RemoveAllTab();
    }
}


//===========================================================================
// CMainFrame::OnUpdateFileCloseWorkspace
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CCmdUI* pCmdUI
// 
// Return: void 
//===========================================================================
void CMainFrame::OnUpdateFileCloseWorkspace(CCmdUI* pCmdUI)
{
    if (m_pWorkSpaceDoc != NULL)
    {
        pCmdUI->Enable(TRUE);
    }
    else
    {
        pCmdUI->Enable(FALSE);
    }
}


//===========================================================================
// CMainFrame::OnProjectSettings
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CMainFrame::OnProjectSettings()
{
    CProjectSettingDlg oDlg;
    oDlg.m_strRTIPath = m_pWorkSpaceDoc->GetXMLProfileString("Path_TypeInfoPath");
    oDlg.m_strScriptPath = m_pWorkSpaceDoc->GetXMLProfileString("Path_ScriptPath");

    if (oDlg.DoModal() == IDOK)
    {
        m_pWorkSpaceDoc->SetXMLProfileString("Path_TypeInfoPath", oDlg.m_strRTIPath);
        m_pWorkSpaceDoc->SetXMLProfileString("Path_ScriptPath", oDlg.m_strScriptPath);
        m_pWorkSpaceDoc->SaveWorkSpace();

        OnFileReloadscriptfile();
    }
}


//===========================================================================
// CMainFrame::OnUpdateProjectSettings
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CCmdUI* pCmdUI
// 
// Return: void 
//===========================================================================
void CMainFrame::OnUpdateProjectSettings(CCmdUI* pCmdUI)
{
    if (m_pWorkSpaceDoc != NULL)
    {
        pCmdUI->Enable(TRUE);
    }
    else
    {
        pCmdUI->Enable(FALSE);
    }
}


//===========================================================================
// CMainFrame::OnTimer
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             UINT nIDEvent
// 
// Return: void 
//===========================================================================
void CMainFrame::OnTimer(UINT nIDEvent)
{
    if (ms_pRC)
    {
        ms_pRC->Service();
    }

    if (ms_bIsLastRCDone && ms_pRC)
    {
        delete ms_pRC;
        ms_pRC = NULL;

		if ( m_vecMethodCallQueue.size() != 0 )
		{
			CMethodCall * pMethodCall = m_vecMethodCallQueue[ 0 ];

			ASSERT(pMethodCall);

			CallRCC( pMethodCall->m_pScriptObject, pMethodCall->m_pScriptMethod );

			delete m_vecMethodCallQueue[ 0 ];

			m_vecMethodCallQueue.erase(& m_vecMethodCallQueue[ 0 ]);
		}

    }



    CMDIFrameWnd::OnTimer(nIDEvent);
}


//===========================================================================
// CMainFrame::OnEditCopy
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CMainFrame::OnEditCopy() 
{
    CWnd* pFocusWnd = CWnd::GetFocus();
    if (pFocusWnd == NULL) return;

    if (pFocusWnd->IsKindOf(RUNTIME_CLASS(CEdit)))
    {
        CEdit *pWnd = (CEdit *)pFocusWnd;
        pWnd->Copy();
    }
    else if (pFocusWnd->IsKindOf(RUNTIME_CLASS(CRichEditCtrl)))
    {
        CRichEditCtrl *pWnd = (CRichEditCtrl *)pFocusWnd;
        pWnd->Copy();
    }
    else if (pFocusWnd->IsKindOf(RUNTIME_CLASS(CComboBox)))
    {
        CComboBox *pWnd = (CComboBox *)pFocusWnd;
        pWnd->Copy();
    }
    else if ( pFocusWnd->IsKindOf(RUNTIME_CLASS(CFileTreeCtrl)))
    {
        CFileTreeCtrl *pWnd = (CFileTreeCtrl *)pFocusWnd;
        pWnd->Copy();
    }
}


//===========================================================================
// CMainFrame::OnUpdateEditCopy
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CCmdUI* pCmdUI
// 
// Return: void 
//===========================================================================
void CMainFrame::OnUpdateEditCopy(CCmdUI* pCmdUI) 
{
    CWnd* pFocusWnd = CWnd::GetFocus();
    if (pFocusWnd == NULL) return;

    if (pFocusWnd->IsKindOf(RUNTIME_CLASS(CEdit)) ||
        pFocusWnd->IsKindOf(RUNTIME_CLASS(CRichEditCtrl)) ||
        pFocusWnd->IsKindOf(RUNTIME_CLASS(CComboBox)))
    {
        pCmdUI->Enable(TRUE);
    }
    else if ( pFocusWnd->IsKindOf(RUNTIME_CLASS(CFileTreeCtrl)) )
    {
        CFileTreeCtrl * pWnd = (CFileTreeCtrl*)pFocusWnd;
        pCmdUI->Enable(pWnd->CanEditCopy());
    }
    else
    {
        pCmdUI->Enable(FALSE);
    }
}


//===========================================================================
// CMainFrame::OnEditCut
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CMainFrame::OnEditCut() 
{
    CWnd* pFocusWnd = CWnd::GetFocus();
    if (pFocusWnd == NULL) return;

    if (pFocusWnd->IsKindOf(RUNTIME_CLASS(CEdit)))
    {
        CEdit *pWnd = (CEdit *)pFocusWnd;
        pWnd->Cut();
    }
    else if (pFocusWnd->IsKindOf(RUNTIME_CLASS(CRichEditCtrl)))
    {
        CRichEditCtrl *pWnd = (CRichEditCtrl *)pFocusWnd;
        pWnd->Cut();
    }
    else if (pFocusWnd->IsKindOf(RUNTIME_CLASS(CComboBox)))
    {
        CComboBox *pWnd = (CComboBox *)pFocusWnd;
        pWnd->Cut();
    }
}


//===========================================================================
// CMainFrame::OnUpdateEditCut
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CCmdUI* pCmdUI
// 
// Return: void 
//===========================================================================
void CMainFrame::OnUpdateEditCut(CCmdUI* pCmdUI) 
{
    CWnd* pFocusWnd = CWnd::GetFocus();
    if (pFocusWnd == NULL) return;

    if (pFocusWnd->IsKindOf(RUNTIME_CLASS(CEdit)) ||
        pFocusWnd->IsKindOf(RUNTIME_CLASS(CRichEditCtrl)) ||
        pFocusWnd->IsKindOf(RUNTIME_CLASS(CComboBox)))
    {
        pCmdUI->Enable(TRUE);
    }
    else
    {
        pCmdUI->Enable(FALSE);
    }
}


//===========================================================================
// CMainFrame::OnEditPaste
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CMainFrame::OnEditPaste() 
{
    CWnd* pFocusWnd = CWnd::GetFocus();
    if (pFocusWnd == NULL) return;

    if (pFocusWnd->IsKindOf(RUNTIME_CLASS(CEdit)))
    {
        CEdit *pWnd = (CEdit *)pFocusWnd;
        pWnd->Paste();
    }
    else if (pFocusWnd->IsKindOf(RUNTIME_CLASS(CRichEditCtrl)))
    {
        CRichEditCtrl *pWnd = (CRichEditCtrl *)pFocusWnd;
        pWnd->Paste();
    }
    else if (pFocusWnd->IsKindOf(RUNTIME_CLASS(CComboBox)))
    {
        CComboBox *pWnd = (CComboBox *)pFocusWnd;
        pWnd->Paste();
    }
    else if ( pFocusWnd->IsKindOf(RUNTIME_CLASS(CFileTreeCtrl)))
    {
        CFileTreeCtrl *pWnd = (CFileTreeCtrl *)pFocusWnd;
        pWnd->Paste();
    }
}


//===========================================================================
// CMainFrame::OnUpdateEditPaste
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CCmdUI* pCmdUI
// 
// Return: void 
//===========================================================================
void CMainFrame::OnUpdateEditPaste(CCmdUI* pCmdUI) 
{
    CWnd* pFocusWnd = CWnd::GetFocus();
    if (pFocusWnd == NULL) return;

    if (pFocusWnd->IsKindOf(RUNTIME_CLASS(CEdit)) ||
        pFocusWnd->IsKindOf(RUNTIME_CLASS(CRichEditCtrl)) ||
        pFocusWnd->IsKindOf(RUNTIME_CLASS(CComboBox)))
    {
        pCmdUI->Enable(TRUE);
    }
    else if ( pFocusWnd->IsKindOf(RUNTIME_CLASS(CFileTreeCtrl)) )
    {
        CFileTreeCtrl * pWnd = (CFileTreeCtrl*)pFocusWnd;
        pCmdUI->Enable(pWnd->CanEditPaste());
    }
    else
    {
        pCmdUI->Enable(FALSE);
    }
}


//===========================================================================
// CMainFrame::OnEditUndo
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CMainFrame::OnEditUndo() 
{
    CWnd* pFocusWnd = CWnd::GetFocus();
    if (pFocusWnd == NULL) return;

    if (pFocusWnd->IsKindOf(RUNTIME_CLASS(CEdit)))
    {
        CEdit *pWnd = (CEdit *)pFocusWnd;
        pWnd->Undo();
    }
    else if (pFocusWnd->IsKindOf(RUNTIME_CLASS(CRichEditCtrl)))
    {
        CRichEditCtrl *pWnd = (CRichEditCtrl *)pFocusWnd;
        pWnd->Undo();
    }
}


//===========================================================================
// CMainFrame::OnUpdateEditUndo
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CCmdUI* pCmdUI
// 
// Return: void 
//===========================================================================
void CMainFrame::OnUpdateEditUndo(CCmdUI* pCmdUI) 
{
    CWnd* pFocusWnd = CWnd::GetFocus();
    if (pFocusWnd == NULL) return;

    if (pFocusWnd->IsKindOf(RUNTIME_CLASS(CEdit)) ||
        pFocusWnd->IsKindOf(RUNTIME_CLASS(CRichEditCtrl)))
    {
        pCmdUI->Enable(TRUE);
    }
    else
    {
        pCmdUI->Enable(FALSE);
    }
}


//===========================================================================
// CMainFrame::OnViewRefresh
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CMainFrame::OnViewRefresh() 
{
    _PopulateClassView();
    _PopulateFileView();
    _PopulateScriptView( );
}


//===========================================================================
// CMainFrame::OnUpdateViewRefresh
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CCmdUI* pCmdUI
// 
// Return: void 
//===========================================================================
void CMainFrame::OnUpdateViewRefresh(CCmdUI* pCmdUI) 
{
    if (m_pWorkSpaceDoc != NULL)
    {
        pCmdUI->Enable(TRUE);
    }
    else
    {
        pCmdUI->Enable(FALSE);
    }
}



//===========================================================================
// CMainFrame::OnFileReloadscriptfile
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CMainFrame::OnFileReloadscriptfile() 
{
    CString strWorkSpaceFile = m_pWorkSpaceDoc->GetFilePath();
    if (_ShouldAppCloseWorkSpace())
    {
        m_pWorkSpaceDoc->CloseWorkSpace();
        m_pWorkSpaceDoc->OpenWorkSpace(strWorkSpaceFile);
        _PopulateClassView();
        _PopulateFileView();
        _PopulateScriptView( );
    }
}


//===========================================================================
// CMainFrame::OnUpdateFileReloadscriptfile
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CCmdUI* pCmdUI
// 
// Return: void 
//===========================================================================
void CMainFrame::OnUpdateFileReloadscriptfile(CCmdUI* pCmdUI) 
{
    if (m_pWorkSpaceDoc != NULL)
    {
        pCmdUI->Enable(TRUE);
    }
    else
    {
        pCmdUI->Enable(FALSE);
    }
}


//===========================================================================
// CMainFrame::OnViewClearoutput
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CMainFrame::OnViewClearoutput() 
{
    m_wndOutput.ClearOutput();
}


//===========================================================================
// CMainFrame::OnUpdateViewClearoutput
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             CCmdUI* pCmdUI
// 
// Return: void 
//===========================================================================
void CMainFrame::OnUpdateViewClearoutput(CCmdUI* pCmdUI) 
{
    pCmdUI->Enable(TRUE);
}
