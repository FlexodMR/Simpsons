xvs.1.1
#pragma screenspace

;---------------------------------------------------------------------
;	Constants
;       c0 standard constants
;		c1.x  0.5
;		c2 - c5	= transform matrix( world + camera + projected )
;		c6 - c9 = world transform
;		c11   bias for perturbing UV
;		c12   half
;       c13 - c15 material properties
;       c17-c22 lighting
;---------------------------------------------------------------------


#define _ZERO c0.x
#define _ONE c0.y
#define _255 c0.z

#define VPOS	v0
#define VCOLOUR v3
#define VNORMAL	v2
#define VUV0	v9
#define VUV1	v10
#define BIAS	c12
#define HALF	c13.x

#define MAT_DIFFUSE  c14
#define MAT_SPECULAR c15
#define EMISSIVE c16
#define LIGHT0_DIRECTION c17
#define LIGHT0_COLOUR c18
#define LIGHT1_DIRECTION c19
#define LIGHT1_COLOUR c20
#define LIGHT2_DIRECTION c21
#define LIGHT2_COLOUR c22

#include "util.vsh"

;transform vertex position  by Model*View*Proj matrix
dp4 r2.x, c2, VPOS
dp4 r2.y, c3, VPOS
dp4 r2.z, c4, VPOS
dp4 r2.w, c5, VPOS

; write transformed vertex position
mov oPos, r2

; project
rcp r4, r2.w
mul r2, r2, r4

;shift to range[0, 1]
mad r2.x, r2.x, HALF, HALF
mad r2.y, r2.y, -HALF, HALF

; transform normal to camera space
dp3 r11.x, c6, VNORMAL
dp3 r11.y, c7, VNORMAL
dp3 r11.z, c8, VNORMAL
dp3 r11.w, c9, VNORMAL

;multiply by screen size
mul r2, r2, c11

;use camera space position as UV, and perturb it by normal*bias
mov oT0, VUV0
mad oT1, r11, BIAS, r2

;------------------------------------------------------------------------------
; Lighting calculation
;------------------------------------------------------------------------------

; add emissive
mov r8, EMISSIVE
mov r9, _ZERO

DirLightSpec          r8, r9, MAT_DIFFUSE, MAT_SPECULAR, r11, LIGHT0_DIRECTION, LIGHT0_COLOUR
DirLight              r8, r9, MAT_DIFFUSE, MAT_SPECULAR, r11, LIGHT1_DIRECTION, LIGHT1_COLOUR
DirLight              r8, r9, MAT_DIFFUSE, MAT_SPECULAR, r11, LIGHT2_DIRECTION, LIGHT2_COLOUR

min oD0, r8, _ONE   ; clamp if > 1
min oD1, r9, _ONE   ; clamp if > 1

; Screenspace instructions are interwoven to prevent a stall
mul oPos.xyz, r12, c-38
+rcc r1.x, r12.w

mad oPos.xyz, r12, r1.x, c-37


