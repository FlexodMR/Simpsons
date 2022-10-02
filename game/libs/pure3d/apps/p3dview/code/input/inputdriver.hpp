//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _INPUTDRIVER_HPP_
#define _INPUTDRIVER_HPP_

namespace Input
{

enum Device { DEVICE_NONE, DEVICE_MOUSE, DEVICE_KEYBOARD, DEVICE_JOYSTICK};
enum Type   { TYPE_NONE, TYPE_DIGITAL, TYPE_RANGED, TYPE_POINTER, TYPE_TEXT};
enum PointerState { POINTER_PRESS, POINTER_DRAG, POINTER_RELEASE };

struct Description
{

    unsigned id;

    char shortName[16];
    char longName[64];

    Device device;
    Type   type;
    unsigned deviceIndex;
    unsigned typeIndex;

    bool  bounded;
    float low, high;
};

class Recipient
{
public:
    virtual ~Recipient() {};

    virtual void Text(char c) = 0;
    virtual void Digital(Description*, bool down) = 0;
    virtual void Ranged(Description*, float) = 0;
    virtual void Pointer(Description*, unsigned x, unsigned y, PointerState, unsigned buttons) = 0;
};

class Driver
{
public:
    virtual ~Driver() {};

    virtual unsigned     NumInputs(void) = 0;
    virtual unsigned     FindInput(char* name) = 0;
    virtual Description* DescribeInput(unsigned) = 0;

    virtual void       SetRecipient(Recipient*) = 0;
    virtual Recipient* GetRecipient(void) = 0;

    virtual void IssueEvents(void) = 0;

    virtual void CaptureMouse(bool) = 0;
    virtual void HideMouse(bool) = 0;
    virtual void CaptureText(bool) = 0;

#ifdef RAD_WIN32
    virtual void SetInstance(unsigned hInstance, unsigned hWnd) = 0;
    virtual unsigned WinProc(unsigned, unsigned, unsigned, unsigned) = 0;
#endif
}
;
}
#endif
