//===========================================================================
// Copyright ©2001 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     November 22, 2001
//
// Component:   Rules system for Art Diagnostic Tools
//
// Description: This is an Attribute for a Base Rule.  It
//              stores the name of the attribute that needs to match
//              if the Base Rule is to be applied.
//
// Creator:     Bryan Ewert
//
//===========================================================================

/* SEARCH STRINGS

bool CRuleAttribute::CompareWith( const CRuleAttribute& compare ) const
bool CRuleAttribute::CompareMacro( void ) const

*/

//===========================================================================
// Includes
//===========================================================================

#include <stdio.h>
#include <string.h>

#include <iostream>

#include "../inc/ruleAttribute.hpp"

// #include "regex/regex2.h"
#include "regex++/include/regex"

#include <assert.h>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Constructor / Destructor
//===========================================================================

CRuleAttribute::CRuleAttribute()
:   CRuleBase(),
    mName( NULL ),
    mClass( CRuleAttribute::kClassAttribute )
{
}

CRuleAttribute::~CRuleAttribute()
{
    Clear();
}

//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

CRuleAttribute::CRuleAttribute( const CRuleAttribute& other )
:   CRuleBase( other ),
    mName( NULL ),
    mClass( CRuleAttribute::kClassAttribute )
{
    *this = other;
}

CRuleAttribute& CRuleAttribute::operator = ( const CRuleAttribute& other )
{
    Clear();

    CRuleBase::operator = ( other );
    SetName( other.mName );

    mClass = other.mClass;

    unsigned int c;
    for ( c = 0; c < other.mFailContext.NumItems(); c++ )
    {
        AddFailContext( other.mFailContext[c] );
    }

    return *this;
}

//===========================================================================
// Operator Overloads
//===========================================================================

bool CRuleAttribute::operator == ( const CRuleAttribute& other ) const
{
    return  (
                ( CRuleBase::operator == ( other ) ) &&
                ( strcmp( mName, other.mName ) == 0 ) &&
                ( mClass == other.mClass )
            );
}

std::ostream& operator << ( std::ostream& os, const CRuleAttribute& ruleAttribute )
{
    os << ( ruleAttribute.HasName() ? ruleAttribute.Name() : "(NULL)" ) << " ";

    switch ( ruleAttribute.mCompareType )
    {
        case CRuleBase::kCompareNotEqual:
        {
            os << "!=";
            break;
        }
        case CRuleBase::kCompareLess:
        {
            os << "<";
            break;
        }
        case CRuleBase::kCompareGreater:
        {
            os << ">";
            break;
        }
        case CRuleBase::kCompareLessOrEqual:
        {
            os << "<=";
            break;
        }
        case CRuleBase::kCompareGreaterOrEqual:
        {
            os << ">=";
            break;
        }
        case CRuleBase::kCompareEqual:
        default:
        {
            os << "=";
            break;
        }
    }
    os << " ";
    os << ( ruleAttribute.HasValue() ? ruleAttribute.Value() : "(NULL)" );

    os << " (";
    os << gRuleValueTypes[ ruleAttribute.mValueType ];
    os << ")" << std::endl;

    return os;
}

//===========================================================================
// Member Functions
//===========================================================================

//===========================================================================
// CRuleAttribute::Clear
//===========================================================================
// Description: Clears the contents of this Base Rule.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
void CRuleAttribute::Clear( void )
{
    CRuleBase::Clear();

    if ( mName )
    {
        delete [] mName;
        mName = NULL;
    }

    mClass = CRuleAttribute::kClassAttribute;

    mFailContext.Clear();
}

//===========================================================================
// CRuleAttribute::SetName
//===========================================================================
// Description: Sets the Name for this Base Rule.
//
// Constraints: 
//
// Parameters:  const char* name: NULL-terminated string for name to assign.
//
// Return:      (void)
//
//===========================================================================
void CRuleAttribute::SetName( const char* name )
{
    if ( name == mName ) return;

    if ( mName != NULL )
    {
        delete [] mName;
        mName = NULL;
    }

    if ( name != NULL )
    {
        mName = new char [ strlen( name ) + 1 ];
        strcpy( mName, name );
    }
}

//===========================================================================
// CRuleAttribute::Name         (const)
//===========================================================================
// Description: Returns a pointer to the name of this Base Rule.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (const char*): NULL-terminated string for name.
//
//===========================================================================
const char* CRuleAttribute::Name( void ) const
{
    return mName;
}

//===========================================================================
// CRuleAttribute::HasName          (const)
//===========================================================================
// Description: Determines if a Name has been assigned to this Base Rule.
//
// Constraints: 
//
// Parameters:  (void)
//
// Return:      (bool): TRUE if this Base Rule has been assigned a name;
//                      else FALSE.
//
//===========================================================================
bool CRuleAttribute::HasName( void ) const
{
    return ( mName != NULL );
}

//===========================================================================
// CRuleAttribute::SetClass
//===========================================================================
// Description: Specifies the class of this Rule Attribute, which determines
//              what form of comparison will be performed against a Rule.
//
// Constraints: 
//
// Parameters:  unsigned short classify: One of the RuleAttributeClassEnum.
//
// Return:      (void)
//
//===========================================================================
void CRuleAttribute::SetClass( unsigned short classify )
{
    mClass = classify;
}

//===========================================================================
// CRuleAttribute::AppliesTo
//===========================================================================
// Description: *** NOT CURRENTLY USED ***
//
//===========================================================================
//bool CRuleAttribute::AppliesTo( const CRuleAttribute& compare ) const
//{
//    bool                        bAppliesTo = false;
//
//    if ( mName != NULL )
//    {
//        // If Name is specified but does not match the incoming Rule
//        // then this Rule would always PASS, and does not apply.
//        if ( compare.mName != NULL )
//        {
//            if ( regperform( this->Name(), compare.Name() ) == 0 )
//            {
//                bAppliesTo = CRuleBase::AppliesTo( compare );
//            }
//        }
//    }
//    // If this Name is NULL then Value may still be relevant
//    else
//    {
//        bAppliesTo = CRuleBase::AppliesTo( compare );
//    }
//
//    return bAppliesTo;
//}

//===========================================================================
// CRuleAttribute::CompareWith          (const)
//===========================================================================
// Description: Compares the specified Attribute against this Rule.
//
//              If a name has been assigned to both this Rule and the
//              specified Attribute then the names must match for the
//              values to be compared.  NOTE: The Rule does _not_ fail
//              if the names do not match; only if the names match and
//              the values don't.
//
//              If no name has been assigned to either this Rule or
//              the specified Attribute then the values are compared.
//
//              Note: The specified 'compare' CRuleAttribute is the data from
//              the Pure3D chunk.  'this' is the user-specified Rule being 
//              applied.
//
// Constraints: 
//
// Parameters:  const CRuleAttribute& compare: The Attribute (data from the
//                                             P3D file) which is compared
//                                             against this Rule.
//
// Return:      (bool): TRUE if test passes, or if the name of the specified 
//                      Attribute does not match this Attribute;
//                      FALSE if the test fails.
//
//===========================================================================
bool CRuleAttribute::CompareWith( const CRuleAttribute& compare ) const
{
    bool                                bPass = true;

    // If this is a user variable its name doesn't need to match, just type and value.
    if ( ( mName != NULL ) && ( mClass != kClassUserVariable ) )
    {
        if ( compare.mName != NULL )
        {
            // Special case if specified expression is empty string.
            bool bMatch = ( strlen( mName ) == 0 ) && ( strlen( compare.mName ) == 0 );

            // John Maddock's regex++ library bombs creating RE from empty string.. protect with this wrapper.
            if ( !bMatch && ( strlen( mName ) > 0 ) && ( strlen( compare.mName ) > 0 ) )
            {
                RegEx           regEx( this->Name(), this->NoCase() );
                bMatch = regEx.Match( compare.Name() );
            }

            if ( bMatch )
            {
                bPass = CRuleBase::CompareWith( compare );
            }
        }
    }
    else
    {
//        clog << "  -> No attribute specified.. Compare Value: " << compare.Name() << endl;

        bPass = CRuleBase::CompareWith( compare );
    }

    if ( !bPass )
    {
//        clog << "! Rule FAILED ! " << endl;
    }

    return bPass;
}

//===========================================================================
// CRuleAttribute::CompareMacro
//===========================================================================
// Description: Compares this attribute's value (that which was entered
//              in the Rule script) against the "macro" value that was
//              compounded during the scan of one or more P3D chunks.
//
//              It does this by creating a CRuleAttribute whose Name
//              matches the Name of this Attribute, and sets value for the
//              new Attribute to the cached value in this Attribute.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (bool): TRUE if the test passes; else FALSE.
//
//===========================================================================
bool CRuleAttribute::CompareMacro( void ) const
{
    bool        bSuccess = true;

    // Create an attribute with the cached value
    CRuleAttribute              attribute;
    attribute.SetName( this->Name() );
    attribute.SetValue( this->mCacheValue );
    return this->CompareWith( attribute );
}

//===========================================================================
// CRuleAttribute::PerformMacro
//===========================================================================
// Description: If this is a "macro" attribute then a comparison is not
//              performed against each P3D chunk.  Instead, the value from
//              the compared attribute is compounded into this attribute's
//              "cache" value.  The method for this compounding is determined
//              by the macro type.
//
// Constraints: It is assumed that the specified compare attribute is 
//              applicable to this attribute (i.e. a MeetsCondition() test
//              has already been performed).
//
//  Parameters: const CRuleAttribute& compare: Reference to the compare
//                  attribute whose value will be compounded into this
//                  attribute's "cache."
//
//      Return: (void)
//
//===========================================================================
void CRuleAttribute::PerformMacro( const CRuleAttribute& compare )
{
    switch( mClass )
    {
        case kClassMacroSum:
        {
            if ( mCacheStarted )
            {
                mCacheValue += compare.AsFloat();
            }
            else
            {
                mCacheValue = compare.AsFloat();
                mCacheStarted = true;
            }
            break;
        }
        case kClassMacroCount:
        {
            if ( mCacheStarted )
            {
                mCacheValue++;
            }
            else
            {
                mCacheValue = 1;
                mCacheStarted = true;
            }
            break;
        }
        case kClassMacroMin:
        {
            if ( mCacheStarted )
            {
                mCacheValue = __min( mCacheValue, compare.AsFloat() );
            }
            else
            {
                mCacheValue = compare.AsFloat();
                mCacheStarted = true;
            }
            break;
        }
        case kClassMacroMax:
        {
            if ( mCacheStarted )
            {
                mCacheValue = __max( mCacheValue, compare.AsFloat() );
            }
            else
            {
                mCacheValue = compare.AsFloat();
                mCacheStarted = true;
            }
            break;
        }
        default:
        {
            assert( false && "Missing Macro implementation." );
        }
    }
}

//===========================================================================
// CRuleAttribute::AddFailContext
//===========================================================================
// Description: It is possible for more than one P3D chunk to fail against
//              this Attribute before it is added to the error log.  This
//              adds a CRuleContext which describes the "where and why" for
//              a failure.  If, at the end of the run, the failure is 
//              in fact critical then this data may be echoed to the error 
//              log.
//
// Constraints: The context is copied as it is added to this object.
//
//  Parameters: const CRuleContext& context: The context data.
//
//      Return: (void)
//
//===========================================================================
void CRuleAttribute::AddFailContext( const CRuleContext& context )
{
    mFailContext.AddItem( context );
}

//===========================================================================
// CRuleAttribute::NumFailContexts
//===========================================================================
// Description: Returns the number of fail contexts currently queued for
//              this attribute.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (unsigned int): The number of fail contexts currently queued.
//
//===========================================================================
unsigned int CRuleAttribute::NumFailContexts( void ) const
{
    return mFailContext.NumItems();
}

//===========================================================================
// CRuleAttribute::GetFailContext   (const)
//===========================================================================
// Description: Returns a pointer to the fail context at the specified
//              index.
//
// Constraints: 
//
//  Parameters: unsigned int index: Zero-based index for the fail context.
//
//      Return: (CRuleContext*): Pointer to the context stored in the queue.
//
//===========================================================================
CRuleContext* CRuleAttribute::GetFailContext( unsigned int index ) const
{
    if ( index >= mFailContext.NumItems() ) return NULL;

    return mFailContext(index);
}

//===========================================================================
// CRuleAttribute::ResetFailContext
//===========================================================================
// Description: After an attribute's errors are (a) added to the error log,
//              or (b) deemed not critical, it is necessary to clear any
//              queued fail contexts so they don't get in the way later.
//              This simply clears the fail context list.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void CRuleAttribute::ResetFailContext( void )
{
    mFailContext.Clear();
}
