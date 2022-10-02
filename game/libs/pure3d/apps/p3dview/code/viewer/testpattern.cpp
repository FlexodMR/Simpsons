//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include <viewer/testpattern.hpp>
#include <interface/kernel.hpp>
#include <config/settings.hpp>
#include <console/objectscripter.hpp>

#include <p3d/utility.hpp>

#include <viewer/testpattern.h>

void TestPattern::Setup(Console::ObjectScripter *i)
{
    interp = i;
    interp->SetClosure("testPattern", this, &TestPattern::LoadTestPattern);
}


void TestPattern::LoadTestPattern(void)
{
    p3d::loadManager->GetP3DHandler()->Load(new tFileMem((unsigned char*)p3dTestPattern, sizeof(p3dTestPattern)), p3d::inventory);
    interp->Command("draw testpattern.bmp");
}

