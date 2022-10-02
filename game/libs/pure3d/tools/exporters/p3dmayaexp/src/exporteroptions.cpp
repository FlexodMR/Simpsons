//===========================================================================
// Copyright ©2001 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     -?- (early 2000)
// Creator:     Torre Zuk
//
// Component:   Pure3D Maya Exporter - Options
//
// Description: The Exporter Options class handles (surprise) the user
//              options from the p3dExporterOptions and p3dExporterSetting
//              nodes.  They are accessible globally to all classes.
//
// Constraints: 
//
//===========================================================================
//===========================================================================
// Includes
//===========================================================================
#ifdef WIN32
#pragma warning(disable:4786)
#endif

#include "exporteroptions.hpp"
#include "animnode.hpp"
#include "mayanodes.hpp"

#include <tlString.hpp>  
#include <maya/MArgList.h> 
#include <maya/MGlobal.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MFnUnitAttribute.h>
#include <maya/MFnTypedAttribute.h>
#include <maya/MFnEnumAttribute.h>
#include <maya/MFnCompoundAttribute.h>
#include <maya/MFnMessageAttribute.h>
#include <maya/MFnStringData.h>
#include <maya/MItDag.h>
#include <maya/MDagPath.h>
#include <maya/MFnDagNode.h>
#include <maya/MSelectionList.h>
#include <maya/MGlobal.h>
#include <maya/MAnimControl.h>

#include <assert.h>
#include <iostream.h>

#include "tlFourCC.hpp"

#include "bewert_debug.h"

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

#define CHECKRESULT_FAILURE(STAT,MSG)       \
     if ( MS::kSuccess != STAT )     \
     {                               \
          cerr << MSG << endl;        \
          return MS::kFailure;        \
     }

#define CHECKRESULT_NULL(STAT,MSG)       \
     if ( MS::kSuccess != STAT )     \
     {                               \
          cerr << MSG << endl;        \
          return NULL;                \
     }

#define CHECKRESULT_RETURN(STAT,MSG)       \
     if ( MS::kSuccess != STAT)      \
     {                               \
          cerr << MSG << endl;        \
          return;                     \
     }

#define MAKE_NUMERIC_ATTR( NAME, LONGNAME, SHORTNAME, TYPE, DEFAULT, KEYABLE, HIDDEN )  \
    MStatus NAME##_stat;                                                       \
    MFnNumericAttribute NAME##_fn;                                             \
    NAME = NAME##_fn.create( LONGNAME, SHORTNAME, TYPE, DEFAULT );                \
    CHECKRESULT_FAILURE(NAME##_stat, "numeric attr create error");                     \
    NAME##_fn.setHidden( HIDDEN );                                             \
    NAME##_fn.setKeyable( KEYABLE );                                           \
    NAME##_fn.setInternal( true );                                             \
    NAME##_stat = addAttribute( NAME );                                        \
    CHECKRESULT_FAILURE(NAME##_stat, "addAttribute error");

const char* powersOf2s[8] = { "8", "16", "32", "64", "128", "256", "512", "1024" };
const int   powersOf2i[8] = { 8, 16, 32, 64, 128, 256, 512, 1024 };

//===========================================================================
// Initialization of static members
//===========================================================================

bool                            ExporterOptions::mExportNISScenegraph = false;
bool                            ExporterOptions::mExportAnimations = true;
bool                            ExporterOptions::mExportAnimReferencesOnly = false;
bool                            ExporterOptions::mReferenceStrip = false;
bool                            ExporterOptions::mExportVisibilityAnimations = true;
bool                            ExporterOptions::mExportShaderAnimations = false;

bool                            ExporterOptions::mExportVertexAnimations = false;

// Auto-Generate Bounding Volumes - Removed on 04 Jan 2002
// bool                            ExporterOptions::mAutoGenBoundingVolumes = false;
bool                            ExporterOptions::mTristripMeshes = false;
bool                            ExporterOptions::mDeindexMeshes = false;

// BEGIN DEPRECATE -> Mirrored Animation Deprecated: 08 Oct 2002

//bool                            ExporterOptions::mExportMirroredAnim = false;

// END DEPRECATE

bool                            ExporterOptions::mUseScenegraphNameForLightGroup = true;

char*                           ExporterOptions::mMulticontrollerName = NULL;
char*                           ExporterOptions::mLightgroupName = NULL;
char*                           ExporterOptions::mNISScenegraphName = NULL;

int                             ExporterOptions::mProceduralTextureResolutionX = 32;
int                             ExporterOptions::mProceduralTextureResolutionY = 32;

// Removed by Bryan Ewert on 12 Dec 2001: Replaced by Animation Naming options.
//int   ExporterOptions::mAnimationNameCounter = 1;
//char *ExporterOptions::mAnimationNameString  = NULL;
//char *ExporterOptions::mAnimationMirroredNameString  = NULL;
//NameGenerateStyle ExporterOptions::mAnimationNameStyle = Unchanged; // no change

char*                           ExporterOptions::mFilename = NULL;
char*                           ExporterOptions::mExportType = NULL;

// Added by Bryan Ewert on 16 Nov 2001
char*                           ExporterOptions::mPostProcessScript = NULL;
bool                            ExporterOptions::mPostProcessScriptEnable = true;

// Added by Bryan Ewert on 12 Dec 2001
short*                          ExporterOptions::mpAnimationNameMode = NULL;
MStringArray                    ExporterOptions::mCustomAnimationNames( kNumAnimationModes, "" );
MStringArray                    ExporterOptions::mCustomPrePostFixNames( kNumAnimationModes, "" );
short*                          ExporterOptions::mpPrePostFix = NULL;
short*                          ExporterOptions::mpPrePostFixMode = NULL;

// Added by Bryan Ewert on 15 Nov 2002
short                           ExporterOptions::mShaderPrePostFix = kShaderNameNone;
short                           ExporterOptions::mShaderNameMode = kShaderNameModeFilename;
MString                         ExporterOptions::mShaderNameCustom( "" );

// Added by Bryan Ewert on 30 Nov 2001
char*                           ExporterOptions::mLocalRules = NULL;
bool                            ExporterOptions::mLocalRulesEnable = false;
char*                           ExporterOptions::mGlobalRules = NULL;
bool                            ExporterOptions::mGlobalRulesEnable = false;

// Added by Bryan Ewert on 19 Apr 2002
int                             ExporterOptions::mRulesWarningThreshold = 0;
int                             ExporterOptions::mRulesErrorThreshold = 0;

short                           ExporterOptions::mVerbose = 0;  // Quiet!
bool                            ExporterOptions::mProgressInWindow = false;
bool                            ExporterOptions::mUsePeakDetection = true;

bool                            ExporterOptions::mUseDefaultAnimRange = false;

bool                            ExporterOptions::mExportSelection = false;

//===========================================================================
// Constructor / Destructor
//===========================================================================

ExporterOptions::ExporterOptions()
{
    mExportSelection = false;
}

ExporterOptions::~ExporterOptions()
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

//===========================================================================
// ExporterOptions::BuildAnimationName
//===========================================================================
// Description: Uses the Animation Naming options to build a name for an
//              animation.  
//
// Constraints: * This name is not necessarily unique. *
//
//              AnimNode::ValidateName() is responsible for resolving
//              clashes between animation names.
//
//              The 'char* outName' must be allocated with enough space
//              to store the final name.  No bounds checking is possible.
//
// Parameters:  int kAnimationMode: Value from enumeration ExporterAnimationModes;
//                                  identifies the type of animation for
//                                  which the name is being built.
//              const char* animname: The current name for the animation,
//                                    typically from the scene node.
//              char *outname: Storage for the final name.
//
// Return:      (bool): TRUE if successful; else FALSE.
//
//                  Fail example: Name specified from filename, but
//                  filename is NULL.
//
//===========================================================================
bool ExporterOptions::BuildAnimationName( int kAnimationMode, const char* animname, char* outname )
{
    bool bSuccess = true;

    char        basename[256];

//    clog << "BuildAnimationName( " << kAnimationMode << ", " << animname << " );" << endl;

    // Create base name for animation
    {
        if ( mpAnimationNameMode[kAnimationMode] == kAnimationNameFilename )
        {
            if ( mFilename != NULL )
            {
                // Append only the filepart of the filepath to the name.
                MFileObject                         fileObject;
                fileObject.setFullName( mFilename );
                strcpy( basename, fileObject.name().asChar() );
            }
            else
            {
                MGlobal::displayWarning( "Animation name derived from filename, but filename is NULL" );
                strcpy( outname, "<INVALID>" );
                bSuccess = false;
            }
        }

        else if ( mpAnimationNameMode[kAnimationMode] == kAnimationNameCustom )
        {
            strcpy( basename, mCustomAnimationNames[kAnimationMode].asChar() );
        }

        else
        {
            strcpy( basename, animname );
        }
    }

    // Apply pre- or post-fix
    if ( mpPrePostFix[kAnimationMode] == kAnimationNamePrefix )
    {
        if ( mpPrePostFixMode[kAnimationMode] == kAnimationNamePrePostfixType )
        {
            sprintf( outname, "%s_%s", tlFourCC( ExporterAnimationDefaultNameIDs[kAnimationMode] ).AsChar(), basename );
        }

        else if ( mpPrePostFixMode[kAnimationMode] == kAnimationNamePrePostfixCustom )
        {
            sprintf( outname, "%s%s", mCustomPrePostFixNames[kAnimationMode].asChar(), basename );
        }
    }

    if ( mpPrePostFix[kAnimationMode] == kAnimationNamePostfix )
    {
        if ( mpPrePostFixMode[kAnimationMode] == kAnimationNamePrePostfixType )
        {
            sprintf( outname, "%s_%s", basename, tlFourCC( ExporterAnimationDefaultNameIDs[kAnimationMode] ).AsChar() );
        }

        else if ( mpPrePostFixMode[kAnimationMode] == kAnimationNamePrePostfixCustom )
        {
            sprintf( outname, "%s%s", basename, mCustomPrePostFixNames[kAnimationMode].asChar() );
        }
    }

    return bSuccess;
}

//===========================================================================
// ExporterOptions::BuildShaderName
//===========================================================================
// Description: Uses the Shader Naming options to build a name for a shader.
//
// Constraints: The 'char* outName' must be allocated with enough space
//              to store the final name.  No bounds checking is possible.
//
// Parameters:  const char* shadername: Maya's name for the shader.
//              char *outname: Storage for the decorated name.
//
// Return:      (bool): TRUE if successful; else FALSE.
//
//                  Fail example: Name specified from filename, but
//                  filename is NULL.
//
//===========================================================================
bool ExporterOptions::BuildShaderName( const char* shadername, char* outname )
{
    bool bSuccess = true;

    // By default, outname is a copy of shadername.
    strcpy( outname, shadername );

    char        basename[256];
    *basename = '\0';

//    clog << "BuildAnimationName( " << kAnimationMode << ", " << animname << " );" << endl;

    // Create base name for shader
    if ( mShaderPrePostFix != kShaderNameNone )    // If "None" don't do anything.
    {
        switch ( mShaderNameMode )
        {
            case 0: // Filename
            {
                if ( mFilename != NULL )
                {
                    // Append only the filepart of the filepath to the name.
                    MFileObject                         fileObject;
                    fileObject.setFullName( mFilename );
                    strcpy( basename, fileObject.name().asChar() );
                }
                else
                {
                    MGlobal::displayWarning( "Animation name derived from filename, but filename is NULL" );
                    strcpy( outname, "<INVALID>" );
                    bSuccess = false;
                }
                break;
            }
            case 1: // Custom
            {
                strcpy( basename, mShaderNameCustom.asChar() );
                break;
            }
            default:
            {
                assert( false && "Unsupported Shader Name configuration" );
            }

        }

        // Apply pre- or post-fix
        if ( mShaderPrePostFix == kShaderNamePrefix )
        {
            sprintf( outname, "%s_%s", basename, shadername );
        }

        if ( mShaderPrePostFix == kShaderNamePostfix )
        {
            sprintf( outname, "%s_%s", shadername, basename );
        }
    }

    return bSuccess;
}

//===========================================================================
// ExporterOptoins::BuildNodeName
//===========================================================================
// Description: Allocates and returns a new string containing the specified
//              name.
//
//              If the "Strip Reference Prefix" is ON this will strip
//              the portion of the name up to and including the first ":"
//              character.
//
// Constraints: 
//
// Parameters:  const MString& mayaname: The name which will be stored in
//                                       the returned string.
//
// Return:      (char*): A newly allocated string containing the specified name.
//
//===========================================================================
char *ExporterOptions::BuildNodeName(const MString &mayaname)
{
    if (!mReferenceStrip) return strnew(mayaname.asChar());

    int pos = mayaname.rindex(':'); 
    if (pos < 0) return strnew(mayaname.asChar());

    return strnew(mayaname.substring(pos + 1, mayaname.length()).asChar());
}

//===========================================================================
// ExporterOptions::BuildInstancedNodeName
//===========================================================================
// Description: Appends the specified number on to the specified name,
//              then allocates and returns a new string containing the 
//              specified name.
//
// Constraints: See ExporterOptions::BuildNodeName().
//
// Parameters:  const MString& mayaname: The name which will be stored in
//                                       the returned string.
//              int instanceNumber: The number which will be appended to
//                                  the end of the specified name.
//
// Return:      (char*): A newly allocated string containing the specified name.
//
//===========================================================================
char *ExporterOptions::BuildInstancedNodeName(const MString &mayaname, int instanceNumber)
{
    MString instanceName = mayaname+instanceNumber;

    return BuildNodeName( instanceName );
}

//===========================================================================
// ExporterOptions::SetFilename
//===========================================================================
// Description: Strips the extension from the specified filename string and
//              assigns it to the mFilename variable.
//
// Constraints: 
//
//  Parameters: const char *fname: NULL-terminated filename string.
//
//      Return: (void)
//
//===========================================================================
void ExporterOptions::SetFilename(const char *fname)
{
    if (mFilename != NULL) strdelete(mFilename);

    if (strlen(fname)==0)
    {
        mFilename = NULL;
        return;
    }

    mFilename = strnew(fname);
    
    // remove any extension that may have slipped in
    int len = strlen(mFilename);
    while( len-- )
    {
        // If found path delimiter stop scanning.
        if ( ( mFilename[len] == '/' ) || ( mFilename[len] == '\\' ) || ( mFilename[len] == ':' ) )
        {
            break;
        }

        if ( mFilename[len] == '.' )
        {
            mFilename[len] = 0;
            break;
        }
    }
}

//===========================================================================
// ExporterOptions::SetPostProcessScript        (static)
//===========================================================================
// Description: Sets the name for the Post Process Script.
//
// Constraints: 
//
// Parameters:  const char* postScript: NULL-terminated string specifying
//                  the name of the post-process script.
//
// Return:      (void)
//
//===========================================================================
void ExporterOptions::SetPostProcessScript( const char* postScript )
{
     if ( mPostProcessScript == postScript ) return;

     if ( mPostProcessScript != NULL )
     {
          delete [] mPostProcessScript;
          mPostProcessScript = NULL;
     }

     if ( postScript == NULL ) return;

     mPostProcessScript = strnew( postScript );
}

//===========================================================================
// ExporterOptions::SetLocalRules       (static)
//===========================================================================
// Description: Sets the name for the Local Rules file.
//
// Constraints: 
//
// Parameters:  const char* localRules: NULL-terminated string specifying
//                                      the name of the Local Rules file.
//
// Return:      (void)
//
//===========================================================================
void ExporterOptions::SetLocalRules( const char* localRules )
{
     if ( mLocalRules == localRules ) return;

     if ( mLocalRules != NULL )
     {
          delete [] mLocalRules;
          mLocalRules = NULL;
     }

     if ( localRules == NULL ) return;

     mLocalRules = strnew( localRules );
}

//===========================================================================
// ExporterOptions::SetGlobalRules       (static)
//===========================================================================
// Description: Sets the name for the Global Rules file.
//
// Constraints: 
//
// Parameters:  const char* globalRules: NULL-terminated string specifying
//                                       the name of the Global Rules file.
//
// Return:      (void)
//
//===========================================================================
void ExporterOptions::SetGlobalRules( const char* globalRules )
{
     if ( mGlobalRules == globalRules ) return;

     if ( mGlobalRules != NULL )
     {
          delete [] mGlobalRules;
          mGlobalRules = NULL;
     }

     if ( globalRules == NULL ) return;

     mGlobalRules = strnew( globalRules );
}

//===========================================================================
// [get|set] RulesWarningThreshold
//===========================================================================
// Description: Gets and sets the Warning Threshold for the Rules system.
//
//===========================================================================
void ExporterOptions::SetRulesWarningThreshold( int threshold )
{
    mRulesWarningThreshold = threshold;
}

int ExporterOptions::RulesWarningThreshold( void )
{
    return mRulesWarningThreshold;
}

//===========================================================================
// [get|set] RulesErrorThreshold
//===========================================================================
// Description: Gets and sets the Error Threshold for the Rules system.
//
//===========================================================================
void ExporterOptions::SetRulesErrorThreshold( int threshold )
{
    mRulesErrorThreshold = threshold;
}

int ExporterOptions::RulesErrorThreshold( void )
{
    return mRulesErrorThreshold;
}

//===========================================================================
// ExporterOptions::Clear
//===========================================================================
// Description: Clears the various strings and arrays stored in the 
//              ExporterOptions class. Resets Rules threshold values to 
//              defaults.
//
//              See also ::SetDefaults()
//
//===========================================================================
void ExporterOptions::Clear( void )
{
     if ( mFilename != NULL )
     {
          strdelete( mFilename );
          mFilename = NULL;
     }
     if ( mMulticontrollerName != NULL )
     {
          strdelete( mMulticontrollerName );
          mMulticontrollerName = NULL;
     }
     if ( mLightgroupName != NULL )
     {
          strdelete( mLightgroupName );
          mLightgroupName = NULL;
     }
     if ( mNISScenegraphName != NULL )
     {
          strdelete( mNISScenegraphName );
          mNISScenegraphName = NULL;
     }

// Removed by Bryan Ewert on 12 Dec 2001: Replaced by Animation Naming attribute group.
//     if ( mAnimationNameString != NULL )
//     {
//          strdelete( mAnimationNameString );
//          mAnimationNameString = NULL;
//     }
//     if ( mAnimationMirroredNameString != NULL )
//     {
//          strdelete( mAnimationMirroredNameString );
//          mAnimationMirroredNameString = NULL;
//     }

     if ( mExportType != NULL )
     {
          strdelete( mExportType );
          mExportType = NULL;
     }
     if ( mPostProcessScript != NULL )
     {
          strdelete( mPostProcessScript );
          mPostProcessScript = NULL;
     }

    if ( mpAnimationNameMode != NULL )
    {
        delete [] mpAnimationNameMode;
        mpAnimationNameMode = NULL;
    }
    if ( mpPrePostFix != NULL )
    {
        delete [] mpPrePostFix;
        mpPrePostFix = NULL;
    }
    if ( mpPrePostFixMode != NULL )
    {
        delete [] mpPrePostFixMode;
        mpPrePostFixMode = NULL;
    }

    mCustomAnimationNames = MStringArray( kNumAnimationModes, "" );
    mCustomPrePostFixNames = MStringArray( kNumAnimationModes, "" );
    
    if ( mLocalRules != NULL )
    {
        strdelete( mLocalRules );
        mLocalRules = NULL;
    }
    if ( mGlobalRules != NULL )
    {
        strdelete( mGlobalRules );
        mGlobalRules = NULL;
    }

    // Added by Bryan Ewert on 19 Apr 2002
    mRulesWarningThreshold = 0;
    mRulesErrorThreshold = 0;

    // Added by Bryan Ewert on 15 Nov 2002
    mShaderPrePostFix = kShaderNameNone;
    mShaderNameMode = kShaderNameModeFilename;
    mShaderNameCustom.clear();

}

//===========================================================================
// ExporterOptions::SetDefaults
//===========================================================================
// Description: Clears member data and reset all values to their defaults.
//
//===========================================================================
void ExporterOptions::SetDefaults( void )
{
    Clear();

    // reset the counter so multiple exports get the same anim numners
//    mAnimationNameCounter = 1; 

    mExportNISScenegraph = false;
    mExportAnimations = true;
    mExportAnimReferencesOnly = false;
    mReferenceStrip = false;
    mExportVisibilityAnimations = true;
    mExportShaderAnimations = false;

    mExportVertexAnimations = false;

// Auto-Generate Bounding Volumes - Removed on 04 Jan 2002
//    mAutoGenBoundingVolumes = false;
    mTristripMeshes = false;
    mDeindexMeshes = false;

// BEGIN DEPRECATE -> Mirrored Animation Deprecated: 08 Oct 2002

//    mExportMirroredAnim = false;

// END DEPRECATE

    mUseScenegraphNameForLightGroup = true;
    mPostProcessScriptEnable = true;
    mLocalRulesEnable = false;
    mGlobalRulesEnable = false;
    // Added by Bryan Ewert on 19 Apr 2002
    mRulesWarningThreshold = 0;
    mRulesErrorThreshold = 0;

    mUseDefaultAnimRange = false;
    mVerbose = 0;   // Quiet!
    mProgressInWindow = false;
    mUsePeakDetection = true;

    mMulticontrollerName = strnew("MasterController");
    mLightgroupName = strnew("LightGroup");
    mNISScenegraphName = strnew("Scene");

    mProceduralTextureResolutionX = 32;
    mProceduralTextureResolutionY = 32;

    mpAnimationNameMode = new short [ kNumAnimationModes ];
    mpPrePostFix = new short [ kNumAnimationModes ];
    mpPrePostFixMode = new short [ kNumAnimationModes ];

    // Default mode resolves to:
    //  Use Original Name and Prefix with Type.
    memset( mpAnimationNameMode,    0, kNumAnimationModes * sizeof( short ) );
    memset( mpPrePostFix,           0, kNumAnimationModes * sizeof( short ) );
    memset( mpPrePostFixMode,       0, kNumAnimationModes * sizeof( short ) );

    // Added by Bryan Ewert on 15 Nov 2002
    mShaderPrePostFix = kShaderNameNone;
    mShaderNameMode = kShaderNameModeFilename;
    mShaderNameCustom.clear();
}

//===========================================================================
// ExporterOptions::Initialize
//===========================================================================
// Description: Parses the options string generated from Maya's Export
//              Options dialog.
//
//              The string argument is assembled in the MEL procedure:
//
//                  P3DGetExportOptions()
//
//              in the MEL script "p3dexpoptsgui.mel".
//
//              The string is formatted in the manner:
//                  
//                  "option0=value;option1=value;option2=value;..."
//
// Constraints: 
//
//  Parameters: const MString& optionStr: The options string.
//
//      Return: 
//
//===========================================================================
bool ExporterOptions::Initialize(const MString &optionStr)
{
//   clog << "UI Options: " << optionStr << endl;

    SetDefaults();

    if (optionStr.length() < 1) return false;

    MStringArray option_list;
    MStringArray option;

    optionStr.split(';', option_list);
    option_list[0].split('=', option);
    
    mExportType = strnew(option[1].asChar());
    
    for (unsigned int j = 1; j < option_list.length (); j++ )
    {
        option.clear();
        option_list[j].split('=', option);

        if (option[0] == MString("exportNISScenegraph"))
        {
            mExportNISScenegraph = (0 != option[1].asInt());
        }

        if (option[0] == MString("exportAnimations"))
        {
            mExportAnimations = (0 != option[1].asInt());
        }

        if (option[0] == MString("exportAnimReferencesOnly"))
        {
            mExportAnimReferencesOnly = (0 != option[1].asInt());
        }

        if (option[0] == MString("referenceStrip"))
        {
            mReferenceStrip = (0 != option[1].asInt());
        }

        if (option[0] == MString("exportVisAnimations"))
        {
            mExportVisibilityAnimations = (0 != option[1].asInt());
        }

        if (option[0] == MString("exportShaderAnimations"))
        {
            mExportShaderAnimations = (0 != option[1].asInt());
        }

        if (option[0] == MString("exportVertexOffsetAnims"))
        {
            mExportVertexAnimations = (0 != option[1].asInt());
        }

// Auto-Generate Bounding Volumes - Removed on 04 Jan 2002
//        if (option[0] == MString("autoGenBoundingVolumes"))
//        {
//            mAutoGenBoundingVolumes = (0 != option[1].asInt());
//        }

        if (option[0] == MString("tristripMeshes"))
        {
            mTristripMeshes = (0 != option[1].asInt());
        }

        if (option[0] == MString("deindexMeshes"))
        {
            mDeindexMeshes = (0 != option[1].asInt());
        }

// Removed by Bryan Ewert on 12 Dec 2001: Replaced by ExporterOptions::InitializeAnimationNames().
//        if (option[0] == MString("animationString"))
//        {
//            mAnimationNameString = strnew(option[1].asChar());
//        }
//
//        if (option[0] == MString("animationNameStyle"))
//        {
//            if (option[1] == MString("0"))   mAnimationNameStyle = Prefix;
//            if (option[1] == MString("1"))   mAnimationNameStyle = Unchanged;
//            if (option[1] == MString("2"))   mAnimationNameStyle = Postfix;
//            if (option[1] == MString("3"))   mAnimationNameStyle = Replace;
//            if (option[1] == MString("4"))   mAnimationNameStyle = FilenameReplace;
//            if (option[1] == MString("5"))   mAnimationNameStyle = FilenamePrefix;
//        }
//
//        if (option[0] == MString("animationMirrorString"))
//        {
//            mAnimationMirroredNameString = strnew(option[1].asChar());
//        }

// BEGIN DEPRECATE -> Mirrored Animation Deprecated: 08 Oct 2002

//        if (option[0] == MString("exportMirrorAnimation"))
//        {
//            mExportMirroredAnim = (0 != option[1].asInt());
//        }

// END DEPRECATE

        if (option[0] == MString("useScenegraphNameForLightGroup"))
        {
            mUseScenegraphNameForLightGroup = (0 != option[1].asInt());
        }

        if (option[0] == MString("multicontrollerName"))
        {
            mMulticontrollerName = strnew(option[1].asChar());
        }

        if (option[0] == MString("lightGroupName"))
        {
            mLightgroupName = strnew(option[1].asChar());
        }

        if (option[0] == MString("NISScenegraphName"))
        {
            mNISScenegraphName = strnew(option[1].asChar());
        }

        if (option[0] == MString("xTextureResolution"))
        {
            mProceduralTextureResolutionX = powersOf2i[option[1].asInt()]; 
            // option group in order from 2^0 = item 1, 2^1 = item 2, ...
            //mProceduralTextureResolutionX = (int) (1 << (option[1].asInt() - 1)); 
        }

        if (option[0] == MString("yTextureResolution"))
        {
            mProceduralTextureResolutionY = powersOf2i[option[1].asInt()]; 
            // option group in order from 2^0 = item 1, 2^1 = item 2, ...
            //mProceduralTextureResolutionY = (int) (1 << (option[1].asInt() - 1));
        }

        if (option[0] == MString("exportedFile"))         // 
        {
            if (option[1].length()!=0)
            {
                SetFilename(option[1].asChar());
            }
        }

        if (option[0] == MString("postProcessScript"))         // 
        {
            if (option[1].length()!=0)
            {
                SetPostProcessScript(option[1].asChar());
            }
        }
        if (option[0] == MString("postProcessScriptEnable"))         // 
        {
            if (option[1].length()!=0)
            {
                mPostProcessScriptEnable = (0 != option[1].asInt());
            }
        }

        // NOTE: Animation name options not broadcast to Exporter.
        //       See ExporterOptions::InitializeAnimationNames()

        // Note: Rules are not stored in the p3dExportSetting node.
        // They are fed to the Exporter via the MEL procedure
        // P3DGetExportOptions() in "p3dexpoptsgui.mel".
        if (option[0] == MString("localRules"))         // 
        {
            if (option[1].length()!=0)
            {
                SetLocalRules(option[1].asChar());
            }
        }
        if (option[0] == MString("localRulesEnable"))         // 
        {
            if (option[1].length()!=0)
            {
                mLocalRulesEnable = (0 != option[1].asInt());
            }
        }
        if (option[0] == MString("globalRules"))         // 
        {
            if (option[1].length()!=0)
            {
                SetGlobalRules(option[1].asChar());
            }
        }
        if (option[0] == MString("globalRulesEnable"))         // 
        {
            if (option[1].length()!=0)
            {
                mGlobalRulesEnable = (0 != option[1].asInt());
            }
        }

        // Added by Bryan Ewert on 19 Apr 2002
        if (option[0] == MString("rulesWarningThreshold"))         // 
        {
            if (option[1].length()!=0)
            {
                mRulesWarningThreshold = option[1].asInt();
            }
        }
        if (option[0] == MString("rulesErrorThreshold"))         // 
        {
            if (option[1].length()!=0)
            {
                mRulesErrorThreshold = option[1].asInt();
            }
        }

//        if (option[0] == MString("animRangeDefault"))         // 
//        {
//            if (option[1].length()!=0)
//            {
//                mUseDefaultAnimRange = (0 != option[1].asInt());
//            }
//        }
//
//        if (option[0] == MString("animRange"))         // 
//        {
//            // The option will look like this: "animRange=name,14,288"
//            // where:
//            //
//            //      "name" is the name of the animRange;
//            //      "14" is the start frame;
//            //      "288" is the end frame.
//
//            if (option[1].length()!=0)
//            {
//                MStringArray range_list;
//
//                option[1].split(',', range_list);
//
//                if ( option[1].substring( 0, 0 ) == "," )
//                {
//                    AnimNode::AddAnimRange( AnimRange( range_list[0].asInt(), range_list[1].asInt() ) );
//                }
//                else
//                {
//                    AnimNode::AddAnimRange( AnimRange( range_list[1].asInt(), range_list[2].asInt(), range_list[0].asChar() ) );
//                }
//
//            }
//        }

        if (option[0] == MString("verbose"))
        {
            if (option[1].length()!=0)
            {
                mVerbose = option[1].asInt();
            }
        }
        if (option[0] == MString("progressInWindow"))
        {
            if (option[1].length()!=0)
            {
                mProgressInWindow = (0 != option[1].asInt());
            }
        }
        if (option[0] == MString("usePeakDetection"))
        {
            if (option[1].length()!=0)
            {
                mUsePeakDetection = (0 != option[1].asInt());
            }
        }

        // NOTE: Shader name options not broadcast to Exporter.
        //       See ExporterOptions::InitializeShaderSettings()

    }

    InitializeAnimationNames();
    InitializeShaderSettings();

    MAnimControl animController;
    animController.setViewMode(MAnimControl::kPlaybackViewActive);

//    if ( ( AnimNode::NumAnimRanges() == 0 ) || ExporterOptions::UseDefaultAnimRange() )
//    {
//        AnimNode::AddAnimRange( AnimRange( (int)animController.minTime().value(), (int)animController.maxTime().value() ) );
//    }
        
    return true;
}

//===========================================================================
// ExporterOptions::GetCurrentExporterSettingNode  (static)
//===========================================================================
// Description: Finds the MObject for the current Exporter Setting Node.
//
// Constraints: 
//
//  Parameters: MObject& settingNode: Storage for the setting node.
//
//      Return: (bool): TRUE if valid MObject returned; otherwise FALSE.
//
//===========================================================================
bool ExporterOptions::GetCurrentExporterSettingNode( MObject& settingNode )
{
    MDagPath                    dagExporterOptions;
    MFnDependencyNode           fnDependNode;
    MStatus                     status;

    MItDag                      itDag( MItDag::kBreadthFirst );
    for ( /* nothing */; !itDag.isDone(); itDag.next() )
    {
        fnDependNode.setObject( itDag.item() );
        if ( fnDependNode.typeId() == P3D_EXPORTER_OPTIONS_ID )
        {
            itDag.getPath( dagExporterOptions );
            break;
        }
    }

    if ( !dagExporterOptions.isValid() )
    {
        return false;
    }

    // Now must find current p3dExporterSetting node.
    MString                     currentSetting;
    MPlug plugCurrentSetting = fnDependNode.findPlug( "currentSetting", &status );
    if ( status != MS::kSuccess )
    {
        return false;
    }

    status = plugCurrentSetting.getValue( currentSetting );
    if ( status != MS::kSuccess )
    {
        return false;
    }

    MSelectionList              selList;
    status = MGlobal::getSelectionListByName( currentSetting, selList );
    if ( status != MS::kSuccess )
    {
        return false;
    }

    selList.getDependNode( 0, settingNode );

    return true;
}

//===========================================================================
// ExporterOptions::InitializeAnimationNames
//===========================================================================
// Description: I hope I don't regret this later......
//
//              Since there are a helluva lot of options associated with
//              Animation Naming, they are not broadcast to the Exporter
//              via an arglist.  Instead I will find the p3dExporterOptions
//              node, trace it to its current p3dExporterSetting node,
//              and assign the values directly from the plugs.
//
//        Note: The defaults for Animation Naming are perfectly
//              acceptable (Use Auto-numbering, Use Original Name,
//              and Prefix with Animation Type), and if this DG
//              trace fails it's just like the user didn't specify
//              the options via args, so everything jives in the end.
//
// Constraints: Defaults are already set within ::Initialize().
//
// Parameters:  (void)
//
// Return:      (bool): TRUE if everything went OK and all DG queries were
//                      successful; FALSE if something failed and all
//                      settings will be defaults.
//
//===========================================================================
bool ExporterOptions::InitializeAnimationNames( void )
{
    MObject                     exporterSetting;

    if ( !GetCurrentExporterSettingNode( exporterSetting ) ) return false;

    MStatus                     status;
    MFnDependencyNode           fnDependNode( exporterSetting );
    MPlug                       plug;
    MPlug                       elementPlug;
    unsigned int                p;

    // Now I have the current Exporter Setting node.. read plugs.

    plug = fnDependNode.findPlug( "animationNameMode", &status );
    if ( status != MS::kSuccess ) MGlobal::displayWarning( "No .animationNameMode attribute!" );

    for ( p = 0; p < kNumAnimationModes; p++ )
    {
        elementPlug = plug.elementByLogicalIndex( p, &status );
        if ( status == MS::kSuccess )
        {
            elementPlug.getValue( mpAnimationNameMode[p] );
        }
    }
    
    plug = fnDependNode.findPlug( "animationNames" );
    for ( p = 0; p < kNumAnimationModes; p++ )
    {
        elementPlug = plug.elementByLogicalIndex( p, &status );
        if ( status == MS::kSuccess )
        {
            elementPlug.getValue( mCustomAnimationNames[p] );
        }
    }

    plug = fnDependNode.findPlug( "prePostFix" );
    for ( p = 0; p < kNumAnimationModes; p++ )
    {
        elementPlug = plug.elementByLogicalIndex( p, &status );
        if ( status == MS::kSuccess )
        {
            elementPlug.getValue( mpPrePostFix[p] );
        }
    }
    
    plug = fnDependNode.findPlug( "prePostFixMode" );
    for ( p = 0; p < kNumAnimationModes; p++ )
    {
        elementPlug = plug.elementByLogicalIndex( p, &status );
        if ( status == MS::kSuccess )
        {
            elementPlug.getValue( mpPrePostFixMode[p] );
        }
    }

    plug = fnDependNode.findPlug( "prePostFixNames" );
    for ( p = 0; p < kNumAnimationModes; p++ )
    {
        elementPlug = plug.elementByLogicalIndex( p, &status );
        if ( status == MS::kSuccess )
        {
            elementPlug.getValue( mCustomPrePostFixNames[p] );
        }
    }

    return true;
}

//===========================================================================
// ExporterOptions::InitializeShaderSettings
//===========================================================================
// Description: The options for Shader Naming are not broadcast to the 
//              Exporter via an arglist.  Instead I will find the 
//              p3dExporterOptions node, trace it to its current 
//              p3dExporterSetting node, and assign the values directly 
//              from the plugs.
//
// Constraints: Defaults are already set within ::Initialize().
//
// Parameters:  (void)
//
// Return:      (bool): TRUE if everything went OK and all DG queries were
//                      successful; FALSE if something failed and all
//                      settings will be defaults.
//
//===========================================================================
bool ExporterOptions::InitializeShaderSettings( void )
{
    MObject                     exporterSetting;

    if ( !GetCurrentExporterSettingNode( exporterSetting ) ) return false;

    MStatus                     status;
    MFnDependencyNode           fnDependNode( exporterSetting );
    MPlug                       plug;

    // Now I have the current Exporter Setting node.. read plugs.

    plug = fnDependNode.findPlug( "shaderPrePostFix", &status );
    plug.getValue( mShaderPrePostFix );

    plug = fnDependNode.findPlug( "shaderNameMode", &status );
    plug.getValue( mShaderNameMode );

    plug = fnDependNode.findPlug( "shaderNameCustom", &status );
    plug.getValue( mShaderNameCustom );

    return true;
}

/////////////////////////////////////////////////////////////////////
// SHAPE NODE IMPLEMENTATION
/////////////////////////////////////////////////////////////////////

MObject exporterOptionsShape::backgroundColour;
MObject exporterOptionsShape::backgroundRed;
MObject exporterOptionsShape::backgroundGreen;
MObject exporterOptionsShape::backgroundBlue;
MObject exporterOptionsShape::currentSetting;
MObject exporterOptionsShape::exporterSettings;     
MTypeId exporterOptionsShape::id(P3D_EXPORTER_OPTIONS_ID);

exporterOptionsShape::exporterOptionsShape()
{
    attributes = new exporterOptionsAttr;
    attributes->currentSetting.set("");
} 
 
exporterOptionsShape::~exporterOptionsShape()
{
    delete attributes;
}

//********************************************************************************************
// Description
// 
//    When instances of this node are created internally, the MObject associated
//    with the instance is not created until after the constructor of this class
//    is called. This means that no member functions of MPxSurfaceShape can
//    be called in the constructor.
//    The postConstructor solves this problem. Maya will call this function
//    after the internal object has been created.
//    As a general rule do all of your initialization in the postConstructor.
//********************************************************************************************
void exporterOptionsShape::postConstructor()
{ 
    // This call allows the shape to have shading groups assigned
    setRenderable( false );
}

//********************************************************************************************
// Handle internal attributes.
// In order to impose limits on our attribute values we
// mark them internal and use the values in attributes instead.
//********************************************************************************************
bool exporterOptionsShape::getInternalValue( const MPlug& plug, MDataHandle& datahandle )
{
    bool isOk = true;
    MObject this_object = thisMObject();  
    MFnDagNode dagNodeFn(this_object);

    if (plug == currentSetting )
    {
        datahandle.set( attributes->currentSetting );
        isOk = true;
    }
    else 
    {
        isOk = MPxSurfaceShape::getInternalValue( plug, datahandle );
    }
    return isOk;
}

//********************************************************************************************
// Handle internal attributes.
// In order to impose limits on our attribute values we
// mark them internal and use the values in attributes instead.
//********************************************************************************************
bool exporterOptionsShape::setInternalValue( const MPlug& plug, const MDataHandle& datahandle )
{
    bool isOk = true;

    if ( plug == currentSetting )
    {
        attributes->currentSetting = datahandle.asString();
        isOk = true;
    }
    else 
    {
        isOk = MPxSurfaceShape::setInternalValue( plug, datahandle );
    }
    return isOk;
}

void* exporterOptionsShape::creator()
{
    return new exporterOptionsShape();
}

MStatus exporterOptionsShape::initialize()
{ 
    MStatus             status;
    MFnTypedAttribute   strAttr;
    MFnNumericAttribute numAttr;
    MFnMessageAttribute messageAttr;

    // Default empty string to assign to string attributes
    MFnStringData                         fnStringData;
    MObject                               defaultString;
    defaultString = fnStringData.create( "" );

    currentSetting = strAttr.create( "currentSetting", "ces", MFnData::kString, defaultString, &status);
    CHECKRESULT_FAILURE(status, "Error creating currentSetting attribute.");
    strAttr.setInternal( true );
    strAttr.setHidden( true );
    strAttr.setKeyable( false );
    strAttr.setStorable( true );
    status = addAttribute (currentSetting);
    CHECKRESULT_FAILURE(status, "Error adding currentSetting attribute.");
    
    backgroundRed = numAttr.create ("backgroundRed", "bgr", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE(status,  "Error creating backgroundRed attribute" );
        numAttr.setMin(0.0);
        numAttr.setMax(1.0);
        numAttr.setHidden( true );
        numAttr.setKeyable( false );
    backgroundGreen = numAttr.create ("backgroundGreen", "bgg", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE(status, "Error creating backgroundGreen attribute" );
        numAttr.setMin(0.0);
        numAttr.setMax(1.0);
        numAttr.setHidden( true );
        numAttr.setKeyable( false );
    backgroundBlue = numAttr.create ("backgroundBlue", "bgb", MFnNumericData::kFloat, 0.0f, &status);
    CHECKRESULT_FAILURE(status, "Error creating backgroundBlue attribute" );
        numAttr.setMin(0.0);
        numAttr.setMax(1.0);
        numAttr.setHidden( true );
        numAttr.setKeyable( false );
    backgroundColour = numAttr.create( "backgroundColour", "bgc", backgroundRed, backgroundGreen, backgroundBlue, &status);
    CHECKRESULT_FAILURE(status, "Error creating backgroundColour attribute" );
        numAttr.setKeyable( false );
        numAttr.setUsedAsColor(true);
    status = addAttribute( backgroundColour );
    CHECKRESULT_FAILURE(status, "Error adding backgroundColour attribute." );

    exporterSettings = messageAttr.create("exporterSettings", "es", &status);
    CHECKRESULT_FAILURE(status, "Error creating exporterSettings attribute" );
        messageAttr.setHidden( true );
    status = addAttribute( exporterSettings );
    CHECKRESULT_FAILURE(status, "Error adding exporterSettings attribute" );

    return status;
}

/////////////////////////////////////////////////////////////////////
// UI IMPLEMENTATION
/////////////////////////////////////////////////////////////////////

exporterOptionsShapeUI::exporterOptionsShapeUI() {}
exporterOptionsShapeUI::~exporterOptionsShapeUI() {}

void* exporterOptionsShapeUI::creator()
{
    return new exporterOptionsShapeUI();
}

//===========================================================================
// exportSettingAttr::exportSettingAttr()       (Constructor)
//===========================================================================
// Description: Sets the default values for the exportSettingAttr attributes.
//
//              ** These are used as the Internal Values for the attributes
//              ** on the exportSettingNode.
//
//===========================================================================
exportSettingAttr::exportSettingAttr()
:   pAnimationNameMode( NULL ),
    pPrePostFix( NULL ),
    pPrePostFixMode( NULL ),
    customAnimationNames( kNumAnimationModes, "" ),
    customPrePostFixNames( kNumAnimationModes, "" )
{
    exportNISScenegraph = false;
    exportAnimations = true;
    exportAnimReferencesOnly = false;
    referenceStrip = false;
    exportVisAnimations = true;
    exportShaderAnimations = false;

    exportVertexAnimations = true;

//    exportDeformPolySkins = true;     // unused?
// Auto-Generate Bounding Volumes - Removed on 04 Jan 2002
//    autoGenBoundingVolumes = false;
    tristripMeshes = false;
    deindexMeshes = false;
    useScenegraphNameForLightGroup = true;

//    animationString.set("anim");
//    animationNameStyle = 1;
//    animationMirrorString.set("mir");

// BEGIN DEPRECATE -> Mirrored Animation Deprecated: 08 Oct 2002

//    exportMirrorAnimation = false;

// END DEPRECATE

    multicontrollerName.set("MasterController");
    lightGroupName.set("LightGroup");
    NISScenegraphName.set("Scene");
    xTextureResolution = 3;
    yTextureResolution = 3;

    exporterScriptEnable = true;
    viewerScriptEnable = true;
    postProcessScriptEnable = true;

    viewerScript.set("");
    exporterScript.set("");                 // Internal value for '.exporterScript' attribute on p3dExportSetting node.
    exportedFile.set("");                   // Internal value for '.exportedFile' attribute on p3dExportSetting node.
    postProcessScript.set("");              // Internal value for '.postProcessScript' attribute on p3dExportSetting node.

    pAnimationNameMode = new short [ kNumAnimationModes ];                  // 0 = Original; 1 = Filename; 2 = Custom.
    pPrePostFix = new short [ kNumAnimationModes ];                         // 0 = prefix; 1 = postfix;
    pPrePostFixMode = new short [ kNumAnimationModes ];                     // 0 = Type; 1 = Filename; 2 = Custom.

    memset( pAnimationNameMode,    0, kNumAnimationModes * sizeof( short ) );
    memset( pPrePostFix,           0, kNumAnimationModes * sizeof( short ) );
    memset( pPrePostFixMode,       0, kNumAnimationModes * sizeof( short ) );

    // Added by Bryan Ewert on 15 Nov 2002
    m_shaderPrePostFix = kShaderNameNone;
    m_shaderNameMode = kShaderNameModeFilename;
    m_shaderNameCustom.set("");

    localRules.set("");                     // Internal value for '.localRules' attribute on p3dExportSetting node.
    localRulesEnable = false;

    // Note: Global Rules are stored in the optionVar "p3dGlobalRules", not in the p3dExportSettings node.

    // Note: WarningThreshold and ErrorThreshold are stored in the optionVars
    // "p3dRulesWarningThreshold" and "p3dRulesErrorThreshold", not in the p3dExportSettings node.
}

exportSettingAttr::~exportSettingAttr()
{
    delete [] pAnimationNameMode;
    pAnimationNameMode = NULL;

    delete [] pPrePostFix;
    pPrePostFix = NULL;

    delete [] pPrePostFixMode;
    pPrePostFixMode = NULL;

    customAnimationNames.clear();
    customPrePostFixNames.clear();
}

/////////////////////////////////////////////////////////////////////
// IMPLEMENTATION OF INDIVIDUAL EXPORTER SETTING
/////////////////////////////////////////////////////////////////////
MTypeId exportSettingNode::id( P3D_EXPORT_SETTING_ID );
MObject exportSettingNode::exportNISScenegraph;
MObject exportSettingNode::exportAnimations;
MObject exportSettingNode::exportAnimReferencesOnly;
MObject exportSettingNode::referenceStrip;
MObject exportSettingNode::exportVisAnimations;
MObject exportSettingNode::exportShaderAnimations;

MObject exportSettingNode::exportVertexAnimations;

MObject exportSettingNode::tristripMeshes;
MObject exportSettingNode::deindexMeshes;

// Added by Bryan Ewert on 12 Apr 2002
MObject exportSettingNode::useScenegraphNameForLightGroup;

// ** START Compatibility: NOT STORED *** 
// Attributes maintained for load compatibility - Not stored!
MObject exportSettingNode::animationString;             // 12 Dec 2001
MObject exportSettingNode::animationNameStyle;          // 12 Dec 2001
MObject exportSettingNode::animationMirrorString;       // 12 Dec 2001
MObject exportSettingNode::exportDeformPolySkins;       // 26 Feb 2002 (Deprecated 20 Feb 2001)
MObject exportSettingNode::autoGenBoundingVolumes;      // 04 Jan 2002
// ** END Compatibility

MObject exportSettingNode::exportMirrorAnimation;
MObject exportSettingNode::multicontrollerName;
MObject exportSettingNode::lightGroupName;
MObject exportSettingNode::NISScenegraphName;
MObject exportSettingNode::xTextureResolution;
MObject exportSettingNode::yTextureResolution;
MObject exportSettingNode::exportedFile;                // The '.exportedFile' attribute on the p3dExportSetting node.
MObject exportSettingNode::exporterScript;              // The '.exporterScript' attribute on the p3dExportSetting node.
MObject exportSettingNode::exporterScriptEnable;        // The '.exporterScriptEnable' attribute on the p3dExportSetting node.
MObject exportSettingNode::viewerScript;                // Executed in quickViewerCmd::doIt()
MObject exportSettingNode::viewerScriptEnable;          // The '.viewerScriptEnable' attribute on the p3dExportSetting node.
MObject exportSettingNode::postProcessScript;           // The '.postProcessScript' attribute on the p3dExportSetting node.
MObject exportSettingNode::postProcessScriptEnable;     // The '.postProcessScriptEnable' attribute on the p3dExportSetting node.

MObject exportSettingNode::animationNameMode;           // The '.animationNameMode[]' array attribute on the p3dExportSetting node.
MObject exportSettingNode::animationNames;              // The '.animationName[]' array attribute on the p3dExportSetting node.
MObject exportSettingNode::prePostFixNames;             // The '.prePostFixName[]' array attribute on the p3dExportSetting node.
MObject exportSettingNode::prePostFix;                  // The '.prePostFix[]' array attribute on the p3dExportSetting node.
MObject exportSettingNode::prePostFixMode;              // The '.prePostFixMode[]' array attribute on the p3dExportSetting node.

MObject exportSettingNode::shaderPrePostFix;            // The '.shaderPrePostFix' attribute on the p3dExportSetting node.
MObject exportSettingNode::shaderNameMode;              // The '.shaderNameMode' attribute on the p3dExportSetting node.
MObject exportSettingNode::shaderNameCustom;            // The '.shaderNameCustom' attribute on the p3dExportSetting node.

MObject exportSettingNode::localRules;                  // The '.localRules' attribute on the p3dExportSetting node.
MObject exportSettingNode::localRulesEnable;            // The '.localRulesEnable' attribute on the p3dExportSettingNode.
// Note: Global Rules are stored in the optionVar "p3dGlobalRules", not in the p3dExportSettings node.

// Note: WarningThreshold and ErrorThreshold are stored in the optionVars
// "p3dRulesWarningThreshold" and "p3dRulesErrorThreshold", not in the p3dExportSettings node.

MObject exportSettingNode::animRangeDefault;            // The '.animRangeDefault' attribute on the p3dExportSettingNode.
MObject exportSettingNode::animRangeNameTime;           // The '.animRangeNameTime[]' attribute on the p3dExportSettingNode.
MObject exportSettingNode::animRangeName;               // The '.animRangeName' attribute on the p3dExportSettingNode.
MObject exportSettingNode::animRangeTime;               // The '.animRangeTime' attribute on the p3dExportSettingNode.

MObject exportSettingNode::exporterSettingParent;

exportSettingNode::exportSettingNode() 
{
    attributes = new exportSettingAttr;
}

exportSettingNode::~exportSettingNode() {}

void* exportSettingNode::creator()
{
    return new exportSettingNode();
}

//********************************************************************************************
// Handle internal attributes.
// In order to impose limits on our attribute values we
// mark them internal and use the values in attributes instead.
//********************************************************************************************
bool exportSettingNode::getInternalValue( const MPlug& plug, MDataHandle& datahandle )
{
    bool isOk = true;
    MObject this_object = thisMObject();

    if ( plug == exportNISScenegraph ) 
    {
        datahandle.set( attributes->exportNISScenegraph );
        isOk = true;
    }
    else if ( plug == exportAnimations ) 
    {
        datahandle.set( attributes->exportAnimations );
        isOk = true;
    }
    else if ( plug == exportAnimReferencesOnly ) 
    {
        datahandle.set( attributes->exportAnimReferencesOnly );
        isOk = true;
    }
    else if ( plug == referenceStrip ) 
    {
        datahandle.set( attributes->referenceStrip );
        isOk = true;
    }
    else if ( plug == exportVisAnimations ) 
    {
        datahandle.set( attributes->exportVisAnimations );
        isOk = true;
    }
    else if ( plug == exportShaderAnimations ) 
    {
        datahandle.set( attributes->exportShaderAnimations );
        isOk = true;
    }

    else if ( plug == exportVertexAnimations ) 
    {
        datahandle.set( attributes->exportVertexAnimations );
        isOk = true;
    }

// Unused?
//    else if ( plug == exportDeformPolySkins ) 
//    {
//        datahandle.set( attributes->exportDeformPolySkins );
//        isOk = true;
//    }

// Auto-Generate Bounding Volumes - Removed on 04 Jan 2002
//    else if ( plug == autoGenBoundingVolumes ) 
//    {
//        datahandle.set( attributes->autoGenBoundingVolumes );
//        isOk = true;
//    }
    else if ( plug == tristripMeshes ) 
    {
        datahandle.set( attributes->tristripMeshes );
        isOk = true;
    }
    else if ( plug == deindexMeshes ) 
    {
        datahandle.set( attributes->deindexMeshes );
        isOk = true;
    }
    else if ( plug == useScenegraphNameForLightGroup ) 
    {
        datahandle.set( attributes->useScenegraphNameForLightGroup );
        isOk = true;
    }

// Removed by Bryan Ewert on 12 Dec 2001: Replaced by Animation Naming attribute group.
//    else if ( plug == animationString ) 
//    {
//        datahandle.set( attributes->animationString );
//        isOk = true;
//    }
//    else if ( plug == animationNameStyle ) 
//    {
//        datahandle.set( attributes->animationNameStyle );
//        isOk = true;
//    }
//    else if ( plug == animationMirrorString ) 
//    {
//        datahandle.set( attributes->animationMirrorString );
//        isOk = true;
//    }

// BEGIN DEPRECATE -> Mirrored Animation Deprecated: 08 Oct 2002

//    else if ( plug == exportMirrorAnimation ) 
//    {
//        datahandle.set( attributes->exportMirrorAnimation );
//        isOk = true;
//    }

// END DEPRECATE

    else if ( plug == multicontrollerName ) 
    {
        datahandle.set( attributes->multicontrollerName );
        isOk = true;
    }
    else if ( plug == lightGroupName ) 
    {
        datahandle.set( attributes->lightGroupName );
        isOk = true;
    }
    else if ( plug == NISScenegraphName ) 
    {
        datahandle.set( attributes->NISScenegraphName );
        isOk = true;
    }
    else if ( plug == xTextureResolution ) 
    {
        datahandle.set( attributes->xTextureResolution );
        isOk = true;
    }
    else if ( plug == yTextureResolution ) 
    {
        datahandle.set( attributes->yTextureResolution );
        isOk = true;
    }
    else if ( plug == exportedFile )     // Returns internal value for 'exportedFile' in class exportSettingAttr
    {
        datahandle.set( attributes->exportedFile );
        isOk = true;
    }
    else if ( plug == exporterScript )   // Returns internal value for 'exporterScript' in class exportSettingAttr
    {
        datahandle.set( attributes->exporterScript );
        isOk = true;
    }
    else if ( plug == exporterScriptEnable )   // Returns internal value for 'exporterScriptEnable' in class exportSettingAttr
    {
        datahandle.set( attributes->exporterScriptEnable );
        isOk = true;
    }
    else if ( plug == viewerScript )    // Executed in quickViewerCmd::doIt()
    {
        datahandle.set( attributes->viewerScript );
        isOk = true;
    }
    else if ( plug == viewerScriptEnable )    // Executed in quickViewerCmd::doIt()
    {
        datahandle.set( attributes->viewerScriptEnable );
        isOk = true;
    }
    else if ( plug == postProcessScript )     // Returns internal value for 'postProcessScript' in class exportSettingAttr
    {
        datahandle.set( attributes->postProcessScript );
        isOk = true;
    }
    else if ( plug == postProcessScriptEnable )   // Returns internal value for 'postProcessScriptEnable' in class exportSettingAttr
    {
        datahandle.set( attributes->postProcessScriptEnable );
        isOk = true;
    }

    // ANIMATION NAMING

    // The following plugs are stored as _arrays_.
    // Only indices 0 (zero) through kNumAnimationModes are valid;
    // If the logical index for the plug is outside of this range 
    // then a default value of 0 (zero) or a NULL string, as 
    // appropriate, is returned.

    // NOTE: These attributes are _internal_ and pre-allocated to have
    //       kNumAnimationModes elements.  BE AWARE that all access 
    //       will use _non sparse_ (physical) indexing for their
    //       internal storage!
    //
    // Maya will represent these arrays using _sparse_ (logical) 
    // indexing which will _not_ properly depict which indexes
    // have been modified from their defaults!
    //
    // ** DO NOT USE Maya's sparse logical addressing to 
    // ** access these arrays!

    else if ( plug == animationNames )
    {
        datahandle.set( MString( "" ) );        // default return value if outside of range.

        int index = plug.logicalIndex();
        if ( ( index >= 0 ) && ( index < kNumAnimationModes ) )
        {
            datahandle.set( attributes->customAnimationNames[ index ] );
        }

        isOk = true;
    }
    else if ( plug == prePostFixNames )
    {
        datahandle.set( MString( "" ) );        // default return value if outside of range.
        int index = plug.logicalIndex();
        if ( ( index >= 0 ) && ( index < kNumAnimationModes ) )
        {
            datahandle.set( attributes->customPrePostFixNames[ index ] );
        }
        isOk = true;
    }
    else if ( plug == animationNameMode )
    {
#if ( MAYA_API_VERSION < 400 )
// Maya v3 declares MDataHandle::set( long )
        long                    value = 0;      // default return value if outside of range.
#else
// Maya v4 declares MDataHandle::set( int )
        int                     value = 0;      // default return value if outside of range.
#endif

        int index = plug.logicalIndex();
        if ( ( index >= 0 ) && ( index < kNumAnimationModes ) )
        {
            value = attributes->pAnimationNameMode[ index ];
        }
        else MGlobal::displayWarning( "Index out of range!" );

        datahandle.set( value );                    

        isOk = true;
    }
    else if ( plug == prePostFix )
    {
#if ( MAYA_API_VERSION < 400 )
// Maya v3 declares MDataHandle::set( long )
        long                    value = 0;      // default return value if outside of range.
#else
// Maya v4 declares MDataHandle::set( int )
        int                     value = 0;      // default return value if outside of range.
#endif

        int index = plug.logicalIndex();
        if ( ( index >= 0 ) && ( index < kNumAnimationModes ) )
        {
            value = attributes->pPrePostFix[ index ];
        }

        datahandle.set( value );

        isOk = true;
    }
    else if ( plug == prePostFixMode )
    {
#if ( MAYA_API_VERSION < 400 )
// Maya v3 declares MDataHandle::set( long )
        long                    value = 0;      // default return value if outside of range.
#else
// Maya v4 declares MDataHandle::set( int )
        int                     value = 0;      // default return value if outside of range.
#endif

        int index = plug.logicalIndex();
        if ( ( index >= 0 ) && ( index < kNumAnimationModes ) )
        {
            value = attributes->pPrePostFixMode[ index ];
        }

        datahandle.set( value );                    

        isOk = true;
    }

    // Added by Bryan Ewert on 15 Nov 2002
    else if ( plug == shaderPrePostFix )
    {
        datahandle.set( attributes->m_shaderPrePostFix );
        isOk = true;
    }
    else if ( plug == shaderNameMode )
    {
        datahandle.set( attributes->m_shaderNameMode );
        isOk = true;
    }
    else if ( plug == shaderNameCustom )
    {
        datahandle.set( attributes->m_shaderNameCustom );
        isOk = true;
    }


    // RULES
    else if ( plug == localRules )     // Returns internal value for 'localRules' in class exportSettingAttr
    {
        datahandle.set( attributes->localRules );
        isOk = true;
    }
    else if ( plug == localRulesEnable )     // Returns internal value for 'localRulesEnable' in class exportSettingAttr
    {
        datahandle.set( attributes->localRulesEnable );
        isOk = true;
    }

    // Note: The Global Rules are stored in class ExporterOptions, not in class exportSettingAttr.

    // Note: WarningThreshold and ErrorThreshold are stored in the optionVars
    // "p3dRulesWarningThreshold" and "p3dRulesErrorThreshold", not in the p3dExportSettings node.

    else 
    {
        isOk = MPxNode::getInternalValue( plug, datahandle );
    }

    return isOk;
}

//********************************************************************************************
// Handle internal attributes.
// In order to impose limits on our attribute values we
// mark them internal and use the values in attributes instead.
//********************************************************************************************
bool exportSettingNode::setInternalValue( const MPlug& plug, const MDataHandle& datahandle )
{
    bool isOk = true;

    if ( plug == exportNISScenegraph ) 
    {
        attributes->exportNISScenegraph = datahandle.asBool();
        isOk = true;
    }
    else if ( plug == exportAnimations ) 
    {
        attributes->exportAnimations = datahandle.asBool();
        isOk = true;
    }
    else if ( plug == exportAnimReferencesOnly ) 
    {
        attributes->exportAnimReferencesOnly = datahandle.asBool();
        isOk = true;
    }
    else if ( plug == referenceStrip ) 
    {
        attributes->referenceStrip = datahandle.asBool();
        isOk = true;
    }
    else if ( plug == exportVisAnimations ) 
    {
        attributes->exportVisAnimations = datahandle.asBool();
        isOk = true;
    }
    else if ( plug == exportShaderAnimations ) 
    {
        attributes->exportShaderAnimations = datahandle.asBool();
        isOk = true;
    }

    else if ( plug == exportVertexAnimations ) 
    {
        attributes->exportVertexAnimations = datahandle.asBool();
        isOk = true;
    }

// Unused?
//    else if ( plug == exportDeformPolySkins ) 
//    {
//        attributes->exportDeformPolySkins = datahandle.asBool();
//        isOk = true;
//    }

// Auto-Generate Bounding Volumes - Removed on 04 Jan 2002
//    else if ( plug == autoGenBoundingVolumes ) 
//    {
//        attributes->autoGenBoundingVolumes = datahandle.asBool();
//        isOk = true;
//    }
    else if ( plug == tristripMeshes ) 
    {
        attributes->tristripMeshes = datahandle.asBool();
        isOk = true;
    }
    else if ( plug == deindexMeshes ) 
    {
        attributes->deindexMeshes = datahandle.asBool();
        isOk = true;
    }
    else if ( plug == useScenegraphNameForLightGroup ) 
    {
        attributes->useScenegraphNameForLightGroup = datahandle.asBool();
        isOk = true;
    }

// Removed by Bryan Ewert on 12 Dec 2001: Replaced by Animation Naming attribute group.
//    else if ( plug == animationString ) 
//    {
//        attributes->animationString = datahandle.asString();
//        isOk = true;
//    }
//    else if ( plug == animationNameStyle ) 
//    {
//        attributes->animationNameStyle = datahandle.asShort();
//        isOk = true;
//    }
//    else if ( plug == animationMirrorString ) 
//    {
//        attributes->animationMirrorString = datahandle.asString();
//        isOk = true;
//    }

// BEGIN DEPRECATE -> Mirrored Animation Deprecated: 08 Oct 2002

//    else if ( plug == exportMirrorAnimation ) 
//    {
//        attributes->exportMirrorAnimation = datahandle.asBool();
//        isOk = true;
//    }

// END DEPRECATE

    else if ( plug == multicontrollerName ) 
    {
        attributes->multicontrollerName = datahandle.asString();
        isOk = true;
    }
    else if ( plug == lightGroupName ) 
    {
        attributes->lightGroupName = datahandle.asString();
        isOk = true;
    }
    else if ( plug == NISScenegraphName ) 
    {
        attributes->NISScenegraphName = datahandle.asString();
        isOk = true;
    }
    else if ( plug == xTextureResolution ) 
    {
        attributes->xTextureResolution = datahandle.asShort();
        isOk = true;
    }
    else if ( plug == yTextureResolution ) 
    {
        attributes->yTextureResolution = datahandle.asShort();
        isOk = true;
    }
    else if ( plug == exportedFile )          // Sets internal value for '.exportedFile' in class exportSettingAttr
    {
        attributes->exportedFile = datahandle.asString();
        isOk = true;
    }
    else if ( plug == exporterScript )        // Sets internal value for '.exporterScript' in class exportSettingAttr
    {
        attributes->exporterScript = datahandle.asString();
        isOk = true;
    }
    else if ( plug == exporterScriptEnable )        // Sets internal value for '.exporterScriptEnable' in class exportSettingAttr
    {
        attributes->exporterScriptEnable = datahandle.asBool();
        isOk = true;
    }
    else if ( plug == viewerScript )     // Executed in quickViewerCmd::doIt()
    {
        attributes->viewerScript = datahandle.asString();
        isOk = true;
    }
    else if ( plug == viewerScriptEnable )     // Executed in quickViewerCmd::doIt()
    {
        attributes->viewerScriptEnable = datahandle.asBool();
        isOk = true;
    }
    else if ( plug == postProcessScript )          // Sets internal value for '.postProcessScript' in class exportSettingAttr
    {
        attributes->postProcessScript = datahandle.asString();
        isOk = true;
    }
    else if ( plug == postProcessScriptEnable )          // Sets internal value for '.postProcessScriptEnable' in class exportSettingAttr
    {
        attributes->postProcessScriptEnable = datahandle.asBool();
        isOk = true;
    }

    // ANIMATION NAMING

    // The following plugs are stored as _arrays_.
    // Only indices 0 (zero) through kNumAnimationModes are valid;
    // If the logical index for the plug is outside of this range 
    // then no action is taken.

    // NOTE: These attributes are _internal_ and pre-allocated to have
    //       kNumAnimationModes elements.  BE AWARE that all access 
    //       will use _non sparse_ (physical) indexing for their
    //       internal storage!
    //
    // Maya will represent these arrays using _sparse_ (logical) 
    // indexing which will _not_ properly depict which indexes
    // have been modified from their defaults!
    //
    // ** DO NOT USE Maya's sparse logical addressing to 
    // ** access these arrays!

    else if ( plug == animationNames )
    {
        assert( attributes->customAnimationNames.length() >= kNumAnimationModes );

        int index = plug.logicalIndex();
        if ( index < kNumAnimationModes )
        {
            attributes->customAnimationNames[ index ] = datahandle.asString();
        }
        isOk = true;
    }
    else if ( plug == prePostFixNames )
    {
        assert( attributes->customPrePostFixNames.length() >= kNumAnimationModes );

        int index = plug.logicalIndex();
        if ( index < kNumAnimationModes )
        {
            attributes->customPrePostFixNames[ index ] = datahandle.asString();
        }
        isOk = true;
    }
    else if ( plug == animationNameMode )
    {
        int index = plug.logicalIndex();
        if ( index < kNumAnimationModes )
        {
            attributes->pAnimationNameMode[ index ] = datahandle.asShort();
        }
        isOk = true;
    }
    else if ( plug == prePostFix )
    {
        int index = plug.logicalIndex();
        if ( index < kNumAnimationModes )
        {
            attributes->pPrePostFix[ index ] = datahandle.asShort();
        }
        isOk = true;
    }
    else if ( plug == prePostFixMode )
    {
        int index = plug.logicalIndex();
        if ( index < kNumAnimationModes )
        {
            attributes->pPrePostFixMode[ index ] = datahandle.asShort();
        }
        isOk = true;
    }

    // Added by Bryan Ewert on 15 Nov 2002
    else if ( plug == shaderPrePostFix )
    {
        attributes->m_shaderPrePostFix = datahandle.asShort();
        isOk = true;
    }
    else if ( plug == shaderNameMode )
    {
        attributes->m_shaderNameMode = datahandle.asShort();
        isOk = true;
    }
    else if ( plug == shaderNameCustom )
    {
        attributes->m_shaderNameCustom = datahandle.asString();
        isOk = true;
    }

    // RULES
    else if ( plug == localRules )          // Sets internal value for '.localRules' in class exportSettingAttr
    {
        attributes->localRules = datahandle.asString();
        isOk = true;
    }
    else if ( plug == localRulesEnable )          // Sets internal value for '.localRulesEnable' in class exportSettingAttr
    {
        attributes->localRulesEnable = datahandle.asBool();
        isOk = true;
    }

    // Note: The Global Rules are stored in class ExporterOptions, not in class exportSettingAttr.

    // Note: WarningThreshold and ErrorThreshold are stored in the optionVars
    // "p3dRulesWarningThreshold" and "p3dRulesErrorThreshold", not in the p3dExportSettings node.

    else {
        isOk = MPxNode::setInternalValue( plug, datahandle );
    }

    return isOk;
}


//===========================================================================
// exportSettingNode::initialize()
//===========================================================================
// Description: Creates all of the attributes on the exportSettingNode.
//              
// Constraints: Most (if not all) attributes are declared as Internal!
//
// Parameters:  (void)
//
// Return:      (MStatus): The usual...
//
//===========================================================================
MStatus exportSettingNode::initialize()
{
    MStatus                     status; 
    MFnTypedAttribute           strAttr;
    MFnEnumAttribute            enumAttr;
    MFnNumericAttribute         numAttr;
    MFnUnitAttribute            uAttr;
    MFnCompoundAttribute        cAttr;
    MFnMessageAttribute         optionsParentAttr;

    // Default empty string to assign to string attributes
    MFnStringData                         fnStringData;
    MObject                               defaultString;
    defaultString = fnStringData.create( "" );

    exporterSettingParent = optionsParentAttr.create("exporterSettingParent", "esp", &status);
    CHECKRESULT_FAILURE(status, "Error creating exporterSettingParent attribute" );
        optionsParentAttr.setHidden( true );
    status = addAttribute( exporterSettingParent );
    CHECKRESULT_FAILURE(status, "Error adding exporterSettingParent attribute" );
     
    MAKE_NUMERIC_ATTR( exportNISScenegraph, "exportNISScenegraph", "s01", MFnNumericData::kBoolean, false, false, false );
    MAKE_NUMERIC_ATTR( exportAnimations, "exportAnimations", "s02", MFnNumericData::kBoolean, true, false, false );
    MAKE_NUMERIC_ATTR( exportAnimReferencesOnly, "exportAnimReferencesOnly", "s03", MFnNumericData::kBoolean, false, false, false );
    MAKE_NUMERIC_ATTR( referenceStrip, "referenceStrip", "s04", MFnNumericData::kBoolean, false, false, false );
    MAKE_NUMERIC_ATTR( exportVisAnimations, "exportVisAnimations", "s05", MFnNumericData::kBoolean, true, false, false );
    MAKE_NUMERIC_ATTR( exportShaderAnimations, "exportShaderAnimations", "s23", MFnNumericData::kBoolean, false, false, false );

    MAKE_NUMERIC_ATTR( exportVertexAnimations, "exportVertexOffsetAnims", "s06", MFnNumericData::kBoolean, true, false, false );

    MAKE_NUMERIC_ATTR( tristripMeshes, "tristripMeshes", "s09", MFnNumericData::kBoolean, false, false, false );
    MAKE_NUMERIC_ATTR( deindexMeshes, "deindexMeshes", "s10", MFnNumericData::kBoolean, false, false, false );

    multicontrollerName = strAttr.create( "multicontrollerName", "s15", MFnData::kString, defaultString, &status);
    CHECKRESULT_FAILURE(status, "Error creating multicontrollerName attribute.");
    strAttr.setInternal( true );
    strAttr.setHidden( false );
    strAttr.setKeyable( false );
    strAttr.setStorable( true );
    status = addAttribute (multicontrollerName);
    CHECKRESULT_FAILURE(status, "Error adding multicontrollerName attribute.");

    lightGroupName = strAttr.create( "lightGroupName", "s16", MFnData::kString, defaultString, &status);
    CHECKRESULT_FAILURE(status, "Error creating lightGroupName attribute.");
    strAttr.setInternal( true );
    strAttr.setHidden( false );
    strAttr.setKeyable( false );
    strAttr.setStorable( true );
    status = addAttribute (lightGroupName);
    CHECKRESULT_FAILURE(status, "Error adding lightGroupName attribute.");

    NISScenegraphName = strAttr.create( "NISScenegraphName", "s17", MFnData::kString, defaultString, &status);
    CHECKRESULT_FAILURE(status, "Error creating NISScenegraphName attribute.");
    strAttr.setInternal( true );
    strAttr.setHidden( false );
    strAttr.setKeyable( false );
    strAttr.setStorable( true );
    status = addAttribute (NISScenegraphName);
    CHECKRESULT_FAILURE(status, "Error adding NISScenegraphName attribute.");

    MAKE_NUMERIC_ATTR( useScenegraphNameForLightGroup, "useScenegraphNameForLightGroup", "s22", MFnNumericData::kBoolean, false, false, true );

    xTextureResolution = enumAttr.create( "xTextureResolution", "s18", 3, &status);
    CHECKRESULT_FAILURE( status, "Error creating xTextureResolution attribute" );
        for (int x = 0; x < 8; x++)
        {
            enumAttr.addField( powersOf2s[x], x );
        }
    enumAttr.setInternal( true );
    enumAttr.setHidden( false );
    enumAttr.setKeyable( false );
    status = addAttribute( xTextureResolution );
    CHECKRESULT_FAILURE( status, "Error adding xTextureResolution attribute." );

    yTextureResolution = enumAttr.create( "yTextureResolution", "s19", 3, &status);
    CHECKRESULT_FAILURE( status, "Error creating yTextureResolution attribute" );
        for (int y = 0; y < 8; y++)
        {
            enumAttr.addField( powersOf2s[y], y );
        }
    enumAttr.setInternal( true );
    enumAttr.setHidden( false );
    enumAttr.setKeyable( false );
    status = addAttribute( yTextureResolution );
    CHECKRESULT_FAILURE( status, "Error adding yTextureResolution attribute." );

    exportedFile = strAttr.create( "exportedFile", "ex", MFnData::kString, defaultString, &status);
    CHECKRESULT_FAILURE(status, "Error creating exportedFile attribute.");
    strAttr.setInternal( true );
    strAttr.setHidden( false );
    strAttr.setKeyable( false );
    strAttr.setStorable( true );
    status = addAttribute (exportedFile);
    CHECKRESULT_FAILURE(status, "Error adding exportedFile attribute.");

    exporterScript = strAttr.create( "exporterScript", "es", MFnData::kString, defaultString, &status);
    CHECKRESULT_FAILURE(status, "Error creating exporterScript attribute.");
    strAttr.setInternal( true );
    strAttr.setHidden( false );
    strAttr.setKeyable( false );
    strAttr.setStorable( true );
    status = addAttribute (exporterScript);
    CHECKRESULT_FAILURE(status, "Error adding exporterScript attribute.");

    MAKE_NUMERIC_ATTR( exporterScriptEnable, "exporterScriptEnable", "ese", MFnNumericData::kBoolean, true, false, false );

    viewerScript = strAttr.create( "viewerScript", "vs", MFnData::kString, defaultString, &status);
    CHECKRESULT_FAILURE(status, "Error creating viewerScript attribute.");
    strAttr.setInternal( true );
    strAttr.setHidden( false );
    strAttr.setKeyable( false );
    strAttr.setStorable( true );
    status = addAttribute (viewerScript);
    CHECKRESULT_FAILURE(status, "Error adding viewerScript attribute.");

    MAKE_NUMERIC_ATTR( viewerScriptEnable, "viewerScriptEnable", "vse", MFnNumericData::kBoolean, true, false, false );

    postProcessScript = strAttr.create( "postProcessScript", "post", MFnData::kString, defaultString, &status);
    CHECKRESULT_FAILURE(status, "Error creating postProcessScript attribute.");
    strAttr.setInternal( true );
    strAttr.setHidden( false );
    strAttr.setKeyable( false );
    strAttr.setStorable( true );
    status = addAttribute (postProcessScript);
    CHECKRESULT_FAILURE(status, "Error adding postProcessScript attribute.");

    MAKE_NUMERIC_ATTR( postProcessScriptEnable, "postProcessScriptEnable", "ppse", MFnNumericData::kBoolean, true, false, false );

// ---  Animation Naming  --  12 Dec 2001  ----------------------

    animationNameMode = enumAttr.create( "animationNameMode", "anmo", 0, &status );
    CHECKRESULT_FAILURE( status, "Error creating animationNameMode attribute" );
        enumAttr.addField( "Original", 0 );
        enumAttr.addField( "Filename", 1 );
        enumAttr.addField( "Custom", 2 );
    // 16 Apr 2002 - v16.15 - Well, this seems to have spontaneously broken.
    // Maya REFUSES to save any values for this attribute.. try without setting internal.. and cross fingers!
//    enumAttr.setInternal( true );
    enumAttr.setArray( true );
    enumAttr.setIndexMatters( true );
    enumAttr.setHidden( true );
    enumAttr.setKeyable( false );
    status = addAttribute( animationNameMode );
    CHECKRESULT_FAILURE(status, "Error adding animationNameMode attribute.");

    animationNames = strAttr.create( "animationNames", "anna", MFnData::kString, defaultString, &status );
    CHECKRESULT_FAILURE( status, "Error creating animationNames attribute" );
    // 16 Apr 2002 - v16.15 - Well, this seems to have spontaneously broken.
    // Maya REFUSES to save any values for this attribute.. try without setting internal.. and cross fingers!
//    strAttr.setInternal( true );
    strAttr.setArray( true );
    enumAttr.setIndexMatters( true );
    strAttr.setHidden( false );
    strAttr.setKeyable( false );
    strAttr.setStorable( true );
    status = addAttribute( animationNames );
    CHECKRESULT_FAILURE(status, "Error adding animationNames attribute.");

    prePostFixNames = strAttr.create( "prePostFixNames", "ppfn", MFnData::kString, defaultString, &status );
    CHECKRESULT_FAILURE( status, "Error creating prePostFixNames attribute" );
    // 16 Apr 2002 - v16.15 - Well, this seems to have spontaneously broken.
    // Maya REFUSES to save any values for this attribute.. try without setting internal.. and cross fingers!
//    strAttr.setInternal( true );
    strAttr.setArray( true );
    enumAttr.setIndexMatters( true );
    strAttr.setHidden( false );
    strAttr.setKeyable( false );
    strAttr.setStorable( true );
    status = addAttribute( prePostFixNames );
    CHECKRESULT_FAILURE(status, "Error adding prePostFixNames attribute.");

    prePostFix = enumAttr.create( "prePostFix", "ppf", 0, &status );
    CHECKRESULT_FAILURE( status, "Error creating prePostFix attribute" );
        enumAttr.addField( "Prefix", 0 );
        enumAttr.addField( "Postfix", 1 );
    // 16 Apr 2002 - v16.15 - Well, this seems to have spontaneously broken.
    // Maya REFUSES to save any values for this attribute.. try without setting internal.. and cross fingers!
//    enumAttr.setInternal( true );
    enumAttr.setArray( true );
    enumAttr.setIndexMatters( true );
    enumAttr.setHidden( true );
    enumAttr.setKeyable( false );
    status = addAttribute( prePostFix );
    CHECKRESULT_FAILURE(status, "Error adding prePostFix attribute.");

    prePostFixMode = enumAttr.create( "prePostFixMode", "ppfm", 0, &status );
    CHECKRESULT_FAILURE( status, "Error creating prePostFixMode attribute" );
        enumAttr.addField( "Type", 0 );
        enumAttr.addField( "Custom", 1 );
    // 16 Apr 2002 - v16.15 - Well, this seems to have spontaneously broken.
    // Maya REFUSES to save any values for this attribute.. try without setting internal.. and cross fingers!
//    enumAttr.setInternal( true );
    enumAttr.setArray( true );
    enumAttr.setIndexMatters( true );
    enumAttr.setHidden( true );
    enumAttr.setKeyable( false );
    status = addAttribute( prePostFixMode );
    CHECKRESULT_FAILURE(status, "Error adding prePostFixMode attribute.");

// ---  Shader Naming - 15 Nov 2002  ------------------------

    shaderPrePostFix = enumAttr.create( "shaderPrePostFix", "sppf", kShaderNameNone, &status );
    CHECKRESULT_FAILURE( status, "Error creating shaderPrePostFix attribute" );
        enumAttr.addField( "None", kShaderNameNone );
        enumAttr.addField( "Prefix", kShaderNamePrefix );
        enumAttr.addField( "Postfix", kShaderNamePostfix );
    enumAttr.setInternal( true );
    enumAttr.setHidden( true );
    enumAttr.setKeyable( false );
    status = addAttribute( shaderPrePostFix );
    CHECKRESULT_FAILURE(status, "Error adding animationNameMode attribute.");

    shaderNameMode = enumAttr.create( "shaderNameMode", "snmm", kShaderNameModeFilename, &status );
    CHECKRESULT_FAILURE( status, "Error creating shaderNameMode attribute" );
        enumAttr.addField( "Filename", kShaderNameModeFilename);
        enumAttr.addField( "Custom", kShaderNameModeCustom );
    enumAttr.setInternal( true );
    enumAttr.setHidden( true );
    enumAttr.setKeyable( false );
    status = addAttribute( shaderNameMode );
    CHECKRESULT_FAILURE(status, "Error adding shaderNameMode attribute.");

    shaderNameCustom = strAttr.create( "shaderNameCustom", "snmc", MFnData::kString, defaultString, &status);
    CHECKRESULT_FAILURE(status, "Error creating shaderNameCustom attribute.");
    strAttr.setInternal( true );
    strAttr.setHidden( false );
    strAttr.setKeyable( false );
    strAttr.setStorable( true );
    status = addAttribute ( shaderNameCustom );
    CHECKRESULT_FAILURE(status, "Error adding shaderNameCustom attribute.");

// ---  Rules  ------------------------

    localRules = strAttr.create( "localRules", "rule", MFnData::kString, defaultString, &status);
    CHECKRESULT_FAILURE(status, "Error creating localRules attribute.");
    strAttr.setInternal( true );
    strAttr.setHidden( false );
    strAttr.setKeyable( false );
    strAttr.setStorable( true );
    status = addAttribute (localRules);
    CHECKRESULT_FAILURE(status, "Error adding localRules attribute.");
    MAKE_NUMERIC_ATTR( localRulesEnable, "localRulesEnable", "s20", MFnNumericData::kBoolean, false, false, false );

    // Note: Global Rules are stored in the optionVar "p3dGlobalRules", not in the p3dExportSettings node.

    // Note: WarningThreshold and ErrorThreshold are stored in the optionVars
    // "p3dRulesWarningThreshold" and "p3dRulesErrorThreshold", not in the p3dExportSettings node.

    animRangeName = strAttr.create( "animRangeName", "arn", MFnData::kString, defaultString, &status );
    CHECKRESULT_FAILURE(status, "Error creating animRangeName attribute.");
    strAttr.setHidden( false );
    strAttr.setKeyable( false );
    strAttr.setStorable( true );
    status = addAttribute( animRangeName );
    CHECKRESULT_FAILURE(status, "Error adding animRangeName attribute.");

    animRangeTime = uAttr.create( "animRangeTime", "art", MFnUnitAttribute::kTime, 0.0, &status );
    CHECKRESULT_FAILURE(status, "Error creating animRangeTime attribute.");
    strAttr.setHidden( false );
    strAttr.setKeyable( false );
    strAttr.setStorable( true );
    status = addAttribute( animRangeTime );
    CHECKRESULT_FAILURE(status, "Error adding animRangeTime attribute.");


    animRangeNameTime = cAttr.create( "animRangeNameTime", "arnt", &status );
    CHECKRESULT_FAILURE(status, "Error creating animRangeNameTime attribute.");
    cAttr.addChild( animRangeName );
    cAttr.addChild( animRangeTime );
    cAttr.setArray( true );
    cAttr.setHidden( false );
    cAttr.setKeyable( false );
    cAttr.setStorable( true );
    status = addAttribute( animRangeNameTime );
    CHECKRESULT_FAILURE(status, "Error adding animRangeNameTime attribute.");
    MAKE_NUMERIC_ATTR( animRangeDefault, "animRangeDefault", "s21", MFnNumericData::kBoolean, false, false, false );

// --- ** START Compatibility: NOT STORED *** 12 Dec 2001

    animationString = strAttr.create( "animationString", "s11", MFnData::kString, defaultString, &status);
    CHECKRESULT_FAILURE(status, "Error creating animationString attribute.");
    strAttr.setInternal( true );
    strAttr.setHidden( false );
    strAttr.setKeyable( false );
    strAttr.setStorable( false );
    status = addAttribute (animationString);
    CHECKRESULT_FAILURE(status, "Error adding animationString attribute.");

    animationNameStyle = enumAttr.create( "animationNameStyle", "s12", 1, &status);
    CHECKRESULT_FAILURE( status, "Error creating animationNameStyle attribute" );
        enumAttr.addField( "Prefix", 0 );
        enumAttr.addField( "Unchanged", 1 );
        enumAttr.addField( "Postfix", 2 );
        enumAttr.addField( "Replace", 3 );
        enumAttr.addField( "Filename Replace", 4 );
        enumAttr.addField( "Filename Prefix", 5 );
    enumAttr.setInternal( true );
    enumAttr.setHidden( false );
    enumAttr.setKeyable( false );
    enumAttr.setStorable( false );
    status = addAttribute( animationNameStyle );
    CHECKRESULT_FAILURE( status, "Error adding animationNameStyle attribute." );

    animationMirrorString = strAttr.create( "animationMirrorString", "s13", MFnData::kString, defaultString, &status);
    CHECKRESULT_FAILURE(status, "Error creating animationMirrorString attribute.");
    strAttr.setInternal( true );
    strAttr.setHidden( false );
    strAttr.setKeyable( false );
    strAttr.setStorable( false );
    status = addAttribute (animationMirrorString);
    CHECKRESULT_FAILURE(status, "Error adding animationMirrorString attribute.");

    // exportDeformPolySkins - Deprecated 20 Feb 2001 - Obsolete (not stored) 26 Feb 2002
    exportDeformPolySkins = numAttr.create( "exportDeformPolySkins", "s07", MFnNumericData::kBoolean, false );
    numAttr.setStorable( false );
    addAttribute( exportDeformPolySkins );

    // Auto-Generate Bounding Volumes - Removed on 04 Jan 2002
    autoGenBoundingVolumes = numAttr.create( "autoGenBoundingVolumes", "s08", MFnNumericData::kBoolean, false );
    numAttr.setStorable( false );
    addAttribute( autoGenBoundingVolumes );

    // Export Mirror Animation - Removed 08 Oct 2002
    exportMirrorAnimation = numAttr.create( "exportMirrorAnimation", "s14", MFnNumericData::kBoolean, false );
    numAttr.setStorable( false );
    addAttribute( exportMirrorAnimation );


// --- ** END Compatibility: NOT STORED ***
 
     return MS::kSuccess;
}  
