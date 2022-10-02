//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


/***************************************
LEGACY CODE:  PLEASE DO NOT USE!!!!
***************************************/

#ifndef _TLTRANANIMKEYS_HPP_
#define _TLTRANANIMKEYS_HPP_

#include "tlTypes.hpp"

#include "tlFile.hpp"
#include "tlMatrix.hpp"
#include "tlColour.hpp"
#include "tlKeyDefs.hpp"

class tlQuatKey;
class tlRotKey;


class tlKey
{
public:
    int frame;
    int flags;

    tlKey();
    tlKey(tlKey* key);
    virtual ~tlKey();

    virtual tlKey* Copy() = 0;
    virtual tlKey* Interpolate(const tlKey* k, int f) = 0;
    virtual double Error(const tlKey* k) = 0;
    virtual bool operator==(const tlKey & key) = 0;

    void ScaleTime(double scale);
};

class tlTransKey : public tlKey
{
public:
    float x;
    float y;
    float z;
    tlTransKey();
    tlTransKey(tlTransKey* key);
    
    int Equal(const tlTransKey& key, double tolerance);
    void Truncate();                          //: round to int
    void Read(tlFile* f);
    void Write(tlFile* f);
    void Print(int index, int indent = 0);
    void PrintFormatted(int index, int indent = 0);

    bool GetFieldValue(char*, int) const;
    static bool GetFieldUpdatable();
    bool SetFieldValue(const char*);

    virtual tlKey* Copy();
    virtual tlKey* Interpolate(const tlKey* k, int f);
    virtual double Error(const tlKey* k);
    virtual bool operator==(const tlKey& key);
};

class tlRotKey : public tlKey
{
public:
    P3DANGLE x;
    P3DANGLE y;
    P3DANGLE z;
    tlRotKey();
    tlRotKey(tlRotKey* key);
    tlRotKey(tlQuatKey* key);
    
    void SwapParity();
    void Read(tlFile* f);
    void Write(tlFile* f);
    void Print(int index, int indent = 0);
    void PrintFormatted(int index, int indent = 0);

    bool GetFieldValue(char*, int) const;
    static bool GetFieldUpdatable();
    bool SetFieldValue(const char*);

    virtual tlKey* Copy();
    virtual tlKey* Interpolate(const tlKey* k, int f);
    virtual double Error(const tlKey* k);
    virtual bool operator==(const tlKey& key);
};

class tlScaleKey : public tlKey
{
public:
    float x;
    float y;
    float z;
    tlScaleKey();
    tlScaleKey(tlScaleKey* key);
    

    void Read(tlFile* f);
    void Write(tlFile* f);
    void Print(int index, int indent = 0);
    void PrintFormatted(int index, int indent = 0);

    bool GetFieldValue(char*, int) const;
    static bool GetFieldUpdatable();
    bool SetFieldValue(const char*);

    virtual tlKey* Copy();
    virtual tlKey* Interpolate(const tlKey* k, int f);
    virtual double Error(const tlKey* k);
    virtual bool operator==(const tlKey& key);
};

class tlScaleMatKey : public tlKey
{
public:
    tlMatrix scaleMat;

    tlScaleMatKey();
    tlScaleMatKey(tlMatrix& m);
    tlScaleMatKey(tlScaleMatKey* key);
    inline tlMatrix& GetMatrix() {return scaleMat;}
    inline void SetMatrix(tlMatrix& m) {scaleMat = m;}
    virtual tlKey* Copy();
    virtual tlKey* Interpolate(const tlKey* k, int f);
    virtual double Error(const tlKey* k);
    virtual bool operator==(const tlKey& key);
};

class tlQuatKey : public tlKey
{
public:
    // data
    P3DVALUE w; // scalar part
    P3DVALUE x; // vector part - x component
    P3DVALUE y; // vector part - y component
    P3DVALUE z; // vector part - z component
    // methods
    tlQuatKey();
    tlQuatKey(tlQuatKey* key);
    tlQuatKey(tlRotKey* key);
 
    void Read(tlFile* f);
    void Write(tlFile* f);
    void Print(int index, int indent = 0);
    void PrintFormatted(int index, int indent = 0);

    bool GetFieldValue(char*, int) const;
    static bool GetFieldUpdatable();
    bool SetFieldValue(const char*);

    virtual tlKey* Copy();
    virtual tlKey* Interpolate(const tlKey* k, int f);
    virtual double Error(const tlKey* k);
    virtual bool operator==(const tlKey& key);
};

class tlKey1DOF : public tlKey
{
public:
    float x;
    tlKey1DOF();
    ~tlKey1DOF();
    tlKey1DOF(tlKey1DOF* key);
    tlKey1DOF( float val );

    virtual tlKey* Copy();
    virtual tlKey* Interpolate(const tlKey* k, int f);
    virtual double Error(const tlKey* k);
    virtual bool operator==(const tlKey& key);
};

class tlKey3DOF : public tlKey
{
public:
    float x;
    float y;
    float z;
    tlKey3DOF( );
    ~tlKey3DOF( );
    tlKey3DOF(tlKey3DOF* key);
    tlKey3DOF( float val1, float val2, float val3 );

    virtual tlKey* Copy();
    virtual tlKey* Interpolate(const tlKey* k, int f);
    virtual double Error(const tlKey* k);
    virtual bool operator==(const tlKey& key);
};

class tlKey1DOFAngle : public tlKey
{
public:
    unsigned short x;
    tlKey1DOFAngle( );
    ~tlKey1DOFAngle( );
    tlKey1DOFAngle(tlKey1DOFAngle* key);
    tlKey1DOFAngle( unsigned short val );

    virtual tlKey* Copy();
    virtual tlKey* Interpolate(const tlKey* k, int f);
    virtual double Error(const tlKey* k);
    virtual bool operator==(const tlKey& key);
};

class tlKey3DOFAngle : public tlKey
{
public:
    P3DANGLE x;
    P3DANGLE y;
    P3DANGLE z;
    tlKey3DOFAngle();
    ~tlKey3DOFAngle();
    tlKey3DOFAngle(tlKey3DOFAngle* key);
    tlKey3DOFAngle( unsigned long val );

    virtual tlKey* Copy();
    virtual tlKey* Interpolate(const tlKey* k, int f);
    virtual double Error(const tlKey* k);
    virtual bool operator==(const tlKey& key);
};

class tlKeyColour : public tlKey
{
public:
    tlColour c;
    tlKeyColour();
    ~tlKeyColour();
    tlKeyColour(tlKeyColour* key);
    tlKeyColour( unsigned long val );

    virtual tlKey* Copy();
    virtual tlKey* Interpolate(const tlKey* k, int f);
    virtual double Error(const tlKey* k);
    virtual bool operator==(const tlKey& key);
};

#endif

