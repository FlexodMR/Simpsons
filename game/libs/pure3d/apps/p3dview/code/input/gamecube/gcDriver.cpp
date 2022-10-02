//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#include "gcDriver.hpp"

#include <dolphin/vi.h>
#include <stdio.h>
#include <string.h>

#include <p3d/utility.hpp>

//************************************************
//
//  gcDriver
//
//
gcDriver::gcDriver(void)
{
    mInputCount = 0;

    VIInit();   // Must call VIInit() before PADInit();
    PADInit();

    int joy;
    for (joy = 0; joy < 4; joy++)
    {
        char s[128];

        int joyitem = 0;

        // The order of these MUST match the bir ordering of the PAD_STATUS struct
        sprintf(s, "JOY%d_DPAD_LEFT", joy);
        Add(joy, Input::TYPE_DIGITAL, joyitem++, "Dpad Left", s);

        sprintf(s, "JOY%d_DPAD_RIGHT", joy);
        Add(joy, Input::TYPE_DIGITAL, joyitem++, "Dpad Right", s);

        sprintf(s, "JOY%d_DPAD_DOWN", joy);
        Add(joy, Input::TYPE_DIGITAL, joyitem++, "Dpad Down", s);

        sprintf(s, "JOY%d_DPAD_UP", joy);
        Add(joy, Input::TYPE_DIGITAL, joyitem++, "Dpad Up", s);

        sprintf(s, "JOY%d_BUTTON4", joy);
        Add(joy, Input::TYPE_DIGITAL, joyitem++, "Z", s);

        sprintf(s, "JOY%d_BUTTON_R", joy);
        Add(joy, Input::TYPE_DIGITAL, joyitem++, "R", s);

        sprintf(s, "JOY%d_BUTTON_L", joy);
        Add(joy, Input::TYPE_DIGITAL, joyitem++, "L", s);

        sprintf(s, "JOY%d_BUTTON_UNKNOWN", joy);
        Add(joy, Input::TYPE_DIGITAL, joyitem++, "?", s);

        sprintf(s, "JOY%d_BUTTON0", joy);
        Add(joy, Input::TYPE_DIGITAL, joyitem++, "A", s);

        sprintf(s, "JOY%d_BUTTON1", joy);
        Add(joy, Input::TYPE_DIGITAL, joyitem++, "B", s);

        sprintf(s, "JOY%d_BUTTON2", joy);
        Add(joy, Input::TYPE_DIGITAL, joyitem++, "X", s);

        sprintf(s, "JOY%d_BUTTON3", joy);
        Add(joy, Input::TYPE_DIGITAL, joyitem++, "Y", s);

        sprintf(s, "JOY%d_BUTTON_START", joy);
        Add(joy, Input::TYPE_DIGITAL, joyitem++, "Start", s);

        sprintf(s, "JOY%d_STICK0_X", joy);
        Add(joy, Input::TYPE_RANGED, joyitem++, "X", s);

        sprintf(s, "JOY%d_STICK0_Y", joy);
        Add(joy, Input::TYPE_RANGED, joyitem++, "Y", s);

        sprintf(s, "JOY%d_STICK1_X", joy);
        Add(joy, Input::TYPE_RANGED, joyitem++, "SubX", s);

        sprintf(s, "JOY%d_STICK1_Y", joy);
        Add(joy, Input::TYPE_RANGED, joyitem++, "SubY", s);
    }

    // Get things going
    PADRead(mPads);
    PADClamp(mPads);
}


//************************************************
//
//  gcDriver
//
//
gcDriver::~gcDriver()
{

}

//************************************************
//
//  gcDriver
//
//
// Total controls in gcDriver
unsigned gcDriver::NumInputs(void)
{
    return mInputCount;
}

//************************************************
//
//  gcDriver
//
//
// returns index
unsigned gcDriver::FindInput(char *name)
{
    unsigned a;
    for (a = 0; a < mInputCount; a++)
    {
        if (!strcmp(name, mDescriptions[a].longName)) return a;
    }
    
    return 0;
}


//************************************************
//
//  gcDriver
//
//
Input::Description *gcDriver::DescribeInput(unsigned index)
{
    return &mDescriptions[index];
}



//************************************************
//
//  gcDriver
//
//
void gcDriver::SetRecipient(Input::Recipient *r)
{
    mRecipient = r;
}


//************************************************
//
//  gcDriver
//
//
Input::Recipient *gcDriver::GetRecipient(void)
{
    return mRecipient;
}


//************************************************
//
//  gcDriver
//
//
void gcDriver::CaptureMouse(bool)
{ 
}


//************************************************
//
//  gcDriver
//
//
void gcDriver::HideMouse(bool)
{
}


//************************************************
//
//  gcDriver
//
//
void gcDriver::CaptureText(bool)
{
}


//************************************************
//
//  gcDriver
//                                       
//
void gcDriver::Add(unsigned devI, Input::Type type, unsigned typeI, char *shortName, char *longName)
{
    mDescriptions[mInputCount].id          = mInputCount;
    mDescriptions[mInputCount].device      = Input::DEVICE_JOYSTICK;
    mDescriptions[mInputCount].deviceIndex = devI;
    mDescriptions[mInputCount].type        = type;
    mDescriptions[mInputCount].typeIndex   = typeI;

    strcpy(mDescriptions[mInputCount].shortName, shortName);
    strcpy(mDescriptions[mInputCount].longName, longName);

    ++mInputCount;
    return;
}



//************************************************
//
//  gcDriver
//
//
void gcDriver::IssueEvents(void)
{

    unsigned short previousbuttons[4];
    int a;
    for (a = 0; a < PAD_MAX_CONTROLLERS; a++)
    {
        previousbuttons[a] = mPads[a].button;
    }

    PADRead(mPads);
    PADClamp(mPads);

    for (a = 0; a < PAD_MAX_CONTROLLERS; a++)
    {
        if (mPads[a].err != 0) 
        {
            PADReset(PAD_CHAN0_BIT >> a);
        }
    }


    unsigned short change[4];

    for (a = 0; a < PAD_MAX_CONTROLLERS; a++)
    {
        change[a] = (previousbuttons[a] ^ mPads[a].button);
    }
    

    for (a = 0; a < 4; a++)
    {
        int base = 17 * a;

        int bit;
        for (bit = 0; bit < 13; bit++)
        {
            unsigned short mask = 0x1 << bit;
            
            if ((change[a] & mask) != 0)
            {
                bool down = ((mPads[a].button & mask) == mask);
                mRecipient->Digital(&mDescriptions[base + bit], down);
            }
        }

        const int stick_x = 13;
        const int stick_y = 14;

        const int substick_x = 15;
        const int substick_y = 16;

        float x = 0.0F;
        float y = 0.0F;

        float pan_scale = 3.0F;
        float rot_scale = 3.0F;

        mRecipient->Ranged(&mDescriptions[base + stick_x], (float)mPads[a].stickX / 128.0F);
        mRecipient->Ranged(&mDescriptions[base + stick_y], (float)mPads[a].stickY / 128.0F);

        mRecipient->Ranged(&mDescriptions[base + substick_x], (float)mPads[a].substickX / 128.0F);
        mRecipient->Ranged(&mDescriptions[base + substick_y], (float)mPads[a].substickY / 128.0F);
    }

}


