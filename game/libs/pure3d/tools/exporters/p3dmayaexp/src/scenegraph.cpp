//===========================================================================
// Copyright ©2002 Radical Entertainment Ltd.  All rights reserved.
//
// Created:     25 June, 2002
//
// Component:   
//
// Description: Handles the construction of the Scenegraphs for the current
//              export, including adding them to the Inventory.
//
// Constraints: 
//
// Creator:     Bryan Ewert
//
//===========================================================================
//===========================================================================
// Includes
//===========================================================================

#include "scenegraph.hpp"
#include "exporteroptions.hpp"
#include "scene.hpp"
#include "boundingVolumes.hpp"
#include "mayanodes.hpp"        // hardcoded Maya IDs for custom nodes
#include "animnode.hpp"
#include "inventoryEntity.hpp"
#include "exportFunctions.hpp"  // Error log

#include <tlScenegraph.hpp>
#include <tlLightGroup.hpp>
#include <tlInventory.hpp>
#include <tlPrimGroupMesh.hpp>
#include <tlShader.hpp>
#include <tlParticleSystem.hpp>
#include <tlAnimatedObject.hpp>
#include <tlBillboardObject.hpp>
#include <tlOpticEffect.hpp>
#include <tlCompositeDrawable.hpp>
#include <tlScenegraphTransformAnim.hpp>
#include <tlInventory.hpp>

#include <bewert_debug.h>

//===========================================================================
// Local Constants, Typedefs, and Macros
//===========================================================================

//===========================================================================
// Global Data, Local Data, Local Classes
//===========================================================================

SceneNode*          CExporterScenegraph::mScenegraphRoot;
tlLightGroup*       CExporterScenegraph::mScenegraphLightGroup;
//tlScenegraphNode*   CExporterScenegraph::mScenegraphNode;

//===========================================================================
// SettleMatrix
//===========================================================================
// Description: After several matrix transformations and/or inverse 
//              operations it is possible that what should be an identity
//              matrix comes out as slightly skewed (values of 0.00001 and
//              0.999999 instead of 0.0 and 1.0).  This function "settles"
//              a matrix to be a true identity matrix if its values are
//              within tolerance of identity.
//
//              The tolerance is calculated by adding the diagonal row
//              (expected to sum to 4.0) and adding all cells not on the
//              diagonal row (expected to sum to 0.0).
//
// Constraints: The tolerance is a constant within the function and 
//              is not configurable.
//
//  Parameters: tlMatrix& matrix: The matrix to "settle." Results will be
//                                copied back to the matrix.
//
//      Return: (bool): TRUE if matrix was settled; FALSE if matrix was
//                      not modified.
//
//===========================================================================
bool SettleMatrix( tlMatrix& matrix )
{
    const float kIdentityMatrixThreshold = 0.0001F;

    float diag = matrix.element[0][0] + matrix.element[1][1] + matrix.element[2][2] + matrix.element[3][3];
    float other =   matrix.element[0][1] + matrix.element[0][2] + matrix.element[0][3] \
                  + matrix.element[1][0] + matrix.element[1][2] + matrix.element[1][3] \
                  + matrix.element[2][0] + matrix.element[2][1] + matrix.element[2][3] \
                  + matrix.element[3][0] + matrix.element[3][1] + matrix.element[3][2];

    if ( ( fabs( diag - 4.0 ) < kIdentityMatrixThreshold ) && ( fabs(other) < kIdentityMatrixThreshold ) )
    {
        matrix.IdentityMatrix();
        return true;
    }

    return false;
}

//===========================================================================
// Constructor / Destructor
//===========================================================================



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
// CExporterScenegraph::CreateScenegraph
//===========================================================================
// Description: Creates a Scenegraph and names it to match the name of the
//              specified node.  BuildScenegraph() is then called upon
//              to initiate the Scenegraph construction.
//
// Constraints: 
//
//  Parameters: SceneNode* node: The node that constitutes the root for the
//                               Scenegraph, and provides its name.
//              tlInventory* pInventory: Pointer to the Inventory to which
//                                       the Scenegraph will be stored.
//
//      Return: (tlScenegraph*): Pointer to the new Scenegraph.  May be
//                               NULL if Inventory store fails.
//
//===========================================================================
tlScenegraph* CExporterScenegraph::CreateScenegraph( SceneNode* node, tlInventory* pInventory )
{
    if ( node == NULL ) return NULL;

// ----------------  Create a new tlScenegraph using the name of the specified node  ----------------

    InventoryEntity<tlScenegraph*>* psgEntity = new InventoryEntity<tlScenegraph*>( new tlScenegraph );
    psgEntity->Entity()->SetName( node->Name() );

// ----------------  Build the Scenegraph  ----------------

    BuildScenegraph( psgEntity, &node, 1, pInventory );

// ----------------  Was it stored? Return results to user  ----------------

    if ( !psgEntity->Stored() )
    {
        psgEntity->DeleteEntity();
    }

    tlScenegraph* psg = psgEntity->Entity();

    delete psgEntity;

    return psg;
}

//===========================================================================
// CExporterScenegraph::CreateScenegraph
//===========================================================================
// Description: Creates a Scenegraph and names it using the specified 
//              name.  An array of nodes is provided to specify the node
//              hierarchies which will comprise the Scenegraph.
//              BuildScenegraph() is called upon to initiate the Scenegraph 
//              construction.
//
// Constraints: 
//
//  Parameters: const char* pName: NULL-terminated string specifying name for
//                                 the new Scenegraph.
//              SceneNode** ppNodes: Array of nodes whose hierarchies will be
//                                   added to the Scenegraph.
//              int numNodes: The number of nodes in the ppNodes array.
//              tlInventory* pInventory: Pointer to the Inventory to which
//                                       the Scenegraph will be stored.
//
//      Return: (tlScenegraph*): Pointer to the new Scenegraph.  May be
//                               NULL if Inventory store fails.
//
//===========================================================================
tlScenegraph* CExporterScenegraph::CreateScenegraph( const char* pName, SceneNode** ppNodes, int numNodes, tlInventory* pInventory )
{
// ----------------  Create a new Scenegraph using the specified name  ----------------

    InventoryEntity<tlScenegraph*>* psgEntity = new InventoryEntity<tlScenegraph*>( new tlScenegraph );
    psgEntity->Entity()->SetName( pName );

// ----------------  Build the Scenegraph using the specified array  ----------------

    BuildScenegraph( psgEntity, ppNodes, numNodes, pInventory );  // private

// ----------------  Was it stored? Return results to user  ----------------

    if ( !psgEntity->Stored() )
    {
        psgEntity->DeleteEntity();
    }

    tlScenegraph* psg = psgEntity->Entity();

    delete psgEntity;

    return psg;
}

//===========================================================================
// CExporterScenegraph::BuildScenegraph
//===========================================================================
// Description: Initiates the building of the Scenegraph. The psgEntity
//              object holds the newly allocated tlScenegraph object.
//              The array of nodes specifies the hierarchies which will 
//              be added to the Scenegraph.
//
// Constraints: If Scenegraph is not stored, the Scenegraph object will
//              still be allocated and persistent.
//
//  Parameters: InventoryEntity<tlScenegraph*>* psgEntity: Holds the pointer
//                  to the tlScenegraph which is being built.
//              SceneNode** ppNodes: Array of node hierarchies that will be
//                                   added to the Inventory.
//              int numNodes: The number of items in the ppNodes array.
//              tlInventory* pInventory: Pointer to the Inventory to which
//                  the Scenegraph (and any additional Scenegraphs) will
//                  be stored.
//
//
//      Return: (bool): TRUE if Scenegraph was stored; else FALSE.
//
//===========================================================================
bool CExporterScenegraph::BuildScenegraph( InventoryEntity<tlScenegraph*>* psgEntity, SceneNode** ppNodes, int numNodes, tlInventory* pInventory )
{
    bool bFoundFileReference = false;
    bool bOK = true;

    mScenegraphLightGroup = SceneNode::NewLightGroup( psgEntity->Entity()->GetName() );

    tlScenegraphBranch* sgb = new tlScenegraphBranch;
    sgb->SetName("root");
    psgEntity->Entity()->SetRoot(sgb);

    int n;
    for ( n = 0; bOK && ( n < numNodes ); n++ )
    {
        bFoundFileReference |= ppNodes[n]->IsFileReference();
        mScenegraphRoot = ppNodes[n];
        bOK = AddToScenegraph( psgEntity, sgb, ppNodes[n], pInventory, false );
    }

    
    if ( bOK && ( pInventory != NULL ) && ( !bFoundFileReference || !ExporterOptions::ExportAnimReferencesOnly()) )
    {
        psgEntity->Store( pInventory );
    }

    return psgEntity->Stored();
}

//===========================================================================
// CExporterScenegraph::AddToScenegraph
//===========================================================================
// Description: Adds the specified node hierarchy to the specified 
//              Scenegraph.
//
// Constraints: Mesh objects that are not in a skeleton cannot be added to
//              multiple Scenegraphs because their PrimGroups are transformed 
//              to the local space of their Scenegraph. Doing this twice will
//              assure that the geometry is invalid in at least one Scenegraph.
//
//  Parameters: InventoryEntity<tlScenegraph*>* psgEntity: Holds the pointer
//                  to the tlScenegraph which is being built.
//              tlScenegraphBranch* sgb: The current Branch to which new
//                  Scenegraph entries will be added.
//              SceneNode* node: The node being added to the Scenegraph.
//              tlInventory* pInventory: Pointer to the Inventory to which
//                  the Scenegraph (and any additional Scenegraphs) will
//                  be stored.
//              bool transformOnly: Typically FALSE, but may be TRUE for 
//                                  recursive processing.
//
//      Return: (void)
//
//===========================================================================
bool CExporterScenegraph::AddToScenegraph( InventoryEntity<tlScenegraph*>* psgEntity, tlScenegraphBranch* sgb, SceneNode* node, tlInventory* pInventory, bool transformOnly )
{
// ----------------  REJECT nodes that don't belong in a Scenegraph  ----------------

    // Mesh objects that are not in a skeleton are TRANSFORMED to the
    // local space of their Scenegraph.  DON'T DO THIS TWICE!
    if ( ( node->Skeleton() == NULL ) && ( node->Scenegraph() != NULL ) )
    {
        gExportLog.Add( CExportLogEntry( ExportLog::kMeshScenegraphDuplicity, node->MayaPath() ) );
        return false;   // return FALSE means FATAL
    }

//    node->SetScenegraph( NULL );

    if ( node->IsTraversalStop() ) return true;     // return TRUE means non-fatal.
    // Smooth bound meshes don't belong in sceneGraphs
    if ( node->IsSmoothBound() ) return true;     // return TRUE means non-fatal.
    // parents of smoothbound meshes don't belong in sceneGraphs... typically
    if ( node->IsIntermediateObject() ) return true;     // return TRUE means non-fatal.

    // Bounding Volumes do not belong in SceneGraph.
    if ( ( node->MayaTypeId() == P3D_BOUNDING_VOLUME_ID ) || ( node->MayaTypeId() == P3D_BOUNDING_NODE_ID ) ) return true;     // return TRUE means non-fatal.
    if ( ( node->ChildCount() > 0 ) && ( ( node->Child(0)->MayaTypeId() == P3D_BOUNDING_VOLUME_ID ) || ( node->Child(0)->MayaTypeId() == P3D_BOUNDING_NODE_ID ) ) ) return true;     // return TRUE means non-fatal.

    if( node->ChildCount()>0 )
    {
        if( node->Child(0)->IsSmoothBound() )
        {
            return true;     // return TRUE means non-fatal.
        }

        // If this node has only one child (its shape), AND
        // if said shape is a NURBS-type, skip it.
        if (
                ( node->ChildCount() == 1 ) && ( 
                    ( node->Child(0)->MayaType() == MFn::kNurbsCurve ) || 
                    ( node->Child(0)->MayaType() == MFn::kNurbsSurface ) 
                )
            )
        {
            return true;     // return TRUE means non-fatal.
        }
    }
    
// ----------------  FIND the ScenegraphBranch for this node  ----------------

//    tlScenegraphBranch *sgb = NULL;
//    sgb = dynamic_cast<tlScenegraphBranch *>( mScenegraphNode );

//    mScenegraphLightGroup = node->ScenegraphLightGroup();

    // Can't add to a node that can't cast to a branch node
    if ( sgb == NULL) return true;     // return TRUE means non-fatal.

    node->SetScenegraph( psgEntity->Entity() );
    node->SetScenegraphLightGroup( mScenegraphLightGroup );

// ----------------  CREATE Visibility Animation  --------------------

    AnimNode*   pAnimNode = NULL;

    //
    // If Visibility Animations are on this node then we
    // are adding a visibility node to the Hierarchy.
    //

    if( ExporterOptions::ExportAnimations() &&
        ExporterOptions::ExportVisibilityAnimations() &&
        !node->IsValidSkeletonRoot() &&     // Skeleton Root will use tlPoseVisibility.. do I need tlScenegraphVisibility node????
        node->IsVisibilityAnimated()
      )
    {
        // Creating
        tlScenegraphVisibility* vis = new tlScenegraphVisibility;
        char visName[256];
        sprintf(visName, "%s%s", node->Name(), "_SceneGraphVis");

        vis->SetName(visName);
        vis->SetIsVisible( node->IsEverVisible() );
        sgb->AppendChild( vis );

        //
        // The visibility node is now the parent of any
        // more nodes that are created
        //
        sgb = vis;
    }

    if (( node->MayaType() == MFn::kTransform) && ( node->ChildCount() > 0))
    {
        if ( node->Child(0)->MayaTypeId() == EMITTER_ID)
        {
            return true;     // return TRUE means non-fatal.
        }
    }

// ----------------  ADD a Scenegraph to a Scenegraph  ----------------

    // Different type of drawable, a scenegraph
    if ( node->IsScenegraphRoot() && (node != mScenegraphRoot) && !transformOnly)
    {
        if ( ( node->ChildCount() > 0 ) && ( node->Child(0)->IsMesh() ) && ( !node->IsValidSkeletonRoot() ) )
        {
            gExportLog.Add( CExportLogEntry( ExportLog::kMeshScenegraphDuplicity, node->Child(0)->MayaPath() ) );
        }
        else
        {
            CreateScenegraph( node, pInventory );
                
            tlScenegraphDrawable *sgd = new tlScenegraphDrawable;
            sgd->SetName( node->Name() );
            sgd->SetDrawable( node->Name() );
            sgd->SetSortOrder( node->DrawOrder() );
            // TO DO: need to hook this up
            bool translucent = false;
            sgd->SetTranslucency(translucent);
            sgb->AppendChild(sgd);
            return true;     // return TRUE means non-fatal.
        }
    }

// ----------------  CREATE the Scenegraph node  ----------------

    // Create the correct type of Scenegraph node
    if ( node->NumDrawables() > 0)
    {
        if(!transformOnly)
        {
            for (int i = 0; i < node->NumDrawables(); ++i)
            {
                bool isSceneGraphDrawableTranslucent = false;
                bool drawableFound = false;
                // put mesh in local space of scenegraph, if not in compound mesh
                if ( node->Skeleton() == NULL )
                {
                    tlPrimGroupMesh* pgmesh = dynamic_cast<tlPrimGroupMesh*>( node->Drawable(i) );
                    if ((pgmesh != 0)&&(!drawableFound))
                    {
                        tlMatrix                matrix;

// Replaced this with the if/else below
//                        node->WorldMatrix( matrix );

//                        if ( node->IsScenegraphRoot() )
//                        {
//                            node->ScenegraphRootMatrix( matrix );
//                        }
//                        else
                        {
                            node->WorldMatrix( matrix );
                        }

                        matrix = Inverse(matrix);
                        SettleMatrix( matrix );

                        float uiscale = SceneNode::UIScale();
                        float uiscale_rec = 1.0f / uiscale;

                        pgmesh->Scale(uiscale_rec, uiscale_rec, uiscale_rec);
                        pgmesh->Transform( matrix );
                        pgmesh->Scale(uiscale, uiscale, uiscale);

                        //
                        // Only need to search until we know if the
                        // drawable is tranlucent or not
                        //
                        for(int j=0;(j<pgmesh->NumPrimGroups()) && (isSceneGraphDrawableTranslucent == false) ;j++)
                        {
                            const tlPrimGroup* primGroup = pgmesh->GetPrimGroup(j);
                            assert(primGroup && "No primGroup");

                            const char* shaderName = primGroup->GetMaterial();

                            tlShader* shader = toollib_find<tlShader>( SceneNode::Inventory(), shaderName);

                            if(shader)
                            {
                                isSceneGraphDrawableTranslucent = shader->GetTranslucency();
                            }
                        }
                        drawableFound = true;
                    }

                    tlParticleSystem* ps = dynamic_cast<tlParticleSystem*>( node->Drawable(i) );
                    if ((ps != 0)&&(!drawableFound))
                    {
                        tlParticleSystemFactory* factory = toollib_find<tlParticleSystemFactory>( SceneNode::Inventory(), ps->GetFactoryName());
                        if (factory)
                        {
                            for (int i = 0; i<factory->GetNumEmitters(); i++)
                            {
                                tlSpriteEmitterFactory* emitter = dynamic_cast<tlSpriteEmitterFactory*>(factory->GetEmitterFactoryPtr(i));
                                if (emitter)
                                {
                                    tlShader* shader = toollib_find<tlShader>( SceneNode::Inventory(), emitter->GetShaderName());
                                    if (shader)
                                    {
                                        if (shader->GetTranslucency()==true)
                                        {
                                            isSceneGraphDrawableTranslucent = true;
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                        drawableFound = true;
                    }

                    tlLensFlareGroup* lensFlareGroup = dynamic_cast<tlLensFlareGroup*>( node->Drawable(i) );
                    if ((lensFlareGroup != 0)&&(!drawableFound))
                    {
                        tlShader* shader = toollib_find<tlShader>( SceneNode::Inventory(), lensFlareGroup->GetShaderName());
                        if (shader)
                        {
                            isSceneGraphDrawableTranslucent = shader->GetTranslucency();
                        }
                        drawableFound = true;
                    }

                    tlBillboardQuadGroup* quadGroup = dynamic_cast<tlBillboardQuadGroup*>( node->Drawable(i) );
                    if ((quadGroup != 0)&&(!drawableFound))
                    {
                        tlShader* shader = toollib_find<tlShader>( SceneNode::Inventory(), quadGroup->GetShaderName());
                        if (shader)
                        {
                            isSceneGraphDrawableTranslucent = shader->GetTranslucency();
                        }
                        drawableFound = true;
                    }
                }
                else
                {
                    //
                    // The drawables must be part of tlCompositeDrawable
                    //
                    tlCompositeDrawable* compDraw = dynamic_cast<tlCompositeDrawable*>( node->Drawable(i) );

                    if(compDraw)
                    {
                        tlCompositeDrawable::Iterator compIT(compDraw);

                        for(compIT.First(); !compIT.IsDone(); compIT.Next())
                        {
                            tlCompositeDrawableItem* compDrawItem = compIT.CurrentItem();
                            tlPrimGroupMesh* pgmesh = 0;

                            bool isDrawableTranslucent = false;

                            if(compDrawItem)
                            {
                                pgmesh = toollib_find<tlPrimGroupMesh>( SceneNode::Inventory(), compDrawItem->GetName());

                                if(pgmesh!=0)
                                {
                                    //
                                    // Only need to search until we know if the
                                    // drawable is translucent or not
                                    //
                                    for(int j=0;(j<pgmesh->NumPrimGroups()) && (isDrawableTranslucent == false) ;j++)
                                    {
                                        const tlPrimGroup* primGroup = pgmesh->GetPrimGroup(j);
                                        assert(primGroup && "No primGroup");
                                        const char* shaderName = primGroup->GetMaterial();

                                        tlShader* shader = toollib_find<tlShader>( SceneNode::Inventory(), shaderName);
                                        if(shader)
                                        {
                                            isDrawableTranslucent = shader->GetTranslucency();
                                        }
                                    }
                                }

                                //
                                // If any of the tCompositeDrawable elements
                                // are translucent then the scenegraph node is also
                                //
                                isSceneGraphDrawableTranslucent |= isDrawableTranslucent;
                            }
                        }
                    }// end if(compDraw)
                }

                // special case for LOD nodes
                // if we have an LOD node, stick a transform node above it
                // and stick any bounding volumes inside

                if( node->MayaPath().apiType() == MFn::kLodGroup)
                {
                    assert( false && "kLodGroup not supported for Scenegraph!" );

                    tlScenegraphTransform *sgt = new tlScenegraphTransform;
                   
                    tlMatrix    matrix;
                    node->Matrix( matrix );

                    sgt->SetName( node->Name());
                    sgt->SetTransform( matrix );
                    sgt->Scale(SceneNode::UIScale());
//                    psg = node->Scenegraph();
//                    sgb = (tlScenegraphNode *) sgt;     // Hierarchical Scenegraph parent node
                    sgb->AppendChild(sgt);
                    sgb = sgt;

                    tlScenegraphDrawable *sgd = new tlScenegraphDrawable;
                    sgd->SetName( node->Drawable(i)->GetName());
                    sgd->SetDrawable( node->Drawable(i)->GetName());
                    sgd->SetTranslucency(isSceneGraphDrawableTranslucent);

                    SceneNode* pNode = SceneNode::Find( node->Drawable(i)->GetName() );
                    if ( pNode != NULL )
                    {
                        sgd->SetSortOrder( pNode->DrawOrder() );
                    }

                    sgb->AppendChild(sgd);

                    int a;
                    for (a = 0; a < node->ChildCount(); a++)
                    {
                        SceneNode *child = node->Child(a);
                        AddToScenegraph( psgEntity, sgt, child, pInventory, true);
                    }
                }
                else
                {
                    tlScenegraphDrawable *sgd = new tlScenegraphDrawable;
                    sgd->SetName( node->Drawable(i)->GetName());
                    sgd->SetDrawable( node->Drawable(i)->GetName());
                    sgd->SetTranslucency(isSceneGraphDrawableTranslucent);

                    SceneNode* pNode = SceneNode::Find( node->Drawable(i)->GetName() );
                    if ( pNode != NULL )
                    {
                        sgd->SetSortOrder( pNode->DrawOrder() );
                    }

//                    psg = node->Scenegraph();
//                    sgb = (tlScenegraphNode *) sgd;     // Hierarchical Scenegraph parent node
                    sgb->AppendChild(sgd);
                }
            }       // for ( drawables )
        }       // if ( !transformOnly )
    }       // if ( mDrawables )
    else
    {
        tlScenegraphTransform *sgt = new tlScenegraphTransform;

        int numChildren = sgb->GetChildCount();

        tlMatrix                matrix;

//        if ( node->IsScenegraphRoot() )
//        {
//            node->ScenegraphRootMatrix( matrix );
//        }
//        else
        {
            node->Matrix( matrix );
        }

        SettleMatrix( matrix );

//        CDEBUG << "CExporterScenegraph::AddToScenegraph() -> Scenegraph matrix for " << node->Name() << endl;
//        matrix.Print(0,4);

        sgt->SetName( node->Name() );
        sgt->SetTransform( matrix );
        sgt->Scale(SceneNode::UIScale());
//        psg = node->Scenegraph();
//        sgb = (tlScenegraphNode *) sgt;     // Hierarchical Scenegraph parent node
        sgb->AppendChild(sgt);

        // Bug #658: Don't create STRN chunk if this is a transform whose
        // only purpose is to animate a transform for a Camera or Light.
        if (ExporterOptions::ExportAnimations() && node->HasScenegraphAnimation() )
        {
            // Allocate new ScenegraphTransformAnimNode
            pAnimNode = new ScenegraphTransformAnimNode( node );
            pAnimNode->SetIsCyclic( node->IsCyclic() );

            AnimNode::AddNode(pAnimNode);
        }

        int a;
        for (a = 0; a < node->ChildCount(); a++)
        {
            SceneNode *child = node->Child(a);
            AddToScenegraph( psgEntity, sgt, child, pInventory, transformOnly );
        }
    }

// ----------------  SPECIFY the type of Visibility Animation  ----------------

    //
    // Still need Visibility Animation for this case
    //
    if( ( pAnimNode != NULL ) &&    // This will be NULL if mHasScenegraphAnimation is FALSE.
        ExporterOptions::ExportAnimations() &&
        ExporterOptions::ExportVisibilityAnimations() &&
        !node->IsValidSkeletonRoot() &&
        node->IsVisibilityAnimated()
      )
    {
        assert( psgEntity->Entity() && "No Scenegraph");

        // If a Skeleton has already set this to kVisibilityTypePose
        // then don't reset it.
        // Or so I would think.. it crashes if I do this -- why??
//        if ( mAnimNode->VisibilityType() == AnimNode::kVisibilityTypeNone )
        {
            // Visibility Animation now created within AnimNode.
            // This provides a necessary "hint" that determines
            // what type of animation to create (tlScenegraphVisAnim)
//            if ( mAnimNode->VisibilityType() != AnimNode::kVisibilityTypeNone )
//            {
//                CDEBUG << "++ REPLACING kVisibilityTypeScenegraph for " << parent->Name() << endl;
//            }
//            else
//            {
//                CDEBUG << "++ Setting kVisibilityTypeScenegraph for " << parent->Name() << endl;
//            }

            pAnimNode->SetVisibilityType( AnimNode::kVisibilityTypeScenegraph );
        }


          // new tlAnimation : uses tlInventory::Store() * with new tlFrameController
//        tlScenegraphVisAnim* visAnim = new tlScenegraphVisAnim;
//        char visName[256];
//        ExporterOptions::BuildAnimationName( kScenegraphVisibilityAnimationMode, Name(), visName );
//        visAnim->SetName(visName);
//
//        // AnimNode: SceneGraph: Visibility
//        mAnimNode->SetVisibilityAnimation(visAnim);
    }

    return true;     // return TRUE means non-fatal.
}

