/////////////////////////////////////////////////////////////////////////////
// XConDoc.cpp : implementation of the CXConDoc class

#pragma warning( disable : 4786 )
#include "StdAfx.h"
#include <assert.h>
#include <process.h>
#include "XCon.h"
#include "XConDoc.h"
#include "XConView.h"
#include "TabView.h"
#include "PageDlg.h"
#include "ResourceDlg.h"
#include <direct.h>
#include "DlgProp.h"
#include "FeData\Helpers\TokenList.h"
#include "FeData\NamedElements\NamedElement.h"
#include "FeData\NamedElements\Group.h"
#include "FeData\NamedElements\Layer.h"
#include "FeData\NamedElements\Movie.h"
#include "FeData\NamedElements\MultiText.h"
#include "FeData\NamedElements\MultiSprite.h"
#include "FeData\NamedElements\Page.h"
#include "FeData\NamedElements\Polygon.h"
#include "FeData\NamedElements\Pure3dObject.h"
#include "FeData\NamedElements\Project.h"
#include "FeData\NamedElements\Screen.h"
#include "FeData\NamedElements\Sprite.h"
#include "FeData\NamedElements\Text.h"
#include "FeData\Resources\Image.h"
#include "FeData\Resources\Pure3dFile.h"
#include "FeData\Resources\TextBible.h"
#include "FeData\Resources\TextStyle.h"
#include "FeData\NamedElements\Descriptions\PolygonDescription.h"
#include "GUI\Undo\Action.h"
#include "GUI\Undo\ActionAddFromDescription.h"
#include "GUI\Undo\ActionAlign.h"
#include "GUI\Undo\ActionDeleteSelection.h"
#include "GUI\Undo\ActionGroup.h"
#include "GUI\Undo\ActionLayer.h"
#include "GUI\Undo\ActionManager.h"
#include "GUI\Undo\ActionMovie.h"
#include "GUI\Undo\ActionMultiSprite.h"
#include "GUI\Undo\ActionMultiText.h"
#include "GUI\Undo\ActionPage.h"
#include "GUI\Undo\ActionPolygon.h"
#include "GUI\Undo\ActionPure3dObject.h"
#include "GUI\Undo\ActionSprite.h"
#include "GUI\Undo\ActionSelectionChange.h"
#include "GUI\Undo\ActionText.h"
#include "GUI\Property Dialogs\ResourceP3dPropDialog.h"
#include "GUI\Property Dialogs\ResourcePropDlg.h"
#include "GUI\Property Dialogs\GroupPropDlg.h"
#include "GUI\Property Dialogs\LayerPropDlg.h"
#include "net\MessagePacket.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif


const char* const g_ClibboardHeader = "*** Scrooby Builder ***";

// Make a little more convenient error handler
#define SHOWERROR(e) MessageBox( NULL, e, "ERROR", MB_OK )

/////////////////////////////////////////////////////////////////////////////
// CDirectoryMgr

CDirectoryMgr::CDirectoryMgr(LPCTSTR pszPath)
{
    ::GetCurrentDirectory(_MAX_PATH, m_szDir);
    m_bSuccess = TRUE;

    if (pszPath && lstrlen(pszPath))
        ::SetCurrentDirectory(pszPath);
}

BOOL CDirectoryMgr::Init(LPCTSTR pszPath, UINT nIDError)
{
    ::GetCurrentDirectory(_MAX_PATH, m_szDir);

    if (pszPath && lstrlen(pszPath) && !::SetCurrentDirectory(pszPath))
    {
        AfxMessageBox(nIDError);
        m_bSuccess = FALSE;
    }
    else
        m_bSuccess = TRUE;
    return m_bSuccess;
}

/////////////////////////////////////////////////////////////////////////////
// CXConDoc

IMPLEMENT_DYNCREATE(CXConDoc, CDocument)

BEGIN_MESSAGE_MAP(CXConDoc, CDocument)
    //{{AFX_MSG_MAP(CXConDoc)
    ON_COMMAND(ID_INSERT_CURSOR, OnInsertCursor)
    ON_COMMAND(ID_INSERT_FONT, OnInsertFont)
    ON_COMMAND(ID_INSERT_STRING, OnInsertString)
    ON_COMMAND(ID_INSERT_IMAGE, OnInsertImage)
    ON_COMMAND(ID_INSERT_MOVIE_CLIP, OnInsertMovieClip)
    ON_COMMAND(ID_INSERT_PURE3DFILE, OnInsertPure3dFile)
    ON_UPDATE_COMMAND_UI(ID_INSERT_CURSOR, OnUpdateInsertCursor)
    ON_COMMAND(ID_PROPERTIES, OnProperties)
    ON_UPDATE_COMMAND_UI(ID_PROPERTIES, OnUpdateProperties)
    ON_COMMAND(ID_FILE_PROPERTIES, OnFileProperties)
    ON_COMMAND(ID_REFRESH, OnRefresh)
    ON_COMMAND(ID_INSERT_SPRITE, OnInsertSprite)
    ON_COMMAND(ID_INSERT_TEXT, OnInsertText)
    ON_UPDATE_COMMAND_UI(ID_INSERT_TEXT, OnUpdateInsertText)
    ON_UPDATE_COMMAND_UI(ID_INSERT_MOVIE_CLIP, OnUpdateInsertMovieClip)
    ON_UPDATE_COMMAND_UI(ID_INSERT_PURE3DFILE, OnUpdateInsertPure3dFile)
    ON_UPDATE_COMMAND_UI(ID_INSERT_SPRITE, OnUpdateInsertSprite)
    ON_UPDATE_COMMAND_UI(ID_INSERT_LAYER, OnUpdateInsertLayer)
    ON_UPDATE_COMMAND_UI(ID_INSERT_GROUP, OnUpdateInsertGroup)
    ON_UPDATE_COMMAND_UI(ID_DELETE, OnUpdateDelete)
    ON_COMMAND(ID_DELETE, OnDelete)
    ON_UPDATE_COMMAND_UI(ID_OVERLAY_TOGGLE, OnUpdateOverlayToggle)
    ON_COMMAND(ID_VIEW_TV_CUTOFF, OnViewTvCutoff)
    ON_UPDATE_COMMAND_UI(ID_VIEW_TV_CUTOFF, OnUpdateViewTvCutoff)
    ON_COMMAND(ID_MULTI_OBJECT, OnMultiObject)
    ON_UPDATE_COMMAND_UI(ID_MULTI_OBJECT, OnUpdateMultiObject)
    ON_UPDATE_COMMAND_UI(ID_REFRESH, OnUpdateRefresh)
    ON_COMMAND(ID_ZOOM_TOGGLE, OnZoomToggle)
    ON_UPDATE_COMMAND_UI(ID_ZOOM_TOGGLE, OnUpdateZoomToggle)
    ON_UPDATE_COMMAND_UI(ID_INSERT_POLY, OnUpdateInsertOverlayObj)
    ON_UPDATE_COMMAND_UI(ID_INSERT_LINE, OnUpdateInsertPolygon)
    ON_COMMAND(ID_INSERT_POLY, OnInsertPoly)
    ON_COMMAND(ID_INSERT_CLIP, OnInsertClip)
    ON_COMMAND(ID_INSERT_LINE, OnInsertLine)
    ON_COMMAND(ID_INSERT_TRIANGLE, OnInsertTriangle)
    ON_COMMAND(ID_INSERT_QUAD, OnInsertQuad)
    ON_COMMAND(ID_INSERT_LAYER, OnInsertLayer)
    ON_COMMAND(ID_INSERT_GROUP, OnInsertGroup)
    ON_COMMAND(ID_FILE_SAVE, OnFileSave)
    ON_COMMAND(ID_INSERT_TEXT_BIBLE, OnInsertTextBible)
    ON_COMMAND(ID_INSERT_NEW_PAGE, OnInsertNewPage)
    ON_COMMAND(ID_INSERT_EXISTING_PAGE, OnInsertExistingPage)
    ON_COMMAND(ID_VIEW_ZOOM_IN, OnViewZoomIn)
    ON_UPDATE_COMMAND_UI(ID_VIEW_ZOOM_IN, OnUpdateViewZoomIn)
    ON_COMMAND(ID_VIEW_ZOOM_OUT, OnViewZoomOut)
    ON_UPDATE_COMMAND_UI(ID_VIEW_ZOOM_OUT, OnUpdateViewZoomOut)
    ON_COMMAND(ID_VIEW_ACTUAL_PIXELS, OnViewActualPixels)
    ON_COMMAND(ID_INSERT_TEXT_STYLE, OnInsertTextStyle)
    ON_COMMAND(ID_EDIT_UNDO, OnEditUndo)
    ON_UPDATE_COMMAND_UI(ID_EDIT_UNDO, OnUpdateEditUndo)
    ON_COMMAND(ID_EDIT_REDO, OnEditRedo)
    ON_UPDATE_COMMAND_UI(ID_EDIT_REDO, OnUpdateEditRedo)
    ON_COMMAND(ID_EDIT_DUPLICATE, OnEditDuplicate)
    ON_UPDATE_COMMAND_UI(ID_EDIT_DUPLICATE, OnUpdateEditDuplicate)
    ON_UPDATE_COMMAND_UI(ID_INSERT_NEW_PAGE, OnUpdateInsertNewPage)
    ON_UPDATE_COMMAND_UI(ID_INSERT_EXISTING_PAGE, OnUpdateInsertExistingPage)
    ON_UPDATE_COMMAND_UI(ID_INSERT_IMAGE, OnUpdateInsertImage)
    ON_UPDATE_COMMAND_UI(ID_INSERT_STRING, OnUpdateInsertString)
    ON_UPDATE_COMMAND_UI(ID_INSERT_FONT, OnUpdateInsertFont)
    ON_UPDATE_COMMAND_UI(ID_INSERT_TEXT_BIBLE, OnUpdateInsertTextBible)
    ON_UPDATE_COMMAND_UI(ID_INSERT_TEXT_STYLE, OnUpdateInsertTextStyle)
    ON_COMMAND(ID_INSERT_MULTISPRITE, OnInsertMultisprite)
    ON_UPDATE_COMMAND_UI(ID_INSERT_MULTITEXT, OnUpdateInsertMultitext)
    ON_UPDATE_COMMAND_UI(ID_INSERT_MOVIE, OnUpdateInsertMovie)
    ON_UPDATE_COMMAND_UI(ID_INSERT_PURE3DOBJECT, OnUpdateInsertPure3dObject)
    ON_COMMAND(ID_INSERT_MULTITEXT, OnInsertMultitext)
    ON_COMMAND(ID_INSERT_MOVIE, OnInsertMovie)
    ON_COMMAND(ID_INSERT_PURE3DOBJECT, OnInsertPure3dObject)
    ON_UPDATE_COMMAND_UI(ID_INSERT_MULTISPRITE, OnUpdateInsertMultisprite)
    ON_COMMAND(ID_ALIGN_BOTTOM, OnAlignBottom)
    ON_COMMAND(ID_ALIGN_HCENTER, OnAlignHcenter)
    ON_COMMAND(ID_ALIGN_LEFT, OnAlignLeft)
    ON_COMMAND(ID_ALIGN_RIGHT, OnAlignRight)
    ON_COMMAND(ID_ALIGN_TOP, OnAlignTop)
    ON_COMMAND(ID_ALIGN_VCENTER, OnAlignVcenter)
    ON_COMMAND(ID_EDIT_DESELECT_SELECTION, OnEditDeselectSelection)
    ON_UPDATE_COMMAND_UI(ID_EDIT_DESELECT_SELECTION, OnUpdateEditDeselectSelection)
    ON_COMMAND(ID_EDIT_COPY, OnEditCopy)
    ON_UPDATE_COMMAND_UI(ID_EDIT_COPY, OnUpdateEditCopy)
    ON_COMMAND(ID_EDIT_PASTE, OnEditPaste)
    ON_UPDATE_COMMAND_UI(ID_EDIT_PASTE, OnUpdateEditPaste)
    ON_COMMAND(ID_EDIT_CUT, OnEditCut)
    ON_UPDATE_COMMAND_UI(ID_EDIT_CUT, OnUpdateEditCut)
    ON_COMMAND(ID_DELETE_LAYER, OnDeleteLayer)
    ON_UPDATE_COMMAND_UI(ID_DELETE_LAYER, OnUpdateDeleteLayer)
    ON_COMMAND(ID_DELETE_PAGE, OnDeletePage)
    ON_UPDATE_COMMAND_UI(ID_DELETE_PAGE, OnUpdateDeletePage)
    ON_COMMAND(ID_EDIT_REFRESH_ALL, OnRefreshAll)
    ON_COMMAND(ID_PREVIEWER_PS2, OnPreviewerPs2)
    ON_COMMAND(ID_FILE_SAVEALL, OnFileSaveall)
    ON_COMMAND(ID_INSERT_IMAGE, OnInsertImage)
    ON_UPDATE_COMMAND_UI(ID_INSERT_CLIP, OnUpdateInsertOverlayObj)
    ON_UPDATE_COMMAND_UI(ID_INSERT_TRIANGLE, OnUpdateInsertPolygon)
    ON_UPDATE_COMMAND_UI(ID_INSERT_QUAD, OnUpdateInsertPolygon)
    ON_COMMAND(ID_INSERT_TEXT_BIBLE, OnInsertTextBible)
    ON_COMMAND(ID_PREVIEW_PC, OnPreviewPc)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CXConDoc construction/destruction

CXConDoc::CXConDoc() :
m_mapLangIDs(32)
{
    m_clrTransparency = DEFAULT_TRANSPARENCY;
    m_bTVCutoff = FALSE;
    m_sizeTVCutoff = CSize(0, 0);
    m_bExportFonts = FALSE;
    m_clrBkgd = RGB(0,0,0);

    if (!App()->IsExportOnly())
    {
        // init Clipboard data
        m_nClipboardFormat = ::RegisterClipboardFormat(_T("XCON_CLIPBOARD"));
        CoCreateGuid(&m_guid);
    }

    m_nLanguageIndex = 0;
    m_parLangData = NULL;
    m_charListData = NULL;
    m_bJapaneseWarn = FALSE;
    m_nJapaneseIndex = -1;

    m_nChangeCount = 0;
    m_nChangeBase = 0;

    for (int i = 0; i < NUM_DOC_ITEMS; i++)
    {
//        m_arDocItems[i] = new CXObjectArray;
    }

    m_PolygonPoints = NULL;
    m_PolygonCount = 0;

    m_ScreenDirty = false;
}

CXConDoc::~CXConDoc()
{
    // Delete the ScreenFile
    if( m_pScreenFile != NULL )
    {
        CXConApp* pApp = App();
        FeData::Project* project = pApp->GetProject();

        if( project != NULL )
        {
            FeData::ResourceFileManager* resFileMan = project->GetResourceFileManager();
            resFileMan->Release( (FeData::ResourceFile**)&m_pScreenFile );
        }
    }


/*

    ResetUndoRedo();

    for (int i = 0; i < NUM_DOC_ITEMS; i++)
    {
        CObArray* pArray = m_arDocItems[i];
        int nSize = pArray->GetSize();
        for (int j = 0; j < nSize; j++)
            delete pArray->GetAt(j);
        delete pArray;
    }

    delete[] m_parLangData;
    delete[] m_charListData;*/
}

void CXConDoc::ResetUndoRedo()
{
    /*
    // delete undo objects
    int nSize = m_arUndo.GetSize();
    for (int i = 0; i < nSize; i++)
        delete m_arUndo[i];
    m_arUndo.RemoveAll();

    nSize = m_arRedo.GetSize();
    for (i = 0; i < nSize; i++)
        delete m_arRedo[i];
    m_arRedo.RemoveAll();*/
}

void CXConDoc::GetTimeStamp(LPCTSTR lpszPathName)
{
    CFileStatus status;
    CFile::GetStatus(lpszPathName, status);
    m_timeModified = status.m_mtime;
}

BOOL CXConDoc::OnNewDocument()
{
    using namespace FeData;

    CXConApp* pApp = App();
    
    FileName screenFileName;

    if( pApp->GetNewScreenFileName( screenFileName ) == TRUE )
    {
        Project* project = pApp->GetProject();

        // Translate to full path (including root path) loading
        PascalCString fullPath;
        PascalCString screenFileNameString;
        screenFileName.Get( screenFileNameString );
        //fullPath = project->GetRootPath();
        //fullPath = project->GetScreenPath();
        fullPath += screenFileNameString;

        FileName tempFileName;
        tempFileName.Set( fullPath );

        ResourceFileManager* resFileMan = project->GetResourceFileManager();

        m_pScreenFile = resFileMan->GetScreenFile( tempFileName, project );
        if( m_pScreenFile == NULL )
        {
            return FALSE;
        }

        m_nPlatform = pApp->GetNewPlatform();
        m_sizeRes = pApp->GetNewResolution();

        SetWindowTitle();

        m_SelectionList.SetScreen( m_pScreenFile->GetScreen() );

        return CDocument::OnNewDocument();
    }
    else
    {
        return FALSE;
    }
}

BOOL CXConDoc::OnOpenDocument(LPCTSTR lpszPathName) 
{
    if (!CDocument::OnOpenDocument(lpszPathName))
        return FALSE;

    GetTimeStamp(lpszPathName);
    return TRUE;
}

/*
CXImage *CXConDoc::AddImage(char *name,char *path)
// path is in the format of foldername/xx/
{
    CXImage *pObject = new CXImage;
    pObject->SetDocument(this);
    pObject->SetTransparency(m_clrTransparency); 
    pObject->SetPathName(path);

    CString strFileName = m_strResourcePath + "/";

    strFileName += path;
    pObject->Load(strFileName);
    pObject->SetName(name);
    CXPathObjectArray* pArray = (CXPathObjectArray*)m_arDocItems[DOC_IMAGES];
    pArray->Add(pObject);
    CTabView* pView = GetTabView();
    pView->GetPage(RESOURCE_PAGE)->InsertNewEntry(pObject);
    return pObject;
}
*/
/*
CXScreen *CXConDoc::AddScreen()
// we rename the method here for consistency calling from JS
{
    return OnInsertScreen();
}


CXOverlay *CXConDoc::AddOverlay()
// we rename the method here for consistency calling from JS
{
    return OnInsertOverlay();
}*/

BOOL CXConDoc::OnSaveDocument(LPCTSTR lpszPathName) 
{
    if (m_strPathName == lpszPathName)
    {
        CFileStatus status;
        if (CFile::GetStatus(lpszPathName, status))
        {
            if (status.m_mtime > m_timeModified)
            {
                AfxMessageBox(IDP_TIME_STAMP_INVALID);
                return FALSE;
            }
        }
    }

    BOOL bSuccess = CDocument::OnSaveDocument(lpszPathName);

    if (bSuccess)
    {
        m_nChangeBase = m_nChangeCount;
        GetTimeStamp(lpszPathName);
    }
    return bSuccess;
}

/////////////////////////////////////////////////////////////////////////////
// CXConDoc commands

void CXConDoc::SetModifiedFlagEx(BOOL bChange /*=TRUE*/)
{
    if (bChange)
        m_nChangeCount++;
    else
        m_nChangeCount--;

    if (IsModified())
    {
        if (m_nChangeCount - m_nChangeBase == 0)
        {
            // remove '*'
            CString strTitle = m_strTitle.Left(m_strTitle.GetLength()-2);
            CDocument::SetTitle(strTitle);
            SetModifiedFlag(FALSE);
        }
    }
    else if ((bChange && m_nChangeCount-m_nChangeBase == 1) || (!bChange && m_nChangeCount-m_nChangeBase == -1))
    {
        // add '*'
        CString strTitle = m_strTitle + _T(" *");
        CDocument::SetTitle(strTitle);
        SetModifiedFlag(TRUE);
    }
}

BOOL CXConDoc::SaveModified() 
{
    if (!IsModified())
        return TRUE;        // ok to continue

    // if this is a new document, we want to remove the '*' at the end before
    // saving the document
    CString strSave;
    BOOL bChange = FALSE;
    if (m_strPathName.IsEmpty())
    {
        strSave = m_strTitle;
        m_strTitle.ReleaseBuffer(m_strTitle.GetLength()-2);
        bChange = TRUE;
    }

    BOOL bRet = CDocument::SaveModified();

    if (!bRet && bChange)
        m_strTitle = strSave;    // restore name with '*'

    return bRet;
}

CXConView* CXConDoc::GetXConView()
{
    CView* pView;
    POSITION pos = GetFirstViewPosition();
    while (pos)
    {
        pView = GetNextView(pos);
        if (pView->IsKindOf(RUNTIME_CLASS(CXConView)))
            return (CXConView*)pView;
    }

    return NULL;
}

CTabView* CXConDoc::GetTabView()
{
    CView* pView;
    POSITION pos = GetFirstViewPosition();
    while (pos)
    {
        pView = GetNextView(pos);
        if (pView->IsKindOf(RUNTIME_CLASS(CTabView)))
            return (CTabView*)pView;
    }

    return NULL;
}

void CXConDoc::GetUniqueName(CObArray* pArray, CString& str)
{
    /*
    int nSize = pArray->GetSize();
    if (!nSize)
        return;

    int nIndex = 0;
    CString strInitial = str;

    TCHAR nLast = str[str.GetLength()-1];
    if (nLast >= _T('0') && nLast <= _T('9'))
    {
        // count up from last digit in string
        nIndex = nLast - _T('0');
        strInitial.ReleaseBuffer(str.GetLength()-1);
    }

    while (TRUE)
    {
        for (int i = 0; i < nSize; i++)
        {
            if (((CXObject*)pArray->GetAt(i))->GetName() == str)
            {
                str.Format(_T("%s%d"), (LPCTSTR)strInitial, ++nIndex);
                break;
            }
        }
        if (i == nSize)
            break;
    }
    */
}

BOOL CXConDoc::CheckMultiSelection(CXObject** ppObject)
{
    /*
    CView* pView = App()->GetActiveView();
    if (pView->IsKindOf(RUNTIME_CLASS(CTabView)))
    {
        CTabView* pTabView = (CTabView*)pView;
        if (pTabView->GetSelectedPage() == PAGES_PAGE && IsMultiResourceObject(*ppObject))
        {
            *ppObject = ((CPageDlg*)pTabView->GetCurPage())->GetDisplayObject();
            return TRUE;
        }
    }
    */
    return FALSE;
}

//===========================================================================
// void CXConDoc::OnFileProperties() 
//===========================================================================
// Description: function is called when FILE->Properties is selected from the menu
//                this function will trigger a text bible load.
//
// Constraints:    None
//
// Parameters:    None
//
// Return:      Nothing
//
//===========================================================================
void CXConDoc::OnFileProperties() 
{
    /*
    CDocPropDlg dlg;
    dlg.m_strRootPath = m_strResourcePath;
    dlg.m_strLanguagePath = m_strLanguagePath;
    dlg.m_clrDefTrans = RGBINVERT( m_clrTransparency );
    dlg.m_clrBkgd = m_clrBkgd;
    dlg.m_bFonts = m_bExportFonts;
    dlg.m_strExportPath = m_strExportPath;
    if ( dlg.DoModal() != IDOK )
    {
        return;
    }

    BOOL bModified = FALSE;

    //get the language file path - if it's changed, load a new text bible in
    if ( m_strLanguagePath != dlg.m_strLanguagePath )
    {
        CString strSave = m_strLanguagePath;
        m_strLanguagePath = dlg.m_strLanguagePath;
        if ( m_strLanguagePath.IsEmpty() || this->LoadLanguage() )        //this is where the language file gets loaded
        {
            bModified = TRUE;
        }
        else
        {
            m_strLanguagePath = strSave;    //if we couldn't open the language file, keep it the same as it was
        }
    }

    //get the transparancy color from the dialog
    COLORREF clr = RGBINVERT( dlg.m_clrDefTrans );
    if ( m_clrTransparency != clr )
    {
        m_clrTransparency = clr;
        bModified = TRUE;
    }

    //get the background color from the dialog
    clr = dlg.m_clrBkgd;
    if ( m_clrBkgd != clr )
    {
        m_clrBkgd = clr;
        bModified = TRUE;
        GetXConView()->SetBkgdColor( m_clrBkgd );
    }

    //gets the boolean for whether or not fonts should be exported
    if( m_bExportFonts != dlg.m_bFonts )
    {
        m_bExportFonts = dlg.m_bFonts;
        bModified = TRUE;
    }

    //gets the path for exporting fonts
    if( m_strExportPath != dlg.m_strExportPath )
    {
        m_strExportPath = dlg.m_strExportPath;
        bModified = TRUE;
    }

    //if we've changed something, set the document modified flag
    if( bModified )
    {
        SetModifiedFlagEx();
    }
    */
}

CXObject* CXConDoc::GetSelection()
{
    CXObject* pObject = NULL;
    /*
    CView* pView = App()->GetActiveView();
    if (pView->IsKindOf(RUNTIME_CLASS(CXConView)))
        pObject = ((CXConView*)pView)->GetSelection();
    else
        pObject = ((CTabView*)pView)->GetSelection();*/
    return pObject;
}

void CXConDoc::OnUpdateProperties(CCmdUI* pCmdUI) 
{
    CView* pView = App()->GetActiveView();
    if( !pView->IsKindOf(RUNTIME_CLASS(CTabView)) )
    {
        pCmdUI->Enable( false );
        return;
    }
    FeData::NamedElement* namedElement = ((CTabView*)pView)->GetSelectedElement();
    
    if( (namedElement != NULL) /*&&
        ((dynamic_cast<FeData::DrawingElement*>(namedElement)) != NULL) &&
        ((dynamic_cast<FeData::Group*>(namedElement)) == NULL)*/ )
    {
        pCmdUI->Enable( TRUE );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }

}


void CXConDoc::OnProperties() 
{
    CView* pView = App()->GetActiveView();
    if( !pView->IsKindOf(RUNTIME_CLASS(CTabView)) )
    {
        return;
    }

    HandleProperties( ((CTabView*)pView)->GetSelectedElement() );
}


void CXConDoc::HandleProperties( FeData::NamedElement* namedElement )
{
    using namespace FeData;

    if( namedElement == NULL )
    {
        return;
    }

    // Are we setting the properties of a DrawingElement
    if( dynamic_cast<DrawingElement*>( namedElement ) != NULL )
    {

        // Do we have a Group
        Group* group = dynamic_cast<Group*>( namedElement );
        if( group != NULL )
        {
            Screen* screen = GetScreen();
            if( screen == NULL )
            {
                return;
            }

            CTabView* pView = GetTabView();
            CPageDlg* pageDlg = dynamic_cast<CPageDlg*>( pView->GetPage(PAGES_PAGE, false));
            if( pageDlg == NULL )
            {
                g_OutputMessage.Add( "CXConDoc::HandleProperties: Cannot get page Dialog!",
                                     DebugOutputMessage );
                return;
            }

            PascalCString pageName;
            if( !pageDlg->GetSelectedPageName( pageName ) )
            {
                g_OutputMessage.Add( "CXConDoc::HandleProperties: Cannot get selected page name!",
                                     DebugOutputMessage );
                return;
            }

            Page* page = screen->GetPage( pageName );
            if( page == NULL )
            {
                g_OutputMessage.Add( "CXConDoc::HandleProperties: Cannot get page from the screen!",
                                     DebugOutputMessage );
                return;
            }

            CGroupPropDlg dlg( group );
            dlg.SetPage( page );

            if( dlg.DoModal() == IDOK )
            {
                GetTabView()->InvalidatePage();
            }
        }

        // Do we have a Sprite
        Sprite* sprite = dynamic_cast<Sprite*>( namedElement );
        if( sprite != NULL )
        {
            AddAction( new ActionSprite( sprite->GetPage(), 
                                         sprite,
                                         NULL, // parent - Don't need for modification
                                         NULL, // nextSibling - Don't need for modification
                                         ACTION_DRAWINGELEMENT_MODIFY ) );
            return;
        }

        // Do we have a MultiSprite
        MultiSprite* multiSprite = dynamic_cast< MultiSprite* >( namedElement );
        if( multiSprite != NULL )
        {
            AddAction( new ActionMultiSprite( multiSprite->GetPage(), 
                                         multiSprite,
                                         NULL, // parent - Don't need for modification
                                         NULL, // nextSibling - Don't need for modification
                                         ACTION_DRAWINGELEMENT_MODIFY ) );
            return;
        }

        // Do we have a Text
        Text* text = dynamic_cast<Text*>( namedElement );
        if( text != NULL )
        {
            AddAction( new ActionText( text->GetPage(), 
                                       text,
                                       NULL, // parent - Don't need for modification
                                       NULL, // nextSibling - Don't need for modification
                                       ACTION_DRAWINGELEMENT_MODIFY ) );
            return;
        }

        // Do we have a MultiText
        MultiText* multiText = dynamic_cast<MultiText*>( namedElement );
        if( multiText != NULL )
        {
            AddAction( new ActionMultiText( multiText->GetPage(), 
                                            multiText,
                                            NULL, // parent - Don't need for modification
                                            NULL, // nextSibling - Don't need for modification
                                            ACTION_DRAWINGELEMENT_MODIFY ) );
            return;
        }

        // Do we have a Polygon
        FeData::Polygon* polygon = dynamic_cast<FeData::Polygon*>( namedElement );
        if( polygon != NULL )
        {
            AddAction( new ActionPolygon( polygon->GetPage(), 
                                          polygon,
                                          NULL, // parent - Don't need for modification
                                          NULL, // nextSibling - Don't need for modification
                                          NULL, // polygonPoints - Don't need for modification
                                          0,    // polygonCount - Don't need for modification 
                                          ACTION_DRAWINGELEMENT_MODIFY ) );
            return;
        }

        // Do we have a Movie
        FeData::Movie* movie = dynamic_cast<FeData::Movie*>( namedElement );
        if( movie != NULL )
        {
            AddAction( new ActionMovie( movie->GetPage(), 
                                          movie,
                                          NULL, // parent - Don't need for modification
                                          0,    // polygonCount - Don't need for modification 
                                          ACTION_DRAWINGELEMENT_MODIFY ) );
            return;
        }

        // Do we have a Pure3dObject
        FeData::Pure3dObject* pure3dObject = dynamic_cast<FeData::Pure3dObject*>( namedElement );
        if( pure3dObject != NULL )
        {
            AddAction( new ActionPure3dObject( pure3dObject->GetPage(), 
                                          pure3dObject,
                                          NULL, // parent - Don't need for modification
                                          0,    // polygonCount - Don't need for modification 
                                          ACTION_DRAWINGELEMENT_MODIFY ) );
            return;
        }
    }
    else if( dynamic_cast<Resource*>( namedElement ) != NULL )
    {
        // Not a DrawingElement, must be a Resource
        Screen* screen = GetScreen();
        if( screen == NULL )
        {
            return;
        }

        CTabView* pView = GetTabView();
        CResourceDlg* resDlg = dynamic_cast<CResourceDlg*>( pView->GetPage(RESOURCE_PAGE, false));
        if( resDlg == NULL )
        {
            g_OutputMessage.Add( "CXConDoc::HandleProperties: Cannot get   Dialog!",
                                 DebugOutputMessage );
            return;
        }

        PascalCString pageName;
        if( !resDlg->GetSelectedPageName( pageName ) )
        {
            g_OutputMessage.Add( "CXConDoc::HandleProperties: Cannot get selected page name!",
                                 DebugOutputMessage );
            return;
        }

        Page* page = screen->GetPage( pageName );
        if( page == NULL )
        {
            g_OutputMessage.Add( "CXConDoc::HandleProperties: Cannot get page from the screen!",
                                 DebugOutputMessage );
            return;
        }


        // Do we have an Image
        Image* image = dynamic_cast<Image*>( namedElement );
        if( image != NULL )
        {
            CResourcePropDlg dlg( image, page );
            if( dlg.DoModal() == IDOK )
            {
                GetXConView()->InvalidateView();
            }
        }

        // Do we have an TextBible
        TextBible* textBible = dynamic_cast<TextBible*>( namedElement );
        if( textBible != NULL )
        {
            CResourcePropDlg dlg( textBible, page );
            if( dlg.DoModal() == IDOK )
            {
                GetXConView()->InvalidateView();
            }
        }

        // Do we have an TextStyle
        TextStyle* textStyle = dynamic_cast<TextStyle*>( namedElement );
        if( textStyle != NULL )
        {
            CResourcePropDlg dlg( textStyle, page );
            if( dlg.DoModal() == IDOK )
            {
                GetXConView()->InvalidateView();
            }
        }

        // Do we have an Pure3dFile
        Pure3dFile* pure3dFile = dynamic_cast< Pure3dFile* >( namedElement );
        if( pure3dFile != NULL )
        {
            CResourceP3dPropDialog dlg( pure3dFile, page );
            if( dlg.DoModal() == IDOK )
            {
                GetXConView()->InvalidateView();
            }
        }

    }
    else
    {
        Screen* screen = GetScreen();
        if( screen == NULL )
        {
            return;
        }

        CTabView* pView = GetTabView();
        CPageDlg* pageDlg = dynamic_cast<CPageDlg*>( pView->GetPage(PAGES_PAGE, false));
        if( pageDlg == NULL )
        {
            g_OutputMessage.Add( "CXConDoc::HandleProperties: Cannot get page Dialog!",
                                 DebugOutputMessage );
            return;
        }

        PascalCString pageName;
        if( !pageDlg->GetSelectedPageName( pageName ) )
        {
            g_OutputMessage.Add( "CXConDoc::HandleProperties: Cannot get selected page name!",
                                 DebugOutputMessage );
            return;
        }

        Page* page = screen->GetPage( pageName );
        if( page == NULL )
        {
            g_OutputMessage.Add( "CXConDoc::HandleProperties: Cannot get page from the screen!",
                                 DebugOutputMessage );
            return;
        }

        Layer* layer = dynamic_cast<Layer*>( namedElement );
        if( layer != NULL )
        {
            CLayerPropDlg dlg( layer, page );
            if( dlg.DoModal() == IDOK )
            {
                GetTabView()->InvalidatePage();
            }
        }
    }
}


void CXConDoc::DrawOverlays(CDC* pDC, const CRect& rect, int nZoomFactor)
{
/*    CXOverlayArray* pArray = (CXOverlayArray*)m_arDocItems[DOC_OVERLAYS];
    int nSize = pArray->GetSize();
    for (int i = 0; i < nSize; i++)
    {
        CXOverlay* pOverlay = pArray->GetAt(i);
        //if (pOverlay->IsVisible())
            pOverlay->Draw(pDC, rect, nZoomFactor);
    }*/
}
/*
CXContext* CXConDoc::GetDisplayObj(CPoint point, CXOverlay** ppOverlay, CXLayer** ppLayer)
{
    CXContext* pContext = NULL;
    CXOverlayArray* pArray = (CXOverlayArray*)m_arDocItems[DOC_OVERLAYS];
    BOOL bBreak = FALSE;
    for (int i = pArray->GetUpperBound(); i >= 0; i--)
    {
        CXOverlay* pOverlay = pArray->GetAt(i);
        //if (pOverlay->IsVisible())
        {
            CXLayerArray *pLayerArray = pOverlay->GetLayerArray(); // WATCH
            for (int j = pLayerArray->GetUpperBound(); j >= 0; j--)
            {
                CXLayer* pLayer = pLayerArray->GetAt(j);
                if (pLayer->IsVisible())
                {
                    pContext = pLayer->GetDisplayObj(point);
                    if (pContext)
                    {
                        *ppLayer = pLayer;
                        bBreak = TRUE;
                        break;
                    }
                }
            }
            if (bBreak)
            {
                *ppOverlay = pOverlay;
                break;
            }
        }
    }
    return pContext;
}*/

void CXConDoc::OnUpdateRefresh(CCmdUI* pCmdUI) 
{
/*    CXObject* pObject = GetSelection();
    pCmdUI->Enable(pObject && pObject->IsKindOf(RUNTIME_CLASS(CXPathObject)));*/
}

void CXConDoc::OnRefresh() 
{
    using namespace FeData;

    NamedElement* namedElement = GetTabView()->GetSelectedElement();

    Resource* resource = dynamic_cast<Resource*>( namedElement );
    if( resource == NULL )
    {
        return;
    }

    resource->GetResourceFile()->Reload();
    
    GetXConView()->InvalidateView();

    /*
    CDirectoryMgr dmg;
    if (!dmg.Init(m_strResourcePath, IDP_RES_PATH_NOT_FOUND))
        return;

    CXPathObject* pPathObject = (CXPathObject*)GetSelection();
    if (pPathObject->Reload())
    {
        // find all context objects using this resource and refresh
        RefreshOverlays(pPathObject);
    }
    else
    {
        AfxMessageBox(IDP_INVALID_OBJECT);
        CXPathObject::s_bForceDelete = TRUE;
        AfxGetMainWnd()->SendMessage(WM_COMMAND, ID_DELETE);
        CXPathObject::s_bForceDelete = FALSE;
    }*/
}

/*
void CXConDoc::RefreshOverlays(CXResource* pResource)
{
    // update the resource object on the view if visible
    CXOverlayArray* pArray = (CXOverlayArray*)m_arDocItems[DOC_OVERLAYS];
    int nSize = pArray->GetSize();
    for (int i = 0; i < nSize; i++)
    {
        CXContextArray* pContextArray = pArray->GetAt(i)->GetContextArray();
        int nSize2 = pContextArray->GetSize();
        for (int j = 0; j < nSize2; j++)
        {
            CXContext* pContext = pContextArray->GetAt(j);
            if (pContext->IsResourceObjectUsed(pResource) && pContext->IsKindOf(RUNTIME_CLASS(CXDisplay)))
                ((CXDisplay*)pContext)->Refresh();
        }
    }
}*/

/*
void CXConDoc::OnStringChange(CXString* pString)
{
    CXOverlayArray* pArray = (CXOverlayArray*)m_arDocItems[DOC_OVERLAYS];
    int nSize = pArray->GetSize();
    for (int i = 0; i < nSize; i++)
        pArray->GetAt(i)->OnStringChange(pString);
}
  */


void CXConDoc::OnDelete() 
{
    using namespace FeData;

    Screen* screen = GetScreen();
    if( screen == NULL )
    {
        return;
    }

    AddAction( new ActionDeleteSelection( screen, 
                                          GetSelectionList() ) );
}


void CXConDoc::OnUpdateDelete(CCmdUI* pCmdUI) 
{
    if( m_SelectionList.GetNumberOfElements() > 0 )
    {
        pCmdUI->Enable( TRUE );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}


void CXConDoc::OnDeleteLayer() 
{
    using namespace FeData;

    Screen* screen = GetScreen();
    if( screen == NULL )
    {
        return;
    }

    CTabView* pView = GetTabView();
    CPageDlg* pageDlg = dynamic_cast<CPageDlg*>( pView->GetPage( PAGES_PAGE, false ) );
    if( pageDlg == NULL )
    {
        g_OutputMessage.Add( "CXConDoc::OnDeleteLayer: Cannot get page Dialog!",
                             DebugOutputMessage );
        return;
    }

    PascalCString pageName;
    if( !pageDlg->GetSelectedPageName( pageName ) )
    {
        g_OutputMessage.Add( "CXConDoc::OnDeleteLayer: Cannot get selected page name!",
                             DebugOutputMessage );
        return;
    }

    Page* page = screen->GetPage( pageName );
    if( page == NULL )
    {
        g_OutputMessage.Add( "CXConDoc::OnDeleteLayer: Cannot get page from the screen!",
                             DebugOutputMessage );
        return;
    }

    // Find the selected element
    NamedElement* selection = pageDlg->GetSelectedElement();

    // Do we have a layer
    Layer* layer = NULL;
    if( (layer = dynamic_cast<Layer*>( selection )) != NULL )
    {
        AddAction( new ActionLayer( page, 
                                    layer,
                                    page->GetLayerIndex( layer ), 
                                    ACTION_LAYER_DELETE,
                                    GetSelectionList() ) );
    }
}


void CXConDoc::OnUpdateDeleteLayer(CCmdUI* pCmdUI) 
{
    using namespace FeData;

    // Default to not enabled
    pCmdUI->Enable( FALSE );

    Screen* screen = GetScreen();
    if( screen == NULL )
    {
        return;
    }

    CTabView* pView = GetTabView();
    CPageDlg* pageDlg = dynamic_cast<CPageDlg*>( pView->GetPage( PAGES_PAGE, false ) );
    if( pageDlg == NULL )
    {
        return;
    }

    PascalCString pageName;
    if( !pageDlg->GetSelectedPageName( pageName ) )
    {
        return;
    }

    Page* page = screen->GetPage( pageName );
    if( page == NULL )
    {
        return;
    }

    // Find the selected element
    NamedElement* selection = pageDlg->GetSelectedElement();

    // Do we have a layer
    if( dynamic_cast<Layer*>( selection ) != NULL )
    {
        pCmdUI->Enable( TRUE );
    }
}


void CXConDoc::OnDeletePage() 
{
    using namespace FeData;

    Screen* screen = GetScreen();
    if( screen == NULL )
    {
        return;
    }

    CTabView* pView = GetTabView();
    CPageDlg* pageDlg = dynamic_cast<CPageDlg*>( pView->GetPage( PAGES_PAGE, false ) );
    if( pageDlg == NULL )
    {
        g_OutputMessage.Add( "CXConDoc::OnDeletePage: Cannot get page Dialog!",
                             DebugOutputMessage );
        return;
    }

    PascalCString pageName;
    if( !pageDlg->GetSelectedPageName( pageName ) )
    {
        g_OutputMessage.Add( "CXConDoc::OnDeletePage: Cannot get selected page name!",
                             DebugOutputMessage );
        return;
    }

    Page* page = screen->GetPage( pageName );
    if( page == NULL )
    {
        g_OutputMessage.Add( "CXConDoc::OnDeletePage: Cannot get page from the screen!",
                             DebugOutputMessage );
        return;
    }

    // Find the selected element
    NamedElement* selection = pageDlg->GetSelectedElement();

    // Do we have a page
    Page* pageSelection = NULL;
    if( (pageSelection = dynamic_cast<Page*>( selection )) != NULL )
    {
        AddAction( new ActionPage( screen, 
                                   screen->GetPageFileFromPage( pageSelection ),
                                   ACTION_PAGE_DELETE,
                                   GetSelectionList() ) );
    }
}


void CXConDoc::OnUpdateDeletePage(CCmdUI* pCmdUI) 
{
    using namespace FeData;

    // Default to not enabled
    pCmdUI->Enable( FALSE );

    Screen* screen = GetScreen();
    if( screen == NULL )
    {
        return;
    }

    CTabView* pView = GetTabView();
    CPageDlg* pageDlg = dynamic_cast<CPageDlg*>( pView->GetPage( PAGES_PAGE, false ) );
    if( pageDlg == NULL )
    {
        return;
    }

    PascalCString pageName;
    if( !pageDlg->GetSelectedPageName( pageName ) )
    {
        return;
    }

    Page* page = screen->GetPage( pageName );
    if( page == NULL )
    {
        return;
    }

    // Find the selected element
    NamedElement* selection = pageDlg->GetSelectedElement();

    // Do we have a page
    if( dynamic_cast<Page*>( selection ) != NULL )
    {
        pCmdUI->Enable( TRUE );
    }
}





void CXConDoc::OnUpdateOverlayToggle(CCmdUI* pCmdUI) 
{
    /*
    CXObject* pObject = GetSelection();
    if (pObject && pObject->IsKindOf(RUNTIME_CLASS(CXOverlay)))
    {
        pCmdUI->Enable();
        pCmdUI->SetCheck(((CXOverlay*)pObject)->IsVisible() ? 1 : 0);
    }
    else
    {
        pCmdUI->Enable(FALSE);
        pCmdUI->SetCheck(2);
    }*/
}


/////////////////////////////////////////////////////////////////////////////

void CXConDoc::UpdateScreenObjs(CXObject* pObject, BOOL bMoveUp)
{
/*    CXObjectArray* pOvrArray = m_arDocItems[DOC_OVERLAYS];
    int nIndex = FindObjectInArray(pOvrArray, pObject);

    CScreenDlg* pDlg = (CScreenDlg*)GetTabView()->GetPage(SCREEN_PAGE, FALSE);
    CXObjectArray* pScrArray = m_arDocItems[DOC_SCREENS];
    int nSize = pScrArray->GetSize();
    for (int i = 0; i < nSize; i++)
    {
        CXScreen* pScreen = (CXScreen*)pScrArray->GetAt(i);
        CXOverlayArray* pScrOvrArray = pScreen->GetOverlayArray();
        int nSize2 = pScrOvrArray->GetSize();
        for (int j = 0; j < nSize2; j++)
        {
            if (pScrOvrArray->GetAt(j) == pObject)
            {
                // overlay that was moved found in this screen
                // remember: the overlay array has already been moved
                BOOL bUpdate = FALSE;
                if (bMoveUp)
                {
                    if (j > 0 && pScrOvrArray->GetAt(j-1) == pOvrArray->GetAt(nIndex+1))
                        bUpdate = TRUE;
                }
                else
                {
                    if (j < nSize2-1 && pScrOvrArray->GetAt(j+1) == pOvrArray->GetAt(nIndex-1))
                        bUpdate = TRUE;
                }
                if (bUpdate)
                {
                    MoveObject(pScrOvrArray, pObject, bMoveUp);
                    pDlg->SetOverlays(pScreen, FALSE);
                }
                break;
            }
        }
    }*/
}

/////////////////////////////////////////////////////////////////////////////

CRect CXConDoc::GetTVCutoffRect()
{
    CRect rect(0, 0, m_sizeRes.cx, m_sizeRes.cy);
    rect.DeflateRect(m_sizeTVCutoff);
    return rect;
}

void CXConDoc::OnUpdateViewTvCutoff(CCmdUI* pCmdUI) 
{
    if (m_nPlatform == PLATFORM_PC)
        pCmdUI->Enable(FALSE);
}

void CXConDoc::OnViewTvCutoff() 
{
    CTVCutoffPropDlg dlg;
    dlg.m_bEnable = m_bTVCutoff;
    dlg.m_nHorzInset = m_sizeTVCutoff.cx;
    dlg.m_nVertInset = m_sizeTVCutoff.cy;
    dlg.m_sizeMax = CSize(m_sizeRes.cx/2-4, m_sizeRes.cy/2-4);
    if (dlg.DoModal() != IDOK)
        return;

    CSize sizeNew(dlg.m_nHorzInset, dlg.m_nVertInset);
    if (m_bTVCutoff != dlg.m_bEnable || m_sizeTVCutoff != sizeNew)
    {
        m_bTVCutoff = dlg.m_bEnable;
        m_sizeTVCutoff = sizeNew;
        GetXConView()->InvalidateView();
        SetModifiedFlagEx();
    }
}


/////////////////////////////////////////////////////////////////////////////
/*
CXDisplay* CXConDoc::GetDisplaySelection()
{
    CXDisplay* pDisplay = NULL;
    CXObject* pObject = GetSelection();
    if (pObject)
    {
        if (!pObject->IsKindOf(RUNTIME_CLASS(CXDisplay)))
            CheckMultiSelection(&pObject);

        if (pObject->IsKindOf(RUNTIME_CLASS(CXDisplay)))
            pDisplay = (CXDisplay*)pObject;
    }
    return pDisplay;
}
*/

void CXConDoc::OnUpdateMultiObject(CCmdUI* pCmdUI) 
{
    BOOL bEnable = FALSE;
/*    CXDisplay* pDisplay = GetDisplaySelection();
    if (pDisplay)
    {
        if (pDisplay->IsKindOf(RUNTIME_CLASS(CXSprite)))
        {
            if (m_arDocItems[DOC_IMAGES]->GetSize() > 1)
                bEnable = TRUE;
        }
        else
        {
            // text object
            if (!m_strLanguagePath.IsEmpty() || m_arDocItems[DOC_STRINGS]->GetSize() > 1)
                bEnable = TRUE;
        }

    }*/
    pCmdUI->Enable(bEnable);
}

void CXConDoc::OnMultiObject() 
{
//    CXDisplay* pDisplay = GetDisplaySelection();

    CMultiObjPropDlg dlg;
    /*
    if (pDisplay->IsKindOf(RUNTIME_CLASS(CXSprite)))
        dlg.m_pObjectArray = m_arDocItems[DOC_IMAGES];
    else
    {
        dlg.m_pObjectArray = m_arDocItems[DOC_STRINGS];
        dlg.m_pMapLangIDs = &m_mapLangIDs;
    }
    */

    /*

    CObArray* parDisplay = pDisplay->GetArray();

    CObArray arObject;
    pDisplay->CopyArray(&arObject, parDisplay);
    dlg.m_pSelections = &arObject;
    dlg.m_pDocument = this;
    if (dlg.DoModal() == IDOK)
    {
        AddUndoObject(new CUndoMulti(pDisplay));
        pDisplay->CopyArray(parDisplay, &arObject);
        ((CPageDlg*)GetTabView()->GetPage(PAGES_PAGE))->SetMultiObject(pDisplay);
    }

    pDisplay->DeleteArray(&arObject);*/
}

/////////////////////////////////////////////////////////////////////////////

void CXConDoc::OnUpdateZoomToggle(CCmdUI* pCmdUI) 
{
    CString str;
    str.LoadString(GetXConView()->IsZoomedIn() ? IDS_ZOOM_OUT : IDS_ZOOM_IN);
    pCmdUI->SetText(str);
}

void CXConDoc::OnZoomToggle() 
{
    GetXConView()->OnZoomToggle();
}

/////////////////////////////////////////////////////////////////////////////



FeData::Screen* CXConDoc::GetScreen()
{
    if( m_pScreenFile != NULL )
    {
        return m_pScreenFile->GetScreen();
    }
    else
    {
        return NULL;
    }
}


SelectionList* CXConDoc::GetSelectionList()
{
    return &m_SelectionList;
}


void CXConDoc::OnFileSave()
{
    if( m_pScreenFile != NULL )
    {
        m_pScreenFile->Save();
        SetDirtyFlag( false );
    }
}

void CXConDoc::OnViewZoomIn() 
{
    this->GetXConView()->ZoomIn();
}

void CXConDoc::OnUpdateViewZoomIn(CCmdUI* pCmdUI) 
{
    pCmdUI->Enable( this->GetXConView()->CanZoomIn() );
}

void CXConDoc::OnViewZoomOut() 
{
    this->GetXConView()->ZoomOut();
}

void CXConDoc::OnUpdateViewZoomOut(CCmdUI* pCmdUI) 
{
    pCmdUI->Enable( this->GetXConView()->CanZoomOut() );
}

void CXConDoc::OnViewActualPixels() 
{
    this->GetXConView()->ZoomActualPixels();
}


void CXConDoc::SetupRefresh()
{
    GetTabView()->SetupCheckRebuild();
}


void CXConDoc::Refresh()
{
    if( g_ActionManager.HaveToRebuildTree() )
    {
        GetTabView()->CheckRebuild();
    }

    if( g_ActionManager.HaveToRefreshLayoutView() )
    {
        GetXConView()->Invalidate();
    }

    if( g_ActionManager.HaveToRefreshTreeSelection() )
    {
        GetTabView()->GetPage( PAGES_PAGE, false )->UpdateSelection();
    }
}


bool CXConDoc::AddAction( Action* newAction )
{
    if( newAction == NULL )
    {
        FeData::g_OutputMessage.Add( "CXConDoc::AddAction: newAction is NULL: Probubly out of Memory!",
                                     FeData::ErrorOutputMessage );
        return false;
    }

    if( newAction->IsActionValid() )
    {
        if( newAction->HaveToRebuildTree() )
        {
            SetupRefresh();
        }
        g_ActionManager.Do( newAction );
        SetDirtyFlag( true );
        Refresh();

        return true;
    }
    else
    {
        delete newAction;
        newAction = NULL;

        return false;
    }
}


void CXConDoc::OnEditUndo() 
{
    if( g_ActionManager.HaveToRebuildTreeAfterUndo() )
    {
        SetupRefresh();
    }
    g_ActionManager.Undo();
    SetDirtyFlag( true );
    Refresh();
}

void CXConDoc::OnUpdateEditUndo(CCmdUI* pCmdUI) 
{
    pCmdUI->Enable( g_ActionManager.HaveUndo() );

    CString menuFormat;
    menuFormat.LoadString( IDS_UNDO_STRING );

    CString menuText;
    menuText.Format( menuFormat, g_ActionManager.GetNextUndoType() );

    pCmdUI->SetText( menuText );
    
}

void CXConDoc::OnEditRedo() 
{
    if( g_ActionManager.HaveToRebuildTreeAfterRedo() )
    {
        SetupRefresh();
    }
    g_ActionManager.Redo();
    SetDirtyFlag( true );
    Refresh();
}


void CXConDoc::OnUpdateEditRedo(CCmdUI* pCmdUI) 
{
    pCmdUI->Enable( g_ActionManager.HaveRedo() );

    CString menuFormat;
    menuFormat.LoadString( IDS_REDO_STRING );

    CString menuText;
    menuText.Format( menuFormat, g_ActionManager.GetNextRedoType() );

    pCmdUI->SetText( menuText );
}

void CXConDoc::OnEditDuplicate() 
{
    using namespace FeData;

    Screen* screen = GetScreen();
    if( screen == NULL )
    {
        return;
    }

    CTabView* pView = GetTabView();
    CPageDlg* pageDlg = dynamic_cast<CPageDlg*>( pView->GetPage( PAGES_PAGE, false ) );
    if( pageDlg == NULL )
    {
        g_OutputMessage.Add( "CXConDoc::OnEditDuplicate: Cannot get page Dialog!",
                             DebugOutputMessage );
        return;
    }

    // Find the location to add the drawing element
    NamedElement* selection            = pageDlg->GetSelectedElement();
    NamedElement* selectionParent      = pageDlg->GetSelectedElementParent();
    if( (selection == NULL) && (selectionParent == NULL) )
    {
        g_OutputMessage.Add( "CXConDoc::OnEditDuplicate: Cannot get proper selection!",
                             DebugOutputMessage );
        return;
    }

    PageElement* parent = NULL;
    DrawingElement* drawingElement = NULL;
    int elementIndex = 0;

    if( (drawingElement = dynamic_cast<DrawingElement*>( selection )) != NULL )
    {
        // Is the parent a layer or group?
        Layer* layer = NULL;
        Group* group = NULL;

        if( (layer = dynamic_cast<Layer*>( selectionParent )) != NULL )
        {
            elementIndex = layer->GetDrawingElementIndex( drawingElement );
            parent = layer;
        }
        else if( (group = dynamic_cast<Group*>( selectionParent )) != NULL )
        {
            elementIndex = group->GetDrawingElementIndex( drawingElement );
            parent = group;
        }
        else
        {
            g_OutputMessage.Add( "CXConDoc::OnEditDuplicate: Cannot find a valid parent!",
                                 DebugOutputMessage );
            return;
        }
    }
    else
    {
        g_OutputMessage.Add( "CXConDoc::OnEditDuplicate: Selection is an invalid type!",
                             DebugOutputMessage );
        return;
    }
        

    // Do we have a Sprite
    Sprite* sprite = dynamic_cast<Sprite*>( selection );
    if( sprite != NULL )
    {
        AddAction( new ActionSprite( drawingElement->GetPage(), 
                                     drawingElement,  // Element to duplicate
                                     parent, 
                                     elementIndex,  // nextSibling - Place before this element
                                     ACTION_DRAWINGELEMENT_DUPLICATE ) );
        return;
    }

    // Do we have a MultiSprite
    MultiSprite* multiSprite = dynamic_cast< MultiSprite* >( selection );
    if( multiSprite != NULL )
    {
        AddAction( new ActionMultiSprite( drawingElement->GetPage(), 
                                     drawingElement,  // Element to duplicate
                                     parent, 
                                     elementIndex,  // nextSibling - Place before this element
                                     ACTION_DRAWINGELEMENT_DUPLICATE ) );
        return;
    }

    // Do we have a Text
    Text* text = dynamic_cast<Text*>( selection );
    if( text != NULL )
    {
        AddAction( new ActionText( drawingElement->GetPage(), 
                                   drawingElement,  // Element to duplicate
                                   parent, 
                                   elementIndex,  // nextSibling - Place before this element
                                   ACTION_DRAWINGELEMENT_DUPLICATE ) );
        return;
    }

    // Do we have a MultiText
    MultiText* multiText = dynamic_cast<MultiText*>( selection );
    if( multiText != NULL )
    {
        AddAction( new ActionMultiText( drawingElement->GetPage(), 
                                        drawingElement,  // Element to duplicate
                                        parent, 
                                        elementIndex,  // nextSibling - Place before this element
                                        ACTION_DRAWINGELEMENT_DUPLICATE ) );
        return;
    }

    // Do we have a Polygon
    FeData::Polygon* polygon = dynamic_cast<FeData::Polygon*>( selection );
    if( polygon != NULL )
    {
        AddAction( new ActionPolygon( drawingElement->GetPage(), 
                                      drawingElement,  // Element to duplicate
                                      parent, 
                                      elementIndex,  // nextSibling - Place before this element
                                      NULL, // polygonPoints - Don't need for deletion
                                      0,    // polygonCount - Don't need for deletion 
                                      ACTION_DRAWINGELEMENT_DUPLICATE ) );
        return;
    }
}


void CXConDoc::OnUpdateEditDuplicate(CCmdUI* pCmdUI) 
{
    using namespace FeData;

    CTabView* pView = GetTabView();
    CPageDlg* pageDlg = dynamic_cast<CPageDlg*>( pView->GetPage( PAGES_PAGE, false ) );
    if( pageDlg == NULL )
    {
        g_OutputMessage.Add( "CXConDoc::OnUpdateEditDuplicate: Cannot get page Dialog!",
                             DebugOutputMessage );
        return;
    }

    NamedElement* selection = pageDlg->GetSelectedElement();
    if( dynamic_cast< DrawingElement* >( selection ) != NULL )
    {
        if( dynamic_cast< Group* >( selection ) != NULL )
        {
            // Can duplicate a group
            pCmdUI->Enable( FALSE );
        }
        else
        {
            Page* page = GetSelectedElementPage();
            pCmdUI->Enable( ( page != NULL ) && ( !page->IsReadOnly() ) );
        }
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }

}

//NOTE:  You are required to check for the return value with NULL
//       This is because there might be nothing selected
FeData::Page* CXConDoc::GetSelectedElementPage() 
{
    using namespace FeData;

    Screen* screen = GetScreen();
    if( screen == NULL )
    {
        return NULL;
    }

    CTabView* pView = GetTabView();
    PascalCString pageName;
    CDialog* dialog = pView->GetCurPage();

    if( dynamic_cast<CPageDlg*>( dialog ) != NULL )
    {
        // It's in the overlay dialog
        CPageDlg* pageDlg = dynamic_cast<CPageDlg*>( dialog );
        if( !pageDlg->GetSelectedPageName( pageName ) )
        {
            return NULL;
        }
    }
    else if( dynamic_cast<CResourceDlg*>( dialog ) != NULL )
    {
        // It's in the resource dialog
        CResourceDlg* pageDlg = dynamic_cast<CResourceDlg*>( dialog );
        if( !pageDlg->GetSelectedPageName( pageName ) )
        {
            return NULL;
        }
    }
    else
    {
        return NULL;
    }

    return screen->GetPage( pageName );
}



void CXConDoc::DoProperties()
{
    OnProperties();
}

void CXConDoc::OnCloseDocument() 
{
    if( m_ScreenDirty )
    {
        CString message;
        message.Format( "The screen \"%s\" has changed.\nDo you want to save the screen?",
                        GetScreen()->GetName() );
        int button = GetTabView()->MessageBox( message,
                                               "Save Screen?", 
                                               MB_YESNO );
        if( button == IDYES )
        {
            OnFileSave();
        }
    }

    CDocument::OnCloseDocument();
}


void CXConDoc::SetDirtyFlag( bool setting )
{
    if( m_ScreenDirty == setting )
    {
        return;
    }
    m_ScreenDirty = setting;
    SetWindowTitle();
}


void CXConDoc::SetWindowTitle()
{
    CString strTitle( GetScreen()->GetName() );
    
    int iCutOff = strTitle.Find( FeData::g_GoodSlashChar );
    if( iCutOff < 0 )
    {
        iCutOff = strTitle.Find( FeData::g_BadSlashChar );
    }

    while( iCutOff >= 0 )
    {
        strTitle = strTitle.Mid( iCutOff + 1 );

        iCutOff = strTitle.Find( FeData::g_GoodSlashChar );
        if( iCutOff < 0 )
        {
            iCutOff = strTitle.Find( FeData::g_BadSlashChar );
        }
    }

    if( m_ScreenDirty )
    {
        // add '*'
        strTitle = strTitle + _T(" *");
    }
    SetTitle( strTitle );
}

void CXConDoc::OnAlignBottom() 
{
    using namespace FeData;

    Screen* screen = GetScreen();
    if( screen == NULL )
    {
        return;
    }

    SelectionList* selectionList = GetSelectionList();
    if( (selectionList != NULL) && (selectionList->GetNumberOfElements() > 1) )
    {
        AddAction( new ActionAlign( screen,
                                    selectionList, 
                                    ALIGN_AT_BOTTOM ) );
    }
    
}

void CXConDoc::OnAlignHcenter() 
{
    using namespace FeData;

    Screen* screen = GetScreen();
    if( screen == NULL )
    {
        return;
    }

    SelectionList* selectionList = GetSelectionList();
    if( (selectionList != NULL) && (selectionList->GetNumberOfElements() > 1) )
    {
        AddAction( new ActionAlign( screen,
                                    selectionList, 
                                    ALIGN_AT_HCENTER ) );
    }
    
}

void CXConDoc::OnAlignLeft() 
{
    using namespace FeData;

    Screen* screen = GetScreen();
    if( screen == NULL )
    {
        return;
    }

    SelectionList* selectionList = GetSelectionList();
    if( (selectionList != NULL) && (selectionList->GetNumberOfElements() > 1) )
    {
        AddAction( new ActionAlign( screen,
                                    selectionList, 
                                    ALIGN_AT_LEFT ) );
    }
}

void CXConDoc::OnAlignRight() 
{
    using namespace FeData;

    Screen* screen = GetScreen();
    if( screen == NULL )
    {
        return;
    }

    SelectionList* selectionList = GetSelectionList();
    if( (selectionList != NULL) && (selectionList->GetNumberOfElements() > 1) )
    {
        AddAction( new ActionAlign( screen,
                                    selectionList, 
                                    ALIGN_AT_RIGHT ) );
    }
}

void CXConDoc::OnAlignTop() 
{
    using namespace FeData;

    Screen* screen = GetScreen();
    if( screen == NULL )
    {
        return;
    }

    SelectionList* selectionList = GetSelectionList();
    if( (selectionList != NULL) && (selectionList->GetNumberOfElements() > 1) )
    {
        AddAction( new ActionAlign( screen,
                                    selectionList, 
                                    ALIGN_AT_TOP ) );
    }
}

void CXConDoc::OnAlignVcenter() 
{
    using namespace FeData;

    Screen* screen = GetScreen();
    if( screen == NULL )
    {
        return;
    }

    SelectionList* selectionList = GetSelectionList();
    if( (selectionList != NULL) && (selectionList->GetNumberOfElements() > 1) )
    {
        AddAction( new ActionAlign( screen,
                                    selectionList, 
                                    ALIGN_AT_VCENTER ) );
    }
}


void CXConDoc::OnEditDeselectSelection() 
{
    SelectionList* selectionList = GetSelectionList();
    if( (selectionList != NULL) && (selectionList->GetNumberOfElements() > 0) )
    {
       AddAction( new ActionSelectionChange( GetScreen(),
                                             selectionList, 
                                             NULL,
                                             ACTION_SELECTION_CHANGE_CLEAR ) );
    }
}

void CXConDoc::OnUpdateEditDeselectSelection(CCmdUI* pCmdUI) 
{
    SelectionList* selectionList = GetSelectionList();
    if( (selectionList != NULL) && (selectionList->GetNumberOfElements() > 0) )
    {
        pCmdUI->Enable( TRUE );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}



void CXConDoc::OnEditCopy() 
{
    PascalCString source;
    if( !GetClipboardString( source ) )
    {
        FeData::g_OutputMessage.Add( "CXConDoc::OnEditCopy: Could not get the Clipboard String!",
                                      FeData::DebugOutputMessage );
        return;
    }

    // If we can open the clipboard
    if( !::OpenClipboard(NULL) )
    {
        FeData::g_OutputMessage.Add( "CXConDoc::OnEditCopy: Could not open the clipboard!",
                                     FeData::DebugOutputMessage );
        return;
    }

    HGLOBAL clipbuffer;
    char* buffer;
    ::EmptyClipboard();

    // Get some memory and lock clipboard
    clipbuffer = ::GlobalAlloc( GMEM_DDESHARE, source.Length()+1 );
    buffer = (char*)::GlobalLock( clipbuffer );

    // Save the buffer
    strcpy( buffer, source );
    ::GlobalUnlock( clipbuffer );
    ::SetClipboardData( CF_TEXT, clipbuffer );
    ::CloseClipboard();
}


bool CXConDoc::GetClipboardString( PascalCString& source )
{
    using namespace FeData;

    CTabView* pView = GetTabView();
    CPageDlg* pageDlg = dynamic_cast<CPageDlg*>( pView->GetPage( PAGES_PAGE, FALSE ) );
    if( pageDlg == NULL )
    {
        g_OutputMessage.Add( "CXConDoc::OnUpdateEditCopy: Cannot get page Dialog!",
                             DebugOutputMessage );
        return false;
    }
    
    TokenList tokenList;
    tokenList.Add( g_ClibboardHeader );

    bool toReturn = m_SelectionList.AddToTokenList( tokenList );
    if( toReturn )
    {
        toReturn = tokenList.ToString( source );
    }
    return toReturn;
}


void CXConDoc::OnUpdateEditCopy(CCmdUI* pCmdUI) 
{
    if( m_SelectionList.GetNumberOfElements() > 0 )
    {
        pCmdUI->Enable( TRUE );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}


void CXConDoc::OnEditPaste() 
{
    if (!::OpenClipboard(NULL))
    {
        FeData::g_OutputMessage.Add( "CXConDoc::OnEditPaste: Could not open the clipboard!",
                                     FeData::DebugOutputMessage );
        return;
    }

    HGLOBAL hData = ::GetClipboardData( CF_TEXT );
    char* data = (char*)::GlobalLock( hData );

    PascalCString clipboardData( data );

    ::GlobalUnlock(hData);
    ::CloseClipboard();

    HandlePaste( clipboardData );
}


void CXConDoc::OnUpdateEditPaste(CCmdUI* pCmdUI) 
{
    FeData::Page* page = GetSelectedElementPage();
    if( (page != NULL) && !page->IsReadOnly() )
    {
        pCmdUI->Enable( ::IsClipboardFormatAvailable( CF_TEXT ) );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}


void CXConDoc::HandlePaste( PascalCString& source )
{
    using namespace FeData;

    //g_OutputMessage.Add( source, FunnyOutputMessage );

    TokenList tokenList;
    if( !tokenList.FromString( source ) )
    {
        g_OutputMessage.Add( "CXConDoc::HandlePaste: Cannot make a token list out of clipboard contents",
                             DebugOutputMessage );
        return;
    }

    tokenList.ResetList();

    PascalCString temp;
    if( !tokenList.GetNext( temp ) )
    {
        g_OutputMessage.Add( "CXConDoc::HandlePaste: Token list get next failed.",
                             DebugOutputMessage );
        return;
    }

    if( temp != g_ClibboardHeader )
    {
        g_OutputMessage.Add( "CXConDoc::HandlePaste: Invalid clipboard header.",
                             DebugOutputMessage );
        return;
    }
    

    Screen* screen = GetScreen();
    if( screen == NULL )
    {
        return;
    }

    CTabView* pView = GetTabView();
    CPageDlg* pageDlg = dynamic_cast<CPageDlg*>( pView->GetPage( PAGES_PAGE, false ) );
    if( pageDlg == NULL )
    {
        g_OutputMessage.Add( "CXConDoc::InsertDrawingElement: Cannot get page Dialog!",
                             DebugOutputMessage );
        return;
    }

    PascalCString pageName;
    if( !pageDlg->GetSelectedPageName( pageName ) )
    {
        g_OutputMessage.Add( "CXConDoc::InsertDrawingElement: Cannot get selected page name!",
                             DebugOutputMessage );
        return;
    }

    Page* page = screen->GetPage( pageName );
    if( page == NULL )
    {
        g_OutputMessage.Add( "CXConDoc::InsertDrawingElement: Cannot get page from the screen!",
                             DebugOutputMessage );
        return;
    }



    // Find the location to add the drawing element
    NamedElement* selection = pageDlg->GetSelectedElement();
    NamedElement* selectionParent = pageDlg->GetSelectedElementParent();
    
    PageElement* parent = NULL;
    int addElementAtIndex = 0;

    Layer* layer = NULL;
    Group* group = NULL;
    DrawingElement* drawingElement = NULL;

    if( (selection != NULL) &&
        (selectionParent != NULL) &&
        (selection != page) ) 
    {
        // Is the selection a layer or group?
        if( (layer = dynamic_cast<Layer*>( selection )) != NULL )
        {
            parent = layer;
        }
        else if( (group = dynamic_cast<Group*>( selection )) != NULL )
        {
            parent = group;
        }
        else if( (drawingElement = dynamic_cast<DrawingElement*>( selection )) != NULL )
        {
            // Is the parent a layer or group?
            if( (layer = dynamic_cast<Layer*>( selectionParent )) != NULL )
            {
                parent = layer;
                addElementAtIndex = layer->GetDrawingElementIndex( drawingElement );
            }
            else if( (group = dynamic_cast<Group*>( selectionParent )) != NULL )
            {
                parent = group;
                addElementAtIndex = group->GetDrawingElementIndex( drawingElement );
            }
        }
    }
        
    // Do we still have to pace the item?
    if( parent == NULL )
    {
        g_OutputMessage.Add( "CXConDoc::InsertDrawingElement: Cannot get parent!",
                             DebugOutputMessage );
        return;
    }

    // Do the action
    AddAction( new ActionAddFromDescription( screen, 
                                             parent, 
                                             addElementAtIndex,
                                             tokenList,
                                             GetSelectionList() ) );
}


void CXConDoc::OnEditCut() 
{
    OnEditCopy();
    OnDelete();
}


void CXConDoc::OnUpdateEditCut(CCmdUI* pCmdUI) 
{
    if( m_SelectionList.GetNumberOfElements() > 0 )
    {
        pCmdUI->Enable( TRUE );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}


void CXConDoc::OnRefreshAll() 
{
    using namespace FeData;

    Screen* screen = GetScreen();
    if( screen == NULL )
    {
        return;
    }

    CTabView* pView = GetTabView();
    CPageDlg* pageDlg = dynamic_cast<CPageDlg*>( pView->GetPage( PAGES_PAGE, false ) );
    if( pageDlg == NULL )
    {
        g_OutputMessage.Add( "CXConDoc::OnRefreshAll: Cannot get page Dialog!",
                             DebugOutputMessage );
        return;
    }

    PascalCString pageName;
    if( !pageDlg->GetSelectedPageName( pageName ) )
    {
        g_OutputMessage.Add( "CXConDoc::OnRefreshAll: Cannot get selected page name!",
                             DebugOutputMessage );
        return;
    }

    Page* page = screen->GetPage( pageName );
    if( page == NULL )
    {
        g_OutputMessage.Add( "CXConDoc::OnRefreshAll: Cannot get page from the screen!",
                             DebugOutputMessage );
        return;
    }

    ResourceManager* resMan = page->GetResourceManager();
    if( resMan == NULL )
    {
        return;
    }

    int i;
    for( i = 0; i < resMan->GetNumberOfImages(); i++ )
    {
        Image* image = resMan->GetImageWithoutCounting( i );
        if( image != NULL )
        {
            image->GetResourceFile()->Reload();
        }
    }

    for( i = 0; i < resMan->GetNumberOfTextStyles(); i++ )
    {
        TextStyle* textStyle = resMan->GetTextStyleWithoutCounting( i );
        if( textStyle != NULL )
        {
            textStyle->GetResourceFile()->Reload();
        }
    }

    for( i = 0; i < resMan->GetNumberOfTextBibles(); i++ )
    {
        TextBible* textBible = resMan->GetTextBibleWithoutCounting( i );
        if( textBible != NULL )
        {
            textBible->GetResourceFile()->Reload();
        }
    }

    GetXConView()->InvalidateView();
}

void CXConDoc::OnPreviewerPs2() 
{
   SHOWERROR( "Function Disabled.  Go to \"Edit->Settings\" and change the viewer to PS2" );
   //App()->ReloadViewer();
}

void CXConDoc::OnFileSaveall() 
{
    (App())->OnFileSaveProject();
    CXConDoc* original = App()->GetActiveDocument();
    CXConDoc* current;
    do
    {
        dynamic_cast<CMDIFrameWnd *>((App())->GetMainWnd())->MDINext();
        current = App()->GetActiveDocument();
        current->OnFileSave();
    } while (current != original);
    //(App())->SaveAllModified(); This can't be used because it also closes all of the windows.
    
}

void CXConDoc::OnPreviewPc() 
{
   App()->ReloadViewer();
}

const char* CXConDoc::GetScreenName()
{
   char drive[ 80 ];
   char dir[ 80 ];
   char* fname = new char[80];
   char ext[ 80 ];
   ::_splitpath( m_pScreenFile->GetScreen()->GetName(), drive, dir, fname, ext );

   return fname;
}
