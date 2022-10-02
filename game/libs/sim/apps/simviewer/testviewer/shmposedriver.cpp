// shmposedriver.cpp

#include "shmposedriver.hpp"
#include "poser/joint.hpp"
#include <radmath/radmath.hpp>

SHMPoseDriver::SHMPoseDriver(poser::Pose* inPose, 
							 int inJointIndex, 
							 rmt::Vector inAmplitudeVector, 
							 float inFrequency_Hz)
:
mPose(NULL),
mJointIndex(inJointIndex),
mTotalTime(0.0f),
mAmplitudeVector(inAmplitudeVector),
mFrequency(inFrequency_Hz),
mFramePhase(0.0f)
{
}

void SHMPoseDriver::Advance(float dt)
{
	mTotalTime += dt;
	mFramePhase = mTotalTime * mFrequency * rmt::PI;
}

void SHMPoseDriver::Update(poser::Pose* inPose)
{
	rmt::Vector x;
	x = inPose->GetJoint(0)->GetObjectTranslation();
	inPose->GetJoint(0)->SetWorldTranslation(x.ScaleAdd( rmt::Sin(mFramePhase), mAmplitudeVector ));
}

RotatePoseDriver::RotatePoseDriver(poser::Pose* inPose,
								   int inJointIndex,
								   rmt::Vector inAxis,
								   float inFrequency_Hz)
								   
:mPose(NULL),
mJointIndex(inJointIndex),
mTotalTime(0.0f),
mAxis(inAxis),
mFrequency(inFrequency_Hz)
{
}

void RotatePoseDriver::Advance(float dt)
{
	mTotalTime += dt;
	mFramePhase = mTotalTime * mFrequency * rmt::PI;
}

void RotatePoseDriver::Update(poser::Pose* inPose)
{
	rmt::Matrix m = inPose->GetJoint(mJointIndex)->GetObjectMatrix();
	m.Row(3).y +=0.02f;
	m.Row(3).x +=0.16f;
	rmt::Matrix rotation;
	rotation.Identity();
	rotation.FillRotation(mAxis, mFramePhase);
	inPose->GetJoint(mJointIndex)->SetObjectMatrix(m.Mult(rotation));

}