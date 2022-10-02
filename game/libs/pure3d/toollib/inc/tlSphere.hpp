/*===========================================================================
    File:: tlSphere.hpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLSPHERE_HPP
#define _TLSPHERE_HPP


#include "tlPoint.hpp"
#include "tlTable.hpp"

class tlFile;
class tlRay;

class tlSphere : public rmt::Sphere
{
public:
    inline tlSphere() : rmt::Sphere(Origin, 0.0f) {}
    inline tlSphere(const tlSphere& sph) : rmt::Sphere(sph.centre,sph.radius) {}
    inline tlSphere(const rmt::Sphere& a) : rmt::Sphere(a) {}

    bool operator==(const tlSphere& s);

    void CalcCentre(tlPoint*, int);  //: Sets the centre of the sphere to the centre of these points
    void CalcCentre(tlTable<tlPoint>*);

    void Bound(tlPoint*, int);       
    void Bound(tlTable<tlPoint>*);

    void Read(tlFile* f);
    void Write(tlFile* f);
    void Print(int index, int indent = 0);
    void PrintFormatted(int index, int indent = 0);
    void Init();

    bool GetFieldValue(char*, int) const;
    static bool GetFieldUpdatable();
    bool SetFieldValue(const char*);
    bool Intersect( const tlRay & ray, tlPoint & intersect );
    bool Contain( tlPoint point ) const;
};

#endif

