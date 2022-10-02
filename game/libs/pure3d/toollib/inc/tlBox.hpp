/*===========================================================================
    File:: tlBox.hpp

    Copyright (c) 1999 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/

#ifndef _TLBOX_HPP
#define _TLBOX_HPP


#include "tlPoint.hpp"
#include "tlTable.hpp"

class tlFile;

class tlBox : public rmt::Box3D
{
public:
    inline tlBox() : rmt::Box3D() {}
    inline tlBox(const tlBox& box) : rmt::Box3D(box.low, box.high) {}
    inline tlBox(const tlPoint& min, const tlPoint& max) : rmt::Box3D(min, max) {}
    inline tlBox(const rmt::Box3D& b) : rmt::Box3D(b) {}

    bool operator==(const tlBox& b);

    void Bound(tlPoint*, int);
    void Bound(tlTable<tlPoint>*);
    void AddPoint(const tlPoint& p);  // make the box include p
    bool Contain( const tlPoint p );   //test if box contains p
    tlPoint Centre(void) const;
    float LargestComponent() const;  // return the largest absolute x, y or z

    void Read(tlFile* f);
    void Write(tlFile* f);
    void Print(int index, int indent = 0);
    void PrintFormatted(int index, int indent = 0);
    void Init();        // Set high and low to (0, 0, 0)
    void Invalidate();  // Set high as negative and low as positive

    bool GetFieldValue(char*, int) const;
    static bool GetFieldUpdatable();
    bool SetFieldValue(const char*);
};

#endif

