/////////////////////////////////////////////////////////////////////////////
// XCon.cpp : Defines the class behaviors for the application.

#pragma warning( disable : 4786 )
#include "StdAfx.h"
#include <assert.h>
#include <direct.h>
#include "FeData\Factories\BaseFactory.h"
#include "FeData\Factories\GDIFactory.h"
#include "FeData\Helpers\FileName.h"
#include "FeData\Helpers\NameManager.h"
#include "FeData\Helpers\OutputMessage.h"
#include "FeData\Loaders\ProjectLoader.h"
#include "FeData\NamedElements\Project.h"
#include "FeData\ResourceFiles\ScreenFile.h"
#include "GUI\Property Dialogs\ProjectPropertiesDlg.h"
#include "GUI\Undo\Action.h"
#include "GUI\Undo\ActionManager.h"
#include "MainFrm.h"
#include "Strings\PCString.h"
#include "TabView.h"
#include "version.h"
#include "XCon.h"
#include "XConDoc.h"
#include "XConView.h"
#include "SettingsDialog.h"
#include <toollib.hpp>


#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

static const TCHAR s_szCompany[] = _T("Radical Entertainment");
const TCHAR* g_szSection = _T("Settings");
static const TCHAR s_szWindowPos[] = _T("WindowPos");
static const TCHAR s_szFormat[] = _T("%u,%u,%d,%d,%d,%d,%d,%d,%d,%d");
static const TCHAR s_szDocPath[] = _T("DocPath");

#define DEFAULT_WIDTH_PC    640
#define DEFAULT_HEIGHT_PC    480
#define DEFAULT_WIDTH_PSX    512
#define DEFAULT_HEIGHT_PSX    256

static const TCHAR s_szRegSubKey[] = _T("SOFTWARE\\Radical Entertainment\\Scrooby Viewer");
static const TCHAR s_szWorkingDirKey[] = _T("ProjectWorkingDir");
static const TCHAR s_szDefaultViewerKey[] = _T("DefaultViewer");

static const TCHAR s_szPlatform[] = _T("Platform");
static const TCHAR s_szWidthPc[] = _T("WidthPc");
static const TCHAR s_szWidthPsx[] = _T("WidthPsx");
static const TCHAR s_szHeightPc[] = _T("HeightPc");
static const TCHAR s_szHeightPsx[] = _T("HeightPsx");

// Make a little more convenient error handler
#define SHOWERROR(e) MessageBox( NULL, e, "ERROR", MB_OK )

/////////////////////////////////////////////////////////////////////////////
// CCommandLineInfoEx

class CCommandLineInfoEx : public CCommandLineInfo
{
public:
    CCommandLineInfoEx();
    virtual void ParseParam(const TCHAR* pszParam, BOOL bFlag, BOOL bLast);

    //these are the command line flag containers
    bool m_bExportHeaderFiles;
    bool m_bInputFileName;
    bool m_bPrjExport;

    PascalCString m_strInputFileName;
};

/////////////////////////////////////////////////////////////////////////////
// The one and only CXConApp object

CXConApp theApp;

/////////////////////////////////////////////////////////////////////////////
// CXConApp

CXConApp::CXConApp() :
    m_pProjectFile( NULL ),
    m_pObjectFactory( NULL ),
    m_ProjectFileList( 0, "ProjectFileList", "file%d", 3 )
{
    
    char path[ 256 ] = "";
    ::getcwd( path, 256 );
    m_ExecutionPath = path;
    m_pObjectFactory = new FeData::GDIFactory;
 
    m_hPtuiProcess = NULL;
    m_bSuccess = FALSE;
    m_bExportOnly = FALSE;

}

CXConApp::~CXConApp()
{
    WriteSettings();
   if( m_pProjectFile != NULL )
    {
        delete m_pProjectFile;
        m_pProjectFile = NULL;
    }

    if( m_pObjectFactory != NULL )
    {
        delete m_pObjectFactory;
        m_pObjectFactory = NULL;
    }
}


BEGIN_MESSAGE_MAP(CXConApp, CWinApp)
    //{{AFX_MSG_MAP(CXConApp)
    ON_COMMAND(ID_APP_ABOUT, OnAppAbout)
    ON_COMMAND(ID_FILE_NEW, OnFileNew)
    ON_COMMAND(ID_FILE_OPEN, OnFileOpen)
    ON_UPDATE_COMMAND_UI(ID_FILE_OPEN_PROJECT, OnUpdateFileOpenProject)
    ON_COMMAND(ID_FILE_OPEN_PROJECT, OnFileOpenProject)
    ON_COMMAND(ID_FILE_SAVE_PROJECT, OnFileSaveProject)
    ON_COMMAND(ID_FILE_CLOSE_PROJECT, OnFileCloseProject)
    ON_UPDATE_COMMAND_UI(ID_FILE_SAVE_PROJECT, OnUpdateFileSaveProject)
    ON_UPDATE_COMMAND_UI(ID_FILE_CLOSE_PROJECT, OnUpdateFileCloseProject)
    ON_COMMAND(ID_INSERT_NEW_SCREEN, OnInsertNewScreen)
    ON_COMMAND(ID_INSERT_EXISTING_SCREEN, OnInsertExistingScreen)
    ON_UPDATE_COMMAND_UI(ID_INSERT_NEW_SCREEN, OnUpdateInsertNewScreen)
    ON_UPDATE_COMMAND_UI(ID_INSERT_EXISTING_SCREEN, OnUpdateInsertExistingScreen)
    ON_COMMAND(ID_FILE_MRU_FILE1, OnFileMruFile1)
    ON_COMMAND(ID_FILE_MRU_FILE2, OnFileMruFile2)
    ON_COMMAND(ID_FILE_MRU_FILE3, OnFileMruFile3)
    ON_UPDATE_COMMAND_UI(ID_FILE_MRU_FILE1, OnUpdateFileMruFile1)
    ON_COMMAND(ID_FILE_PROJECT_PROPERTIES, OnFileProjectProperties)
    ON_UPDATE_COMMAND_UI(ID_FILE_PROJECT_PROPERTIES, OnUpdateFileProjectProperties)
    ON_COMMAND(ID_FILE_NEW_PROJECT, OnFileNewProject)
    ON_COMMAND(ID_DEBUG_DUMP_UNDO_REDO_LIST, OnDebugDumpUndoRedoList)
    ON_COMMAND(ID_FILE_EXPORT_HASHED_NAMES, OnFileExportHashedNames)
    ON_UPDATE_COMMAND_UI(ID_FILE_EXPORT_HASHED_NAMES, OnUpdateFileExportHashedNames)
    ON_COMMAND(ID_EDIT_SETTINGS, OnEditSettings)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CXConApp initialization

BOOL CXConApp::InitInstance()
{
    if (!AfxOleInit())
    {
        AfxMessageBox(IDP_OLE_INIT_FAILED);
        return FALSE;
    }

    // Parse command line for standard shell commands, DDE, file open
    CCommandLineInfoEx cmdInfo;
    cmdInfo.m_nShellCommand = CCommandLineInfo::FileNothing;
    ParseCommandLine(cmdInfo);


    //check the command line
    if( cmdInfo.m_bPrjExport == true )
    {
        char filename[256];
        _fullpath( filename, cmdInfo.m_strInputFileName, 256 );
        BOOL loadSuccess = this->LoadProject( filename );
        assert( loadSuccess );
        tlDataChunk* outchunk = new tlDataChunk();

        tlHistory* chunk = new tlHistory();
        char buf[512];
        sprintf(buf,"Scrooby Commandline PRJ Export version %s (with toollib %s)", g_VersionString, tlversion);
        chunk->AddLine(buf);
        
        // Logon name and date info
        time_t ltime;
        struct tm *now;
        time(&ltime);
        now = localtime(&ltime);
        strftime(buf, 256, "Run at %B %d, %Y, %H:%M:%S by ", now);
        DWORD size = 256;
        char lbuf[256];
        GetUserName(lbuf, &size);
        strcat(buf, lbuf);
        chunk->AddLine(buf);

        outchunk->AppendSubChunk( chunk->Chunk() );

        outchunk->AppendSubChunk( this->GetProject()->MakeChunk() );
        
        strcpy(buf,filename);
        
        ForceExtension( buf, "p3d" );
        
        tlFile output(new tlFileByteStream(buf, omWRITE), tlFile::CHUNK32);
        
        if(!output.IsOpen()) 
        {
            printf("Could not open %s for writing\n", buf);
            exit(-1);
        }
        
        // get the output wrapper chunk to write its data out
        // to the file
        outchunk->Write(&output);
        
        // cleanup the no-longer-needed wrapper chunks
        delete outchunk;
        

        //_exit(0);
        ExitProcess(0);

    }
    if( cmdInfo.m_bExportHeaderFiles == true )
    {
        BOOL loadSuccess = this->LoadProject( cmdInfo.m_strInputFileName );
        assert( loadSuccess );
        this->OnFileExportHashedNames();
        return FALSE;
    }

#ifdef _AFXDLL
    Enable3dControls();            // Call this when using MFC in a shared DLL
#else
    Enable3dControlsStatic();    // Call this when linking to MFC statically
#endif

    if (!CheckResolution())
        return FALSE;

    SetRegistryKey(s_szCompany);
    LoadStdProfileSettings(8);

    m_ProjectFileList.ReadList();
    m_strDocPath = GetProfileString(g_szSection, s_szDocPath);

    // Register the application's document templates. Document templates
    // serve as the connection between documents, frame windows and views.

    CMultiDocTemplate* pDocTemplate;
    pDocTemplate = new CMultiDocTemplate(
        IDR_XCONTYPE,
        RUNTIME_CLASS(CXConDoc),
        RUNTIME_CLASS(CChildFrame),
        RUNTIME_CLASS(CXConView));
    AddDocTemplate(pDocTemplate);

    // create main MDI Frame window
    CMainFrame* pMainFrame = new CMainFrame;
    m_pMainWnd = pMainFrame;
    if (!pMainFrame->LoadFrame(IDR_MAINFRAME))
        return FALSE;

    // Enable drag/drop open
    m_pMainWnd->DragAcceptFiles();

    // Enable DDE Execute open
    EnableShellOpen();
    RegisterShellFileTypesEx(pDocTemplate);

    // Dispatch commands specified on the command line
    if (!ProcessShellCommand(cmdInfo))
        return FALSE;

   ReadSettings();

   //m_pViewerComm = ViewerComm::GetInstance();
   //this->SwitchViewer( m_idViewer );


    // The main window has been initialized, so show and update it.
    if (!ReadWindowPlacement(pMainFrame))
        pMainFrame->ShowWindow(m_nCmdShow);
    pMainFrame->UpdateWindow();

    m_bSuccess = TRUE;
    return TRUE;
}

int CXConApp::ExitInstance() 
{
    if (m_hPtuiProcess)
        CloseHandle(m_hPtuiProcess);

    if (m_bSuccess)
        WriteProfileString(g_szSection, s_szDocPath, m_strDocPath);

    return CWinApp::ExitInstance();
}

BOOL CXConApp::CheckResolution()
{
    CClientDC dc(NULL);
    if (dc.GetDeviceCaps(BITSPIXEL) <= 8)
    {
        AfxMessageBox(IDP_INVALID_RESOLUTION, MB_OK|MB_ICONSTOP);
        return FALSE;
    }

    return TRUE;
}

CXConDoc* CXConApp::GetActiveDocument()
{
    CMDIChildWnd* pChildFrame = AppMainWnd()->MDIGetActive();
    if (!pChildFrame)
        return NULL;

    return (CXConDoc*)pChildFrame->GetActiveDocument();
}

CView* CXConApp::GetActiveView()
{
    CMDIChildWnd* pChildFrame = AppMainWnd()->MDIGetActive();
    if (!pChildFrame)
        return NULL;

    return pChildFrame->GetActiveView();
}

/////////////////////////////////////////////////////////////////////////////

void CXConApp::FixSpacesInName(LPTSTR pName)
{
    // replace spaces with '_'
    pName = _tcschr(pName, _T(' '));
    while (pName)
    {
        *pName = _T('_');
        pName = _tcschr(pName+1, _T(' '));
    }
}

void CXConApp::ReadStringFixSpaces(CArchive& ar, CString& str)
{
    ar >> str;
    FixSpacesInName(str.GetBuffer(str.GetLength()));
    str.ReleaseBuffer();
}

/////////////////////////////////////////////////////////////////////////////
// Registry functions

BOOL CXConApp::ReadWindowPlacement(CWnd* pWnd)
{
    CString strBuffer = GetProfileString(g_szSection, s_szWindowPos);
    if (strBuffer.IsEmpty())
        return FALSE;

    WINDOWPLACEMENT wp;
    wp.length = sizeof(WINDOWPLACEMENT);
    int nRead = _stscanf(strBuffer, s_szFormat,
        &wp.flags, &wp.showCmd,
        &wp.ptMinPosition.x, &wp.ptMinPosition.y,
        &wp.ptMaxPosition.x, &wp.ptMaxPosition.y,
        &wp.rcNormalPosition.left, &wp.rcNormalPosition.top,
        &wp.rcNormalPosition.right, &wp.rcNormalPosition.bottom);

    if (nRead != 10)
        return FALSE;

    // validate normal position against screen size
    CRect rect = wp.rcNormalPosition;
    if (rect.Width() > ::GetSystemMetrics(SM_CXSCREEN))
        wp.rcNormalPosition.right = ::GetSystemMetrics(SM_CXSCREEN);
    if (rect.Height() > ::GetSystemMetrics(SM_CYSCREEN))
        wp.rcNormalPosition.bottom = ::GetSystemMetrics(SM_CYSCREEN);

    if (wp.showCmd == SW_SHOWMINIMIZED)
        wp.showCmd = SW_SHOWNORMAL;
    pWnd->SetWindowPlacement(&wp);
    return TRUE;
}

void CXConApp::WriteWindowPlacement(CWnd* pWnd)
{
    WINDOWPLACEMENT wp;
    wp.length = sizeof wp;
    pWnd->GetWindowPlacement(&wp);

    TCHAR szBuffer[sizeof("-32767")*8 + sizeof("65535")*2];
    wsprintf(szBuffer, s_szFormat,
        wp.flags, wp.showCmd,
        wp.ptMinPosition.x, wp.ptMinPosition.y,
        wp.ptMaxPosition.x, wp.ptMaxPosition.y,
        wp.rcNormalPosition.left, wp.rcNormalPosition.top,
        wp.rcNormalPosition.right, wp.rcNormalPosition.bottom);

    WriteProfileString(g_szSection, s_szWindowPos, szBuffer);
}

/////////////////////////////////////////////////////////////////////////////
// CXConApp message handlers

void CXConApp::OnAppAbout()
{
    CDialog(IDD_ABOUTBOX).DoModal();
}

void CXConApp::OnFileNew() 
{

    FeData::Project* pProject = GetProject();
    PascalCString strProject = pProject->GetPlatform();
    strProject.ToUpper();

    if (strProject == "PSX")
        m_nNewPlatform = PLATFORM_PSX;
    else if (strProject == "PS2")
        m_nNewPlatform = PLATFORM_PS2;
    else
        m_nNewPlatform = PLATFORM_PC;

    m_sizeNewRes = CSize(pProject->GetResolutionWidth(), pProject->GetResolutionHeight());

    CWinApp::OnFileNew();
}

void CXConApp::OnFileOpen() 
{
    if (!m_strDocPath.IsEmpty())
        ::SetCurrentDirectory(m_strDocPath);

    CWinApp::OnFileOpen();

    TCHAR szDir[_MAX_PATH];
    ::GetCurrentDirectory(_MAX_PATH, szDir);
    m_strDocPath = szDir;
}

BOOL CXConApp::PreTranslateMessage(MSG* pMsg) 
{
    if (pMsg->message == WM_KEYDOWN)
    {
        CMainFrame* pMainFrame = AppMainWnd();
        CMDIChildWnd* pChildFrame = pMainFrame->MDIGetActive();
        if (pChildFrame && CWnd::GetActiveWindow() == pMainFrame)
        {
            CView* pView = pChildFrame->GetActiveView();
            if (pView->IsKindOf(RUNTIME_CLASS(CTabView)) && ((CTabView*)pView)->HandleKeyDownMsg(pMsg))
                return TRUE;            
        }
    }
    
    return CWinApp::PreTranslateMessage(pMsg);
}

/////////////////////////////////////////////////////////////////////////////

CCommandLineInfoEx::CCommandLineInfoEx():
    m_bExportHeaderFiles( false ),
    m_bInputFileName( false ),
    m_bPrjExport( false ),
    m_strInputFileName( "" )
{
}

void CCommandLineInfoEx::ParseParam(const TCHAR* pszParam, BOOL bFlag, BOOL bLast)
{
    if (bFlag)
    {
        if( *pszParam == _T('h') )
        {
            this->m_bExportHeaderFiles = true;
            return;
        }

        if( *pszParam == _T('i') )
        {
            this->m_bInputFileName = true;
            return;
        }

        if( *pszParam == _T('x') )
        {
            this->m_bPrjExport = true;
            return;
        }
    }
    else
    {
        if( m_bInputFileName == true)
        {
            this->m_strInputFileName = pszParam;
            if( this->m_strInputFileName[ 0 ] == '"' )
            {
                this->m_strInputFileName.Replace( "\"", "" );
            }
            this->m_bInputFileName = FALSE;
            return;
        }
    }

    CCommandLineInfo::ParseParam(pszParam, bFlag, bLast);
}

/////////////////////////////////////////////////////////////////////////////
// register the XCon file types

static const TCHAR szIconIndexFmt[] = _T(",%d");
static const TCHAR szCommand[] = _T("command");
static const TCHAR szDefaultIconFmt[] = _T("%s\\DefaultIcon");
static const TCHAR szShellNewFmt[] = _T("%s\\ShellNew");
static const TCHAR szDDEArg[] = _T(" /dde");
static const TCHAR szDDEExec[] = _T("ddeexec");
static const TCHAR szDDEOpen[] = _T("[open(\"%1\")]");
static const TCHAR szShellOpenFmt[] = _T("%s\\shell\\open\\%s");
static const TCHAR szShellExportFmt[] = _T("%s\\shell\\export");
static const TCHAR szShellNewValueName[] = _T("NullFile");
static const TCHAR szShellNewValue[] = _T("");

#define XCON_ICON_INDEX        1

// helper function taken from MFC file "docmgr.cpp"
static BOOL SetRegKey(LPCTSTR lpszKey, LPCTSTR lpszValue, LPCTSTR lpszValueName = NULL)
{
    if (lpszValueName == NULL)
    {
        if (::RegSetValue(HKEY_CLASSES_ROOT, lpszKey, REG_SZ,
              lpszValue, lstrlen(lpszValue) * sizeof(TCHAR)) != ERROR_SUCCESS)
        {
            TRACE1("Warning: registration database update failed for key '%s'.\n", lpszKey);
            return FALSE;
        }
        return TRUE;
    }
    else
    {
        HKEY hKey;

        if(::RegCreateKey(HKEY_CLASSES_ROOT, lpszKey, &hKey) == ERROR_SUCCESS)
        {
            LONG lResult = ::RegSetValueEx(hKey, lpszValueName, 0, REG_SZ,
                (CONST BYTE*)lpszValue, (lstrlen(lpszValue) + 1) * sizeof(TCHAR));

            if(::RegCloseKey(hKey) == ERROR_SUCCESS && lResult == ERROR_SUCCESS)
                return TRUE;
        }
        TRACE1("Warning: registration database update failed for key '%s'.\n", lpszKey);
        return FALSE;
    }
}

void CXConApp::RegisterShellFileTypesEx(CDocTemplate* pTemplate)
{
    CString strPathName, strTemp;
    AfxGetModuleShortFileName(AfxGetInstanceHandle(), strPathName);

    CString strOpenCommandLine = strPathName;
    CString strDefaultIconCommandLine = strPathName;

    CString strIconIndex;
    strIconIndex.Format(szIconIndexFmt, XCON_ICON_INDEX);
    DestroyIcon(::ExtractIcon(AfxGetInstanceHandle(), strPathName, XCON_ICON_INDEX));
    strDefaultIconCommandLine += strIconIndex;

    CString strFilterExt, strFileTypeId, strFileTypeName;
    pTemplate->GetDocString(strFileTypeId, CDocTemplate::regFileTypeId);
    if (!pTemplate->GetDocString(strFileTypeName, CDocTemplate::regFileTypeName))
        strFileTypeName = strFileTypeId;    // use id name

    ASSERT(strFileTypeId.Find(' ') == -1);  // no spaces allowed

    // first register the type ID of our server
    if (!SetRegKey(strFileTypeId, strFileTypeName))
        return;

    // path\DefaultIcon = path,1
    strTemp.Format(szDefaultIconFmt, (LPCTSTR)strFileTypeId);
    if (!SetRegKey(strTemp, strDefaultIconCommandLine))
        return;

    // path\shell\open\ddeexec = [open("%1")]
    strTemp.Format(szShellOpenFmt, (LPCTSTR)strFileTypeId, szDDEExec);
    if (!SetRegKey(strTemp, szDDEOpen))
        return;

    // path\shell\open\command = path /dde
    strOpenCommandLine += szDDEArg;

    // path\shell\open\command = path filename
    strTemp.Format(szShellOpenFmt, (LPCTSTR)strFileTypeId, szCommand);
    if (!SetRegKey(strTemp, strOpenCommandLine))
        return;

    // path\shell\export = export
    strTemp.Format(szShellExportFmt, (LPCTSTR)strFileTypeId);
    if (!SetRegKey(strTemp, _T("&Export to PSX")))
        return;

    // path\shell\export\command = path /e filename
    strTemp += _T('\\');
    strTemp += szCommand;
    strOpenCommandLine.Format(_T("\"%s\" /e \"%%1\""), strPathName);
    if (!SetRegKey(strTemp, strOpenCommandLine))
        return;

    pTemplate->GetDocString(strFilterExt, CDocTemplate::filterExt);
    ASSERT(strFilterExt[0] == '.');

    if (!SetRegKey(strFilterExt, strFileTypeId))
        return;

    strTemp.Format(szShellNewFmt, (LPCTSTR)strFilterExt);
    SetRegKey(strTemp, szShellNewValue, szShellNewValueName);
}

/////////////////////////////////////////////////////////////////////////////

void CXConApp::RunPtui()
{
    DWORD dwExitCode;
    if (!m_hPtuiProcess || !::GetExitCodeProcess(m_hPtuiProcess, &dwExitCode) || dwExitCode != STILL_ACTIVE)
    {
        if (m_hPtuiProcess)
        {
            CloseHandle(m_hPtuiProcess);
            m_hPtuiProcess = NULL;
        }

        TCHAR szBase[_MAX_PATH];
        ::GetModuleFileName(NULL, szBase, _MAX_PATH);
        *_tcsrchr(szBase, _T('\\')) = _T('\0');

        TCHAR szCommand[_MAX_PATH*2];
        wsprintf(szCommand, _T("%s\\%s %s\\%s"), szBase, _T("ptuilite.exe"), szBase, _T("xcview.cpe"));
        
        STARTUPINFO si;
        memset(&si, 0, sizeof(si));
        si.cb = sizeof(si);
        PROCESS_INFORMATION pi;
        if (!::CreateProcess(NULL, szCommand, NULL, NULL, FALSE, 0, NULL, szBase, &si, &pi))
        {
            AfxMessageBox(IDP_FAIL_START_PTUI);
            return;
        }

        m_hPtuiProcess = pi.hProcess;
        CloseHandle(pi.hThread);
    }
}

void CXConApp::OnUpdateFileOpenProject(CCmdUI* pCmdUI) 
{
    pCmdUI->Enable(TRUE);
}

void CXConApp::OnFileOpenProject() 
{
    static char BASED_CODE szFilter[] = "Project Files (*.prj)|*.prj|All Files (*.*)|*.*||";
    CFileDialog fileDialog( TRUE, ".prj", NULL, OFN_HIDEREADONLY, szFilter );

    if( fileDialog.DoModal() == IDOK )
    {
        if ( m_pProjectFile != NULL )
        {
            OnFileCloseProject();
        }

        CString ext = fileDialog.GetFileExt();
//        if( ext.CompareNoCase( "prj" ) == 0 )
        {
            PascalCString fileNameString = fileDialog.GetPathName();
            LoadProject(fileNameString);
        }
    }
}

//===========================================================================
// CXConApp::LoadProject
//===========================================================================
// Description: Destructor.
//
// Constraints:    None.
//
// Parameters:    fileNameString - name of the project file that is to be loaded
//
// Return:      true - load successful
//                false - load not successful
//
//===========================================================================
BOOL CXConApp::LoadProject( PascalCString fileNameString )
{
    BeginWaitCursor();

    FeData::FileName fileName;
    fileName.Set( fileNameString );

    FILE* fileTest = fopen( fileNameString, "r" );
    if( !fileTest )
    {
        FeData::g_OutputMessage.Add( "CXConApp::LoadProject: File not found", FeData::ErrorOutputMessage );
        return FALSE;
    }

    fclose( fileTest );

    m_pProjectFile = new FeData::ProjectFile( fileName );
    if( m_pProjectFile == NULL )
    {
        FeData::g_OutputMessage.Add( "CXConApp::LoadProject: Out of Memory!",
                                     FeData::ErrorOutputMessage );
        return FALSE;
    }

    if( m_pProjectFile->Load( m_pObjectFactory ) )
    {
        if( !m_pProjectFile->FileLoaded() )
        {
            FeData::g_OutputMessage.Add( "The project file could not be opened.",
                                         FeData::WarningOutputMessage );
            delete m_pProjectFile;
            m_pProjectFile = NULL;

            EndWaitCursor();
            return FALSE;
        }

        CMainFrame* pMainFrame = AppMainWnd();
        if( pMainFrame != NULL )
        {
            //this means we're not running in command line mode
            pMainFrame->OnUpdateProjectTree();
        }

        if (m_ProjectFileList[0] != fileNameString)
        {
            m_ProjectFileList.Add( fileNameString );
            m_ProjectFileList.WriteList();

            EndWaitCursor();
            return TRUE;
        }
        else
        {
            EndWaitCursor();
            return FALSE;
        }
       
    }
    else
    {
        FeData::g_OutputMessage.Add( "The project file could not be opened.",
                                     FeData::WarningOutputMessage );
        delete m_pProjectFile;
        m_pProjectFile = NULL;

        EndWaitCursor();
        return FALSE;
    }
}

//===========================================================================
// GetPath
//===========================================================================
// Description: returns a string representing the path that the application 
//              executable resides
//
// Constraints:    NONE
//
// Parameters:    NONE
//
// Return:      PascalCString - containing the execution path
//
//===========================================================================
PascalCString CXConApp::GetPath() const
{
    return this->m_ExecutionPath;
}

//===========================================================================
// GetProject
//===========================================================================
// Description: the project is a singleton contained in the app - this 
//              returns it
//
// Constraints:    NONE
//
// Parameters:    NONE
//
// Return:      FeData::Project - the project singleton
//
//===========================================================================
FeData::Project* CXConApp::GetProject() const
{
    if (m_pProjectFile != NULL)
    {
        return m_pProjectFile->GetProject();
    }
    else
    {
        return NULL;
    }
}

//===========================================================================
// GetProjectName
//===========================================================================
// Description: returns a string with the filename of this project in it
//
// Constraints:    NONE
//
// Parameters:    NONE
//
// Return:      PascalCString - containing the project name
//
//===========================================================================
PascalCString CXConApp::GetProjectName() const
{
    return ( this->m_pProjectFile->GetProject()->GetName() );
}

BOOL CXConApp::GetNewScreenFileName(FeData::FileName& fileName)
{
    if (m_pProjectFile != NULL)
    {
        FeData::Project* pProject = GetProject();

        if (pProject != NULL)
            return pProject->GetScreenFileName(m_ScreenIndex, fileName);
        else
            return FALSE;
    }
    else
        return FALSE;
}

CXConApp::StartScreen(int index)
{
    BeginWaitCursor();
    
    m_ScreenIndex = index;
    OnFileNew();

    EndWaitCursor();
}

void CXConApp::OnFileSaveProject() 
{
    if ( m_pProjectFile != NULL )
    {
        BeginWaitCursor();

        m_pProjectFile->Save();
        m_pProjectFile->SetDirty( false );

        EndWaitCursor();
    }
}

void CXConApp::OnFileCloseProject() 
{
    if ( m_pProjectFile != NULL)
    {
        if ( m_pProjectFile->FileDirty() )
        {
            if (AfxMessageBox(IDS_SAVE_PROJECT_QUERY, MB_YESNO) == IDYES)
            {
                OnFileSaveProject();
            }
        }
        CloseAllDocuments(FALSE);
        delete m_pProjectFile;
        m_pProjectFile = NULL;
        CMainFrame* pMainFrame = AppMainWnd();
        pMainFrame->OnClearProjectTree();
    }
}

void CXConApp::OnUpdateFileSaveProject(CCmdUI* pCmdUI) 
{
    if( m_pProjectFile != NULL )
    {
        pCmdUI->Enable( !m_pProjectFile->GetProject()->IsReadOnly() );
    }
    else
    {
        pCmdUI->Enable(FALSE);
    }

}

void CXConApp::OnUpdateFileCloseProject(CCmdUI* pCmdUI) 
{
    if( m_pProjectFile != NULL )  
    {
        pCmdUI->Enable(TRUE);
    }
    else
    {
        pCmdUI->Enable(FALSE);
    }
}

void CXConApp::OnInsertNewScreen() 
{
    using namespace FeData;

    if( m_pProjectFile == NULL )  
    {
        return;
    }

    Project* pProject = GetProject();

    // Find the screen path
    PascalCString screenPath = pProject->GetRootPath();
    screenPath += pProject->GetScreenPath();

    ::SetCurrentDirectory( screenPath );

    static char BASED_CODE szFilter[] = "Screen Files (*.scr)|*.scr|All Files (*.*)|*.*||";
    CFileDialog fileDialog( FALSE, ".scr", "NewScrn.scr", OFN_HIDEREADONLY|OFN_FILEMUSTEXIST|OFN_ALLOWMULTISELECT, szFilter );

    if( fileDialog.DoModal() == IDOK )
    {
        CString ext = fileDialog.GetFileExt();
        if( ext.CompareNoCase( "scr" ) == 0 )
        {
            // Get the current directory
            TCHAR szPath[_MAX_PATH];
            ::GetCurrentDirectory(_MAX_PATH, szPath);

            // Convert the current directory into a PascalCString and add the ending slash
            PascalCString currentDirectory( szPath );
            currentDirectory.Replace( g_BadSlashString, g_GoodSlashString );
            currentDirectory += g_GoodSlashString;

            // Make sure the current directory falls within the screens directory
            if( _tcsnicmp(currentDirectory, screenPath, screenPath.Length()) )
            {
                g_OutputMessage.Add( "The chosen screen file does not fall under the screen path set in the project file.  Screen file not created.",
                                     WarningOutputMessage );
                return;
            }

            // Get the relative file name
            char* currentDirectoryPtr = currentDirectory;
            PascalCString relativeFileNameString = (char*)(currentDirectoryPtr + screenPath.Length());
            relativeFileNameString += fileDialog.GetFileTitle() + ".scr";
           
            FileName relativeFileName;
            relativeFileName.Set( relativeFileNameString );

            // Get the full path name
            PascalCString fullFileNameString = screenPath;
            fullFileNameString += relativeFileNameString;

            //see if the filename is valid on the PS2
            bool validNameOnPs2 = FileName::IsCompliantPS2( relativeFileNameString );
            if( validNameOnPs2 == false )
            {
                char output[ 256 ] = "";
                sprintf( output, "CXconDoc::OnInsertNewScreen: Page name is not valid on PS2: \"%s\"", relativeFileNameString );
                g_OutputMessage.Add( output, ErrorOutputMessage );
            }

            // See if the file exists
            if( ::GetFileAttributes( fullFileNameString ) != 0xFFFFFFFF )
            {
                g_OutputMessage.Add( "The chosen screen file already exists.  The existing file will be used.",
                                      WarningOutputMessage );
            }
            else
            {
                FileName fullFileName;
                fullFileName.Set( fullFileNameString );

                // Create a temporary screen file
                BaseFactory* objectFactory = pProject->GetObjectFactory();
                ScreenFile* screenFile = objectFactory->NewScreenFile( fullFileName );
                if( screenFile == NULL )
                {
                    g_OutputMessage.Add( "CXConApp::OnInsertNewScreen: Out of Memory!",
                                         ErrorOutputMessage );
                    return;
                }

                // Create the blank file
                if( !screenFile->Create( pProject ) )
                {
                    return;
                }
                delete screenFile;
            }

            // Add the screen to the project
            if( pProject->AddScreenFileName( relativeFileName ) )
            {
                CMainFrame* pMainFrame = AppMainWnd();
                pMainFrame->InsertToProjectTree( relativeFileName );
                m_pProjectFile->SetDirty( true);
            }
            else
            {
                g_OutputMessage.Add( "The chosen screen is already in the project.",
                                      WarningOutputMessage );
            }
        }
    }
}

void CXConApp::OnInsertExistingScreen() 
{
    if( m_pProjectFile != NULL )  
    {
        FeData::Project* pProject = GetProject();
        CString strPath = CString( pProject->GetRootPath() ) + CString( pProject->GetScreenPath() );
        ::SetCurrentDirectory( strPath );

        static char BASED_CODE szFilter[] = "Screen Files (*.scr)|*.scr|All Files (*.*)|*.*||";
        CFileDialog fileDialog( TRUE, ".scr", NULL, OFN_HIDEREADONLY | OFN_ALLOWMULTISELECT , szFilter );

        if( fileDialog.DoModal() == IDOK )
        {
            POSITION pos = fileDialog.GetStartPosition();
            while( pos )
            {
                CString strFileName = fileDialog.GetNextPathName( pos );
                CString ext = strFileName.Right(3);
                if( ext.CompareNoCase( "scr" ) == 0 )
                {
                    int iCutOff = strFileName.Find( FeData::g_GoodSlashChar );
                    if( iCutOff < 0 )
                    {
                        iCutOff = strFileName.Find( FeData::g_BadSlashChar );
                    }

                    while( iCutOff >= 0 )
                    {
                        strFileName = strFileName.Mid( iCutOff + 1 );

                        iCutOff = strFileName.Find( FeData::g_GoodSlashChar );
                        if( iCutOff < 0 )
                        {
                            iCutOff = strFileName.Find( FeData::g_BadSlashChar );
                        }
                    }
                     
                    FeData::FileName fileName;
                    fileName.Set( (PascalCString)strFileName );

                    //see if the filename is valid on the PS2
                    bool validNameOnPs2 = FeData::FileName::IsCompliantPS2( strFileName );
                    if( validNameOnPs2 == false )
                    {
                        char output[ 256 ] = "";
                        sprintf( output, "CXconDoc::OnInsertExistingScreen: Page name is not valid on PS2: \"%s\"", strFileName );
                        FeData::g_OutputMessage.Add( output, FeData::ErrorOutputMessage );
                    }


                    if( pProject->AddScreenFileName(fileName) )
                    {
                        CMainFrame* pMainFrame = AppMainWnd();
                        pMainFrame->InsertToProjectTree( fileName );
                        m_pProjectFile->SetDirty( true );
               
                    }
                    else
                    {
                        FeData::g_OutputMessage.Add( "The chosen screen is already in the project.",
                                                     FeData::WarningOutputMessage );
                    }
                }
            }
        }
    }
}

void CXConApp::OnUpdateInsertNewScreen(CCmdUI* pCmdUI) 
{
    if( m_pProjectFile != NULL )  
    {
        pCmdUI->Enable( !m_pProjectFile->GetProject()->IsReadOnly() );
    }
    else
    {
        pCmdUI->Enable(FALSE);
    }
}

void CXConApp::OnUpdateInsertExistingScreen(CCmdUI* pCmdUI) 
{
    if( m_pProjectFile != NULL )  
    {
        pCmdUI->Enable( !m_pProjectFile->GetProject()->IsReadOnly() );
    }
    else
    {
        pCmdUI->Enable(FALSE);
    }
}

void CXConApp::OnFileMruFile1() 
{
    OnFileCloseProject();
    LoadProject( (PascalCString)m_ProjectFileList[0] );
}

void CXConApp::OnFileMruFile2() 
{
    OnFileCloseProject();
    LoadProject( (PascalCString)m_ProjectFileList[1] );
}

void CXConApp::OnFileMruFile3() 
{
    OnFileCloseProject();
    LoadProject( (PascalCString)m_ProjectFileList[2] );
}

void CXConApp::OnUpdateFileMruFile1(CCmdUI* pCmdUI) 
{
    m_ProjectFileList.UpdateMenu( pCmdUI );
}

void CXConApp::OnFileProjectProperties() 
{
    CProjectPropertiesDlg dlg;

    if( dlg.DoModal() == IDOK )
    {
        m_pProjectFile->SetDirty( true );
    }
}

void CXConApp::OnUpdateFileProjectProperties(CCmdUI* pCmdUI) 
{
    if( m_pProjectFile != NULL )  
    {
        pCmdUI->Enable( !m_pProjectFile->GetProject()->IsReadOnly() );
    }
    else
    {
        pCmdUI->Enable(FALSE);
    }    
}

void CXConApp::OnFileNewProject() 
{
    if( m_pProjectFile != NULL )
    {
        OnFileCloseProject();
    }

    static char BASED_CODE szFilter[] = "Project Files (*.prj)|*.prj|All Files (*.*)|*.*||";
    CFileDialog fileDialog( FALSE, ".prj", "Project.prj", OFN_HIDEREADONLY|OFN_FILEMUSTEXIST|OFN_ALLOWMULTISELECT, szFilter );

    if( fileDialog.DoModal() == IDOK )
    {
        CString ext = fileDialog.GetFileExt();
        if( ext.CompareNoCase( "prj" ) == 0 )
        {
            PascalCString fileNameString = fileDialog.GetPathName();
            FeData::FileName fileName;

            // See if the file exists
            if( ::GetFileAttributes( fileNameString ) != 0xFFFFFFFF )
            {
                FeData::g_OutputMessage.Add( "The chosen project file already exists.  Project not created.",
                                             FeData::WarningOutputMessage );
                return;
            }
            

            fileName.Set( fileNameString );

            m_pProjectFile = new FeData::ProjectFile( fileName );
            if( m_pProjectFile == NULL )
            {
                FeData::g_OutputMessage.Add( "CXConApp::OnFileNewProject: Out of Memory!",
                                             FeData::ErrorOutputMessage );
                return;
            }

            if( !m_pProjectFile->Create( m_pObjectFactory ) )
            {
                FeData::g_OutputMessage.Add( "CXConApp::OnFileNewProject: Could not create new project file",
                    FeData::ErrorOutputMessage );
            }
            else
            {
                CMainFrame* pMainFrame = AppMainWnd();
                pMainFrame->OnInitProjectTree();
            }

            // Show the properties dialog
            CProjectPropertiesDlg dlg;
            dlg.RemoveCancelButton();
            dlg.DoModal();

            // Create the directories
            ::CreateDirectory( GetProject()->GetPagePath(), NULL );
            ::CreateDirectory( GetProject()->GetScreenPath(), NULL );
            ::CreateDirectory( GetProject()->GetResourcePath(), NULL );
        }
    }
}

void CXConApp::SetProjectDirty( bool isDirty )
{
    m_pProjectFile->SetDirty( isDirty );
}

BOOL CXConApp::SaveAllModified() 
{
    // TODO: Add your specialized code here and/or call the base class
    if ( m_pProjectFile != NULL)
    {
        if ( m_pProjectFile->FileDirty() )
        {
            if (AfxMessageBox(IDS_SAVE_PROJECT_QUERY, MB_YESNO) == IDYES)
            {
                OnFileSaveProject();
            }
        }
        CloseAllDocuments(FALSE);
        delete m_pProjectFile;
        m_pProjectFile = NULL;
        CMainFrame* pMainFrame = AppMainWnd();
        pMainFrame->OnClearProjectTree();
    }

    
    return CWinApp::SaveAllModified();
}


void CXConApp::OnDebugDumpUndoRedoList() 
{
    g_ActionManager.DumpLists();
}

void CXConApp::OnFileExportHashedNames() 
{
    if ( m_pProjectFile != NULL )
    {
        BeginWaitCursor();

        m_pProjectFile->ExportHashedNames();

        EndWaitCursor();
    }
}

void CXConApp::OnUpdateFileExportHashedNames(CCmdUI* pCmdUI) 
{
    if( m_pProjectFile != NULL )
    {
        pCmdUI->Enable( TRUE );
    }
    else
    {
        pCmdUI->Enable( FALSE );
    }
}

int CXConApp::Run() 
{
    // TODO: Add your specialized code here and/or call the base class
    return CWinApp::Run();
}

void CXConApp::OnEditSettings() 
{
   /*CSettingsDialog sd;
   sd.SetWorkingDir( m_strWorkingDir );
   sd.SetCurrentViewer( m_idViewer );
   if ( IDOK == sd.DoModal() )
   {
      m_strWorkingDir = sd.GetWorkingDir();
      SwitchViewer( sd.GetCurrentViewer() );
   }*/

}

void CXConApp::ReloadViewer()
{
   //output the current screen name with no path info
   /*char* message = new char[72];
   strcpy( message, GetProject()->GetName() + m_strWorkingDir.GetLength() + 1 );
   strcat( message, ";" );
   strcat( message, this->GetActiveDocument()->GetScreenName() );
   //SHOWERROR( message );
   //m_pViewerComm->SendMessage( e_ctPage, this->GetActiveDocument()->GetScreenName() );
   //m_pViewerComm->SendMessage( e_ctProject, GetProject()->GetName() + m_strWorkingDir.GetLength() + 1 );
   m_pViewerComm->SendMessage( e_ctReload, message );*/
}

void CXConApp::ReadSettings()
{
   /*DWORD type;
   unsigned long size;
   unsigned char* buffer = new unsigned char[80];
   ::RegCreateKeyEx( HKEY_LOCAL_MACHINE, s_szRegSubKey, 0, NULL, 0, KEY_ALL_ACCESS, NULL, &m_hKey, NULL );
   if ( ::RegQueryValueEx( m_hKey, s_szWorkingDirKey, 0, &type, buffer, &size ) == ERROR_SUCCESS)
   {
      m_strWorkingDir = buffer;
   }
   else
   {
      m_strWorkingDir = "c:\\";
   }

   if ( ::RegQueryValueEx( m_hKey, s_szDefaultViewerKey, 0, &type, buffer, &size ) == ERROR_SUCCESS)
   {
      m_idViewer = buffer[0];
   }
   else
   {
      m_idViewer = PC_VIEWER;
   }

   delete[80] buffer;
   //m_strWorkingDir = "c:\\project";
   //m_idViewer = PC_VIEWER;*/
}

void CXConApp::WriteSettings()
{
   /*unsigned char temp[1];
   temp[0] = m_idViewer;
   ::RegSetValueEx( m_hKey, s_szWorkingDirKey, 0, REG_SZ, (unsigned char*)((LPCTSTR) m_strWorkingDir), m_strWorkingDir.GetLength() );
   //::RegSetValueEx( m_hKey, s_szDefaultViewerKey, 0, REG_SZ, temp, 2 );
   ::RegCloseKey( m_hKey );*/
}

void CXConApp::SwitchViewer( unsigned int viewer )
{
   /*if ( viewer != m_idViewer )
   {
      m_idViewer = viewer;
      switch( m_idViewer )
      {
      case PC_VIEWER:
         m_pViewerComm->SetTarget( "pcviewer" );
         m_pViewerComm->Connect();
         break;
      case PS2_VIEWER:
         m_pViewerComm->SetTarget( "ps2viewer" );
         m_pViewerComm->Connect();
         break;
      case XBOX_VIEWER:
         m_pViewerComm->SetTarget( "xboxviewer" );
         m_pViewerComm->Connect();
         break;
      case GC_VIEWER:
         m_pViewerComm->SetTarget( "gcviewer" );
         m_pViewerComm->Connect();
         break;
      default:
         SHOWERROR( "Unknown Viewer Type" );
         break;
      }
   }*/
}
