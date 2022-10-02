//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


// IDLParser.cpp: implementation of the CIDLParser class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "IDLParser.h"

#include "helpfunc.hpp"
#include "radtypeinfo.hpp"
#include <math.h>

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

//===========================================================================
// CIDLParser::CIDLParser
//===========================================================================
// Description: Construction
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CIDLParser::CIDLParser( ) :
    m_nCurrTokenIndex( 0 )
{
}


//===========================================================================
// CIDLParser::~CIDLParser
//===========================================================================
// Description: Destruction
// 
// Constraints: 
// 
// Parameter:
// 
// Return: 
//===========================================================================
CIDLParser::~CIDLParser( )
{
}


//===========================================================================
// CIDLParser::AddIDLFile
//===========================================================================
// Description: Add list of file to be parsed
// 
// Constraints: 
// 
// Parameter:
//             const CString & strIDLFile
// 
// Return: void 
//===========================================================================
void CIDLParser::AddIDLFile( const CString & strIDLFile )
{
    m_vecIDLFiles.push_back( strIDLFile );
}


//===========================================================================
// CIDLParser::AddError
//===========================================================================
// Description: Add error to the list
// 
// Constraints: 
// 
// Parameter:
//             const CString & strErrMsg
// 
// Return: void 
//===========================================================================
void CIDLParser::AddError( const CString & strErrMsg )
{
    m_vecErrors.push_back( strErrMsg );
}


//===========================================================================
// CIDLParser::AddWarning
//===========================================================================
// Description: Add warning to the list
// 
// Constraints: 
// 
// Parameter:
//             const CString & strErrMsg
// 
// Return: void 
//===========================================================================
void CIDLParser::AddWarning( const CString & strErrMsg )
{
    m_vecWarnings.push_back( strErrMsg );
}



//===========================================================================
// CIDLParser::Parse
//===========================================================================
// Description: Parse all interface file
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CIDLParser::Parse( )
{
    for ( int i = 0; i < m_vecIDLFiles.size( ); i ++ )
    {
        try
        {
            OnTokenizeFile( m_vecIDLFiles.at( i ) );    // tokenize file
            OnParseToken( );    // parse token list
            OnCleanToken( );    // clean token list after parse one file
        }
        catch( CUserException * pEH )
        {
            pEH;
            // Error occured, stop
        }
    }
}


//===========================================================================
// CIDLParser::BuildTypeLib
//===========================================================================
// Description: Build type lib information from all parsed IDL file
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CIDLParser::BuildTypeLib( )
{
    try
    {
        // convert base interface class string to pointer
        for ( int nInterfaceIndex = 0; nInterfaceIndex < m_vecInterfacePtr.size( ); nInterfaceIndex ++ )
        {
            m_vecInterfacePtr.at( nInterfaceIndex )->Evaluate( m_vecInterfacePtr );
        }

        // check if all interface is evaluated correctly
        for ( nInterfaceIndex = 0; nInterfaceIndex < m_vecInterfacePtr.size( ); nInterfaceIndex ++ )
        {
            if ( ! m_vecInterfacePtr.at( nInterfaceIndex )->GetEvaluated( ) )
            {
                CString strError;
                strError.Format( "error RIDL: Unable to evaluate interface [%s], check its definition, and make sure its base class header file is also included as input.\n",
                    ( LPCTSTR )m_vecInterfacePtr.at( nInterfaceIndex )->GetName( ) );
                AddError( strError );
                ::AfxThrowUserException( );
            }
        }
    }
    catch( CUserException * pEH )
    {
        pEH;
        // Error occured, stop
    }
}


//===========================================================================
// CIDLParser::OutputTypeLib
//===========================================================================
// Description: output processed typelib to disk
// 
// Constraints: 
// 
// Parameter:
//             const CString & strTypeLibFile
// 
// Return: void 
//===========================================================================
void CIDLParser::OutputTypeLib( const CString & strTypeLibFile )
{
    try
    {
        if ( ! ::CreateDirectoryRecursive( strTypeLibFile ) )
        {
            CString strError;
            strError.Format( "error RIDL: Unable to create directory recursivly for output file [%s].\n", ( LPCTSTR )strTypeLibFile );
            AddError( strError );
            ::AfxThrowUserException( );
        }

        CFile oFile( strTypeLibFile, CFile::modeReadWrite | CFile::modeCreate );

        int nTempBuf = 0;

        nTempBuf = ParserConst::TOK_VERSION;
        oFile.Write( &nTempBuf, sizeof(nTempBuf) * 1 );
        nTempBuf = TYP_FILE_VERSION;
        oFile.Write( &nTempBuf, sizeof(nTempBuf) * 1 );

        for ( int i = 0; i < m_vecInterfacePtr.size( ); i++ )
        {
            CIDLInterfacePtr pInterface = m_vecInterfacePtr.at( i );

            // put header
            nTempBuf = ParserConst::TOK_CLASS;
            oFile.Write( &nTempBuf, sizeof( nTempBuf ) );

            // put interface name
            WriteStringToFile( pInterface->GetName( ), oFile );

            // put method count
            nTempBuf = pInterface->GetMethodCount( );
            oFile.Write( &nTempBuf, sizeof( nTempBuf ) );

            // put enum count
            nTempBuf = pInterface->GetMethodCount( );
            oFile.Write( &nTempBuf, sizeof( nTempBuf ) );

            // create a complete class method list based on all base classes
            vector< CIDLMethodPtr > pMethodList;
            CreateCompleteMethodList( m_vecInterfacePtr.at( i ), pMethodList );

            // write all methods to file
            for ( int nMethodIndex = 0; nMethodIndex < pMethodList.size( ); nMethodIndex ++ )
            {
                WriteMethodToFile( pMethodList.at( nMethodIndex ), oFile );
            }

            // write all enum to file
            for ( int nEnumIndex = 0; nEnumIndex < pInterface->GetEnumCount( ); nEnumIndex ++ )
            {
                WriteEnumToFile( pInterface->GetEnumPtrAt( nEnumIndex ), oFile );
            }
        }

        for ( int j = 0; j < m_veCIDLEnumPtr.size( ); j ++ )
        {
            WriteEnumToFile( m_veCIDLEnumPtr.at( j ), oFile );
        }

        oFile.Flush( );
        oFile.Close( );
    }
    catch( CException * pEH )
    {
        pEH;
    }
}


//===========================================================================
// CIDLParser::CreateCompleteMethodList
//===========================================================================
// Description: create a completed method list for this interface,
//              it will look through all it's base class.
//              Currently, only single inheritance is used.
// 
// Constraints: 
// 
// Parameter:
//              const CIDLInterfacePtr & pInterface
//             vector< CIDLMethodPtr > & vecMethods
// 
// Return: void 
//===========================================================================
void CIDLParser::CreateCompleteMethodList( const CIDLInterfacePtr & pInterface, vector< CIDLMethodPtr > & vecMethods )
{
    vecMethods.clear( );
    CIDLInterfacePtr pBaseClass = pInterface;

    int nLoopGuard = 0;
    while ( pBaseClass != NULL )
    {
        for ( int i = pBaseClass->GetMethodCount( ) - 1; i >= 0; i -- )
        {
            // Check if any function of the same name already in the list,
            // if yes throw exception
            for ( int j = 0; j < vecMethods.size( ); j ++ )
            {
                if ( pBaseClass->GetMethodPtrAt( i )->GetName( ) == vecMethods.at( j )->GetName( ) )
                {
                    CString strError;
                    strError.Format( "error RIDL: Method of the same name is already declared in else where, script does not support function/method overloading, check base classes.\n"
                                     "\t\tInterface: [%s], Method: [%s].\n",
                                     ( LPCTSTR )pInterface->GetName( ),
                                     ( LPCTSTR )pBaseClass->GetMethodPtrAt( i )->GetName( )
                                   );
                    AddWarning( strError );
                }
            }

            vecMethods.push_back( pBaseClass->GetMethodPtrAt( i ) );
        }

        pBaseClass = pBaseClass->GetBaseClassPtr( );

        // check for while loop guard, safty is everything
        nLoopGuard ++;
        if ( nLoopGuard > 16 )
        {
            CString strError;
            strError.Format( "error RIDL: Unable to completing a list of methods in class [%s]. While loop went bad.\n", ( LPCTSTR )pInterface->GetName( ) );
            AddError( strError );
            ::AfxThrowUserException( );
        }
    }

    reverse( vecMethods.begin( ), vecMethods.end( ) );

    // throw exception if any error occured
    if ( GetErrorCount( ) > 0 )
    {
        ::AfxThrowUserException( );
    }
}


//===========================================================================
// CIDLParser::WriteEnumToFile
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//              const CIDLEnumPtr & pEnum
//             CFile & oFile
// 
// Return: void 
//===========================================================================
void CIDLParser::WriteEnumToFile( const CIDLEnumPtr & pEnum, CFile & oFile )
{
    int nTempBuf;

    nTempBuf = ParserConst::TOK_ENUM;
    oFile.Write( & nTempBuf, sizeof( nTempBuf ) );

    // name
    WriteStringToFile( pEnum->GetName( ), oFile );

    // enumeration value count
    nTempBuf = pEnum->GetEnumValueCount( );
    oFile.Write( & nTempBuf, sizeof( nTempBuf ) );

    // enumeration value
    const int nEnumSize = pEnum->GetEnumValueCount( );
    for ( int k = 0; k < nEnumSize; k ++ )
    {
        int nEnumValue = 0;

        WriteStringToFile( pEnum->GetEnumValueNameAt( k ), oFile );
        nEnumValue = pEnum->GetEnumValueLiteralAt( k );
        oFile.Write( & nEnumValue, sizeof( nEnumValue ) );
    }
}


//===========================================================================
// CIDLParser::WriteMethodToFile
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
//              const CIDLMethodPtr & pMethod
//             CFile & oFile
// 
// Return: void 
//===========================================================================
void CIDLParser::WriteMethodToFile( const CIDLMethodPtr & pMethod, CFile & oFile )
{
    int nTempBuf;

    nTempBuf = ParserConst::TOK_METHOD;
    oFile.Write( & nTempBuf, sizeof( nTempBuf ) );

    // method name
    WriteStringToFile( pMethod->GetName( ), oFile );

    // number of parameter in the method
    nTempBuf = pMethod->GetParameterCount( );
    oFile.Write( & nTempBuf, sizeof( nTempBuf ) );

    int nIndLvl = 0;
    nIndLvl = pMethod->GetReturnType( )->GetIndLvl( );

    // write return type
    WriteStringToFile( pMethod->GetReturnType( )->GetName( ), oFile );
    WriteStringToFile( pMethod->GetReturnType( )->GetDeclarator( ), oFile );
    oFile.Write( & nIndLvl, sizeof( nIndLvl ) );

    // write all parameter out
    for ( int i = 0; i < pMethod->GetParameterCount( ); i ++ )
    {
        nIndLvl = pMethod->GetParameterPtrAt( i )->GetIndLvl( );
        // write out name, type and indirection lvl to file
        WriteStringToFile( pMethod->GetParameterPtrAt( i )->GetName( ), oFile );
        WriteStringToFile( pMethod->GetParameterPtrAt( i )->GetDeclarator( ), oFile );
        oFile.Write( & nIndLvl, sizeof( nIndLvl ) );

    }
}


//===========================================================================
// CIDLParser::ClearError
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CIDLParser::ClearError( )
{
    m_vecErrors.clear( );
}


//===========================================================================
// CIDLParser::GetErrorCount
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: int 
//===========================================================================
int CIDLParser::GetErrorCount( ) const
{
    return m_vecErrors.size();
}


//===========================================================================
// CIDLParser::GetErrorAt
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
CString CIDLParser::GetErrorAt( int nIndex ) const
{
    return m_vecErrors.at( nIndex );
}


//===========================================================================
// CIDLParser::ClearWarning
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: void 
//===========================================================================
void CIDLParser::ClearWarning( )
{
    m_vecWarnings.clear( );
}


//===========================================================================
// CIDLParser::GetWarningCount
//===========================================================================
// Description: 
// 
// Constraints: 
// 
// Parameter:
// 
// Return: int 
//===========================================================================
int CIDLParser::GetWarningCount( ) const
{
    return m_vecWarnings.size( );
}


//===========================================================================
// CIDLParser::GetWarningAt
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
CString CIDLParser::GetWarningAt( int nIndex ) const
{
    return m_vecWarnings.at( nIndex );
}


//===========================================================================
// CIDLParser::WriteStringToFile
//===========================================================================
// Description: Write a string to file with 32 bit alignment
// 
// Constraints: 
// 
// Parameter:
//              const CString & strData
//             CFile & oFile
// 
// Return: void 
//===========================================================================
void CIDLParser::WriteStringToFile( const CString & strData, CFile & oFile )
{
    // 4.0 is the size of integer on all platform.
    // If specific platform size of integer changes, then we have write one for each platform.
    unsigned int nStrLength = ceil( static_cast< double >( strData.GetLength( ) + 1.0 ) / 4.0 ) * 4.0;
    oFile.Write( & nStrLength, sizeof( nStrLength ) );

    const char * pString = strData;
    oFile.Write( pString, nStrLength );
}

