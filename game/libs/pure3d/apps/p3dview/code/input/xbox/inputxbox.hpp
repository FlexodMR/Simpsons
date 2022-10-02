//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _INPUTXBOX_HPP_
#define _INPUTXBOX_HPP_

#include <input/inputdriver.hpp>
#include <xtl.h>
namespace Input
{

class XBox : public Driver
{
public:
    XBox();
    ~XBox();

    enum Constants
    {
        INPUTS_PER_PAD = 36
    };

    virtual unsigned     NumInputs(void);
    virtual unsigned     FindInput(char* name);
    virtual Description* DescribeInput(unsigned);

    void SetRecipient(Recipient*);
    Recipient* GetRecipient(void);

    void IssueEvents(void);

    void CaptureMouse(bool) {}
    void HideMouse(bool) {}
    void CaptureText(bool) {}

private:
    Description desc[INPUTS_PER_PAD * 4];
    Recipient* recipient;

    HANDLE gamepadDevices[16];
    unsigned short oldButtons;
};

}

#endif