//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// CmdLineOption.cpp: implementation of the CCmdLineOption class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "RIDL.h"
#include "CmdLineOption.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

//===========================================================================
// CCmdLineOption::CCmdLineOption
//===========================================================================
// Description: Construction
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CCmdLineOption::CCmdLineOption() :
    m_bDump( false )
{

}


//===========================================================================
// CCmdLineOption::~CCmdLineOption
//===========================================================================
// Description: Destruction
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CCmdLineOption::~CCmdLineOption()
{

}


//===========================================================================
// CCmdLineOption::GetDump
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: bool 
//===========================================================================
bool CCmdLineOption::GetDump( ) const
{
    return m_bDump;
}


//===========================================================================
// CCmdLineOption::SetDump
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             bool bDump
// 
// Return: void 
//===========================================================================
void CCmdLineOption::SetDump( bool bDump )
{
    m_bDump = bDump;
}


//===========================================================================
// CCmdLineOption::Process
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//              int argc
//             TCHAR* argv[]
//             TCHAR* envp[]
// 
// Return: bool 
//===========================================================================
bool CCmdLineOption::Process( int argc, TCHAR* argv[], TCHAR* envp[] )
{
    argc--;
    argv++;
    CString strInputListFileName;
    if ( argc == 0 )
    {
        return false;
    }

    while (argc > 0)
    {
        if (argv[0][0] == '-' || argv[0][0] == '/')
        {
            switch (argv[0][1])
            {
                case 'i':
                case 'I':
                {
                    if (argv[0][2] != 0)
                    {
                        // argument is part of "-I"
                        m_vecInputFiles.push_back( &(argv[0][2]) );
                    }
                    else if (argv[1] != 0)
                    {
                        m_vecInputFiles.push_back( &(argv[0][1]) );
                        argc--;
                        argv++;
                    }
                    else
                    {
                        return false;
                    }
                }
                break;

                case 'D':
                case 'd':
                {
                    if (stricmp( &(argv[0][2]), "dump") == 0)
                    {
                        SetDump( true );
                    }
                    else
                    {
                        return false;
                    }
                }
                break;

                case 'F':
                case 'f':
                {
                    if ( argv[0][2] != 0 )
                    {
                        strInputListFileName = &(argv[0][2]);
                    }
                    else if (argv[1] != 0)
                    {
                        strInputListFileName = argv[1];
                        argc--;
                        argv++;
                    }
                    else
                    {
                        return false;
                    }
                }
                break;

                case 'o':
                case 'O':
                {
                    if (argv[0][2] != 0)
                    {
                        m_strOutputFile = &(argv[0][2]);
                    }
                    else if (argv[1] != 0)
                    {
                        m_strOutputFile = argv[1];
                        argc--;
                        argv++;
                    }
                    else
                    {
                        return false;
                    }
                }
                break;

                default:
                {
                    return false;
                }
                break;
            }
        }
        argc--;
        argv++;
    }

    if ( strInputListFileName.GetLength( ) > 0 )
    {

        ParseInputListTextFile( strInputListFileName );
    }

    return true;
}


//===========================================================================
// CCmdLineOption::ParseInputListTextFile
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             const CString & strFileName
// 
// Return: void 
//===========================================================================
void CCmdLineOption::ParseInputListTextFile( const CString & strFileName )
{
    // opens the input list text file and 
    CFile oFile;
    oFile.Open( strFileName, CFile::modeRead | CFile::shareDenyNone );

    DWORD dwFileSize = (DWORD)( oFile.GetLength( ) );
    char * pFileBuffer = new char[ dwFileSize + 1 ];
    oFile.Read( pFileBuffer, dwFileSize );
    pFileBuffer[ dwFileSize ] = '\0';

    unsigned int uCurrPos = 0;

    // tokenize each line
    while ( uCurrPos < dwFileSize )
    {
        if ( ( pFileBuffer[ uCurrPos ] == '\n' ) ||
             ( pFileBuffer[ uCurrPos ] == '\r' ) )
        {
            pFileBuffer[ uCurrPos ] = '\0';
        }

        if ( pFileBuffer[ uCurrPos ] >= 127 )
        {
            pFileBuffer[ uCurrPos ] = '\0';
        }
        uCurrPos++;
    }

    uCurrPos = 0;
    while ( uCurrPos < dwFileSize )
    {
        if ( pFileBuffer[ uCurrPos ] == '\0' )
        {
            uCurrPos ++;
        }
        else
        {
            CString strFileName = & ( pFileBuffer[ uCurrPos ] );

            strFileName.TrimLeft( );
            strFileName.TrimRight( );

            m_vecInputFiles.push_back( strFileName );
            uCurrPos += strlen( & ( pFileBuffer[ uCurrPos ] ) );
        }
    }

    delete [] pFileBuffer;
}


//===========================================================================
// CCmdLineOption::GetInputFileCount
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: int 
//===========================================================================
int CCmdLineOption::GetInputFileCount( ) const
{
    return m_vecInputFiles.size( );
}


//===========================================================================
// CCmdLineOption::GetInputFileAt
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//             int nIndex
// 
// Return: CString 
//===========================================================================
CString CCmdLineOption::GetInputFileAt( int nIndex ) const
{
    return m_vecInputFiles.at( nIndex );
}


//===========================================================================
// CCmdLineOption::GetOutputFile
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: CString 
//===========================================================================
CString CCmdLineOption::GetOutputFile( ) const
{
    return m_strOutputFile;
}


//===========================================================================
// CCmdLineOption::PrintUseage
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CCmdLineOption::PrintUseage( ) const
{
	cerr << _T("RIDL.EXE Radical Interface Definition Language compilier. ") << endl << endl;
    cerr << _T("Usage: ") << endl;
    cerr << _T("       -F\"file name of source list file list\"") << endl;
    cerr << _T("       -I\"source file\" [+ -I\"source file\" [+ ...]]") << endl;
    cerr << _T("       -O\"output file\" [-dump]") << endl;
    cerr << _T("  -I source file:   interface header file.") << endl;
    cerr << _T("  -O output file:   output type lib file.") << endl;
    cerr << _T("  -F source file list: name of a text file contain list of hpp,") << endl;
    cerr << _T("                       seperate by new line.") << endl;
    cerr << _T("example:") << endl;
    cerr << _T("  RIDL.EXE -Iradobject.hpp -Iradsound.hpp -Ogame.typ") << endl;
}

