//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _VIEWER_OVERLAY_HPP_
#define _VIEWER_OVERLAY_HPP_

#include <p3d/p3dtypes.hpp>
#include <utility/string.hpp>
#include <utility/array.hpp>

class MessageWindow
{
public:
    MessageWindow();
    ~MessageWindow();
    void NewMessage(const String& message);
    void CheckForTimeouts(float timePassed);
    void Display(int x, int y);

private:
    //set up for 3 messages at a time
    String messages[3];
    float timeouts[3];
};

class StatusLine
{
public:
    String name;
    String info;
    int x;
    int y;
    tColour colour;
    bool display;
};

class Overlay
{
public:
    Overlay();
    void Display();
    void UpdateStatusLine(const String& statusType, const String& info);
    void UpdateStatusLineF(const String& statusType, const char* info, ...);
    void ShowStatusLine(const String& statusType, bool show);
    void PositionStatusLine(const String& statusType, int x, int y, tColour colour = tColour(255,255,255));
    
private:
    StatusLine* GetStatusLine(const String& statusType);

    unsigned next;
    DynamicArray<StatusLine> statusLines;
};

#endif