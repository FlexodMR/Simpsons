//===========================================================================
// Copyright ©2001 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     November 26, 2001
//
// Component:   
//
// Description: 
//
// Creator:     Bryan Ewert
//
//===========================================================================

// Recompilation protection flag.
#ifndef __RULECOLLECTION_H  
#define __RULECOLLECTION_H  

//===========================================================================
// Nested Includes
//===========================================================================

#include <listarray/listarray.hpp>

#include "rule.hpp"

//===========================================================================
// Forward References
//===========================================================================

// Doing a forward declaration here, instead of #including <toollib.hpp>,
// avoids those nasty "truncating debug information" warnings.
// #include is in "ruleCollection.cpp" instead.
class tlDataChunk;

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

static const char gRuleCollectionVersion[] = "Rules 1.0";

static const char* gRuleStatus[] = 
{
    "OK",
    "Warn",
    "ERROR"
};

//===========================================================================
// Interface Definitions
//===========================================================================

class CRuleCollection
{
public:
    enum RuleStatusEnum
    {
        kStatusOK,
        kStatusWarn,
        kStatusError
    };

    enum RuleContextEnum
    {
        kContextNone = 0,
        kContextRule,
        kContextCondition,
        kContextRequirement,
        kContextMacro
    };

    // Note: This prepends a History Chunk to the specified Pure3D file.  If 
    //       this library is called from a Pure3D command-line tool then you 
    //       need simply provide the Param->WriteHistory flag as an argument 
    //       to the ApplyRules() function.
    bool                                ApplyRules( const char* pure3dFile, bool bAddHistory = true );    // Parse the Rules file.

    void                                AddRule( CRule* rule );
    const CRule*                        Rule( unsigned int index ) const;

    bool                                AddFile( const char* file );
    bool                                HasFile( const char* file ) const;

    void                                SetWarnSeverity( unsigned int warnSeverity );
    unsigned int                        WarnSeverity( void ) const;

    void                                SetErrorSeverity( unsigned int errorSeverity );
    unsigned int                        ErrorSeverity( void ) const;

//    RuleStatusEnum                      CompareWith( const CRule& compareRule );
    
    RuleStatusEnum                      Status( void ) const;

    void                                Clear( void );

    friend std::ostream&                operator << ( std::ostream& os, const CRuleCollection& rules );

// Constructor / Destructor
public:
    CRuleCollection();
    ~CRuleCollection();

protected:
    bool                                ApplyRuleToAll( CRule* pRule );
    bool                                ApplyRuleToSelf( CRule* pRule, bool* pbHasParamChunks = NULL );
    bool                                ApplyRuleToChildren( CRule* pRule, bool bRecurse = true, const tlDataChunk* pSkipChunk = NULL );
    bool                                ApplyRuleToSiblings( CRule* pRule );
    bool                                ApplyRuleToParents( CRule* pRule );

private:
    CListArray<char*>                   mRuleFiles;                     // Array of Rules files parsed into this Collection.
    CListArray<CRule*>                  mRuleCollection;                // The collection of Rules to apply.
    
    bool                                Parse( const char* inFile );
    
    bool                                ProcessRules( void );
    bool                                ProcessRule( CRule* pRule );
    bool                                ProcessSequence( CRule* pRule );

    void                                ProcessChunkParams( tlDataChunk* inChunk, CRule& compareRule );

    tlDataChunk*                        HistoryChunk( void ) const;
    CStack<tlDataChunk*>                mDataChunkStack;                // P3D navigation to the Chunk representing this Rule.
    CStack<unsigned int>                mDataChunkIndexStack;           // Index of DataChunk within P3D file.

    const char*                         mpP3dFile;                      // The '.p3d' file being processed.

    // LOWER Severity values are less critical, HIGHER values are more critical.
    // The goal is that an absolute value of 0 (zero) for Severity can always 
    // be considered the catch-all level which will ALWAYS generate an error 
    // if any Rule fails.
    unsigned int                        mWarnSeverity;                  // Severity at which to produce a Warning.
    unsigned int                        mErrorSeverity;                 // Severity at which to produce an Error.

    unsigned int                        mSeverity;                      // Lowest Severity level compounded during evaluation.
};

//===========================================================================
// Inlines
//===========================================================================

#endif // __RULECOLLECTION_H  
