//===========================================================================
// Copyright �2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     26 February, 2002
//
// Component:   CExportLogEntry & CExportLog classes
//
// Description: These classes store and manage the types of and messages
//              for the errors generated by the Maya Exporter.
//
//              Each error type is tagged with a "severity" so after all
//              errors are tabulated the Exporter can assess whether the
//              generated report can be considered information only, a
//              warning, or an error.  The severity is used by the
//              Exporter's "Verbosity Level" to determine when and what
//              to spew after an export.
//
// Constraints:
//
// Creator:     Bryan Ewert
//
//===========================================================================
//===========================================================================
// Includes
//===========================================================================

#include "ExportLog.h"
#include "exporteroptions.hpp"
#include <maya/MGlobal.h>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

const char* ExportLog::ExportErrors[ kNumExportErrorTypes ] =
{
    //  kUnknown = 0,
    "Unknown",

    //  kInvalidGeometry,
    "Invalid geometry.",

    //  kInvalidGeometryTriangulation,
    "Invalid triangulation on geometry.",

    //  kInfluenceObjectNotFound,
    "The skin cluster influenced by the deformer could not be found.",

    //  kInfluenceObjectIsNotSkeleton,
    "Deformer node influences a skinCluster but is not part of a skeleton.",

    //  kInfluenceOutsideSkeletonRemapped,
    "Components have influences outside of skeleton - influences were re-mapped.",

    //  kContainsShear,
    "Transform contains shear - Skeletons may not export correctly.",

    //  kNegativeScale,
    "Transform has negative scale - Normals may not export correctly.",

    //  kInvalidSortOrder,
    "Non-incremental Sort Order specified.",

    //    kInvalidSkeletonRoot,
    "Object tagged as a Skeleton Root but is not a Skeleton - Children will not be processed.",

    //    kDuplicateSkeletonRoot,
    "Object tagged as a Skeleton Root is already a child of a Skeleton Root - Will be processed as child skeleton joint.",

    //    kRuleNotFound,
    "Could not find specified Rule file.",

    //    kRuleSyntaxError,
    "Could not process Rule - Syntax error?",

    //    kRuleProcessFail,
    "Art Diagnostic Rule failed.",

    // kPoseVisibilityNonDrawable
    "Pose Visibility could not be assigned to drawable entity.",

    // kMappedJointNotSpecified,
    "p3dMappedJoint not specified for Joint - A default was used.",

    // kToollibIndexedSkinVertexInvalid,
    "Invalid tlIndexedSkinVertex while processing mesh.",

    // kSmoothMeshHasNoSkeleton,
    "Smooth-bound mesh has no Skeleton hierarchy - Processing as standard mesh.",

    //  kSpotlightNegativePenumbra,
    "Spotlight has negative penumbra - Converted to positive value.",

    //  kGameAttributeFailure,
    "Failed to read Game Attribute.",

    //  kGameAttributeUnsupported
    "Unsupported Game Attribute ignored.",

    //  kNamingConflict,
    "Potential Naming Conflicts.",

    //  kDiskImageNotFound,
    "Could not load image.",

    //  kDiskImageNotFoundReplaced,
    "Failed to create image - Replaced with Hot Pink.",

    //  kDiskImageNotFoundAlphaIgnored,
    "Could not load alpha image - Alpha ignored.",

    //  kImageDimensionsNotPowerOfTwo,
    "Image dimensions are not powers of two.",

    //  kProceduralTextureFailure,
    "Procedural texture failed to rasterize.",

    //  kColourAlphaDimensionMismatch,
    "Color and alpha dimensions do not match.",

    //  kNoShadingGroup,
    "Not assigned to a Shading Group.",

    //  kMaxUVSetsExceeded,
    "Object exceeds the maximum number of UVSets.",

    //  kMaxAnimatedUVSetsExceeded,
    "Object exceeds the maximum number of animated UVSets; one or more UVSets will not be animated.",

    //  kVisibilityAnimationReassigned
    "Visibility Animation was reassigned and may not behave as expected.",

    //  kPostProcessOK
    "Post Process Launched successfully.",

    //  kPostProcessFailure
    "Post Process failed.",

    //  kBoundingVolumeNoDrawableOwner
    "Bounding Volume has no drawable Owner. Possible cause: Attached to Transform node, or to Joint that contributes no influence to mesh?",

    //  kUnableToAchieveBindPose
    "Unable to achieve Bind Pose.",

    //  kPhysicsAttributesFromCompositeDrawable
    "FYI: Physics Attributes obtained for Composite Drawable.",

    //  kCollisionVolumeDetachedSkeleton
    "'Detached Skeleton' identified while processing Collision Volume - Skeleton was not evaluated.",

    //  kInvalidBoundingVolumeType
    "Invalid or missing Bounding Volume Type.",

    //  kDebugProcessingBoundingVolume
    "DEBUG: Processing Bounding Volume.",

    //  kGetConnectedShadersException,
    "Internal Maya Error: Exception thrown while querying shader assignment.",

    //  kTopologyInvalidDuringVertexAnimation
    "Face topology invalid during vertex animation; animation is not valid.",

    //  kMemoryLeak
    "!! Memory Leak !!",

    //  kVertexAnimationPositionNotSupported
    "Object tagged for Position vertex animation, but geometry/shader does not support position information.",

    //  kVertexAnimationNormalNotSupported
    "Object tagged for Normal vertex animation, but geometry/shader does not support normal information.",

    //  kVertexAnimationColourNotSupported
    "Object tagged for Colour vertex animation, but geometry/shader does not support colour information.",

    //  kVertexAnimationUVNotSupported
    "Object tagged for UV vertex animation, but geometry/shader does not support UV information.",

    //  kWriteFail
    "Failed to open file for writing.",

    //  kMeshScenegraphDuplicity
    "Mesh assigned to multiple Scenegraphs; Subsequent Scenegraphs ignored.",

    //  kQuickViewerNoStart
    "QuickViewer failed to start",

    //  kQuickViewerNoSwitchTarget,
    "QuickViewer failed to switch target platforms.",

    //  kVertexAnimationUVNotSupported
    "Object tagged for UV vertex animation, but geometry/shader does not support UV information.",

    //  kDeformerGroupNoPoseKeys
    "Deformer Expression Groups have no Pose Keys specified.",

    //  kVertexAnimationOnSmoothBoundMesh
    "Vertex Animation cannot be exported for smooth-bound skins.",

    // kPolygonNotAssignedToShader
    "One or more polygons not assigned to a shader; geometry will be incomplete.",

    // kSkinClusterHasDownstreamTopologyModifiers
    "A smooth-bound skin has downstream construction history that may change its topology. Weighted animation may be corrupt!",

    // kPrimGroupExceedsMaxVertexCount
    "PrimGroup exceeds maximum number of vertices.",

    // kShadingGroupHasNULLSurfaceMaterial
    "Shading Group has NULL Surface Material.",

    // kLocalPivotOffset
    "Transform's Local Space Pivot is offset from World Space pivot. Rotations may 'wobble.'"

};

// **************************************************************************
// **************************************************************************
//
//  CExportLogEntry
//
// **************************************************************************
// **************************************************************************

//===========================================================================
// Constructor / Destructor
//===========================================================================

CExportLogEntry::CExportLogEntry( ExportLog::ExportErrorTypeEnum kType, const MDagPath& dagPath, const MObject& component, const MString& anno )
:   CLogEntry( ExportLog::ExportErrors[kType]),
    mType(kType),
    mDagPath( dagPath ),
    mComponent( component ),
    mAnno( anno )
{
    // If Debug Log entry and user has requested Debug info then
    // echo to stdout to provide a "stream of thought."
    if (
        ( ExportLog::ExportSeverities[kType] == ExportLog::kLogSeverityDebug ) &&
        ( ExportLog::ExportSeverities[kType] >= ( ExportLog::kNumVerboseLevels - ExporterOptions::Verbose() ) )
       )
    {
        std::clog << ExportLog::ExportErrors[kType] << " -> " << dagPath.fullPathName().asChar();
        if ( anno != "" ) std::clog << " (" << anno.asChar() << ")";
        std::clog << std::endl;
    }
}

CExportLogEntry::CExportLogEntry( ExportLog::ExportErrorTypeEnum kType, const MString& anno )
:   CLogEntry( ExportLog::ExportErrors[kType]),
    mType(kType),
    mComponent( MObject::kNullObj ),
    mAnno( anno )
{
    // If Debug Log entry and user has requested Debug info then
    // echo to stdout to provide a "stream of thought."
    if (
        ( ExportLog::ExportSeverities[kType] == ExportLog::kLogSeverityDebug ) &&
        ( ExportLog::ExportSeverities[kType] >= ( ExportLog::kNumVerboseLevels - ExporterOptions::Verbose() ) )
       )
    {
        std::clog << ExportLog::ExportErrors[kType] << " -> " << anno.asChar() << std::endl;
    }
}

CExportLogEntry::~CExportLogEntry()
{
}

//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

CExportLogEntry::CExportLogEntry( const CExportLogEntry& other )
:   CLogEntry( NULL )
{
    *this = other;
}

CExportLogEntry& CExportLogEntry::operator = ( const CExportLogEntry& other )
{
    CLogEntry::operator = ( other );
    mType = other.mType;
    mDagPath = other.mDagPath;
    mComponent = other.mComponent;
    mAnno = other.mAnno;
    return *this;
}

//===========================================================================
// Operator Overloads
//===========================================================================

bool CExportLogEntry::operator == ( const CExportLogEntry& other )
{
    return ( ( mType == other.mType ) &&
             ( mDagPath == other.mDagPath ) &&
             ( mComponent == other.mComponent ) &&
             ( mAnno == other.mAnno )
           );
}

//===========================================================================
// Member Functions
//===========================================================================

//===========================================================================
// CExportLogEntry::Type    (const)
//===========================================================================
// Description: Returns the error type UID for this entry.
//
//              This UID (which is an enum) is used as the array index into
//              the ExportErrors[] array.
//
// Constraints:
//
//  Parameters: (void)
//
//      Return: (ExportErrorTypeEnum): The error type UID.
//
//===========================================================================
ExportLog::ExportErrorTypeEnum CExportLogEntry::Type( void ) const
{
    return mType;
}

//===========================================================================
// CExportLogEntry::GetDagPath  (const)
//===========================================================================
// Description: Provides a copy of the DAG path stored in this entry.
//
// Constraints:
//
//  Parameters: MDagPath& dagPath: Storage for the DAG path.
//
//      Return: (void)
//
//===========================================================================
void CExportLogEntry::GetDagPath( MDagPath& dagPath ) const
{
    dagPath = mDagPath;
}

//===========================================================================
// CExportLogEntry::GetMessage  (const)
//===========================================================================
// Description: Provides a copy of the string message (annotation) stored
//              in this entry.
//
// Constraints:
//
//  Parameters: MString& message: Storage for the message.
//
//      Return: (void)
//
//===========================================================================
void CExportLogEntry::GetMessage( MString& message ) const
{
    message = mAnno;
}




// **************************************************************************
// **************************************************************************
//
//  CExportLog
//
// **************************************************************************
// **************************************************************************

//===========================================================================
// Constructor / Destructor
//===========================================================================

CExportLog::CExportLog()
:   CLog()
{
}

CExportLog::~CExportLog()
{
}

//===========================================================================
// COPY Constructor / Assignment
//===========================================================================

//===========================================================================
// Operator Overloads
//===========================================================================

//ostream& operator << ( ostream& os, const CExportLog& other )
//{
//    return os;
//}

//===========================================================================
// Member Functions
//===========================================================================

//===========================================================================
// CExportLog::Clear
//===========================================================================
// Description: Clears the contents for the log.
//
//              The parent CLog class stores the plain-text versions of
//              the errors - these are automatically added by this class.
//
//              The CExportLog class stores the detailed entries in the
//              form of CExportLogEntry objects.
//
// Constraints:
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void CExportLog::Clear( void )
{
    CLog::Clear();
    mEntries.Clear();
}

//===========================================================================
// CExportLog::HasErrorType
//===========================================================================
// Description: Determines if an error of the specified type has already
//              been added to the log.
//
// Constraints:
//
//  Parameters: ExportErrorTypeEnum type: Does this type of error exist?
//
//      Return: (bool): TRUE if the specified error type exists in the log;
//                      else FALSE.
//
//===========================================================================
bool CExportLog::HasErrorType( ExportLog::ExportErrorTypeEnum type ) const
{
    bool                        bHasErrorType = false;

    unsigned int                i;
    for ( i = 0; i < mEntries.NumItems(); i++ )
    {
        if ( mEntries[i].Type() == type )
        {
            bHasErrorType = true;
            break;
        }
    }

    return bHasErrorType;
}

//===========================================================================
// CExportLog::HasError
//===========================================================================
// Description: Determines if the DAG path identified in the specified entry
//              has already been added to the log with the error type
//              identified in the entry.
//
//              In other words, don't add a DAG multiple times for the
//              same error, but add it again if it has generated a different
//              error.
//
// Constraints:
//
//  Parameters: const CExportLogEntry& entry: The entry against which to
//                                            compare those already in the log.
//
//      Return: (bool): TRUE if entry matches one already in the log;
//                      else FALSE.
//
//===========================================================================
bool CExportLog::HasError( const CExportLogEntry& entry ) const
{
    bool                                        bHasError = false;

    MDagPath                                    entryDag;
    ExportLog::ExportErrorTypeEnum              entryType;
    entryType = entry.Type();
    entry.GetDagPath( entryDag );

    unsigned int i;
    for ( i = 0; i < mEntries.NumItems(); i++ )
    {
        if ( mEntries[i] == entry )
        {
            bHasError = true;
            break;
        }
    }

    return bHasError;
}

//===========================================================================
// CExportLog::Add
//===========================================================================
// Description: Adds an entry to the log.
//
//              The parent CLog class stores the plain-text versions of
//              the errors.  At this point the plain-text error is simply
//              the string stored in the ExportErrors[] array.  It will
//              be later expanded to identify each DAG which generated
//              an error.
//
// Constraints:
//
//  Parameters: const CExportLogEntry& entry: The log entry.
//
//      Return: (bool): TRUE if entry was added; FALSE if it was not
//                      necessary to add, as it was a duplicate.
//
//===========================================================================
bool CExportLog::Add( const CExportLogEntry& entry )
{
    bool bAdded = false;

    // First determine if the DAG specified in this entry has already
    // been reported with this error.
    MDagPath    dagPath;
    MString     message;
    entry.GetDagPath( dagPath );
    entry.GetMessage( message );

    if ( ( dagPath.isValid() && !HasError( entry ) ) || ( message != "" ) )
    {
        mEntries.AddItem( entry );
        bAdded = CLog::Add( entry );
    }

    return bAdded;
}

//===========================================================================
// CExportLog::Severity
//===========================================================================
// Description: Returns the overall (i.e. maximum) severity for all
//              entries stored in the log.
//
// Constraints:
//
//  Parameters: (void)
//
//      Return: (ExportSeverityEnum): The overall severity for this log.
//
//===========================================================================
ExportLog::ExportSeverityEnum CExportLog::Severity( void ) const
{
    ExportLog::ExportSeverityEnum               severity = ExportLog::kLogSeverityNone;

    unsigned int type;

    // Loop through all error types.
    for ( type = 0; type < ExportLog::kNumExportErrorTypes; type++ )
    {
        // If this error type was encountered, add the label for the error to the output.
        if ( HasErrorType( (ExportLog::ExportErrorTypeEnum)type ) )
        {
            severity = __max( severity, ExportLog::ExportSeverities[type] );
        }
    }

    return severity;
}

//===========================================================================
// CExportLog::Report
//===========================================================================
// Description: Clears the default entries in the parent CLog class and
//              rebuilds the plain-text log to reflect the contents of
//              the current CExportLogEntry list.
//
//              The resultant log will list a header for each error type
//              that exists, followed by a list of DAGs (or messages, if
//              no DAG applies) for each error type.
//
//              Call this BEFORE streaming a CExportLog object.
//
// Constraints: I wanted to make this automatic from the extraction operator,
//              but since this method cannot be const I would lose the const
//              qualifier on the << operator.  Thus, it requires a manual
//              step.
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void CExportLog::Report( void )
{
    // Clear the base log
    CLog::Clear();

    unsigned int type;
    unsigned int entry;

    // Loop through all error types.
    for ( type = 0; type < ExportLog::kNumExportErrorTypes; type++ )
    {
        // If this error type was encountered, add the label for the error to the output.
        if ( ExportLog::ExportSeverities[type] >= ( ExportLog::kNumVerboseLevels - ExporterOptions::Verbose() ) &&
             HasErrorType( (ExportLog::ExportErrorTypeEnum)type )
           )
        {
            CLog::Add( ExportLog::ExportErrors[type] );

            // Find all entries (i.e. DAGs) with this error type and add to output.
            for ( entry = 0; entry < mEntries.NumItems(); entry++ )
            {
                if ( mEntries[entry].Type() == (ExportLog::ExportErrorTypeEnum)type )
                {
                    MDagPath    dagPath;
                    MString     message;
                    mEntries[entry].GetDagPath( dagPath );
                    mEntries[entry].GetMessage( message );
                    if ( dagPath.isValid() )
                    {
                        MString output = MString("\t") + dagPath.fullPathName();
                        if ( message != "" )
                        {
                            output = output + " (" + message + ")";
                        }
                        CLog::Add( output.asChar() );
                    }
                    else if ( message != "" )
                    {
                        MString output = MString("\t") + message;
                        CLog::Add( output.asChar() );
                    }
                }
            }
        }
    }
}
