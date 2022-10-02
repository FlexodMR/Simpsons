//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifdef WIN32

#include "dospath.hpp"

#include "../inc/ruleEnv.hpp"

//===========================================================================
// CreateLaunchEnvVar
//===========================================================================
// Description: Generates a PATH envvar that includes the paths for an
//              input file and an optional output file.
//
//              For example, suppose you wanted to create the environment
//              variable MY_PATH which listed all directories in the system
//              PATH as well as the paths to the input and output files
//              you are processing.
//
//          CreateALaunchEnvVar( "MY_PATH", "<pathToInput>, <pathToOutput> );
//
//              Then, you could use MY_PATH to search for other files that
//              require processing.  Your search would find the file as
//              long as it exists in the system PATH, or in either of the
//              two folders you specified via this function.
//
// Constraints: 
//
//  Parameters: const char* envName: The name of the environment variable
//                                   that you wish to create.
//              const char* inFile: The full path to this file will
//                                  be added to the new env variable.
//              const char* outFile: The full path to this file will be
//                                   added to the new env variable (optional).
//
//      Return: (void)
//
//===========================================================================
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

//===========================================================================
// FindInPath
//===========================================================================
// Description: Attempts to find the specified file in the PATH list 
//              enumerated in the specified environment variable.
//
// Constraints: 
//
//  Parameters: const char* searchfile: The name of the file for which you
//                                      are searching.
//              char* pathbuffer: Pre-allocated storage buffer for the
//                                result.  Preferred size is _MAX_PATH.
//              const char* envvar: The name of the environment variable
//                                  which lists the paths to search.
//                                  Defaults to "PATH" if not specified.
//
//      Return: (BOOL): TRUE if searchfile is found; else FALSE.
//
//              If TRUE, pathbuffer will contain the full path for the file;
//              if FALSE pathbuffer will be an empty string.
//
//===========================================================================
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

#endif      // WIN32