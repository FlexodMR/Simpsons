//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <toollib.hpp>
#include <tlScenegraph.hpp>
#include "worldspace.hpp"

int nExempt = 0;
char exemptions[256][256];

bool IsExempt(char* name)
{
    for(int i = 0; i < nExempt; i++)
    {
        if(strcmp(exemptions[i], name) == 0)
            return true;
    }
    return false;
}

void AddExemptNode(const char* name)
{
    strcpy(exemptions[nExempt++], name);
}

// process a single node of the scenegraph, returns pointer to node (might not be same as original node)
// if branch should be maintained in the overflow scengraph
tlScenegraphNode* WorldspaceNode(tlScenegraphNode* node, tlMatrix transform, tlTriMesh* mesh, tlInventory* meshInv)
{
    // if an exempt node, stop processing and add this subtree to the overflow scenegraph
    if(IsExempt(node->GetName()))
    {
        return node;
    }

    // check if it's an attacment
    tlScenegraphAttachment* attach = dynamic_cast<tlScenegraphAttachment*>(node);
    if(attach)
    {
        // if so, bail
        printf("error : can;t handle attachment noides in scenegraph\n");
        return NULL;
    }

    // check if it's a transform
    tlScenegraphTransform* trans = dynamic_cast<tlScenegraphTransform*>(node);
    if(trans)
    {
        // dummy transform node, bail
        if(trans->GetChildCount() == 0)
            return NULL;

        // if so, append it's transformation to the current one. 
        transform = trans->GetTransform() * transform;

        // create a replacment branch node with the new children
        tlScenegraphTransform* branch2 = new tlScenegraphTransform;
        branch2->SetName(trans->GetName());
        branch2->SetParent(trans->Parent());
        branch2->SetTransform(trans->GetTransform());

        // process all children
        for(int i = 0; i < trans->GetChildCount(); i++)
        {
            branch2->AppendChild(WorldspaceNode(trans->GetChild(i), transform, mesh, meshInv));
        }

        if(branch2->GetChildCount() == 0)
        {
            delete branch2;
            branch2 = NULL;
        }
        return branch2;
    }

    // check if it's a branch node
    tlScenegraphBranch* br = dynamic_cast<tlScenegraphBranch*>(node);
    if(br)
    {
        // create a replacment branch node with the new children
        tlScenegraphBranch* branch2 = new tlScenegraphBranch;
        branch2->SetName(br->GetName());
        branch2->SetParent(br->Parent());

        // process all children
        for(int i = 0; i < br->GetChildCount(); i++)
        {
            branch2->AppendChild(WorldspaceNode(br->GetChild(i), transform, mesh, meshInv));
        }

        if(branch2->GetChildCount() == 0)
        {
            delete branch2;
            branch2 = NULL;
        }
        return branch2;
    }

    // check if it's a drawable node
    tlScenegraphDrawable* dr = dynamic_cast<tlScenegraphDrawable*>(node);
    if(dr)
    {
        if(dr->GetTranslucency())
            return node;

        // grab the drawable form the mesh inventory
        char* drawName = dr->GetDrawable();
        tlPrimGroupMesh* pgmesh = toollib_find<tlPrimGroupMesh>(meshInv,drawName);

        if(pgmesh)
        {
            // is a prim group mesh, ad it's polys to the tri mesh
            tlTriMesh trimesh(*pgmesh);
            trimesh.Transform(transform);

            for(int i = 0; i < trimesh.GetFaces().Count(); i++)
            {
                tlTriangle* tri = new tlTriangle(*trimesh.GetFaces()[i]);
                mesh->AddFace(tri);
            }
            pgmesh->Mark(WORLDSPACE_MARK);
            return NULL;
        }
        else
        {
            return node;
        }
    }

    // currently unhandlesd node types
    //tlScenegraphVisibility (partially processed by branch, will often be exempt)
    //tlScenegraphCamera
    //tlScenegraphLightGroup
    return NULL;
}

tlTriMesh* WorldspaceScenegraph(tlScenegraph* scene, tlInventory* meshInv)
{
    tlTriMesh* mesh = new tlTriMesh;

    tlMatrix matrix;
    matrix.IdentityMatrix();

    scene->SetRoot(WorldspaceNode(scene->GetRoot(), matrix, mesh, meshInv));

    return mesh;
}

