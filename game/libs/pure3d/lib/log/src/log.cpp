//===========================================================================
// Copyright ©2001 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     November 27, 2001
//
// Component:   All kids love Log.
//
// Description: A simple class for status logging.  Will grow as I find
//              more uses for it.
//
// Creator:     Bryan Ewert
//
//===========================================================================
//===========================================================================
// Includes
//===========================================================================

#include "../inc/log.h"
#include "../inc/logDialog.h"

#include <string.h>
#include <fstream>

//#include <bewert_debug.h>   // enables memory leak tracking

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

bool CLog::mbShowTime = false;
char* CLog::mAsChar = NULL;
char* CLog::mPrintable = NULL;

//===========================================================================
// Constructor / Destructor
//===========================================================================

CLog::CLog()
{
}

CLog::~CLog()
{
    Clear();
}

//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

//===========================================================================
// Operator overloads
//===========================================================================

std::ostream& operator << ( std::ostream& os, const CLog & log )
{
    unsigned int                        entry = 0;

    for ( entry = 0; entry < log.mEntries.NumItems(); entry++ )
    {
        if ( log.mbShowTime )
        {
            time_t                          t = log.mEntries[entry]->Time();
            char*                           c = ctime( &t );

            c[strlen(c)-1] = '\0';

            os << "[" << c << "] ";
        }

        os << log.mEntries[entry]->Entry() << std::endl;
    }

    return os;
}

//===========================================================================
// Member Functions
//===========================================================================

//===========================================================================
// CLog::Clear
//===========================================================================
// Description: Clears all Log events.
//
// Constraints:
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
void CLog::Clear( void )
{
    while ( mEntries.NumItems() )
    {
        delete mEntries[0];
        mEntries.DeleteItem(0);
    }

    // Should I be deleting these here?
    // Doesn't hurt anything, but I am deleting static members
    // within a non-static Clear method. Hmm...
    if ( mAsChar )
    {
        delete [] mAsChar;
        mAsChar = NULL;
    }
    if ( mPrintable )
    {
        delete [] mPrintable ;
        mPrintable = NULL;
    }
}

//===========================================================================
// CLog::CleanUp        (static)
//===========================================================================
// Description: Cleans up static allocations.
//
//===========================================================================
void CLog::CleanUp( void )
{
    delete [] mAsChar;
    mAsChar = NULL;

    delete [] mPrintable;
    mPrintable = NULL;
}

//===========================================================================
// CLog::Add
//===========================================================================
// Description: Adds an entry to this Log.
//
// Constraints:
//
// Parameters:  const char* entry: NULL-terminated string for Log entry.
//
// Return:      (bool): TRUE if add successful; else FALSE.
//
//===========================================================================
bool CLog::Add( const CLogEntry& entry )
{
    bool                                bAdded = false;

    bAdded = mEntries.AddItem( new CLogEntry( entry ) );

    return bAdded;
}

//===========================================================================
// CLog::NumEntries     (const)
//===========================================================================
// Description: Returns the current number of Log entries.
//
// Constraints:
//
// Parameters:  (void)
//
// Return:      (unsigned int): The number of Log entries.
//
//===========================================================================
unsigned int CLog::NumEntries( void ) const
{
    return mEntries.NumItems();
}

//===========================================================================
// CLog::Entry      (const)
//===========================================================================
// Description: Returns a pointer to the specified Log Message entry.
//
// Constraints:
//
// Parameters:  unsigned int index: Zero-based index for the Log entry.
//
// Return:      (const char*): NULL-terminated string for the Log message.
//
//===========================================================================
CLogEntry* CLog::Entry( unsigned int index ) const
{
    if ( index >= mEntries.NumItems() ) return NULL;

    return mEntries[index];
}

void CLog::ShowTime( bool bShowTime )
{
    mbShowTime = bShowTime;
}

//===========================================================================
// CLog::Printable
//===========================================================================
// Description: Converts the AsChar() string to one that contains ESCaped
//              characters suitable for printing:
//
//                  <newline>   = \n
//                  <quote>     = \"
//                  <backslash> = \\
//
// Constraints: 
//
//  Parameters: bool bShowTime: Flag for whether to include Timestamp in output.
//
//      Return: (const char*): Results as NULL-terminated string.
//
//===========================================================================
const char* CLog::Printable( bool bShowTime )
{
    this->AsChar( bShowTime );

    size_t                      p = 0;
    size_t                      maxP = 0;

    unsigned int                c;
    for ( c = 0; c < strlen( mAsChar ); c++ )
    {
        switch ( mAsChar[c] )
        {
            case 0x0D:      // CR
            {
                break;
            }

            case 0x0A:      // newline
            case 0x22:      // quote
            case 0x5C:      // backslash
            {
                p += 2;
                break;
            }
            default:
            {
                p++;
            }
        }
    }

    delete [] mPrintable;

    p++;
    mPrintable = new char [ p ];
    memset( mPrintable, 0, p );

    maxP = p;
    p = 0;
    for ( c = 0; c < strlen( mAsChar ); c++ )
    {
        size_t  pp = p;

        switch ( mAsChar[c] )
        {
            case 0x0A:      // newline
            {
                mPrintable[p] = '\\';
                p++;
                mPrintable[p] = 'n';
                p++;

                break;
            }

            case 0x0D:      // CR
            {
                break;
            }

            case 0x22:      // quote
            {
                mPrintable[p] = '\\';
                p++;
                mPrintable[p] = '\"';
                p++;
                break;
            }

            case 0x5C:      // backslash
            {
                mPrintable[p] = '\\';
                p++;
                mPrintable[p] = '\\';
                p++;
                break;
            }
            default:
            {
                mPrintable[p] = mAsChar[c];
                p++;
            }
        }
    }

    return mPrintable;
}

//===========================================================================
// CLog::AsChar
//===========================================================================
// Description: Allocates a local buffer to hold all log entries as a single
//              NULL-terminated string, which is returned to the user.
//
// Constraints: 
//
//  Parameters: bool bShowTime: Flag for whether to include Timestamp in output.
//
//      Return: (const char*): Results as NULL-terminated string.
//
//===========================================================================
const char* CLog::AsChar( bool bShowTime )
{
    unsigned int                numBytes = 0;
    unsigned int                entry = 0;

    for ( entry = 0; entry < mEntries.NumItems(); entry++ )
    {
        const char*             pCurrent = mEntries[entry]->Entry();
        time_t                  t = mEntries[entry]->Time();
        char*                   c = ctime( &t );

        // Nuke the trailing '\n'
        c[strlen(c)-1] = '\0';

        if ( bShowTime )
        {
            numBytes += ( strlen( c ) + strlen( pCurrent ) + 4 );  // add 4 for "[" and "] " and "\n"
        }
        else
        {
            numBytes += ( strlen( pCurrent ) + 1 );  // add 1 "\n"
        }
    }

    numBytes++;     // trailing '\0'

    if ( mAsChar != NULL )
    {
        delete [] mAsChar;
    }

    mAsChar = new char [ numBytes ];
    memset( mAsChar, 0, numBytes );

    for ( entry = 0; entry < mEntries.NumItems(); entry++ )
    {
        if ( bShowTime )
        {
            time_t                  t = mEntries[entry]->Time();
            char*                   c = ctime( &t );

            // Nuke the trailing '\n'
            c[strlen(c)-1] = '\0';

            strcat( mAsChar, "[" );
            strcat( mAsChar, c );
            strcat( mAsChar, "] " );
        }

        strcat( mAsChar, mEntries[entry]->Entry() );
        strcat( mAsChar, "\n" );
    }

    return mAsChar;
}

//===========================================================================
// CLog::ImportFile
//===========================================================================
// Description: Imports a text file and adds each line as a Log entry.
//
// Constraints: 
//
//  Parameters: const char* filepath: Fully qualified path to text file.
//
//      Return: (bool): TRUE if file found and added successfully; else FALSE.
//
//===========================================================================
bool CLog::ImportFile( const char* filepath )
{
    bool                        bOK = false;

    Clear();

    std::ifstream               inStream;
    char                        buf[256];
    inStream.open( filepath );
    if ( inStream.good() )
    {
        while ( !inStream.eof() )
        {
            inStream.getline( buf, 256 );
            Add( buf );
        }

        bOK = true;
        inStream.close();
    }

    return bOK;
}

//===========================================================================
// CLog::ShowDialog
//===========================================================================
// Description: Displays a Win32 dialog containing the contents of the Log.
//
// Constraints: 
//
//  Parameters: HINSTANCE hInstance: Windows handle to owner application.
//              HWND hwnd: Windows handle parent window; if NULL a top-level
//                         window will be created.
//              const char* pTitle: NULL-terminated string for dialog title.
//
//      Return: (void)
//
//===========================================================================
void CLog::ShowDialog( HINSTANCE hInstance, HWND hwnd, const char* pTitle )
{
    if ( mEntries.NumItems() > 0 )
    {
        LogDialog( this, pTitle, hInstance, hwnd );
    }
}
