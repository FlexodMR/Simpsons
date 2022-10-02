/////////////////////////////////////////////////////////////////////////////
// XConDocIns.cpp : implementation of the CXConDoc class insert handlers

#pragma warning( disable : 4786 )
#include "StdAfx.h"
#include "XCon.h"
#include "MainFrm.h"
#include "XConDoc.h"
#include "XConView.h"
#include "TabView.h"
#include "PageDlg.h"
#include "ResourceDlg.h"
#include "DlgInsert.h"


#include "GUI\Undo\ActionGroup.h"
#include "GUI\Undo\ActionLayer.h"
#include "GUI\Undo\ActionMovie.h"
#include "GUI\Undo\ActionMultiSprite.h"
#include "GUI\Undo\ActionMultiText.h"
#include "GUI\Undo\ActionPure3dObject.h"
#include "GUI\Undo\ActionPage.h"
#include "GUI\Undo\ActionPolygon.h"
#include "GUI\Undo\ActionSprite.h"
#include "GUI\Undo\ActionText.h"

#include "Strings\PCString.h"
#include "FeData\Helpers\FileName.h"
#include "FeData\Helpers\NameManager.h"
#include "FeData\Helpers\OutputMessage.h"
#include "FeData\Helpers\ResourceManager.h"
#include "FeData\NamedElements\Group.h"
#include "FeData\NamedElements\Layer.h"
#include "FeData\NamedElements\MultiText.h"
#include "FeData\NamedElements\Page.h"
#include "FeData\NamedElements\Polygon.h"
#include "FeData\NamedElements\Project.h"
#include "FeData\NamedElements\Screen.h"
#include "FeData\NamedElements\Sprite.h"
#include "FeData\NamedElements\Text.h"
#include "FeData\Resources\Image.h"
#include "FeData\Resources\Resource.h"
#include "FeData\Resources\TextBible.h"
#include "FeData\Resources\TextStyle.h"
#include "FeData\ResourceFiles\PageFile.h"
#include "FeData\ResourceFiles\ImageFile.h"
#include "FeData\Factories\BaseFactory.h"


#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////

BOOL CXConDoc::CheckIfOverlaySelected(BOOL bIsVisible /*=FALSE*/)
{
    BOOL bReturn = FALSE;
    /*CTabView* pTabView = GetTabView();
    if (pTabView->GetSelectedPage() == PAGES_PAGE)
    {
        CXOverlay* pOverlay = ((CPageDlg*)pTabView->GetCurPage())->GetOverlaySelected();
        if (pOverlay)
        {
            if (bIsVisible)
                bReturn = pOverlay->IsVisible();
            else
                bReturn = TRUE;
        }
    }*/
    return bReturn;
}

BOOL CXConDoc::CheckIfLayerSelected(BOOL bIsVisible /*=FALSE*/)
{
    BOOL bReturn = FALSE;
/*    CTabView* pTabView = GetTabView();
    if (pTabView->GetSelectedPage() == PAGES_PAGE)
    {
        CXLayer* pLayer = ((CPageDlg*)pTabView->GetCurPage())->GetLayerSelected();
        if (pLayer)
        {
            if (bIsVisible)
                bReturn = pLayer->IsVisible();
            else
                bReturn = TRUE;
        }
    }*/
    return bReturn;
}

BOOL CXConDoc::CheckIfGroupSelected()
{
    BOOL bReturn = FALSE;
    CTabView* pTabView = GetTabView();
    if (pTabView->GetSelectedPage() == PAGES_PAGE)
    {
        /*
        CXGroup* pGroup = ((CPageDlg*)pTabView->GetCurPage())->GetGroupSelected();
        if (pGroup)
        {
            bReturn = TRUE;
        }*/
    }
    return bReturn;
}

/////////////////////////////////////////////////////////////////////////////

void CXConDoc::OnInsertLayer() 
{
    using namespace FeData;

    Screen* screen = GetScreen();
    if( screen == NULL )
    {
        return;
    }

    CTabView* pView = GetTabView();
    CPageDlg* pageDlg = dynamic_cast<CPageDlg*>( pView->GetPage(PAGES_PAGE) );
    if( pageDlg == NULL )
    {
        g_OutputMessage.Add( "CXConDoc::OnUpdateInsertLayer: Cannot get page Dialog!",
                             DebugOutputMessage );
        return;
    }

    PascalCString pageName;
    if( !pageDlg->GetSelectedPageName( pageName ) )
    {
        g_OutputMessage.Add( "CXConDoc::OnUpdateInsertLayer: Cannot get selected page name!",
                             DebugOutputMessage );
        return;
    }

    Page* page = screen->GetPage( pageName );
    if( page == NULL )
    {
        g_OutputMessage.Add( "CXConDoc::OnUpdateInsertLayer: Cannot get page from the screen!",
                             DebugOutputMessage );
        return;
    }

    // Add the layer to the page
    AddAction( new ActionLayer( page, 
                                NULL,   // element - Don't need for add
                                0,
                                ACTION_LAYER_ADD ) );

    pageDlg->ExpandSelectedElement();
}


void CXConDoc::OnInsertGroup() 
{
    InsertDrawingElement( DRAWING_ELEMENT_GROUP );
}


/////////////////////////////////////////////////////////////////////////////

void CXConDoc::InsertResource( ResourceTypeEnum resourceType, UINT titleId, UINT filterId )
{
    using namespace FeData;

    Screen* screen = GetScreen();
    if( screen == NULL )
    {
        return;
    }

    Project* project = screen->GetProject();
    if( project == NULL )
    {
        return;
    }

    PascalCString resourcePath = project->GetRootPath();
    resourcePath += project->GetResourcePath();

    ::SetCurrentDirectory( resourcePath );


    CString strFilter;
    strFilter.LoadString( filterId );
    strFilter += _T("|");
    CString strAllFilter;
    strAllFilter.LoadString( IDS_ALL_FILTER );
    strFilter += strAllFilter;
    strFilter += _T("||");

    CFileDialog dlg(TRUE, NULL, NULL, OFN_HIDEREADONLY|OFN_FILEMUSTEXIST|OFN_ALLOWMULTISELECT, strFilter);

    CString strTitle;
    strTitle.LoadString( titleId );
    dlg.m_ofn.lpstrTitle = strTitle;

    if (dlg.DoModal() != IDOK)
    {
        return;
    }

    TCHAR szPath[_MAX_PATH];
    ::GetCurrentDirectory(_MAX_PATH, szPath);

    // Convert the current directory into a PascalCString and add the ending slash
    PascalCString currentDirectory( szPath );
    currentDirectory.Replace( g_BadSlashString, g_GoodSlashString );
    currentDirectory += g_GoodSlashString;

    if( _tcsnicmp(currentDirectory, resourcePath, resourcePath.Length() ) )  // -1 to remove the ending slash
    {
        g_OutputMessage.Add( "The chosen resource(s) do not fall under the resource path set in the project file.  Resource(s) not added.",
                             WarningOutputMessage );
        return;
    }
    
    CTabView* pView = GetTabView();
    CResourceDlg* resDlg = dynamic_cast<CResourceDlg*>( pView->GetPage(RESOURCE_PAGE) );
    if( resDlg == NULL )
    {
        g_OutputMessage.Add( "CXConDoc::InsertResource:Cannot get Resource Dialog!",
                             DebugOutputMessage );
        return;
    }

    PascalCString pageName;
    if( !resDlg->GetSelectedPageName( pageName ) )
    {
        g_OutputMessage.Add( "CXConDoc::InsertResource:Cannot get selected page name!",
                             DebugOutputMessage );
        return;
    }

    Page* page = screen->GetPage( pageName );
    if( page == NULL )
    {
        g_OutputMessage.Add( "CXConDoc::InsertResource:Cannot get page from the screen!",
                             DebugOutputMessage );
        return;
    }

    ResourceManager* resMan = page->GetResourceManager();
    if( resMan == NULL )
    {
        g_OutputMessage.Add( "CXConDoc::InsertResource:Cannot get Resource Manager!",
                             DebugOutputMessage );
        return;
    }


    bool resourceAdded = false;
    PascalCString fullFileName;
    POSITION pos = dlg.GetStartPosition();
    while( pos )
    {
        fullFileName = dlg.GetNextPathName(pos);
        char* fileNamePointer = fullFileName;

        PascalCString relativeFileName( (char*)(fileNamePointer + resourcePath.Length()) );

        // Make the default resource name
        char* relativeFileNamePointer = relativeFileName;
        int startOfDefaultName = 0;
        int endOfDefaultName = relativeFileName.Length() - 1;
        
        // Find the end index
        int currentIndex = relativeFileName.Length() - 1;
        while( (currentIndex > 0) &&
               (relativeFileNamePointer[ currentIndex ] != '\\') )
        {
            currentIndex--;
        }

        if( relativeFileNamePointer[ currentIndex ] == '\\' )
        {
            startOfDefaultName = currentIndex + 1;
        }

        // Find start index
        currentIndex = relativeFileName.Length() - 1;
        while( (currentIndex > startOfDefaultName) &&
               (relativeFileNamePointer[ currentIndex ] != '.') )
        {
            currentIndex--;
        }

        if( relativeFileNamePointer[ currentIndex ] == '.' )
        {
            endOfDefaultName = currentIndex;
        }

        PascalCString defaultName = relativeFileName.SubString(startOfDefaultName, endOfDefaultName - startOfDefaultName );
        bool validOnPs2 =  FileName::IsCompliantPS2( relativeFileName );
        if( validOnPs2 == false )
        {
            char output[ 256 ] = "";
            sprintf( output, "CXConDoc::InsertResource: Not a valid PS2 filename \"%s\"", relativeFileName );
            g_OutputMessage.Add( output, ErrorOutputMessage );
        }

        FileName fileName;
        //fileName.Set( fullFileName );
        fileName.Set( relativeFileName );

        NameManager nameManager;            //IAN IMPROVE: this should not be needed - members should be static

        switch( resourceType )
        {
            case RESOURCE_IMAGE:
            {
                nameManager.MakeSureImageNameIsUnique( defaultName, page );

                if( !resMan->AddImage( defaultName, fileName, page->GetProject() ) )
                {
                    // Resource already exists or we are out of memory.
                    continue;
                }
                resourceAdded = true;
                break;
            }

            case RESOURCE_MOVIECLIP:
            {
                nameManager.MakeSureMovieClipNameIsUnique( defaultName, page );

                if( !resMan->AddMovieClip( defaultName, fileName, page->GetProject() ) )
                {
                    // Resource already exists or we are out of memory.
                    continue;
                }
                resourceAdded = true;
                break;
            }

            case RESOURCE_PURE3DFILE:
            {
                nameManager.MakeSurePure3dFileNameIsUnique( defaultName, page );
                PascalCString blankName = "";

                if( !resMan->AddPure3dFile( defaultName, blankName, blankName, blankName, fileName, page->GetProject() ) )
                {
                    // Resource already exists or we are out of memory.
                    continue;
                }
                resourceAdded = true;
                break;
            }

            case RESOURCE_TEXT_BIBLE:
            {
                nameManager.MakeSureTextBibleNameIsUnique( defaultName, page );

                if( !resMan->AddTextBible( defaultName, fileName, page->GetProject() ) )
                {
                    // Resource already exists or we are out of memory.
                    continue;
                }
                resourceAdded = true;
                break;
            }

            case RESOURCE_TEXT_STYLE:
            {
                nameManager.MakeSureTextStyleNameIsUnique( defaultName, page );

                if( !resMan->AddTextStyle( defaultName, fileName, page->GetProject() ) )
                {
                    // Resource already exists or we are out of memory.
                    continue;
                }
                resourceAdded = true;
                break;
            }

            default:
            {
                g_OutputMessage.Add( "CXConDoc::InsertResource:Invalid resource type!",
                                     DebugOutputMessage );
                break;
            }

        }
    }

    if( resourceAdded )
    {
        resDlg->SetupRebuildTree( this );
        resDlg->RebuildTree( this );

        page->IncrementChangeNumber();
    }
}




void CXConDoc::OnInsertImage() 
{
    InsertResource( RESOURCE_IMAGE, IDS_IMAGE_TITLE, IDS_IMAGE_FILTER );
}

void CXConDoc::OnInsertMovieClip() 
{
    InsertResource( RESOURCE_MOVIECLIP, IDS_MOVIECLIP_TITLE, IDS_MOVIECLIP_FILTER );
}

void CXConDoc::OnInsertPure3dFile() 
{
    InsertResource( RESOURCE_PURE3DFILE, IDS_PURE3DFILE_TITLE, IDS_PURE3DFILE_FILTER );
}

void CXConDoc::OnInsertTextBible() 
{
    InsertResource( RESOURCE_TEXT_BIBLE, IDS_TEXT_BIBLE_TITLE, IDS_TEXT_BIBLE_FILTER );
}


void CXConDoc::OnInsertTextStyle() 
{
    InsertResource( RESOURCE_TEXT_STYLE, IDS_TEXT_STYLE_TITLE, IDS_TEXT_STYLE_FILTER );
}



void CXConDoc::OnInsertFont() 
{
}


/////////////////////////////////////////////////////////////////////////////

void CXConDoc::OnUpdateInsertCursor(CCmdUI* pCmdUI) 
{
    FeData::Page* page = GetSelectedElementPage();
    if( page != NULL )
    {
        pCmdUI->Enable( !page->IsReadOnly() && m_nPlatform == PLATFORM_PC );
    }
}

void CXConDoc::OnInsertCursor() 
{
}

/////////////////////////////////////////////////////////////////////////////

void CXConDoc::OnInsertString() 
{
}

/////////////////////////////////////////////////////////////////////////////

void CXConDoc::OnUpdateInsertSprite(CCmdUI* pCmdUI) 
{
    FeData::Page* page = GetSelectedElementPage();
    if( page != NULL )
    {
        pCmdUI->Enable( !page->IsReadOnly() );
    }
}


void CXConDoc::OnUpdateInsertLayer(CCmdUI* pCmdUI) 
{
    FeData::Page* page = GetSelectedElementPage();
    if( page != NULL )
    {
        pCmdUI->Enable( !page->IsReadOnly() );
    }
}

void CXConDoc::OnUpdateInsertGroup(CCmdUI* pCmdUI) 
{
    FeData::Page* page = GetSelectedElementPage();
    if( page != NULL )
    {
        pCmdUI->Enable( !page->IsReadOnly() );
    }
}




void CXConDoc::InsertDrawingElement( DrawingElementsEnum drawingElementType ) 
{
    using namespace FeData;

    Screen* screen = GetScreen();
    if( screen == NULL )
    {
        return;
    }

    CTabView* pView = GetTabView();
    CPageDlg* pageDlg = dynamic_cast<CPageDlg*>( pView->GetPage(PAGES_PAGE) );
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
 //   DrawingElement* nextSibling = NULL;
    int addAt = 0;

    Layer* layer = NULL;
    Group* group = NULL;
    DrawingElement* drawingElement = NULL;

    bool placeAtTop = false;

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
           // nextSibling = drawingElement;

            // Is the parent a layer or group?
            if( (layer = dynamic_cast<Layer*>( selectionParent )) != NULL )
            {
                addAt = layer->GetDrawingElementIndex( drawingElement );
                parent = layer;
            }
            else if( (group = dynamic_cast<Group*>( selectionParent )) != NULL )
            {
                addAt = group->GetDrawingElementIndex( drawingElement );
                parent = group;
            }
        }
    }
        
    // Do we still have to pace the item?
    if( parent == NULL )
    {
        parent = page->GetLayer( 0 );
        if( parent == NULL )
        {
            return;
        }
    }

    // Add the element
    switch( drawingElementType )
    {
        case DRAWING_ELEMENT_SPRITE:
        {
            AddAction( new ActionSprite( page, 
                                         NULL,   // element - Don't need for add
                                         parent, 
                                         addAt,
                                         ACTION_DRAWINGELEMENT_ADD ) );
            break;
        }

        case DRAWING_ELEMENT_MULTI_SPRITE:
        {
            AddAction( new ActionMultiSprite( 
                                page, 
                                NULL,   // element - Don't need for add
                                parent, 
                                addAt,
                                ACTION_DRAWINGELEMENT_ADD ) );
            break;
        }

        case DRAWING_ELEMENT_TEXT:
        {
            AddAction( new ActionText( page, 
                                       NULL,   // element - Don't need for add
                                       parent, 
                                       addAt,
                                       ACTION_DRAWINGELEMENT_ADD ) );
            break;
        }

        case DRAWING_ELEMENT_MULTI_TEXT:
        {
            AddAction( new ActionMultiText( page, 
                                            NULL,   // element - Don't need for add
                                            parent, 
                                            addAt,
                                            ACTION_DRAWINGELEMENT_ADD ) );
            break;
        }
        
        case DRAWING_ELEMENT_GROUP:
        {
            AddAction( new ActionGroup( page, 
                                        NULL,   // element - Don't need for add
                                        parent, 
                                        addAt,
                                        ACTION_DRAWINGELEMENT_ADD ) );
            break;
        }

        case DRAWING_ELEMENT_POLYGON:
        {
            AddAction( new ActionPolygon( page, 
                                          NULL,   // element - Don't need for add
                                          parent, 
                                          addAt,
                                          m_PolygonPoints,
                                          m_PolygonCount,
                                          ACTION_DRAWINGELEMENT_ADD ) );
            break;
        }

        case DRAWING_ELEMENT_MOVIE:
        {
            AddAction( new ActionMovie(     page, 
                                            NULL,   // element - Don't need for add
                                            parent, 
                                            addAt,
                                            ACTION_DRAWINGELEMENT_ADD ) );
            break;
        }

        case DRAWING_ELEMENT_PURE3DOBJECT:
        {
            AddAction( new ActionPure3dObject(     page, 
                                            NULL,   // element - Don't need for add
                                            parent, 
                                            addAt,
                                            ACTION_DRAWINGELEMENT_ADD ) );
            break;
        }

        default:
        {
            g_OutputMessage.Add( "CXConDoc::InsertDrawingElement: Invalid drawing element type!",
                                  DebugOutputMessage );
            return;
        }
    }

    // Try and expand the selected element
    pageDlg->ExpandSelectedElement();
}


void CXConDoc::OnInsertSprite() 
{
   InsertDrawingElement( DRAWING_ELEMENT_SPRITE );
}

/////////////////////////////////////////////////////////////////////////////

void CXConDoc::OnUpdateInsertText(CCmdUI* pCmdUI) 
{
    FeData::Page* page = GetSelectedElementPage();
    if( page != NULL )
    {
        pCmdUI->Enable( !page->IsReadOnly() );
    }
}

void CXConDoc::OnInsertText() 
{
    InsertDrawingElement( DRAWING_ELEMENT_TEXT );
}

/////////////////////////////////////////////////////////////////////////////

void CXConDoc::OnUpdateInsertOverlayObj(CCmdUI* pCmdUI) 
{
    FeData::Page* page = GetSelectedElementPage();
    if( page != NULL )
    {
        pCmdUI->Enable( !page->IsReadOnly() && CheckIfLayerSelected(TRUE) );
    }
}


void CXConDoc::OnUpdateInsertPolygon(CCmdUI* pCmdUI) 
{
    FeData::Page* page = GetSelectedElementPage();
    if( page != NULL )
    {
        pCmdUI->Enable( !page->IsReadOnly() );
    }
}


void CXConDoc::OnInsertClip() 
{
    CXConView* pView = GetXConView();
    AppMainWnd()->MDIGetActive()->SetActiveView(pView);
    pView->InsertClipRegion();
}

void CXConDoc::InsertClipRegion(const CRect& rect)
{
}

/////////////////////////////////////////////////////////////////////////////

void CXConDoc::OnInsertPoly() 
{
    // display poly menu near toolbar button
    CMainFrame* pMainFrame = AppMainWnd();
    CToolBar& toolbar = pMainFrame->GetToolBar();
    
    CRect rect;
    toolbar.GetItemRect(toolbar.CommandToIndex(ID_INSERT_POLY), rect);
    rect.top += rect.Height();
    toolbar.ClientToScreen(rect);

    CMenu menu;
    if (menu.LoadMenu(IDR_OVERLAY))
    {
        CMenu* pPopup = menu.GetSubMenu(4);
        pPopup->TrackPopupMenu(TPM_LEFTALIGN|TPM_RIGHTBUTTON, rect.left, rect.top, pMainFrame);
    }
}

void CXConDoc::OnInsertLine() 
{
}

void CXConDoc::OnInsertTriangle() 
{
    m_PolygonPoints = NULL;
    m_PolygonCount = 0;

    CXConView* pView = GetXConView();
    AppMainWnd()->MDIGetActive()->SetActiveView(pView);
    pView->InsertPrimitive(3);
}

void CXConDoc::OnInsertQuad() 
{
    m_PolygonPoints = NULL;
    m_PolygonCount = 0;

    CXConView* pView = GetXConView();
    AppMainWnd()->MDIGetActive()->SetActiveView(pView);
    pView->InsertPrimitive(4);
}

void CXConDoc::InsertPrimitive(CPoint* pPoints, int nCount)
{
    m_PolygonPoints = pPoints;
    m_PolygonCount = nCount;

    // convert the points
    for( int i = 0; i < m_PolygonCount; i++ )
    {
        m_PolygonPoints[i].y = GetResolution().cy - m_PolygonPoints[i].y;
    }

    InsertDrawingElement( DRAWING_ELEMENT_POLYGON );
}

/////////////////////////////////////////////////////////////////////////////

BOOL CXConDoc::BrowseForFolder(CString& strPath, UINT nIDTitle)
{
    TCHAR szPath[_MAX_PATH];

    CString strTitle;
    strTitle.LoadString(nIDTitle);

    BROWSEINFO bi;
    memset(&bi, 0, sizeof(bi));
    bi.hwndOwner = *AfxGetMainWnd();
    bi.pszDisplayName = szPath;
    bi.lpszTitle = strTitle;
    bi.ulFlags = BIF_RETURNONLYFSDIRS;
    LPITEMIDLIST pidl = ::SHBrowseForFolder(&bi);
    if (!pidl)
        return FALSE;

    ::SHGetPathFromIDList(pidl, szPath);
    strPath = szPath;
    
    IMalloc* pMalloc;
    ::SHGetMalloc(&pMalloc);
    pMalloc->Free(pidl);
    return TRUE;
}

BOOL CXConDoc::BrowseForFile(CString& strPathName, DOCARRAYTYPE nType, UINT nTitle, UINT nFilter, CWnd* pParent)
{
    CDirectoryMgr dmg(strPathName.IsEmpty() ? m_strResPaths[nType] : m_strResourcePath);

    CString strFilter;
    strFilter.LoadString(nFilter);
    strFilter += _T("|");
    CString strAllFilter;
    strAllFilter.LoadString(IDS_ALL_FILTER);
    strFilter += strAllFilter;
    strFilter += _T("||");

    CFileDialog dlg(TRUE, NULL, strPathName, OFN_HIDEREADONLY|OFN_FILEMUSTEXIST, strFilter, pParent);

    CString strTitle;
    strTitle.LoadString(nTitle);
    dlg.m_ofn.lpstrTitle = strTitle;

    if (dlg.DoModal() != IDOK)
        return FALSE;

    TCHAR szPath[_MAX_PATH];
    ::GetCurrentDirectory(_MAX_PATH, szPath);

    if (_tcsnicmp(szPath, m_strResourcePath, m_strResourcePath.GetLength()))
    {
        AfxMessageBox(IDP_INVALID_FOLDER);
        return FALSE;
    }

    CString strPathNew = dlg.GetPathName();
    strPathName.Format(_T(".%s"), strPathNew.Right(strPathNew.GetLength() - m_strResourcePath.GetLength()));
    return TRUE;
}

/////////////////////////////////////////////////////////////////////////////

BOOL CXConDoc::FindNewRootPath()
{
    BOOL bReturn = FALSE;
    CString strPath;
    if (BrowseForFolder(strPath, IDS_BROWSE_TITLE))
    {
        m_strResourcePath = strPath;
        bReturn = ::SetCurrentDirectory(m_strResourcePath);
    }

    if (!bReturn)
        AfxMessageBox(IDP_FAILED_TO_LOAD_FILE);
    return bReturn;
}

void CXConDoc::SetNewRootPath(LPTSTR pszNewPath)
{/*
    // find common part of paths
    CString strPath(m_strResourcePath);
    strPath.MakeLower();
    _tcslwr(pszNewPath);
    int nLen = strPath.GetLength();
    for (int i = 0; i < nLen; i++)
    {
        if (strPath[i] != pszNewPath[i])
            break;
    }

    // locate '\' before index found above
    for (int j = i; j >= 0; j--)
    {
        if (strPath[j] == _T('\\'))
            break;
    }

    CString strAdd = m_strResourcePath.Right(nLen - j - 1) + CString(_T('\\'));
    m_strResourcePath.ReleaseBuffer(j);

    // go through all resource objects and add the new folder(s)
    for (i = 0; i < NUM_RES_ITEMS; i++)
    {
        if (i == DOC_STRINGS)
            continue;

        CXObjectArray* pArray = m_arDocItems[i];
        int nSize = pArray->GetSize();
        for (j = 0; j < nSize; j++)
        {
            ((CXPathObject*)pArray->GetAt(j))->AddToPath(strAdd);
        }
    }*/
}

/////////////////////////////////////////////////////////////////////////////

void CXConDoc::OnInsertNewPage() 
{
    using namespace FeData;

    if( m_pScreenFile == NULL )  
    {
        return;
    }

    Screen* pScreen = GetScreen();
    Project* pProject = pScreen->GetProject();

    // Find the page path
    PascalCString pagePath = pProject->GetRootPath();
    pagePath += pProject->GetPagePath();

    ::SetCurrentDirectory( pagePath );

    static char BASED_CODE szFilter[] = "Page Files (*.pag)|*.pag|All Files (*.*)|*.*||";
    CFileDialog fileDialog( FALSE, ".pag", "NewPage.pag", OFN_HIDEREADONLY|OFN_FILEMUSTEXIST|OFN_ALLOWMULTISELECT, szFilter );

    if( fileDialog.DoModal() == IDOK )
    {
        CString ext = fileDialog.GetFileExt();
//        if( ext.CompareNoCase( "pag" ) == 0 )     //no need to force a .pag extension
        {
            // Get the current directory
            TCHAR szPath[_MAX_PATH];
            ::GetCurrentDirectory(_MAX_PATH, szPath);

            // Convert the current directory into a PascalCString and add the ending slash
            PascalCString currentDirectory( szPath );
            currentDirectory.Replace( g_BadSlashString, g_GoodSlashString );
            currentDirectory += g_GoodSlashString;

            // Make sure the current directory falls within the pages directory
            if( _tcsnicmp(currentDirectory, pagePath, pagePath.Length()) )
            {
                g_OutputMessage.Add( "The chosen page file does not fall under the /page path set in the project file.  Page file not created.",
                                     WarningOutputMessage );
                return;
            }


            // Get the relative file name
            char* currentDirectoryPtr = currentDirectory;
            PascalCString relativeFileNameString = (char*)(currentDirectoryPtr + pagePath.Length());
            relativeFileNameString += fileDialog.GetFileTitle() + ".pag";//don't want to force .pag to be added
           
            FileName relativeFileName;
            relativeFileName.Set( relativeFileNameString );

            // Get the full path name
            PascalCString fullFileNameString = pagePath;
            fullFileNameString += relativeFileNameString;

            //see if the filename is valid
            bool validNameOnPs2 = FileName::IsCompliantPS2( relativeFileNameString );
            if( validNameOnPs2 == false )
            {
                char output[ 256 ] = "";
                sprintf( output, "CXconDoc::OnInsertNewPage: Page name is not valid on PS2: \"%s\"", relativeFileNameString );
                g_OutputMessage.Add( output, ErrorOutputMessage );
            }

            // See if the file exists
            if( ::GetFileAttributes( fullFileNameString ) != 0xFFFFFFFF )
            {
                g_OutputMessage.Add( "The chosen page file already exists.  The existing file will be used.",
                                      WarningOutputMessage );
            }
            else
            {
                // Create a temporary Page file
                FileName fullFileName;
                fullFileName.Set( fullFileNameString );
                            
                BaseFactory* objectFactory = pProject->GetObjectFactory();
                PageFile* pageFile = objectFactory->NewPageFile( fullFileName );
                if( pageFile == NULL )
                {
                    g_OutputMessage.Add( "CXConDoc::OnInsertNewPage: Out of Memory!",
                                         ErrorOutputMessage );
                    return;
                }


                // Create the blank file
                if( !pageFile->Create( pProject ) )
                {
                    return;
                }
                delete pageFile;
            }


            // Add the page to the screen
            PascalCString pageName( fileDialog.GetFileTitle() );
            if( InsertPage( fullFileNameString, pageName ) )
            {
                RebuildAllTrees();
            }
        }
    }
}


void CXConDoc::OnInsertExistingPage() 
{
    using namespace FeData;

    if( m_pScreenFile == NULL )
    {
        return;
    }

    Screen* pScreen = GetScreen();
    Project* pProject = pScreen->GetProject();

    // Find the page path
    PascalCString pagePath = pProject->GetRootPath();
    pagePath += pProject->GetPagePath();
  
    CString strPath = CString( pProject->GetRootPath() ) + CString( pProject->GetPagePath() );
    ::SetCurrentDirectory( strPath );

    static char BASED_CODE szFilter[] = "Page Files (*.pag)|*.pag|All Files (*.*)|*.*||";
    CFileDialog fileDialog( TRUE, ".pag", NULL, OFN_HIDEREADONLY | OFN_ALLOWMULTISELECT , szFilter );

    if( fileDialog.DoModal() == IDOK )
    {
        bool changeMade = false;
        POSITION pos = fileDialog.GetStartPosition();
        while( pos )
        {
            CString strFileName = fileDialog.GetNextPathName( pos );
            CString ext = strFileName.Right(3);
            if( ext.CompareNoCase( "pag" ) == 0 )
            {
                int iCutOff;
                while ( (iCutOff = strFileName.Find( '\\' )) >= 0)
                {
                    strFileName = strFileName.Mid(iCutOff + 1);
                }

                //see if the filename is valid
                bool validNameOnPs2 = FileName::IsCompliantPS2( strFileName );
                if( validNameOnPs2 == false )
                {
                    char output[ 256 ] = "";
                    sprintf( output, "CXconDoc::OnInsertNewPage: Page name is not valid on PS2: \"%s\"", strFileName );
                    g_OutputMessage.Add( output, ErrorOutputMessage );
                }

             
                // Add the page to the screen
                PascalCString fullFileName( pagePath );
                fullFileName += strFileName;
                PascalCString pageName( fileDialog.GetFileTitle() );
                if( InsertPage( fullFileName, pageName ) )
                {
                    changeMade = true;
                }
            }
        }  // while

        if( changeMade )
        {
            RebuildAllTrees();
            
            // set dirty
            SetDirtyFlag( true );
        }
    }
}


bool CXConDoc::InsertPage( PascalCString& fullFileNameString, PascalCString& pageName )
{
    using namespace FeData;

    FileName fullFileName;
    fullFileName.Set( fullFileNameString );

    // load the page file.
    Screen* screen = GetScreen();

    NameManager nameManager;
    if( !nameManager.IsPageNameUnique( pageName, screen ) )
    {
        g_OutputMessage.Add( "Page file already exists in the screen.",
                              WarningOutputMessage );
        return false;
    }

    Project* project = screen->GetProject();
    ResourceFileManager* resourceFileManager = project->GetResourceFileManager();
    PageFile* pageFile = resourceFileManager->GetPageFile( fullFileName,
                                                           project );
    if( pageFile == NULL )
    {
        g_OutputMessage.Add( "CXConDoc::OnInsertExistingPage: Out of Memory!",
                         ErrorOutputMessage );
        return false;
    }


    AddAction( new ActionPage( screen, 
                               pageFile,
                               ACTION_PAGE_ADD ) );
    return true;
}


void CXConDoc::RebuildAllTrees()
{
    // Rebuild the trees
    GetTabView()->SetupCheckRebuild();
    GetTabView()->CheckRebuild();

    // Redraw the layout view
    GetXConView()->Invalidate();
}

void CXConDoc::OnUpdateInsertNewPage(CCmdUI* pCmdUI) 
{
    using namespace FeData;

    Screen* screen = GetScreen();
    if( screen == NULL )
    {
        pCmdUI->Enable( FALSE );
    }
    else
    {
        pCmdUI->Enable( !screen->IsReadOnly() );
    }
}

void CXConDoc::OnUpdateInsertExistingPage(CCmdUI* pCmdUI) 
{
    using namespace FeData;

    Screen* screen = GetScreen();
    if( screen == NULL )
    {
        pCmdUI->Enable( FALSE );
    }
    else
    {
        pCmdUI->Enable( !screen->IsReadOnly() );
    }
}




void CXConDoc::OnUpdateInsertImage(CCmdUI* pCmdUI) 
{
    FeData::Page* page = GetSelectedElementPage();
    if( page != NULL )
    {
        pCmdUI->Enable( !page->IsReadOnly() );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}

void CXConDoc::OnUpdateInsertString(CCmdUI* pCmdUI) 
{
    FeData::Page* page = GetSelectedElementPage();
    if( page != NULL )
    {
        pCmdUI->Enable( !page->IsReadOnly() );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}

void CXConDoc::OnUpdateInsertFont(CCmdUI* pCmdUI) 
{
    FeData::Page* page = GetSelectedElementPage();
    if( page != NULL )
    {
        pCmdUI->Enable( !page->IsReadOnly() );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}

void CXConDoc::OnUpdateInsertTextBible(CCmdUI* pCmdUI) 
{
    FeData::Page* page = GetSelectedElementPage();
    if( page != NULL )
    {
        pCmdUI->Enable( !page->IsReadOnly() );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}

void CXConDoc::OnUpdateInsertTextStyle(CCmdUI* pCmdUI) 
{
    FeData::Page* page = GetSelectedElementPage();
    if( page != NULL )
    {
        pCmdUI->Enable( !page->IsReadOnly() );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}


void CXConDoc::OnInsertMultisprite() 
{
    InsertDrawingElement( DRAWING_ELEMENT_MULTI_SPRITE );
}

void CXConDoc::OnUpdateInsertMultitext(CCmdUI* pCmdUI) 
{
    FeData::Page* page = GetSelectedElementPage();
    if( page != NULL )
    {
        pCmdUI->Enable( !page->IsReadOnly() );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}

void CXConDoc::OnUpdateInsertMovie(CCmdUI* pCmdUI) 
{
    FeData::Page* page = GetSelectedElementPage();
    if( page != NULL )
    {
        pCmdUI->Enable( !page->IsReadOnly() );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}

void CXConDoc::OnUpdateInsertMovieClip(CCmdUI* pCmdUI) 
{
    FeData::Page* page = GetSelectedElementPage();
    if( page != NULL )
    {
        pCmdUI->Enable( !page->IsReadOnly() );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}

void CXConDoc::OnUpdateInsertPure3dObject(CCmdUI* pCmdUI) 
{
    FeData::Page* page = GetSelectedElementPage();
    if( page != NULL )
    {
        pCmdUI->Enable( !page->IsReadOnly() );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}

void CXConDoc::OnInsertMultitext() 
{
    InsertDrawingElement( DRAWING_ELEMENT_MULTI_TEXT );
}

void CXConDoc::OnInsertMovie() 
{
    InsertDrawingElement( DRAWING_ELEMENT_MOVIE );
}

void CXConDoc::OnInsertPure3dObject() 
{
    InsertDrawingElement( DRAWING_ELEMENT_PURE3DOBJECT );
}

void CXConDoc::OnUpdateInsertMultisprite(CCmdUI* pCmdUI) 
{
    FeData::Page* page = GetSelectedElementPage();
    if( page != NULL )
    {
        pCmdUI->Enable( !page->IsReadOnly() );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}

void CXConDoc::OnUpdateInsertPure3dFile(CCmdUI* pCmdUI) 
{
    FeData::Page* page = GetSelectedElementPage();
    if( page != NULL )
    {
        pCmdUI->Enable( !page->IsReadOnly() );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}
