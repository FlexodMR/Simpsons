//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <windows.h>
#include <stdio.h>
#include <radsoundtools.hpp>

#define MAX_FILES 10000

const char * g_pWildCard = "*.wav";

struct ListNode
{
    char * m_pFileName;
    ListNode * m_pNext;
};

struct Finder
{
    Finder( void )
        :
        m_pHead( NULL ),
        m_pSearch( NULL )
    {
    }

    ListNode * m_pHead;
    ListNode * m_pSearch;
};

bool comparechar( char char1, char char2, bool casematters )
{
    if ( ! casematters )
    {
        return toupper( char1 ) == toupper( char2 );
    }

    return char1 == char2;
}

bool MatchesWildCardPattern( const char * pWildCard, const char * m_pBuffer, bool casematters = false )
{
    int wc = 0;
    int tn = 0;

    const char * pTestName = m_pBuffer;

    while ( pTestName[ tn ] != '\0' || pWildCard[ wc ] != '\0' )
    {
        if ( pWildCard[ wc ] == '*' )
        {
            //
            // Find the substring to match after the *
            //

            wc++;

            const char * pSubStart = & pWildCard[ wc ];
            unsigned int subLen = 0;
            
            while ( pSubStart[ subLen ] != '\0' && pSubStart[ subLen ] != '*' )
            {
                subLen++;
            }
            
            if ( subLen == 0 )
            {
                return true;
            }
            else if ( pTestName[ tn ] == '\0' )
            {
                return false;
            }

            //
            // Now match this sub-string.
            //

            while ( pTestName[ tn ] != '\0' )
            {
                unsigned int match;

                for( match = 0; match < subLen; match++ )
                {                    
                    if ( pTestName[ tn + match ] == '\0' )
                    {
                        return false;
                    }
                    else if ( ! comparechar( pTestName[ tn + match ], pSubStart[ match ], casematters ) )
                    {
                        break;
                    }                         
                }

                if( match >= subLen )
                {
                   break;
                }
                
                tn++;          
            }
        }
        else
        {
            if ( ! comparechar( pTestName[ tn ], pWildCard[ wc ], casematters ) && pWildCard[ wc ] != '?' )
            {
                return false;
            }

            if ( pWildCard[ wc ] != '0' )
            {
                wc++;
            }

            if ( pTestName[ tn ] != '\0' )
            {
                tn++;
            }
        }
    }

    return true;
}


void AddString( Finder * pFinder, const char * pString )
{
    if ( MatchesWildCardPattern( g_pWildCard, pString ) )
    {
        ListNode * pNew = new ListNode;
        pNew->m_pNext = pFinder->m_pHead;
        pNew->m_pFileName = new char[ strlen( pString ) + 1 ];
        strcpy( pNew->m_pFileName, pString );

        pFinder->m_pHead = pNew;
    } 
}

void rstFindClose( void ** pVoidFinder )
{
    Finder * pFinder = (Finder*) pVoidFinder;

    ListNode * pSearch = pFinder->m_pHead;
    ListNode * pTemp = NULL;

    while( pSearch )
    {
        pTemp = pSearch;
        pSearch = pSearch->m_pNext;

        delete [] pTemp->m_pFileName;
        delete pTemp;        
    }

    delete *pVoidFinder;
    *pVoidFinder = NULL;
}

bool FindFilesRecurse( Finder * pFinder, const char * pDirectoryName, const char * pFileName, bool specific )
{
    char thisPath[ 256 ];

    if( specific )
    {
        strcpy( thisPath, pFileName );
    }
    else if ( pFileName != NULL )
    {
        sprintf( thisPath, "%s\\%s\\*", pDirectoryName, pFileName );
    }
    else
    {
        sprintf( thisPath, "%s\\*", pDirectoryName );
    }

    WIN32_FIND_DATA Win32FindData;

	HANDLE hFind = ::FindFirstFile( thisPath, & Win32FindData );

    if ( hFind == INVALID_HANDLE_VALUE )
    {
        return false;
    }

    do
    {
        if ( Win32FindData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY )
        {
            if( strcmp( Win32FindData.cFileName, "." ) != 0 && strcmp( Win32FindData.cFileName, ".." ) != 0 )
            {
                char path[ 256 ];

                if ( pFileName != NULL )
                {
                    sprintf( path, "%s\\%s", pFileName, Win32FindData.cFileName );
                }
                else
                {
                    sprintf( path, "%s", Win32FindData.cFileName );
                }

                if ( ! FindFilesRecurse( pFinder, pDirectoryName, path, specific ) )
                {
					if ( ! CloseHandle( hFind ) )
					{
						printf( "::CloseHandle Failed\n" );
					}

                    return false;
                }
            }        
        }
        else
        {
            char fullName[ 256 ];
            if( pFileName != NULL )
            {
                if( specific )
                {
                    strcpy( fullName, pFileName );
                }
                else
                {
                    sprintf( fullName, "%s\\%s", pFileName, Win32FindData.cFileName );
                }
            }
            else
            {
                sprintf( fullName, "%s", Win32FindData.cFileName );
            }

            AddString( pFinder, fullName );
        }           
    }
    while ( ::FindNextFile( hFind, & Win32FindData ) );

	if ( ! FindClose( hFind ) )
	{
		printf( "::FindClose Failed\n" );
	}

    return true;
}

bool rstFindFiles( void ** ppFinder, const char * pFileName )
{
    *ppFinder = new Finder( );

    bool found = FindFilesRecurse( (Finder*) *ppFinder, pFileName, NULL, false );

    if ( found )
    {
        rstFindReset( *ppFinder );
    }

    return found;
}

bool rstFileExists( const char * pFileName )
{
    Finder * pFinder = new Finder( );

    bool exists = FindFilesRecurse( pFinder, NULL, pFileName, true );

    delete pFinder;

    return exists;
}

void rstFindReset( void * pVoidFinder )
{
    Finder * pFinder = (Finder*) pVoidFinder;
    pFinder->m_pSearch = pFinder->m_pHead;
}

bool rstFindGetNext( void * pVoidFinder, const char ** ppFileName )
{
    Finder * pFinder = (Finder*) pVoidFinder;

    if ( pFinder->m_pSearch != NULL )
    {
        *ppFileName = pFinder->m_pSearch->m_pFileName;
        pFinder->m_pSearch = pFinder->m_pSearch->m_pNext;

        return true;
    }

    return false;
}