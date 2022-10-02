//=============================================================================
// Copyright (c) 2002 Radical Games Ltd.  All rights reserved.
//=============================================================================


#ifndef VU0MICROCODE_HPP
#define VU0MICROCODE_HPP

#include <libvu0.h>

typedef unsigned int  V128 __attribute__ (( mode(TI) )) __attribute__ ((aligned(16)));

typedef union
{
	V128			v128;
	sceVu0FVECTOR	fVec;
} QWvec;


typedef union
{
	V128			v128[4];
	sceVu0FMATRIX	fMat;
	QWvec			qwVec[4];
} QW4mat;

extern u_long128 vu0_ucode[]        __attribute__((section(".vudata")));
extern u_long128 vu0_begin[]        __attribute__((section(".vutext")));
extern "C" void vu0_SphereVSphere(void) __attribute__((section(".vutext")));
extern "C" void vu0_SphereVAABox(void)  __attribute__((section(".vutext")));
extern "C" void vu0_SphereVTBox(void)   __attribute__((section(".vutext")));
extern "C" void vu0_sincos(void)        __attribute__((section(".vutext")));
extern "C" void vu0_unitmatrix(void)    __attribute__((section(".vutext")));
extern "C" void vu0_mulmatrix(void)     __attribute__((section(".vutext")));
extern "C" void vu0_rotateX(void)       __attribute__((section(".vutext")));
extern "C" void vu0_transform(void)     __attribute__((section(".vutext")));
extern "C" void vu0_translate(void)     __attribute__((section(".vutext")));
extern "C" void vu0_quaternionmatrix(void)     __attribute__((section(".vutext")));
extern "C" void vu0_quaternionmultiply(void)   __attribute__((section(".vutext")));
extern u_long128 vu0_end[]           __attribute__((section(".vutext")));


#define VU0_SinCos() asm __volatile__( "vcallms vu0_sincos" );
#define VU0_UnitMatrix() asm __volatile__( "vcallms vu0_unitmatrix" );
#define VU0_MulMatrix() asm __volatile__( "vcallms vu0_mulmatrix" );
#define VU0_RotateX( angle) asm __volatile__( "qmtc2.i %0,vf1 ;vcallms vu0_rotateX" : : "r"( angle ) );
#define VU0_Translation( translation ) asm __volatile__( "qmtc2.i %0,vf27 ;vcallms vu0_translate" : : "r"( translation ) );
#define VU0_Transform( result,vertexXYZ ) asm __volatile__( "qmtc2.i %1,vf01 ; vcallms vu0_transform ; qmfc2.i %0,vf01" : "=r"(result) : "r"( vertexXYZ ) );
#define VU0_Load( matrix ) asm __volatile__( "vnop ;lqc2 vf24,(%0) ;lqc2 vf25,16(%0) ;lqc2 vf26,32(%0) ;lqc2 vf27,48(%0)" : : "r"(matrix) );
#define VU0_LoadR( matrix ) asm __volatile__( "vnop ;lqc2 vf28,(%0) ;lqc2 vf29,16(%0) ;lqc2 vf30,32(%0) ;lqc2 vf31,48(%0)" : : "r"(matrix) );
#define VU0_Store( matrix ) asm __volatile__( "vnop ;sqc2 vf24,(%0) ;sqc2 vf25,16(%0) ;sqc2 vf26,32(%0) ;sqc2 vf27,48(%0)" : : "r"(matrix) );
#define VU0_StoreR( matrix ) asm __volatile__( "vnop ;sqc2 vf28,(%0) ;sqc2 vf29,16(%0) ;sqc2 vf30,32(%0) ;sqc2 vf31,48(%0)" : : "r"(matrix) );

#endif // VU0MICROCODE_HPP
