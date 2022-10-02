/*===========================================================================
    File:: tlScenegraph.cpp

    Copyright (c) 1998 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#include "tlScenegraph.hpp"
#include "tlString.hpp"
#include "tlPoint.hpp"
#include "tlInventory.hpp"
#include "tlDataChunk.hpp"
#include <string.h>

//*****************************************************************************
// tlScenegraph 
//*****************************************************************************
tlScenegraph::tlScenegraph() :
        version(0),
        root(NULL)
{
}

tlScenegraph::~tlScenegraph()
{
    delete root;
}

tlScenegraph::tlScenegraph(tlDataChunk* ch):
        version(0)
{
    LoadFromChunk( ch );
}

void
tlScenegraph::LoadFromChunk(tlDataChunk* ch)
{
    assert(ch->ID() == Pure3D::SceneGraph::SCENEGRAPH);
    tlScenegraphChunk* fch = dynamic_cast<tlScenegraphChunk*>(ch);
    assert(fch);

    SetName( fch->Name() );
    SetVersion( fch->Version() );

    for(int index = 0; index < fch->SubChunkCount(); index++ )
    {
        tlDataChunk* sub = fch->GetSubChunk(index);
        switch(sub->ID())
        {
            case Pure3D::SceneGraph::ROOT:
            {
                assert(sub->SubChunkCount() == 1);
                root = LoadNode(sub->GetSubChunk(0));
                break;
            }
            
            default:
                // Just ignore this chunk.
                // Really we should preserve this data, but there currently isn't a nice way to do that.
                break;
        }
    }
}

tlDataChunk*
tlScenegraph::Chunk()
{
    tlScenegraphChunk* result= new tlScenegraphChunk;

    if( GetName() ) {
        result->SetName( GetName() );
    } else {
        result->SetName( "" );
    }

    result->SetVersion(version);

    tlScenegraphRootChunk* rchunk = new tlScenegraphRootChunk;
    rchunk->AppendSubChunk(root->Chunk16());
    result->AppendSubChunk(rchunk);
    return result;
}


void
tlScenegraph::SetVersion(unsigned long n)
{
    version = n;
}

tlScenegraphNode* tlScenegraph::LoadNode(tlDataChunk* ch)
{
        switch(ch->ID())
        {
            case Pure3D::SceneGraph::BRANCH:
            {
                tlScenegraphBranchChunk* chunk = (tlScenegraphBranchChunk*)ch;
                tlScenegraphBranch* node = new tlScenegraphBranch();
                node->SetName(chunk->GetName());

                for(unsigned i = 0; i < chunk->GetNChildren(); i++)
                    node->SetChild(i, LoadNode(chunk->GetSubChunk(i)));

                return node;
            }
            
            case Pure3D::SceneGraph::TRANSFORM:
            {
                tlScenegraphTransformChunk* chunk = (tlScenegraphTransformChunk*)ch;
                tlScenegraphTransform* node = new tlScenegraphTransform();
                node->SetName(chunk->GetName());
                node->SetTransform(chunk->GetTransform());
                 

                for(unsigned i = 0; i < chunk->GetNChildren(); i++)
                    node->SetChild(i, LoadNode(chunk->GetSubChunk(i)));

                return node;
            }
            
            case Pure3D::SceneGraph::ATTACHMENT:  
            {
                tlScenegraphAttachmentChunk* chunk = (tlScenegraphAttachmentChunk*)ch;
                tlScenegraphAttachment* node = new tlScenegraphAttachment;
                node->SetName(chunk->GetName());

                for(unsigned i = 0; i < chunk->GetNPoints(); i++)
                {
                    tlScenegraphAttachmentPointChunk* point = dynamic_cast<tlScenegraphAttachmentPointChunk*>(chunk->GetSubChunk(i));
                    assert(point);

                    node->SetAttachment(i, point->GetJoint());
                    node->SetChild(i, LoadNode(point->GetSubChunk(0)));
                }

                return node;
            }
            
            case Pure3D::SceneGraph::VISIBILITY:  
            {
                tlScenegraphVisibilityChunk* chunk = (tlScenegraphVisibilityChunk*)ch;
                tlScenegraphVisibility* node = new tlScenegraphVisibility;
                node->SetName(chunk->GetName());
                node->SetIsVisible((chunk->GetIsVisible() != 0));

                for(unsigned i = 0; i < chunk->GetNChildren(); i++)
                {
                    node->SetChild(i, LoadNode(chunk->GetSubChunk(i)));
                }

                return node;
            }

            case Pure3D::SceneGraph::DRAWABLE:  
            {
                tlScenegraphDrawableChunk* chunk = (tlScenegraphDrawableChunk*)ch;
                tlScenegraphDrawable* node = new tlScenegraphDrawable();
                node->SetName(chunk->GetName());
                node->SetDrawable(chunk->GetDrawableName());
                node->SetTranslucency((chunk->GetIsTranslucent()==1)?true:false);
                for(unsigned i = 0; i < (unsigned)chunk->SubChunkCount(); i++)
                {
                    tlScenegraphSortOrderChunk* so = dynamic_cast<tlScenegraphSortOrderChunk*>(chunk->GetSubChunk(i));
                    if(so)
                    {
                        node->SetSortOrder(so->GetSortOrder());
                    }
                }
                return node;
            }
            
            case Pure3D::SceneGraph::CAMERA:  
            {
                tlScenegraphCameraChunk* chunk = (tlScenegraphCameraChunk*)ch;
                tlScenegraphCamera* node = new tlScenegraphCamera();
                node->SetName(chunk->GetName());
                node->SetCamera(chunk->GetCameraName());
                return node;
            }
            
            case Pure3D::SceneGraph::LIGHTGROUP:  
            {
                tlScenegraphLightGroupChunk* chunk = (tlScenegraphLightGroupChunk*)ch;
                tlScenegraphLightGroup* node = new tlScenegraphLightGroup();
                node->SetName(chunk->GetName());
                node->SetLightGroup(chunk->GetLightGroupName());
                return node;
            }
            
            default:
                // Just ignore this chunk.
                // Really we should preserve this data, but there currently isn't a nice way to do that.
                break;
        }

    return NULL;
}

bool tlScenegraph::AddNode(tlScenegraphNode *node, char *parent)
{

    if (node == NULL)   return false;
    if (parent == NULL) return false;

    tlScenegraphBranch *branch = dynamic_cast<tlScenegraphBranch *> (this->Find(parent));

    if (branch == NULL) return false;

    branch->AppendChild(node);
    return true;
}

bool tlScenegraph::AddNode(tlScenegraphNode *node, tlScenegraphBranch *parent)
{

    if (node == NULL) return false;
    if (parent == NULL) return false;

    parent->AppendChild(node);

    return false;
}

tlScenegraphNode *tlScenegraph::Find(char *nodename)
{
    if (root == NULL) return NULL;

    return root->Find(nodename);
}

//*****************************************************************************
// tlScenegraphNode 
//*****************************************************************************
tlScenegraphNode *tlScenegraphNode::Find(char *nodename)
{

    if (name == NULL) return NULL;

    if (!strcmp(name, nodename)) return this;

    return NULL;
}


tlScenegraphNode::tlScenegraphNode() :
    parent(NULL)
{
    name = strnew("");
}

tlScenegraphNode::~tlScenegraphNode()
{
    strdelete(name);
    parent = NULL;
}

void tlScenegraphNode::SetName(const char* n)
{
    strdelete(name);
    name = strnew(n);
}

tlDataChunk* tlScenegraphNode::Chunk16()
{
    return NULL;
}

//*****************************************************************************
// tlScenegraphBranch
//*****************************************************************************
tlScenegraphBranch::tlScenegraphBranch(void)
{
    children.SetCount(0);
}

tlScenegraphBranch::~tlScenegraphBranch()
{

    int a;
    for (a = 0; a < children.Count(); a++) children[a]->SetParent(NULL);

    for (a = children.Count() - 1; a >= 0; a--) 
        delete children[ a ];

    children.SetCount(0);
}

void tlScenegraphBranch::SetChild(int n, tlScenegraphNode* node)
{
    if (n >= children.Count()) children.SetCount(n + 1);
    children[n] = node;

    if (node != NULL) node->SetParent(this);
}

void tlScenegraphBranch::AppendChild(tlScenegraphNode* node)
{
    // Don't append a NULL child
    if (node == NULL) return;
    
    int n = GetChildCount();
    SetChild(n, node);   
}

tlScenegraphNode *tlScenegraphBranch::Find(char *nodename)
{

    if (name == NULL) return NULL;

    if (!strcmp(name, nodename)) return this;

    int a;
    for (a = 0; a < GetChildCount(); a++)
    {
        if (children[a] == NULL) continue;

        tlScenegraphNode *node = children[a]->Find(nodename);
        if (node != NULL) return node;
    }

    return NULL;
}

tlDataChunk* tlScenegraphBranch::Chunk16()
{
    tlScenegraphBranchChunk* ch =  new tlScenegraphBranchChunk;
    ch->SetName(name);
    ch->SetNChildren(children.Count());

    for(int i = 0; i < children.Count(); i++)
        ch->AppendSubChunk(children[i]->Chunk16());

    return ch;
}

//*****************************************************************************
// tlScenegraphTransform
//*****************************************************************************
tlDataChunk* tlScenegraphTransform::Chunk16()
{
    tlScenegraphTransformChunk* ch =  new tlScenegraphTransformChunk;
    ch->SetName(name);
    ch->SetNChildren(children.Count());
    ch->SetTransform(transform);

    for(int i = 0; i < children.Count(); i++)
        ch->AppendSubChunk(children[i]->Chunk16());

    return ch;
}

void tlScenegraphTransform::Scale(float s)
{
    tlPoint t = transform.GetRow(3);
    t *= s;
    transform.SetRow(3, t);
}

//*****************************************************************************
// tlScenegraphDrawable
//*****************************************************************************
tlScenegraphDrawable::tlScenegraphDrawable()
{
    objname = strnew("");
}

tlScenegraphDrawable::~tlScenegraphDrawable()
{
    strdelete(objname);
}

void tlScenegraphDrawable::SetDrawable(const char* n)
{
    strdelete(objname);
    objname = strnew(n);
}

tlDataChunk* tlScenegraphDrawable::Chunk16()
{
    tlScenegraphDrawableChunk* ch =  new tlScenegraphDrawableChunk;
    ch->SetName(name);
    ch->SetDrawableName(objname);
    ch->SetIsTranslucent(isTranslucent?1:0);

    tlScenegraphSortOrderChunk* so =  new tlScenegraphSortOrderChunk;
    so->SetSortOrder(sortOrder);
    ch->AppendSubChunk(so);
    return ch;
}

tlDataChunk* tlScenegraphVisibility::Chunk16()
{
    tlScenegraphVisibilityChunk* ch =  new tlScenegraphVisibilityChunk;
    ch->SetName(name);
    ch->SetNChildren(children.Count());
    ch->SetIsVisible(isVisible);

    for(int i = 0; i < children.Count(); i++)
    {
        ch->AppendSubChunk(children[i]->Chunk16());
    }

    return ch;
}

//*****************************************************************************
// tlScenegraphCamera
//*****************************************************************************
tlScenegraphCamera::tlScenegraphCamera()
{
    objname = strnew("");
}

tlScenegraphCamera::~tlScenegraphCamera()
{
    strdelete(objname);
}

void tlScenegraphCamera::SetCamera(const char* n)
{
    strdelete(objname);
    objname = strnew(n);
}

tlDataChunk* tlScenegraphCamera::Chunk16()
{
    tlScenegraphCameraChunk* ch =  new tlScenegraphCameraChunk;
    ch->SetName(name);
    ch->SetCameraName(objname);
    return ch;
}

//*****************************************************************************
// tlScenegraphLightGroup
//*****************************************************************************
tlScenegraphLightGroup::tlScenegraphLightGroup()
{
    objname = strnew("");
}

tlScenegraphLightGroup::~tlScenegraphLightGroup()
{
    strdelete(objname);
}

void tlScenegraphLightGroup::SetLightGroup(const char* n)
{
    strdelete(objname);
    objname = strnew(n);
}

tlDataChunk* tlScenegraphLightGroup::Chunk16()
{
    tlScenegraphLightGroupChunk* ch =  new tlScenegraphLightGroupChunk;
    ch->SetName(name);
    ch->SetLightGroupName(objname);
    return ch;
}

//*****************************************************************************
// tlScenegraphAttachment
//*****************************************************************************
tlScenegraphAttachment::tlScenegraphAttachment(void)
{
    poseName = NULL;
    joints.SetCount(0);
}

tlScenegraphAttachment::~tlScenegraphAttachment()
{
    joints.SetCount(0);
}

void tlScenegraphAttachment::SetDrawablePoseName(const char *name)
{
    strdelete(poseName);
    poseName = strnew(name);
}

void tlScenegraphAttachment::SetAttachment(int n, int j)
{
    joints[n] = j;
}

tlDataChunk* tlScenegraphAttachment::Chunk16()
{
    tlScenegraphAttachmentChunk* ch =  new tlScenegraphAttachmentChunk;
    ch->SetName(name);
    ch->SetDrawablePoseName(poseName);
    ch->SetNPoints(joints.Count());

    assert(children.Count() == joints.Count());

    for(int i = 0; i < joints.Count(); i++)
    {
        tlScenegraphAttachmentPointChunk* graft = new tlScenegraphAttachmentPointChunk;
        graft->SetJoint(joints[i]);
        graft->AppendSubChunk(children[i]->Chunk16());
        ch->AppendSubChunk(graft);
    }

    return ch;
}

//*****************************************************************************
// tlScenegraphLoader
//*****************************************************************************
tlScenegraphLoader::tlScenegraphLoader() : 
    tlEntityLoader(Pure3D::SceneGraph::SCENEGRAPH)
{            
}

tlEntity*
tlScenegraphLoader::Load(tlDataChunk* chunk)
{
    return new tlScenegraph(chunk);
}




