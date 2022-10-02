//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "exportFunctions.hpp"

#include "traversalcontroller.hpp"
#include "exporteroptions.hpp"
#include "exporterutility.hpp"
#include "rule/rule.h"
#include "log/inc/logDialog.h"
#include "launchProcess.hpp"

#include "tlInventory.hpp"
#include "tlSkeleton.hpp"
#include "tlTexture.hpp"
#include "tlPrimGroupMesh.hpp"
#include "tlFile.hpp"
#include "tlFileByteStream.hpp"
#include "tlMemByteStream.hpp"
#include "tlDataChunk.hpp"
#include "tlCamera.hpp"
#include "tlCameraAnim.hpp"
#include "tlSkin.hpp"
#include "tlLight.hpp"
#include "tlLightAnim.hpp"
#include "tlLightGroup.hpp"
#include "tlFrameController.hpp"
#include "tlVisAnim.hpp"
#include "tlMultiController.hpp"
#include "tlTextureAnim.hpp"
#include "tlScenegraph.hpp"
#include "tlParticleSystem.hpp"
#include "tlExpressionAnim.hpp"
//#include "tlDeformPolySkin.hpp"
#include "tlExportInfo.hpp"
#include "p3dmayaexp.hpp"
#include "tlScenegraph.hpp"
#include "tlScenegraphTransformAnim.hpp"
#include "tlFileByteStream.hpp"
#include "tlMemByteStream.hpp"
#include "dospath.hpp"

#include <maya/MDistance.h>
#include <maya/MFileIO.h>               // ::currentFile()
#include <maya/MGlobal.h>
#include <maya/MComputation.h>

#include <direct.h>     // _chdir

#include <bewert_debug.h>

//===========================================================================
// The global Exporter Log.

CExportLog                      gExportLog;

//===========================================================================

//===========================================================================
// ExtractInventoryFromScene            (DLLEXPORT)
//===========================================================================
// Description: Extracts all necessary information from currently loaded
//              scene and stores it in a toollibInventory object.
//
//              24 Dec 2001: Now sorts PrimGroups within each tlPrimGroupMesh
//                           so that PrimGroups using a Translucent shader
//                           are rendered last. (Bug #430)
// Constraints: 
//
// Parameters:  bool bToFile: TRUE if destination of tlInventory is a
//                            Pure3D disk file; FALSE if memory image.
//                            This argument controls the "abort-ability"
//                            of the process - user-aborts are not queried
//                            during exports to memory image.
//              MStatus* pStatus: Pointer to MStatus object; may be NULL.
//
// Return:      (tlInventory*): Pointer to the resulting toolllibInventory object.
//
//===========================================================================
tlInventory* ExtractInventoryFromScene( bool bToFile, MStatus* pStatus )
{ 
    MStatus                             status = MS::kSuccess;

    tlInventory* toollibInventory = new tlInventory;
    status = TraversalController::MainLoop(toollibInventory, bToFile );

    UpdateExportProgress( 79, "Organize Inventory" );

    // The following section sorts the PrimGroups within each tlPrimGroupMesh.
    if ( status == MS::kSuccess )
    {   
        tlInventory::Iterator<tlPrimGroupMesh> iter(toollibInventory);
        for ( tlPrimGroupMesh* mesh = iter.First(); mesh; mesh = iter.Next() )
        {
            // Required to set 'shaderPtr' within PrimGroupMesh entities.
            mesh->ResolveReferences(toollibInventory);
            mesh->SortPrimGroups();
        }
    }

    if ( status != MS::kSuccess )
    {
        delete toollibInventory;
        toollibInventory = NULL;
    }

    if ( pStatus != NULL )
    {
        *pStatus = status;
    }

    return toollibInventory;
}

bool OutputInventoryChunksToP3DFile(const char* fname, tlDataChunk* outchunk)
{
    bool success = false;

    if (!outchunk)
    {
        return false;
    }
    
    // create the new output file
    char filename[1024]; 
    sprintf(filename,"%s.p3d",fname);
    tlFile* output = new tlFile(new tlFileByteStream(filename,omWRITE), tlFile::CHUNK32);

    // MEMORY LEAK PATH: 03 Jun 2002
    if ( output->IsOpen() )
    {
        outchunk->Write(output);
        output->Close();
        success = true;
    }
    else
    {
        gExportLog.Add( CExportLogEntry( ExportLog::kWriteFail, fname ) );
    }
    // END MEMORY LEAK PATCH

    delete output;

    return success;
}

void* OutputInventoryChunksToMem(unsigned long &mem_length, tlDataChunk* outChunk)
{
    if (!outChunk)
    {
        return 0;
    }

    tlMemByteStream* mem_stream = new tlMemByteStream((BYTE*)NULL, outChunk->Size());
    tlFile* fs = new tlFile(mem_stream, tlFile::CHUNK32,  FALSE);
    outChunk->Write(fs);
    delete fs;

    mem_length = mem_stream->GetPosition();
    void* mem_loc = GlobalAlloc(0,mem_length);
    if (mem_loc)
    {
        mem_stream->SetPosition(0);
        mem_stream->GetBytes(mem_loc,mem_length);
    }

    delete mem_stream;
    return mem_loc;
}

//===========================================================================
// P3dExportToMem           (DLLEXPORT)
//===========================================================================
// Description: Exports the currently loaded scene to a memory block.
//
// Constraints: 
//
// Parameters:  unsigned long& mem_length: << unknown >>
//
// Return:      (void*): Pointer to memory block where exported data is stored.
//
//===========================================================================
void* P3dExportToMem(unsigned long &mem_length)
{
     void*                               mem_loc = NULL;

     tlInventory*                        toollibInventory = ExtractInventoryFromScene( false );

     if ( toollibInventory != NULL )
     {
          tlDataChunk* invChunk = toollibInventory->Export();
          tlDataChunk* exportInfoChunk = MakeExportInfo();
          invChunk->InsertSubChunk(exportInfoChunk, 0);
          mem_loc = OutputInventoryChunksToMem(mem_length,invChunk);

          delete toollibInventory;
          delete invChunk;
     }

    return mem_loc;
}

//===========================================================================
// IsExportingCanceled          (DLLEXPORT)
//===========================================================================
// Description: Determines if the user has requested an abort.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (bool): TRUE if user has requested an abort; else FALSE.
//
//===========================================================================
bool IsExportingCanceled( )
{
     bool                                bCancelled = false;

#if ( MAYA_API_VERSION < 400 )

     // ** I can't see how this can possibly work as intended? **
     // Maya does not allow UI interaction while a plug-in is running!
    int result;
    MGlobal::executeCommand( "window -exists ProgressWnd", result );
    if( !result )
         bCancelled = true;

#endif        // MAYA_API_VERSION

     bCancelled |= gProgress.PollInterrupt();

     return bCancelled;
}
 
//===========================================================================
// UpdateExportProgress         (DLLEXPORT)
//===========================================================================
// Description: Updates the MEL window which indicates the progress for the
//              export.
//
// Constraints: Maya v3 will use a popup MEL window to display this
//              information; Maya v4 will use its global progressBar control.
//
// Parameters:  int prgnum: The current progress as a percentage.
//
// Return:      (void)
//
//===========================================================================
void UpdateExportProgress( int prgnum, const char* annotation )
{
     char                                progressMsg[256];

     if ( annotation )
     {
          strcpy( progressMsg, annotation );
     }
     else    // If not specified, use default.
     {
          strcpy( progressMsg, "Exporting Pure3D file" );
     }

     gProgress.Progress( prgnum, annotation );

#if ( MAYA_API_VERSION < 400 )

    char msg[ 512 ];
    sprintf( msg, "if ( `text -q -exists txtProgress` ) { text -edit -label \"%s, %d%% done... (ESC to cancel)\" txtProgress; }", progressMsg, prgnum );
//    sprintf( msg, "text -edit -label \"%s, %d%% done... (ESC to cancel)\" txtProgress", progressMsg, prgnum );
    MString prgTxt( msg );   
    MGlobal::executeCommand( prgTxt );

#endif        // MAYA_API_VERSION
}

//===========================================================================
// P3dExportToFile          (DLLEXPORT)
//===========================================================================
// Description: Exports the currently loaded scene as a Pure3D data file.
//
// Constraints: CONTINUES from TraversalController::MainLoop().
//  
//              Because this is an exported DLL function with C linkage
//              it is not possible to return an MStatus value; instead,
//              a pointer to an MStatus object is provided as an argument.
//
// Parameters:  const char* fname: The filename for the exported file.
//              MStatus* pStatus: Pointer to a MStatus object; may be NULL.
//
// Return:      (void)
//
//===========================================================================
void P3dExportToFile(const char* fname, MStatus* pStatus )
{
     MStatus                             status = MS::kSuccess;

     if ( ( fname == NULL ) || ( strlen( fname ) == 0 ) )
     { 
        MGlobal::displayError( "Cannot export: No filename specified." );
        return;
     }

    StartExport();

/*
setAttr -lock false p3dDefaultExporterSetting.exportedFile;
*/

     // ExporterOptions strips the filename extension... tack it back on.
     MString                     realFilename( fname );
     realFilename = realFilename + ".p3d";

    // Build fullpath from filename
    char fullpath[_MAX_PATH];

    // Get path of currently loaded scene
    MString currentScene = MFileIO::currentFile();
    MFileObject                 fileObject;
    fileObject.setFullName( currentScene );
    strcpy( fullpath, fileObject.rawPath().asChar() );

    // Use current directory to build fully qualified path to exported file.
    _chdir( fullpath );
    realFilename = _fullpath( fullpath, realFilename.asChar(), _MAX_PATH );

     gProgress.UseWindow( ExporterOptions::ProgressInWindow() );

     gProgress.Start( 100, 0, "Pure3D Maya Exporter" );

#if ( MAYA_API_VERSION < 400 )

     MString displayWnd = "string $window = `window -widthHeight 300 60 -title \"Exporting Progress\" ProgressWnd`;\n"
        + MString( "columnLayout -adjustableColumn true;\n") 
        + MString( "text -label \"Exporting Pure3D file, 0% done... (ESC to cancel)\" txtProgress;\n" )
//      + MString( "button -label \"Cancel\" -command (\"deleteUI -window \" + $window);\n")
        + MString( "showWindow $window;\n" );

     MGlobal::executeCommand( displayWnd );

#endif        // MAYA_API_VERSION

     tlInventory*                        toollibInventory = NULL;
     tlDataChunk*                        invChunk = NULL;
     tlDataChunk*                        exportInfoChunk = NULL;

     {    
          UpdateExportProgress( 0, "Extract Inventory" );
          toollibInventory = ExtractInventoryFromScene( true, &status );

          if( IsExportingCanceled( ) )
          {
              status = MS::kFailure;
          }
     }

    // Note: Progress steps 1 through 80 are in TraversalController::MainLoop()
    //       (this is initiated from ExtractInventoryFromScene(), above).

    // CONTINUES from TraversalController::MainLoop()

//    if ( status == MS::kSuccess )
//    {
//        UpdateExportProgress( 80, "Sort Animations" );
//
//        if( IsExportingCanceled( ) )
//        {
//            status = MS::kFailure;
//        }
//    }

     if ( status == MS::kSuccess )
     {
          UpdateExportProgress( 80, "Write to Pure3D stream" );
          invChunk = toollibInventory->Export();

          if( IsExportingCanceled( ) )
          {
              status = MS::kFailure;
          }
     }

     if ( status == MS::kSuccess )
     {
          UpdateExportProgress( 85, "Prepend Pure3D Annotation" );
          exportInfoChunk = MakeExportInfo();
          invChunk->InsertSubChunk(exportInfoChunk, 0);

          if( IsExportingCanceled( ) )
          {
              status = MS::kFailure;
          }
     }

     if ( status == MS::kSuccess )
     {
          UpdateExportProgress( 86, "Serialize to disk file" );
          bool success = OutputInventoryChunksToP3DFile(fname, invChunk);

          if( !success || IsExportingCanceled( ) )
          {
              status = MS::kFailure;
          }
     }

    if ( status == MS::kSuccess )
    {
        CreateLaunchEnvVar( "P3DPATH", MFileIO::currentFile().asChar(), realFilename.asChar() );

        UpdateExportProgress( 90, "Post-Process" );

          // If user has specified a post-process operation, do it now.
          if ( ( ExporterOptions::PostProcessScriptEnable() ) && ( ExporterOptions::PostProcessScript() != NULL ) )
          {
                MString         postScript( ExporterOptions::PostProcessScript() );

#ifdef WIN32

//                MString         expandedPostScript;
//                MString         currentFile;
//                MFileObject     fileObject;
//                currentFile = MFileIO::currentFile();
//
//                // Expand all environment variables in postProcessScript
//                fileObject.setFullName( postScript );
//                expandedPostScript = fileObject.fullName();
//
//                // Is postScript a relative or absolute path?
//                BOOL bRelative = PathIsRelative( expandedPostScript.asChar() );
//
//                // if relative: convert to absolute, relative to the currently loaded scene.
//                fileObject.setFullName( currentFile );

                postScript += " \"";
                postScript += realFilename.asChar();
                postScript += "\"";

                MString launchAnnotation = "'";
                launchAnnotation += postScript;
//                launchAnnotation += " \"";
//                launchAnnotation += realFilename;
                launchAnnotation += "'";

                HANDLE          hProcess = NULL;
                DWORD           result;
                hProcess = LaunchViaShellExecuteNoArgs( postScript.asChar(), "P3DPATH" );

                if ( hProcess )
                {
                    launchAnnotation += " (Valid Process)";

                    result = ::WaitForSingleObject( hProcess, gThreadWaitMilliseconds );
                    ::CloseHandle( hProcess );

                    // If the thread did not return before the specified timeout,
                    // abandon the thread and signal the user.
                    // The thread is _not_ terminated, it is the responsibility
                    // of the user to decide what action to take on the running process.
                    if ( result != WAIT_OBJECT_0 )
                    {
                        launchAnnotation += ( " (Post Process did not return before timeout expired.. thread abandoned.)" );
                        hProcess = NULL;
                    }

                    if ( ( MGlobal::mayaState() == MGlobal::kInteractive ) && ( ExporterOptions::Verbose() ) )
                    {
                        EnumWindows( EnumWindowsProc, 0 );

                        CLog            log;
                        if ( log.ImportFile( gpRedirectFile ) )
                        {
                            MString                 command;
                            int                     nResult;

                            command = "exists viewLog;";
                            MGlobal::executeCommand( command, nResult, false, false );
                            if ( nResult && false )
                            // MEL dialog
                            {
                                command = "viewLog \"Post Process\" \"Results of Post Process\" \"";
                                command += log.Printable();
                                command += "\";";
                                MGlobal::executeCommand( command, false, false );
                            }
                            else
                            // Win32 dialog
                            {
                                log.ShowDialog( MhInstPlugin, gMayaWindow, "Results of Post Process" );
                            }
                        }
                    }
                
                }
                else
                {
                    launchAnnotation += " (Invalid Process! Execution failed.)";
                }

                if ( hProcess != NULL )
                {
                    gExportLog.Add( CExportLogEntry( ExportLog::kPostProcessOK, launchAnnotation ) );
                }
                else
                {
                    gExportLog.Add( CExportLogEntry( ExportLog::kPostProcessFailure, launchAnnotation ) );
                }

// Deferred to v17

                // Delete the temporary redirect file created as a pipe
                // for the results of the Post-Process thread.
//                DeleteFile( gpRedirectFile );

#endif
          }
     }

    if ( status == MS::kSuccess )
    {
        UpdateExportProgress( 95, "Apply Rules" );

        char* pRulePath = new char [_MAX_PATH];

        gRuleLog.Clear();

        if ( ExporterOptions::GlobalRulesEnable() )
        {
            CRuleParser         parser;
            CRuleCollection*    pRules = NULL;

            // Find Rules file in P3DPATH
            if ( FindInPath( ExporterOptions::GlobalRules(), pRulePath, "P3DPATH" ) )
            {
                if ( parser.Parse( pRulePath ) )
                {
                    CRuleCollection::RuleStatusEnum ruleStatus;
                    pRules = parser.GetCollection();

                    if ( pRules != NULL )
                    {
                        pRules->SetWarnSeverity( ExporterOptions::RulesWarningThreshold() );
                        pRules->SetErrorSeverity( ExporterOptions::RulesErrorThreshold() );

                        pRules->ApplyRules( realFilename.asChar() );
                        ruleStatus = pRules->Status();

                        // Echo results for all failures at Warn or Error level.
                        if ( ruleStatus != CRuleCollection::kStatusOK )
                        {
                            if ( ( ruleStatus == CRuleCollection::kStatusWarn ) && ( ExporterOptions::Verbose() > 1 ) )
                            {
                                MGlobal::displayWarning( gRuleLog.AsChar() );
                            }
                            // Only signal a failed Export at Error level.
                            if ( ( ruleStatus == CRuleCollection::kStatusError ) && ( ExporterOptions::Verbose() ) )
                            {
                                status = MS::kFailure;
                                if ( ExporterOptions::Verbose() ) MGlobal::displayError( gRuleLog.AsChar() );
                            }
                        }
                    }
                }
                else
                {
                    MGlobal::displayError( "Tried to apply Global Rules, but could not." );
                    status = MS::kFailure;
                }
            }
            else
            {
                MGlobal::displayError( "Global Rules file not found: " + MString( ExporterOptions::GlobalRules() ) );
                status = MS::kFailure;
            }
        }

        if ( ExporterOptions::LocalRulesEnable() )
        {
            CRuleParser         parser;
            CRuleCollection*    pRules = NULL;

            if ( FindInPath( ExporterOptions::LocalRules(), pRulePath, "P3DPATH" ) )
            {
                if ( parser.Parse( pRulePath ) )
                {
                    CRuleCollection::RuleStatusEnum ruleStatus;
                    pRules = parser.GetCollection();

                    if ( pRules != NULL )
                    {
                        pRules->SetWarnSeverity( ExporterOptions::RulesWarningThreshold() );
                        pRules->SetErrorSeverity( ExporterOptions::RulesErrorThreshold() );

                        pRules->ApplyRules( realFilename.asChar() );
                        ruleStatus = pRules->Status();

                        // Echo results for all failures at Warn or Error level.
                        if ( ruleStatus != CRuleCollection::kStatusOK )
                        {
                            if ( ( ruleStatus == CRuleCollection::kStatusWarn ) && ( ExporterOptions::Verbose() > 1 ) )
                            {
                                MGlobal::displayWarning( gRuleLog.AsChar() );
                            }
                            // Only signal a failed Export at Error level.
                            if ( ruleStatus == CRuleCollection::kStatusError ) 
                            {
                                status = MS::kFailure;
                                if ( ExporterOptions::Verbose() ) MGlobal::displayError( gRuleLog.AsChar() );
                            }
                        }
                    }
                }
                else
                {
                     MGlobal::displayError( "Tried to apply Local Rules, but could not." );
                     status = MS::kFailure;
                }
            }
            else
            {
                MGlobal::displayError( "Local Rules file not found: " + MString( ExporterOptions::LocalRules() ) );
                status = MS::kFailure;
            }
        }

// ---  Display the Rules log output if 
// ---    (a) the Rules failed, 
// ---    (b) the user has specified Verbose Mode, and
// ---    (c) Maya is running in Interactive mode (with a UI)

        if ( ( MGlobal::mayaState() == MGlobal::kInteractive ) && ( ExporterOptions::Verbose() ) )
        {
            if ( gRuleLog.NumEntries() > 0 )
            {
                // Build a pop-up dialog window showing the error.
                // Need hInstance/HWND for Maya session
            
                // Maya defines this HINSTANCE in MFnPlugin.h.
                // HINSTANCE MhInstPlugin;

                MString                 command;
                int                     nResult;

                command = "exists viewLog;";
                MGlobal::executeCommand( command, nResult, false, false );
                if ( nResult )
                // MEL dialog
                {
                    command = "viewLog \"Rules\" \"One or more Rules failed. No output file was generated!\" \"";
                    command += gRuleLog.Printable();
                    command += "\";";
                    MGlobal::executeCommand( command, false, false );
                }
                else
                // Win32 dialog
                {
                    EnumWindows( EnumWindowsProc, 0 );
                    gRuleLog.ShowDialog( MhInstPlugin, gMayaWindow, "One or more Rules failed. No output file was generated!" );
                }

            }
        }
    
        delete [] pRulePath;
    }

     delete invChunk;   
     delete toollibInventory;

     // ** Why is exportInfoChunk not deleted?? **

#if ( MAYA_API_VERSION < 400 )

     MGlobal::executeCommand( "if ( `window -exists ProgressWnd` ) { deleteUI -window ProgressWnd; }" );
//     MGlobal::executeCommand( "deleteUI -window ProgressWnd" );

#endif        // MAYA_API_VERSION

     if ( pStatus != NULL )
     {
          *pStatus = status;
     }

    if ( gProgress.IsInterrupted() )
    {
        MGlobal::displayInfo( "Export aborted by user." );
    }

    UpdateExportProgress( 99, "Error log" );

// ------------  ERROR LOG  ------------------

    gExportLog.Report();
    // Don't spew if there's nothing to spew,
    // or if severity is lower than user's spew threshold.
    if ( ( gExportLog.Severity() > 0 ) && ( gExportLog.Severity() >= ( ExportLog::kNumVerboseLevels - ExporterOptions::Verbose() ) ) )
    {
        if ( MGlobal::mayaState() == MGlobal::kInteractive )
        {
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
        }
        else
        {
            std::cerr << gExportLog << std::endl;
        }
    }
    gExportLog.Clear();

// ------------  CLEAN UP  ------------------
    
    int exportWithoutCrashes = StopExport();
//    if ( exportWithoutCrashes > 0 )
//    {
//        MString                 message;
//        message = "Now serving ";
//        message += exportWithoutCrashes;
//        message += " Pure3D Exports without crashing!";
//
//        MGlobal::displayInfo( message );
//    }

    if ( status != MS::kSuccess )
    {
        DeleteFile( realFilename.asChar() );
        MGlobal::displayError( "Pure3D Export FAILED!" );
    }

     gProgress.End();

}

void StartExport(void)
{
    gExportLog.Clear();
    gExportCrashes++;
}

int StopExport(void)
{
    gExportCrashes--;
    if ( gExportCrashes == 0 )
    {
        gExportWithoutCrashes++;
        return gExportWithoutCrashes;
    }

    return 0;
}

//*************************************************
//
// Make Export Info
//
//
tlDataChunk *MakeExportInfo(void)
{
    char user[128];
    unsigned long userlen = sizeof(user) - 1;
    GetUserName(user, &userlen);
    
    char* version_str = GetVersionStr("p3dmayaexp.mll"); 

    char time[256], date[128];
    SYSTEMTIME systime;
    GetLocalTime(&systime);
    GetTimeFormat(LOCALE_SYSTEM_DEFAULT, 0, &systime, NULL, time, sizeof(time));
    GetDateFormat(LOCALE_SYSTEM_DEFAULT, DATE_LONGDATE, &systime, NULL, date, sizeof(date));
    strcat(time, " ");
    strcat(time, date);

    tlExportInfo info;
    info.SetName("Exported From Maya");

    info.AddInfo("ExporterVersion", version_str);
    info.AddInfo("Exported By", user);
    info.AddInfo("Exported At", time);
    info.AddInfo( "Maya Version", MGlobal::mayaVersion().asChar() );
    info.AddInfo( "Maya Scene", MFileIO::currentFile().asChar() );
    info.AddInfo("Export NIS Scenegraph",            ExporterOptions::ExportNISScenegraph());
    info.AddInfo("Use Scenegraph Name for LightGroup",            ExporterOptions::UseScenegraphNameForLightGroup());
    info.AddInfo("Export Animations",                ExporterOptions::ExportAnimations());
    info.AddInfo("Export Animation References Only", ExporterOptions::ExportAnimReferencesOnly());
    info.AddInfo("Export Visibility Animations",     ExporterOptions::ExportVisibilityAnimations());
    info.AddInfo("Export Vertex Animations",        ExporterOptions::ExportVertexAnimations());
    // Auto-Generate Bounding Volumes - Removed on 04 Jan 2002
//    info.AddInfo("Auto Generate Bounding Volumes",   ExporterOptions::AutoGenBoundingVolumes());
    info.AddInfo("Strip Reference Prefix",           ExporterOptions::StripReferencePrefix());
    info.AddInfo("Tri-Strip Meshes",                 ExporterOptions::TristripMeshes());
    info.AddInfo("De-Index Meshes",                  ExporterOptions::DeindexMeshes());

    // Export Mirrored Animation - Removed 08 Oct 2002
//    info.AddInfo("Export Mirrored Animation",        ExporterOptions::ExportMirroredAnim());

    MDistance distance;
    switch (distance.uiUnit())
    {
        case MDistance::kInches:
            info.AddInfo("UI Units", "Inches");
            break;

        case MDistance::kFeet:
            info.AddInfo("UI Units", "Feet");
            break;

        case MDistance::kYards:
            info.AddInfo("UI Units", "Yards");
            break;

        case MDistance::kMiles:
            info.AddInfo("UI Units", "Miles");
            break;

        case MDistance::kMillimeters:
            info.AddInfo("UI Units", "Millimeters");
            break;

        case MDistance::kCentimeters:
            info.AddInfo("UI Units", "Centimeters");
            break;

        case MDistance::kMeters:
            info.AddInfo("UI Units", "Meters");
            break;

        case MDistance::kKilometers:
            info.AddInfo("UI Units", "Kilometers");
            break;

        default:
            info.AddInfo("UI Units", "Unknown!");
            break;
    }


    strdelete(version_str);
    return info.Chunk16();

}

