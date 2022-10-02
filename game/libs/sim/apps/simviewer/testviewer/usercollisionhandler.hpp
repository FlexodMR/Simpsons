

#include "simcommon/tlist"

class CollisionObject;
class CollisionManager;

class UserCollisionHandler
{
public:
   UserCollisionHandler();
   virtual ~UserCollisionHandler();
   //CollisionSolver* simCollisionSolver;
   CollisionManager* collisionManager;

   void AddCollisionObject(CollisionObject* inObject, int inArea = 0);
   void RemoveCollisionObject(CollisionObject* inObject, int inArea = 0);

   void ResetCollisionObjects();       // remove all collision objects from all areas
   void ClearCollisions();             // remove all collision from all areas

   void DetectCollision();             // detect all collisions in all areas
   void DetectCollision(int inArea);   // detect all collision in specified area

   void SolveCollision();              // detect all collisions in all areas
   void SolveCollision(int inArea);    // detect all collision in specified area

   TArray<Collision> GetCollisions(int area = 0);
   int GetNumArea() const;
};

