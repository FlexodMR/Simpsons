//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================



#ifndef GCDRIVER_HPP
#define GCDRIVER_HPP

#include <inputdriver.hpp>

#include <dolphin/pad.h>

#define MAX_GC_INPUTS   (17 * 4)

class gcDriver : public Input::Driver
{
  public:
    gcDriver(void);
    virtual ~gcDriver();

    // Enumeration
    virtual unsigned     NumInputs(void); // Total controls in gcDriver
    virtual unsigned     FindInput(char *name); // returns index
    virtual Input::Description *DescribeInput(unsigned index);

    virtual void              SetRecipient(Input::Recipient *r);
    virtual Input::Recipient *GetRecipient(void);

    virtual void IssueEvents(void);

    virtual void CaptureMouse(bool);
    virtual void HideMouse(bool);
    virtual void CaptureText(bool);

  protected:

    void Add(unsigned devI, Input::Type type, unsigned typeI, char *shortName, char *longName);

    Input::Recipient *mRecipient;

    unsigned mInputCount;
    Input::Description mDescriptions[MAX_GC_INPUTS];

    PADStatus mPads[4];

};
#endif // GCDRIVER_HPP