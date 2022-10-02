//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include"inputwin32.hpp"
#define WIN32_LEAN_AND_MEAN
#define WIN32_EXTRA_LEAN
#include<windows.h>
#include<string.h>
#include<stdio.h>
#include<mmsystem.h>
#include<assert.h>

namespace Input
{

const int mouseButtonLookup[8] = 
{
    0,
    0,
    1,
    0,
    2,
    0,
    0,
    0
};

static JOYCAPS joyCaps[16];
static JOYINFOEX joyInfo[16];

void Win32::Add(Device dev, unsigned devI, Type type, unsigned typeI, char* shortName, char* longName)
{
    desc[nInputs].id = nInputs;
    desc[nInputs].device = dev;
    desc[nInputs].deviceIndex = devI;
    desc[nInputs].type = type;
    desc[nInputs].typeIndex = typeI;
    strcpy(desc[nInputs].shortName, shortName);
    strcpy(desc[nInputs].longName, longName);
    nInputs++;
    return;
}

struct bufferedButton
{
    unsigned magic;
    unsigned button;
    bool down;
};

struct bufferedRanged
{
    unsigned magic;
    unsigned axis;
    float val;
};

struct bufferedPointer
{
    unsigned magic;
};

static const int magicChar    = 0x0;
static const int magicButton  = 0x1;
static const int magicRanged  = 0x2;
static const int magicPointer = 0x3;

Win32::Win32()
{
    menuSelect = false;
    recipient = NULL;
    nInputs = 256;
    mouseWheelMessage = 0;
    mouseButtons = lastMouseButtons = 0;

    static int first = 1;


    if(first)
    {
        int i;

        for(i = 0; i < 256; i++)
        {
            desc[i].id = i;
            desc[i].shortName[0] = 0;
            desc[i].longName[0] = 0;
            desc[i].device = DEVICE_KEYBOARD;
            desc[i].type = TYPE_DIGITAL;
            desc[i].deviceIndex = i;
            desc[i].typeIndex = 0;
            desc[i].bounded = true;
            desc[i].low = 0.0f;
            desc[i].high = 0.0f;
        }

        for(i = 256; i < MAX_INPUTS; i++)
        {
            desc[i].id = i;
            desc[i].shortName[0] = 0;
            desc[i].longName[0] = 0;
            desc[i].device = DEVICE_NONE;
            desc[i].type = TYPE_NONE;
            desc[i].deviceIndex = 0;
            desc[i].typeIndex = 0;
            desc[i].bounded = true;
            desc[i].low = 0.0f;
            desc[i].high = 0.0f;
        }

//      first = 0;

        strcpy(desc[0xC0].longName,"KEY_TILDE");
        strcpy(desc['A'].longName,"KEY_A");
        strcpy(desc['B'].longName,"KEY_B");
        strcpy(desc['C'].longName,"KEY_C");
        strcpy(desc['D'].longName,"KEY_D");
        strcpy(desc['E'].longName,"KEY_E");
        strcpy(desc['F'].longName,"KEY_F");
        strcpy(desc['G'].longName,"KEY_G");
        strcpy(desc['H'].longName,"KEY_H");
        strcpy(desc['I'].longName,"KEY_I");
        strcpy(desc['J'].longName,"KEY_J");
        strcpy(desc['K'].longName,"KEY_K");
        strcpy(desc['L'].longName,"KEY_L");
        strcpy(desc['M'].longName,"KEY_M");
        strcpy(desc['N'].longName,"KEY_N");
        strcpy(desc['O'].longName,"KEY_O");
        strcpy(desc['P'].longName,"KEY_P");
        strcpy(desc['Q'].longName,"KEY_Q");
        strcpy(desc['R'].longName,"KEY_R");
        strcpy(desc['S'].longName,"KEY_S");
        strcpy(desc['T'].longName,"KEY_T");
        strcpy(desc['U'].longName,"KEY_U");
        strcpy(desc['V'].longName,"KEY_V");
        strcpy(desc['W'].longName,"KEY_W");
        strcpy(desc['X'].longName,"KEY_X");
        strcpy(desc['Y'].longName,"KEY_Y");
        strcpy(desc['Z'].longName,"KEY_Z");
        strcpy(desc['1'].longName,"KEY_1");
        strcpy(desc['2'].longName,"KEY_2");
        strcpy(desc['3'].longName,"KEY_3");
        strcpy(desc['4'].longName,"KEY_4");
        strcpy(desc['5'].longName,"KEY_5");
        strcpy(desc['6'].longName,"KEY_6");
        strcpy(desc['7'].longName,"KEY_7");
        strcpy(desc['8'].longName,"KEY_8");
        strcpy(desc['9'].longName,"KEY_9");
        strcpy(desc['0'].longName,"KEY_0");
        strcpy(desc[0x01].longName,"KEY_LBUTTON");
        strcpy(desc[0x02].longName,"KEY_RBUTTON");
        strcpy(desc[0x03].longName,"KEY_CANCEL");
        strcpy(desc[0x04].longName,"KEY_MBUTTON");
        strcpy(desc[0x08].longName,"KEY_BACK");
        strcpy(desc[0x09].longName,"KEY_TAB");
        strcpy(desc[0x0C].longName,"KEY_CLEAR");
        strcpy(desc[0x0D].longName,"KEY_RETURN");
        strcpy(desc[0x10].longName,"KEY_SHIFT");
        strcpy(desc[0x11].longName,"KEY_CONTROL");
        strcpy(desc[0x12].longName,"KEY_MENU");
        strcpy(desc[0x13].longName,"KEY_PAUSE");
        strcpy(desc[0x14].longName,"KEY_CAPITAL");
        strcpy(desc[0x1B].longName,"KEY_ESCAPE");
        strcpy(desc[0x20].longName,"KEY_SPACE");
        strcpy(desc[0x21].longName,"KEY_PGUP");
        strcpy(desc[0x22].longName,"KEY_PGDN");
        strcpy(desc[0x23].longName,"KEY_END");
        strcpy(desc[0x24].longName,"KEY_HOME");
        strcpy(desc[0x25].longName,"KEY_LEFT");
        strcpy(desc[0x26].longName,"KEY_UP");
        strcpy(desc[0x27].longName,"KEY_RIGHT");
        strcpy(desc[0x28].longName,"KEY_DOWN");
        strcpy(desc[0x29].longName,"KEY_SELECT");
        strcpy(desc[0x2A].longName,"KEY_PRINT");
        strcpy(desc[0x2B].longName,"KEY_EXECUTE");
        strcpy(desc[0x2C].longName,"KEY_SNAPSHOT");
        strcpy(desc[0x2D].longName,"KEY_INSERT");
        strcpy(desc[0x2E].longName,"KEY_DELETE");
        strcpy(desc[0x2F].longName,"KEY_HELP");
        strcpy(desc[0x60].longName,"KEY_NUMPAD0");
        strcpy(desc[0x61].longName,"KEY_NUMPAD1");
        strcpy(desc[0x62].longName,"KEY_NUMPAD2");
        strcpy(desc[0x63].longName,"KEY_NUMPAD3");
        strcpy(desc[0x64].longName,"KEY_NUMPAD4");
        strcpy(desc[0x65].longName,"KEY_NUMPAD5");
        strcpy(desc[0x66].longName,"KEY_NUMPAD6");
        strcpy(desc[0x67].longName,"KEY_NUMPAD7");
        strcpy(desc[0x68].longName,"KEY_NUMPAD8");
        strcpy(desc[0x69].longName,"KEY_NUMPAD9");
        strcpy(desc[0x6A].longName,"KEY_MULTIPLY");
        strcpy(desc[0x6B].longName,"KEY_ADD");
        strcpy(desc[0x6C].longName,"KEY_SEPARATOR");
        strcpy(desc[0x6D].longName,"KEY_SUBTRACT");
        strcpy(desc[0x6E].longName,"KEY_DECIMAL");
        strcpy(desc[0x6F].longName,"KEY_DIVIDE");
        strcpy(desc[0x70].longName,"KEY_F1");
        strcpy(desc[0x71].longName,"KEY_F2");
        strcpy(desc[0x72].longName,"KEY_F3");
        strcpy(desc[0x73].longName,"KEY_F4");
        strcpy(desc[0x74].longName,"KEY_F5");
        strcpy(desc[0x75].longName,"KEY_F6");
        strcpy(desc[0x76].longName,"KEY_F7");
        strcpy(desc[0x77].longName,"KEY_F8");
        strcpy(desc[0x78].longName,"KEY_F9");
        strcpy(desc[0x79].longName,"KEY_F10");
        strcpy(desc[0x7A].longName,"KEY_F11");
        strcpy(desc[0x7B].longName,"KEY_F12");
        strcpy(desc[0x7C].longName,"KEY_F13");
        strcpy(desc[0x7D].longName,"KEY_F14");
        strcpy(desc[0x7E].longName,"KEY_F15");
        strcpy(desc[0x7F].longName,"KEY_F16");
        strcpy(desc[0x80].longName,"KEY_F17");
        strcpy(desc[0x81].longName,"KEY_F18");
        strcpy(desc[0x82].longName,"KEY_F19");
        strcpy(desc[0x83].longName,"KEY_F20");
        strcpy(desc[0x84].longName,"KEY_F21");
        strcpy(desc[0x85].longName,"KEY_F22");
        strcpy(desc[0x86].longName,"KEY_F23");
        strcpy(desc[0x87].longName,"KEY_F24");
        strcpy(desc[0x90].longName,"KEY_NUMLOCK");
        strcpy(desc[0x91].longName,"KEY_SCROLL");
        strcpy(desc[0xA0].longName,"KEY_LSHIFT");
        strcpy(desc[0xA1].longName,"KEY_RSHIFT");
        strcpy(desc[0xA2].longName,"KEY_LCONTROL");
        strcpy(desc[0xA3].longName,"KEY_RCONTROL");
        strcpy(desc[0xA4].longName,"KEY_LMENU");
        strcpy(desc[0xA5].longName,"KEY_RMENU");
        strcpy(desc[0xDB].longName,"KEY_[");
        strcpy(desc[0xDD].longName,"KEY_]");
        strcpy(desc[0xE5].longName,"KEY_PROCESSKEY");
        strcpy(desc[0xF6].longName,"KEY_ATTN");
        strcpy(desc[0xF7].longName,"KEY_CRSEL");
        strcpy(desc[0xF8].longName,"KEY_EXSEL");
        strcpy(desc[0xF9].longName,"KEY_EREOF");
        strcpy(desc[0xFA].longName,"KEY_PLAY");
        strcpy(desc[0xFB].longName,"KEY_ZOOM");
        strcpy(desc[0xFC].longName,"KEY_NONAME");
        strcpy(desc[0xFD].longName,"KEY_PA1");
        strcpy(desc[0xFE].longName,"KEY_OEM_CLEAR");

        mouseBase = nInputs;

        Add(DEVICE_MOUSE,0,TYPE_POINTER, 0, "MOUSE","MOUSE");
        Add(DEVICE_MOUSE,0,TYPE_RANGED, 0, "X","MOUSE_X");
        Add(DEVICE_MOUSE,0,TYPE_RANGED, 1, "Y","MOUSE_Y");
        Add(DEVICE_MOUSE,0,TYPE_DIGITAL, 0, "BUTTON0","MOUSE_BUTTON0");
        Add(DEVICE_MOUSE,0,TYPE_DIGITAL, 1, "BUTTON1","MOUSE_BUTTON1");
        Add(DEVICE_MOUSE,0,TYPE_DIGITAL, 2, "BUTTON2","MOUSE_BUTTON2");
        Add(DEVICE_MOUSE,0,TYPE_DIGITAL, 3, "WHEELUP","MOUSE_WHEELUP");
        Add(DEVICE_MOUSE,0,TYPE_DIGITAL, 4, "WHEELDOWN","MOUSE_WHEELDOWN");
        Add(DEVICE_MOUSE,0,TYPE_DIGITAL, 5, "CHORD01","MOUSE_CHORD01");
        Add(DEVICE_MOUSE,0,TYPE_DIGITAL, 6, "CHORD02","MOUSE_CHORD02");
        Add(DEVICE_MOUSE,0,TYPE_DIGITAL, 7, "CHORD12","MOUSE_CHORD12");
        Add(DEVICE_MOUSE,0,TYPE_DIGITAL, 8, "CHORD012","MOUSE_CHORD012");

        nJoyDevs = joyGetNumDevs();
        for(unsigned dev = 0; dev < nJoyDevs; dev++)
        {
            JOYINFO dummy;

            joyActive[dev] = false;

            if(joyGetPos(dev,&dummy) != JOYERR_NOERROR)
                continue;

            joyInfo[dev].dwSize = sizeof(JOYINFOEX);
            joyInfo[dev].dwFlags = JOY_RETURNALL;

            joyGetPosEx(dev,&joyInfo[dev]);

            joyActive[dev] = true;

            joyGetDevCaps(dev,&joyCaps[dev],sizeof(JOYCAPS));
            
            joyBase[dev] = nInputs;

            int count = 0;
            char buf[256];

            sprintf(buf,"JOY%d_X",dev);
            Add(DEVICE_JOYSTICK, dev, TYPE_RANGED, count++, "X", buf);

            sprintf(buf,"JOY%d_Y",dev);
            Add(DEVICE_JOYSTICK, dev, TYPE_RANGED, count++, "Y", buf);

            if(joyCaps[dev].wCaps & JOYCAPS_HASZ)
            {
                sprintf(buf,"JOY%d_z",dev);
                Add(DEVICE_JOYSTICK, dev, TYPE_RANGED, count++, "Z", buf);
            }

            if(joyCaps[dev].wCaps & JOYCAPS_HASR)
            {
                sprintf(buf,"JOY%d_R",dev);
                Add(DEVICE_JOYSTICK, dev, TYPE_RANGED, count++, "R", buf);
            }

            if(joyCaps[dev].wCaps & JOYCAPS_HASU)
            {
                sprintf(buf,"JOY%d_U",dev);
                Add(DEVICE_JOYSTICK, dev, TYPE_RANGED, count++, "U", buf);
            }

            if(joyCaps[dev].wCaps & JOYCAPS_HASV)
            {
                sprintf(buf,"JOY%d_V",dev);
                Add(DEVICE_JOYSTICK, dev, TYPE_RANGED, count++, "V", buf);
            }

            joyButtonBase[dev] = nInputs;

            for(unsigned i = 0; i < joyCaps[dev].wNumButtons; i++)
            {
                    sprintf(buf,"JOY%d_BUTTON%d",dev,i);
                    Add(DEVICE_JOYSTICK, dev, TYPE_RANGED, i++, "U", buf);
            }
        }
    }

    bufferedEvents = 0;
    currentBufferPos = buffer;
    captureText = captureMouse = hideMouse = false;

    mouseWheelMessage = RegisterWindowMessage("MSWHEEL_ROLLMSG"); //0xCC40 : //MSWHEEL_ROLLMSG
}

Win32::~Win32()
{
}

unsigned     Win32::NumInputs(void)
{
    return nInputs;
}

unsigned     Win32::FindInput(char* name)
{
  for(unsigned i = 0; i < nInputs; i++)
  {
      if(strcmp(name, desc[i].longName) == 0)
          return i;
  }
  return 0;
}

Description* Win32::DescribeInput(unsigned id)
{
    if(id > MAX_INPUTS)
        return &desc[0];

    return &desc[id];
}

void Win32::IssueEvents(void)
{
    assert(recipient);

    for(unsigned i = 0; i < nJoyDevs; i++)
    {
        if(!joyActive[i])
            continue;

        JOYINFOEX joy;
        joy.dwSize = sizeof(JOYINFOEX);
        joy.dwFlags = JOY_RETURNALL;

        joyGetPosEx(i,&joy);

        BufferRanged(joyBase[i],   (float(joy.dwXpos) / 32767.0f) - 1.0f);
        BufferRanged(joyBase[i]+1, (float(joy.dwYpos) / 32767.0f) - 1.0f);

        if(joyCaps[i].wCaps & JOYCAPS_HASZ)
            BufferRanged(joyBase[i]+2, (float(joy.dwZpos) / 32767.0f) - 1.0f);
    
        if(joyCaps[i].wCaps & JOYCAPS_HASR)
            BufferRanged(joyBase[i]+3, (float(joy.dwRpos) / 32767.0f) - 1.0f);

        if(joyCaps[i].wCaps & JOYCAPS_HASU)
            BufferRanged(joyBase[i]+4, (float(joy.dwUpos) / 32767.0f) - 1.0f);

        if(joyCaps[i].wCaps & JOYCAPS_HASV)
            BufferRanged(joyBase[i]+5, (float(joy.dwVpos) / 32767.0f) - 1.0f);

        for(unsigned j = 0; j < joyCaps[i].wNumButtons; j++)
        {
            if((joy.dwButtons & (1 << j)) != (joyInfo[i].dwButtons & (1 << j)))
                BufferButton(joyButtonBase[i] + j, (joy.dwButtons & (1 << j)) != 0);
        }

        joyInfo[i] = joy;
    }
    char* bufferPos = buffer;
    for(i = 0; i < bufferedEvents; i++)
    {
        switch(*((unsigned*)bufferPos))
        {
        case magicButton :
            {
                bufferedButton* button = (bufferedButton*)bufferPos;
                recipient->Digital(&desc[button->button], button->down);

                bufferPos += sizeof(bufferedButton);
            }
            break;

        case magicRanged :
            {
                bufferedRanged* ranged = (bufferedRanged*)bufferPos;
                recipient->Ranged(&desc[ranged->axis], ranged->val);
                bufferPos += sizeof(bufferedRanged);
            }
            break;

        case magicChar :
            {
                bufferPos += sizeof(unsigned);
                recipient->Text(*bufferPos);
                bufferPos += sizeof(char);
            }
            break;

        default :
            assert(0);
            break;

        }
    }

    bufferedEvents = 0;
    currentBufferPos = buffer;
}

void Win32::CaptureMouse(bool b)
{
    POINT mousePos;

    if(b == captureMouse)
        return;

    captureMouse = b;

    if(captureMouse)
    {
        SetCapture((HWND)hWnd);
        ShowCursor(FALSE);
        GetCursorPos(&mousePos);
        mouseX = mousePos.x;
        mouseY = mousePos.y;
    }
    else
    {
        ReleaseCapture();
        ShowCursor(TRUE);
    }
}

void Win32::CaptureText(bool b)
{
    captureText = b;
}

void Win32::HideMouse(bool b)
{
    hideMouse = b;
    ShowCursor(!hideMouse && !captureMouse);
}

void Win32::SetInstance(unsigned i, unsigned w)
{
    hInstance = i;
    hWnd = w;
}

unsigned Win32::WinProc(unsigned, unsigned msg, unsigned wparam, unsigned)
{
    switch( msg )
    {
        case WM_CHAR:
            if(captureText)
                BufferChar((char)wparam);
            break;

        case WM_KEYDOWN:
            BufferButton(wparam, true);
            break;

        case WM_KEYUP:
            BufferButton(wparam, false);
            break;

        case 0x020A ://WM_MOUSEWHEEL
            {
                short movement = (short)HIWORD(wparam);
                int index = (movement < 0) ? 4 : 3;
                movement = (movement < 0) ? -movement : movement;
                movement /= 120;
                for(int i = 0; i < movement; i++)
                {
                    BufferButton(mouseBase + 6 + index,false);
                    BufferButton(mouseBase + 6 + index,true);
                }
            }
            break;
            
        case WM_MENUSELECT:
            {
                menuSelect = !(HIWORD(wparam) & MF_MOUSESELECT);
            }
            break;

        case WM_LBUTTONDOWN:
            if(!menuSelect)
            {
                BufferButton(mouseBase + 3 + 0, true);
                mouseButtons |= 0x1;
            }
            break;

        case WM_LBUTTONUP:
            if(!menuSelect)
            {
                BufferButton(mouseBase + 3 + 0, false);
                mouseButtons &= ~0x1;
            }
            break;

        case WM_RBUTTONDOWN:
            if(!menuSelect)
            {
                BufferButton(mouseBase + 3 + 1, true);
                mouseButtons |= 0x2;
            }
            break;

        case WM_RBUTTONUP:
            if(!menuSelect)
            {
                BufferButton(mouseBase + 3 + 1, false);
                mouseButtons &= ~0x2;
            }
            break;

        case WM_MBUTTONDOWN:
            if(!menuSelect)
            {
                BufferButton(mouseBase + 3 + 2, true);
                mouseButtons |= 0x4;
            }
            break;

        case WM_MBUTTONUP:
            if(!menuSelect)
            {
                BufferButton(mouseBase + 3 + 2, false);
                mouseButtons &= ~0x4;
                break;
            }

        case WM_MOUSEMOVE:
            if(!captureMouse)
            {
                break;
            }

            POINT deltaMouse;
            POINT mousePos;
            mousePos.x = mouseX;
            mousePos.y = mouseY;
            GetCursorPos(&deltaMouse);

            if((deltaMouse.x != mousePos.x) || (deltaMouse.y != mousePos.y))
            {
                float deltaX = float(deltaMouse.x - mousePos.x );
                float deltaY = float(deltaMouse.y - mousePos.y);

                if(deltaX != 0.0f)
                    BufferRanged(mouseBase + 1,deltaX);

                if(deltaY != 0.0f)
                    BufferRanged(mouseBase + 2,deltaY);
                SetCursorPos(mousePos.x, mousePos.y);
            }
          
            break;
    }

    if((msg == mouseWheelMessage) || (msg == 0x020A))
    {
        short movement = (short)LOWORD(wparam);
        int index = (movement < 0) ? 4 : 3;
        movement = (movement < 0) ? -movement : movement;
        movement /= 120;
        for(int i = 0; i < movement; i++)
        {
            BufferButton(index,false);
            BufferButton(index,true);
        }
    }

    if(lastMouseButtons != mouseButtons)
    {
        switch(lastMouseButtons)
        {
            case 0 :
            case 1 :
            case 2 :
            case 4 :
                break;
            case 3 :
                BufferButton(mouseBase + 8, false);
                break;
            case 5 :
                BufferButton(mouseBase + 9, false);
                break;
            case 6 :
                BufferButton(mouseBase + 10, false);
                break;
            case 7 :
                BufferButton(mouseBase + 11, false);
                break;
        }

        switch(mouseButtons)
        {
            case 0 :
                break;
            case 1 :
            case 2 :
            case 4 :
                if((lastMouseButtons > 2) && (lastMouseButtons != 4))
                {
                    BufferButton(mouseBase + 3 + mouseButtonLookup[mouseButtons], true);
                }
                break;
            case 3 :
                BufferButton(mouseBase + 8, true);
                break;
            case 5 :
                BufferButton(mouseBase + 9, true);
                break;
            case 6 :
                BufferButton(mouseBase + 10, true);
                break;
            case 7 :
                BufferButton(mouseBase + 11, true);
                break;
        }

        lastMouseButtons = mouseButtons;
        
    }
    return 0;
}

void Win32::SetRecipient(Recipient* r)
{
    recipient = r;
}

Recipient* Win32::GetRecipient(void)
{
    return recipient;
}

void Win32::BufferChar(char c)
{
    *((unsigned*)currentBufferPos)= magicChar;
    currentBufferPos += sizeof(unsigned);
    *((char*)currentBufferPos)= c;
    currentBufferPos += sizeof(char);
    bufferedEvents++;
}

void Win32::BufferButton(unsigned b, bool v)
{
    bufferedButton* button = (bufferedButton*)currentBufferPos;
    button->magic = magicButton;
    button->button = b;
    button->down = v;
    currentBufferPos += (sizeof(bufferedButton));
    bufferedEvents++;
}

void Win32::BufferRanged(unsigned b, float v)
{
    bufferedRanged* Ranged = (bufferedRanged*)currentBufferPos;
    Ranged->magic = magicRanged;
    Ranged->axis = b;
    Ranged->val = v;
    currentBufferPos += (sizeof(bufferedRanged));
    bufferedEvents++;

}

}
