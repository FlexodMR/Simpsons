//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef _TLTYPES_HPP_
#define _TLTYPES_HPP_

#ifndef NULL
    #define NULL (0)
#endif

// numeric types
#ifndef BOOL
    typedef int BOOL;
#endif

typedef signed char SBYTE;
typedef unsigned char UBYTE;

typedef signed short SWORD;
typedef unsigned short UWORD;

typedef signed long SLONG;
typedef unsigned long ULONG;

typedef SLONG P3DFIXED;

typedef float P3DVALUE;
#define VALUE(x) (P3DVALUE)(x)

typedef UWORD P3DANGLE;
#ifndef TWOPI
#define TWOPI 6.28318530718f
#endif

// Note, these are doubles so we don't lose precision when converting
// from angles to radians and back.  I don't know how many digits are
// significant in a double, but this should be plenty.
#define ANGLESPERRAD (10430.3783504704527249495663164)
#define RADSPERANGLE (9.58737992428525768573804743433e-5)

#ifndef ANGLE2RAD
#define ANGLE2RAD(x) ((float)((x)*RADSPERANGLE))
#endif

#ifndef RAD2ANGLE
#define RAD2ANGLE(x) ((unsigned short)((x)*ANGLESPERRAD + 0.5))
#endif

#ifndef ANGLE2DEG
#define ANGLE2DEG(x) ((float)(((x)*360.0)/65536.0f))
#endif 

#ifndef DEG2ANGLE
#define DEG2ANGLE(x) ((short)(((x)*65536.0f)/360.0))
#endif

#ifndef RAD2DEG
#define RAD2DEG(x) ((float)(((x)*360.0f)/ TWOPI))
#endif

#ifndef DEG2RAD
#define DEG2RAD(x) ((float)(((x)*TWOPI)/ 360.0))
#endif

// true type
#ifndef TRUE
    #define TRUE (1)
#endif

// false type
#ifndef FALSE
    #define FALSE (0)
#endif
// Length of names used in tools
#define P3DMAXNAME   254

#ifdef WIN32

typedef __int64   TLUID;

#ifndef CDECL
#define CDECL  __cdecl
#endif
#else

typedef long long   TLUID;

#ifndef CDECL
#define CDECL
#endif
#endif

#endif /* _TLTYPES_HPP */

