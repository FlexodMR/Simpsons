#ifndef _AICOLLISIONSOLVERAGENT_HPP_
#define _AICOLLISIONSOLVERAGENT_HPP_

#include <radsound.hpp>

#include "simcommon/tlist.hpp"
#include "simcollision/impulsebasedcollisionsolver.hpp"
#include "simcollision/collisionanalyser.hpp"
#include "simcollision/collisionanalyserdata.hpp"

class AICollisionSolverAgent
: public sim::CollisionSolverAgent
{
public:
    AICollisionSolverAgent();
    ~AICollisionSolverAgent();

    sim::Solving_Answer CollisionEvent(  
                                    sim::SimState* inSimStateA, int indexA, 
                                    sim::SimState* inSimStateB, int indexB, 
                                    const rmt::Vector& inPos, 
                                    float inDvN, float inDvT,
                                    sim::SimulatedObject** simA, 
                                    sim::SimulatedObject** simB);
};

#endif