//===========================================================================
// Copyright ©2000-2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     January 21, 2000
// Creator:     Eric Honsch
//
// Component:   Pure3D Maya Exporter - Animation.
//
// Description: The AnimNode class defines and stores the animation for the
//              various node types that are extracted from the Maya scene.
//              The ::FillNode() method is used to query the animation
//              components at the current frame, and ::FinalizeNode() is
//              used to add the animations to the SceneNode::inventory
//              and create a Frame Controller.
//
// Constraints:
//
//===========================================================================
//===========================================================================
// Includes
//===========================================================================

/* SEARCH STRINGS

AnimNode::Export(void)

AnimNode::SetupVisibility(int numframes, float frameRate)

ScenegraphTransformAnimNode::SetupNode(int numframes, float framerate, int startFrame )
SkeletonAnimNode::SetupNode(int numframes, float framerate, int startFrame )
CompositeDrawableAnimNode::SetupNode(int numframes, float framerate, int startFrame )
DeformerExpressionAnimNode::SetupNode(int numframes, float framerate, int startFrame )
CameraAnimNode::SetupNode(int numframes, float framerate, int startFrame )
LightAnimNode::SetupNode(int numframes, float framerate, int startFrame )
BillboardQuadGroupAnimNode::SetupNode(int numFrames, float frameRate, int startFrame )

TextureAnimNode::TextureAnimNode( const MObject& textureNode, const MString& colour, const MString& alpha,
TextureAnimNode::AddCurrentTextureToInventory

SpriteParticleAnimNode::FillNode(int f)

*/

//Bryan and Kevin
//  todo: change animrange class so that it has knowledge of the animnodes it affects
//  such that particle systems can create their own internal animation range and attach
//  their animnodes to it.  this will make sure particles export the correct animation range.
//

#include "animnode.hpp"
#include "deformerExpression.hpp"

#include "scene.hpp"
#include "exporterutility.hpp"
#include "exportFunctions.hpp"      // IsExportingCanceled()
#include "mayanodes.hpp"
#include "plugValue.hpp"
#include <maya/inc/mayaWorkspace.hpp>

#include "dospath.hpp"
#include "tlInventory.hpp"
#include "tlExpressionAnim.hpp"
#include "tlCompositeDrawable.hpp"
#include "tlPrimGroupMesh.hpp"
#include "tlPoseAnim.hpp"
#include "tlVisAnim.hpp"
#include "tlFrameController.hpp"
#include "tlScenegraph.hpp"
#include "tlScenegraphTransformAnim.hpp"
#include "tlMultiController.hpp"
#include "tlCameraAnim.hpp"
#include "tlLight.hpp"
#include "tlLightAnim.hpp"
#include "tlBillboardObjectAnim.hpp"

#include <maya/MStatus.h>
#include <maya/MString.h>
#include <maya/MItDependencyNodes.h>
#include <maya/MItMeshPolygon.h>
#include <maya/MFnDependencyNode.h>
#include <maya/MFnTransform.h>
#include <maya/MFnMesh.h>
#include <maya/MPlug.h>
#include <maya/MAnimControl.h>
#include <maya/MAnimUtil.h>
#include <maya/MTime.h>
#include <maya/MDistance.h>
#include <maya/MFnCamera.h>
#include <maya/MFnLight.h>
#include <maya/MFnAmbientLight.h>
#include <maya/MFnPointLight.h>
#include <maya/MFnDirectionalLight.h>
#include <maya/MFnSpotLight.h>
#include <maya/MFnNumericAttribute.h>
#include <maya/MGlobal.h>

#include <bewert_debug.h>

// START DEBUG -- This may be removed without affecting functionality //

static const char* textureConnectionTypeNames[TextureLayer::NumTextureConnectionTypes] =
{
    "None",
    "File",
    "Procedural",
    "Projection",
    "INVALID"
};

// END DEBUG //

static const unsigned int NUM_TEXTURE2D_PLUGS = 34;
static const char* Texture2dPlugs[NUM_TEXTURE2D_PLUGS] =
{
    "amplitude",
    "bias",
    "boundary",
    "brightSpread",
    "contrast",
    "depthMax",
    "fast",
    "frequencyRatio",
    "levelMax",
    "levelMin",
    "noise",
    "numberOfWaves",
    "randomness",
    "ratio",
    "rockRoughness",
    "smoothness",
    "snowAmplitude",
    "snowDropoff",
    "snowRoughness",
    "snowSlope",
    "subWaveFrequency",
    "threshold",
    "time",
    "timeRatio",
    "uWave",
    "uWidth",
    "vWave",
    "vWidth",
    "waveAmplitude",
    "waveFrequency",
    "waveTime",
    "waveVelocity",
    "widthSpread",
    "windUV"
};

static const unsigned int NUM_TEXTURE2D_COMPOUND_PLUGS = 7;
static const char* Texture2dCompoundPlugs[NUM_TEXTURE2D_COMPOUND_PLUGS] =
{
    "color1",
    "color2",
    "gapColor",
    "uColor",
    "vColor",
    "lineColor",
    "fillerColor"
};

static const unsigned int NUM_TEXTURE3D_PLUGS = 43;
static const char* Texture3dPlugs[NUM_TEXTURE3D_PLUGS] =
{
    "lacunarity",
    "increment",
    "octaves",
    "contrast",
    "amplitude",
    "depth",
    "edgeThresh",
    "centerThresh",
    "transpRange",
    "ratio",
    "melt",
    "balance",
    "frequency",
    "cellSize",
    "density",
    "mixRatio",
    "spottyness",
    "randomness",
    "threshold",
    "veinWidth",
    "diffusion",
    "contrast",
    "grainSize",
    "diffusion",
    "mixRatio",
    "threshold",
    "depthDecay",
    "thickness",
    "frequencyRatio",
    "bias",
    "time",
    "timeRatio",
    "shaker",
    "depthMax",
    "density",
    "sizeRand",
    "randomness",
    "numWaves",
    "veinSpread",
    "layerSize",
    "age",
    "grainContrast",
    "grainSpacing"
};

static const unsigned int NUM_TEXTURE3D_COMPOUND_PLUGS = 17;
static const char* Texture3dCompoundPlugs[NUM_TEXTURE3D_COMPOUND_PLUGS] =
{
    "weight3d",
    "color1",
    "color2",
    "color3",
    "fillerColor",
    "ripples",
    "channel1",
    "channel2",
    "channel3",
    "veinColor",
    "snowColor",
    "surfaceColor",
    "depth",
    "scale",
    "origin",
    "grainColor",
    "center"
};

static const unsigned int NUM_TRANSLATE_ATTRIBUTES = 3;
static const char* TRANSLATE_ATTRIBUTES[NUM_TRANSLATE_ATTRIBUTES] =
{
    "tx", "ty", "tz"
};

static const unsigned int NUM_ROTATE_ATTRIBUTES = 3;
static const char* ROTATE_ATTRIBUTES[NUM_ROTATE_ATTRIBUTES] =
{
    "rx", "ry", "rz"
};

static const unsigned int NUM_FOV_ATTRIBUTES = 5;
static const char* FOV_ATTRIBUTES[NUM_FOV_ATTRIBUTES] =
{
    "hfa", "vfa", "fl", "cs", "ow"
};

static const unsigned int NUM_NEARCLIP_ATTRIBUTES = 1;
static const char* NEARCLIP_ATTRIBUTES[NUM_NEARCLIP_ATTRIBUTES] =
{
    "ncp"
};

static const unsigned int NUM_FARCLIP_ATTRIBUTES = 1;
static const char* FARCLIP_ATTRIBUTES[NUM_FARCLIP_ATTRIBUTES] =
{
    "fcp"
};

static const unsigned int NUM_ATTENUATE_ATTRIBUTES = 1;
static const char* ATTENUATE_ATTRIBUTES[NUM_ATTENUATE_ATTRIBUTES] =
{
    "in"
};

static const unsigned int NUM_CONEANGLE_ATTRIBUTES = 1;
static const char* CONEANGLE_ATTRIBUTES[NUM_CONEANGLE_ATTRIBUTES] =
{
    "ca"
};

static const unsigned int NUM_COLOUR_ATTRIBUTES = 4;
static const char* COLOUR_ATTRIBUTES[NUM_COLOUR_ATTRIBUTES] =
{
    "red", "green", "blue", "alpha"
};

static const unsigned int NUM_UVOFFSET_ATTRIBUTES = 2;
static const char* UVOFFSET_ATTRIBUTES[NUM_UVOFFSET_ATTRIBUTES] =
{
    "uvOffset0", "uvOffset1"
};

//===========================================================================
// Initialization for Static objects
//===========================================================================

tlTable<AnimNode *> AnimNode::mNodes;
tlTable<TLUID> AnimNode::mIDs;
tlTable<tlFrameController*> AnimNode::mFrameControllers;

/* ****  AnimRange DISABLED for removal ****
tlTable<AnimRange> AnimNode::mAnimRanges;
*/

InventoryEntity<tlVisAnim*>* AnimNode::mRootAnimNodeVisibility = NULL;
tlTable< InventoryEntity<tlVisAnim*>* >    AnimNode::mAnimNodeVisibilityTable;

CStack<InventoryEntity<tlPoseAnim*>* >   SkeletonAnimNode::mRootAnimation;

tlTable<TextureLayer*> TextureAnimNode::mUniqueTextureLayers;
MStringArray TextureAnimNode::mQueuedTextureNames;

// ** DEBUG -- DISABLE Animation optimization  (comment #define to allow)
//#define     ANIMNODE_DISABLE_OPTIMIZE
// ** END DEBUG

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

static const char* NULL_STRING = "";

bool IsCloseEnough( float A, float B )
{
    const double kEpsilon = 0.0001;

    return ( fabs( A - B ) < kEpsilon );
}

//===========================================================================
// Constructor / Destructor
//===========================================================================

AnimNode::AnimNode( SceneNode* node )
:   mSceneNode(node),
    mAnimNodeVisibility(NULL),
    mVisType( kVisibilityTypeNone ),
    mFrameControllerName( NULL ),
    mbIsCyclic( false ),

// BEGIN DEPRECATE -> Mirrored Animation Deprecated: 08 Oct 2002

//    mbIsMirrored( false ),

// END DEPRECATE

    mbFinalized( false )
{
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

void
AnimNode::Reset(void)
{
    int a;
    for (a = 0; a < mNodes.Count(); a++)
    {
        delete mNodes[a];
    }
    mNodes.ZeroCount();
    mIDs.ZeroCount();

/* ****  AnimRange DISABLED for removal ****
    for ( a = 0; a < mAnimRanges.Count(); a++ )
    {
        mAnimRanges[a].Clear();
    }
    mAnimRanges.ZeroCount();
*/

    for ( a = 0; a < mAnimNodeVisibilityTable.Count(); a++ )
    {
        if ( !mAnimNodeVisibilityTable[a]->Stored() )
        {
            mAnimNodeVisibilityTable[a]->DeleteEntity();
        }

        delete mAnimNodeVisibilityTable[a];
    }
    mAnimNodeVisibilityTable.ZeroCount();

    mRootAnimNodeVisibility = NULL;

    SkeletonAnimNode::Reset();

    // Don't clear the Frame Controllers here.
}

void
AnimNode::AddNode(AnimNode* node)
{
    mNodes.Append(node);
}

/* ****  AnimRange DISABLED for removal ****

void
AnimNode::AddAnimRange( const AnimRange& range )
{
    mAnimRanges.Append( range );
}

int
AnimNode::GetMinFrame()
{
    int minFrame = mAnimRanges[0].Start();
    for (int i = 0; i < mAnimRanges.Count(); i++)
    {
        if (minFrame>mAnimRanges[i].Start())
        {
            minFrame = mAnimRanges[i].Start();
        }
    }
    return minFrame;
}

int
AnimNode::GetMaxFrame()
{
    int maxFrame = mAnimRanges[0].End();
    for (int i = 0; i < mAnimRanges.Count(); i++)
    {
        if (maxFrame<mAnimRanges[i].End())
        {
            maxFrame = mAnimRanges[i].End();
        }
    }
    return maxFrame;
}

*/

//===========================================================================
// AnimNode::Export
//===========================================================================
// Description: Iterates through each frame in Maya, using the time range
//              from the Range Slider.  At each frame, the matrices for
//              all DAGs in the SceneNode are assigned, The Visibility
//              and Channel animations are assigned via the pure virtual
//              functions ::FillVisibility() and ::FillNode(), respectively.
//
// Constraints:
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
MStatus
AnimNode::Export(void)
{
    MStatus                     status = MS::kSuccess;

    int nodecount = mNodes.Count();
    if (nodecount < 1) return status;

    // init animation controller and set to first frame
    MAnimControl::setViewMode(MAnimControl::kPlaybackViewActive);

    MTime minTime = MAnimControl::minTime();
    MTime maxTime = MAnimControl::maxTime();
    MTime initTime = MAnimControl::currentTime();

    int                         minframe;
    int                         maxframe;
    bool                        bNewVisibilityAnimation;

    MString                     anno;
    int                         progress;
    int                         a;

    int currentFrameController = 0;

//    unsigned int r;
//    for ( r = 0; r < mAnimRanges.Count(); r++ )
//    {
//        minframe = mAnimRanges[r].Start();
//        maxframe = mAnimRanges[r].End();
//
//        minTime.setValue( minframe );
//        maxTime.setValue( maxframe );

        MAnimControl::setCurrentTime(minTime);

        minframe = static_cast<int>( minTime.value() );
        maxframe = static_cast<int>( maxTime.value() );

        int numframes  = (maxframe - minframe) + 1;
        float framerate = GetFrameRate( minTime );

        if ((numframes <= 0)||(framerate<=0.0f))
            return status;

        SceneNode::BuildMatrices();

        // tell all of the nodes how many frames there are in this anim
        for (a = 0; a < nodecount; a++)
        {
            if ( mNodes[a]->mSceneNode != NULL )
            {
                anno = "Animations [Setup: ";
                anno += mNodes[a]->mSceneNode->Name();
                anno += "]";
                gProgress.SetAnnotation( anno.asChar() );

                // Set Frame Controller Name for each Node to match this AnimRange.
                mNodes[a]->mFrameControllerName = mNodes[a]->mSceneNode->Name(); // mAnimRanges[r].Name();
            }
//            else
//            {
//                CDEBUG << "AnimNode has no SceneNode to name FrameController." << endl;
//            }

            bNewVisibilityAnimation = mNodes[a]->SetupVisibility(numframes, framerate);

            mNodes[a]->SetupNode(numframes, framerate, minframe);

//            if ( bNewVisibilityAnimation && ( mAnimRanges.Count() > 1 ) )
//            {
//                char framename[256];
//                if ( mNodes[a]->GetVisibilityAnimation != NULL )
//                {
//                    sprintf( framename, "%s_%d_%d", mNodes[a]->GetVisibilityAnimation()->GetName(), minframe, ( minframe + numframes - 1 ) );
//                    mNodes[a]->GetVisibilityAnimation()->SetName( framename );
//                }
//            }

            progress = ( ( a + 1 ) * 100 ) / nodecount;
            anno = "Animations [Setup ";
            anno += progress;
            anno += "%]";
            gProgress.SetAnnotation( anno.asChar() );
        }

        // Loop through the Maya animation and export the transform node's attributes
        int curtime;
        for (curtime = minframe; curtime <= maxframe; curtime++)
        {
            minTime.setValue((double)curtime);
            MAnimControl::setCurrentTime(minTime);

            SceneNode::BuildMatrices();

            // Get the next node and tell it to fill itself

            int frame = curtime - minframe;
            for (a = 0; a < nodecount; a++)
            {
                mNodes[a]->FillVisibility(frame);
                mNodes[a]->FillNode(frame);
            }

            if ( IsExportingCanceled() )
            {
                status = MS::kFailure;
                break;
            }

            progress = ( ( ( curtime - minframe ) + 1 ) * 100 ) / numframes;
            anno = "Animations [Run ";
            anno += progress;
            anno += "%]";
            gProgress.SetAnnotation( anno.asChar() );
        }

        gProgress.SetAnnotation( "Animations [Finalize]" );

        if ( status == MS::kSuccess )
        {
            FinalizeNodes();

//            // Add all the Frame Controllers added within this AnimRange
//            // to the AnimRange class.
//            for ( /* nothing */; currentFrameController < mFrameControllers.Count(); currentFrameController++ )
//            {
//                mAnimRanges[r].AddFrameController( mFrameControllers[currentFrameController] );
//            }
//

            BuildMultiController();
        }

        // MEMORY LEAK PATCH: 04 Jun 2002
        // If the user should happen to abort midstride then the
        // animation nodes may hold allocated data which never made
        // it into the Inventory.  This call cleans up any dangling
        // allocations.
        for ( a = 0; a < mAnimNodeVisibilityTable.Count(); a++ )
        {
            if ( !mAnimNodeVisibilityTable[a]->Stored() )
            {
                mAnimNodeVisibilityTable[a]->DeleteEntity();
            }
        }

        for (a = 0; a < nodecount; a++)
        {
            mNodes[a]->CleanUp();
        }
        // END MEMORY LEAK PATCH

//        if ( status != MS::kSuccess ) break;
//    }

    mFrameControllers.ZeroCount();
    MAnimControl::setCurrentTime(initTime);

    return status;
}

//===========================================================================
// AnimNode::FinalizeNodes
//===========================================================================
// Description: Optimizes the animations for all nodes, deleting static
//              animations where possible.  Finalizes the Visibility
//              and Node animations.
//
// Constraints:
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
void
AnimNode::FinalizeNodes(void)
{
    tlFrameController*          pFC = NULL;

    unsigned int nodecount = mNodes.Count();
    if (nodecount < 1) return;

    MString                     anno;
    int                         progress;

    // tell the animations nodes to do their final stuff
    unsigned int a;

    for (a = 0; a < nodecount; a++)
    {
        mNodes[a]->OptimizeNode();

        progress = ( ( a + 1 ) * 100 ) / ( nodecount * 2 );
        anno = "Animations [Finalize ";
        anno += progress;
        anno += "%]";
        gProgress.SetAnnotation( anno.asChar() );
    }

    // All nodes have been optimized..
    // Static animations have been deleted.

    for (a = 0; a < nodecount; a++)
    {
        pFC = mNodes[a]->FinalizeVisibility();
        if ( pFC != NULL )
        {
            // This array stores a _pointer_ to the Frame Controller.
            // When Stored in the Inventory only the pointer is added; the object is not copied.
            // Do not delete this pointer.
            mFrameControllers.Append( pFC );
        }

        pFC = mNodes[a]->FinalizeNode();
        if ( pFC != NULL )
        {
            // This array stores a _pointer_ to the Frame Controller.
            // When Stored in the Inventory only the pointer is added; the object is not copied.
            // Do not delete this pointer.
            mFrameControllers.Append( pFC );
        }

        progress = ( ( a + nodecount + 1 ) * 100 ) / ( nodecount * 2 );
        anno = "Animations [Finalize ";
        anno += progress;
        anno += "%]";
        gProgress.SetAnnotation( anno.asChar() );
    }

    //********************************************************************************
    //Combine all pose visibility animations with the same composite drawable together
    //********************************************************************************

    tlTable<tlFrameController*> allVisFCs;  //table to store all the vis fcs to remove from the inventory
    tlTable<tlPoseVisAnim*> allVisAnims;    //table to store all the vis anims to remove from the inventory
    tlInventory::Iterator<tlCompositeDrawable> compItor(SceneNode::Inventory());  //inventory iterator to go through all composite drawables

    // go through all composite drawables and combine their vis anims/fcs together
    for (tlCompositeDrawable* compDraw = compItor.First(); compDraw; compDraw = compItor.Next())
    {
        char animname[256];
        ExporterOptions::BuildAnimationName( kPoseVisibilityAnimationMode, compDraw->GetName(), animname );

        tlFrameController* mainController = NULL;  // the main vis controller for the composite drawable
        tlPoseVisAnim* mainAnimation = NULL;  // the main vis animation for the composite drawable
        tlTable<tlFrameController*> visFCs;  // all other vis controllers for the composite drawable
        tlTable<tlPoseVisAnim*> visAnims;  // all other vis animations for the composite drawable

        // go through all the controllers in the inventory and cache away the visibility frame controllers 
        // and animations that are associated with the current composite drawable
        for (int i = 0; i < mFrameControllers.Count(); i++)
        {
            // determine if the frame controller is associated with the current composite drawable
            if (strcmp(mFrameControllers[i]->HierarchyName(),compDraw->GetName())==0)
            {
                // determine if the frame controller is a visibility frame controller
                if (mFrameControllers[i]->Type() == Pure3DAnimationTypes::POSE_VISIBILITY_PVIS)
                {
                    tlFrameController* controller = mFrameControllers[i];

                    // find the animation that the controller is connected to
                    tlPoseVisAnim* animation = toollib_find<tlPoseVisAnim>(SceneNode::Inventory(), mFrameControllers[i]->AnimationName());

                    // determine if the animation and controller are the main one's for the current composite drawable
                    if (strcmp(controller->AnimationName(),animname)==0)
                    {
                        mainController = controller;
                        mainAnimation = animation;
                    }
                    else
                    {
                        visFCs.Append(controller);
                        visAnims.Append(animation);
                        allVisFCs.Append(controller);
                        allVisAnims.Append(animation);
                    }
                }                
            }
        }

        // if any visibility frame controllers/animations are found then combine them together
        if ((visFCs.Count()>0) && (visAnims.Count()>0))
        {
            // if there is no main visibility frame controller then create one
            if (!mainController)
            {
                mainController = new tlFrameController;
                mainController->SetName(animname);
                mainController->SetType(Pure3DAnimationTypes::POSE_VISIBILITY_PVIS);
                mainController->SetHierarchyName(compDraw->GetName());
                mainController->SetAnimationName(animname);

                // store the new visibility frame controller
                SceneNode::Inventory()->Store(mainController);
                // add it to the list of frame controllers to be added to the multicontroller
                mFrameControllers.Append(mainController);
            }

            // if there is no main visibility animation then create one
            if (!mainAnimation)
            {
                mainAnimation = new tlPoseVisAnim;
                mainAnimation->SetName(animname);

                // find the scene node that is connected to the composite drawable so 
                // that we can determine if this is a cyclic animation
                SceneNode* node = SceneNode::Find(compDraw->GetName());
                if (node)
                {
                    mainAnimation->SetCyclic(node->IsCyclic());
                }

                // set the frame rate and number of frames in the animation
                MTime time;
                mainAnimation->SetFrameRate(GetFrameRate(time));
                mainAnimation->SetNumFrames(static_cast<float>(MAnimControl::maxTime().value() - MAnimControl::minTime().value() + 1.0));

                // store the new visibility animation
                SceneNode::Inventory()->Store(mainAnimation);
            }

            // go through all the cached visibility animations and combine them into the main vis animation
            for (int j = 0; j < visAnims.Count(); j++)
            {
                for (int k = 0; k < visAnims[j]->GetNumAnimationGroups(); k++)
                {
                    tlAnimationGroup* group = visAnims[j]->GetAnimationGroup(k);
                    if (group)
                    {
                        tlBoolChannel* channel = group->GetBoolChannel(Pure3DAnimationChannels::Visibility::VISIBILITY_VIS);
                        if (channel)
                        {
                            mainAnimation->SetVisibilityChannel(group->GetName(),*channel);
                        }
                    }
                }
            }
        }
    }

    // remove all the cached visibility frame controllers
    int l;
    for (l = 0; l < allVisFCs.Count(); l++)
    {
        int index;
        if (mFrameControllers.Find(allVisFCs[l], &index))
        {
            mFrameControllers.Delete( index, 1 );
        }
        SceneNode::Inventory()->Remove(allVisFCs[l]);
    }

    // remove all the cached visibility animations
    for (l = 0; l < allVisAnims.Count(); l++)
    {
        SceneNode::Inventory()->Remove(allVisAnims[l]);
    }
}

void
AnimNode::AddFrameControllerToMultiController( tlFrameController* controller )
{
    if (controller)
    {
        mFrameControllers.Append(controller);
    }
}

//===========================================================================
// AnimNode::RemoveFrameController
//===========================================================================
// Description: Removes the specified Frame Controller from the static
//              array maintained in this class, if it exists.
//
// Constraints: Does not remove the FrameController from the AnimRanges.
//
//  Parameters: tlFrameController* controller: The Frame Controller to 
//                  remove from the array.
//
//      Return: (void)
//
//===========================================================================
void
AnimNode::RemoveFrameController( tlFrameController* controller )
{
    int index;
    if ( mFrameControllers.Find( controller, &index ) )
    {
        mFrameControllers.Delete( index, 1 );
    }
}

/*

//===========================================================================
// AnimNode::ReconcileWithInventory
//===========================================================================
// Description: In the process of converting Composite Drawables to
//              Animated Object Factories one or more Frame Controllers
//              are likely replaced by an AOBJ Frame Controller. This causes
//              the Frame Controllers referenced by the AnimRanges to become 
//              invalid. This function compares the tlFrameControllers in the 
//              specified Inventory with those referenced by the AnimRanges 
//              and removes those that no longer exist in the Inventory.
//
// Constraints: Any Frame Controllers that are unique to the Inventory
//              are not added to the AnimRanges.
//
//  Parameters: tlInventory* pInventory: Pointer to the Inventory after
//                                  the Animated Object Factory conversion.
//
//      Return: (void)
//
//===========================================================================
void
AnimNode::WithInventory( tlInventory* pInventory )
{
    // Get array of existing Frame Controllers
    tlTable<tlFrameController*>                 invControllers;

    tlInventory::Iterator<tlFrameController> iter(pInventory);
    for ( tlFrameController* pFC = iter.First(); pFC; pFC = iter.Next() )
    {
        invControllers.Append( pFC );
    }

    for (unsigned int r = 0; r < AnimNode::NumAnimRanges(); r++)
    {
        tlTable<tlFrameController*>* rangeControllers = AnimNode::GetAnimRange(r)->GetFrameControllers();

        unsigned int i;
        for ( i = 0; i < (*rangeControllers).Count(); i++ )
        {
            // Does this FrameController exist in the Inventory?
            if ( !invControllers.Find( (*rangeControllers)[i] ) )
            {
                rangeControllers->Delete(i,1);
                i--;
            }
        }
    }
}

*/


//===========================================================================
// AnimNode::BuildMultiController
//===========================================================================
// Description:
//
// Constraints: AnimRange& cannot be const, unfortunately...
//
//  Parameters:
//
//      Return:
//
//===========================================================================
tlMultiController*
AnimNode::BuildMultiController( void )
{
    tlMultiController *mc = NULL;

//    tlTable<tlFrameController*>* ppFC = animRange.GetFrameControllers();

    // No frame controllers, no multicontroller.
    if ( mFrameControllers.Count() == 0) return mc;

    // Create new MultiController, and initialize with number of FrameControllers.
    mc = new tlMultiController( mFrameControllers.Count() );

    mc->SetName(ExporterOptions::MulticontrollerName());
    char newName[256];
    if ( !ValidateName( mc->GetName(), newName ) )
    {
        mc->SetName( newName );
    }

    float numFrames = static_cast<float>( MAnimControl::maxTime().value() - MAnimControl::minTime().value() + 1.0 );
    mc->SetLength( numFrames );

    MTime time;
    mc->SetFramerate(GetFrameRate( time ));

    int                         track = 0;
    unsigned int f;
    for ( f = 0; f < mFrameControllers.Count(); f++ )
    {
        tlMultiControllerTrackData              mctd;

        mctd.name  = strnew( mFrameControllers[f]->GetName() );
        mctd.starttime = 0.0F;
        mctd.endtime   = numFrames;
        mctd.scale     = 1.0F;
        mc->SetTrackData(track, mctd);

        mctd.name = NULL;

        track++;
    }

    SceneNode::Inventory()->Store(mc);

    return mc;
}

//===========================================================================
// AnimNode::ValidateName           (static)
//===========================================================================
// Description: The AnimNode class maintains a static tlTable<TLUID> array
//              that stores the hash for all animations destined to be stored
//              in the SceneNode::inventory.  The names for these animations
//              must be unique, or problems will arise in the runtime.
//              Each class derived from AnimNode uses its ::OptimizeNode()
//              function to call this method with its desired name.  If
//              the desired name clashes with a name already encountered,
//              a numeric suffix is added to guarantee uniqueness.
//
// Constraints: The 'char* outName' must be allocated with enough space
//              to store a modified name.  No bounds checking is possible.
//
//              It is assumed that the calling class will heed a FALSE
//              return value reassign its name.
//
// Parameters:  const char* inName: The current (desired) name for the
//                                  animation calling this method.
//              char* outName: Storage for the new name, if a clash is
//                             detected.
//
// Return:      (bool): FALSE if a clash was detected - the calling animation
//                      class should reassign its name using 'outName';
//                      TRUE if no clash was detected.
//
//===========================================================================
bool AnimNode::ValidateName( const char* inName, char* outName )
{
    bool                        bValid = true;

    strcpy( outName, inName );

    TLUID uid = tlEntity::MakeUID( inName );

    if ( mIDs.Find( uid ) )
    {
        // An animation using this name was encountered previously.
        // Returning FALSE indicates to the calling class that it
        // should use the string returned in 'outName' and reassign
        // its name.
        bValid = false;

        // Strip the numeric suffix from the input name, if any.
        char* origName = new char [ strlen(inName) + 1 ];
        strcpy( origName, inName );

        char* ptr = origName + strlen(inName);
        while ( ptr-- > origName )
        {
            if ( *ptr < '0' || *ptr > '9' )
            {
                *(ptr+1) = '\0';
                break;
            }
        }

        int autoNumber = 1;

        do
        {
            sprintf( outName, "%s%d", origName, autoNumber++ );
        }
        while ( mIDs.Find( tlEntity::MakeUID(outName) ) );

        delete [] origName;
    }

    // Always add UID for the final name to the hash list.
    // It is assumed that the calling class will change its name
    // to match 'outName', if necessary.
    mIDs.Append( tlEntity::MakeUID(outName) );

    return bValid;
}

//void
//AnimNode::SetVisibilityAnimation(tlVisAnim* visAnim)
//{
//    mVisibilityAnim = visAnim;
//}

tlVisAnim*
AnimNode::GetVisibilityAnimation()
{
    tlVisAnim* pVisAnim = NULL;
    if ( mAnimNodeVisibility != NULL ) pVisAnim = mAnimNodeVisibility->Entity();

    return pVisAnim;
}

void AnimNode::SetIsCyclic( bool bIsCyclic )
{
    mbIsCyclic = bIsCyclic;
}

bool AnimNode::IsCyclic( void ) const
{
    return mbIsCyclic;
}

//===========================================================================
// AnimNode::EvalIsInterpolated
//===========================================================================
// Description: Uses the mSceneNode member from this class to get an MObject,
//              then calls the (MObject) overload for this method to 
//              determine the 'interpolated' state for the attributes.
//
// Constraints: 
//
//  Parameters: const char** pAttributes: An array of NULL-terminated attribute
//                                        names.
//              unsigned int numAttributes: The number of attribute names in
//                                          the pAttributes array.
//
//      Return: (bool): TRUE if all attributes have exclusively stepped
//                      tangents; FALSE if at least one key on at least one
//                      attribute has a non-stepped tangent.
//
//===========================================================================
bool AnimNode::EvalIsInterpolated( const char** pAttributes, unsigned int numAttributes ) const
{
    MStatus                     status;

    if ( mSceneNode == NULL ) return false;

    MObject node = mSceneNode->MayaPath().node();

    return EvalIsInterpolated( node, pAttributes, numAttributes );
}

//===========================================================================
// AnimNode::EvalIsInterpolated
//===========================================================================
// Description: Determines if the specified attributes are animated
//              exclusively using stepped tangents. An animCurve with only
//              stepped tangents will export as a non-interpolated animation.
//
//              MAnimUtil::findAnimation() is used to find the animation curve
//              driving the specified attributes, and the keys on this
//              animCurve are queried for their in/out tangent types.
//
// Constraints: Will return TRUE if no animation curve is found on the 
//              specified attributes.
//
//  Parameters: const MObject& node: The DG node from which to query the 
//                                   attributes.
//              const char** pAttributes: An array of NULL-terminated attribute
//                                        names.
//              unsigned int numAttributes: The number of attribute names in
//                                          the pAttributes array.
//
//      Return: (bool): TRUE if all attributes have exclusively stepped
//                      tangents; FALSE if at least one key on at least one
//                      attribute has a non-stepped tangent.
//
//===========================================================================
bool AnimNode::EvalIsInterpolated( const MObject& node, const char** pAttributes, unsigned int numAttributes ) const
{
    bool bIsInterpolated = true;
    bool bHasOnlySteppedTangents = true;

    MStatus                     status;
    MFnDependencyNode           fnDependNode( node, &status );
    if ( status == MS::kSuccess )
    {
        unsigned int a;
        for ( a = 0; a < numAttributes; a++ )
        {
            MPlug attrPlug = fnDependNode.findPlug( MString( pAttributes[a] ), &status );
            if ( status == MS::kSuccess )
            {
                MObjectArray    animCurves;
                if ( MAnimUtil::findAnimation( attrPlug, animCurves, &status ) )
                {
                    size_t c;
                    for ( c = 0; c < animCurves.length(); c++ )
                    {
                        MFnAnimCurve                fnAnimCurve( animCurves[c], &status );
                        if ( status == MS::kSuccess )
                        {
                            unsigned numKeys = fnAnimCurve.numKeyframes();
                            while ( numKeys-- )
                            {
                                // Only out-tangent-type is relevant to test for Step tangents.
                                bHasOnlySteppedTangents &= ( fnAnimCurve.outTangentType( numKeys ) == MFnAnimCurve::kTangentStep );

                                bool bSteppedTangents = true;
                                bSteppedTangents &= ( fnAnimCurve.outTangentType( numKeys ) == MFnAnimCurve::kTangentStep );
                            }
                        }
                    }

                    if ( bHasOnlySteppedTangents )
                    {
                        bIsInterpolated = false;
                    }
                }
            }
        }
    }

    return bIsInterpolated;
}

//===========================================================================
// AnimNode::EvalIsInterpolated
//===========================================================================
// Description: Use this method if an attribute plug is not driven by an
//              animCurve, yet you need to assess whether it should be 
//              extracted as stepped-keys.
//
//              An attribute is evaluated to require only stepped keys by
//              comparing each integer key by the neighbouring (integer plus
//              point-five) key. If all integer keys represent the same value
//              as its point-five offset key it is assumed that the entire
//              curve represents stepped keys.
//
// Constraints: Since all time values are queried (using MDGContext) this
//              process will not be as efficient as querying keys on an 
//              animCurve. If you know there's an animCurve driving the 
//              attribute, use one of the methods above instead.
//
//  Parameters: const MPlug& plug: The plug for the attribute to query.
//              const MTime& startTime: The time at which to start the process.
//                const MTime& endTime: The time at which to end the process.
//
//      Return: (bool): TRUE if all time values exhibit the "integer time value
//                      equals integer-plus-point-five time value" property;
//                      FALSE if any time offset yields a different value 
//                      from its integer time.
//
//===========================================================================
bool AnimNode::EvalIsInterpolated( const MPlug& plug, const MTime& startTime, const MTime& endTime ) const
{
    MStatus                     status;

    bool bIsInterpolated = false;

    MFnNumericAttribute         fnAttr( plug.attribute(), &status );
    if ( status != MS::kSuccess ) return false;

    MFnNumericData::Type        unitType = fnAttr.unitType( &status );
    if ( status != MS::kSuccess ) return false;

    MTime now( startTime );
    while ( !bIsInterpolated && ( now < endTime ) )
    {
        MDGContext              dgContext( now );
        MDGContext              dgContextOffset( now + 0.5 );
        MTime                   foo;

        switch ( unitType )
        {
            case MFnNumericData::kInt:
            {
                int value, valueOffset;
                plug.getValue( value, dgContext );
                plug.getValue( valueOffset, dgContextOffset );

                if ( value != valueOffset )
                {
                    bIsInterpolated = true;
                }

                break;
            }

            case MFnNumericData::kFloat:
            {
                float value, valueOffset;
                plug.getValue( value, dgContext );
                plug.getValue( valueOffset, dgContextOffset );

                if ( value != valueOffset )
                {
                    bIsInterpolated = true;
                }

                break;
            }

            case MFnNumericData::kDouble:
            {
                double value, valueOffset;
                plug.getValue( value, dgContext );
                plug.getValue( valueOffset, dgContextOffset );

                if ( value != valueOffset )
                {
                    bIsInterpolated = true;
                }

                break;
            }

            case MFnNumericData::k3Float:
            {
                float value[3], valueOffset[3];
                plug.child(0).getValue( value[0], dgContext );
                plug.child(1).getValue( value[1], dgContext );
                plug.child(2).getValue( value[2], dgContext );
                plug.child(0).getValue( valueOffset[0], dgContextOffset );
                plug.child(1).getValue( valueOffset[1], dgContextOffset );
                plug.child(2).getValue( valueOffset[2], dgContextOffset );

                if ( ( value[0] != valueOffset[0] ) || ( value[1] != valueOffset[1] ) || ( value[2] != valueOffset[2] ) )
                {
                    bIsInterpolated = true;
                }

                break;
            }
        }
            
        now++;
    }

    return bIsInterpolated;
}

// BEGIN DEPRECATE -> Mirrored Animation Deprecated: 08 Oct 2002

//void AnimNode::SetIsMirrored( bool bIsMirrored )
//{
//    mbIsMirrored = bIsMirrored;
//}
//
//bool AnimNode::IsMirrored( void ) const
//{
//    return mbIsMirrored;
//}

// END DEPRECATE

//===========================================================================
// AnimNode::SetupVisibility
//===========================================================================
// Description: Allocates and/or assigns a new visibility animation as
//              required.
//
//              The 'mVisType' member variable provides a "hint" as to
//              what type of visibility animation should be created:
//
//                  kVisibilityTypeScenegraph = tlScenegraphVisAnim
//                  kVisibilityTypePose = tlPoseVisAnim
//
//              A new tlScenegraphVisAnim is created for each node in
//              the SceneGraph.  A new tlPoseVisAnim is created only
//              for the Skeleton Root; all other skeleton joints use
//              the same tlPoseVisAnim as the Root.
//
// Constraints:
//
//  Parameters: int numframes: The number of frames to create in the
//                             Visibility channel.
//              float frameRate: The framerate to assign.
//
//      Return: (bool): TRUE if new visibility animation was allocated;
//                      else FALSE.
//
//===========================================================================
bool
AnimNode::SetupVisibility(int numframes, float frameRate)
{
    bool bNewVisibilityAnimation = false;

    mAnimNodeVisibility = NULL;

    char animname[256];
    strcpy( animname, "DefaultVisAnimName" );

    switch( mVisType )
    {
        case kVisibilityTypeScenegraph:
        {
            tlScenegraphVisAnim* sgVisAnim = new tlScenegraphVisAnim;

            sgVisAnim->SetCyclic( IsCyclic() );
            sgVisAnim->SetFrameRate(frameRate);
            sgVisAnim->SetNumFrames(numframes);

            ExporterOptions::BuildAnimationName( kScenegraphVisibilityAnimationMode, mSceneNode->Name(), animname );
            sgVisAnim->SetName(animname);

            mAnimNodeVisibility = new InventoryEntity<tlVisAnim*> ( sgVisAnim );
            mAnimNodeVisibilityTable.Append( mAnimNodeVisibility );

            bNewVisibilityAnimation = true;

            break;
        }
        case kVisibilityTypePose:
        {
            // Confirm that the pose node is actually in the Inventory.
            if ( mSceneNode->ChildCount() > 0 )
            {
                SceneNode* poseTarget = mSceneNode->Child(0);
//                if ( poseTarget->IsVisibilityAnimated() )     // didn't work....
//                {
                    if ( ( poseTarget->MayaType() != MFn::kMesh ) || ( poseTarget->IsMesh() ) )
                    {
                        // If this is the Skeleton Root, create a new tlPoseVisAnim;
                        // else, just create a new Channel.
                        if ( mSceneNode->IsValidSkeletonRoot() )
                        {
                            tlPoseVisAnim* poseVisAnim = new tlPoseVisAnim; // MEMORY LEAK FIXED: 03 Jun 2002

                            poseVisAnim->SetCyclic( IsCyclic() );
                            poseVisAnim->SetFrameRate(frameRate);
                            poseVisAnim->SetNumFrames(numframes);

                            ExporterOptions::BuildAnimationName( kPoseVisibilityAnimationMode, mSceneNode->Name(), animname );
                            poseVisAnim->SetName(animname);
                            
                            // MEMORY LEAK PATCH: 03 Jun 2002
                            // Must keep track of all pose visibility animations,
                            // specifically tracking their re-use across nodes.
                            // Goal is to be able to clear one to NULL and have all shared
                            // nodes recognize that the pointer has become invalid.
                            mRootAnimNodeVisibility = new InventoryEntity<tlVisAnim*> ( poseVisAnim );
                            mAnimNodeVisibilityTable.Append( mRootAnimNodeVisibility );
                            mAnimNodeVisibility = mRootAnimNodeVisibility;
                            // END MEMORY LEAK PATCH

                            bNewVisibilityAnimation = true;
                        }
                        else
                        {
                            mAnimNodeVisibility = mRootAnimNodeVisibility;
                        }
                    }
                    else
                    {
                        gExportLog.Add( CExportLogEntry( ExportLog::kPoseVisibilityNonDrawable, mSceneNode->MayaPath() ) );
                    }
//                }     // if ( has visibility animation )
            }       // if ( ChildCount > 0 )
            break;
        }
        default:
        {
            return false;
            break;
        }
    }

    // If there is no scene node, make a one frame visible array
    if ( (mSceneNode == NULL) || (GetVisibilityAnimation() == NULL) )
    {
        mVisibilityChannel.SetNumKeys( 1 );
        mVisibilityChannel.SetKey( 0, 0, false );
    }
    else
    {
        mVisibilityChannel.SetNumKeys( numframes );
    }

    return bNewVisibilityAnimation;

}

void
AnimNode::FillVisibility(int frame)
{
    if (mSceneNode == NULL) return;

    mVisibilityChannel.SetKey(frame,frame,mSceneNode->IsVisible());
}

tlFrameController*
AnimNode::FinalizeVisibility(void)
{
    tlFrameController*          pFC = NULL;

    // -- DEBUG --
//    clog << "Finalize Visibility for ";
//    if ( ( mSceneNode != NULL ) && ( mSceneNode->Name() != NULL ) )
//    {
//        clog << mSceneNode->Name() << endl;
//    }
//    else
//    {
//        clog << "<???>" << endl;
//    }
    // -- END DEBUG --

    if (mSceneNode == NULL) return NULL;
    if (GetVisibilityAnimation() == NULL) return NULL;

    mVisibilityChannel.Optimize(0.0f);

    // If channel is static, don't write animation channel
    bool bWriteAnim = !mVisibilityChannel.IsStatic();

    // BUT, if Optimized animation is a single key and this key's value
    // is the OPPOSITE of IsEverVisible() then must write key to override SceneGraph.
    if ( ( mVisibilityChannel.GetNumKeys() == 1 ) && ( *(mVisibilityChannel.GetValues()) != mSceneNode->IsEverVisible() ) )
    {
        bWriteAnim = true;
    }

    if ( bWriteAnim )
    {
        bool storeRequest = false;

        if(!toollib_find<tlVisAnim>(SceneNode::Inventory(), GetVisibilityAnimation()->GetName()))
        {
           storeRequest = true;
        }

        tlScenegraphVisAnim* sceneVisAnim = dynamic_cast<tlScenegraphVisAnim*>(GetVisibilityAnimation());
        tlPoseVisAnim* poseVisAnim = dynamic_cast<tlPoseVisAnim*>(GetVisibilityAnimation());

    // Problem: A node can have a valid Scenegraph() AND be a Skeleton Root, which means
    //          it should use a tlPoseVisAnim and not a tlScenegraphVisAnim.

    // New logic: Determine which type of Animation we're saving by the
    //            results of the dynamic_cast<>.

            if ( sceneVisAnim != NULL )
            {
                char visName[256];
                sprintf(visName, "%s%s", mSceneNode->Name(), "_SceneGraphVis");
                sceneVisAnim->SetVisibilityChannel(visName,mVisibilityChannel);

                if (storeRequest)
                {
                    // Frame Controller: Visibility: Skeletons
                    pFC = new tlFrameController;
                    pFC->SetName(sceneVisAnim->GetName());
                    pFC->SetType(Pure3DAnimationTypes::SCENEGRAPH_VISIBILITY_SVIS);
                    pFC->SetHierarchyName(mSceneNode->Scenegraph()->GetName());
                    pFC->SetAnimationName(sceneVisAnim->GetName());

                    // Inventory: Store: Anim: Visibility
                    mSceneNode->Inventory()->Store(sceneVisAnim);
                    mSceneNode->Inventory()->Store(pFC);

                    mAnimNodeVisibility->SetStored();
                }
            }

        else if ( poseVisAnim != NULL )
            {

                // Visibility animation MUST be assigned to a drawable!
                // Traverse hierarchy until a SHAPE node is found
                const char* visName = NULL;
                SceneNode* lookingForShape = mSceneNode;
                unsigned int nDefer = 0;

                while ( ( visName == NULL ) && ( lookingForShape->ChildCount() > 0 ) )
                {
                    if ( lookingForShape->Child(0)->MayaPath().hasFn( MFn::kTransform ) )
                    {
                        // If this has only one child node, and it's a valid shape,
                        // it's likely the animation will apply as expected.
                        // If, however, more than one child node exists, or if
                        // we defer more than once, it's more likely that the user
                        // will have expected a group of nodes to animate,
                        // and the exported visibility will apply to only one.
                        nDefer += lookingForShape->ChildCount();
                        lookingForShape = lookingForShape->Child(0);
                    }
                    else
                    {
                        visName = lookingForShape->Child(0)->Name();
                    }
                }

                // Failed to associate pose visibility with drawable
                if ( visName == NULL )
                {
                    gExportLog.Add( CExportLogEntry( ExportLog::kPoseVisibilityNonDrawable, mSceneNode->MayaPath() ) );
                    return NULL;
                }

                if ( nDefer > 1 )
                {
                    gExportLog.Add( CExportLogEntry( ExportLog::kVisibilityAnimationReassigned, mSceneNode->MayaPath(), MObject::kNullObj, MString( visName ) ) );
                }

//                const char* visName = mSceneNode->Child(0)->Name();
                // This is copied from tlPoseVisAnim::SetVisibilityChannel().
                // It is here because the AnimationGroup IDs should match the SkeletonJointID
                // for the SceneNode being mapped here, and the SetVisibilityChannel()
                // only creates a unique ID.
                tlAnimationGroup* pAnimGroup = poseVisAnim->GetAnimationGroup(poseVisAnim->FindAnimationGroupByName(visName));
                if (!pAnimGroup)
                {
                    pAnimGroup = poseVisAnim->AddAnimationGroup( mSceneNode->SkeletonJointID(), visName );
                }
                pAnimGroup->SetBoolChannel( Pure3DAnimationChannels::Visibility::VISIBILITY_VIS, &mVisibilityChannel);

                if (storeRequest)
                {
                    // Frame Controller: Visibility: Skeletons
                    pFC = new tlFrameController;
                    pFC->SetName(poseVisAnim->GetName());
                    pFC->SetType(Pure3DAnimationTypes::POSE_VISIBILITY_PVIS);
                    pFC->SetHierarchyName(mSceneNode->Skeleton()->GetName());
                    pFC->SetAnimationName(poseVisAnim->GetName());

                    // Inventory: Store: Anim: Visibility
                    mSceneNode->Inventory()->Store(poseVisAnim);
                    mSceneNode->Inventory()->Store(pFC);

                    mAnimNodeVisibility->SetStored();
                }
            }
    }

    return pFC;
}

//**************************************************************
// Class SkeletonAnimNode
//**************************************************************
void
SkeletonAnimNode::SetupNode(int numframes, float framerate, int startFrame )
{
    if (numframes == 0)     return;
//    if (mAnimation == NULL) return;

    // If this is a Skeleton Root then create a new tlPoseAnim for it.
    // Child Joints ride for free off the Root's tlPoseAnim.
    if ( mSceneNode->IsValidSkeletonRoot() )
    {
        char animname[256];
        ExporterOptions::BuildAnimationName( kPoseAnimationMode, mSceneNode->Name(), animname );

        // * Note: This is stored as a _pointer_ in the inventory. *
        // Once it is Stored don't delete it without removing it from the Inventory!
        tlPoseAnim* poseAnim = new tlPoseAnim;
        SetFinal( false );

        poseAnim->SetName(animname);
        poseAnim->SetFrameRate(framerate);
        poseAnim->SetNumFrames(numframes);
        poseAnim->SetCyclic( mbIsCyclic );

// BEGIN DEPRECATE -> Mirrored Animation Deprecated: 08 Oct 2002

//        poseAnim->SetMirrored( this->IsMirrored() );

// END DEPRECATE

        mAnimation = new InventoryEntity<tlPoseAnim*> ( poseAnim );

        mRootAnimation.Push( mAnimation );

//        if ( NumAnimRanges() > 1 )
//        {
//            if ( mAnimation != NULL )
//            {
//                sprintf( animname, "%s_%d_%d", mAnimation->Entity()->GetName(), startFrame, ( startFrame + numframes - 1 ) );
//                mAnimation->Entity()->SetName( animname );
//            }
//        }
    }
    else
    {
        mAnimation = mRootAnimation.Current();
    }

    mAnimOptimization.Initialize( mSceneNode->MayaObject() );

    // Create the key lists and set the number of keys in the list
    mJoint = mAnimation->Entity()->AddJoint(mSceneNode->SkeletonJointID());
    mJoint->SetName(mSceneNode->Name());

    mJoint->CreateRotationChannel(numframes);
    mJoint->GetRotationChannel()->EnableInterpolation( this->EvalIsInterpolated( ROTATE_ATTRIBUTES, NUM_ROTATE_ATTRIBUTES ) );
    if( !(mSceneNode->IsBoneLengthPreserved()) )
    {
        mJoint->CreateTranslationChannel(numframes);
        mJoint->GetTranslationChannel()->EnableInterpolation( this->EvalIsInterpolated( TRANSLATE_ATTRIBUTES, NUM_TRANSLATE_ATTRIBUTES ) );
    }

    if(mJoint->GetGroupId() == 0)
    {
        mAnimation->Entity()->SetNumFrames(numframes);
        mAnimation->Entity()->SetFrameRate(framerate);
    }
}

//===========================================================================
// SkeletonAnimNode::FillNode      (virtual)
//===========================================================================
// Description: Responsible for setting animation keys for Skeletons.  This is
//              initiated from AnimNodes::FillNodes() which is called from
//              TraversalController::MainLoop().
//
//              Maya's current frame has been set from AnimNode::FillNodes().
//
//              Inherited from the Pure Virtual Function in AnimNode.
//
// Constraints:
//
// Parameters:  int frame: The frame at which to set the key.
//
// Return:      (void)
//
//===========================================================================
void
SkeletonAnimNode::FillNode(int frame)
{
    tlMatrix hmatrix;
    mSceneNode->Matrix(hmatrix);

    // now we can fetch out the stuff we care about for the transkeys
    tlPoint trans = hmatrix.GetRow(3);
    tlQuat rot = MatrixToQuaternion(hmatrix);

    tlVectorChannel* translation = mJoint->GetTranslationChannel();
    tlQuaternionChannel* rotation = mJoint->GetRotationChannel();
    if (translation)
    {
        translation->SetKey(frame,frame,trans * SceneNode::UIScale());
    }
    if (rotation)
    {
        rotation->SetKey(frame,frame,rot);
    }
}

//===========================================================================
// SkeletonAnimNode::OptimizeNode
//===========================================================================
// Description: Performs an optimization on this Skeleton animation.
//
// Constraints:
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
void
SkeletonAnimNode::OptimizeNode(void)
{
    if ( mJoint )
    {
#ifndef ANIMNODE_DISABLE_OPTIMIZE
        tlAnimationTolerances                   tolerances;
        tolerances.SetUsePeakDetection( ExporterOptions::UsePeakDetection() );
        if ( mAnimOptimization.Enable() )
        {
            tolerances.SetFloatTolerance( mAnimOptimization.ThresholdFloat() );
            tolerances.SetColourTolerance( mAnimOptimization.ThresholdColour());
            tolerances.SetVectorTolerance( mAnimOptimization.ThresholdPos() );
            tolerances.SetQuatTolerance( mAnimOptimization.ThresholdRot());
        }
        mJoint->RoughOptimization( tolerances );
#endif      // ANIMNODE_DISABLE_OPTIMIZE
    }
}

//===========================================================================
// SkeletonAnimNode::FinalizeNode
//===========================================================================
// Description: 
//              If the optimized animation is static it is deleted and
//              set to NULL; otherwise, its name is validated against
//              those previously encountered.  If a name clash is detected
//              the name is re-assigned using that returned by ::ValidateName().
//
// Constraints: 
//
//  Parameters: 
//
//      Return: 
//
//===========================================================================
tlFrameController*
SkeletonAnimNode::FinalizeNode(void)
{
    static int sequence = 0;

    tlFrameController*          pfc = NULL;

    if(mAnimation->Entity())
    {
        // A Skeleton animation needs to be added only once to the Inventory.
        // This method will be called for each Joint in the hierarchy..
        // so skip adding the animation for all but the Skeleton Root.
        if(toollib_find<tlPoseAnim>(SceneNode::Inventory(),mAnimation->Entity()->GetName()))
            return NULL;

        char newName[256];
        if ( !ValidateName( mAnimation->Entity()->GetName(), newName ) )
        {
            mAnimation->Entity()->SetName( newName );
        }

        // Create the frame controller and store it in the inventory
        pfc = new tlFrameController;

        // If Name specified for FrameController (i.e. AnimRange), use it.
        // Else default to name of Animation.
//        if ( this->mFrameControllerName != NULL )
//        {
//            pfc->SetName( this->mFrameControllerName );
//            if ( !ValidateName( pfc->GetName(), newName ) )
//            {
//                pfc->SetName( newName );
//            }
//        }
//        else
        {
            pfc->SetName( mAnimation->Entity()->GetName() );
        }

        pfc->SetAnimationName(mAnimation->Entity()->GetName());
        pfc->SetHierarchyName(mSceneNode->Skeleton()->GetName());
        pfc->SetType(Pure3DAnimationTypes::POSE_TRANSFORM_PTRN);

        mAnimation->Store( SceneNode::Inventory() );
//        SceneNode::Inventory()->Store(mAnimation->Entity());
//        mAnimation->SetInInventory();
        SceneNode::Inventory()->Store(pfc);

        SetFinal();

// BEGIN DEPRECATE -> Mirrored Animation Deprecated: 08 Oct 2002

//        //
//        // Create a frame controller also for mirrored animations
//        // so it can be seen in the viewer
//        //
//        if(mAnimation->Entity()->IsMirrored())
//        {
//            tlFrameController *tlfcMir = new tlFrameController;
//            tlfcMir->SetName(mAnimation->AnimNameMirrored());
//            tlfcMir->SetAnimName(mAnimation->AnimNameMirrored());
//
//            tlfcMir->SetHierarchyName(mSceneNode->Skeleton()->GetName());
//            tlfcMir->SetType(P3D_FC_COMPOSITEDRAWABLE);
//
//            SceneNode::Inventory()->Store(tlfcMir);
//        }

// END DEPRECATE

    }

    return pfc;
}

//===========================================================================
// SkeletonAnimNode::CleanUp
//===========================================================================
// Description: Deletes the allocated animation if it has not been added
//              to the Inventory.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void
SkeletonAnimNode::CleanUp(void)
{
    // Deleting tlPoseAnim also deletes tlJointAnimGroup
    if ( ( mAnimation != NULL ) && ( !mAnimation->Stored() ) )
    {
        mAnimation->DeleteEntity();
    }

    // InventoryEntity objects deleted when stack is cleared in ::Reset()
}

//===========================================================================
// SkeletonAnimNode::Reset
//===========================================================================
// Description: Empties the RootAnimation stack. This stack is used within
//              SkeletonAnimNode::SetupNode; it is "pushed" with each new
//              skeleton root so that each child joint is assigned to
//              the same animation pointer as its root.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void
SkeletonAnimNode::Reset( void )
{
    while ( !mRootAnimation.IsEmpty() )
    {
        delete mRootAnimation.Pop();
    }
}

//===========================================================================
// CompositeDrawableAnimNode        (Constructor)
//===========================================================================
// Description: Constructs a CompositeDrawableAnimNode object.
//
// Constraints: Controls Visibility animation ONLY.
//
//  Parameters: SceneNode *node: The SceneNode which owns this AnimNode.
//              const tlSkeleton* hierNode: The Skeleton which provides
//                  the Hierarchy Name for the tlCompositeDrawableChunk
//                  to which this animation's FrameController will bind.
//              const SceneNode* skinNode: The mesh shape which will
//                  provide the name for the tlSkinChunk to which the
//                  tlAnimationGroupChunk will bind.
//
//===========================================================================
CompositeDrawableAnimNode::CompositeDrawableAnimNode(SceneNode *node, const tlSkeleton* hierNode, const SceneNode* skinNode)
:   AnimNode(node),
    mHierNode(hierNode),
    mSkinNode(skinNode),
    mAnimation(NULL)
{
}

//===========================================================================
// CompositeDrawableAnimNode::SetupNode
//===========================================================================
// Description: Initializes the Animation Group and creates a Visibility
//              Channel for this animation node.
//
//              The name for the Visibility Channel must be that of the
//              tlSkinChunk to which this animation will bind.
//              this is obtained within SceneNode::BuildCompositeDrawableVisibility
//              and used to initialize this object.
//
// Constraints:
//
// Parameters:  int numframes: The number of frames to allocate in each
//                             Animation channel.
//              float framerate: The framerate of the Animation.
//
//      Return: (void)
//
//===========================================================================
void
CompositeDrawableAnimNode::SetupNode(int numframes, float framerate, int startFrame )
{
    char animname[256];
    ExporterOptions::BuildAnimationName( kPoseVisibilityAnimationMode, mSceneNode->Name(), animname );

    tlPoseVisAnim* poseVisAnim = new tlPoseVisAnim;
    SetFinal( false );

    poseVisAnim->SetName(animname);
    poseVisAnim->SetFrameRate(framerate);
    poseVisAnim->SetNumFrames(numframes);
    poseVisAnim->SetCyclic( mbIsCyclic );
    poseVisAnim->AddAnimationGroup(0, mSkinNode->Name() );
    poseVisAnim->CreateVisibilityChannel( mSkinNode->Name(),numframes);

    mAnimOptimization.Initialize( mSceneNode->MayaObject() );

    // In order to assure that animation names are unique I am post-fixing the
    // start and end frame numbers to the end of the name.  This allows multiple
    // AnimRanges that start on the same frame or end on the same frame, but
    // implies that you cannot export two identical animations ranges and expect
    // valid results.  But why would you want to, eh?
//    if ( NumAnimRanges() > 1 )
//    {
//        if ( poseVisAnim != NULL )
//        {
//            sprintf( animname, "%s_%d_%d", poseVisAnim->GetName(), startFrame, ( startFrame + numframes - 1 ) );
//            poseVisAnim->SetName( animname );
//        }
//    }

    mAnimation = new InventoryEntity<tlPoseVisAnim*>( poseVisAnim );
}

//===========================================================================
// CompositeDrawableAnimNode::FillNode      (virtual)
//===========================================================================
// Description: Responsible for setting visibility animation keys for
//              Composite Drawables.
//
//              The name for the Visibility Channel must be that of the
//              tlSkinChunk to which this animation will bind.
//              this is obtained within SceneNode::BuildCompositeDrawableVisibility
//              and used to initialize this object.
//
//              This is initiated from AnimNodes::FillNodes() which is
//              called from TraversalController::MainLoop().
//
//              Maya's current frame has been set from AnimNode::FillNodes().
//
//              Inherited from the Pure Virtual Function in AnimNode.
//
// Constraints:
//
// Parameters:  int frame: The frame at which to set the key.
//
// Return:      (void)
//
//===========================================================================
void
CompositeDrawableAnimNode::FillNode(int frame)
{
    bool bIsVisible = mSceneNode->IsVisible();

    mAnimation->Entity()->GetVisibilityChannel( mSkinNode->Name() )->SetKey( frame, frame, bIsVisible );
}

//===========================================================================
// CompositeDrawableAnimNode::OptimizeNode
//===========================================================================
// Description: Performs an optimization on the Visibility animation.
//
// Constraints:
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
void
CompositeDrawableAnimNode::OptimizeNode(void)
{
    if ( mAnimation->Entity() )
    {
#ifndef ANIMNODE_DISABLE_OPTIMIZE
        tlAnimationTolerances                   tolerances;
        tolerances.SetUsePeakDetection( ExporterOptions::UsePeakDetection() );
        if ( mAnimOptimization.Enable() )
        {
            tolerances.SetFloatTolerance( mAnimOptimization.ThresholdFloat() );
            tolerances.SetColourTolerance( mAnimOptimization.ThresholdColour());
            tolerances.SetVectorTolerance( mAnimOptimization.ThresholdPos() );
            tolerances.SetQuatTolerance( mAnimOptimization.ThresholdRot());
        }

        mAnimation->Entity()->RoughOptimization( tolerances );
#endif      // ANIMNODE_DISABLE_OPTIMIZE
    }
}

//===========================================================================
// CompositeDrawableAnimNode::FinalizeNode
//===========================================================================
// Description: Finalizes the Visibility animation for the Composite
//              Drawable Node.
//
//              The Hierarchy Name for the Frame Controller must be set
//              to the name of the Composite Drawable; this is obtained
//              within SceneNode::BuildCompositeDrawableVisibility and
//              used to initialize this object.
//
// Constraints:
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
tlFrameController*
CompositeDrawableAnimNode::FinalizeNode(void)
{
    tlFrameController*          pFC = NULL;
    if(mAnimation->Entity())
    {
        if(toollib_find<tlPoseVisAnim>(SceneNode::Inventory(),mAnimation->Entity()->GetName()))
            return NULL;

        char newName[256];
        if ( !ValidateName( mAnimation->Entity()->GetName(), newName ) )
        {
            mAnimation->Entity()->SetName( newName );
        }

        // Create the frame controller and store it in the inventory
        pFC = new tlFrameController;
        pFC->SetName(mAnimation->Entity()->GetName());
        pFC->SetAnimationName(mAnimation->Entity()->GetName());
        pFC->SetHierarchyName( mHierNode->GetName() );
        pFC->SetType(Pure3DAnimationTypes::POSE_VISIBILITY_PVIS);

        mAnimation->Store( SceneNode::Inventory() );
//        SceneNode::Inventory()->Store(mAnimation);
        SceneNode::Inventory()->Store(pFC);

        SetFinal();
    }

    return pFC;
}

//===========================================================================
// CompositeDrawableAnimNode::CleanUp
//===========================================================================
// Description: Deletes the allocated animation if it has not been added
//              to the Inventory.
//
//              Deletes and NULLs the InventoryEntity object holding the
//              animation pointer. (Although I'm not sure why this class
//              does this when the others don't...?)
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void
CompositeDrawableAnimNode::CleanUp(void)
{
    if ( ( mAnimation != NULL ) && ( !mAnimation->Stored() ) )
    {
        mAnimation->DeleteEntity();
    }

    delete mAnimation;
    mAnimation = NULL;
}

//**************************************************************
// Class ScenegraphTransformAnimNode
//**************************************************************
void
ScenegraphTransformAnimNode::SetupNode(int numframes, float framerate, int startFrame )
{
    char animname[256];
    ExporterOptions::BuildAnimationName( kScenegraphAnimationMode, mSceneNode->Name(), animname );

    // * Note: This is stored as a _pointer_ in the inventory. *
    // Once it is Stored don't delete it without removing it from the Inventory!
    mAnimation = new tlScenegraphTransformAnim;
    SetFinal( false );

    mAnimation->SetName(animname);
    mAnimation->SetFrameRate(framerate);
    mAnimation->SetNumFrames(numframes);
    mAnimation->SetCyclic( mbIsCyclic );
    mAnimation->AddAnimationGroup(0,mSceneNode->Name());
    mAnimation->CreateStandardChannels(numframes);

    mAnimation->GetTranslationChannel()->EnableInterpolation( this->EvalIsInterpolated( TRANSLATE_ATTRIBUTES, NUM_TRANSLATE_ATTRIBUTES ) );
    mAnimation->GetRotationChannel()->EnableInterpolation( this->EvalIsInterpolated( ROTATE_ATTRIBUTES, NUM_ROTATE_ATTRIBUTES ) );

    mAnimOptimization.Initialize( mSceneNode->MayaObject() );

    // In order to assure that animation names are unique I am post-fixing the
    // start and end frame numbers to the end of the name.  This allows multiple
    // AnimRanges that start on the same frame or end on the same frame, but
    // implies that you cannot export two identical animations ranges and expect
    // valid results.  But why would you want to, eh?
//    if ( NumAnimRanges() > 1 )
//    {
//        char framename[256];
//        if ( mAnimation != NULL )
//        {
//            sprintf( framename, "%s_%d_%d", mAnimation->GetName(), startFrame, ( startFrame + numframes - 1 ) );
//            mAnimation->SetName( framename );
//        }
//    }
}

//===========================================================================
// ScenegraphTransformAnimNode::FillNode      (virtual)
//===========================================================================
// Description: Responsible for setting animation keys for Transforms.  Here
//              is where the Translation and Rotation for all Transforms
//              is assigned.  Other necessary channels are animated through
//              the other derived classes (e.g. LightAnimNode).
//
//              This function is initiated from AnimNodes::FillNodes() which
//              is called from TraversalController::MainLoop().
//
//              Maya's current frame has been set from AnimNode::FillNodes().
//
//              Inherited from the Pure Virtual Function in AnimNode.
//
// Constraints:
//
// Parameters:  int frame: The frame at which to set the key.
//
// Return:      (void)
//
//===========================================================================
void
ScenegraphTransformAnimNode::FillNode(int frame)
{
    tlMatrix hmatrix;

//    if ( mSceneNode->IsScenegraphRoot() )
//    {
//        mSceneNode->ScenegraphRootMatrix( hmatrix );
//    }
//    else
    {
        mSceneNode->Matrix( hmatrix );
    }

    // now we can fetch out the stuff we care about for the transkeys
    tlPoint trans = hmatrix.GetRow(3);
    tlQuat rot = MatrixToQuaternion(hmatrix);

    mAnimation->GetTranslationChannel()->SetKey(frame, frame, trans * SceneNode::UIScale());
    mAnimation->GetRotationChannel()->SetKey(frame, frame, rot);
}

//===========================================================================
// ScenegraphTransformAnimNode::OptimizeNode
//===========================================================================
// Description: Performs an optimization on this Scenegraph animation.
//              If the optimized animation is static it is deleted and
//              set to NULL; otherwise, its name is validated against
//              those previously encountered.  If a name clash is detected
//              the name is re-assigned using that returned by ::ValidateName().
//
// Constraints:
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
void
ScenegraphTransformAnimNode::OptimizeNode(void)
{
    if ( mAnimation )
    {

#ifndef ANIMNODE_DISABLE_OPTIMIZE

//        CDEBUG << "Before optimization: " << this->mSceneNode->Name() << endl;
//        int numKeys = mAnimation->GetRotationChannel()->GetNumKeys();
//        tlQuat quat;
//        int i;
//        short frame;
//        for ( i = 0; i < numKeys; i++ )
//        {
//            mAnimation->GetRotationChannel()->GetKey( i, frame, quat );
//            CDEBUG << "\t" << frame << ": { " << quat.x << ", " << quat.y << ", " << quat.z << ", " << quat.w << " }" << endl;
//        }

        tlAnimationTolerances                   tolerances;
        tolerances.SetUsePeakDetection( ExporterOptions::UsePeakDetection() );
        if ( mAnimOptimization.Enable() )
        {
            tolerances.SetFloatTolerance( mAnimOptimization.ThresholdFloat() );
            tolerances.SetColourTolerance( mAnimOptimization.ThresholdColour());
            tolerances.SetVectorTolerance( mAnimOptimization.ThresholdPos() );
            tolerances.SetQuatTolerance( mAnimOptimization.ThresholdRot());
        }
        mAnimation->RoughOptimization( tolerances );

//        CDEBUG << "After optimization: " << this->mSceneNode->Name() << endl;
//        numKeys = mAnimation->GetRotationChannel()->GetNumKeys();
//        for ( i = 0; i < numKeys; i++ )
//        {
//            mAnimation->GetRotationChannel()->GetKey( i, frame, quat );
//            CDEBUG << "\t" << frame << ": { " << quat.x << ", " << quat.y << ", " << quat.z << ", " << quat.w << " }" << endl;
//        }

#endif      // ANIMNODE_DISABLE_OPTIMIZE

        if ( mAnimation->IsStatic() )
        {
            //
            // Make sure to remove from the inventory!!!
            //
            if(SceneNode::Inventory()->Remove(mAnimation) == 0)
            {
                //
                // Wasn't in the inventory so delete
                //
                delete mAnimation;
            }
            mAnimation = NULL;
        }
    }
}

tlFrameController*
ScenegraphTransformAnimNode::FinalizeNode(void)
{
    tlFrameController*          pFC = NULL;

    if ( mAnimation )
    {
        char newName[256];
        if ( !ValidateName( mAnimation->GetName(), newName ) )
        {
            mAnimation->SetName( newName );
        }

        // Create Frame Controller
        pFC = new tlFrameController;
        pFC->SetName(mAnimation->GetName());
        pFC->SetType(Pure3DAnimationTypes::SCENEGRAPH_TRANSFORM_STRN);
        pFC->SetAnimationName(mAnimation->GetName());
        pFC->SetHierarchyName(mSceneNode->Scenegraph()->GetName());

        // * Note: This only _stores_ the pointer.. it doesn't copy the object! *
        SceneNode::Inventory()->Store(mAnimation);
        SceneNode::Inventory()->Store(pFC);

        SetFinal();
    }

    return pFC;
}

//===========================================================================
// ScenegraphTransformAnimNode::CleanUp
//===========================================================================
// Description: Deletes the allocated animation if it has not been added
//              to the Inventory.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void
ScenegraphTransformAnimNode::CleanUp(void)
{
    if ( !Finalized() )
    {
        delete mAnimation;
        mAnimation = NULL;
    }
}

//**************************************************************
// Class CameraAnimNode
//**************************************************************
void
CameraAnimNode::SetupNode(int numframes, float framerate, int startFrame )
{
    char animname[256];
    ExporterOptions::BuildAnimationName( kCameraAnimationMode, mSceneNode->Name(), animname );

    mAnimation = new tlCameraAnim;
    SetFinal( false );

    mAnimation->SetName(animname);
    mAnimation->SetFrameRate(framerate);
    mAnimation->SetNumFrames(numframes);
    mAnimation->SetCyclic( mbIsCyclic );
    mAnimation->CreateStandardChannels(numframes);

    mAnimation->GetTranslationChannel()->EnableInterpolation( this->EvalIsInterpolated( TRANSLATE_ATTRIBUTES, NUM_TRANSLATE_ATTRIBUTES ) );
    mAnimation->GetLookChannel()->EnableInterpolation( this->EvalIsInterpolated( ROTATE_ATTRIBUTES, NUM_ROTATE_ATTRIBUTES ) );
    mAnimation->GetUpChannel()->EnableInterpolation( this->EvalIsInterpolated( ROTATE_ATTRIBUTES, NUM_ROTATE_ATTRIBUTES ) );
    mAnimation->GetFovChannel()->EnableInterpolation( this->EvalIsInterpolated( FOV_ATTRIBUTES, NUM_FOV_ATTRIBUTES ) );
    mAnimation->GetNearClipChannel()->EnableInterpolation( this->EvalIsInterpolated( NEARCLIP_ATTRIBUTES, NUM_NEARCLIP_ATTRIBUTES ) );
    mAnimation->GetFarClipChannel()->EnableInterpolation( this->EvalIsInterpolated( FARCLIP_ATTRIBUTES, NUM_FARCLIP_ATTRIBUTES ) );

    mAnimOptimization.Initialize( mSceneNode->MayaObject() );

//    if ( NumAnimRanges() > 1 )
//    {
//        if ( mAnimation != NULL )
//        {
//            sprintf( animname, "%s_%d_%d", mAnimation->GetName(), startFrame, ( startFrame + numframes - 1 ) );
//            mAnimation->SetName( animname );
//        }
//    }
}

//===========================================================================
// CameraAnimNode::FillNode      (virtual)
//===========================================================================
// Description: Responsible for setting animation keys for Cameras.  This is
//              initiated from AnimNodes::FillNodes() which is called from
//              TraversalController::MainLoop().
//
//              Maya's current frame has been set from AnimNode::FillNodes().
//
//              Inherited from the Pure Virtual Function in AnimNode.
//
// Constraints:
//
// Parameters:  int frame: The frame at which to set the key.
//
// Return:      (void)
//
//===========================================================================
void
CameraAnimNode::FillNode(int frame)
{
    MFnCamera camera(mSceneNode->MayaObject());

    // Get the camera's look and up vector
    MPoint  p   = camera.eyePoint(MSpace::kObject);
    MVector lv  = camera.viewDirection(MSpace::kObject);
    MVector uv  = camera.upDirection(MSpace::kObject);
    double  fov = camera.horizontalFieldOfView();
    double  nclp = camera.nearClippingPlane() * SceneNode::UIScale();
    double  fclp = camera.farClippingPlane() * SceneNode::UIScale();

    tlPoint lp((float)p.x, (float)p.y, (float)-p.z);
    tlPoint llv((float)lv.x, (float)lv.y, (float)-lv.z);
    tlPoint luv((float)uv.x, (float)uv.y, (float)-uv.z);

    tlMatrix worldmatrix;
    mSceneNode->WorldMatrix(worldmatrix);

    tlPoint wp  = (lp * worldmatrix)*SceneNode::UIScale();
    tlPoint wlv = VectorTransform(worldmatrix, llv);
    tlPoint wuv = VectorTransform(worldmatrix, luv);

    mAnimation->GetTranslationChannel()->SetKey(frame, frame, wp);
    mAnimation->GetLookChannel()->SetKey(frame, frame, wlv);
    mAnimation->GetUpChannel()->SetKey(frame, frame, wuv);
    mAnimation->GetFovChannel()->SetKey(frame, frame, fov);
    mAnimation->GetNearClipChannel()->SetKey(frame, frame, nclp );
    mAnimation->GetFarClipChannel()->SetKey(frame, frame, fclp );
}

//===========================================================================
// CameraAnimNode::OptimizeNode
//===========================================================================
// Description: Performs an optimization on this Camera animation.
//              If the optimized animation is static it is deleted and
//              set to NULL; otherwise, its name is validated against
//              those previously encountered.  If a name clash is detected
//              the name is re-assigned using that returned by ::ValidateName().
//
// Constraints:
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
void
CameraAnimNode::OptimizeNode(void)
{
    if ( mAnimation )
    {

#ifndef ANIMNODE_DISABLE_OPTIMIZE
        tlAnimationTolerances                   tolerances;
        tolerances.SetUsePeakDetection( ExporterOptions::UsePeakDetection() );
        if ( mAnimOptimization.Enable() )
        {
            tolerances.SetFloatTolerance( mAnimOptimization.ThresholdFloat() );
            tolerances.SetColourTolerance( mAnimOptimization.ThresholdColour());
            tolerances.SetVectorTolerance( mAnimOptimization.ThresholdPos() );
        }

        mAnimation->RoughOptimization( tolerances );
#endif      // ANIMNODE_DISABLE_OPTIMIZE

        if ( mAnimation->IsStatic() )
        {
            //
            // Make sure to remove from the inventory!!!
            //
            if(SceneNode::Inventory()->Remove(mAnimation) == 0)
            {
                //
                // Wasn't in the inventory so delete
                //
                delete mAnimation;
            }
            mAnimation = NULL;
        }
    }
}

tlFrameController*
CameraAnimNode::FinalizeNode(void)
{
    tlFrameController*          pFC = NULL;

    if ( mAnimation )
    {
        char newName[256];
        if ( !ValidateName( mAnimation->GetName(), newName ) )
        {
            mAnimation->SetName( newName );
        }

        // Create Frame Controller
        pFC = new tlFrameController;
        pFC->SetName(mAnimation->GetName());
        pFC->SetType(Pure3DAnimationTypes::CAMERA_CAM);
        pFC->SetHierarchyName(mSceneNode->Name());
        pFC->SetAnimationName(mAnimation->GetName());

        SceneNode::Inventory()->Store(mAnimation);
        SceneNode::Inventory()->Store(pFC);

        SetFinal();
    }

    return pFC;
}

//===========================================================================
// CameraAnimNode::CleanUp
//===========================================================================
// Description: Deletes the allocated animation if it has not been added
//              to the Inventory.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void
CameraAnimNode::CleanUp(void)
{
    if ( !Finalized() )
    {
        delete mAnimation;
        mAnimation = NULL;
    }
}

//**************************************************************
// Class LightAnimNode
//**************************************************************
//===========================================================================
// LightAnimNode::SetupNode     (virtual)
//===========================================================================
// Description: Creates the Animation channels for the Light attributes:
//                  Colour: ALL
//                  Enable: ALL
//                  Position: Point, Spot
//                  Direction: Directional, Spot
//                  Attenuation: Point, Spot
//                  Cone Angle: Spot
//
// Constraints: While it may seem unnecessary to create a Position channel
//              (since this is stored in the transform's tlAnimation chunk)
//              it happens that Lights do not use the SceneGraph for
//              transformational information.  Thus, this information must
//              be duplicated here.
//
// Parameters:  int numframes: The number of frames to allocate in each
//                             Animation channel.
//              float framerate: The framerate of the Animation.
//
// Return:      (void)
//
//===========================================================================
void
LightAnimNode::SetupNode(int numframes, float framerate, int startFrame )
{
    char animname[256];
    ExporterOptions::BuildAnimationName( kLightAnimationMode, mSceneNode->Name(), animname );

    mAnimation = new tlLightAnim;
    SetFinal( false );

    mAnimation->SetName(animname);
    mAnimation->SetFrameRate(framerate);
    mAnimation->SetNumFrames(numframes);
    mAnimation->SetCyclic( mbIsCyclic );

    mAnimOptimization.Initialize( mSceneNode->MayaObject() );

//    if ( NumAnimRanges() > 1 )
//    {
//        if ( mAnimation != NULL )
//        {
//            sprintf( animname, "%s_%d_%d", mAnimation->GetName(), startFrame, ( startFrame + numframes - 1 ) );
//            mAnimation->SetName( animname );
//        }
//    }

    // The channels created are dependent on the type of Light being animated.
    // Note: tlLight::Type() is specified in SceneNode::BuildLights().
    mAnimation->CreateColourChannel( numframes );
    mAnimation->CreateEnableChannel( numframes );

    // Position required for for all light types to support p3dDecayRange & Lights Chooser
    mAnimation->CreatePositionChannel( numframes );
    mAnimation->GetPositionChannel()->EnableInterpolation( this->EvalIsInterpolated( TRANSLATE_ATTRIBUTES, NUM_TRANSLATE_ATTRIBUTES ) );

    if ( mLight->Type() == tlLight::Directional )
    {
        mAnimation->CreateDirectionChannel( numframes );
        mAnimation->GetDirectionChannel()->EnableInterpolation( this->EvalIsInterpolated( ROTATE_ATTRIBUTES, NUM_ROTATE_ATTRIBUTES ) );
    }

    if ( mLight->Type() == tlLight::Point )
    {
        mAnimation->CreateAttenuationChannel( numframes );
        mAnimation->GetPositionChannel()->EnableInterpolation( this->EvalIsInterpolated( TRANSLATE_ATTRIBUTES, NUM_TRANSLATE_ATTRIBUTES ) );
        mAnimation->GetAttenuationChannel()->EnableInterpolation( this->EvalIsInterpolated( ATTENUATE_ATTRIBUTES, NUM_ATTENUATE_ATTRIBUTES ) );
    }

    if ( mLight->Type() == tlLight::Spot )
    {
        mAnimation->CreateDirectionChannel( numframes );
        mAnimation->CreateConeAngleChannel( numframes );
        mAnimation->CreateAttenuationChannel( numframes );
        mAnimation->GetPositionChannel()->EnableInterpolation( this->EvalIsInterpolated( TRANSLATE_ATTRIBUTES, NUM_TRANSLATE_ATTRIBUTES ) );
        mAnimation->GetDirectionChannel()->EnableInterpolation( this->EvalIsInterpolated( ROTATE_ATTRIBUTES, NUM_ROTATE_ATTRIBUTES ) );
        mAnimation->GetConeAngleChannel()->EnableInterpolation( this->EvalIsInterpolated( CONEANGLE_ATTRIBUTES, NUM_CONEANGLE_ATTRIBUTES ) );
        mAnimation->GetAttenuationChannel()->EnableInterpolation( this->EvalIsInterpolated( ATTENUATE_ATTRIBUTES, NUM_ATTENUATE_ATTRIBUTES ) );
    }

}

//===========================================================================
// LightAnimNode::FillNode      (virtual)
//===========================================================================
// Description: Responsible for setting animation keys for Lights.  This is
//              initiated from AnimNodes::FillNodes() which is called from
//              TraversalController::MainLoop().
//
//              Maya's current frame has been set from AnimNode::FillNodes().
//
//              Inherited from the Pure Virtual Function in AnimNodes.
//
// Constraints: It is assumed that all necessary animation channels will be
//              allocated with enough keys to store the entire slider range.
//
// Parameters:  int frame: The frame at which to set the key.
//
// Return:      (void)
//
//===========================================================================
void
LightAnimNode::FillNode(int frame)
{
    // Colour is base generic
    MFnLight light(mSceneNode->MayaObject());
    MColor colour   = light.color();
    float inten     = light.intensity();
    float mul       = __min( 1.0, inten );

    // Note: tlLight::Type() is specified in SceneNode::BuildLights().

    // Colour: ALL Light types
    tlColour                    lightColour;

    // For Lights that support falloff, Intensity multiplier is clamped to 1.0
    // and the effects of Intensity are applied via the Attenuation channel.
    if ( ( mLight->Type() == tlLight::Point ) || ( mLight->Type() == tlLight::Spot ) )
    {
        lightColour = tlColour( ( colour.r * mul ), ( colour.g * mul ), ( colour.b * mul ) );
    }
    // For Lights that do not support falloff, full Intensity is applied to Colour.
    else
    {
        lightColour = tlColour( ( colour.r * inten ), ( colour.g * inten ), ( colour.b * inten ) );
    }

    // Enable: ALL Light types
    mAnimation->GetEnableChannel()->SetKey(frame,frame, mSceneNode->IsVisible() );

    // Position required for for all light types to support p3dDecayRange & Lights Chooser
    tlPoint worldpos;
    mSceneNode->WorldPosition(worldpos);
    worldpos *= SceneNode::UIScale();
    mAnimation->GetPositionChannel()->SetKey(frame,frame,worldpos);

    // Attenuation: Point, Spot
    if ( ( mLight->Type() == tlLight::Point ) || ( mLight->Type() == tlLight::Spot ) )
    {
        MFnNonAmbientLight      fnNonAmbientLight( mSceneNode->MayaObject() );

        float constant = 1.0F;
        float linear   = 0.0F;
        float squared  = 0.0F;

        int decay_rate = fnNonAmbientLight.decayRate();

        // Maya uses only a single decay type.
        if (decay_rate == 1)
        {
            linear = 1.0F;
            constant = 0.0F;        // No 'constant' if decayType is 'linear'
        }
        if (decay_rate == 2)
        {
            squared = 1.0F;
            constant = 0.0F;        // No 'constant' if decayType is 'squared'
        }

        if ( inten != 0.0f )
        {
            constant    /= inten;           //decrease the affect of intensity
            linear      /= inten;
            squared     /= inten;
        }

        // Adjust for Maya's UI unit
        linear   /= SceneNode::UIScale();
        squared  /= ( SceneNode::UIScale() * SceneNode::UIScale() );

        mAnimation->GetAttenuationChannel()->SetKey( frame, frame, tlPoint( constant, linear, squared ) );
    }

    // Direction: Directional, Spot
    if ( ( mLight->Type() == tlLight::Directional ) || ( mLight->Type() == tlLight::Spot ) )
    {
        tlMatrix worldmatrix;
        mSceneNode->WorldMatrix(worldmatrix);

        tlPoint dv(0.0F, 0.0F, 1.0F);
        tlPoint wdv = VectorTransform(worldmatrix, dv); // 3 x 3

        mAnimation->GetDirectionChannel()->SetKey(frame,frame,wdv);
    }

    // Cone Angle: Spot
    if ( mLight->Type() == tlLight::Spot )
    {
        MFnSpotLight            fnSpot( mSceneNode->MayaObject() );

        float                   fPhi = fnSpot.coneAngle();
        float                   fTheta = fnSpot.penumbraAngle();
        float                   fFalloff = fnSpot.dropOff();

        mAnimation->GetConeAngleChannel()->SetKey( frame, frame, tlPoint( fPhi, fTheta, fFalloff ) );
    }

    mAnimation->GetColourChannel()->SetKey( frame, frame, lightColour);
}

//===========================================================================
// LightAnimNode::OptimizeNode
//===========================================================================
// Description: Performs an optimization on this Light animation.
//              If the optimized animation is static it is deleted and
//              set to NULL; otherwise, its name is validated against
//              those previously encountered.  If a name clash is detected
//              the name is re-assigned using that returned by ::ValidateName().
//
// Constraints:
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
void
LightAnimNode::OptimizeNode(void)
{
    if ( mAnimation )
    {

#ifndef ANIMNODE_DISABLE_OPTIMIZE
        tlAnimationTolerances                   tolerances;
        tolerances.SetUsePeakDetection( ExporterOptions::UsePeakDetection() );
        if ( mAnimOptimization.Enable() )
        {
            tolerances.SetFloatTolerance( mAnimOptimization.ThresholdFloat() );
            tolerances.SetColourTolerance( mAnimOptimization.ThresholdColour());
            tolerances.SetVectorTolerance( mAnimOptimization.ThresholdPos() );
            tolerances.SetQuatTolerance( mAnimOptimization.ThresholdRot());
        }

        mAnimation->RoughOptimization( tolerances );
#endif      // ANIMNODE_DISABLE_OPTIMIZE

        if ( mAnimation->IsStatic() )
        {
            //
            // Make sure to remove from the inventory!!!
            //
            if(SceneNode::Inventory()->Remove(mAnimation) == 0)
            {
                //
                // Wasn't in the inventory so delete
                //
                delete mAnimation;
            }
            mAnimation = NULL;
        }
    }
}

tlFrameController*
LightAnimNode::FinalizeNode(void)
{
    tlFrameController*          pFC = NULL;

    if ( mAnimation )
    {
        char newName[256];
        if ( !ValidateName( mAnimation->GetName(), newName ) )
        {
            mAnimation->SetName( newName );
        }

        // Create Frame Controller
        pFC = new tlFrameController;
        pFC->SetName(mAnimation->GetName());
        pFC->SetType(Pure3DAnimationTypes::LIGHT_LITE);
        pFC->SetHierarchyName(mLight->GetName());
        pFC->SetAnimationName(mAnimation->GetName());

        SceneNode::Inventory()->Store(mAnimation);
        SceneNode::Inventory()->Store(pFC);

        SetFinal();
    }

    return pFC;
}

//===========================================================================
// LightAnimNode::CleanUp
//===========================================================================
// Description: Deletes the allocated animation if it has not been added
//              to the Inventory.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void
LightAnimNode::CleanUp(void)
{
    if ( !Finalized() )
    {
        delete mAnimation;
        mAnimation = NULL;
    }
}

//**************************************************************
// Class TextureAnimNode
//**************************************************************
TextureAnimNode::TextureAnimNode( const MObject& textureNode, const MString& colour, const MString& alpha, const MDagPath& dagPath, int volumeDepth, bool bExportMipmaps , int mipmapMin )
:   AnimNode( NULL ),
    mAnimation( NULL ),
    mTextureNode( textureNode ),
    mColourChannel( colour ),
    mAlphaChannel( alpha ),
    mDagPath( dagPath ),
    mCurrentColourFile( NULL_STRING ),
    mVolumeDepth( volumeDepth ),
    mbExportMipmaps( bExportMipmaps ),
    mMipmapMin( mipmapMin ),
    mbHasColour( false ),
    mbColourIsAnimated( false ),
    mColourType( TextureLayer::None ),
    mbHasAlpha( false ),
    mbAlphaIsAnimated( false ),
    mAlphaType( TextureLayer::None ),
    mTransparency( 0.0 )
{
    MStatus                     status;

//    char buf[1024];
//    strcpy( buf, mDagPath.fullPathName().asChar() );

    MFnDependencyNode           fnDependNode( mTextureNode, &status );
    if ( status == MS::kSuccess )
    {
        mTextureName = fnDependNode.name();
        mQueuedTextureNames.append( mTextureName );

// --- Find the name of the texture used by the channels at this frame.

        MPlug                       plugColour;
        MPlugArray                  colourConnections;
        plugColour = fnDependNode.findPlug( mColourChannel, &status );
        if ( mbHasColour = plugColour.connectedTo( colourConnections, true /* asDst */, false, &status ) )
        {
            mColourNode = colourConnections[0].node();
        }

        if ( mAlphaChannel != "" )
        {
            MPlug                       plugAlpha;
            MPlugArray                  alphaConnections;
            plugAlpha = fnDependNode.findPlug( mAlphaChannel, &status );
            if ( mbHasAlpha = plugAlpha.connectedTo( alphaConnections, true /* asDst */, false, &status ) )
            {
                mAlphaNode = alphaConnections[0].node();
            }
        }

// --- Determine if Colour/Alpha is FILE, PROJECTION or PROCEDURAL

        MPlug                   plugAnim;
        MPlug                   plugChild;
        MPlugArray              plugConnections;
        unsigned int t;

        if ( mbHasColour )
        {
            MFn::Type                   colourMayaType = mColourNode.apiType();
            MFnDependencyNode           fnColour( mColourNode );

            mColourBaseName = fnColour.name();

            switch( colourMayaType )
            {
                case MFn::kFileTexture:
                {
                    mColourType = TextureLayer::File;

                    // Here we should interpret the scene location w/r/t the project location
                    // and build an absolute path to the texture.
                    plugAnim = fnColour.findPlug( "fileTextureName" );
                    plugAnim.getValue( mColourBaseName );

                    plugAnim = fnColour.findPlug( "useFrameExtension" );
                    plugAnim.getValue( mbColourIsAnimated );

                    plugAnim = fnColour.findPlug( "frameExtension", &status );

                    plugAnim.connectedTo( plugConnections, true /* asDst */, false, &status );
                    if ( plugConnections.length() > 0 )
                    {
                        MObject                 connectedTo( plugConnections[0].node() );

                        MFnAnimCurve            fnAnimCurve( connectedTo, &status );
                        if ( status == MS::kSuccess )
                        {
                            SetIsCyclic( fnAnimCurve.postInfinityType() == MFnAnimCurve::kCycle );
                        }
                    }

                    break;
                }

                case MFn::kRamp:
                case MFn::kBulge:
                case MFn::kChecker:
                case MFn::kCloth:
                case MFn::kFractal:
                case MFn::kGrid:
                case MFn::kMountain:
                case MFn::kWater:
                case MFn::kNoise:
                {
                    mColourType = TextureLayer::Procedural;

                    // Handle ramp.colorEntryList
                    plugAnim = fnColour.findPlug( "colorEntryList", &status );
                    if ( status == MS::kSuccess )
                    {
                        unsigned int c;
                        for ( c = 0; c < plugAnim.numChildren(); c++ )
                        {
                            plugChild = plugAnim.child(c);

                            const char* foo = plugChild.name().asChar();

                            plugChild.connectedTo( plugConnections, true /* asDst */, false, &status );
                            if ( plugConnections.length() > 0 )
                            {
                                mbColourIsAnimated = true;
                                break;
                            }

                            unsigned int rgb;
                            for ( rgb = 0; rgb < plugChild.numChildren(); rgb++ )
                            {
                                MPlug       plugRGB = plugChild.child(rgb);

                                plugRGB.connectedTo( plugConnections, true /* asDst */, false, &status );
                                if ( plugConnections.length() > 0 )
                                {
                                    mbColourIsAnimated = true;
                                    break;
                                }
                            }
                        }
                    }

                    // Compound (e.g. Color) plugs
                    for ( t = 0; t < NUM_TEXTURE2D_COMPOUND_PLUGS; t++ )
                    {
                        plugAnim = fnColour.findPlug( Texture2dCompoundPlugs[t], &status );
                        if ( status == MS::kSuccess )
                        {
                            plugAnim.connectedTo( plugConnections, true /* asDst */, false, &status );
                            if ( plugConnections.length() > 0 )
                            {
                                mbColourIsAnimated = true;
                            }

                            unsigned int rgb;
                            for ( rgb = 0; rgb < plugAnim.numChildren(); rgb++ )
                            {
                                MPlug       plugRGB = plugAnim.child(rgb);

                                plugRGB.connectedTo( plugConnections, true /* asDst */, false, &status );
                                if ( plugConnections.length() > 0 )
                                {
                                    mbColourIsAnimated = true;
                                    break;
                                }
                            }
                        }

                        if ( mbColourIsAnimated ) break;
                    }

                    // Single value plugs
                    for ( t = 0; t < NUM_TEXTURE2D_PLUGS; t++ )
                    {
                        plugAnim = fnColour.findPlug( Texture2dPlugs[t], &status );
                        if ( status == MS::kSuccess )
                        {
                            plugAnim.connectedTo( plugConnections, true /* asDst */, false, &status );
                            if ( plugConnections.length() > 0 )
                            {
                                mbColourIsAnimated = true;
                            }
                        }

                        if ( mbColourIsAnimated ) break;
                    }

                    break;
                }

                case MFn::kBrownian:
                case MFn::kCloud:
                case MFn::kCrater:
                case MFn::kGranite:
                case MFn::kLeather:
                case MFn::kMarble:
                case MFn::kRock:
                case MFn::kSnow:
                case MFn::kSolidFractal:
                case MFn::kStucco:
                case MFn::kWood:
                case MFn::kVolumeNoise:
                {
                    mColourType = TextureLayer::Procedural;

                    // Compound (e.g. Color) plugs
                    for ( t = 0; t < NUM_TEXTURE3D_COMPOUND_PLUGS; t++ )
                    {
                        plugAnim = fnColour.findPlug( Texture3dCompoundPlugs[t], &status );
                        if ( status == MS::kSuccess )
                        {
                            plugAnim.connectedTo( plugConnections, true /* asDst */, false, &status );
                            if ( plugConnections.length() > 0 )
                            {
                                mbColourIsAnimated = true;
                            }

                            unsigned int rgb;
                            for ( rgb = 0; rgb < plugAnim.numChildren(); rgb++ )
                            {
                                MPlug       plugRGB = plugAnim.child(rgb);

                                plugRGB.connectedTo( plugConnections, true /* asDst */, false, &status );
                                if ( plugConnections.length() > 0 )
                                {
                                    mbColourIsAnimated = true;
                                    break;
                                }
                            }
                        }

                        if ( mbColourIsAnimated ) break;
                    }

                    // Single value plugs
                    for ( t = 0; t < NUM_TEXTURE3D_PLUGS; t++ )
                    {
                        plugAnim = fnColour.findPlug( Texture3dPlugs[t], &status );
                        if ( status == MS::kSuccess )
                        {
                            plugAnim.connectedTo( plugConnections, true /* asDst */, false, &status );
                            if ( plugConnections.length() > 0 )
                            {
                                mbColourIsAnimated = true;
                            }
                        }

                        if ( mbColourIsAnimated ) break;
                    }

                    break;
                }



                case MFn::kProjection:
                {
                    mColourType = TextureLayer::Projection;
                    break;
                }
                default:
                {
                    mColourType = TextureLayer::Invalid;
                }
            }
        }       // if ( hasColour )

        if ( mbHasAlpha )
        {
            MFn::Type                   alphaMayaType = mAlphaNode.apiType();
            MFnDependencyNode           fnAlpha( mAlphaNode );

            mAlphaBaseName = fnAlpha.name();

            switch ( alphaMayaType )
            {
                case MFn::kFileTexture:
                {
                    mAlphaType = TextureLayer::File;

                    plugAnim = fnAlpha.findPlug( "fileTextureName" );
                    plugAnim.getValue( mAlphaBaseName );

                    plugAnim = fnAlpha.findPlug( "useFrameExtension" );
                    plugAnim.getValue( mbAlphaIsAnimated );

                    break;
                }
                case MFn::kRamp:
                {
                    mAlphaType = TextureLayer::Procedural;
                    break;
                }
                case MFn::kProjection:
                {
                    mAlphaType = TextureLayer::Projection;
                    break;
                }
                default:
                {
                    mAlphaType = TextureLayer::Invalid;
                }
            }
        }       // if ( hasAlpha )

        // ** NOTE: It is assumed that the TextureLayer for the START FRAME has been stored in the Inventory.
        // This way if the texture never animates a valid entry will still exist.

        // OK, this goes a bit against the grain -- the TextureAnimNode is responsible
        // for storing a static texture.  But it's either this or duplicating
        // reams of code.  So why not?

        // If this is a static animation, still need tlTexture in Inventory.
        ReadScalars();
        tlInventory* pInventory = SceneNode::Inventory();
        AddCurrentTextureToInventory( SceneNode::Inventory() );

    }   // if ( textureNode is valid )
}

TextureAnimNode::~TextureAnimNode()
{
    // MEMORY LEAK PATCH: 31 May 2002
//    Clear();      // CAN'T DO THIS!  mUniqueTextureLayers is STATIC!!
}

bool TextureAnimNode::HasQueuedTexture( const MString& textureName )
{
    bool bQueued = false;

    unsigned int i;
    for ( i = 0; i < mQueuedTextureNames.length(); i++ )
    {
        if ( mQueuedTextureNames[i] == textureName )
        {
            bQueued = true;
            break;
        }
    }

    return bQueued;
}

void
TextureAnimNode::SetupNode( int numframes, float framerate, int startframe )
{
    char animname[256];
    ExporterOptions::BuildAnimationName( kTextureAnimationMode, mTextureName.asChar(), animname );

    mAnimation = new tlTextureAnim;
    SetFinal( false );

    mAnimation->SetName(animname);
    mAnimation->SetFrameRate(framerate);
    mAnimation->SetNumFrames(numframes);
    mAnimation->SetCyclic( mbIsCyclic );

    // No optimization options for Entity animation
        
    mAnimation->CreateTextureChannel(numframes);

//    if ( NumAnimRanges() > 1 )
//    {
//        if ( mAnimation != NULL )
//        {
//            sprintf( animname, "%s_%d_%d", mAnimation->GetName(), startframe, ( startframe + numframes - 1 ) );
//            mAnimation->SetName( animname );
//        }
//    }

}

void
TextureAnimNode::ReadScalars()
{
    MStatus                     status;
    MFnDependencyNode           fnDependNode( mTextureNode, &status );
    if ( status == MS::kSuccess )
    {
// --- Read the diffuse colour at this frame
    
        MPlug                       plugDiffuse;
        plugDiffuse = fnDependNode.findPlug( "diffuse", &status );
        if ( status == MS::kSuccess )
        {
            float rgb[3];
            plugDiffuse.child(0).getValue( rgb[0] );
            plugDiffuse.child(1).getValue( rgb[1] );
            plugDiffuse.child(2).getValue( rgb[2] );

            mDiffuse = tlColour( rgb[0], rgb[1], rgb[2], 1.0F );
        }

// --- Read the transparency 

        MPlug                       plugTrans;
        plugTrans = fnDependNode.findPlug( "transparency", &status );
        if ( status == MS::kSuccess )
        {
            float rgb[3];
            plugTrans.child(0).getValue( rgb[0] );
            plugTrans.child(1).getValue( rgb[1] );
            plugTrans.child(2).getValue( rgb[2] );

            mTransparency = tlColour( rgb[0], rgb[1], rgb[2], 1.0F ).Luminosity();
        }
    }
}

void
TextureAnimNode::FillNode( int frame )
{
    ReadScalars();

// --- Set keyframe on TextureChannel specifying this texture.
    TextureLayer*               pTextureLayer = NULL;
    pTextureLayer = AddCurrentTextureToInventory( SceneNode::Inventory() );

    if ( pTextureLayer != NULL )
    {
        mAnimation->GetTextureChannel()->SetKey( frame, frame, pTextureLayer->TextureName());
    }
}

void
TextureAnimNode::OptimizeNode( void )
{
    if ( mAnimation != NULL )
    {

#ifndef ANIMNODE_DISABLE_OPTIMIZE
        tlAnimationTolerances                   tolerances;

        // No optimization options for Entity animation

        mAnimation->RoughOptimization( tolerances );
#endif      // ANIMNODE_DISABLE_OPTIMIZE

        if ( mAnimation->IsStatic() )
        {
            delete mAnimation;
            mAnimation = NULL;
        }
    }
}

tlFrameController*
TextureAnimNode::FinalizeNode( void )
{
    tlFrameController*          pFC = NULL;

    if ( mAnimation )
    {
        char newName[256];
        if ( !ValidateName( mAnimation->GetName(), newName ) )
        {
            mAnimation->SetName( newName );
        }

        // Create Frame Controller
        pFC = new tlFrameController;
        pFC->SetName(mAnimation->GetName());
        pFC->SetType(Pure3DAnimationTypes::TEXTURE_TEX);
        pFC->SetHierarchyName(mTextureName.asChar());
        pFC->SetAnimationName(mAnimation->GetName());

        SceneNode::Inventory()->Store(mAnimation);
        SceneNode::Inventory()->Store(pFC);

        SetFinal();
    }

    return pFC;
}

//===========================================================================
// TextureAnimNode::CleanUp
//===========================================================================
// Description: Deletes the allocated animation if it has not been added
//              to the Inventory.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void
TextureAnimNode::CleanUp( void )
{
    if ( !Finalized() )
    {
        delete mAnimation;
        mAnimation = NULL;
    }
}

//===========================================================================
// TextureAnimNode::AddCurrentTextureToInventory
//===========================================================================
// Description:
//
//              Note: The TextureAnimNode is used to add non-animated
//              Textures to the Inventory.  When a Texture is encountered
//              while processing a mesh's shader, a TextureAnimNode is
//              created.  The Constructor for a TextureAnimNode takes care
//              of determining if the Texture is unique - and must be added
//              to the Inventory - or if it already exists.
//
// Constraints: *** This MUST always return a valid TextureLayer*.
//                  When animated, a TextureAnimNode must set a valid key
//                  on all frames.  This key cannot be NULL!
//
//  Parameters:
//
//      Return:
//
//===========================================================================
TextureLayer*
TextureAnimNode::AddCurrentTextureToInventory( tlInventory* pInventory )
{
    MStatus                     status;

    TextureLayer*               pTextureLayer = NULL;
    tlTexture*                  pTexture = NULL;

    MFnDependencyNode           fnColourNode( mColourNode );
    MString                     currentColourFile( mColourBaseName );
    MFnDependencyNode           fnAlphaNode( mAlphaNode );
    MString                     currentAlphaFile( mAlphaBaseName );

    MPlug                       plugExt;
    int                         frameExt;
    char                        filename[_MAX_PATH];

    // Default Current Colour file is NULL.
    mCurrentColourFile = NULL_STRING;

// --- Build filename used for Colour/Alpha

    if ( mColourType == TextureLayer::File )
    {
        if ( mbColourIsAnimated )
        {
            plugExt = fnColourNode.findPlug( "frameExtension" );
            plugExt.getValue( frameExt );

            // Strip frame if exists
            MStringArray        tokens;
            currentColourFile.split( '.', tokens );
            if ( tokens.length() == 3 )
            {
                currentColourFile = tokens[0] + "." + tokens[1];
            }

            currentColourFile += ".";
            currentColourFile += frameExt;

//            strcpy(filename, currentColourFile.asChar());
//            pTextureLayer->SetTextureName( JustFileName( filename ) );
//            pTextureLayer->SetColourFile( currentColourFile.asChar() );
        }
//        else
//        {
//            strcpy(filename, mColourBaseName.asChar());
//            pTextureLayer->SetTextureName( JustFileName( filename ) );
//            pTextureLayer->SetColourFile( mColourBaseName.asChar() );
//        }
    }

    if ( mAlphaType == TextureLayer::File )
    {
        if ( mbAlphaIsAnimated )
        {
            plugExt = fnAlphaNode.findPlug( "frameExtension" );
            plugExt.getValue( frameExt );

            // Strip frame if exists
            MStringArray        tokens;
            currentAlphaFile.split( '.', tokens );
            if ( tokens.length() == 3 )
            {
                currentAlphaFile = tokens[0] + "." + tokens[1];
            }

            currentAlphaFile += ".";
            currentAlphaFile += frameExt;

//            pTextureLayer->SetAlphaFile( currentAlphaFile.asChar() );
        }
//        else
//        {
//            pTextureLayer->SetAlphaFile( mAlphaBaseName.asChar() );
//        }
    }

// --- Check whether a texture with this Colour/Alpha combo has already been used.

//    // If no Colour file then there's nothing to add...
//    if ( currentColourFile == "" ) return pTextureLayer;

    // An EMPTY string (e.g. "") is a valid unique texture!

    unsigned i;
    bool bMatch = false;
    for ( i = 0; i < mUniqueTextureLayers.Count(); i++ )
    {
        TextureLayer* ptl = mUniqueTextureLayers[i];

        if ( 0 == strcmp( ptl->ColourFile(), currentColourFile.asChar() ) )
        {
            // If Colour matches but not alpha then name will be
            // Validated so as to be made unique.
            // If both match the item will not be added to the inventory.
            if (  0 == strcmp( ptl->AlphaFile(), currentAlphaFile.asChar() ) )
            {
                pTextureLayer = ptl;
                bMatch = true;
                break;
            }
        }
    }

// --- If match and this is a procedural, check if it is being animated

    if ( bMatch && ( mColourType == TextureLayer::Procedural ) && mbColourIsAnimated )
    {
        // Procedural is animated.. save every one.
        bMatch = false;
    }

// --- Add the TextureLayer to the Inventory.

    // if this texture is already in the inventory, skip loading it
//    pTexture = toollib_find<tlTexture>( SceneNode::Inventory(), pTextureLayer->TextureName() );

    if ( !bMatch )
    {
        CMayaWorkspace::BuildPathFromWorkspace( kRenderSourceImages, currentColourFile.asChar(), filename, _MAX_PATH );
        if ( strlen( JustFileName( filename ) ) == 0 )
        {
            CMayaWorkspace::BuildPathFromWorkspace( kRenderSourceImages, currentAlphaFile.asChar(), filename, _MAX_PATH );
        }
        // TODO: Tell me the justification for putting this in,
        //       and I'll consider restoring it..
        //       Note: This affects the tlShader::tlShaderTextureParamChunk; should counter this behavior.
//        if ( strlen( JustFileName( filename ) ) == 0 )
//        {
//            strcpy( filename, "Magic" );
//        }

        MString progressAnno = gProgress.Annotation();

        MString newAnno = "Loading Texture '" + MString( JustFileName( filename ) ) + "'";
        gProgress.SetAnnotation( newAnno.asChar() );

        pTextureLayer = new TextureLayer( mDiffuse, mTransparency );
        SetFinal( false );

        pTextureLayer->SetTextureName( JustFileName( filename ) );
        pTextureLayer->SetColourFile( currentColourFile.asChar(), mColourType );
        pTextureLayer->SetAlphaFile( currentAlphaFile.asChar(), mAlphaType );
        pTextureLayer->SetObjectDAGPath( mDagPath );

        // ** TODO: Check that these shouldn't come from the Shader!
        pTextureLayer->SetTextureResolution( ExporterOptions::ProceduralTextureResolutionX(), ExporterOptions::ProceduralTextureResolutionY() );

        mUniqueTextureLayers.Append( pTextureLayer );

        char newName[256];
        if ( !ValidateName( pTextureLayer->TextureName(), newName ) )
        {
            // The texture name will be a NULL string if no texture image was mapped
            // to the shader being processed.  (A procedural constitutes a texture image.)
            // If the name is empty then it's likely the load below will fail.
            pTextureLayer->SetTextureName( newName );
        }

        bool ok = pTextureLayer->Load();
        if (ok)
        {
            if ( mColourChannel == "BumpMap")
            {
                pTextureLayer->Texture()->GenerateBumpmap();   //this converts the texture to a normal map
            }
            if ( mVolumeDepth > 1)
            {
                pTextureLayer->Texture()->GenerateVolumeTexture( mVolumeDepth );   //this converts the texture to a volume texture
            }
            // Eventually this should be a checkbox in the UI that specifies
            // "Generate Mipmaps During Export"
            if ( mbExportMipmaps )
            {
                pTextureLayer->Texture()->GenerateMipmaps( 8 /* max */, mMipmapMin, 0 /* same as original */, false /* no colour key */, NULL );
            }

            pTextureLayer->AddToInventory( this->mTextureNode, SceneNode::Inventory() );
        }

        gProgress.SetAnnotation( progressAnno.asChar() );
    }

    // If created (and added) a valid Texture Layer, set current Colour File.
    if ( pTextureLayer != NULL )
    {
        mCurrentColourFile = pTextureLayer->TextureName();
    }

    // This must NOT be NULL!
    return pTextureLayer;
}

const char*
TextureAnimNode::GetCurrentColourFile( void ) const
{
    return mCurrentColourFile;
}

//===========================================================================
// TextureAnimNode::Clear
//===========================================================================
// Description: Clears the mUniqueTextureLayers (static) array.
//
// Constraints: Don't call this from the destructor for this class!
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void
TextureAnimNode::Clear( void )
{
    unsigned int i;
    for ( i = 0; i < mUniqueTextureLayers.Count(); i++ )
    {
        delete mUniqueTextureLayers[i];
        mUniqueTextureLayers[i] = NULL;
    }
    mUniqueTextureLayers.ZeroCount();
    mQueuedTextureNames.clear();
}

//**************************************************************
// Class DeformerExpressionAnimNode
//
//   ][ ][ ][  Abandon hope all ye who enter here ][ ][ ][
//
//**************************************************************

void
DeformerExpressionAnimNode::SetupNode(int numframes, float framerate, int startFrame )
{
    // Get the cached tlExpressionMixer and tlExpressionAnim data
    // from the DeformerExpression Class.
    std::vector<tlExpressionMixer*>             mixers = DeformerExpression::Mixers();
    std::vector<tlExpressionAnim*>              anims = DeformerExpression::Anims();

    if ( mSceneNode != NULL )   // [16 Oct 2002] This should not be NULL, but just in case...
    {
        mAnimOptimization.Initialize( mSceneNode->MayaObject() );
    }

    // Allocate copies of the tlExpressionAnim objects.
    // These can be added more than once (per AnimRange) so must duplicate the pointers.
    //
    exprAnim = new tlExpressionAnim( *anims[exprIndex] );
    SetFinal( false );

//    clog << " -> EXPRESSION ANIM #" << exprIndex << " @ " << hex << anims[exprIndex] << dec << " copied @ " << hex << exprAnim << dec << endl;

    // The tlExpressionMixer object is not unique per AnimRange -- just assign the pointer.
    exprMixer = mixers[exprIndex];
//    clog << " -> EXPRESSION MIXER #" << exprIndex << " @ " << hex << mixers[exprIndex] << dec << endl;

    char animName[256];
    ExporterOptions::BuildAnimationName(kExpressionAnimationMode, exprAnim->GetName(), animName);
    exprAnim->SetName(animName);

    exprAnim->SetNumFrames(numframes);
    exprAnim->SetFrameRate(framerate);
    exprAnim->SetCyclic( mbIsCyclic );

    for (int i = 0; i < exprAnim->GetNumAnimationGroups(); ++i)
    {
        tlExpressionAnimGroup* group = (tlExpressionAnimGroup*)exprAnim->GetAnimationGroup(i);
        if (group)
        {
            group->CreateStandardChannels(numframes);
            // TODO: Find a way to set interpolation ON/OFF for states
        }
    }
}

//===========================================================================
// DeformerExpressionAnimNode::FillNode      (virtual)
//===========================================================================
// Description: Responsible for setting animation keys for Skins.  This is
//              initiated from AnimNodes::FillNodes() which is called from
//              TraversalController::MainLoop().
//
//              Maya's current frame has been set from AnimNode::FillNodes().
//
//              Inherited from the Pure Virtual Function in AnimNodes.
//
// Constraints:
//
// Parameters:  int frame: The frame at which to set the key.
//
// Return:      (void)
//
//===========================================================================
void
DeformerExpressionAnimNode::FillNode(int frame)
{
    MStatus status;
    MString cmd;

//    clog << " -> FILL expressionAnim #" << exprIndex << " @ " << hex << exprAnim << dec << endl;

    for (int i = 0; i < exprAnim->GetNumAnimationGroups(); ++i)
    {
        tlExpressionAnimGroup* group = (tlExpressionAnimGroup*)exprAnim->GetAnimationGroup(i);

        double state_value;
        cmd = "getAttr ";
        cmd += group->GetName();
        cmd += ".state";
        status = MGlobal::executeCommand(cmd, state_value);

        group->GetStateChannel()->SetKey(frame,frame,(float)state_value);
    }
}

//===========================================================================
// DeformerExpressionAnimNode::OptimizeNode
//===========================================================================
// Description: Performs an optimization on this Vertex Offset animation.
//              If the optimized animation is static it is deleted and
//              set to NULL; otherwise, its name is adjusted per the
//              "Strip Reference Prefix" Exporter Option, then validated
//              against animation names previously encountered.  If a name
//              clash is detected the name is re-assigned using that returned
//              by ::ValidateName().
//
// Constraints:
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
void
DeformerExpressionAnimNode::OptimizeNode(void)
{
    if ( exprAnim )
    {

#ifndef ANIMNODE_DISABLE_OPTIMIZE
        tlAnimationTolerances                   tolerances;
        tolerances.SetUsePeakDetection( ExporterOptions::UsePeakDetection() );
        if ( mAnimOptimization.Enable() )
        {
            tolerances.SetFloatTolerance( mAnimOptimization.ThresholdFloat() );
            tolerances.SetVectorTolerance( mAnimOptimization.ThresholdPos() );  // is Vector required?
        }

        exprAnim->RoughOptimization( tolerances );
#endif      // ANIMNODE_DISABLE_OPTIMIZE

        if ( exprAnim->IsStatic() )
        {
            delete exprAnim;
            exprAnim = NULL;
        }
        else
        {
            // strip reference prefix, if necessary
            if (ExporterOptions::StripReferencePrefix())
            {
                for (int i = 0; i < exprAnim->GetNumAnimationGroups(); ++i)
                {
                    tlExpressionAnimGroup* group = (tlExpressionAnimGroup*)exprAnim->GetAnimationGroup(i);

                    char* new_name = ExporterOptions::BuildNodeName(MString(group->GetName()));
                    group->SetName(new_name);
                    strdelete(new_name);
                }
            }
        }
    }
}

tlFrameController*
DeformerExpressionAnimNode::FinalizeNode()
{
    tlFrameController*          pFC = NULL;

    if ( exprAnim != NULL )
    {
        char newName[256];
        if ( !ValidateName( exprAnim->GetName(), newName ) )
        {
            exprAnim->SetName( newName );
        }

        // create a frame controller for the mixer/animation
        pFC = new tlFrameController;
        pFC->SetName(exprAnim->GetName());
        pFC->SetType(Pure3DAnimationTypes::EXPRESSION_EXP);

        pFC->SetHierarchyName(exprMixer->GetName());

        pFC->SetAnimationName(exprAnim->GetName());

        // * Note: This only _stores_ the pointer.. it doesn't copy the object! *
        // add the expression animation to the inventory
        SceneNode::Inventory()->Store(exprAnim);

        // store frame controller in inventory
        SceneNode::Inventory()->Store(pFC);

        SetFinal();

    }

    return pFC;
}

//===========================================================================
// DeformerExpressionAnimNode::CleanUp
//===========================================================================
// Description: Deletes the allocated animation if it has not been added
//              to the Inventory.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void
DeformerExpressionAnimNode::CleanUp( void )
{
    if ( !Finalized() )
    {
        delete exprAnim;
        exprAnim = NULL;
    }
}

//**************************************************************
// Class VertexAnimationAnimNode
//**************************************************************
//
//  See vertexAnimationAnimNode.cpp
//
//**************************************************************


//**************************************************************
// Class BillboardQuadGroupAnimNode
//**************************************************************
void
BillboardQuadGroupAnimNode::AddQuadAnim(SceneNode* quad)
{
    if (quad)
    {
        mQuads.Append(quad);
    }
}

//===========================================================================
// BillboardQuadGroupAnimNode::SetupNode
//===========================================================================
// Description: Creates and initializes the necessary animation objects for
//              a billboard animation.
//
// Constraints: 
//
//  Parameters: int numFrames: The number of frames to generate for the
//                             animation.
//              float frameRate: The frame rate, actually.
//              int startFrame: The frame at which the animation starts. Used 
//                              to provide unique naming if animRanges are 
//                              present.
//
//      Return: (void)
//
//===========================================================================
void
BillboardQuadGroupAnimNode::SetupNode(int numFrames, float frameRate, int startFrame )
{
    mAnimation = new tlBillboardQuadGroupAnim;
    SetFinal( false );

    char animName[256];
    ExporterOptions::BuildAnimationName( kBillboardAnimationMode, mSceneNode->Name(), animName );

    mAnimation->SetName(animName);
    mAnimation->SetFrameRate(frameRate);
    mAnimation->SetNumFrames(numFrames);
    mAnimation->SetCyclic( mbIsCyclic );

    mAnimOptimization.Initialize( mSceneNode->MayaObject() );

//    if ( NumAnimRanges() > 1 )
//    {
//        if ( mAnimation != NULL )
//        {
//            sprintf( animName, "%s_%d_%d", mAnimation->GetName(), startFrame );
//            mAnimation->SetName( animName );
//        }
//    }

    for (int i = 0; i < mQuads.Count(); i++)
    {
        tlQuadAnimGroup* quad = mAnimation->AddQuadAnimGroup(mQuads[i]->Name());
        quad->CreateStandardChannels(numFrames);
        quad->GetColourChannel()->EnableInterpolation( EvalIsInterpolated( COLOUR_ATTRIBUTES, NUM_COLOUR_ATTRIBUTES ) );
        quad->GetUVOffsetChannel()->EnableInterpolation( EvalIsInterpolated( UVOFFSET_ATTRIBUTES, NUM_UVOFFSET_ATTRIBUTES ) );

        int cutOffMode;
        PlugValue( mQuads[i]->MayaObject(), "cutOffMode",cutOffMode);
        if (cutOffMode==NONE)
        {
            quad->DeleteUVOffsetRangeChannel();
            quad->DeleteSourceRangeChannel();
            quad->DeleteEdgeRangeChannel();
        }
    }
}

//===========================================================================
// BillboardQuadGroupAnimNode::FillNode      (virtual)
//===========================================================================
// Description: Responsible for setting animation keys for Billboard Quads.
//              This is initiated from AnimNodes::FillNodes() which is called
//              from TraversalController::MainLoop().
//
//              Maya's current frame has been set from AnimNode::FillNodes().
//
//              Inherited from the Pure Virtual Function in AnimNodes.
//
// Constraints:
//
// Parameters:  int frame: The frame at which to set the key.
//
// Return:      (void)
//
//===========================================================================
void
BillboardQuadGroupAnimNode::FillNode(int frame)
{
    for (int i = 0; i < mQuads.Count(); i++)
    {
        MMatrix inclusiveMatrix = mQuads[i]->Parent()->MayaPath().inclusiveMatrix();
        MTransformationMatrix transform(inclusiveMatrix);
        double scale[3];
        transform.getScale(scale, MSpace::kWorld);

        float red, green, blue, alpha, uvOffset[2], uvOffsetRange[2];
        float sourceRange, edgeRange, distance, unitScaleFactor;
        int cutOffMode;
        PlugValue( mQuads[i]->MayaObject(), "red", red);
        PlugValue( mQuads[i]->MayaObject(), "green", green);
        PlugValue( mQuads[i]->MayaObject(), "blue", blue);
        PlugValue( mQuads[i]->MayaObject(), "alpha", alpha);
        PlugValue( mQuads[i]->MayaObject(), "uvOffset0", uvOffset[0]);
        PlugValue( mQuads[i]->MayaObject(), "uvOffset1", uvOffset[1]);
        PlugValue( mQuads[i]->MayaObject(), "uvOffsetAngleRange0", uvOffsetRange[0]);
        PlugValue( mQuads[i]->MayaObject(), "uvOffsetAngleRange1", uvOffsetRange[1]);
        PlugValue( mQuads[i]->MayaObject(), "sourceAngleRange", sourceRange);
        PlugValue( mQuads[i]->MayaObject(), "edgeAngleRange", edgeRange);
        PlugValue( mQuads[i]->MayaObject(), "distance",distance);
        PlugValue( mQuads[i]->MayaObject(), "displaySize",unitScaleFactor);
        PlugValue( mQuads[i]->MayaObject(), "cutOffMode",cutOffMode);
        unitScaleFactor /= SceneNode::InternalScale();

        tlMatrix hmatrix;
        mQuads[i]->Parent()->Matrix(hmatrix);

        tlQuadAnimGroup* group = mAnimation->GetQuadAnimGroup(i);
        if (mSceneNode != mQuads[i])
        {
            group->GetTranslationChannel()->SetKey(frame,frame,hmatrix.GetRow(3)*SceneNode::UIScale());
            group->GetRotationChannel()->SetKey(frame,frame,MatrixToQuaternion(hmatrix));
        }
        group->GetVisibilityChannel()->SetKey(frame,frame,mQuads[i]->Parent()->IsVisible());
        group->GetWidthChannel()->SetKey(frame,frame,fabsf(scale[0]*unitScaleFactor));
        group->GetHeightChannel()->SetKey(frame,frame,fabsf(scale[1]*unitScaleFactor));
        group->GetDistanceChannel()->SetKey(frame,frame,distance*unitScaleFactor);
        group->GetColourChannel()->SetKey(frame,frame,tlColour(red,green,blue,alpha));

        group->GetUVOffsetChannel()->SetKey(frame,frame,tlPoint2D(uvOffset[0],uvOffset[1]));
        if (cutOffMode != NONE) 
        {
            group->GetUVOffsetRangeChannel()->SetKey(frame,frame,tlPoint2D(DegToRadian(uvOffsetRange[0]),DegToRadian(uvOffsetRange[1])));
            group->GetSourceRangeChannel()->SetKey(frame,frame,DegToRadian(sourceRange));
            group->GetEdgeRangeChannel()->SetKey(frame,frame,DegToRadian(edgeRange));
        }
    }
}

//===========================================================================
// BillboardQuadGroupAnimNode::OptimizeNode
//===========================================================================
// Description: Performs an optimization on this Billboard animation.
//              If the optimized animation is static it is deleted and
//              set to NULL; otherwise, its name is validated against
//              those previously encountered.  If a name clash is detected
//              the name is re-assigned using that returned by ::ValidateName().
//
// Constraints:
//
// Parameters:  (void)
//
// Return:      (void)
//
//===========================================================================
void
BillboardQuadGroupAnimNode::OptimizeNode(void)
{
    if ( mAnimation )
    {

#ifndef ANIMNODE_DISABLE_OPTIMIZE
        tlAnimationTolerances                   tolerances;
        tolerances.SetUsePeakDetection( ExporterOptions::UsePeakDetection() );
        if ( mAnimOptimization.Enable() )
        {
            tolerances.SetFloatTolerance( mAnimOptimization.ThresholdFloat() );
            tolerances.SetColourTolerance( mAnimOptimization.ThresholdColour());
            tolerances.SetVectorTolerance( mAnimOptimization.ThresholdPos() );
            tolerances.SetQuatTolerance( mAnimOptimization.ThresholdRot());
        }

        mAnimation->RoughOptimization( tolerances );
#endif      // ANIMNODE_DISABLE_OPTIMIZE

        if ( mAnimation->IsStatic() )
        {
            //
            // Make sure to remove from the inventory!!!
            //
            if(SceneNode::Inventory()->Remove(mAnimation) == 0)
            {
                //
                // Wasn't in the inventory so delete
                //
                delete mAnimation;
            }
            mAnimation = NULL;
        }
        else
        {
            mAnimation->RemoveStaticGroups();
        }
    }
}

tlFrameController*
BillboardQuadGroupAnimNode::FinalizeNode(void)
{
    tlFrameController*          pFC = NULL;

    if ( mAnimation )
    {
        char newName[256];
        if ( !ValidateName( mAnimation->GetName(), newName ) )
        {
            mAnimation->SetName( newName );
        }

        pFC = new tlFrameController;
        pFC->SetName(mAnimation->GetName());
        pFC->SetAnimationName(mAnimation->GetName());
        pFC->SetHierarchyName(mSceneNode->Name());
        pFC->SetType(Pure3DAnimationTypes::BILLBOARD_QUAD_GROUP_BQG);

        SceneNode::Inventory()->Store(mAnimation);
        SceneNode::Inventory()->Store(pFC);

        SetFinal();
    }

    return pFC;
}

//===========================================================================
// BillboardQuadGroupAnimNode::CleanUp
//===========================================================================
// Description: Deletes the allocated animation if it has not been added
//              to the Inventory.
//
// Constraints: 
//
//  Parameters: (void)
//
//      Return: (void)
//
//===========================================================================
void
BillboardQuadGroupAnimNode::CleanUp(void)
{
    if ( !Finalized() )
    {
        delete mAnimation;
        mAnimation = NULL;
    }
}

