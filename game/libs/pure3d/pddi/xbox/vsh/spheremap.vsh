xvs.1.1
#pragma screenspace

;---------------------------------------------------------------------
;	Constants
;       c0 ( 0, 1, 0.5, 2 )
;		c1 ( 0, 0, 1, -1 )
;		c2 - c5	= transform matrix( world + camera + projected )
;		c6 - c9	= camera space transform matrix( world + camera + rotation )
;		c23- c26= world space transform matrix
;		c27		  eye world position
;       c13 - c15 material properties
;       c17-c22 lighting
;---------------------------------------------------------------------


#define _ZERO c0.x
#define _ONE c0.y

#define VPOS	v0
#define VCOLOUR v3
#define VNORMAL	v2
#define VUV0	v9
#define HALF	c0.z
#define TWO		c0.w
#define EYE		c27

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

;get the eye-vertex vector
mul r1, VPOS, -_ONE
add r1, r1, EYE

;normalize eye-vertex vector
dp3 r2.w, r1, r1
rsq r2.w, r2.w
mul r1, r1, r2.w

;transform vertex normal to world space for calculating lighting
dp3 r11.x, c23, VNORMAL
dp3 r11.y, c24, VNORMAL
dp3 r11.z, c25, VNORMAL

;copy vnormal to r2
mov r2, VNORMAL

;normalize normal
dp3 r2.w, r2, r2
rsq r2.w, r2.w
mul r2, r2, r2.w

;calculate the reflection vector, r4 holds the reflection vector
dp3 r3.w, r1, r2
mul r3.w, r3.w, -TWO
mad r4, r2, r3.w, r1

;normalize the reflection vector
dp3 r4.w, r4, r4
rsq r4.w, r4.w
mul r4, r4, r4.w

;transform the reflection vector to camera space
dp3 r5.x, c6, r4
dp3 r5.y, c7, r4
dp3 r5.z, c8, r4
mov r5.w, _ZERO

;add eye vector(0,0,1) and camera space reflection vector to 
;get the camera space normal
add r4, r5, c1

;normalize the camera space normal: r4
dp3 r5.x, r4, r4
rsq r5.x, r5.x
mul r4, r4, r5.x

;rotate reflection map
dp3 r5.x, r4, c28
dp3 r5.y, r4, c29
dp3 r5.z, r4, c30
mov r4, r5

;map normalized r4.xy to [0, 1] space
mul r4, r4, HALF
add r4, r4, HALF
mov r4.z, _ONE
mov r4.w, _ONE

;r4.x, r4.y holds the uv coordinator of the spheremap
mov oT1, r4			;sphere map coord
mov oT0, VUV0		;base texture

;------------------------------------------------------------------------------
; Lighting calculation
;------------------------------------------------------------------------------

; add emissive
mov r8, EMISSIVE
mov r9, _ZERO

DirLightSpec          r8, r9, MAT_DIFFUSE, MAT_SPECULAR, r11, LIGHT0_DIRECTION, LIGHT0_COLOUR
DirLight              r8, r9, MAT_DIFFUSE, MAT_SPECULAR, r11, LIGHT1_DIRECTION, LIGHT1_COLOUR
DirLight              r8, r9, MAT_DIFFUSE, MAT_SPECULAR, r11, LIGHT2_DIRECTION, LIGHT2_COLOUR

;mul r8, r8, VCOLOUR
min oD0, r8, _ONE   ; clamp if > 1
min oD1, r9, _ONE   ; clamp if > 1


; Screenspace instructions are interwoven to prevent a stall
mul oPos.xyz, r12, c-38
+rcc r1.x, r12.w

mad oPos.xyz, r12, r1.x, c-37