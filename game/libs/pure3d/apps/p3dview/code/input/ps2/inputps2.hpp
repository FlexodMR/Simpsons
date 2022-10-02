//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _INPUTXBOX_HPP_
#define _INPUTXBOX_HPP_

#include <input/inputdriver.hpp>

namespace Input
{

class PS2 : public Driver
{
public:
    PS2();
    ~PS2();

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
    class ControlPad;

    Description desc[INPUTS_PER_PAD * 2];
    ControlPad* pad;

    Recipient* recipient;

    unsigned oldButtons;
};

}

#endif