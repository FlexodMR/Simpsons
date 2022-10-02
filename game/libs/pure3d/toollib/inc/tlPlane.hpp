/*===========================================================================
    File:: tlPlane.hpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLPLANE_HPP
#define _TLPLANE_HPP


#include "tlPoint.hpp"

//enum tlPlaneSide {planeFront, planeBack, planeIn};

class tlPlane : public rmt::Plane
{
public:
   tlPlane() {};
   tlPlane(const tlPoint& a, const tlPoint& b, const tlPoint& c) : rmt::Plane(a,b,c) {} ;
   tlPlane(const tlPoint& norm, const tlPoint& point) : rmt::Plane(norm, point)  {};
   tlPlane(const tlPoint& norm, float d ) : rmt::Plane( norm, d ) {};

   inline bool operator==(const tlPlane& p) const { return (p.normal == normal) && (p.D == D); }

   // File IO methods
   void Read(tlFile* f);
   void Write(tlFile* f);
   void Print(int index, int indent = 0);
   void PrintFormatted(int index, int indent = 0);
   void Init();

   bool GetFieldValue(char*, int) const;
   static bool GetFieldUpdatable();
   bool SetFieldValue(const char*);
};

#endif

