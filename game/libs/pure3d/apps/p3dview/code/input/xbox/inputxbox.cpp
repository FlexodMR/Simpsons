//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <input/xbox/inputxbox.hpp>
#include <stdio.h>

namespace Input
{
    
XBox::XBox()
{
    // Get a mask of all currently available devices
    XInitDevices(0,NULL);
    DWORD dwDeviceMask = XGetDevices( XDEVICE_TYPE_GAMEPAD );
    for( DWORD i=0; i < XGetPortCount(); i++ )
    {
        if( dwDeviceMask & (1<<i) ) 
        {
            // Get a handle to the device
            gamepadDevices[i] = XInputOpen( XDEVICE_TYPE_GAMEPAD, i, 
                                             XDEVICE_NO_SLOT, NULL );
        }
        else
        {
            gamepadDevices[i] = NULL;
        }
    }

    oldButtons = 0;

    for(i = 0; i < INPUTS_PER_PAD * 4; i++)
    {
        desc[i].id = i;
        desc[i].shortName[0] = 0;
        desc[i].longName[0] = 0;
        desc[i].device = DEVICE_JOYSTICK;
        desc[i].type = TYPE_NONE;
        desc[i].deviceIndex = i / INPUTS_PER_PAD;
        desc[i].typeIndex = 0;
        desc[i].bounded = true;
        desc[i].low = 0.0f;
        desc[i].high = 0.0f;
    }

   for(unsigned gamepad = 0; gamepad < 4; gamepad ++)
   {
       unsigned gamepadBase = gamepad * INPUTS_PER_PAD;

       char buf[256];

       sprintf(buf, "JOY%d_STICK0_X", gamepad);
       strcpy(desc[gamepadBase].longName, buf);
       desc[gamepadBase].type = TYPE_RANGED;
       gamepadBase++;

       sprintf(buf, "JOY%d_STICK0_Y", gamepad);
       strcpy(desc[gamepadBase].longName, buf);
       desc[gamepadBase].type = TYPE_RANGED;
       gamepadBase++;

       sprintf(buf, "JOY%d_STICK1_X", gamepad);
       strcpy(desc[gamepadBase].longName, buf);
       desc[gamepadBase].type = TYPE_RANGED;
       gamepadBase++;

       sprintf(buf, "JOY%d_STICK1_Y", gamepad);
       strcpy(desc[gamepadBase].longName, buf);
       desc[gamepadBase].type = TYPE_RANGED;
       gamepadBase++;

       for(int button = 0; button < 32; button++)
       {
           sprintf(buf, "JOY%d_BUTTON%d", gamepad, button);
           strcpy(desc[gamepadBase].longName, buf);
           desc[gamepadBase].type = TYPE_DIGITAL;
           gamepadBase++;
       }

       sprintf(desc[(gamepad * INPUTS_PER_PAD) + 4 + 6].longName,  "JOY%d_BUTTON_L",      gamepad);
       sprintf(desc[(gamepad * INPUTS_PER_PAD) + 4 + 7].longName,  "JOY%d_BUTTON_R",      gamepad);
       sprintf(desc[(gamepad * INPUTS_PER_PAD) + 4 + 8].longName,  "JOY%d_DPAD_UP",       gamepad);
       sprintf(desc[(gamepad * INPUTS_PER_PAD) + 4 + 9].longName,  "JOY%d_DPAD_DOWN",     gamepad);
       sprintf(desc[(gamepad * INPUTS_PER_PAD) + 4 + 10].longName, "JOY%d_DPAD_LEFT",     gamepad);
       sprintf(desc[(gamepad * INPUTS_PER_PAD) + 4 + 11].longName, "JOY%d_DPAD_RIGHT",    gamepad);
       sprintf(desc[(gamepad * INPUTS_PER_PAD) + 4 + 12].longName, "JOY%d_BUTTON_START",  gamepad);
       sprintf(desc[(gamepad * INPUTS_PER_PAD) + 4 + 13].longName, "JOY%d_BUTTON_SELECT", gamepad);
       sprintf(desc[(gamepad * INPUTS_PER_PAD) + 4 + 14].longName, "JOY%d_BUTTON_STICK0", gamepad);
       sprintf(desc[(gamepad * INPUTS_PER_PAD) + 4 + 15].longName, "JOY%d_BUTTON_STICK1", gamepad);
   }
}

XBox::~XBox()
{
}

unsigned XBox::NumInputs(void)
{
    return INPUTS_PER_PAD * 4;
}

unsigned XBox::FindInput(char* name)
{
    return 0;
}

Description* XBox::DescribeInput(unsigned index)
{
    if (index >= INPUTS_PER_PAD * 4)
        return NULL;

    return &desc[index];
}

void XBox::SetRecipient(Recipient* r)
{
    recipient = r;
}

Recipient* XBox::GetRecipient(void)
{
    return recipient;
}

void XBox::IssueEvents(void)
{
    if(!recipient)
        return;

    // Loop through all gamepads
    unsigned short newButtons = 0;

    DWORD dwDeviceMask = XGetDevices( XDEVICE_TYPE_GAMEPAD );
    for( DWORD i=0; i < XGetPortCount(); i++ )
    {
        if( (dwDeviceMask & (1<<i)) && !gamepadDevices[i] ) 
        {
            // Get a handle to the device
            gamepadDevices[i] = XInputOpen( XDEVICE_TYPE_GAMEPAD, i, 
                                                XDEVICE_NO_SLOT, NULL );
            int rc = GetLastError();
        }
    }

    for( DWORD i=0; i < 1; i++)//XGetPortCount(); i++ )
    {
        // If we have a valid device, poll it's state and track button changes
        if( gamepadDevices[i] )
        {
            // Read the input state
            XINPUT_STATE xiState;
            XInputGetState( gamepadDevices[i], &xiState );


            // deadzone the thumbsticks
            const int deadZone = 8192;

            if((xiState.Gamepad.sThumbLX < deadZone) && (xiState.Gamepad.sThumbLX > -deadZone))
               xiState.Gamepad.sThumbLX = 0;

            if((xiState.Gamepad.sThumbLY < deadZone) && (xiState.Gamepad.sThumbLY > -deadZone))
               xiState.Gamepad.sThumbLY = 0;

            if((xiState.Gamepad.sThumbRX < deadZone) && (xiState.Gamepad.sThumbRX > -deadZone))
               xiState.Gamepad.sThumbRX = 0;

            if((xiState.Gamepad.sThumbRY < deadZone) && (xiState.Gamepad.sThumbRY > -deadZone))
               xiState.Gamepad.sThumbRY = 0;

            recipient->Ranged(&desc[INPUTS_PER_PAD * i] + 0, float(xiState.Gamepad.sThumbLX) / 32767.0f);
            recipient->Ranged(&desc[INPUTS_PER_PAD * i] + 1, float(xiState.Gamepad.sThumbLY) / 32767.0f);
            recipient->Ranged(&desc[INPUTS_PER_PAD * i] + 2, float(xiState.Gamepad.sThumbRX) / 32767.0f);
            recipient->Ranged(&desc[INPUTS_PER_PAD * i] + 3, float(xiState.Gamepad.sThumbRY) / 32767.0f);
                
            // Copy gamepad to local structure
            newButtons |= (xiState.Gamepad.wButtons << 8);

            for(int i = 0; i < 8; i++)
               if(xiState.Gamepad.bAnalogButtons[i])
                  newButtons |= 0x1 << i;
        }
    }

    for(int i = 0; i < 32; i++)
    {
        bool n = (newButtons & (1 << i)) != 0;
        bool o = (oldButtons & (1 << i)) != 0;

        if(n ^ o)
        {
            recipient->Digital(&desc[0 + 4 + i], n);
        }
    }

    oldButtons = newButtons;
}

}