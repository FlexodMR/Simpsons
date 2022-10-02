#pragma once

/////////////////////////////////////////////////////////////////////////////
// XConDoc.h : interface of the CXConDoc class

#ifndef _XCONDOC_H_
#define _XCONDOC_H_

/////////////////////////////////////////////////////////////////////////////
// Data includes

#pragma warning( disable : 4786 )

#include "stdafx.h"
#include "docArrayType.h"
#include "platform.h"
//#include "UndoClasses.h"
#include "XConEnum.h"

#include "GUI\SelectionList.h"

#include "FeData\Helpers\NameManager.h"
#include "FeData\ResourceFiles\ScreenFile.h"
//#include "..\..\..\common\localization\languageDatabase.h"

//class CXContext;
//class CXImage;
//class CXResource;
//class CXScreen;
//class CXString;
class CXConDoc;
class CXConView;
class CTabView;
class CXObject;
//class CXDisplay;

class Action;

// number of resource items in above list
#define NUM_RES_ITEMS    8

enum ResourceTypeEnum
{
    RESOURCE_IMAGE,
    RESOURCE_MOVIECLIP,
    RESOURCE_PURE3DFILE,
    RESOURCE_TEXT_BIBLE,
    RESOURCE_TEXT_STYLE
};

/////////////////////////////////////////////////////////////////////////////
// CDirectoryMgr

class CDirectoryMgr
{
public:
    CDirectoryMgr() { m_bSuccess = FALSE; }
    CDirectoryMgr(LPCTSTR pszPath);
    ~CDirectoryMgr() { if (m_bSuccess) ::SetCurrentDirectory(m_szDir); }
    BOOL Init(LPCTSTR pszPath, UINT nIDError);

// Attributes
protected:
    TCHAR m_szDir[_MAX_PATH];
    BOOL m_bSuccess;
};


namespace FeData
{
    class BaseFactory;
    class DrawingElement;
    class NamedElement;
    class ResourceManager;
    class ScreenFile;
    class Screen;
}

class PascalCString;

/////////////////////////////////////////////////////////////////////////////
// CXConDoc

class CXConDoc : public CDocument
{
    DECLARE_DYNCREATE(CXConDoc)
public:
    CXConDoc();

    FeData::Screen* GetScreen();
    SelectionList* GetSelectionList();
    void HandleProperties( FeData::NamedElement* namedElement );
    

// Attributes
protected:
    FeData::ScreenFile* m_pScreenFile;
    SelectionList m_SelectionList;

    COLORREF m_clrTransparency;
    PLATFORM m_nPlatform;
    CSize m_sizeRes;
    CString m_strResPaths[NUM_RES_ITEMS];
    CString m_strResourcePath;
    CString m_strExportPath;
    CString m_strLanguagePath;
    CString m_strExportOnlyResPath;
    BOOL m_bExportFonts;
    COLORREF m_clrBkgd;

    UINT m_nClipboardFormat;
    GUID m_guid;    // unique ID for this document
    CTime m_timeModified;
    BOOL m_bPasteSameDoc;

//    CUndoArray m_arUndo;
//    CUndoArray m_arRedo;
    int m_nChangeCount;
    int m_nChangeBase;

    BOOL m_bJapaneseWarn;                //localization?
    int m_nJapaneseIndex;                //localization?

    BOOL m_bTVCutoff;
    CSize m_sizeTVCutoff;

    //LOCALIZATION?
//    LanguageDatabase ldb ;
    //CStringArray m_arLanguages;
    CMapStringToPtr m_mapLangIDs;
    int m_nLanguageIndex;
    CString m_strOriginal;
    CStringArray* m_parLangData;
    CStringArray* m_charListData;
    CMapStringToPtr m_mapExpStringIDs;
    CStringArray m_arCopyStringIDs;

    BOOL m_bPrintOutXLCharsFile;

    CPoint* m_PolygonPoints;
    int     m_PolygonCount;

    bool    m_ScreenDirty;

    void SetDirtyFlag( bool setting );
    void SetWindowTitle();

// Operations
public:
 
    PLATFORM GetPlatform() const { return m_nPlatform; }
    const CSize& GetResolution() const { return m_sizeRes; }
    COLORREF GetBkgdColor() const { return m_clrBkgd; }
    BOOL ShowTVCutoff() const { return m_bTVCutoff && (m_sizeTVCutoff.cx || m_sizeTVCutoff.cy); }
    CRect GetTVCutoffRect();
    void SetModifiedFlagEx(BOOL bChange = TRUE);
//    CXObjectArray* GetObjectArray(DOCARRAYTYPE nType) { ASSERT(nType<NUM_DOC_ITEMS);return m_arDocItems[nType]; }
    void GetUniqueName(CObArray* pArray, CString& str);
//    void DeleteDocItem(CXObject* pObject, CXContext* pContext = NULL);
//    BOOL DeleteResourceObject(CXResource* pResource, BOOL bDelete = FALSE);
    void UpdateScreenObjs(CXObject* pObject, BOOL bMoveUp);
    BOOL FindNewRootPath();
//    void RefreshOverlays(CXResource* pResource);
    void InsertClipRegion(const CRect& rect);
    void InsertPrimitive(CPoint* pPoints, int nCount);
//    BOOL LoadLanguage();
    BOOL BrowseForFile(CString& strPathName, DOCARRAYTYPE nType, UINT nTitle, UINT nFilter, CWnd* pParent);
    const CString& GetResourcePath() { return m_strResourcePath; }
    const char * GetResourcePathString() { return m_strResourcePath; }

    BOOL IsJapanese() const { return m_nLanguageIndex == m_nJapaneseIndex; }
//    void AddUndoObject(CUndoObject* pUndo);
//    void OnDeleteOverlay(CXOverlay* pOverlay);
//    CXResource* OnPasteResource(CXResource* pResource, CRuntimeClass* pObjectClass, BYTE** ppData);
//    CXContext* GetVisibleObject(CXContext* pCurSelection, CXOverlay** ppOverlay, CXLayer** ppLayer, BOOL bShift);

    CXConView* GetXConView();
    CTabView* GetTabView();

    CXObject* FindObject(DOCARRAYTYPE nType, const CString& str);
    void DrawOverlays(CDC* pDC, const CRect& rect, int nZoomFactor);
//    CXContext* GetDisplayObj(CPoint point, CXOverlay** ppOverlay, CXLayer** ppLayer);

//    void OnStringChange(CXString* pString);
    const CString& GetString(const CString& strID) { return GetStringExcel(strID, m_nLanguageIndex); }

    bool AddAction( Action* newAction );
        
    void SetupRefresh();
    void Refresh();

    void DoProperties();

    const char* GetScreenName();

protected:
    //?ET? - temp hack to add savedoc and saveoverlays
    void SaveDoc();
    void SaveOverlays();

    void GetTimeStamp(LPCTSTR lpszPathName);
    void SerializePath(CArchive& ar, CString& strPath, CString* pstrDrive = NULL);
    BOOL BrowseForFolder(CString& strPath, UINT nIDTitle);

    void InsertResource( ResourceTypeEnum resourceType, UINT titleId, UINT filterId );
    
    void InsertDrawingElement( DrawingElementsEnum drawingElementType );


    void SetNewRootPath(LPTSTR pszNewPath);
    CXObject* GetSelection();
    BOOL CheckIfOverlaySelected(BOOL bIsVisible = FALSE);
    BOOL CheckIfLayerSelected(BOOL bIsVisible = FALSE);
    BOOL CheckIfGroupSelected();
//    void InsertGroupObj(CXContext* pContext, CString strName);
    void ResetUndoRedo();
    BOOL IsClipboardObject();
//    CXDisplay* GetDisplaySelection();
    BOOL CheckMultiSelection(CXObject** ppObject);

//    void DoInfoArray(CByteArray& arInfo, CXObjectArray* pArray, CString& strText);

    void AddToCharFile(WORD wLanguageID, WORD wCharToAdd, WORD wJapaneseCharToAdd, bool bJapaneseChar);
    void SortCharList(int nLanguage);

    void ParseLanguageFile(WORD* pData);
    void OnLanguageChange();
    const CString& GetStringExcel(const CString& strID, int nLangIndex);

    bool InsertPage( PascalCString& fullFileNameString, PascalCString& pageName );
    void RebuildAllTrees();

    FeData::Page* GetSelectedElementPage();

    bool GetClipboardString( PascalCString& source );
    void HandlePaste( PascalCString& source );


// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CXConDoc)
    public:
    virtual BOOL OnNewDocument();
    virtual BOOL OnSaveDocument(LPCTSTR lpszPathName);
    virtual BOOL OnOpenDocument(LPCTSTR lpszPathName);
    virtual void OnCloseDocument();
    protected:
    virtual BOOL SaveModified();
    //}}AFX_VIRTUAL

// Implementation
public:
//    CXImage *AddImage(char *name,char *path);
//    CXScreen *AddScreen();

//    CXOverlay *AddOverlay();
    virtual ~CXConDoc();

    void OnFileOpenProject(CString& fileName);

// Generated message map functions
protected:
//    afx_msg CXScreen* OnInsertScreen();
//    afx_msg CXOverlay* OnInsertOverlay();
    //{{AFX_MSG(CXConDoc)
    afx_msg void OnInsertCursor();
    afx_msg void OnInsertFont();
    afx_msg void OnInsertString();
    afx_msg void OnInsertImage();
    afx_msg void OnInsertMovieClip();
    afx_msg void OnInsertPure3dFile();
    afx_msg void OnUpdateInsertCursor(CCmdUI* pCmdUI);
    afx_msg void OnProperties();
    afx_msg void OnUpdateProperties(CCmdUI* pCmdUI);
    afx_msg void OnFileProperties();
    afx_msg void OnRefresh();
    afx_msg void OnInsertSprite();
    afx_msg void OnInsertText();
    afx_msg void OnUpdateInsertText(CCmdUI* pCmdUI);
    afx_msg void OnUpdateInsertMovieClip(CCmdUI* pCmdUI);
    afx_msg void OnUpdateInsertPure3dFile(CCmdUI* pCmdUI);
    afx_msg void OnUpdateInsertSprite(CCmdUI* pCmdUI);
    afx_msg void OnUpdateInsertLayer(CCmdUI* pCmdUI);
    afx_msg void OnUpdateInsertGroup(CCmdUI* pCmdUI);
    afx_msg void OnUpdateDelete(CCmdUI* pCmdUI);
    afx_msg void OnDelete();
    afx_msg void OnUpdateOverlayToggle(CCmdUI* pCmdUI);
    afx_msg void OnViewTvCutoff();
    afx_msg void OnUpdateViewTvCutoff(CCmdUI* pCmdUI);
    afx_msg void OnMultiObject();
    afx_msg void OnUpdateMultiObject(CCmdUI* pCmdUI);
    afx_msg void OnUpdateRefresh(CCmdUI* pCmdUI);
    afx_msg void OnZoomToggle();
    afx_msg void OnUpdateZoomToggle(CCmdUI* pCmdUI);
    afx_msg void OnUpdateInsertOverlayObj(CCmdUI* pCmdUI);
    afx_msg void OnUpdateInsertPolygon(CCmdUI* pCmdUI);
    afx_msg void OnInsertPoly();
    afx_msg void OnInsertClip();
    afx_msg void OnInsertLine();
    afx_msg void OnInsertTriangle();
    afx_msg void OnInsertQuad();
    afx_msg void OnViewPlaystation();
    afx_msg void OnInsertLayer();
    afx_msg void OnInsertGroup();
    afx_msg void OnFileSave();
    afx_msg void OnInsertTextBible();
    afx_msg void OnInsertNewPage();
    afx_msg void OnInsertExistingPage();
    afx_msg void OnViewZoomIn();
    afx_msg void OnUpdateViewZoomIn(CCmdUI* pCmdUI);
    afx_msg void OnViewZoomOut();
    afx_msg void OnUpdateViewZoomOut(CCmdUI* pCmdUI);
    afx_msg void OnViewActualPixels();
    afx_msg void OnInsertTextStyle();
    afx_msg void OnEditUndo();
    afx_msg void OnUpdateEditUndo(CCmdUI* pCmdUI);
    afx_msg void OnEditRedo();
    afx_msg void OnUpdateEditRedo(CCmdUI* pCmdUI);
    afx_msg void OnEditDuplicate();
    afx_msg void OnUpdateEditDuplicate(CCmdUI* pCmdUI);
    afx_msg void OnUpdateInsertNewPage(CCmdUI* pCmdUI);
    afx_msg void OnUpdateInsertExistingPage(CCmdUI* pCmdUI);
    afx_msg void OnUpdateInsertImage(CCmdUI* pCmdUI);
    afx_msg void OnUpdateInsertString(CCmdUI* pCmdUI);
    afx_msg void OnUpdateInsertFont(CCmdUI* pCmdUI);
    afx_msg void OnUpdateInsertTextBible(CCmdUI* pCmdUI);
    afx_msg void OnUpdateInsertTextStyle(CCmdUI* pCmdUI);
    afx_msg void OnInsertMultisprite();
    afx_msg void OnUpdateInsertMultitext(CCmdUI* pCmdUI);
    afx_msg void OnUpdateInsertMovie(CCmdUI* pCmdUI);
    afx_msg void OnUpdateInsertPure3dObject(CCmdUI* pCmdUI);
    afx_msg void OnInsertMultitext();
    afx_msg void OnInsertMovie();
    afx_msg void OnInsertPure3dObject();
    afx_msg void OnUpdateInsertMultisprite(CCmdUI* pCmdUI);
    afx_msg void OnAlignBottom();
    afx_msg void OnAlignHcenter();
    afx_msg void OnAlignLeft();
    afx_msg void OnAlignRight();
    afx_msg void OnAlignTop();
    afx_msg void OnAlignVcenter();
    afx_msg void OnEditDeselectSelection();
    afx_msg void OnUpdateEditDeselectSelection(CCmdUI* pCmdUI);
    afx_msg void OnEditCopy();
    afx_msg void OnUpdateEditCopy(CCmdUI* pCmdUI);
    afx_msg void OnEditPaste();
    afx_msg void OnUpdateEditPaste(CCmdUI* pCmdUI);
    afx_msg void OnEditCut();
    afx_msg void OnUpdateEditCut(CCmdUI* pCmdUI);
    afx_msg void OnDeleteLayer();
    afx_msg void OnUpdateDeleteLayer(CCmdUI* pCmdUI);
    afx_msg void OnDeletePage();
    afx_msg void OnUpdateDeletePage(CCmdUI* pCmdUI);
    afx_msg void OnRefreshAll();
    afx_msg void OnPreviewerPs2();
    afx_msg void OnFileSaveall();
    afx_msg void OnPreviewPc();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()

public:
    static BOOL s_bFirstPathObj;
};

#endif

