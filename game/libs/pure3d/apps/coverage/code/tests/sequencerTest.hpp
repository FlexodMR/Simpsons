//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef SEQUENCERTEST_HPP
#define SEQUENCERTEST_HPP

#include "coverage.hpp"

//-------------------------
// sequencer blending test
//-------------------------
class SequencerBlendingTest : public CoverageTest
{
public:
    SequencerBlendingTest();

    virtual const char* GetName() { return "Sequencer Blending"; }

    virtual rmt::Vector GetCameraPos() { return startCamPos; }

    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();
    virtual void Update(float deltaTime);

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
         Displays a bouncing ball which bounces to rest,\n\
         then starts bouncing again, then loops\n";
    }

private:
    int state;
    int count;
    int stateChangeTime;
    rmt::Vector startCamPos;
    tSequencer* sequence;
    tDrawable* sphere;
};

//-----------------------
// event animation test
//-----------------------

//Event recipient class for event animation test
const int tBounceSeqEventBuffSize = 1024;
class tBounceSeqEvent : public tRefCounted, public tEventRecipient
{
public:
    void AddRef(void) { tRefCounted::AddRef();}
    void Release(void) { tRefCounted::Release();}

    tBounceSeqEvent();
    virtual void Dispatch(tEvent* event, tEventOrigin* origin, const tName& address);
    virtual void Display();
    virtual bool HandlesEvents(const tName& address){return(true);}

private:
    char buffer[tBounceSeqEventBuffSize];
};


class EventAnimationTest : public CoverageTest
{
public:
    EventAnimationTest();

    virtual const char* GetName() { return "Event Animation"; }
    
    virtual rmt::Vector GetCameraPos() { return startCamPos; }

    virtual void Setup();
    virtual void Shutdown();
    virtual void Display();
    virtual void Update(float deltaTime);

protected:
    virtual char* GetHelpText()
    { return "\
    Expected Result: \n\
         Indicates when the animation begins, is in the the middle\n\
         and when it ends\n";
    }

private:
    int state;
    int count;
    int stateChangeTime;
    rmt::Vector startCamPos;


    tSequencer* sequence;
    tDrawable* sphere;
    tBounceSeqEvent* eventRecipient;
};

#endif
