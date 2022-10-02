//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     01 March, 2002
//
// Component:   Maya Exporter - Post Process Launcher
//
// Description: Functions used for launching and monitoring external processes.
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================
//===========================================================================
// Includes
//===========================================================================

#include "launchProcess.hpp"

#ifdef WIN32

#include "dospath.hpp"
#include <stdio.h>
#include <string.h>
#include <io.h>         // _access
#include <direct.h>     // _getcwd
#include <iostream.h>

#include <bewert_debug.h>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

HWND gMayaWindow = NULL;

BOOL CALLBACK EnumWindowsProc( HWND hwnd, LPARAM lParam )
{
    char        title[_MAX_PATH];
    GetWindowText( hwnd, title, _MAX_PATH );

    if ( strncmp( title, "Maya", 4 ) == 0 )
    {
        gMayaWindow = hwnd;
        return FALSE;   
    }

    return TRUE;
};

//===========================================================================
// fexists
//===========================================================================
// Description: Determines if the specified file exists.
//
// Constraints: 
//
//  Parameters: const MString &fname: The path to the filename.
//
//      Return: (bool): TRUE if the specified file exists; else FALSE.
//
//===========================================================================
//bool fexists(const char* fname)
//{
//    FILE *f = fopen(fname, "rb");
//    if (f != NULL) 
//    {
//        fclose(f);
//        return true;
//    }
//
//    return false;
//}

void CreateLaunchEnvVar( const char* envName, const char* inFile, const char* outFile )
{
    // Modify PATH environment to include path to:
    //   A. Currently loaded Maya scene.
    //   B. The Exported P3D file.
    const size_t MAX_PATH_SIZE = 1024;
    char launchpathvar[MAX_PATH_SIZE];  // Storage for new LAUNCHPATH environment variable.
    char pathvar[MAX_PATH_SIZE];        // Stores current PATH environment strings.
    char inPath[_MAX_PATH];             // Storage for path-only for the input file.
    char outPath[_MAX_PATH];            // Storage for path-only for the output file.
    char* pc;                           // Utility pointer, to nuke '/' at end of path-only string.

    GetEnvironmentVariable( "PATH", pathvar, MAX_PATH_SIZE );
    strcpy( launchpathvar, envName );
    strcat( launchpathvar, "=" );
    strcat( launchpathvar, pathvar );

    if ( inFile != NULL )
    {
        strcpy( inPath, inFile );
        pc = JustFileName( inPath );
        *(--pc) = '\0';
        strcat( launchpathvar, ";" );
        strcat( launchpathvar, inPath );
    }
    if ( outFile != NULL )
    {
        strcpy( outPath, outFile );
        pc = JustFileName( outPath );
        *(--pc) = '\0';
        strcat( launchpathvar, ";" );
        strcat( launchpathvar, outPath );
    }
    
    // SetEnvironmentVariable does NOT create the environment table entry,
    // it just allocates the strings.
//    SetEnvironmentVariable( envName, pathvar );

    // _putenv, on the other hand, does create the environment table entry.
    _putenv( launchpathvar );

}

/* Search for file by looking in the directories listed in the envname
* environment. Put the full path name (if you find it) into pathname.
* Otherwise set *pathname to 0. Unlike the DOS PATH command (and the
* microsoft _searchenv), you can use either a space or semicolon
* to separate directory names. The pathname array must be at least
* 128 characters. If the file is in the current directory, the path
* name of the current directory is appended to the front of the name.
*
* Unlike the Microsoft version, this one returns 1 on success, 0=failure
*/

//BOOL searchenv( const char* filename, const char* envname, char* pathname )
//{
//    char pbuf[_MAX_PATH];
//    char *p ;
//
//    _getcwd( pathname, _MAX_PATH );
//    strcat( pathname, "/" );
//    strcat( pathname, filename );
//
//    if( _access( pathname, 0 ) != -1 ) /* check current directory */
//    {
//        return true; /* ...it's there. */
//    }
//
//    /* The file doesn't exist in the current directory. If a specific path
//    * was requested (ie. file contains \ or /) or if the environment isn't
//    * set, return failure, otherwise search for the file on the path.
//    */
//
//    p = getenv( "PATH" );
//    p = getenv( "LAUNCHPATH" );
//
//    if( strpbrk(filename,"\\/") || !(p = getenv(envname)) )
//    {
//        *pathname = '\0';
//        return false;
//    }
//
//    strncpy( pbuf, p, _MAX_PATH );
//    if( p = strtok( pbuf, "; " ) )
//    {
//        do
//        {
//            sprintf( pathname, "%s/%s", p, filename );
//
//            if( access( pathname, 0 ) >= 0 )
//            {
//                return true; /* found it */
//            }
//        }
//        while( p = strtok( NULL, "; ") );
//    }
//
//    *pathname = '\0';
//    return false;
//}

BOOL FindInPath( const char* searchfile, char* pathbuffer, const char* envvar )
{
    BOOL bFoundIt = false;

    // Clear buffer
    *pathbuffer = '\0';

    // Get PATH variable
//    char envvar[] = "PATH";
    /* Search for file in PATH environment variable: */
    _searchenv( searchfile, envvar, pathbuffer );
//    bFoundIt = searchenv( searchfile, envvar, pathbuffer );

    bFoundIt = ( *pathbuffer != '\0' );

    return bFoundIt;
}

//===========================================================================
// ExpandArgs
//===========================================================================
// Description: The Parameters list for ShellExecuteInfo requires that
//              quotes be enclosed in quotes, such as """quoted""".
//              This function expands a single quote to a triple quote.
//
// Constraints: 
//
//  Parameters: const char* args: The original parameter string.
//
//      Return: (char*): The expanded parameter string.
//
//===========================================================================
char* ExpandArgs( const char* args )
{
    char* newArgs = NULL;

    // Initial pass to see how much it needs to expand.
    size_t                      p = 0;
    const char*                 pc = args;

    while ( *pc )
    {
        if ( *pc == '\"' ) p += 3;
        else p++;
        pc++;
    }

    p++;
    newArgs = new char [p];
    memset( newArgs, 0, p );

    pc = args;
    p = 0;
    while ( *pc )
    {
        newArgs[p++] = *pc;  

        if ( *pc == '\"' )
        {
          newArgs[p++] = '\"';  
          newArgs[p++] = '\"';  
        }
        pc++;
    }

    return newArgs;
}

//===========================================================================
// LaunchViaShellExecute
//===========================================================================
// Description: Launches a shell process.
//              See < http://www.codeproject.com/threads/asyncprocnotify.asp >
//
// Constraints: 
//
// Parameters:  const char* execute: Executable to launch.
//              const char* args: Arguments for executable.
//              const char* pathvar: NULL-terminated string representing
//                           path environment variable (Default = "PATH").
//
// Return:      Windows handle.
//
//===========================================================================
HANDLE LaunchViaShellExecute( const char* execute, const char* args, const char* pathvar )
{
    HANDLE hProcess = NULL;

// ---  Initialize

    const size_t NUM_EXTENSIONS = 3;
    const size_t MAX_EXTENSION_CHARS = 3;    // Number of characters in longest Extension
    const char* Extensions[NUM_EXTENSIONS] =
    {
        "bat",
        "exe",
        "com",
    };
    char pathToExecutable[_MAX_PATH];
    char* localExecute;
    char* pDot = NULL;

    // 'dospath.cpp' is non-const correct.. must allocate local copy.
    // Additional bytes are allocated here to accomodate the concatenation of an Extension, if required.
    localExecute = new char [ strlen(execute) + 1 + MAX_EXTENSION_CHARS + 1 ];  // add one for the 'dot' of the extension.
    strcpy( localExecute, execute );
    BOOL bFoundExecutable = false;
    BOOL bRequiresBatch = false;

// ---  Kill batch and redirect file if they exist

    DeleteFile( gpBatchFile );
    DeleteFile( gpRedirectFile );

// --- Expand any quotes in the args (quotes must be tripled!)
    
    // Note: expandedArgs is allocated in ExpandArgs() -- must deallocate here.
    char* expandedArgs = NULL;
    expandedArgs = ExpandArgs( args );

// --- Set up args list to include redirect file

    char redirect[256];
    sprintf( redirect, "%s > %s", args, gpRedirectFile );

// --- Determine whether executable needs an extension to run

    if ( HasExtension( localExecute, &pDot ) )
    {
        bFoundExecutable = FindInPath( localExecute, pathToExecutable, pathvar );
    }
    else
    {
        unsigned int e;
        for ( e = 0; e < NUM_EXTENSIONS; e++ )
        {
            if ( e > 0 ) bRequiresBatch = true;

            localExecute = ForceExtension( localExecute, Extensions[e] );
            if ( bFoundExecutable = FindInPath( localExecute, pathToExecutable, pathvar ) )
            {
                break;
            }
        }
    }        

// --- *.exe and *.com are shunted to a temporary batch file and executed from there.

    // (because ShellExecute doesn't pipe results from an *.exe, 
    // but it does from a *.bat)

    if ( bRequiresBatch )
   {
        CDEBUG << "  -> * Requires implicit BATCH * " << endl;

        FILE*   batchFile = NULL;
        batchFile = fopen( gpBatchFile, "w" );
        if ( batchFile != NULL )
        {
            fprintf( batchFile, "%s %s", pathToExecutable, redirect );
            fclose( batchFile );

            strcpy( pathToExecutable, gpBatchFile );
            *redirect = '\0';
        }
    }

// --- If everything is OK to this point, we're ready to initiate the thread.

    if ( bFoundExecutable )
    {
        CDEBUG << "  -> * Initiating process: \"" << pathToExecutable << "\"" << endl;
        CDEBUG << "       -> with args: '" << redirect << "'" << endl;

        char copyOfPath[_MAX_PATH];
        char* directory = NULL;
        strcpy( copyOfPath, pathToExecutable );
        directory = JustPathName( copyOfPath );

        SHELLEXECUTEINFO shellInfo;
        ::ZeroMemory(&shellInfo, sizeof(shellInfo));
        shellInfo.cbSize = sizeof(shellInfo);
        shellInfo.fMask = SEE_MASK_NOCLOSEPROCESS | SEE_MASK_FLAG_NO_UI;
        shellInfo.lpFile = pathToExecutable;
        shellInfo.lpDirectory = directory;
        shellInfo.lpParameters = redirect;

        if(::ShellExecuteEx(&shellInfo))
        { /* success */
            hProcess = shellInfo.hProcess;
        } 
        else
        {
            CDEBUG << "!! ShellExecute FAILED [No process]: '" << execute << " \"" << args << "\"'" << endl;
        }
    }
    else
    {
        CDEBUG << "!! ShellExecute FAILED [Not found]: \"" << execute << "\"" << endl;
        return NULL;
    }

    delete [] expandedArgs;
    delete [] localExecute;
    
    return hProcess;
}

//===========================================================================
// LaunchViaShellExecute
//===========================================================================
// Description: Alternate entry point where there are (A) no args, or
//              (B) the executable and args are specified in a single string.
//
// Constraints: 
//
//  Parameters: const char* execute: The executable and (optionally) args.
//              const char* pathvar: NULL-terminated string representing
//                           path environment variable (Default = "PATH").
//
//      Return: (HANDLE): Handle to the process, if successful; else NULL.
//
//===========================================================================
HANDLE LaunchViaShellExecuteNoArgs( const char* execute, const char* pathvar )
{
    HANDLE hProcess = NULL;

    char*       executeWithArgs;
    executeWithArgs = new char [ strlen(execute)+1 ];
    strcpy( executeWithArgs, execute );

    char*       args = executeWithArgs;
    while (*args )
    {
        if ( *(args-1) == ' ' )
        {
            *(args-1) = '\0';
            break;
        }

        args++;
    }
    // If no args exist this falls through with (*args) == '\0'

    CDEBUG << "LaunchViaShellExecute( \"" << executeWithArgs << "\", \"" << args << "\", \"" << pathvar << "\" )" << endl;

    hProcess = LaunchViaShellExecute( executeWithArgs, args, pathvar );

    delete [] executeWithArgs;

    return hProcess;
}

//===========================================================================
// LaunchViaStart
//===========================================================================
// Description: Launches a shell process.
//              See < http://www.codeproject.com/threads/asyncprocnotify.asp >
//
// Constraints: 
//
// Parameters:  const char* execute: Executable to launch.
//              const char* args: Arguments for executable.
//
// Return:      Windows handle.
//
//===========================================================================
HANDLE LaunchViaStart( const char* execute )
{
    HANDLE hProcess = NULL;

// ---  Initialize

    SHELLEXECUTEINFO shellInfo;
    ::ZeroMemory(&shellInfo, sizeof(shellInfo));
    shellInfo.cbSize = sizeof(shellInfo);
    shellInfo.fMask = SEE_MASK_NOCLOSEPROCESS | SEE_MASK_FLAG_NO_UI;
    shellInfo.lpFile = "start";
    shellInfo.lpParameters = execute;

    if(::ShellExecuteEx(&shellInfo))
    { /* success */
        hProcess = shellInfo.hProcess;
    } 
    else
    {
        CDEBUG << "!! ShellExecute FAILED [No process]: \"" << execute << "\"" << endl;
    }
    
    return hProcess;
}

#endif      // WIN32
