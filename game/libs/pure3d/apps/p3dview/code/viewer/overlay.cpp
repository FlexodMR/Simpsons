//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <viewer/overlay.hpp>
#include <p3d/utility.hpp>

MessageWindow::MessageWindow()
{
    timeouts[0] = 0;
    timeouts[1] = 0;
    timeouts[2] = 0;
}

MessageWindow::~MessageWindow()
{
}

void MessageWindow::CheckForTimeouts(float timePassed)
{
    int index = 0;
    while (index <= 2)
    {
        if (timeouts[index] > 0)
        {
            timeouts[index] -= timePassed;
            if (timeouts[index] < 0)
                messages[index] = "";
        }
        index++;
    }
}

void MessageWindow::NewMessage(const String& message)
{
    messages[0] = messages [1];
    messages[1] = messages [2];
    messages[2] = message;

    timeouts[0] = timeouts[1];
    timeouts[1] = timeouts[2];
    timeouts[2] = 10000;
}

void MessageWindow::Display(int x, int y)
{
    p3d::pddi->DrawString(messages[0], x, y, tColour(0,255,0));
    p3d::pddi->DrawString(messages[1], x, y + 20, tColour(0,255,0));
    p3d::pddi->DrawString(messages[2], x, y + 40, tColour(0,255,0));
}

Overlay::Overlay() : 
    next(0),
    statusLines(8)
{
}

void Overlay::Display()
{
    unsigned index = 0;
    while (index < statusLines.Size())
    {
        if (statusLines[index].display == true)
        {
            p3d::pddi->DrawString(statusLines[index].info,
                                  statusLines[index].x,
                                  statusLines[index].y,
                                  statusLines[index].colour);
        }
    index++;
    }
    
}

void Overlay::ShowStatusLine(const String& statusType, bool show)
{
    StatusLine* chosenStatusLine = GetStatusLine(statusType);
    chosenStatusLine->display = show;
}

void Overlay::PositionStatusLine(const String& statusType, int x, int y, tColour colour)
{
    StatusLine* chosenStatusLine;

    chosenStatusLine = GetStatusLine(statusType);

    // negative values are treated as offsets from the bottom and left
    if (x < 0)
        x += (p3d::display->GetWidth());
    if (y < 0)
        y += (p3d::display->GetHeight());

    chosenStatusLine->x = x;
    chosenStatusLine->y = y;
    chosenStatusLine->colour = colour;
}

StatusLine* Overlay::GetStatusLine(const String& statusType)
{
    for(unsigned i = 0; i < statusLines.Size(); i++)
    {
        if(statusLines[i].name == statusType)
        {
            return &statusLines[i];
        }
    }

    if(next == statusLines.Size())
    {
        statusLines.Grow(statusLines.Size() * 2);
    }

    statusLines[next].name = statusType;
    statusLines[next].info = "";
    statusLines[next].x = 0;
    statusLines[next].y = 0;
    statusLines[next].display = false;
    statusLines[next].colour = tColour(255,255,255);

    return &statusLines[next++];
}

void Overlay::UpdateStatusLine(const String& statusType, const String& info)
{
    StatusLine* chosenStatusLine;
    chosenStatusLine = GetStatusLine(statusType);

    chosenStatusLine->info = info;
}

void Overlay::UpdateStatusLineF(const String& statusType, const char* info, ...)
{
    char tmp[4096];

    StatusLine* chosenStatusLine;
    chosenStatusLine = GetStatusLine(statusType);

    va_list  marker;

    va_start(marker, info);
    vsprintf(tmp, info, marker);
    va_end(marker);

    chosenStatusLine->info = tmp;
}
