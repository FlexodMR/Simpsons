//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <p3d/anim/sequencer.hpp>

#include "sequencerTest.hpp"

//-------------------------
// sequencer blending test
//-------------------------
SequencerBlendingTest::SequencerBlendingTest() 
: 
state(0), 
count(0), 
stateChangeTime(2000),
startCamPos(rmt::Vector(0.0f, 30.0f, -30.0f)),
sequence(NULL),
sphere(NULL)
{

}

void SequencerBlendingTest::Shutdown()
{
    if (sequence) sequence->Release();
    if (sphere) sphere->Release();
}

void SequencerBlendingTest::Setup()
{
    SetupSection();

    Load("seqblend/test.p3d");
    Load("seqblend/bouncingBall.seq");

    sequence = p3d::find<tSequencer>("bouncingball");
    if (sequence) 
    {
        sequence->AddRef();
        sequence->SetState("idle");

        tBlendFrameController* controller = p3d::find<tBlendFrameController>("centerSphere");
        if(controller)
        {
            sequence->SetAnimationTarget(controller);
        }
    }

    sphere = p3d::find<tDrawable>("centerSphere");
    if (sphere) 
    {
        sphere->AddRef();
    }
}

void SequencerBlendingTest::Display()
{
    if (sphere)
    {
        sphere->Display();
    }

}

void SequencerBlendingTest::Update(float deltaTime)
{
    // note that the animations in the pure3d file must be set to
    // cyclic.  otherwise, the transition blending wouldn't be
    // the way we'd want it to

    if (sequence) 
    {
        if (state == 0)
        {
            if (count < stateChangeTime)
            {
                sequence->SetState("centerSphereAnim");
            }
            else
            {
                count = 0;
                state = 1;
            }
        }
        else if (state == 1)
        {
            if (count < stateChangeTime)
            {
                sequence->SetState("stationarySphereAnim");
            }
            else
            {
                count = 0;
                state = 2;
            }
        }
        else if (state == 2)
        {
            if (count < stateChangeTime)
            {
                sequence->SetState("movedSphereAnim");
            }
            else
            {
                count = 0;
                state = 0;
            }
        }
        count++;

        //
        // Finally Update
        //
        sequence->Update(deltaTime);
    }
}

//------------------------
// event animation test
//------------------------

//Event Recipient for event animation test

tBounceSeqEvent::tBounceSeqEvent()
{
    memset(buffer, 0, tBounceSeqEventBuffSize);
}

struct GameSystemEventData
{
    int   damageValue;
    const char* name;
};

struct SoundSystemEventData
{
    int   objectType;
    const char* instanceName;
    float someFloat;
};

void tBounceSeqEvent::Dispatch
(
    tEvent* event, 
    tEventOrigin* origin, 
    const tName& addr
)
{
    memset(buffer, 0, tBounceSeqEventBuffSize);

    tGenericEvent* genericEvent = dynamic_cast<tGenericEvent*>(event);

    if(genericEvent)
    {        
        if(addr == "soundSystem")
        {
            SoundSystemEventData* soundEventData = static_cast<SoundSystemEventData*>(genericEvent->GetData());
            
            sprintf(buffer, "EventData: %d %s %f\n",   soundEventData->objectType,
                                                    soundEventData->instanceName,
                                                    soundEventData->someFloat);

            if(genericEvent->GetName() == tEntity::MakeUID("deadStart"))
            {
                strncat(buffer, "Beginning of dead state", tBounceSeqEventBuffSize);
            }
            if(genericEvent->GetName() == tEntity::MakeUID("deadMiddle"))
            {
                strncat(buffer, "Middle of dead state", tBounceSeqEventBuffSize);
            }
            if(genericEvent->GetName() == tEntity::MakeUID("deadFinish"))
            {
                strncat(buffer, "End of dead state", tBounceSeqEventBuffSize);
            }


        }
        else if(addr == "gameSystem")
        {
            GameSystemEventData* gameEventData = static_cast<GameSystemEventData*>(genericEvent->GetData());

            sprintf(buffer, "EventData: %d %s\n",  gameEventData->damageValue,
                                                gameEventData->name);
            if(genericEvent->GetName() == tEntity::MakeUID("bounceStart"))
            {
                strncat(buffer, "Beginning of bouncing state", tBounceSeqEventBuffSize);            
            }
            if(genericEvent->GetName() == tEntity::MakeUID("bounceMiddle"))
            {
                strncat(buffer, "Middle of bouncing state", tBounceSeqEventBuffSize);
            }
            if(genericEvent->GetName() == tEntity::MakeUID("bounceFinish"))
            {
                strncat(buffer, "End of bouncing state", tBounceSeqEventBuffSize);
            }
        }
    }
}

void tBounceSeqEvent::Display()
{
    p3d::pddi->DrawString(buffer, 225, 275, tColour(255, 255, 255));
}

//start of EventAnimationTest code

EventAnimationTest::EventAnimationTest() 
: 
state(0), 
count(0), 
stateChangeTime(1000),
startCamPos(rmt::Vector(0.0f, 30.0f, -30.0f)),
sequence(NULL), 
sphere(NULL), 
eventRecipient(NULL)
{

}

void EventAnimationTest::Shutdown()
{
    if (sequence) sequence->Release();
    if (sphere) sphere->Release();
    if (eventRecipient) eventRecipient->Release();
}

void EventAnimationTest::Setup()
{
    SetupSection();

    Load("eventAnimTest/events.p3d");
    Load("eventAnimTest/eventAnim.p3d");
    Load("eventAnimTest/eventAnim.seq");

    sequence = p3d::find<tSequencer>("eventBouncingball");
    if (sequence) 
    {
        sequence->AddRef();
        sequence->SetState("idle");
    }

    sphere = p3d::find<tDrawable>("centerSphere");
    if (sphere) sphere->AddRef();

    //initialize the event recipient
    eventRecipient = new tBounceSeqEvent();
    if (eventRecipient) eventRecipient->AddRef();

    //set the recipient to the sequencer
    if(sequence) sequence->SetEventRecipient(eventRecipient);
}

void EventAnimationTest::Display()
{
    if(sphere) 
    {
        sphere->Display();
    }
    if(eventRecipient)
    {
        eventRecipient->Display();
    }
}

void EventAnimationTest::Update(float deltaTime)
{
    if (sequence)
    {
        if (state == 0) //bounce
        {
            if (count < stateChangeTime)
            {
                sequence->SetState("centerSphereAnim");
            }
            else
            {
                count = 0;
                state = 1;
            }
        }
        else if (state == 1) //dead
        {
            if (count < stateChangeTime)
            {
                sequence->SetState("stationarySphereAnim");
            }
            else
            {
                count = 0;
                state = 0;
            }
        }
        count++;

        sequence->Update(deltaTime);
    }    
}
