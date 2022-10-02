//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include"window.hpp"

class CommandRecipient;

class DragAdapter : public Win32MessageHandler
{
public:
    DragAdapter(CommandRecipient* v, Window* w);
    long Event(Win32Window* win, int msg, int wparam, int lparam);
    void Release(void);

private:
    CommandRecipient* viewer;
    ~DragAdapter() {};
};

