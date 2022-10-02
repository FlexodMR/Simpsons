//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _DLINE_HPP_
#define _DLINE_HPP_


#include <p3d/p3dtypes.hpp>
#include <radmath/radmath.hpp>

namespace sim
{

void dLine2(const rmt::Vector& p1, const rmt::Vector& p2, const tColour& c1, const tColour& c2);
inline void dLine2(const rmt::Vector& p1, const rmt::Vector& p2, const tColour& c) { dLine2(p1, p2, c, c); }

void dLineRel(const rmt::Vector& p1, const rmt::Vector& p2, const tColour& c1);

void dBox3(const rmt::Vector& pos, const rmt::Vector& size, const tColour& colour);
void dQuad(const rmt::Vector& p, const rmt::Vector& a, const rmt::Vector& b, const tColour& colour);
void dLine3(const rmt::Vector& p, float r, const tColour& colour);

static inline void DrawLine(const float p1[], const float p2[], const tColour &c1)
{
    dLine2(*((rmt::Vector*)p1), *((rmt::Vector*)p2), c1);
}

static inline void DrawLine(const float p1[], const float p2[], const tColour &c1, const tColour &c2)
{
    dLine2(*((rmt::Vector*)p1), *((rmt::Vector*)p2), c1, c2);
}

// used together
static inline void dStartStreamLine() {};
static inline void dStreamLine(const rmt::Vector& p1, const rmt::Vector& p2, const tColour& c1, const tColour& c2) {dLine2(p1,p2,c1,c2);}
static inline void dEndStreamLine() {}

} // sim

#endif
