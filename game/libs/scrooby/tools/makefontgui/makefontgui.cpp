// makefontgui.cpp : Defines the class behaviors for the application.
//

#include "stdafx.h"
#include "makefontgui.h"
#include "makefontguiDlg.h"
#include <toollib.hpp>

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CMakefontguiApp

BEGIN_MESSAGE_MAP(CMakefontguiApp, CWinApp)
    //{{AFX_MSG_MAP(CMakefontguiApp)
        // NOTE - the ClassWizard will add and remove mapping macros here.
        //    DO NOT EDIT what you see in these blocks of generated code!
    //}}AFX_MSG
    ON_COMMAND(ID_HELP, CWinApp::OnHelp)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMakefontguiApp construction

CMakefontguiApp::CMakefontguiApp()
{
    // TODO: add construction code here,
    // Place all significant initialization in InitInstance
}

/////////////////////////////////////////////////////////////////////////////
// The one and only CMakefontguiApp object

CMakefontguiApp theApp;

/////////////////////////////////////////////////////////////////////////////
// CMakefontguiApp initialization

BOOL CMakefontguiApp::InitInstance()
{
    // Standard initialization
    // If you are not using these features and wish to reduce the size
    //  of your final executable, you should remove from the following
    //  the specific initialization routines you do not need.

#ifdef _AFXDLL
    Enable3dControls();            // Call this when using MFC in a shared DLL
#else
    Enable3dControlsStatic();    // Call this when linking to MFC statically
#endif

    CMakefontguiDlg dlg;
    m_pMainWnd = &dlg;
    int nResponse = dlg.DoModal();
    if (nResponse == IDOK)
    {
        // the constructor of this class processes command-line
        // parameters
        
        tlDataChunk::RegisterDefaultChunks();
        if( (dlg.m_fontName.GetLength() > 0) && (dlg.m_outputName.GetLength() > 0) )
        {        
            tlTypeFace typeface( dlg.m_fontName );
            typeface.SetFontSize( dlg.m_fontSize );
            typeface.SetForeGroundColour( tlColour( static_cast<int>(dlg.m_fgColourR), static_cast<int>(dlg.m_fgColourG), static_cast<int>(dlg.m_fgColourB), static_cast<int>(dlg.m_fgColourA) ) );
            typeface.SetBackGroundColour( tlColour( static_cast<int>(dlg.m_bgColourR), static_cast<int>(dlg.m_bgColourG), static_cast<int>(dlg.m_bgColourB), static_cast<int>(dlg.m_bgColourA) ) );
            
            // build an output chunk
            tlDataChunk* outchunk = new tlDataChunk;
            
            tlHistory* history = new tlHistory();
            char temp[256];
            ::LoadString( NULL, IDS_TITLE, temp, 256 );
            ::LoadString( NULL, IDS_VERSION, temp + strlen( temp ), 256 );
            history->AddLine( temp );
            
            // Logon name and date info
            time_t ltime;
            struct tm *now;
            time( &ltime );
            now = localtime( &ltime );
            strftime( temp, 256, "Run at %B %d, %Y, %H:%M:%S", now );
            
            history->AddLine( temp );
            
            outchunk->AppendSubChunk( history->Chunk() );
            delete history;
            
            tlTextureFont* font = typeface.CreateTextureFont( 256, 256 );
            outchunk->AppendSubChunk( font->Chunk() );
            delete font;
            
            // create the new output file
            tlFile output( new tlFileByteStream( dlg.m_outputName, omWRITE ), tlFile::CHUNK32 );
            
            if( !output.IsOpen() ) 
            {
                exit( -1 );
            }
            
            // get the output wrapper chunk to write its data out
            // to the file
            outchunk->Write( &output );
            
            // cleanup the no-longer-needed wrapper chunks
            delete outchunk;
        }
    }
    else if (nResponse == IDCANCEL)
    {
    }

    // Since the dialog has been closed, return FALSE so that we exit the
    //  application, rather than start the application's message pump.
    return FALSE;
}
