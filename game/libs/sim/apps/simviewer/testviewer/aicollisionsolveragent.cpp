

#include "aicollisionsolveragent.hpp"
#include "simcollision/collisionanalyserdata.hpp"
#include "simcommon/simulatedobject.hpp"


#define SIMULATE_ARTICULATED


AICollisionSolverAgent::AICollisionSolverAgent()
{
    EnableCollisionAnalyser();
}

AICollisionSolverAgent::~AICollisionSolverAgent()
{
    DisableCollisionAnalyser();
}

inline void AdjustSimStateControl(sim::SimState* inSimState, sim::SimulatedObject* simObject)
{
    if (simObject->Type() == sim::RigidObjectType)
    {
        if (inSimState->GetControl() == sim::simAICtrl)
        {
            inSimState->SetControl(sim::simSimulationCtrl);
        }
    }
    else if (simObject->Type() == sim::ArticulatedObjectType)
    {
#ifdef SIMULATE_ARTICULATED
        if (inSimState->GetControl() == sim::simAICtrl)
        {
            inSimState->SetControl(sim::simSimulationCtrl);
        }
#endif
    }
}

sim::Solving_Answer AICollisionSolverAgent::CollisionEvent( 
    sim::SimState* inSimStateA, int indexA, 
    sim::SimState* inSimStateB, int indexB, 
    const rmt::Vector& inPos, 
    float inDvN, float inDvT,
    sim::SimulatedObject** simA, 
    sim::SimulatedObject** simB)
{
    // this is the most important callback. 
    // This is the time to set the rigid body control to simulationControl if not the case
    // this is also the time to generate appropriate sound if necessary
    
    // the index indicates on which articulation of the skeleton the collision occured or,
    // or if index == -1, in indicates that the object is a rigid body.
    
    if (*simA)
    {
        AdjustSimStateControl(inSimStateA, *simA);
    }
    if (*simB)
    {
        AdjustSimStateControl(inSimStateB, *simB);
    }
    
    if(mAnalyser)
        mAnalyser->CollisionEvent(inSimStateA, indexA, inSimStateB, indexB, inPos, inDvN, inDvT);
    
    return sim::Solving_Continue;

}
