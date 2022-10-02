// FE Data TesterDoc.cpp : implementation of the CFEDataTesterDoc class
//

#include "stdafx.h"
#include "FE Data Tester.h"

#include "FE Data TesterDoc.h"

#include "..\FeData\NamedElements\Project.h"
#include "..\FeData\Loaders\ProjectLoader.h"
#include "..\FeData\Savers\ProjectSaver.h"
#include "..\FeData\NamedElements\Screen.h"
#include "..\FeData\Loaders\ScreenLoader.h"
#include "..\FeData\Savers\ScreenSaver.h"
#include "..\FeData\Factories\BaseFactory.h"
#include "..\FeData\Factories\GDIFactory.h"
#include "..\FeData\Helpers\OutputMessage.h"
#include "..\FeData\Helpers\FileName.h"
#include "..\FeData\ResourceFiles\ScreenFile.h"
#include "..\FeData\ResourceFiles\ProjectFile.h"
#include "..\FeData\ResourceFiles\PageFile.h"
#include "..\FeData\ResourceFiles\TextStyleFile.h"
#include "XML\XMLTree.h"

//?ET? - Hack for loading and saving page files
#include "..\FeData\NamedElements\Page.h"
#include "..\FeData\Loaders\PageLoader.h"
#include "..\FeData\Savers\PageSaver.h"


#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CFEDataTesterDoc

IMPLEMENT_DYNCREATE(CFEDataTesterDoc, CDocument)

BEGIN_MESSAGE_MAP(CFEDataTesterDoc, CDocument)
    //{{AFX_MSG_MAP(CFEDataTesterDoc)
    ON_COMMAND(ID_FILE_OPEN, OnFileOpen)
    ON_COMMAND(ID_FILE_SAVE, OnFileSave)
    //}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CFEDataTesterDoc construction/destruction

CFEDataTesterDoc::CFEDataTesterDoc() :
m_PageFile( NULL ),
m_ScreenFile( NULL ),
m_ProjectFile( NULL ),
m_ObjectFactory( NULL )
{
    m_ObjectFactory = new FeData::GDIFactory;
}


CFEDataTesterDoc::~CFEDataTesterDoc()
{
    if( m_ProjectFile != NULL )
    {
        FeData::Project* project = m_ProjectFile->GetProject();

        if( project != NULL )
        {
            FeData::ResourceFileManager* resFileMan = project->GetResourceFileManager();

            if( m_PageFile != NULL )
            {
                resFileMan->Release( (FeData::ResourceFile**)&m_PageFile );
            }

            if( m_ScreenFile != NULL )
            {
                resFileMan->Release( (FeData::ResourceFile**)&m_ScreenFile );
            }
        }

        delete m_ProjectFile;
        m_ProjectFile = NULL;
    }


    if( m_ObjectFactory != NULL )
    {
        delete m_ObjectFactory;
        m_ObjectFactory = NULL;
    }
}


BOOL CFEDataTesterDoc::OnNewDocument()
{
    static bool firstTime = true;

    if( firstTime )
    {
        firstTime = false;
        return FALSE;
    }


    if (!CDocument::OnNewDocument())
    {
        return FALSE;
    }

    static char BASED_CODE szFilter[] = "Project Files (*.prj)|*.prj|All Files (*.*)|*.*||";
    CFileDialog fileDialog( TRUE, ".prj", NULL, OFN_HIDEREADONLY, szFilter );

    if( fileDialog.DoModal() == IDOK )
    {
        PascalCString fileNameString = fileDialog.GetPathName();
        FeData::FileName fileName;
        fileName.Set( fileNameString );

        m_ProjectFile = new FeData::ProjectFile( fileName );

        if( m_ProjectFile->Load( m_ObjectFactory ) )
        {
            return TRUE;
        }
        else
        {
            return FALSE;
        }
    }
    return FALSE;
}



/////////////////////////////////////////////////////////////////////////////
// CFEDataTesterDoc serialization

void CFEDataTesterDoc::Serialize(CArchive& ar)
{
    if (ar.IsStoring())
    {
        // TODO: add storing code here
    }
    else
    {
        // TODO: add loading code here
    }
}

/////////////////////////////////////////////////////////////////////////////
// CFEDataTesterDoc diagnostics

#ifdef _DEBUG
void CFEDataTesterDoc::AssertValid() const
{
    CDocument::AssertValid();
}

void CFEDataTesterDoc::Dump(CDumpContext& dc) const
{
    CDocument::Dump(dc);
}
#endif //_DEBUG


/////////////////////////////////////////////////////////////////////////////
// CFEDataTesterDoc commands

void CFEDataTesterDoc::OnFileOpen() 
{
    using namespace FeData;

    FeData::Project* project = m_ProjectFile->GetProject();

    static char BASED_CODE szFilter[] = "Screen Files (*.scr)|*.scr|Page Files [Temporary] (*.pag)|*.pag|TextStyle Files [Temporary] (*.ts)|*.ts|All Files (*.*)|*.*||";
    CFileDialog fileDialog( TRUE, ".scr", NULL, OFN_HIDEREADONLY, szFilter );

    if( fileDialog.DoModal() == IDOK )
    {
        PascalCString fileName = fileDialog.GetPathName();
        FileName theFileName;
        theFileName.Set( fileName );
            
        ResourceFileManager* resFileMan = project->GetResourceFileManager();


        PageFile* oldPageFile = m_PageFile;
        ScreenFile* oldScreenFile = m_ScreenFile;

        CString ext = fileDialog.GetFileExt();
        if( ext.CompareNoCase( "pag" ) == 0 )
        {
            // Load the Page
            m_PageFile = resFileMan->GetPageFile( theFileName, project );
            m_ScreenFile = NULL;
        }
        else if( ext.CompareNoCase( "scr" ) == 0 )
        {
            // Load the Screen
            m_ScreenFile = resFileMan->GetScreenFile( theFileName, project );
            m_PageFile = NULL;
        }
        else if( ext.CompareNoCase( "ts" ) == 0 )
        {

            PascalCString fileNameString = fileDialog.GetPathName();
            FileName fileName;
            fileName.Set( fileNameString );
            TextStyleFile* pTextStyleFile = new TextStyleFile( fileName );
            pTextStyleFile->Load();
            delete pTextStyleFile;
        }


        // Release the old data
        if( oldPageFile != NULL )
        {
            resFileMan->Release( (FeData::ResourceFile**)&oldPageFile );
        }

        if( oldScreenFile != NULL )
        {
            resFileMan->Release( (FeData::ResourceFile**)&oldScreenFile );
        }

        
        UpdateAllViews( NULL );
    }
}


FeData::Page* CFEDataTesterDoc::GetPage()
{
    if( m_PageFile != NULL )
    {
        return m_PageFile->GetPage();
    }
    else
    {
        return NULL;
    }
}

FeData::Screen* CFEDataTesterDoc::GetScreen()
{
    if( m_ScreenFile != NULL )
    {
        return m_ScreenFile->GetScreen();
    }
    else
    {
        return NULL;
    }
}


void CFEDataTesterDoc::OnFileSave() 
{
    if( m_PageFile != NULL )
    {
        m_PageFile->Save();
    }
    else if( m_ScreenFile != NULL )
    {
        m_ScreenFile->Save();
    }
    else if( m_ProjectFile != NULL )
    {
        m_ProjectFile->Save();
    }
}
