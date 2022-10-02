//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "stdafx.h"
#include "RIDL.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

#include "CmdLineOption.h"
#include "IDLParser.h"

CWinApp theApp;

static void DumpParserError( CIDLParser & oParser )
{
    if ( oParser.GetErrorCount( ) > 0 )
    {
        for ( int nErrIdx = 0; nErrIdx < oParser.GetErrorCount( ); nErrIdx ++ )
        {
            cerr << ( LPCTSTR )oParser.GetErrorAt( nErrIdx );
        }
        oParser.ClearError( );
        ::AfxThrowUserException( );
    }
}

static void DumpParserWarning( CIDLParser & oParser )
{
    for ( int nWarIdx = 0; nWarIdx < oParser.GetWarningCount( ); nWarIdx ++ )
    {
        cerr << ( LPCTSTR )oParser.GetWarningAt( nWarIdx );
    }
    oParser.ClearWarning( );
}

//===========================================================================
// _tmain
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             int argc
//             TCHAR* argv[]
//             TCHAR* envp[]
// 
// Return: int 
//===========================================================================
int _tmain(int argc, TCHAR* argv[], TCHAR* envp[])
{
	int nRetCode = 0;

	// initialize MFC and print and error on failure
	if (!AfxWinInit(::GetModuleHandle(NULL), NULL, ::GetCommandLine(), 0))
	{
		cerr << _T("Fatal Error: MFC initialization failed") << endl;
		return 1;
	}
	else
	{
        try
        {
            //====================================================================
            // Process command line option
            //====================================================================
            CCmdLineOption oCmdOption;
            if ( ! oCmdOption.Process( argc, argv, envp ) )
            {
                cerr << _T("Unable to process command line option.\n" );
                oCmdOption.PrintUseage( );
                return 1;
            }

            //====================================================================
            // Create and initalize IDL parser input file list
            //====================================================================
            CIDLParser oParser;

            for ( int i = 0; i < oCmdOption.GetInputFileCount( ); i++ )
            {
                oParser.AddIDLFile( oCmdOption.GetInputFileAt( i ) );
            }

            DumpParserError( oParser );
            DumpParserWarning( oParser );

            //====================================================================
            // Parse IDL file
            //====================================================================
            oParser.Parse( );

            DumpParserError( oParser );
            DumpParserWarning( oParser );

            //====================================================================
            // Build IDL file into Type Lib
            //====================================================================
            oParser.BuildTypeLib( );

            DumpParserError( oParser );
            DumpParserWarning( oParser );

            //====================================================================
            // Output Type Lib into file
            //====================================================================
            oParser.OutputTypeLib( oCmdOption.GetOutputFile( ) );

            DumpParserError( oParser );
            DumpParserWarning( oParser );

            return 0;
        }
        catch( CException * pEH )
        {
            pEH;
            return 1;
        }
    }
}


