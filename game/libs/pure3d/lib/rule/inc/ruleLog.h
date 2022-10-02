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

// Recompilation protection flag.
#ifndef __RULELOG_H  
#define __RULELOG_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include <log/inc/log.h>

//===========================================================================
// Forward References
//===========================================================================

class CRule;
class CRuleAttribute;
class tlDataChunk;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

extern CLog                             gRuleLog;       // The Log.

class CRuleLogEntry : public CLogEntry
{
public:
    CRuleLogEntry&              operator = ( const CRuleLogEntry& other );

public:
    CRuleLogEntry( const CRule* pRule, const CRuleAttribute* pFirst, const CRuleAttribute* pOther = NULL );
    CRuleLogEntry( const char* pFile, const char* pError, unsigned int line );    // syntax error
    CRuleLogEntry( const CRule* pRule, const char* pAnno );    // annotation error
    CRuleLogEntry( const CRuleLogEntry& other );
    virtual ~CRuleLogEntry();

private:
    void                        GetChunkName( tlDataChunk* pChunk, char* nameBuf, size_t bufSize ) const;
    void                        WhatWhere( const CRule* pRule, char* whatWhereBuf );

};

#endif // __RULELOG_H  
