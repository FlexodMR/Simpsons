//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     16 August, 2002
//
// Component:   
//
// Description: 
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================
//===========================================================================
// Includes
//===========================================================================

#include "../inc/MFnAnimCurveUtility.h"

#include <maya/MObject.h>
#include <maya/MSelectionList.h>
#include <maya/MGlobal.h>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

//===========================================================================
// Constructor / Destructor
//===========================================================================

MFnAnimCurveUtility::MFnAnimCurveUtility()
:   mAnimCurveType( MFnAnimCurve::kAnimCurveUnknown ),
    mbIsWeighted( false ),
    mKeys( NULL ),
    mNumKeys( 0 )
{
    mInfinityType[0] = mInfinityType[1] = MFnAnimCurve::kConstant;
}

MFnAnimCurveUtility::~MFnAnimCurveUtility()
{
    Clear();
}

//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

//===========================================================================
// Operator Overloads
//===========================================================================

//===========================================================================
// Member Functions
//===========================================================================

void MFnAnimCurveUtility::Clear()
{
    mAnimCurveType = MFnAnimCurve::kAnimCurveUnknown;
    mInfinityType[0] = mInfinityType[1] = MFnAnimCurve::kConstant;
    mbIsWeighted = false;

    delete [] mKeys;
    mKeys = NULL;
    mNumKeys = 0;
}

MStatus MFnAnimCurveUtility::ReadData( const MObject& srcAnim )
{
    MStatus                     status;

    Clear();

    MFnAnimCurve                fnAnimCurve( srcAnim, &status );
    if ( status == MS::kSuccess )
    {
        mAnimCurveType = fnAnimCurve.animCurveType();
        mInfinityType[0] = fnAnimCurve.preInfinityType();
        mInfinityType[1] = fnAnimCurve.postInfinityType();
        mbIsWeighted = fnAnimCurve.isWeighted();

        mNumKeys = fnAnimCurve.numKeys();
        mKeys = new MAnimCurveKey [ mNumKeys ];
        unsigned int k;
        MAngle                  angle;
        double                  weight;
        for ( k = 0; k < mNumKeys; k++ )
        {
            mKeys[k].SetTime( fnAnimCurve.time( k ) );
            mKeys[k].SetValue( fnAnimCurve.value( k ) );
            mKeys[k].SetInTangentType( fnAnimCurve.inTangentType( k ) );
            mKeys[k].SetOutTangentType( fnAnimCurve.outTangentType( k ) );
            fnAnimCurve.getTangent( k, angle, weight, false );      // in tangent;
            mKeys[k].SetInAngle( angle );
            mKeys[k].SetInWeight( weight );
            fnAnimCurve.getTangent( k, angle, weight, true  );      // out tangent;
            mKeys[k].SetOutAngle( angle );
            mKeys[k].SetOutWeight( weight );
            mKeys[k].SetTangentsLocked( fnAnimCurve.tangentsLocked( k ) );
            mKeys[k].SetWeightsLocked( fnAnimCurve.weightsLocked( k ) );
            mKeys[k].SetIsBreakdown( fnAnimCurve.isBreakdown( k ) );
        }
    }

    return status;
}

MStatus MFnAnimCurveUtility::WriteData( MObject& destAnim )
{
    MStatus                     status;

    MFnAnimCurve                fnAnimCurve( destAnim, &status );
    if ( status == MS::kSuccess )
    {
        fnAnimCurve.setPreInfinityType( mInfinityType[0] );
        fnAnimCurve.setPostInfinityType( mInfinityType[1] );
        fnAnimCurve.setIsWeighted( mbIsWeighted );

        unsigned int k;
        unsigned int newKey;
        MAngle angle;
        double weight;
        for ( k = 0; k < mNumKeys; k++ )
        {
            if ( ( mAnimCurveType == MFnAnimCurve::kAnimCurveTA ) || 
                 ( mAnimCurveType == MFnAnimCurve::kAnimCurveTL ) || 
                 ( mAnimCurveType == MFnAnimCurve::kAnimCurveTU ) )
            {
                newKey = fnAnimCurve.addKey( mKeys[k].Time(), mKeys[k].Value(), mKeys[k].InTangentType(), mKeys[k].OutTangentType(), NULL, &status );
                mKeys[k].GetInAngle( angle );
                weight = mKeys[k].GetInWeight();
                fnAnimCurve.setTangent( newKey, angle, weight, true  );  // in tangent;
                mKeys[k].GetOutAngle( angle );
                weight = mKeys[k].GetOutWeight();
                fnAnimCurve.setTangent( newKey, angle, weight, false );  // out tangent;
                fnAnimCurve.setTangentsLocked( newKey, mKeys[k].IsTangentsLocked() );
                fnAnimCurve.setWeightsLocked( newKey, mKeys[k].IsWeightsLocked() );
                fnAnimCurve.setIsBreakdown( newKey, mKeys[k].IsBreakdown() );
            }
        }

    }

    return status;
}

//===========================================================================
// MFnAnimCurveUtility::createDuplicate
//===========================================================================
// Description: Creates a duplicate for a specified animCurve
//
// Constraints: 
//
//  Parameters: const MObject& srcAnim: The original animCurve node.
//              const MObject& destNode: The node to which the animCurve will
//                                       be connected.
//              const MObject& destAttribute: The attribute on the node to
//                                       which the animCurve will connect.
//              MDGModifier* modifier: Pointer to MDGModifier for undo.
//              MStatus*: Holds return status.
//
//      Return: (MObject): The new animCurve node.
//
//===========================================================================
MObject MFnAnimCurveUtility::createDuplicate( const MObject& srcAnim, MPlug& plug, MDGModifier* pModifier , MStatus* pReturnStatus )
{
    MStatus                     status;

    MObject                     duplicateAnim;

    status = ReadData( srcAnim );

    MFnAnimCurve                fnAnimCurve( srcAnim, &status );
    if ( status == MS::kSuccess )
    {
        MFnAnimCurve::AnimCurveType animType = fnAnimCurve.animCurveType();

        duplicateAnim = fnAnimCurve.create( plug, animType, pModifier, &status );
        if ( status == MS::kSuccess ) 
        {
            status = WriteData( duplicateAnim );
        }
        else status.perror( "fnAnimCurve failed" );
    }

    if ( pReturnStatus != NULL ) *pReturnStatus = status;

    return duplicateAnim;
}

//===========================================================================
// MFnAnimCurveUtility::createDuplicate
//===========================================================================
// Description: Creates a duplicate for a specified animCurve
//
// Constraints: 
//
//  Parameters: const MString& srcAnimName: The original animCurve node.
//              const MObject& destNode: The node to which the animCurve will
//                                       be connected.
//              const MObject& destAttribute: The attribute on the node to
//                                       which the animCurve will connect.
//              MDGModifier* modifier: Pointer to MDGModifier for undo.
//              MStatus*: Holds return status.
//
//      Return: (MObject): The new animCurve node.
//
//===========================================================================
MObject MFnAnimCurveUtility::createDuplicate( const MString& srcAnimName, MPlug& plug, MDGModifier* pModifier , MStatus* pReturnStatus )
{
    MStatus                     status;

    MObject                     duplicateAnim;
    MObject                     srcAnim;

    MSelectionList              selList;
    status = MGlobal::getSelectionListByName( srcAnimName, selList );
    if ( status == MS::kSuccess )
    {
        status = selList.getDependNode( 0, srcAnim );
        if ( status == MS::kSuccess )
        {
//            duplicateAnim = createDuplicate( srcAnim, destNode, destAttribute, pModifier, pReturnStatus );
            duplicateAnim = createDuplicate( srcAnim, plug, pModifier, pReturnStatus );
        }
    }

    if ( pReturnStatus != NULL ) *pReturnStatus = status;

    return duplicateAnim;
}
