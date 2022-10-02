/////////////////////////////////////////////////////////////////////////////
// XCon.h : main header file for the XCON application

#pragma once

#ifndef __AFXWIN_H__
    #error include 'StdAfx.h' before including this file for PCH
#endif

#include "Resource.h"       // main symbols
#include "platform.h"

#include "FeData\ResourceFiles\ProjectFile.h"
#include "FeData\Factories\BaseFactory.h"
#include "ViewComm.h"

class Action;


//this macro inverts the order of bytes in a color RGB -> BGR -> RGB
#define RGBINVERT(rgb)    ((COLORREF)( ((BYTE)(rgb>>16)) | (rgb&0x0ff00) | (rgb<<16) ))

#define DEFAULT_TRANSPARENCY    RGB(255,0,255)        // default pink

enum                    //WARNING - if you change this, the bmp images in the resources need to be changed
{
    TREE_FOLDER,                
    TREE_FOLDER_SEL,            
    TREE_IMAGE,                 
    TREE_FONT,
    TREE_STRING,
    TREE_MULTI_SPRITE,
    TREE_OVERLAY,
    TREE_OVERLAY_VISIBLE,
    TREE_SPRITE,
    TREE_SPRITE_SHOW,
    TREE_TEXT,
    TREE_MULTI_TEXT,
    TREE_SCREEN,
    TREE_CURSOR,
    TREE_POLY,
    TREE_CLIP,
    TREE_LANGID,
    TREE_LAYER,
    TREE_GROUP,
    TREE_TEXTBIBLE,
    TREE_TEXTSTYLE,
    TREE_READ_ONLY,
    TREE_NOT_LOADED,
    TREE_MOVIE,
    TREE_PURE3DOBJECT,
    NUM_IMAGES
};

class CXConDoc;

/////////////////////////////////////////////////////////////////////////////
// CXConApp

class CXConApp : public CWinApp
{
public:
    CXConApp();
    ~CXConApp();

protected:

    FeData::ProjectFile* m_pProjectFile;
    FeData::BaseFactory* m_pObjectFactory;
    int m_ScreenIndex;

    CString m_strDocPath;
    CSize m_sizeNewRes;
    PLATFORM m_nNewPlatform;
    HANDLE m_hPtuiProcess;
    BOOL m_bSuccess;
    BOOL m_bExportOnly;
    CDialogBar  m_wndDlgBar;
    CRecentFileList m_ProjectFileList;
    PascalCString m_ExecutionPath;

    ViewerComm* m_pViewerComm;
    CString m_strWorkingDir;
    unsigned int m_idViewer;

    HKEY m_hKey;

// Operations
public:
    PascalCString GetPath() const;
    FeData::Project* GetProject() const;
    PascalCString GetProjectName() const;
    BOOL GetNewScreenFileName(FeData::FileName& fileName);
    StartScreen(int index);
    BOOL LoadProject(PascalCString fileNameString);
    void SetProjectDirty( bool isDirty );

    BOOL CheckResolution();
    BOOL ReadWindowPlacement(CWnd* pWnd);
    void WriteWindowPlacement(CWnd* pWnd);
    void RunPtui();
    BOOL IsExportOnly() const { return m_bExportOnly; }

    CXConDoc* GetActiveDocument();
    CView* GetActiveView();

    const CSize& GetNewResolution() const { return m_sizeNewRes; }
    PLATFORM GetNewPlatform() const { return m_nNewPlatform; }

    void FixSpacesInName(LPTSTR pName);
    void ReadStringFixSpaces(CArchive& ar, CString& str);

   void ReloadViewer();
   void SwitchViewer( unsigned int viewer );

   void ReadSettings();
   void WriteSettings();

protected:
    void RegisterShellFileTypesEx(CDocTemplate* pTemplate);

// Overrides
    // ClassWizard generated virtual function overrides
    //{{AFX_VIRTUAL(CXConApp)
    public:
    virtual BOOL InitInstance();
    virtual int ExitInstance();
    virtual BOOL PreTranslateMessage(MSG* pMsg);
    virtual BOOL SaveAllModified();
    virtual int Run();
    //}}AFX_VIRTUAL

// Implementation
    //{{AFX_MSG(CXConApp)
    afx_msg void OnAppAbout();
    afx_msg void OnFileNew();
    afx_msg void OnFileOpen();
    afx_msg void OnUpdateFileOpenProject(CCmdUI* pCmdUI);
    afx_msg void OnFileOpenProject();
    afx_msg void OnFileSaveProject();
    afx_msg void OnFileCloseProject();
    afx_msg void OnUpdateFileSaveProject(CCmdUI* pCmdUI);
    afx_msg void OnUpdateFileCloseProject(CCmdUI* pCmdUI);
    afx_msg void OnInsertNewScreen();
    afx_msg void OnInsertExistingScreen();
    afx_msg void OnUpdateInsertNewScreen(CCmdUI* pCmdUI);
    afx_msg void OnUpdateInsertExistingScreen(CCmdUI* pCmdUI);
    afx_msg void OnFileMruFile1();
    afx_msg void OnFileMruFile2();
    afx_msg void OnFileMruFile3();
    afx_msg void OnUpdateFileMruFile1(CCmdUI* pCmdUI);
    afx_msg void OnFileProjectProperties();
    afx_msg void OnUpdateFileProjectProperties(CCmdUI* pCmdUI);
    afx_msg void OnFileNewProject();
    afx_msg void OnDebugDumpUndoRedoList();
    afx_msg void OnFileExportHashedNames();
    afx_msg void OnUpdateFileExportHashedNames(CCmdUI* pCmdUI);
    afx_msg void OnEditSettings();
    //}}AFX_MSG
    DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////
// Helpers

#define App()            ((CXConApp*)AfxGetApp())
#define AppMainWnd()    ((CMainFrame*)AfxGetMainWnd())

extern const TCHAR* g_szSection;
