//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     26 February, 2002
// Modified:    26 February, 2002
// Version:
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

// Recompilation protection flag.
#ifndef __CEXPORTLOG_H_
#define __CEXPORTLOG_H_

//===========================================================================
// Nested Includes
//===========================================================================

#include "log/inc/log.h"
#include <tlTable.hpp>

#include <maya/MDagPath.h>
#include <maya/MObject.h>
#include <maya/MString.h>

//===========================================================================
// Forward References
//===========================================================================

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

static const MString NULL_MSTRING = "";

namespace ExportLog
{
    enum ExportSeverityEnum
    {
        kLogSeverityNone = 0,   // This value should not appear in the Severities array.. it means no error.
        kLogSeverityDebug,
        kLogSeverityInfo,
        kLogSeverityWarning,
        kLogSeverityError,

        kNumVerboseLevels
    };

    // *** REMEMBER TO ADD A DESCRIPTION IN ExportLog.cpp *** //
    enum ExportErrorTypeEnum
    {
        kUnknown = 0,
        kInvalidGeometry,
        kInvalidGeometryTriangulation,
        kInfluenceObjectNotFound,
        kInfluenceObjectIsNotSkeleton,
        kInfluenceOutsideSkeletonRemapped,
        kContainsShear,
        kNegativeScale,
        kInvalidSortOrder,
        kInvalidSkeletonRoot,
        kDuplicateSkeletonRoot,
        kRuleNotFound,
        kRuleSyntaxError,
        kRuleProcessFail,
        kPoseVisibilityNonDrawable,
        kMappedJointNotSpecified,
        kToollibIndexedSkinVertexInvalid,
        kSmoothMeshHasNoSkeleton,
        kSpotlightNegativePenumbra,
        kGameAttributeFailure,
        kGameAttributeUnsupported,
        kNamingConflict,
        kDiskImageNotFound,
        kDiskImageNotFoundReplaced,
        kDiskImageNotFoundAlphaIgnored,
        kImageDimensionsNotPowerOfTwo,
        kProceduralTextureFailure,
        kColourAlphaDimensionMismatch,
        kNoShadingGroup,
        kMaxUVSetsExceeded,
        kMaxAnimatedUVSetsExceeded,
        kVisibilityAnimationReassigned,
        kPostProcessOK,
        kPostProcessFailure,
        kBoundingVolumeNoDrawableOwner,
        kUnableToAchieveBindPose,
        kPhysicsAttributesFromCompositeDrawable,
        kCollisionVolumeDetachedSkeleton,
        kInvalidBoundingVolumeType,
        kDebugProcessingBoundingVolume,
        kGetConnectedShadersException,
        kTopologyInvalidDuringVertexAnimation,
        kMemoryLeak,
        kVertexAnimationPositionNotSupported,
        kVertexAnimationNormalNotSupported,
        kVertexAnimationColourNotSupported,
        kVertexAnimationUVNotSupported,
        kWriteFail,
        kMeshScenegraphDuplicity,
        kQuickViewerNoStart,
        kQuickViewerNoSwitchTarget,
        kMFnMeshGetPolygonUVidCrash,
        kDeformerGroupNoPoseKeys,
        kVertexAnimationOnSmoothBoundMesh,
        kPolygonNotAssignedToShader,
        kSkinClusterHasDownstreamTopologyModifiers,
        kPrimGroupExceedsMaxVertexCount,
        kShadingGroupHasNULLSurfaceMaterial,
        kLocalPivotOffset,

        kNumExportErrorTypes
    };
    // *** REMEMBER TO ADD A DESCRIPTION IN ExportLog.cpp *** //

    extern const char* ExportErrors[ kNumExportErrorTypes ];

    static const ExportSeverityEnum ExportSeverities[ kNumExportErrorTypes ] =
    {
        kLogSeverityInfo,           // kUnknown = 0,
        kLogSeverityError,          // kInvalidGeometry,
        kLogSeverityError,          // kInvalidGeometryTriangulation,
        kLogSeverityError,          // kInfluenceObjectNotFound,
        kLogSeverityWarning,        // kInfluenceObjectIsNotSkeleton,
        kLogSeverityWarning,        // kInfluenceOutsideSkeletonRemapped,
        kLogSeverityWarning,        // kContainsShear,
        kLogSeverityWarning,        // kNegativeScale,
        kLogSeverityWarning,        // kInvalidSortOrder,
        kLogSeverityError,          // kInvalidSkeletonRoot,
        kLogSeverityWarning,        // kDuplicateSkeletonRoot,
        kLogSeverityError,          // kRuleNotFound,
        kLogSeverityError,          // kRuleSyntaxError,
        kLogSeverityError,          // kRuleProcessFail,
        kLogSeverityWarning,        // kPoseVisibilityNonDrawable,
        kLogSeverityWarning,        // kMappedJointNotSpecified,
        kLogSeverityError,          // kToollibIndexedSkinVertexInvalid,
        kLogSeverityWarning,        // kSmoothMeshHasNoSkeleton,
        kLogSeverityWarning,        // kSpotlightNegativePenumbra,
        kLogSeverityWarning,        // kGameAttributeFailure,
        kLogSeverityWarning,        // kGameAttributeUnsupported,
        kLogSeverityWarning,        // kNamingConflict,
        kLogSeverityWarning,        // kDiskImageNotFound,
        kLogSeverityWarning,        // kDiskImageNotFoundReplaced,
        kLogSeverityWarning,        // kDiskImageNotFoundAlphaIgnored,
        kLogSeverityError,          // kImageDimensionsNotPowerOfTwo,
        kLogSeverityWarning,        // kProceduralTextureFailure,
        kLogSeverityWarning,        // kColourAlphaDimensionMismatch,
        kLogSeverityWarning,        // kNoShadingGroup,
        kLogSeverityWarning,        // kMaxUVSetsExceeded,
        kLogSeverityWarning,        // kMaxAnimatedUVSetsExceeded,
        kLogSeverityWarning,        // kVisibilityAnimationReassigned,
        kLogSeverityInfo,           // kPostProcessOK,
        kLogSeverityError,          // kPostProcessFailure,
        kLogSeverityWarning,        // kBoundingVolumeNoDrawableOwner,
        kLogSeverityWarning,        // kUnableToAchieveBindPose
        kLogSeverityInfo,           // kPhysicsAttributesFromCompositeDrawable
        kLogSeverityWarning,        // kCollisionVolumeDetachedSkeleton
        kLogSeverityError,          // kInvalidBoundingVolumeType
        kLogSeverityDebug,          // kDebugProcessingBoundingVolume
        kLogSeverityError,          // kGetConnectedShadersException,
        kLogSeverityError,          // kTopologyChangeDuringVertexAnimation,
        kLogSeverityDebug,          // kMemoryLeak,
        kLogSeverityWarning,        // kVertexAnimationPositionNotSupported
        kLogSeverityWarning,        // kVertexAnimationNormalNotSupported
        kLogSeverityWarning,        // kVertexAnimationColourNotSupported
        kLogSeverityWarning,        // kVertexAnimationUVNotSupported
        kLogSeverityError,          // kWriteFail
        kLogSeverityError,          // kMeshScenegraphDuplicity
        kLogSeverityError,          // kQuickViewerNoStart,
        kLogSeverityWarning,        // kQuickViewerNoSwitchTarget
        kLogSeverityError,          // kMFnMeshGetPolygonUVidCrash
        kLogSeverityWarning,        // kDeformerGroupNoPoseKeys
        kLogSeverityError,          // kVertexAnimationOnSmoothBoundMesh
        kLogSeverityError,          // kPolygonNotAssignedToShader
        kLogSeverityWarning,        // kSkinClusterHasDownstreamTopologyModifiers
        kLogSeverityError,          // kPrimGroupExceedsMaxVertexCount
        kLogSeverityError,          // kShadingGroupHasNULLSurfaceMaterial
        kLogSeverityWarning,        // kLocalPivotOffset

    };
}

//===========================================================================
// Interface Definitions
//===========================================================================


// **************************************************************************
// **************************************************************************
//
//  CExportLogEntry
//
// **************************************************************************
// **************************************************************************

class CExportLogEntry : public CLogEntry
{
public:
    CExportLogEntry( ExportLog::ExportErrorTypeEnum kType, const MDagPath& dagPath, const MObject& component = MObject::kNullObj, const MString& anno = NULL_MSTRING );
    CExportLogEntry( ExportLog::ExportErrorTypeEnum kType, const MString& anno );
    CExportLogEntry( const CExportLogEntry& other );
    virtual ~CExportLogEntry();

public:
    ExportLog::ExportErrorTypeEnum              Type( void ) const;
    void                                        GetDagPath( MDagPath& dagPath ) const;
    void                                        GetMessage( MString& message ) const;

    bool                                        operator == ( const CExportLogEntry& other );

    CExportLogEntry&                            operator = ( const CExportLogEntry& other );

private:
    ExportLog::ExportErrorTypeEnum              mType;
    MDagPath                                    mDagPath;
    MObject                                     mComponent;
    MString                                     mAnno;
};



// **************************************************************************
// **************************************************************************
//
//  CExportLog
//
// **************************************************************************
// **************************************************************************

class CExportLog : public CLog
{
public:
    CExportLog();
    ~CExportLog();

public:

    virtual bool                                Add( const CExportLogEntry& entry );

    bool                                        HasErrorType( ExportLog::ExportErrorTypeEnum type ) const;
    bool                                        HasError( const CExportLogEntry& entry ) const;
    ExportLog::ExportSeverityEnum               Severity( void ) const;
    void                                        Report( void );

    virtual void                                Clear( void );

//    virtual const char*         AsChar( bool bShowTime = false );
//    virtual const char*         Printable( bool bShowTime = false );

//    friend ostream&                             operator << ( ostream& os, const CExportLog& other );

protected:

private:
    CListArray<CExportLogEntry>                  mEntries;
};

//===========================================================================
// Inlines
//===========================================================================

#endif // __CEXPORTLOG_H_
