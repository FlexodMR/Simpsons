//shmposedriver.hpp

#ifndef _SHM_POSEDRIVER_HPP
#define _SHM_POSEDRIVER_HPP

#include <p3d/p3dtypes.hpp>
#include "poser/pose.hpp"
#include "poser/posedriver.hpp"


class SHMPoseDriver : public poser::PoseDriver
{
public:

	SHMPoseDriver(poser::Pose* inPose, 
				  int inJointIndex, 
				  rmt::Vector inAmplitudeVector,
				  float inFrequency_Hz);
	void Advance(float dt);
	void Update(poser::Pose* inPose);

	float			mTotalTime;
private:
	poser::Pose*	mPose;
	int				mJointIndex;
	rmt::Vector		mAmplitudeVector;
	float			mFrequency;			// frequency in cyles per second
	float			mFramePhase;	    // mFrequency * dt

};

class RotatePoseDriver : public poser::PoseDriver
{
public:

	RotatePoseDriver(poser::Pose* inPose,
					 int inJointIndex,
					 rmt::Vector inAxis,
					 float inFrequency_Hz);
	void Advance(float dt);
	void Update(poser::Pose* inPose);

private:
	poser::Pose*	mPose;
	int				mJointIndex;
	rmt::Vector		mAxis;
	float			mFrequency;			// frequency in cyles per second
	float			mFramePhase;	    // mFrequency * dt
	float			mTotalTime;
};

#endif