//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "quickviewer.hpp"

// This trick culls out a lot of Win32 cruft, making compilation a bit faster
#define WIN32_LEAN_AND_MEAN
#define WIN32_EXTRA_LEAN
#include <windows.h>
#include <mmsystem.h> 
#include <assert.h>
#include <iostream.h>

#include <maya/MGlobal.h>
#include <maya/MString.h>

#include "../../../../apps/p3dview/code/quickview/quickview.hpp"
//#include "../../../../apps/p3dview/code/net/socket.hpp"
 
#include "animnode.hpp"
#include "deformerExpression.hpp"
#include "exportFunctions.hpp"
#include "exporteroptions.hpp"

#include <rule/inc/ruleParser.hpp>  // Just so I can access static ::Clear() to enforce memory cleanup

#include <bewert_debug.h>   // Enables memory leak tracking

//********************************************************************************
//Static Global Variables
//********************************************************************************
//static QuickViewer* viewer = NULL;
char viewerPath[_MAX_PATH];

MString quickViewerCmd::mTarget;

//===========================================================================
// SetupQuickViewer
//===========================================================================
// Description: Opens and reads the Registry key:
//
//  HKEY_LOCAL_MACHINE\SOFTWARE\Radical Entertainment\Pure 3D Viewer\Pathname
//
//              If successful, its value is read into the global "viewerPath".
//
//              This is called when the plug-in is first registered,
//              and when an attempt is made to FindQuickViewerApp().
//
// Constraints: This Registry key is required for the QuickViewer to work.
//              The QuickViewer class reads the same key to determine the
//              executable for p3dView.exe.
//
//              See: .../apps/p3dview/code/quickview/quickview.cpp
//
// Parameters:  (void)
//
// Return:      (bool): TRUE if Pure3D Pathname is found; FALSE if not.
//
//===========================================================================
bool SetupQuickViewer()
{
    HKEY    viewerKey;
    DWORD   pathSize = _MAX_PATH;   // Note pathSize should be initialized to max size of buffer.
    LONG    result;

    // Using the "proper" way to open Registry keys under Win32: RegOpenKeyEx
    // This has the advantage of specifying the Security Access Mask
    result = RegOpenKeyEx( HKEY_LOCAL_MACHINE, "SOFTWARE\\Radical Entertainment\\Pure 3D Viewer", 0, KEY_READ, &viewerKey );
    if ( result == ERROR_SUCCESS )
    {
        result = RegQueryValueEx(viewerKey, "Pathname", NULL, NULL, (unsigned char*)viewerPath, &pathSize);
    }

    // ERROR_SUCCESS -- what a _stupid_ name for a define!
    if ( result != ERROR_SUCCESS )
    {
        MGlobal::displayWarning( "Quick Viewer must be registered prior to use." );
        return false;
    }

    // A result value of 0 (zero) means OK.
    return true;
}

//===========================================================================
// IsPotentiallyP3dViewExe
//===========================================================================
// Description: Examines the filename in the specified path description
//              and assesses whether said file is likely to be the
//              "p3dview.exe" executable.
//
// Constraints: If the wrong path is inadvertantly entered into the 
//              Registry, manual intervention will be required to fix it.
//              This Find procedure is only called if the key doesn't
//              exist.
//
// Parameters:  char* p3dViewPath: Fully qualified path to the file chosen
//                                 by the user to be "p3dview.exe".
//              Note: Cannot be (const) because Microsoft functions do 
//                    not understand (const)-correctness!
//
// Return:      (bool): TRUE if file is potentially "p3dview.exe"; else FALSE.
//
//===========================================================================
bool IsPotentiallyP3dViewExe( char* p3dViewPath )
{
    char drive[_MAX_DRIVE];
    char dir[_MAX_DIR];
    char fname[_MAX_FNAME];
    char ext[_MAX_EXT];

    _splitpath( p3dViewPath, drive, dir, fname, ext );
    
    // File part must be "p3dView"
    if ( stricmp( fname, "p3dview" ) != 0 )
    {
        return false;
    }

    // Extension must be ".exe" (note that _splitpath() includes the 'dot')
    if ( stricmp( ext, ".exe" ) != 0 )
    {
        return false;
    }

// Version Resource not implemented yet...
// Apparently the P3DView launcher doesn't incorporate a 
// Version resource, so no point looking for it...

//    DWORD versionSize;
//    DWORD setToZeroForSomeStrangeReasonKnownOnlyToMicrosoft;
//
//    versionSize = GetFileVersionInfoSize( p3dViewPath, &setToZeroForSomeStrangeReasonKnownOnlyToMicrosoft );
//    if ( versionSize == 0 )
//    {
//        return false;
//    }
//
//    void* pBlock = malloc( versionSize );
//    LPVOID      buffer;
//
//    GetFileVersionInfo( p3dViewPath, 0, versionSize, pBlock );
//
//    // Look for "Original Filename" string - should be "p3dview.exe"
//    VerQueryValue( pBlock, &buffer, 
//
//    free( pBlock );

    return true;
}

//===========================================================================
// FindQuickViewerApp
//===========================================================================
// Description: This is called when an attempt is made to activate the
//              QuickViewer and the pathname for the executable has not 
//              been entered in the proper Registry key:
//
//  HKEY_LOCAL_MACHINE\SOFTWARE\Radical Entertainment\Pure 3D Viewer\Pathname
//
//              The user is warned that they will be presented with a file
//              dialog, and that they are expected to select the "p3dView.exe"
//              application.  Steps are taken to verify that the executable
//              selected is, in fact, "p3dView.exe".
//
//              Once the path is registered this procedure calls
//              SetupQuickViewer() to assign the global path variable.
//
// Constraints: If the wrong path is inadvertantly entered into the 
//              Registry, manual intervention will be required to fix it.
//              This Find procedure is only called if the key doesn't
//              exist.  See IsPotentiallyP3dViewExe().
//
// Parameters:  (void)
//
// Return:      (bool): TRUE if Registry key is successfully entered
//                      and the subsequent Setup succeeds; else FALSE.
//
//    Comment:  This turned out to require a helluva lot of code just to
//              add a "pick a file" feature!
//
//===========================================================================
bool FindQuickViewerApp()
{
    static const char* kTitle = "Find Pure3D Viewer";

    OPENFILENAME                ofn;                // common dialog box structure
    char                        szFile[_MAX_PATH];  // buffer for filename
    memset( szFile, 0, _MAX_PATH );

    // Inform the user why a file dialog is about to 
    // pop up in front of their face.
    MessageBox( NULL, "It is necessary to register the location of the Pure3D Viewer.\nPlease select the \"p3dview.exe\" application in the following dialog.", "Register Pure3D Viewer", MB_OK | MB_ICONINFORMATION );

    // Initialize OPENFILENAME
    ZeroMemory(&ofn, sizeof(OPENFILENAME));
    ofn.lStructSize = sizeof(OPENFILENAME);
    ofn.hwndOwner = NULL;
    ofn.lpstrFile = szFile;     // Storage for returned filename.
    ofn.nMaxFile = sizeof(szFile);
    ofn.lpstrFilter = "Executable\0*.exe\0";
    ofn.nFilterIndex = 1;       // 1-based index
    ofn.lpstrTitle = kTitle;
    ofn.lpstrInitialDir = NULL;
    ofn.Flags = OFN_PATHMUSTEXIST | OFN_FILEMUSTEXIST;

    // Display the Open dialog box.   
    if (GetOpenFileName(&ofn)==TRUE)
    {
        // Attempt to assert that the executable selected
        // is, in fact, p3dView.exe.
        if ( IsPotentiallyP3dViewExe( ofn.lpstrFile ) )
        {
            char path_buffer[_MAX_PATH];
            char drive[_MAX_DRIVE];
            char dir[_MAX_DIR];
            char fname[_MAX_FNAME];
            char ext[_MAX_EXT];

            _splitpath( ofn.lpstrFile, drive, dir, fname, ext );
            _makepath( path_buffer, drive, dir, NULL, NULL );

            // Strip slash from end of path
            if ( strlen( path_buffer ) > 1 )
            {
                path_buffer[strlen(path_buffer)-1] = '\0';
            }

            HKEY    viewerKey;
            DWORD   disposition;
            LONG    result;

            // Use the proper Win32 method for creating the Registry key.
            // If the key already exists this will behave the same as RegOpenKeyEx().
            result = RegCreateKeyEx( HKEY_LOCAL_MACHINE, "SOFTWARE\\Radical Entertainment\\Pure 3D Viewer", 0, NULL, REG_OPTION_NON_VOLATILE, KEY_WRITE, NULL, &viewerKey, &disposition );
            if ( result == ERROR_SUCCESS )
            {
                result = RegSetValueEx(viewerKey, "Pathname", NULL, REG_SZ, (unsigned char*)path_buffer, strlen( path_buffer ) + 1 );
            }
            else
            {
                cerr << "** FAILED to open Registry key ** " << endl;
            }
        }
        else
        {
            MessageBox( NULL, "The file you have chosen is not \"p3dView.exe\".", "Registration failed", MB_OK | MB_ICONERROR );
            return false;
        }

    }
    else
    {
        DWORD error = CommDlgExtendedError();
        cerr << "Dialog error: " << error << endl;
    }

    // Registry key may or may not be in place.
    // The Setup function will indicate whether things are "Go."
    return SetupQuickViewer();
}

//********************************************************************************
//Class implementation : quickViewerCmd
//********************************************************************************
void* quickViewerCmd::creator() 
{
    return new quickViewerCmd;
}

MStatus quickViewerCmd::doIt(const MArgList& args)
{  
     MStatus                             status = MS::kSuccess;

#ifdef DEBUG_MEMORY_TRACK

    MemoryTrackReset();

#endif
    
    if ( ( viewerPath == NULL ) || ( strlen( viewerPath ) == 0 ) )
    {
        bool bFoundIt = FindQuickViewerApp();
        if ( !bFoundIt )
        {
            MGlobal::displayError( "Unable to determine location for Pure3D Viewer." );
            return MS::kFailure;
        }
    }

    ExporterOptions options;

    float red = 0.0f;
    float green = 0.0f;
    float blue = 0.0f;

    MString script = "";
    MString target = "";
    int keepTrying;

     for (unsigned i = 0; i < args.length(); i++)
     {
        if (MString("-background") == args.asString(i))
        {
            red = (float)args.asDouble(++i);
            green = (float)args.asDouble(++i);
            blue = (float)args.asDouble(++i);
        }

        if (MString("-script") == args.asString(i))
        {
            script = args.asString(++i);
        }

        if (MString("-target") == args.asString(i))
        {
            target = args.asString(++i);
        }

        if (MString("-selection") == args.asString(i))
        {
            options.SetExportSelection(true);
        }

        if (MString("-pathname") == args.asString(i))
        {
            setResult( MString( viewerPath ) );
            return MS::kSuccess;
        }

        if (MString("-find") == args.asString(i))
        {
            bool bSuccess = FindQuickViewerApp();
            return ( bSuccess ? MS::kSuccess : MS::kFailure );
        }
     }

    // *** TODO: The following Clear() is currently in THREE different places:
    //              p3dmayaexp.cpp
    //              quickexporter.cpp
    //              quickeiewer.cpp
    //     Find someway to centralize it!

    // Clear cached Animation nodes and AnimRanges.
    AnimNode::Reset();
    // Clear previously cached Textures.
    TextureAnimNode::Clear();
    // Clear cached Expression animations and mixers.
    DeformerExpression::Clear();

    MString optionsStr;
    MGlobal::executeCommand(MString("P3DGetExportOptions()"),optionsStr);
    options.Initialize(optionsStr);      

    // Note: The 'viewerPath' is initialized via SetupQuickViewer() 
    //       when the Exporter plug-in is registered.
    char filename[1024];
    sprintf(filename,"%s\\temp_viewer_file",viewerPath);
    P3dExportToFile( filename, &status );

    // MEMORY LEAK PATCH: 28 Jun 2002
    options.Clear();
    // END MEMORY LEAK PATCH

    // Don't launch Viewer if Export failed!
    if ( status == MS::kSuccess )
    {
        if ( QuickViewer::IsRunning() && ( mTarget != target ) )
        {
            QuickViewer::Shutdown();

            keepTrying = 100;
            while ( keepTrying-- && QuickViewer::IsRunning() )
            {
                CDEBUG << "Waiting for Viewer to shutdown so I can switch targets..." << endl;
                Sleep( 50 );
            }

            // If Viewer failed to shutdown, bail on error.
            if ( QuickViewer::IsRunning() )
            {
                gExportLog.Add( CExportLogEntry( ExportLog::kQuickViewerNoSwitchTarget, target ) );
                status = MS::kFailure;
            }
        }
    }

    if ( status == MS::kSuccess )
    {
        if ( !QuickViewer::IsRunning() )
        {
            MString         commandLine = ( "-ini " + target );

            QuickViewer::Start( commandLine.asChar(), viewerPath );
        }

        keepTrying = 100;
        while ( keepTrying-- && !QuickViewer::IsRunning() )
        {
            CDEBUG << "Waiting for Viewer to start..." << endl;
            Sleep(50);
        }

        // If Viewer failed to start, bail on error.
        if ( !QuickViewer::IsRunning() ) 
        {
            gExportLog.Add( CExportLogEntry( ExportLog::kQuickViewerNoStart, viewerPath ) );
            status = MS::kFailure;
        }
    }

    if ( status == MS::kSuccess )
    {
        if ( QuickViewer::IsRunning() )
        {
            QuickViewer::Command("echo flush");
            QuickViewer::Command("flush");

            char command[1024];

            if (script.length()>0)
            {
                FILE* scriptFile;

                if( (scriptFile  = fopen( script.asChar(), "r" )) != NULL )
                {
                    char line[256];

                    while (!feof(scriptFile))
                    {
                        if (fgets(line,256,scriptFile)==NULL)
                        {
                            break;
                        }
                        sprintf(command,"echo %s",line);

                        QuickViewer::Command(command);
                        QuickViewer::Command(line);
                    }
                    fclose( scriptFile );
                }
            }

            sprintf(command,"echo backgroundColour %d %d %d", (int)(red*255), (int)(green*255), (int)(blue*255));
            QuickViewer::Command(command);
            sprintf(command,"backgroundColour %d %d %d", (int)(red*255), (int)(green*255), (int)(blue*255));
            QuickViewer::Command(command);

            CDEBUG << "Sending LOAD command..." << endl;
            sprintf(command, "echo load \"%s\\temp_viewer_file.p3d\"", viewerPath);
            QuickViewer::Command(command);
            sprintf(command, "load \"%s\\temp_viewer_file.p3d\"", viewerPath);
            QuickViewer::Command(command);

            if (options.Filename()!=NULL)
            {
                char buffer[1000];
                sprintf(buffer,"copy temp_viewer_file.p3d \"%s.p3d\"",options.Filename());
                system(buffer);
            }

            mTarget = target;

        }       // if ( QuickViewer is running )
    }

    gExportLog.Report();
    const char* logResults = gExportLog.AsChar();
    switch( gExportLog.Severity() )
    {
        case ExportLog::kLogSeverityWarning:
        {
            MGlobal::displayWarning( logResults );
            break;
        }
        case ExportLog::kLogSeverityError:
        {
            MGlobal::displayError( logResults );
            break;
        }
        default:
        {
            MGlobal::displayInfo( logResults );
            break;
        }
    }
    gExportLog.Clear();

// ------------  MEMORY TRACK  ------------------

#ifdef DEBUG_MEMORY_TRACK

    AnimNode::Reset();
    // Clear previously cached Textures.
    TextureAnimNode::Clear();
    // Clear cached Expression animations and mixers.
    DeformerExpression::Clear();

    CLog::CleanUp();
    CRuleParser::Clear();

    DumpUnfreed();
    std::clog << gMemoryTrackLog << std::endl;
    gMemoryTrackLog.Clear();

#endif

    return status;
}

