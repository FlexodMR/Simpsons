//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef TRANSLUCENCYTEST_HPP
#define TRANSLUCENCYTEST_HPP

#include "coverage.hpp"

//-------------------------------------------------------------------
// Expected result:
//   Draws three cubes going around each other.
//   two cubes in perimeter should be translucent
// API coverage:
//
class TranslucencyTest : public ScenegraphTest
{
public:
    TranslucencyTest();
    virtual const char* GetName() { return "Scenegraph translucency on rigid mesh"; }
    virtual rmt::Vector GetCameraPos() { return rmt::Vector( 0.0f, 2.0f, -10.0f ); }
};

//-------------------------------------------------------------------
// Expected result:
//   Draws a world with blocks of different translucency
// API coverage:
//
class SmoothMeshTranslucencyTest : public ScenegraphTest
{
public:
    SmoothMeshTranslucencyTest();
    virtual const char* GetName() { return "Scenegraph translucency on smooth mesh"; }
    virtual rmt::Vector GetCameraPos() { return rmt::Vector( 0.0f, 2.0f, -10.0f ); }
};

#endif