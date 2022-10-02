//===========================================================================
// Copyright ©2001 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     November 21, 2001
//
// Component:   Rules system for Art Diagnostic Tools.
//
// Description: This class is the base class from which RuleAttribute
//              is derived.  It provides the "Value" comparison.
//
// Creator:     Bryan Ewert
//
//===========================================================================
//===========================================================================
// Includes
//===========================================================================

#include <stdio.h>
#include <string.h>
#include <assert.h>

#include <iostream>

#include "../inc/ruleBase.hpp"

//#include "regex/regex2.h"
#include "regex++/include/regex"

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Constructor / Destructor
//===========================================================================

CRuleBase::CRuleBase()
:   mValue( NULL ),
    mCacheValue( 0.0 ),
    mCacheStarted( false ),
    mValueType( CRuleBase::kString ),
    mCompareType( CRuleBase::kCompareEqual ),
    mbOrWithNext( false ),
    mbNot( false ),
    mbNoCase( false )
{
}

CRuleBase::~CRuleBase()
{
    Clear();
}

//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

CRuleBase::CRuleBase( const CRuleBase& other )
:   mValue( NULL ),
    mCacheValue( 0.0 ),
    mCacheStarted( false ),
    mValueType( CRuleBase::kString ),
    mCompareType( CRuleBase::kCompareEqual ),
    mbOrWithNext( false ),
    mbNot( false ),
    mbNoCase( false )
{
    *this = other;    
}

CRuleBase& CRuleBase::operator = ( const CRuleBase& other )
{
    Clear();

    SetValue( other.mValue );
    this->mCacheValue = other.mCacheValue;
    this->mCacheStarted = other.mCacheStarted;
    this->mValueType = other.mValueType;
    this->mCompareType = other.mCompareType;
    this->mbOrWithNext = other.mbOrWithNext;
    this->mbNot = other.mbNot;
    this->mbNoCase = other.mbNoCase;

    return *this;
}

//===========================================================================
// Operator Overloads
//===========================================================================

bool CRuleBase::operator == ( const CRuleBase& other ) const
{
    return  ( 
                ( strcmp( other.mValue, mValue ) == 0 ) && 
                ( mValueType == other.mValueType ) && 
                ( mCacheValue == other.mCacheValue ) &&
                ( mCacheStarted == other.mCacheStarted ) && 
                ( mCompareType == other.mCompareType ) && 
                ( mbOrWithNext == other.mbOrWithNext ) &&
                ( mbNot == other.mbNot ) &&
                ( mbNoCase == other.mbNoCase )
            );
}


//===========================================================================
// Member Functions
//===========================================================================

//===========================================================================
// CRuleBase::Clear
//===========================================================================
// Description: Clears all contents for the Rule and resets to defaults.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
void CRuleBase::Clear( void )
{
    if ( mValue != NULL )
    {
        // This is here to catch bad constructor cases that leave the mValue
        // member variable invalid.  An example of this would be a list 
        // template which that does not utilize the constructor for objects
        // that it allocates for its array.
        assert ( *mValue >= 0x00 );

        delete [] mValue;
        mValue = NULL;
    }
    mValueType = CRuleBase::kString;

    mCompareType = CRuleBase::kCompareEqual;

    mbOrWithNext = false;
    mbNot = false;
    mbNoCase = false;

    ClearCache();
}

void CRuleBase::ClearCache( void )
{
    mCacheValue = 0.0;
    mCacheStarted = false;    
}

//===========================================================================
// CRuleBase::SetValue
//===========================================================================
// Description: Sets the comparison Value for this Base Rule.  This value is
//              compared against an incoming Value using the Compare Type,
//              specified via RuleCompareEnum.  The Value is stored as a 
//              string - the highest common multiple, if you will - but the 
//              comparison is performed based on a variable type, specified via 
//              the RuleValueTypeEnum.
//
// Constraints: This is an Optional parameter.  A Base Rule may be applied
//              without specifying the Value.
//
// Parameters:  const char* value: String representation for the Value.
//                                 
// Return:      (void)
//
//===========================================================================
void CRuleBase::SetValue( const char* value )
{
    if ( mValue == value ) return;

    if ( mValue )
    {
        delete [] mValue;
        mValue = NULL;
    }

    if ( value != NULL )
    {
        mValue = new char [ strlen( value ) + 1 ];
        strcpy( mValue, value );
    }

    AutoValueType();
}

void CRuleBase::SetValue( const int value )
{
    if ( mValue )
    {
        delete [] mValue;
        mValue = NULL;
    }

    char buf[32];
    sprintf( buf, "%d", value );

    mValue = new char [ strlen( buf ) + 1 ];
    strcpy( mValue, buf );

    mValueType = kULong;
}

void CRuleBase::SetValue( const float value )
{
    if ( mValue )
    {
        delete [] mValue;
        mValue = NULL;
    }

    char buf[32];
    sprintf( buf, "%f", value );

    mValue = new char [ strlen( buf ) + 1 ];
    strcpy( mValue, buf );

    mValueType = kFloat;
}

double CRuleBase::AsDouble( void ) const
{
    char* pTerm;
    double dValue = strtod( mValue, &pTerm );
    return dValue;
}

float CRuleBase::AsFloat( void ) const
{
    float fValue = 0.0f;
    sscanf( mValue, "%f", &fValue );
    return fValue;
}

int CRuleBase::AsInt( void ) const
{
    int iValue = 0;
    sscanf( mValue, "%d", &iValue );
    return iValue;
}

//===========================================================================
// CRuleBase::SetValueType
//===========================================================================
// Description: Sets the Value Type for this Base Rule.  The Value is stored 
//              as a string but is converted to this type for the purposes
//              of the comparison.
//
// Constraints: 
//
// Parameters:  CRuleBase::RuleValueTypeEnum type: The type used for the
//                         comparison when applying this Base Rule.
//                                 
// Return:      (void)
//
//===========================================================================
void CRuleBase::SetValueType( CRuleBase::RuleValueTypeEnum type )
{
    mValueType = type;
}

//===========================================================================
// CRuleBase::SetValueType
//===========================================================================
// Description: A convenience function with which you may set the Value Type 
//              using a string description of the type.  Valid strings for 
//              the types are as follows (case insensitive):
//                  kString: "string" (or anything, really; this is the default)
//                  kULong: "ulong"
//                  kFloat: "float"
//                  kColour: "colour"
//
// Constraints: The string descriptions are NOT case sensitive.
//
// Parameters:  const char* type: NULL-terminated string description for the Value Type.
//                                 
// Return:      (void)
//
//===========================================================================
void CRuleBase::SetValueType( const char* type )
{
    if ( stricmp( type, "ULONG" ) == 0 )
    {
        mValueType = CRuleBase::kULong;
    }
    else if ( stricmp( type, "float" ) == 0 )
    {
        mValueType = CRuleBase::kFloat;
    }
    else if ( stricmp( type, "COLOUR" ) == 0 )
    {
        mValueType = CRuleBase::kColour;
    }
    else
    {
        mValueType = CRuleBase::kString;
    }
}

//===========================================================================
// CRuleBase::hextofloat        (const)
//===========================================================================
// Description: Converts a two-byte hex string (e.g. 'FF') to a float value.
//              '00' equals 0.0; 'FF' equals 1.0.
//
// Constraints: 
//
// Parameters:  const char hex[2]: Two-byte hex string.
//
// Return:      (float): Value between 0.0 and 1.0 corresponding to hex string.
//
//===========================================================================
float CRuleBase::hextofloat( const char hex[2] ) const
{
    float                               fValue = 0.0F;
    int                                 value[2];

    value[0] = value[1] = 0;

    if ( ( hex[0] >= 'a') && ( hex[0] <= 'f') ) value[0] = ( hex[0] - 'a' + 10 );
    else if ( ( hex[0] >= '0' ) && ( hex[0] <= '9' ) ) value[0] = ( hex[0] - '0' );
    else if ( ( hex[0] >= 'A' ) && ( hex[0] <= 'F' ) ) value[0] = ( hex[0] - 'A' + 10 );

    if ( ( hex[1] >= 'a') && ( hex[1] <= 'f') ) value[1] = ( hex[1] - 'a' + 10 );
    else if ( ( hex[1] >= '0' ) && ( hex[1] <= '9' ) ) value[1] = ( hex[1] - '0' );
    else if ( ( hex[1] >= 'A' ) && ( hex[1] <= 'F' ) ) value[1] = ( hex[1] - 'A' + 10 );

    fValue = ( (value[0]<<4) | value[1] ) / 255.0F;

    return fValue;
}

//===========================================================================
// CRuleBase::ishex     (const)
//===========================================================================
// Description: Determines if the provided string contains only hex
//              characters: '0' through '9' and 'a' through 'f' (or
//              'A' through 'F').
//
//              String MUST have a "0x" (or "0X") prefix to indicate
//              it is a hex value.
//
// Constraints: 
//
// Parameters:  const char* value: NULL-terminated string that may be
//                                 a hex value.
//
// Return:      (bool): TRUE if string is a hex value; else FALSE.
//
//===========================================================================
bool CRuleBase::ishex( const char* value ) const
{
    bool                                isHex = false;

    const char*                         buf = value;

    // "0x" leader is REQUIRED.
    if ( *buf == '0' && ( *(buf+1) == 'x' || *(buf+1) == 'X' ) )
    {
        buf += 2;

        while ( *buf )
        {
            isHex = ( 
                        ( *buf >= '0' && *buf <= '9' ) || 
                        ( *buf >= 'a' && *buf <= 'f' ) ||
                        ( *buf >= 'A' && *buf <= 'F' )
                    );

            if ( !isHex )
            {
                break;
            }

            buf++;
        }
    }

    return isHex;
}

//===========================================================================
// CRuleBase::isnumeric     (const)
//===========================================================================
// Description: Determines if the specified string contains only numeric
//              characters: '0' through '9'.
//
// Constraints: 
//
// Parameters:  const char* value: NULL-terminated string which may represent
//                                 a numeric value.
//
// Return:      (bool): TRUE if string represents numeric value; else FALSE.
//
//===========================================================================
bool CRuleBase::isnumeric( const char* value ) const
{
    bool                                bIsNumeric = false;
    while ( *value )
    {
        bIsNumeric = ( ( *value >= '0' && *value <= '9' ) || ( *value == '.' ) || ( *value == '-' ) );

        if ( !bIsNumeric )
        {
            break;
        }

        value++;
    }

    return bIsNumeric;
}

//===========================================================================
// CRuleBase::AutoValueType
//===========================================================================
// Description: Auto-magically determines the type for this Rule's current
//              value and assigns it to the mValue data member.
//
//              If the value contains a '.' decimal point it is assumed
//              to be a (float).
//
//              If the value is a 10-character hex value (e.g. "0xFF80663A")
//              it is assumed to be (colour).
//
//              if the value contains only numeric ('0' through '9') characters
//              is it assumed to be (ulong).
//
//              If all else fails, it is by default (string).
//
// Constraints: Called by ::SetValue().
//
//              If you want to override the auto-type then you must call
//              ::SetValueType() after calling ::SetValue().
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
void CRuleBase::AutoValueType( void )
{
    CRuleBase::RuleValueTypeEnum        valueType = CRuleBase::kString;

    if ( mValue != NULL )
    {
        // If is a numeric string (only '0' through '9' and/or '-' and '+')
        // and contains a decimal point, assume (float) type.
        if ( isnumeric( mValue ) && ( strchr( mValue, '.' ) != NULL ) )
        {
            valueType = CRuleBase::kFloat;    
        }

        else if ( strlen( mValue ) == 10 )
        {
            if ( ishex( mValue ) )
            {
                valueType = CRuleBase::kColour;
            }
        }

        else if ( isnumeric( mValue ) )
        {
            valueType = CRuleBase::kULong;
        }
    }

    mValueType = valueType;
}

//===========================================================================
// CRuleBase::SetCompareType
//===========================================================================
// Description: Sets the comparison type to the specified enum.
//
// Constraints: Does not modify nor receive influence from the NOT flag.
//
// Parameters:  RuleCompareEnum compareType: The comparison type.
//
// Return:      (void)
//
//===========================================================================
void CRuleBase::SetCompareType( CRuleBase::RuleCompareEnum compareType )
{
    mCompareType = compareType;
}

//===========================================================================
// CRuleBase::SetCompareType
//===========================================================================
// Description: Convenience function to allow for setting the compare ENUM
//              via a string equivalent.
//
//                  kCompareNotEqual: "!=", "<>" or "><"
//                  kCompareLess: "<"
//                  kCompareGreater: ">"
//                  kCompareLessOrEqual: "<=" or "=<"
//                  kCompareGreaterOrEqual: ">=" or "=>"
//                  kCompareEqual: "=", "==" (or anything else not recognized)
//
// Constraints: Non-recognized strings will assign kCompareEqual by default.
//
//              Does not modify nor receive influence from the NOT flag.
//
// Parameters:  const char* compare: NULL-terminated string representing
//                                   compare method.
//
// Return:      (void)
//
//===========================================================================
void CRuleBase::SetCompareType( const char* compareType )
{
    mCompareType = CRuleBase::kCompareEqual;

    if ( ( strcmp( compareType, "!=" ) == 0 ) || ( strcmp( compareType, "<>" ) == 0 ) || ( strcmp( compareType, "><" ) == 0 ) )
    {
        mCompareType = CRuleBase::kCompareNotEqual;
    }

    else if ( strcmp( compareType, "<" ) == 0 )
    {
        mCompareType = CRuleBase::kCompareLess;
    }

    else if ( strcmp( compareType, ">" ) == 0 )
    {
        mCompareType = CRuleBase::kCompareGreater;
    }

    else if ( ( strcmp( compareType, "<=" ) == 0 ) || ( strcmp( compareType, "=<" ) == 0 ) )
    {
        mCompareType = CRuleBase::kCompareLessOrEqual;
    }

    else if ( ( strcmp( compareType, ">=" ) == 0 ) || ( strcmp( compareType, "=>" ) == 0 ) )
    {
        mCompareType = CRuleBase::kCompareGreaterOrEqual;
    }
}

//===========================================================================
// CRuleBase::InclusiveCompareType       (const)     (inline)
//===========================================================================
// Description: Returns the true Compare Type for comparing the Value data
//              (i.e. considers the NOT flag).
//
// Constraints: Used to provide CRuleLog an inclusive compare context.
//
// Parameters:  (void)
//
// Return:      (RuleCompareEnum): The Compare Type.
//
//===========================================================================
CRuleBase::RuleCompareEnum CRuleBase::InclusiveCompareType( void ) const
{
    RuleCompareEnum             compareType = mCompareType;

    if ( mbNot )
    {
        switch ( mCompareType )
        {
            case kCompareEqual:
            {
                compareType = kCompareNotEqual;
                break;
            }
            case kCompareNotEqual:
            {
                compareType = kCompareEqual;
                break;
            }
            case kCompareLess:
            {
                compareType = kCompareGreaterOrEqual;
                break;
            }
            case kCompareGreater:
            {
                compareType = kCompareLessOrEqual;
                break;
            }
            case kCompareLessOrEqual:
            {
                compareType = kCompareGreater;
                break;
            }
            case kCompareGreaterOrEqual:
            {
                compareType = kCompareNotEqual;
                break;
            }
        }
    }

    return compareType;
}

//===========================================================================
// CRuleBase::SetOrWithNext
//===========================================================================
// Description: Specifies that the results of this Rule shall be OR'd with
//              the results of the following Rule.
//
// Constraints: 
//
// Parameters:  bOrWithNext: TRUE if this Rule is to be OR'd with the next;
//                           FALSE if the results are AND'd with the next.
//
// Return:      (void)
//
//===========================================================================
void CRuleBase::SetOrWithNext( bool bOrWithNext )
{
    mbOrWithNext = bOrWithNext;
}

//===========================================================================
// CRuleBase::SetNot        (virtual)
//===========================================================================
// Description: Sets the state of the Not flag.
//
//              If TRUE, the Not flag negates the results of the Compare()
//              test.  Default is FALSE.
//
// Constraints: 
//
// Parameters:  bool bNot: TRUE if Compare() test should be negated; 
//                         else FALSE.
//
// Return:      (void)
//
//===========================================================================
void CRuleBase::SetNot( bool bNot )
{
    mbNot = bNot;
}

//===========================================================================
// CRuleBase::SetNoCase        (virtual)
//===========================================================================
// Description: Sets the state of the NoCase flag.
//
//              If TRUE, the NoCase signals that the Rule shall perform
//              case-insensitive comparison.  By default comparisons are
//              case-sensitive.
//
// Constraints: 
//
// Parameters:  bool bNot: TRUE if Compare() test should be case-insensitive; 
//                         else FALSE.
//
// Return:      (void)
//
//===========================================================================
void CRuleBase::SetNoCase( bool bNoCase )
{
    mbNoCase = bNoCase;
}

const char* CRuleBase::CacheValue( void ) const
{
    switch ( mValueType )
    {
        case kFloat:
        {
            sprintf( cacheValueAsString, "%f", mCacheValue );
            break;
        }
        case kColour:
        {
            sprintf( cacheValueAsString, "%f", mCacheValue );
            break;
        }
        case kULong:
        default:
        {
            int iValue = mCacheValue;
            sprintf( cacheValueAsString, "%d", iValue );
            break;
        }
    }

    return cacheValueAsString;
}

//===========================================================================
// CRuleBase::AppliesTo
//===========================================================================
// Description: *** NOT CURRENTLY USED ***
//
//===========================================================================
//bool CRuleBase::AppliesTo( const CRuleBase& compare ) const
//{
//    if ( mValue != NULL ) 
//    {
//        if ( ( compare.mValue != NULL ) || ( mValueType == CRuleBase::kCompareEqual ) )
//        {
//            return true;
//        }
//    }
//
//    return false;
//}

//===========================================================================
// CRuleBase::CompareWith           (const)
//===========================================================================
// Description: Performs a comparison between this Value data and another.
//              The only thing to compare is the Value.  If no Value is
//              specified in this object then no action is taken
//              and the test passes.  Otherwise the value is converted to
//              the Value Type and a comparison is performed with the 
//              other Value data.
//
//              Note: The specified 'compare' CRuleBase is the data from
//              the Pure3D chunk.  'this' is the user-specified Rule being 
//              applied.
//
// Constraints: The comparison is performed based on the Value Type for
//              _this_ object.  Currently the Value Type for the
//              comparison Value is not considered.
//
// Parameters:  const CRuleBase& compare: The Rule Value (data from the P3D
//                                        file) against which to compare.
//
// Return:      (bool): TRUE if this test passes; else FALSE.
//
//===========================================================================
bool CRuleBase::CompareWith( const CRuleBase& compare ) const
{
    bool                                bPass = true;

    if ( mValue != NULL ) 
    {
        if ( compare.mValue != NULL )
        {
//            if ( mValueType == CRuleBase::kString )
//            {
//                clog << "CRuleBase::CompareWith( \"" << compare.mValue << "\" using expression \"" << this->mValue << "\" )" << endl;
//                clog << " -> EXPRESSION Result: " << ( ( regperform( this->mValue, compare.mValue ) == 0 ) ? "TRUE" : "FALSE" ) << endl;
//            }

//            clog << "Compare \"" << mValue << "\" to \"" << compare.mValue << "\":";

            // Make comparison based on RuleValueTypeEnum
            switch ( mValueType )
            {
                // Is there a more efficient way to do this
                // compare than duplicating the switch(case) within
                // each ValueType?
                case CRuleBase::kULong:
                {
//                    clog << "===== COMPARE BY ULONG =====" << endl;

                    unsigned int        uLong, uLongCompare;
                    sscanf( mValue, "%u", &uLong );
                    sscanf( compare.mValue, "%u", &uLongCompare );

                    switch ( mCompareType ) // CompareType() )    // function respects NOT flag.
                    {
                        case CRuleBase::kCompareEqual:
                        {
                            bPass = ( uLong == uLongCompare );
                            break;
                        }
                        case CRuleBase::kCompareNotEqual:
                        {
                            bPass = ( uLongCompare != uLong );
                            break;
                        }
                        case CRuleBase::kCompareLess:
                        {
                            bPass = ( uLongCompare < uLong );
                            break;
                        }
                        case CRuleBase::kCompareGreater:
                        {
                            bPass = ( uLongCompare > uLong );
                            break;
                        }
                        case CRuleBase::kCompareLessOrEqual:
                        {
                            bPass = ( uLongCompare <= uLong );
                            break;
                        }
                        case CRuleBase::kCompareGreaterOrEqual:
                        {
                            bPass = ( uLongCompare >= uLong );
                            break;
                        }
                    }

                    break;
                }

                case CRuleBase::kFloat:
                {
//                    clog << "===== COMPARE BY FLOAT =====" << endl;

                    float               fValue, fValueCompare;

                    sscanf( mValue, "%f", &fValue);
                    sscanf( compare.mValue, "%f", &fValueCompare);

                    switch ( mCompareType ) // CompareType() )    // function respects NOT flag.
                    {
                        case CRuleBase::kCompareEqual:
                        {
                            bPass = ( fValueCompare == fValue );
                            break;
                        }
                        case CRuleBase::kCompareNotEqual:
                        {
                            bPass = ( fValueCompare != fValue );
                            break;
                        }
                        case CRuleBase::kCompareLess:
                        {
                            bPass = ( fValueCompare < fValue );
                            break;
                        }
                        case CRuleBase::kCompareGreater:
                        {
                            bPass = ( fValueCompare > fValue );
                            break;
                        }
                        case CRuleBase::kCompareLessOrEqual:
                        {
                            bPass = ( fValueCompare <= fValue );
                            break;
                        }
                        case CRuleBase::kCompareGreaterOrEqual:
                        {
                            bPass = ( fValueCompare >= fValue );
                            break;
                        }
                    }
                    break;
                }

                case CRuleBase::kColour:
                {
                    // Colour expected in the format "0xAARRGGBB"
                    // Alpha compared to Alpha, OR'd with
                    // Luminance compared to Luminance.
                    float a = hextofloat( mValue+2 );
                    float r = hextofloat( mValue+4 );
                    float g = hextofloat( mValue+6 );
                    float b = hextofloat( mValue+8);
                    float y = ( 0.212671F * r + 0.715160F * g + 0.072169F * b );

                    float ca = hextofloat( compare.mValue+2 );
                    float cr = hextofloat( compare.mValue+4 );
                    float cg = hextofloat( compare.mValue+6 );
                    float cb = hextofloat( compare.mValue+8 );
                    float cy = ( 0.212671F * cr + 0.715160F * cg + 0.072169F * cb );
                    
//                    clog << endl << "===== COMPARE BY COLOUR ===== { " << a << ", " << y << " } vs { " << ca << ", " << cy << " }" << endl;

                    switch ( mCompareType ) // CompareType() )    // function respects NOT flag.
                    {
                        case CRuleBase::kCompareEqual:
                        {
                            bPass = ( ca == a ) && ( cy == y );
                            break;
                        }
                        case CRuleBase::kCompareNotEqual:
                        {
                            bPass = ( ca != a ) || ( cy == y );
                            break;
                        }
                        case CRuleBase::kCompareLess:
                        {
                            bPass = ( ca < a ) || ( cy < y );
                            break;
                        }
                        case CRuleBase::kCompareGreater:
                        {
                            bPass = ( ca > a ) || ( cy > y );
                            break;
                        }
                        case CRuleBase::kCompareLessOrEqual:
                        {
                            bPass = ( ca <= a ) || ( cy <= y );
                            break;
                        }
                        case CRuleBase::kCompareGreaterOrEqual:
                        {
                            bPass = ( ca >= a ) || ( cy >= y );
                            break;
                        }
                    }
                    break;
                }

                // Note: Default behaviour is to perform string comparison.
                case CRuleBase::kString:
                default:
                {
                    switch ( mCompareType ) // CompareType() )    // function respects NOT flag.
                    {
                        case CRuleBase::kCompareEqual:
                        {
//                            bPass = ( regperform( this->mValue, compare.mValue ) == 0 );

                            // Special case if specified expression is empty string.
                            bool                bMatch = ( ( strlen( this->mValue ) == 0 ) && ( strlen( compare.mValue ) == 0 ) );

                            // John Maddock's regex++ library bombs creating RE from empty string.. protect with this wrapper.
                            if ( !bMatch && ( strlen( this->mValue ) > 0 ) && ( strlen( compare.mValue ) > 0 ) )
                            {
                                RegEx               regEx( this->mValue, this->NoCase() );
                                bMatch = regEx.Match( compare.mValue );
                            }

                            bPass = bMatch;

                            break;
                        }
                        case CRuleBase::kCompareNotEqual:
                        {
//                            bPass = ( regperform( this->mValue, compare.mValue ) != 0 );

                            // Special case if specified expression is empty string.
                            bool                bMatch = ( ( strlen( this->mValue ) == 0 ) && ( strlen( compare.mValue ) == 0 ) );

                            // John Maddock's regex++ library bombs creating RE from empty string.. protect with this wrapper.
                            if ( !bMatch && ( strlen( this->mValue ) > 0 ) && ( strlen( compare.mValue ) > 0 ) )
                            {
                                RegEx               regEx( this->mValue, this->NoCase() );
                                bMatch = regEx.Match( compare.mValue );
                            }

                            bPass = !bMatch;

                            break;
                        }

                        // Note: Regular expressions not valid for greater/less comparisons!
                        //       Expression will be treated as explicit string.

                        case CRuleBase::kCompareLess:
                        {
                            bPass = ( strcmp( compare.mValue, mValue ) < 0 );
                            break;
                        }
                        case CRuleBase::kCompareGreater:
                        {
                            bPass = ( strcmp( compare.mValue, mValue ) > 0 );
                            break;
                        }
                        case CRuleBase::kCompareLessOrEqual:
                        {
                            bPass = ( strcmp( compare.mValue, mValue ) <= 0 );
                            break;
                        }
                        case CRuleBase::kCompareGreaterOrEqual:
                        {
                            bPass = ( strcmp( compare.mValue, mValue ) >= 0 );
                            break;
                        }
                    }
                    break;
                }

            }

//            clog << " -> " << ( bPass ? "PASS" : "FAIL" );
        }
        else
        // If this Value is specified, but the compare Base Rule has
        // no Value, then fail if comparison must be equal.
        if ( mCompareType /* CompareType() */ == CRuleBase::kCompareEqual )
        {
            bPass = false;
        }

//        clog << endl;
    }

    return bPass;
}
