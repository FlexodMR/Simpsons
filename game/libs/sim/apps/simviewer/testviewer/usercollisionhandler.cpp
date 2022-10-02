

#include "UserCollisionHandler.hpp"
#include "simcollision\collisionmanager.hpp"
#include "simcollision\collisiondetector.hpp"



UserCollisionHandler::UserCollisionHandler()
{
   //simCollisionSolver = null;
   collisionManager = CollisionManager::GetInstance();
   collisionManager->AddRef();
}

UserCollisionHandler::~UserCollisionHandler()
{
   collisionManager->Release();
}

void UserCollisionHandler::AddCollisionObject(CollisionObject* inObject, int inArea)
{
   collisionManager->AddCollisionObject(inObject, inArea);
}

void UserCollisionHandler::RemoveCollisionObject(CollisionObject* inObject, int inArea = 0)
{
   collisionManager->RemoveCollisionObject(inObject, inArea);
}

void UserCollisionHandler::ResetCollisionObjects()
{
   collisionManager->ResetAll();
}

void UserCollisionHandler::ClearCollisions()
{
   collisionManager->ClearCollisions();
}

void UserCollisionHandler::DetectCollision()
{
   collisionManager->
}

void UserCollisionHandler::DetectCollision(int inArea);   // detect all collision in specified area

void UserCollisionHandler::SolveCollision();              // detect all collisions in all areas
void UserCollisionHandler::SolveCollision(int inArea);    // detect all collision in specified area

TArray<Collision> UserCollisionHandler::GetCollisions(int area = 0);
int UserCollisionHandler::GetNumArea() const;
