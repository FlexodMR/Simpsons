// Copyright (C) 2000 Radical Entertainment Ltd.  All rights reserved.
//
// Component:   Scrooby Pipeline
//
// Description: This contains the main function for the tool that reads in 
//                the text bible, and determines all the Unicode characters
//                that will be needed.  It will also output the .h file
//
// Authors:     Ian Gipson
//
//===========================================================================

//===========================================================================
// Includes
//===========================================================================

#include "stdafx.h"
#include "assert.h"
#include "..\..\common\localization\languageDatabase.h"
#include <fstream>
#include <iostream>
#include "stdlib.h"
#include "string.h"
#include <vector>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================
using std::cout;
using std::endl;


//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================
char filename[ 1000 ] = "";
char headerFilename[ 1000 ] = "";

bool help = false;
std::vector< PascalCString > fileList;
std::set< UnicodeChar > charSet;

//===========================================================================
// Member Functions
//===========================================================================

bool ExportHeaderFile()
{
    std::ofstream outFile( headerFilename );
    outFile << "//Autogenerated header file " << endl;
    outFile << "P3D_WCHAR defaultCharacters[] = { " << endl;

    std::set< UnicodeChar >::const_iterator it;
    for( it = charSet.begin(); it != charSet.end(); it++ )
    {
        UnicodeChar printMe = *it;
        unsigned short number = unsigned short( printMe );
        char printable[ 5 ] = "";
        sprintf( printable, "%x", number );

        outFile << "0x" << printable << "," << endl;
    }

    outFile << "};" << endl;
    outFile.close();
    return true;
}

//===========================================================================
// void LoadFileList();
//===========================================================================
// Description: loads in the list of text bibles that need to be parsed
//
// Constraints:    None
//
// Parameters:    argc,argv - these are the same as in int main()
//
// Return:      Nothing
//
//===========================================================================
bool LoadFileList()
{
    std::ifstream infile( ::filename );
    if( !infile.good() )
    {
        return false;
    }

    while( infile.good() )
    {
        char inputline[ 1000 ] = "";
        infile.getline( inputline, 1000 );
        PascalCString textBibleFilename = inputline;
        ::fileList.push_back( textBibleFilename );
    }
    return true;
}

//===========================================================================
// bool LoadTextBibles()
//===========================================================================
// Description: loads in the list of text bibles that need to be parsed
//
// Constraints:    None
//
// Parameters:    argc,argv - these are the same as in int main()
//
// Return:      Nothing
//
//===========================================================================
bool LoadTextBibles()
{
    int i;
    for( i = 0; i < ::fileList.size(); i++ )
    {
        PascalCString filename = fileList[ i ];
        LanguageDatabase ldb;
        bool fileSuccessfullyLoaded = ldb.Import( filename );
        if( fileSuccessfullyLoaded == false )
        {
            cout << "ERROR: opening file :" << filename << endl;
            return false;
        }
        CharSet characters = ldb.GetCharSet();
        CharSet::iterator it;
        for( it = characters.begin(); it != characters.end(); it++ )
        {
            UnicodeChar insertMeChar = *it;
            charSet.insert( insertMeChar );
        }
    }
    return true;
}


//===========================================================================
// void ParseCommandLine( int argc, char* argv[] )
//===========================================================================
// Description: deals with all the command line options 
//
// Constraints:    None
//
// Parameters:    argc,argv - these are the same as in int main()
//
// Return:      Nothing
//
//===========================================================================
void ParseCommandLine( int argc, char* argv[] )
{
    //what command line flags are we concerned with?
    for(int n = 1; n < argc; n++)
    {
        //allow all the following characters for delimiters
        if( (argv[n][0]=='/') || (argv[n][0]=='\\') || (argv[n][0]=='-') )
        {
            if( ::toupper(argv[n][1])=='F')
            {
                if(argv[n][2]==':')
                {
                    //we've found the filenmae, copy it into al global variable
                    if(!::filename)
                    {
                        ::printf( "where's the filename?\n" );
                        help = 1;
                        break;
                    }
                    ::strcpy( filename , argv[ n ] + 3 );
                }
                else
                {
                    ::printf( "where's the ':' for the filename ?\n" );
                    help = 1;
                    break;
                }
            }
            else if( ::toupper(argv[n][1])=='H')
            {
                if(argv[n][2]==':')
                {
                    //we've found the filenmae, copy it into a global variable
                    if(!::headerFilename)
                    {
                        ::printf( "where's the header filename?\n" );
                        help = 1;
                        break;
                    }
                    ::strcpy( headerFilename , argv[ n ] + 3 );
                }
                else
                {
                    ::printf( "where's the ':' for the filename ?\n" );
                    help = 1;
                    break;
                }
            }
            else
            {
                ::printf( "unrecognized option!\n" );
                help=1;
                break;
            }
        }
        else
        {
            ::printf( "bad delimiter - wanted a '/'!\n" );
            help = 1;
            break;
        }
    }
    if(! ::filename)
    {
        help=1;
    }

    //if there are no arguments then display the help
    if( ::stricmp( ::filename, "" ) == 0 )
    {
        help = 1;
    }
}

void PrintHelpMessage()
{
    cout << "You need help" << endl;    //IAN IMPROVE: this should do something more appropriate
}


//===========================================================================
// int main( int argc, char* argv[], char* envp[] )
//===========================================================================
// Description: maim program loop
//
// Constraints:    None
//
// Parameters:    DEFAULT
//
// Return:      success code
//
//===========================================================================
int main( int argc, char* argv[], char* envp[] )
{
    //_CrtSetBreakAlloc( 123469 );
    LanguageDatabase* ldb = new LanguageDatabase;
    ParseCommandLine( argc, argv );

    if( help ) 
    {
        PrintHelpMessage( );
        return -1;
    }

    bool success = true;
    success &= LoadFileList();
    success &= LoadTextBibles();
    success &= ExportHeaderFile();


    delete ldb;
    cout << "returning" << endl;
    return ( 0 );
}
