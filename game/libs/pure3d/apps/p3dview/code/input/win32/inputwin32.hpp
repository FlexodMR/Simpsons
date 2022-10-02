//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _INPUTWIN32_HPP_
#define _INPUTWIN32_HPP_

#include<input/inputdriver.hpp>


namespace Input
{
struct JoyDevInfo;

const int MAX_INPUTS = 1024;

class Win32 : public Driver
{
public:
    Win32();
    ~Win32();

    virtual unsigned     NumInputs(void);
    virtual unsigned     FindInput(char* name);
    virtual Description* DescribeInput(unsigned);

    void SetRecipient(Recipient*);
    Recipient* GetRecipient(void);

    void IssueEvents(void);

    void CaptureMouse(bool);
    void HideMouse(bool);
    void CaptureText(bool);

    void SetInstance(unsigned hInstance, unsigned hWnd);
    unsigned WinProc(unsigned, unsigned, unsigned, unsigned);

private:
    unsigned bufferedEvents;
    char* currentBufferPos;
    char buffer[65536];

    bool captureText;
    bool captureMouse;
    bool hideMouse;

    unsigned hInstance;
    unsigned hWnd;

    unsigned nJoyDevs;

    unsigned nInputs;
    Description desc[MAX_INPUTS];

    unsigned mouseBase;
    unsigned mouseX, mouseY;
    unsigned mouseWheelMessage;
    unsigned mouseButtons, lastMouseButtons;

    bool joyActive[16];
    unsigned joyBase[16];
    unsigned joyButtonBase[16];

    bool menuSelect;

    Recipient* recipient;

    void Add(Device dev, unsigned devI, Type type, unsigned typeI, char* shortName, char* longName);
    void BufferButton(unsigned, bool);
    void BufferRanged(unsigned, float);
    void BufferChar(char);
};

}
#endif
