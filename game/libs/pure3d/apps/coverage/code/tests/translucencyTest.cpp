//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#include "translucencyTest.hpp"

//-------------------------------------------------------------------
// rigid bound translucency test
//-------------------------------------------------------------------
TranslucencyTest::TranslucencyTest()
{
    SetFileName("TranslucencyTests/16RigidBoundTranslucency.p3d");
    SetControllerName("MasterController");
    SetSceneName("world");
    isCyclic = true;
}

//-------------------------------------------------------------------
// smooth bound translucency test
//-------------------------------------------------------------------
SmoothMeshTranslucencyTest::SmoothMeshTranslucencyTest()
{
    SetFileName("TranslucencyTests/16SmoothBoundTranslucency.p3d");
    SetControllerName("MasterController");
    SetSceneName("Scene");
    isCyclic = true;
}
