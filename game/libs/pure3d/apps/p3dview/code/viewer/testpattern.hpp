//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _VIEWER_TESTPATTERN_HPP_
#define _VIEWER_TESTPATTERN_HPP_

// Viewer module for loading the testpattern

#include <utility/pointer.hpp>

namespace Console
{
    class ObjectScripter;
};

class TestPattern
{
public:
    void Setup(Console::ObjectScripter *i);
    void LoadTestPattern(void);

private:
    DumbPtr<Console::ObjectScripter> interp;
};

#endif
