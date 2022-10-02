/*===========================================================================
    exporteroptions.hpp
    created: Jan 27, 2000
    Greg Mayer

    Copyright (c) 2000 Radical Entertainment, Inc.
    All rights reserved.
===========================================================================*/

// Recompilation protection flag.
#ifndef _EXPORTEROPTIONS_HPP
#define _EXPORTEROPTIONS_HPP

//===========================================================================
// Nested Includes
//===========================================================================

#include <maya/MString.h>
#include <maya/MStringArray.h>
#include <maya/MObject.h>
#include <maya/MPxFileTranslator.h>
#include <maya/MPxCommand.h>
#include <maya/MPxSurfaceShape.h>
#include <maya/MPxSurfaceShapeUI.h>
#include <maya/MPxNode.h>

#include <listarray/listarray.hpp>

#include "tlInventory.hpp"
#include "atenum.hpp"

//===========================================================================
// Forward References
//===========================================================================

extern const char* powersOf2s[8];
extern const int   powersOf2i[8];

// Removed by Bryan Ewert on 12 Dec 2001: Now handled by BuildAnimationName().
// enum NameGenerateStyle { Prefix, Unchanged, Postfix, Replace, FilenameReplace, FilenamePrefix };

//===========================================================================
// Constants, Typedefs, and Macro Definitions (needed by external clients)
//===========================================================================

// Identifies the different Animation Types for the
// Animation Naming system.  This order should match the
// items in the MEL UI optionMenu 
// ( $gP3dExporterOptionAnimationNames in "p3dexpoptsgui.mel" )
enum ExporterAnimationModes
{
    kTextureAnimationMode = 0,
    kCameraAnimationMode,
    kLightAnimationMode,
    kPoseAnimationMode,

// BEGIN DEPRECATE -> Mirrored Animation Deprecated: 08 Oct 2002
// KEEP THIS so prior art is compatible
    kPoseMirrorAnimationMode,
// END DEPRECATE

    kPoseVisibilityAnimationMode,
    kScenegraphAnimationMode,
    kScenegraphVisibilityAnimationMode,
    kEventAnimationMode,
    kBillboardAnimationMode,
    kExpressionAnimationMode,
    kEffectAnimationMode,
    kAnimatedObjectAnimationMode,
    kVertexAnimationMode,
    kShaderAnimationMode,

    // The total number of Animation Types,
    // used for array allocation.
    kNumAnimationModes          
};

// Identifies the modes available for configuration
// of the Base Name used by the Animation Naming system.
enum ExporterAnimationNameModes
{
    kAnimationNameOriginal = 0,
    kAnimationNameFilename,
    kAnimationNameCustom
};

// Identifies whether the Animation Naming system will
// prefix or postfix the additional string to the Base Name.
enum ExporterAnimationNamePrePostfix
{
    kAnimationNamePrefix = 0,
    kAnimationNamePostfix
};

// Identifies whether the Animation Naming system will
// use the default type for the pre/post-fix, or
// the user's custom string.
enum ExporterAnimationNamePrePostfixModes
{
    kAnimationNamePrePostfixType = 0,
    kAnimationNamePrePostfixCustom
};

// Identifies whether the Shader Naming system will
// prefix or postfix the additional string to the Base Name.
enum ExporterShaderNamePrePostfix
{
    kShaderNameNone = 0,
    kShaderNamePrefix,
    kShaderNamePostfix
};

// Identifies whether the Shader Naming system will
// use the filename for the pre/post-fix, or
// the user's custom string.
enum ExporterShaderNameModes
{
    kShaderNameModeFilename = 0,
    kShaderNameModeCustom
};

// The default strings used for the pre-/post-fix
// used by the Animation Naming system.
static unsigned int ExporterAnimationDefaultNameIDs[kNumAnimationModes] = 
{
    Pure3DAnimationTypes::TEXTURE_TEX,
    Pure3DAnimationTypes::CAMERA_CAM,
    Pure3DAnimationTypes::LIGHT_LITE,
    Pure3DAnimationTypes::POSE_TRANSFORM_PTRN,

// BEGIN DEPRECATE -> Mirrored Animation Deprecated: 08 Oct 2002
// KEEP THIS so prior art is compatible
    Pure3DAnimationTypes::POSE_TRANSFORM_PTRN,      // Mirror
// END DEPRECATE

    Pure3DAnimationTypes::POSE_VISIBILITY_PVIS,
    Pure3DAnimationTypes::SCENEGRAPH_TRANSFORM_STRN,
    Pure3DAnimationTypes::SCENEGRAPH_VISIBILITY_SVIS,
    Pure3DAnimationTypes::EVENT_EVT,
    Pure3DAnimationTypes::BILLBOARD_QUAD_GROUP_BQG,
    Pure3DAnimationTypes::EXPRESSION_EXP,
    Pure3DAnimationTypes::EFFECT_EFX,
    Pure3DAnimationTypes::ANIMATED_OBJECT_AOBJ,
    Pure3DAnimationTypes::VERTEX_VRTX,
    Pure3DAnimationTypes::SHADER_SHAD
};

//===========================================================================
// Interface Definitions
//===========================================================================

class ExporterOptions
{

 public:
    ExporterOptions();
  ~ExporterOptions();

    static bool                 Initialize(const MString &options);
    static bool                 InitializeAnimationNames( void );
    static bool                 InitializeShaderSettings( void );

    static void                 Clear( void );
    static void                 SetDefaults( void );

    static bool                 BuildAnimationName( int kAnimationMode, const char *basename, char *outname );
    static bool                 BuildShaderName( const char *basename, char *outname );

// Removed by Bryan Ewert on 12 Dec 2001 - No longer needed with enhancements to BuildAnimationName().
//   static void  BuildMirroredAnimationName(const char *basename, char *outname);

    static char*                BuildNodeName(const MString &mayaname);
    static char*                BuildInstancedNodeName(const MString &mayaname, int instanceNumber);

    static bool                 ExportSelection(void)      { return mExportSelection; }
    static void                 SetExportSelection(bool s) { mExportSelection = s; }
    static const char*          Filename(void)      { return mFilename; }
    static void                 SetFilename(const char *fname);

    // Added by Bryan Ewert on 16 Nov 2001
    static const char*          PostProcessScript(void)         { return mPostProcessScript; }
    static void                 SetPostProcessScript(const char* postScript);
    static bool                 PostProcessScriptEnable( void ) { return mPostProcessScriptEnable; }

     // Added by Bryan Ewert on 30 Nov 2001
    static const char*          LocalRules(void)            { return mLocalRules; }
    static void                 SetLocalRules(const char* localRules);
    static const char*          GlobalRules(void)           { return mGlobalRules; }
    static void                 SetGlobalRules(const char* globalRules);
    // Added by Bryan Ewert on 19 Apr 2002
    static int                  RulesWarningThreshold( void );
    static void                 SetRulesWarningThreshold( int threshold );
    static int                  RulesErrorThreshold( void );
    static void                 SetRulesErrorThreshold( int threshold );

    static bool                 ExportNISScenegraph(void)          { return mExportNISScenegraph; }
    static void                 SetExportNISScengraph(bool s)      { mExportNISScenegraph = s; }

    static bool                 ExportAnimations(void)             { return mExportAnimations; }
    static bool                 ExportAnimReferencesOnly(void)     { return mExportAnimReferencesOnly; }
    static bool                 StripReferencePrefix(void)         { return mReferenceStrip; }
    static bool                 ExportVisibilityAnimations(void)   { return mExportVisibilityAnimations; }
    static bool                 ExportShaderAnimations(void)       { return mExportShaderAnimations; }

    static bool                 ExportVertexAnimations(void)         { return mExportVertexAnimations; }

    // Auto-Generate Bounding Volumes - Removed on 04 Jan 2002
//    static bool AutoGenBoundingVolumes(void)       { return mAutoGenBoundingVolumes; }
    static bool                 TristripMeshes(void)                { return mTristripMeshes; }
    static bool                 DeindexMeshes(void)                 { return mDeindexMeshes; }

// BEGIN DEPRECATE -> Mirrored Animation Deprecated: 08 Oct 2002

//    static bool                 ExportMirroredAnim(void)            { return mExportMirroredAnim; }

// END DEPRECATE

    static bool                 LocalRulesEnable(void)              { return mLocalRulesEnable; }
    static bool                 GlobalRulesEnable(void)             { return mGlobalRulesEnable; }
    static bool                 UseDefaultAnimRange(void)           { return mUseDefaultAnimRange; }
    static bool                 UseScenegraphNameForLightGroup(void)    { return mUseScenegraphNameForLightGroup; }
    
    static const char*          MulticontrollerName(void)    { return mMulticontrollerName; }
    static const char*          LightGroupName(void)         { return mLightgroupName; }
    static const char*          NISScenegraphName(void)      { return mNISScenegraphName; }

    static int                  ProceduralTextureResolutionX(void)   { return mProceduralTextureResolutionX; }
    static int                  ProceduralTextureResolutionY(void)   { return mProceduralTextureResolutionY; }
    static const char*          ExportType(void)             { return mExportType; }

    static short                Verbose(void)                       { return mVerbose; }
    static bool                 ProgressInWindow(void)              { return mProgressInWindow; }
    static bool                 UsePeakDetection(void)              { return mUsePeakDetection; }

    //needs to be removed once vertex offset animation export is fixed
//    static bool ExportDeformPolySkins(void)        { return false; }      // unused?

 private:

    static bool                 GetCurrentExporterSettingNode( MObject& settingNode );

    static bool                 mExportNISScenegraph;
    static bool                 mExportAnimations;
    static bool                 mExportAnimReferencesOnly;
    static bool                 mReferenceStrip;
    static bool                 mExportVisibilityAnimations;
    static bool                 mExportShaderAnimations;

    static bool                 mExportVertexAnimations;

    // Auto-Generate Bounding Volumes - Removed on 04 Jan 2002
//    static bool mAutoGenBoundingVolumes;
    static bool                 mTristripMeshes;
    static bool                 mDeindexMeshes;

// BEGIN DEPRECATE -> Mirrored Animation Deprecated: 08 Oct 2002

//    static bool                 mExportMirroredAnim;

// END DEPRECATE

    static bool                 mLocalRulesEnable;
    static bool                 mGlobalRulesEnable;

    static bool                 mUseDefaultAnimRange;
    static bool                 mUseScenegraphNameForLightGroup;

    static char*                mMulticontrollerName;
    static char*                mLightgroupName;
    static char*                mNISScenegraphName;

    static int                  mProceduralTextureResolutionX;
    static int                  mProceduralTextureResolutionY;

    static int                  mAnimationNameCounter;

    static char*                mFilename;
    static char*                mExportType;

    // Added by Bryan Ewert on 12 Dec 2001
    static  short*              mpAnimationNameMode;        // Values from enumeration ExporterAnimationNameModes
    static  MStringArray        mCustomAnimationNames;      // Custom names used for Animation.
    static  MStringArray        mCustomPrePostFixNames;     // Custom strings used for pre- or post-fix.
    static  short*              mpPrePostFix;               // Values from enumeration ExporterAnimationNamePrePostfix
    static  short*              mpPrePostFixMode;           // Values from enumeration ExporterAnimationNamePrePostfixModes

    // Added by Bryan Ewert on 15 Nov 2002
    static  short               mShaderPrePostFix;          // 0 = None; 1 = Prefix; 2 = Postfix
    static  short               mShaderNameMode;            // 0 = Filename; 1 = Custom
    static  MString             mShaderNameCustom;          // The custom shader name string

    // Added by Bryan Ewert on 16 Nov 2001
    static char*                mPostProcessScript;
    static bool                 mPostProcessScriptEnable;

    // Added by Bryan Ewert on 30 Nov 2001
    static char*                mLocalRules;
    static char*                mGlobalRules;
    // Added by Bryan Ewert on 19 Apr 2002
    static int                  mRulesWarningThreshold;
    static int                  mRulesErrorThreshold;

    static short                mVerbose;                       // Implemented as optionVar, but must be cached for Export.
    static bool                 mProgressInWindow;              // Implemented as optionVar, but must be cached for Export.
    static bool                 mUsePeakDetection;              // Implemented as optionVar, but must be cached for Export.

    static bool                 mExportSelection;
};

/////////////////////////////////////////////////////////////////////
//
// attribute class - defines the attributes of a shape node
//
class exporterOptionsAttr 
{
public:
    MString currentSetting;
};
 
/////////////////////////////////////////////////////////////////////
//
// Shape class - defines the non-UI part of a shape node
//
class exporterOptionsShape : public MPxSurfaceShape
{
public:
    exporterOptionsShape();
    virtual ~exporterOptionsShape(); 

    virtual void            postConstructor();
    virtual bool            getInternalValue( const MPlug&, MDataHandle& );
    virtual bool            setInternalValue( const MPlug&, const MDataHandle& );
    static void*            creator();
    static MStatus          initialize();
//    exporterOptionsAttr*    getAttributes();

    static MTypeId id;

private:
    exporterOptionsAttr*   attributes;

    // Attributes
    static MObject backgroundColour;
    static MObject backgroundRed;
    static MObject backgroundGreen;
    static MObject backgroundBlue;
    static MObject currentSetting;
    static MObject exporterSettings;
};

/////////////////////////////////////////////////////////////////////
//
// UI class - defines the UI part of a shape node
//
class exporterOptionsShapeUI : public MPxSurfaceShapeUI
{
public:
    exporterOptionsShapeUI();
    virtual ~exporterOptionsShapeUI(); 

    static  void * creator();
};

///////////////////////////////////////////////////////////////////////
//
// attribute class - defines the attributes of a shape node
//
class exportSettingAttr 
{
public:
    exportSettingAttr();
    ~exportSettingAttr();

public:
    bool                        exportNISScenegraph;
    bool                        exportAnimations;
    bool                        exportAnimReferencesOnly;
    bool                        referenceStrip;
    bool                        exportVisAnimations;
    bool                        exportShaderAnimations;

    bool                        exportVertexAnimations;

    bool                        tristripMeshes;
    bool                        deindexMeshes;

    bool                        useScenegraphNameForLightGroup;
    MString                     NISScenegraphName;
    MString                     lightGroupName;
    MString                     multicontrollerName;

// BEGIN DEPRECATE -> Mirrored Animation Deprecated: 08 Oct 2002

//    bool                        exportMirrorAnimation;

// END DEPRECATE

    short                       xTextureResolution;
    short                       yTextureResolution;

     // Note: Used by quickExporter.cpp via ExporterOptions::Filename()
    MString                     exportedFile;               // Storage for the exported filename in class exportSettingAttr.

    // Note: 'exporterScript' is not used directly by the Pure3D Exporter plug-in.
    // It is called from 'p3dMayaExporterTools.mel' -> P3DExecuteExporterScript()
    MString                     exporterScript;                 // Storage for the script's filename in class exportSettingAttr.
    bool                        exporterScriptEnable;           // Enable the Exporter Script

    // Note: 'viewerScript' is not used directly by the Pure3D Exporter plug-in.
    // It is called from 'p3dMayaExporterTools.mel' -> P3DViewSelection() & P3DViewScene()
    // via the Quick Viewer -> quickViewerCmd::doIt()
    MString                     viewerScript;
    bool                        viewerScriptEnable;             // Enable the Viewer Script

    MString                     postProcessScript;              // *.exe or *.bat which will operate on the P3D file immediately after export.
    bool                        postProcessScriptEnable;        // Enable the Post Process Script

    short*                      pAnimationNameMode;             // 0 = Original; 1 = Filename; 2 = Custom.
    MStringArray                customAnimationNames;           // Custom names used for Animation.
    MStringArray                customPrePostFixNames;          // Custom strings used for pre- or post-fix.
    short*                      pPrePostFix;                    // 0 = prefix; 1 = postfix;
    short*                      pPrePostFixMode;                // 0 = Type; 1 = Filename; 2 = Custom.
    
    // Added by Bryan Ewert on 15 Nov 2002
    short                       m_shaderPrePostFix;             // 0 = None; 1 = Prefix; 2 = Postfix.
    short                       m_shaderNameMode;               // 0 = Filename; 1 = Custom.
    MString                     m_shaderNameCustom;             // Custom name used for Shaders.

    // Local and Global Rules files
    MString                     localRules;
    bool                        localRulesEnable;

    // Note: Global Rules are stored in the optionVar "p3dGlobalRules", not in the p3dExportSettings node.

    // Note: WarningThreshold and ErrorThreshold are stored in the optionVars
    // "p3dRulesWarningThreshold" and "p3dRulesErrorThreshold", not in the p3dExportSettings node.

/** BEGIN OBSOLETE **

//    bool     exportDeformPolySkins;       // Unused??
    // Auto-Generate Bounding Volumes - Removed on 04 Jan 2002
//    bool     autoGenBoundingVolumes;

** END OBSOLETE **/

};

///////////////////////////////////////////////////////////////////////
//
// shape class - defines the non-UI part of a shape node
//
class exportSettingNode : public MPxNode
{
public:
    exportSettingNode();
    virtual              ~exportSettingNode(); 

    virtual bool          getInternalValue( const MPlug&, MDataHandle& );
    virtual bool          setInternalValue( const MPlug&, const MDataHandle& );
    static   void*        creator();
    static   MStatus      initialize();
//    exportSettingAttr*    getAttributes();

    static MTypeId id; 

private:
    // These are assimilated via 'p3dexportoptsgui.mel' -> P3DGetExportOptions()
    exportSettingAttr*    attributes;

    // Attributes
    static MObject              exportNISScenegraph;
    static MObject              exportAnimations;
    static MObject              exportAnimReferencesOnly;
    static MObject              referenceStrip;
    static MObject              exportVisAnimations;
    static MObject              exportShaderAnimations;

    static MObject              exportVertexAnimations;

    static MObject              tristripMeshes;
    static MObject              deindexMeshes;

    // Added by Bryan Ewert on 12 Apr 2002
    static MObject              useScenegraphNameForLightGroup;

    static MObject multicontrollerName;
    static MObject lightGroupName;
    static MObject NISScenegraphName;
    static MObject xTextureResolution;
    static MObject yTextureResolution;

    static MObject exportedFile;                // The '.exportedFile' attribute on the p3dExportSetting node.
    static MObject exporterScript;              // The '.exporterScript' attribute on the p3dExportSetting node.
    static MObject exporterScriptEnable;        // .exporterScriptEnable
    static MObject viewerScript;                // '.viewerScript' attribute
    static MObject viewerScriptEnable;          // '.viewerScriptEnable' attribute
    static MObject postProcessScript;           // The '.postProcessScript' attribute on the p3dExportSetting node.
    static MObject postProcessScriptEnable;     // .postProcessScriptEnable

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

    static MObject              animationNameMode;       // The '.animationNameMode[]' array attribute on the p3dExportSetting node.
    static MObject              animationNames;          // The '.animationName[]' array attribute on the p3dExportSetting node.
    static MObject              prePostFixNames;         // The '.prePostFixName[]' array attribute on the p3dExportSetting node.
    static MObject              prePostFix;              // The '.prePostFix[]' array attribute on the p3dExportSetting node.
    static MObject              prePostFixMode;          // The '.prePostFixMode[]' array attribute on the p3dExportSetting node.

    // Added by Bryan Ewert on 15 Nov 2002
    static MObject              shaderPrePostFix;        // The '.shaderPrePostFix' attribute on the p3dExportSetting node.
    static MObject              shaderNameMode;          // The '.shaderNameMode' attribute on the p3dExportSetting node.
    static MObject              shaderNameCustom;        // The '.shaderNameCustom' attribute on the p3dExportSetting node.

    static MObject              localRules;              // The '.localRules' attribute on the p3dExportSetting node.
    static MObject              localRulesEnable;        // The '.localRulesEnable' attribute on the p3dExportSetting node.
    // Note: Global Rules are stored in the optionVar "p3dGlobalRules", not in the p3dExportSettings node.

    // Added by Bryan Ewert on 19 Apr 2002
    static MObject              rulesWarningThreshold;
    static MObject              rulesErrorThreshold;

    static MObject              animRangeDefault;        // Flag to enable the default animRange (the TimeSlider)
    static MObject              animRangeNameTime;
    static MObject              animRangeName;
    static MObject              animRangeTime;

    static MObject              exporterSettingParent;      

 // -- ** START Compatibility: NOT STORED *** 12 Dec 2001
 
    static MObject              animationString;
    static MObject              animationNameStyle;
    static MObject              animationMirrorString;      // Deprecated 12 Dec 2001
    static MObject              exportDeformPolySkins;      // Deprecated 20 Feb 2001 - Obsolete (not stored) 26 Feb 2002
    static MObject              autoGenBoundingVolumes;     // 04 Jan 2002
    static MObject              exportMirrorAnimation;      // Deprecated 08 Oct 2002
 
 // -- ** END Compatibility

};

#endif // _EXPORTEROPTIONS_HPP

