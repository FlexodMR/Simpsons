//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <viewer/collision.hpp>
#include <p3d/utility.hpp>
#include <p3d/matrixstack.hpp>
#include <p3d/anim/drawablepose.hpp>
#include <p3d/scenegraph/scenegraph.hpp>
#include <simcollision/collisionobject.hpp>
#include <simcollision/collisiondisplay.hpp>

CollisionVolumeViewer::CollisionVolumeViewer()
{
    collisionObjectList = new sim::TList<sim::CollisionObject*>;
}

CollisionVolumeViewer::~CollisionVolumeViewer()
{
}

void CollisionVolumeViewer::Setup(void)
{
    tP3DFileHandler* p3d = p3d::loadManager->GetP3DHandler();
    if(p3d)
    {   
        p3d->AddHandler(new sim::CollisionObjectLoader);
        p3d->AddHandler(new sim::PhysicsObjectLoader);
    }
}

void CollisionVolumeViewer::Flush(void)
{
    collisionObjectList->RemoveAll();
    collisionObjectList->Reset();
}

void CollisionVolumeViewer::Display(tDrawable* newCurrentObject)
{
    if(currentObject != newCurrentObject)
    {
        SetCurrentCollisionObject(newCurrentObject);
    }

    if(!currentObject)
        return;

    int i = 0;
    for(i=0; i<collisionObjectList->GetSize(); i++)
    {
        sim::CollisionObject* collisionObjectToBeRendered = collisionObjectList->GetAt(i);
        if(collisionObjectToBeRendered->GetPose())
        {
            collisionObjectToBeRendered->Update();
        }
        if(dynamic_cast<Scenegraph::Scenegraph*>((tDrawable*)currentObject))
        {
            if(collisionObjectToBeRendered->GetSceneGraphTransform())
            {
                // Update Matrix first before drawing
                static_cast<Scenegraph::Scenegraph*>((tDrawable*)currentObject)->UpdateTransform();
                p3d::stack->Push();
                    p3d::stack->Multiply(*collisionObjectToBeRendered->GetSceneGraphTransform());
                    sim::DrawCollisionObject(collisionObjectToBeRendered);
                p3d::stack->Pop();
            }
        }
        else 
        {
            sim::DrawCollisionObject(collisionObjectToBeRendered);
        }
    }

}

// Functions to retrieve the collision object from the inventory
sim::CollisionObject* CollisionVolumeViewer::GetCollisionObject(tDrawable* object, bool clone)
{
    if(object)
    {
        tPose* pose = NULL;

        tDrawablePose* drawablePose = dynamic_cast<tDrawablePose*>(object);

        // Handle Simulated Objects
        if(drawablePose)
        {
            pose = drawablePose->GetPose();
        }

        sim::CollisionObject* currentCollisionObject = p3d::find<sim::CollisionObject>(object->GetName());

        if(currentCollisionObject)
        {

            if (clone)
                currentCollisionObject = new sim::CollisionObject(currentCollisionObject);
            
            sim::PhysicsObject* currentPhysicsObject = p3d::find<sim::PhysicsObject>(object->GetName());
            
            currentCollisionObject->SetIsDynamic(currentPhysicsObject ? true : false);

            if(pose)
            {
                currentCollisionObject->SetPose(pose);
            }

            currentCollisionObject->AddRef();

            return currentCollisionObject;
        }
    }

    return NULL;
}

rmt::Matrix* CollisionVolumeViewer::GetSimMatrix(Scenegraph::Node* nn)
{
   Scenegraph::Node* n = nn;

   while (n && dynamic_cast<Scenegraph::Transform*>(n) == NULL)
   {
      n = n->GetParent();
   }
   if (n)
      return static_cast<Scenegraph::Transform*>(n)->ModifyWorldTransform();
   else 
      return NULL;
}

void CollisionVolumeViewer::GetCollisionObjectFromSceneGraph(Scenegraph::Scenegraph* sg)
{
   GetCollisionObjectFromSceneGraphNode(sg->GetRoot());
}

void CollisionVolumeViewer::GetCollisionObjectFromSceneGraphNode(Scenegraph::Node* node)
{
   if( dynamic_cast<Scenegraph::Transform*>(node) )
   {
      Scenegraph::Transform* transformNode = static_cast<Scenegraph::Transform*>(node);

      for (int i=0; i<(int)node->GetNumChildren(); i++)
      {
          GetCollisionObjectFromSceneGraphNode(node->GetChild(i));
      }
   }
   else if (dynamic_cast<Scenegraph::Branch*>(node))
   {
      for (int i=0; i<(int)node->GetNumChildren(); i++)
      {
          GetCollisionObjectFromSceneGraphNode(node->GetChild(i));
      }
   }
   else if( dynamic_cast<Scenegraph::Drawable*>(node) )
   {
      Scenegraph::Drawable* drawnode = static_cast<Scenegraph::Drawable *>(node);
      tDrawable* draw = drawnode->GetDrawable();
      rmt::Matrix* rootMatrix = GetSimMatrix(drawnode);

      if( dynamic_cast<tDrawable*>(draw) )
      {
         sim::CollisionObject* collisionObjectOfInterest = NULL;
         tDrawable* object = static_cast<tDrawable*>(draw);
         collisionObjectOfInterest = GetCollisionObject(object, true);

         if(collisionObjectOfInterest)
         {
            collisionObjectOfInterest->SetScenegraphTransform(rootMatrix);
            collisionObjectList->Add(collisionObjectOfInterest);
         }
      }
   }
}

// Sets the currentCollisionObject pointer
void CollisionVolumeViewer::SetCurrentCollisionObject(tDrawable* newCurrentObject)
{
    currentObject = newCurrentObject;

    sim::CollisionObject* collisionObjectOfInterest = NULL;
    collisionObjectList->Reset();
    collisionObjectList->RemoveAll();

    if(dynamic_cast<Scenegraph::Scenegraph*>((tDrawable*)currentObject))
    {
        GetCollisionObjectFromSceneGraph(dynamic_cast<Scenegraph::Scenegraph*>((tDrawable*)currentObject));
    }
    else if(dynamic_cast<tDrawable*>((tDrawable*)currentObject))
    {
        collisionObjectOfInterest = GetCollisionObject((tDrawable*)currentObject);
        if(collisionObjectOfInterest)
        {
            collisionObjectList->Add(collisionObjectOfInterest);
        }
    }
}

