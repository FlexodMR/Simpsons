//===========================================================================
// Copyright ©2001 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     November 27, 2001
//
// Component:   
//
// Description: This simply declares a global to allow the application
//              the Log object for the Rules.
//
// Creator:     Bryan Ewert
//
//===========================================================================
//===========================================================================
// Includes
//===========================================================================

#include "../inc/ruleLog.h"
#include "../inc/rule.hpp"

#include <tlDataChunk.hpp>
//#include <tlInventory.hpp>
//#include <tlLoadManager.hpp>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

CLog                                    gRuleLog;       // The Log.

//===========================================================================
// Constructor / Destructor
//===========================================================================

CRuleLogEntry::CRuleLogEntry( const CRule* pRule, const CRuleAttribute* pFirst, const CRuleAttribute* pOther )
:   CLogEntry( NULL )
{
    char* const             buf = new char [P3DMAXNAME];
    char* const             whatWhereBuf = new char [1280];
    char* const             failBuf = new char [1280];
    char* const             indexBuf = new char [256];
    char* const             attrName = new char [P3DMAXNAME];
    char* const             attrValue = new char [P3DMAXNAME];
    char* const             otherValue = new char [P3DMAXNAME];

    // buf is a work buffer.  Content is formatted into 'buf' using sprintf then..
    *buf = '\0';
    // .. concatenated onto 'failBuf'.
    *failBuf = '\0';

    // Use string buffers with <unknown> defaults.
    // If Name() or Value() are not assigned, they are NULL
    // and cannot be used in a strcpy()/sprintf().
    strcpy( attrName, "<unknown>" );
    strcpy( attrValue, "<unknown>" );
    strcpy( otherValue, "<unknown>" );

    WhatWhere( pRule, whatWhereBuf );

    if  ( 
            pFirst->Class() == CRuleAttribute::kClassMacroSum ||
            pFirst->Class() == CRuleAttribute::kClassMacroMin ||
            pFirst->Class() == CRuleAttribute::kClassMacroMax ||
            pFirst->Class() == CRuleAttribute::kClassMacroCount
        )
    {
        strcpy( otherValue, pFirst->CacheValue() );

        if ( pFirst->Class() == CRuleAttribute::kClassMacroCount )
        {
            strcpy( attrName, "COUNT()" );
        }
    }

    if ( pFirst->HasName() )
    {
        strcpy( attrName, pFirst->Name() );
    }

    if ( pFirst->HasValue() )
    {
        strcpy( attrValue, pFirst->Value() );
    }

    if ( ( pOther != NULL ) && ( pOther->HasValue() ) )
    {
        strcpy( otherValue, pOther->Value() );
    }

    if ( pFirst->Class() == CRuleAttribute::kClassFile )
    {
        strcpy( attrName, "File" );
        if ( pRule->HasFile() )
        {
            strcpy( otherValue, pRule->File() );
        }
    }

    if ( pFirst->Class() == CRuleAttribute::kClassExists )
    {
        if ( ( pOther != NULL ) && ( pOther->HasName() ) )
        {
            strcpy( otherValue, pOther->Name() );
        }
    }

    strcpy( failBuf, whatWhereBuf );
    
    if ( pFirst->InclusiveCompareType() == CRuleBase::kCompareEqual )
    {
        sprintf( buf, "(\"%s\": \"%s\" != \"%s\")", attrName, otherValue, attrValue );
    }
    if ( pFirst->InclusiveCompareType() == CRuleBase::kCompareNotEqual )
    {
        sprintf( buf, "(\"%s\": \"%s\" == \"%s\")", attrName, otherValue, attrValue );
    }
    if ( pFirst->InclusiveCompareType() == CRuleBase::kCompareLess )
    {
        sprintf( buf, "(\"%s\": \"%s\" >= \"%s\")", attrName, otherValue, attrValue );
    }
    if ( pFirst->InclusiveCompareType() == CRuleBase::kCompareGreater )
    {
        sprintf( buf, "(\"%s\": \"%s\" <= \"%s\")", attrName, otherValue, attrValue );
    }
    if ( pFirst->InclusiveCompareType() == CRuleBase::kCompareLessOrEqual )
    {
        sprintf( buf, "(\"%s\": \"%s\" > \"%s\")", attrName, otherValue, attrValue );
    }
    if ( pFirst->InclusiveCompareType() == CRuleBase::kCompareGreaterOrEqual )
    {
        sprintf( buf, "(\"%s\": \"%s\" < \"%s\")", attrName, otherValue, attrValue );
    }

    if ( pFirst->Class() == CRuleAttribute::kClassExists )
    {
        if ( pFirst->Not() )
        {
            sprintf( buf, "(Exists: \"%s\" - matches \"%s\")", otherValue, attrValue );
        }
        else
        {
            sprintf( buf, "(Does not exist: \"%s\")", attrValue );
        }
    }

    strcat( failBuf, buf );
    *buf = '\0';

    if ( pRule->HasMessage() )
    {
        strcat( failBuf, ": " );
        strncat( failBuf, pRule->Message(), 1024 );
    }

    this->SetEntry( failBuf );

    delete [] buf;
    delete [] failBuf;

    delete [] attrName;
    delete [] attrValue;
    delete [] otherValue;

}

CRuleLogEntry::CRuleLogEntry( const char* pFile, const char* pError, unsigned int line )
:   CLogEntry( NULL )
{
    char* const             failBuf = new char [1280];

    // .. concatenated onto 'failBuf'.
    *failBuf = '\0';
    
    sprintf( failBuf, "Syntax Error in Rule \"%s\" on line %d: %s", pFile, line, pError );
    
    this->SetEntry( failBuf );

    delete [] failBuf;
}

CRuleLogEntry::CRuleLogEntry( const CRule* pRule, const char* pAnno )
:   CLogEntry( NULL )
{
    assert( pAnno != NULL );

    char* const                 failBuf = new char [1280];
    char* const                 whatWhereBuf = new char [1280];

    WhatWhere( pRule, whatWhereBuf );

    sprintf( failBuf, "%s: %s", whatWhereBuf, pAnno );
    
    this->SetEntry( failBuf );

    delete [] whatWhereBuf;
    delete [] failBuf;
}

CRuleLogEntry::~CRuleLogEntry()
{
}

//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

CRuleLogEntry::CRuleLogEntry( const CRuleLogEntry& other )
:   CLogEntry( "CRuleLogEntry Copy Constructor" )
{
    *this = other;
}

CRuleLogEntry& CRuleLogEntry::operator = ( const CRuleLogEntry& other )
{
    CLogEntry::operator = ( other );
    return *this;
}


//===========================================================================
// Member Functions
//===========================================================================

//===========================================================================
// CRuleLogEntry::GetChunkName
//===========================================================================
// Description: Searches the fields for the specified chunk and if a
//              "Name" field is found its value is copied into the
//              buffer provided.
//
// Constraints: 
//
//  Parameters: tlDataChunk* pChunk: The P3D chunk to scan.
//              char* nameBuf: Pre-allocated buffer to store Name, if found.
//              size_t bufSize: The size of the buffer provided.
//
//      Return: (void)
//
//              If "Name" field is found then nameBuf will contain the
//              field's value on return.
//
//===========================================================================
void CRuleLogEntry::GetChunkName( tlDataChunk* pChunk, char* nameBuf, size_t bufSize ) const
{
    *nameBuf = '\0';

    tlDataChunk::RegisterDefaultChunks();

    // Check to see if subchunk has a "Name" field
    int j = 0;
    while (j < pChunk->GetFieldCount())
    {
        if ( !pChunk->GetFieldIsArray(j) &&
             (strcmp(pChunk->GetFieldName(j), "Name") == 0))
        {
            pChunk->GetFieldValue(j, nameBuf, bufSize);
            return;
        }

        ++j;
    }
}

//===========================================================================
// CRuleLogEntry::WhatWhere
//===========================================================================
// Description: This function constructs a string which summarizes the
//              context for the specified CRule.  The format is:
//
//                "Label" [1.1] "chunkName" <tlDataChunk>
//
//              Where:
//                  "Label" is the label specified in the Rule.
//                  [1.1] describes the chunk's index navigation sequence.
//                  "chunkName" is the Name stored in the dataChunk.
//                  <tlDataChunk> is the dataChunk's type.
//
// Constraints: 
//
//  Parameters: const CRule* pRule: Pointer to the CRule to query.
//              char* whatWhereBuf: Pre-allocated storage buffer for the
//                                  results.
//
//      Return: (void)
//
//===========================================================================
void CRuleLogEntry::WhatWhere( const CRule* pRule, char* whatWhereBuf )
{
    char* const             buf = new char [P3DMAXNAME];
    char* const             labelBuf = new char [P3DMAXNAME];
    char* const             nameBuf = new char [P3DMAXNAME];
    char* const             typeBuf = new char [P3DMAXNAME];
    char* const             indexBuf = new char [256];

    CStack<tlDataChunk*>    chunkStack;                // P3D navigation to the Chunk where this Rule started (used for macro logging).
    CStack<unsigned int>    chunkIndexStack;           // Index of DataChunk within P3D file where this Rule started.

    chunkStack = pRule->mDataChunkStack;
    chunkIndexStack = pRule->mDataChunkIndexStack;

    *labelBuf = '\0';
    *nameBuf = '\0';
    *typeBuf = '\0';
    *indexBuf = '\0';

    if ( pRule->HasLabel() )
    {
        sprintf( labelBuf, "\"%s\"", pRule->Label() );
    }

    // What? Where? and Why?
    if ( !chunkStack.IsEmpty() )
    {
        *buf = '\0';
        bool fromParent = false;

        sprintf( typeBuf, "<%s>", chunkStack.Current()->GetType() );

//        tlLoadManager       loadit;
//        loadit.InstallDefaultLoaders();

        while (( *buf == '\0' ) && ( !chunkStack.IsEmpty() ) )
        {
//            tlEntityLoader*     pLoader = NULL;
            tlDataChunk*        pDataChunk = chunkStack.Current();
//            int                 id = pDataChunk->ID();
//
//            pLoader = loadit.GetLoader( id );
//
//            if ( pLoader != NULL )
//            {
//                tlEntity*           pEntity = NULL;
//
//                pEntity = pLoader->Load( pDataChunk );
//
//                if ( pEntity != NULL )
//                {
//                    strcpy( buf, pEntity->GetName() );
//                }
//            }

            GetChunkName( pDataChunk, buf, P3DMAXNAME );

            if ( *buf == '\0' ) fromParent = true;
            chunkStack.Pop();
        }

        if ( *buf != '\0' )
        {
            if ( fromParent )
            {
                sprintf( nameBuf, "\"(%s)\"", buf );
            }
            else
            {
                sprintf( nameBuf, "\"%s\"", buf );
            }
        }
    }

// --- Convert the index stack to an outline string in the form "1.2.3"  ----

    {
        *indexBuf = '\0';

        if ( chunkIndexStack.Size() > 0 )
        {
            strcat( indexBuf, "[" );

            unsigned int* pArray = new unsigned int [ chunkIndexStack.Size() ];
            unsigned int s = 0;

            while ( chunkIndexStack.Size() )
            {
                pArray[s++] = chunkIndexStack.Pop();
            }

            while ( s-- )
            {
                sprintf( buf, "%d", pArray[s] );
                strcat( indexBuf, buf );
                if ( s > 0 )
                {
                    strcat( indexBuf, "." );
                }
            }

            strcat( indexBuf, "]" );

            delete [] pArray;
        }
    }

    *whatWhereBuf = '\0';

    if ( strlen( labelBuf ) )
    {
        strcat( whatWhereBuf, labelBuf );
        strcat( whatWhereBuf, " " );
    }

    if ( strlen( indexBuf ) )
    {
        strcat( whatWhereBuf, indexBuf );
        strcat( whatWhereBuf, " " );
    }

    if ( strlen( nameBuf ) )
    {
        strcat( whatWhereBuf, nameBuf );
        strcat( whatWhereBuf, " " );
    }

    if ( strlen( indexBuf ) )
    {
        strcat( whatWhereBuf, typeBuf );
        strcat( whatWhereBuf, " " );
    }

    delete [] indexBuf;
    delete [] typeBuf;
    delete [] nameBuf;
    delete [] labelBuf;
    delete [] buf;
}
