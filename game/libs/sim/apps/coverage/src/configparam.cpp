///////////////////////////////////////////////////////////////////////////////
// File: configparam.hpp
// Author: Young T. Son
// Creation Date: October 31, 2000
//

#include <string.h>
#include <stdlib.h>
#include <radfile.hpp>
#include <p3d/pure3d.hpp>
#include <p3d/error.hpp>
#include "configparam.hpp"

ConfigParam::ConfigParam()
{
    m_nOptions = 0;
}

void ConfigParam::Init( const char* fname, tPlatform* platform )
{
    char* top;
    char* eof;
    char* tok;

    IRadFile* pFile;
    radFileOpen(&pFile, fname, false, OpenExisting, NormalPriority, 0);

    unsigned int filesize;
    pFile->GetSizeAsync(&filesize);
    pFile->WaitForCompletion();

    char* buff = new char[filesize + 1];  // +1 for extra \0 at the end
    pFile->ReadAsync(buff, filesize);
    pFile->WaitForCompletion();

    pFile->Release();

    top = buff;                             // so i can delete it later
    eof = buff + filesize;

    while( buff < eof )
    {
        if( *buff == '#' )
        {
            // comment found. skip to next line
            while( *buff != '\n' && *buff != '\r' && buff != eof )
            {
                buff++;
            }
            buff++;
            continue;
        }
        
        tok = buff;
        // find '=' in this line
        while( *tok != '=' && *tok != '\n' && *tok != '\r' && tok != eof )
        {
            tok++;
        }

        if( *tok != '=' )
        {
            buff++;
            continue;
        }

        // add NULL to make str ops easier
        // now the line will look like "SomeOption\0optionval\n"
        *tok = '\0';
        
        // options maxed out?
        if( m_nOptions == nOptions )
        {
            printf("Ack!  increase nOptions\n");
            return;
        }
        
        // copy the option name
        m_options[m_nOptions] = new char[strlen(buff) + 1];
        strcpy( m_options[m_nOptions], buff );

        buff = tok + 1;

        // go to the end of the line
        while( *tok != '\n' && *tok != '\r' && tok != eof )
        {
            tok++;
        }

        // add NULL to make str ops easier
        // now the line will look like "optionval\0"
        *tok = '\0';

        m_optionVals[m_nOptions] = new char[strlen(buff) + 1];
        strcpy( m_optionVals[m_nOptions], buff );
        m_nOptions++;

        buff = tok + 1;
    }
 
    delete[] top;
}


ConfigParam::~ConfigParam()
{
    int i;
    for( i = 0; i < m_nOptions; i++ )
    {
        delete[] m_optionVals[i];
        delete[] m_options[i];
    }
}

int ConfigParam::FindOptionIndex( const char* option )
{
    int i;
    for( i = 0; i < m_nOptions; i++ )
    {
        if( strcmp( option, m_options[i] ) == 0 )
        {
            return i;
        }
    }

    // did not find that option!
//   P3DASSERT( false );
    return -1;
}


const char* ConfigParam::GetOptionStrVal( const char* option )
{
    int index = FindOptionIndex( option );
    if( index == -1 ) return 0;

    return m_optionVals[index];
}


int ConfigParam::GetOptionIntVal( const char* option )
{
    int index = FindOptionIndex( option );
    if( index == -1 ) return 0;

    return atoi( m_optionVals[index] );
}


float ConfigParam::GetOptionFloatVal( const char* option )
{
    int index = FindOptionIndex( option );
    if( index == -1 ) return 0.0f;

    return static_cast<float>( atof( m_optionVals[index] ) );
}