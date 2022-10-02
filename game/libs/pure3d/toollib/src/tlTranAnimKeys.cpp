//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


/***************************************
LEGACY CODE:  PLEASE DO NOT USE!!!!
***************************************/

#include "tlTranAnimKeys.hpp"

#include <stdlib.h>
#include <assert.h>
#include <string.h>

#include "tlQuat.hpp"

#define ANG180 (0x8000)       
#define ANG360 (0xffff)

static bool EQ( float a, float b, double tolerance )
{
    return fabs(a-b) <= tolerance;
}

// this will return a signed value between -ANG180 and +ANG180
static int
AngleDiff(P3DANGLE p3dangle_j, P3DANGLE p3dangle_i)
{
    // code based on tLinKeyNode::ComputeRotDeltas in Trananim.cpp
    int diff, absdiff;
    diff = p3dangle_j - p3dangle_i;
    absdiff = abs(diff);
    if(absdiff > ANG180)
    {
        diff = diff > 0 ?  (-(ANG360 - absdiff)) : (ANG360 - absdiff);
    }
    return diff;
}

tlKey::tlKey() : frame(0), flags(0)
{}

tlKey::tlKey(tlKey* key) : frame(key->frame), flags(key->flags)
{}

tlKey::~tlKey()
{}

void
tlKey::ScaleTime(double scale)
{
    frame = static_cast<int>( frame * scale );
}

tlTransKey::tlTransKey() : tlKey()
{
}

tlTransKey::tlTransKey( tlTransKey* key ) :
        tlKey(key),
        x(key->x),
        y(key->y),
        z(key->z)
{
}

tlKey*
tlTransKey::Copy()
{
    return new tlTransKey(this);
}

tlKey*
tlTransKey::Interpolate(const tlKey* k, int f)
{
    static tlTransKey result;
    const tlTransKey* key = dynamic_cast<const tlTransKey*>(k);
    assert(key);
    
    result.frame = f;
    result.flags = flags;

    double framespace = (double)(f - frame) / (double)(key->frame - frame);

    result.x = static_cast<float>(x + ((key->x - x) * framespace));
    result.y = static_cast<float>(y + ((key->y - y) * framespace));
    result.z = static_cast<float>(z + ((key->z - z) * framespace));
    
    return &result;
}

double
tlTransKey::Error(const tlKey* key)
{
    double maxerror = 0.0;
    const tlTransKey* other = dynamic_cast<const tlTransKey*>(key);
    assert(other);
    
    double err;

    err = fabs( other->x - x );
    if( err > maxerror ) maxerror = err;

    err = fabs( other->y - y );
    if( err > maxerror ) maxerror = err;

    err = fabs( other->z - z );
    if( err > maxerror ) maxerror = err;

    return maxerror;
}

void
tlTransKey::Read( tlFile* f )
{
    frame = f->GetWord();
    x = f->GetFloat();
    y = f->GetFloat();
    z = f->GetFloat();
}

void
tlTransKey::Write( tlFile* f )
{
    f->PutWord(frame);
    f->PutFloat(x);
    f->PutFloat(y);
    f->PutFloat(z);
}

void
tlTransKey::Print( int index, int indent )
{
    printf("%*s%d\n",indent,"",(int) index);
    printf("%*s  Frame = %d\n",indent,"", frame);
    printf("%*s  X = %f\n",indent,"",x);
    printf("%*s  Y = %f\n",indent,"",y);
    printf("%*s  Z = %f\n",indent,"",z);
}

void
tlTransKey::PrintFormatted( int index, int indent )
{
    printf("%*s short %12d  # Frame \n",indent,"", frame);
    printf("%*s float %12f  # X\n",indent,"",x);
    printf("%*s float %12f  # Y\n",indent,"",y);
    printf("%*s float %12f  # Z\n",indent,"",z);
}

bool
tlTransKey::GetFieldValue(char* val, int len) const
{
    char buf[256];

    sprintf(buf, "Frame(%d), X(%f), Y(%f), Z(%f)",
              frame, x, y, z);
    strncpy(val, buf, len);

    return true;
}

bool
tlTransKey::GetFieldUpdatable()
{
    return false;
}

bool
tlTransKey::SetFieldValue(const char*)
{
    return false;
}

bool tlTransKey::operator==(const tlKey & key)
{
    const tlTransKey *tkey = dynamic_cast< const tlTransKey *>( &key );

    if( !tkey )
         return false;

    return (EQ(x,tkey->x,0.0005f) &&
              EQ(y,tkey->y,0.0005f) &&
              EQ(z,tkey->z,0.0005f));
}

int
tlTransKey::Equal(const tlTransKey& key, double tolerance)
{
    return (EQ(x,key.x, tolerance) &&
              EQ(y,key.y, tolerance) &&
              EQ(z,key.z, tolerance));
}

void
tlTransKey::Truncate()
{
    x = static_cast<float>(floor(x));
    y = static_cast<float>(floor(y));
    z = static_cast<float>(floor(z));
}


tlRotKey::tlRotKey() : tlKey()
{
    x = y = z = 0;
}

tlRotKey::tlRotKey(tlRotKey* key) :
        tlKey(key),
        x(key->x),
        y(key->y),
        z(key->z)

{
}
    
tlRotKey::tlRotKey(tlQuatKey* key)
{
    // frame number
    frame = key->frame;   
    tlQuat q(key->w,key->x,key->y,key->z);
    tlPoint ang = QuatToEuler(q);
    x = RAD2ANGLE(ang.x);
    y = RAD2ANGLE(ang.y);
    z = RAD2ANGLE(ang.z);
}

tlKey*
tlRotKey::Copy()
{
    return new tlRotKey(this);
}

tlKey*
tlRotKey::Interpolate(const tlKey* k, int f)
{
    static tlRotKey result;
    const tlRotKey* key = dynamic_cast<const tlRotKey*>(k);
    assert(key);
    
    result.frame = f;
    result.flags = flags;

    // This code is messy, we may want to copy the code from the Pure3D runtime

    float delta = (float)(f - frame) / (float)(key->frame - frame);
        
    unsigned short a0, a1;
    signed short d;

    a0 = (P3DANGLE) x;
    a1 = (P3DANGLE) key->x;
    d = (SWORD)(a1 - a0);
    if(d > (SWORD)ANG180) d -= (SWORD)ANG360;
    result.x = (P3DANGLE)((float)(a0) + delta * (float)(d));

    a0 = (P3DANGLE) y;
    a1 = (P3DANGLE) key->y;
    d = (SWORD)(a1 - a0);
    if(d > (SWORD)ANG180) d -= (SWORD)ANG360;
    result.y = (P3DANGLE)((float)(a0) + delta * (float)(d));

    a0 = (P3DANGLE) z;
    a1 = (P3DANGLE) key->z;
    d = (SWORD)(a1 - a0);
    if(d > (SWORD)ANG180) d -= (SWORD)ANG360;
    result.z = (P3DANGLE)((float)(a0) + delta * (float)(d));
    
    return &result;
}

double
tlRotKey::Error(const tlKey* key)
{
    int maxerror = 0;
    const tlRotKey* other = dynamic_cast<const tlRotKey*>(key);
    assert(other);
    
    int err;

    err = abs(AngleDiff( other->x, x ));
    if( err > maxerror ) maxerror = err;

    err = abs(AngleDiff( other->y, y ));
    if( err > maxerror ) maxerror = err;

    err = abs(AngleDiff( other->z, z ));
    if( err > maxerror ) maxerror = err;

    return (double) maxerror;
}

void
tlRotKey::Read(tlFile*f )
{
    frame = f->GetWord();
    x = f->GetWord();
    y = f->GetWord();
    z = f->GetWord();
}

void
tlRotKey::Write(tlFile*f )
{
    f->PutWord(frame);
    f->PutWord(x);
    f->PutWord(y);
    f->PutWord(z);
}

void
tlRotKey::Print(int index, int indent)
{
    printf("%*s%d\n",indent,"",(int) index);
    printf("%*s  Frame = %d\n",indent,"", frame);
    printf("%*s  X = %d\n",indent,"",x);
    printf("%*s  Y = %d\n",indent,"",y);
    printf("%*s  Z = %d\n",indent,"",z);
}

void
tlRotKey::PrintFormatted(int index, int indent)
{
    printf("%*s short %12d  # Frame\n",indent,"", frame);
    printf("%*s short %12d  # X\n",indent,"",x);
    printf("%*s short %12d  # Y\n",indent,"",y);
    printf("%*s short %12d  # Z\n",indent,"",z);
}

bool
tlRotKey::GetFieldValue(char* val, int len) const
{
    char buf[256];

    sprintf(buf, "Frame(%d), X(%d), Y(%d), Z(%d)",
              frame, x, y, z);
    strncpy(val, buf, len);

    return true;
}

bool
tlRotKey::GetFieldUpdatable()
{
    return false;
}

bool
tlRotKey::SetFieldValue(const char*)
{
    return false;
}

bool
tlRotKey::operator==(const tlKey & key)
{
    const tlRotKey *tkey = dynamic_cast< const tlRotKey *>( &key );

    if( !tkey )
         return false;

    return ((x == tkey->x) &&
              (y == tkey->y) &&
              (z == tkey->z));
}

void
tlRotKey::SwapParity()
{
    x += 32768;
    y += 32768;
    z = 32768 - z;
}






//----------------------------------------------------------------------------------------
//
// Quaternion rotation key 
//
tlQuatKey::tlQuatKey() : tlKey()
{
}

tlQuatKey::tlQuatKey(tlQuatKey* key):
        tlKey(key),
        w(key->w),
        x(key->x),
        y(key->y),
        z(key->z)
{
}

tlQuatKey::tlQuatKey(tlRotKey* key)
{
    // frame number
    frame = key->frame;
    tlQuat q = EulerToQuat( tlPoint(ANGLE2RAD(key->x), ANGLE2RAD(key->y), ANGLE2RAD(key->z)) );
    w = q.w;
    x = q.x;
    y = q.y;
    z = q.z;
}

tlKey*
tlQuatKey::Copy()
{
    return new tlQuatKey(this);
}

tlKey*
tlQuatKey::Interpolate(const tlKey* k, int f)
{
    assert("tlQuatKey::Interpolate unimplemented" == 0);
    return NULL;
}

double
tlQuatKey::Error(const tlKey* key)
{
    assert("tlQuatKey::Error unimplemented" == 0);
    return 0.0;
}

void
tlQuatKey::Read(tlFile * f)
{
    frame = f->GetWord();
    w = f->GetFloat();
    x = f->GetFloat();
    y = f->GetFloat();
    z = f->GetFloat();
}

void
tlQuatKey::Write(tlFile * f)
{
    f->PutWord(frame);
    f->PutFloat(w);
    f->PutFloat(x);
    f->PutFloat(y);
    f->PutFloat(z);
}

void
tlQuatKey::Print(int index, int indent)
{
    printf("%*s%d\n",indent,"",(int) index);
    printf("%*s  Frame = %d\n",indent,"", frame);
    printf("%*s  W = %f\n",indent,"",w);
    printf("%*s  X = %f\n",indent,"",x);
    printf("%*s  Y = %f\n",indent,"",y);
    printf("%*s  Z = %f\n",indent,"",z);
}

void
tlQuatKey::PrintFormatted(int index, int indent)
{
    printf("%*s short %12d  # Frame\n",indent,"", frame);
    printf("%*s float %12f  # W\n",indent,"",w);
    printf("%*s float %12f  # X\n",indent,"",x);
    printf("%*s float %12f  # Y\n",indent,"",y);
    printf("%*s float %12f  # Z\n",indent,"",z);
}

bool
tlQuatKey::GetFieldValue(char* val, int len) const
{
    char buf[256];

    sprintf(buf, "Frame(%d), W(%f), X(%f), Y(%f), Z(%f)",
              frame, w, x, y, z);
    strncpy(val, buf, len);

    return true;
}

bool
tlQuatKey::GetFieldUpdatable()
{
    return false;
}

bool
tlQuatKey::SetFieldValue(const char*)
{
    return false;
}

bool
tlQuatKey::operator==(const tlKey &key)
{
    // equivalence tolerance
    const tlQuatKey *tkey = dynamic_cast< const tlQuatKey *>( &key );

    if( !tkey )
         return false;

    float tolerance = (float)0.00001;
    return (EQ(w, tkey->w, tolerance) &&
              EQ(x, tkey->x, tolerance) &&
              EQ(y, tkey->y, tolerance) &&
              EQ(z, tkey->z, tolerance));
}


//
// End of Quaternion rotation key 
//
//----------------------------------------------------------------------------------------


tlScaleKey::tlScaleKey() : tlKey()
{
}

tlScaleKey::tlScaleKey(tlScaleKey* key) :
        tlKey(key),
        x(key->x),
        y(key->y),
        z(key->z)
{
}

bool
tlScaleKey::operator==(const tlKey& key)
{
    const tlScaleKey *tkey = dynamic_cast< const tlScaleKey *>( &key );

    if( !tkey )
         return false;

    // equivalence tolerance
    float tolerance = (float)0.00001;
    return (EQ(x, tkey->x, tolerance) &&
              EQ(y, tkey->y, tolerance) &&
              EQ(z, tkey->z, tolerance));
}

tlKey*
tlScaleKey::Copy()
{
    return new tlScaleKey(this);
}

tlKey*
tlScaleKey::Interpolate(const tlKey* k, int f)
{
    static tlScaleKey result;
    const tlScaleKey* key = dynamic_cast<const tlScaleKey*>(k);
    assert(key);
    
    result.frame = f;
    result.flags = flags;

    double framespace = (double)(f - frame) / (double)(key->frame - frame);

    result.x = static_cast<float>(x + ((key->x - x) * framespace));
    result.y = static_cast<float>(y + ((key->y - y) * framespace));
    result.z = static_cast<float>(z + ((key->z - z) * framespace));
    
    return &result;
}

double
tlScaleKey::Error(const tlKey* key)
{
    return 0.0;
}

void
tlScaleKey::Read(tlFile*f )
{
    frame = f->GetWord();
    x = f->GetFloat();
    y = f->GetFloat();
    z = f->GetFloat();
}

void
tlScaleKey::Write(tlFile*f )
{
    f->PutWord(frame);
    f->PutFloat(x);
    f->PutFloat(y);
    f->PutFloat(z);
}

void
tlScaleKey::Print(int index, int indent)
{
    printf("%*s%d\n",indent,"",(int) index);
    printf("%*s  Frame = %d\n",indent,"", frame);
    printf("%*s  X = %f\n",indent,"",x);
    printf("%*s  Y = %f\n",indent,"",y);
    printf("%*s  Z = %f\n",indent,"",z);
}

void
tlScaleKey::PrintFormatted(int index, int indent)
{
    printf("%*s short %12d  # Frame\n",indent,"", frame);
    printf("%*s float %12f  # X\n",indent,"",x);
    printf("%*s float %12f  # Y\n",indent,"",y);
    printf("%*s float %12f  # Z\n",indent,"",z);
}

bool
tlScaleKey::GetFieldValue(char* val, int len) const
{
    char buf[256];

    sprintf(buf, "Frame(%d), X(%f), Y(%f), Z(%f)",
              frame, x, y, z);
    strncpy(val, buf, len);

    return true;
}

bool
tlScaleKey::GetFieldUpdatable()
{
    return false;
}

bool
tlScaleKey::SetFieldValue(const char*)
{
    return false;
}

//------- scale matrix key

tlScaleMatKey::tlScaleMatKey() : tlKey()
{
}

tlScaleMatKey::tlScaleMatKey(tlMatrix& m)
{
    SetMatrix(m);
}

tlScaleMatKey::tlScaleMatKey(tlScaleMatKey* key):
        tlKey(key)
{
    SetMatrix(key->GetMatrix());
}

tlKey*
tlScaleMatKey::Copy()
{
    return new tlScaleMatKey(this);
}

tlKey*
tlScaleMatKey::Interpolate(const tlKey* k, int f)
{
    static tlScaleMatKey result;
    const tlScaleMatKey* key = dynamic_cast<const tlScaleMatKey*>(k);
    assert(key);
    
    result.frame = f;
    result.flags = flags;

    assert("tlScaleMatKey::Interpolate unimplemented!" == 0);
    
    return &result;
}

double
tlScaleMatKey::Error(const tlKey* key)
{
    assert("tlScaleMatKey::Error unimplemented!" == 0);
    return 0.0;
}

bool
tlScaleMatKey::operator==(const tlKey& key)
{
    const tlScaleMatKey *tkey = dynamic_cast< const tlScaleMatKey *>( &key );

    if( !tkey )
         return false;

    // equivalence tolerance
    return scaleMat == tkey->scaleMat;
}
// ----------------------------------------------------------------------

tlKey1DOF::tlKey1DOF( float val )
{
    x = val;
}

tlKey1DOF::tlKey1DOF()
{
}

tlKey1DOF::tlKey1DOF(tlKey1DOF* key) :
        tlKey(key),
        x(key->x)
{
}

tlKey1DOF::~tlKey1DOF()
{
}

tlKey*
tlKey1DOF::Copy()
{
    return new tlKey1DOF(this);
}

tlKey*
tlKey1DOF::Interpolate(const tlKey* k, int f)
{
    static tlKey1DOF result;
    const tlKey1DOF* key = dynamic_cast<const tlKey1DOF*>(k);
    assert(key);

    result.frame = f;
    result.flags = flags;

    double framespace = (double)(f - frame) / (double)(key->frame - frame);

    result.x = static_cast<float>(x + ((key->x - x) * framespace));
    
    return &result;
}

double
tlKey1DOF::Error(const tlKey* k)
{
    const tlKey1DOF* other = dynamic_cast<const tlKey1DOF*>(k);
    assert(other);

    return fabs( other->x - x );
}

bool
tlKey1DOF::operator==(const tlKey& key)
{
    const tlKey1DOF *tkey = dynamic_cast< const tlKey1DOF *>( &key );

    if( !tkey )
         return false;

    // equivalence tolerance
    float tolerance = (float)0.00001;
    return (EQ(x, tkey->x, tolerance));
}
// ----------------------------------------------------------------------

tlKey3DOF::tlKey3DOF()
{
    x = y = z = 0.0f;
}

tlKey3DOF::tlKey3DOF( tlKey3DOF* key ):
        tlKey(key),
        x(key->x),
        y(key->y),
        z(key->z)
{
}

tlKey3DOF::~tlKey3DOF()
{
}

tlKey3DOF::tlKey3DOF( float v1, float v2, float v3 )
{
    x = v1;
    y = v2;
    z = v3;
}

tlKey*
tlKey3DOF::Copy()
{
    return new tlKey3DOF(this);
}

tlKey*
tlKey3DOF::Interpolate(const tlKey* k, int f)
{
    static tlKey3DOF result;
    const tlKey3DOF* key = dynamic_cast<const tlKey3DOF*>(k);
    assert(key);

    result.frame = f;
    result.flags = flags;

    double framespace = (double)(f - frame) / (double)(key->frame - frame);

    result.x = static_cast<float>(x + ((key->x - x) * framespace));
    result.y = static_cast<float>(y + ((key->y - y) * framespace));
    result.z = static_cast<float>(z + ((key->z - z) * framespace));
    
    return &result;
}

double
tlKey3DOF::Error(const tlKey* k)
{
    double maxerror = 0.0;
    double err;

    const tlKey3DOF* other = dynamic_cast<const tlKey3DOF*>(k);
    assert(other);

    err = fabs( other->x - x );
    if( err > maxerror ) maxerror = err;

    err = fabs( other->y - y );
    if( err > maxerror ) maxerror = err;

    err = fabs( other->z - z );
    if( err > maxerror ) maxerror = err;

    return maxerror;
}

bool
tlKey3DOF::operator==(const tlKey& key)
{
    const tlKey3DOF *tkey = dynamic_cast< const tlKey3DOF *>( &key );

    if( !tkey )
         return false;

    // equivalence tolerance
    float tolerance = (float)0.00001;
    return (EQ(x, tkey->x, tolerance) &&
              EQ(y, tkey->y, tolerance) &&
              EQ(z, tkey->z, tolerance));
}
// ----------------------------------------------------------------------

tlKey1DOFAngle::tlKey1DOFAngle( )
{ 
    x = 0;
}

tlKey1DOFAngle::tlKey1DOFAngle( tlKey1DOFAngle* key ):
        tlKey(key),
        x(key->x)
{
}

tlKey1DOFAngle::~tlKey1DOFAngle( )
{ 
}

tlKey1DOFAngle::tlKey1DOFAngle( unsigned short val )
{
    x = val;
}

tlKey*
tlKey1DOFAngle::Copy()
{
    return new tlKey1DOFAngle(this);
}

tlKey*
tlKey1DOFAngle::Interpolate(const tlKey* k, int f)
{
    static tlKey1DOFAngle result;
    const tlKey1DOFAngle* key = dynamic_cast<const tlKey1DOFAngle*>(k);
    assert(key);
    
    result.frame = f;
    result.flags = flags;

    // This code is messy, we may want to copy the code from the Pure3D runtime

    float delta = (float)(f - frame) / (float)(key->frame - frame);
        
    unsigned short a0, a1;
    signed short d;

    a0 = (P3DANGLE) x;
    a1 = (P3DANGLE) key->x;
    d = (SWORD)(a1 - a0);
    if(d > (SWORD)ANG180) d -= (SWORD)ANG360;
    result.x = (P3DANGLE)((float)(a0) + delta * (float)(d));

    
    return &result;
}


double
tlKey1DOFAngle::Error(const tlKey* k)
{
    const tlKey1DOFAngle* other = dynamic_cast<const tlKey1DOFAngle*>(k);
    assert(other);
    

    return (double) AngleDiff( other->x, x );
}

bool
tlKey1DOFAngle::operator==(const tlKey& key)
{
    const tlKey1DOFAngle *tkey = dynamic_cast< const tlKey1DOFAngle *>( &key );

    if( !tkey )
         return false;

    // equivalence tolerance   
    return  x == tkey->x;
}
// ----------------------------------------------------------------------

tlKey3DOFAngle::tlKey3DOFAngle()
{
    x =0;
}

tlKey3DOFAngle::tlKey3DOFAngle( tlKey3DOFAngle* key ):
        tlKey(key),
        x(key->x),
        y(key->y),
        z(key->z)
{
}

tlKey3DOFAngle::~tlKey3DOFAngle()
{
}

tlKey3DOFAngle::tlKey3DOFAngle(unsigned long val )
{
    x = static_cast <P3DANGLE> ( KEYGETX(val) );
    y = static_cast <P3DANGLE> ( KEYGETY(val) );
    z = static_cast <P3DANGLE> ( KEYGETZ(val) );
}

tlKey*
tlKey3DOFAngle::Copy()
{
    return new tlKey3DOFAngle(this);
}

tlKey*
tlKey3DOFAngle::Interpolate(const tlKey* k, int f)
{
    static tlKey3DOFAngle result;
    const tlKey3DOFAngle* key = dynamic_cast<const tlKey3DOFAngle*>(k);
    assert(key);
    
    result.frame = f;
    result.flags = flags;

    // This code is messy, we may want to copy the code from the Pure3D runtime

    float delta = (float)(f - frame) / (float)(key->frame - frame);
        
    unsigned short a0, a1;
    signed short d;

    a0 = (P3DANGLE) x;
    a1 = (P3DANGLE) key->x;
    d = (SWORD)(a1 - a0);
    if(d > (SWORD)ANG180) d -= (SWORD)ANG360;
    result.x = (P3DANGLE)((float)(a0) + delta * (float)(d));

    a0 = (P3DANGLE) y;
    a1 = (P3DANGLE) key->y;
    d = (SWORD)(a1 - a0);
    if(d > (SWORD)ANG180) d -= (SWORD)ANG360;
    result.y = (P3DANGLE)((float)(a0) + delta * (float)(d));

    a0 = (P3DANGLE) z;
    a1 = (P3DANGLE) key->z;
    d = (SWORD)(a1 - a0);
    if(d > (SWORD)ANG180) d -= (SWORD)ANG360;
    result.z = (P3DANGLE)((float)(a0) + delta * (float)(d));
    
    return &result;
}

double
tlKey3DOFAngle::Error(const tlKey* k)
{
    int maxerror = 0;
    const tlKey3DOFAngle* other = dynamic_cast<const tlKey3DOFAngle*>(k);
    assert(other);
    
    int err;

    err = abs(AngleDiff( other->x, x ));
    if( err > maxerror ) maxerror = err;

    err = abs(AngleDiff( other->y, y ));
    if( err > maxerror ) maxerror = err;

    err = abs(AngleDiff( other->z, z ));
    if( err > maxerror ) maxerror = err;
    
    return (double) maxerror;
}

bool
tlKey3DOFAngle::operator==(const tlKey& key)
{
    const tlKey3DOFAngle *tkey = dynamic_cast< const tlKey3DOFAngle *>( &key );

    if( !tkey )
         return false;

    // equivalence tolerance   
    return (( x == tkey->x ) &&
             ( y == tkey->y ) &&
             ( z == tkey->z ));
}
// ----------------------------------------------------------------------

tlKeyColour::tlKeyColour( unsigned long val )
{
    c = tlColour( val );
}

tlKeyColour::tlKeyColour()
{
}

tlKeyColour::tlKeyColour( tlKeyColour* key ):
        tlKey(key),
        c(key->c)
{
}

tlKeyColour::~tlKeyColour()
{
}

tlKey*
tlKeyColour::Copy()
{
    return new tlKeyColour(this);
}

tlKey*
tlKeyColour::Interpolate(const tlKey* k, int f)
{
    static tlKeyColour result;
    const tlKeyColour* key = dynamic_cast<const tlKeyColour*>(k);
    assert(key);
    
    result.frame = f;
    result.flags = flags;

    double framespace = (double)(f - frame) / (double)(key->frame - frame);

    result.c.red   = static_cast<float>(c.red   + ((key->c.red   - c.red  ) * framespace));
    result.c.green = static_cast<float>(c.green + ((key->c.green - c.green) * framespace));
    result.c.blue  = static_cast<float>(c.blue  + ((key->c.blue  - c.blue ) * framespace));
    result.c.alpha = static_cast<float>(c.alpha + ((key->c.alpha - c.alpha) * framespace));

    return &result;
}

double
tlKeyColour::Error(const tlKey* k)
{
    double maxerror = 0.0;
    double err;

    const tlKeyColour* other = dynamic_cast<const tlKeyColour*>(k);
    assert(other);

    err = fabs( other->c.red - c.red );
    if( err > maxerror ) maxerror = err;

    err = fabs( other->c.green - c.green );
    if( err > maxerror ) maxerror = err;

    err = fabs( other->c.blue - c.blue );
    if( err > maxerror ) maxerror = err;

    err = fabs( other->c.alpha - c.alpha );
    if( err > maxerror ) maxerror = err;


    return maxerror;
}

bool
tlKeyColour::operator==(const tlKey& key)
{
    const tlKeyColour *tkey = dynamic_cast< const tlKeyColour *>( &key );

    if( !tkey )
         return false;

    return (c == tkey->c) != 0;
}
// ----------------------------------------------------------------------

