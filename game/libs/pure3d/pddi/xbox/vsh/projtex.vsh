;---------------------------------------------------------------------
;	vertex shader for projected texture
;---------------------------------------------------------------------
xvs.1.1
#pragma screenspace

;---------------------------------------------------------------------
;	Constants
;		c0  = ( 0, 0, 0 )
;		c2 - c5	= transform matrix( camera + projected )
;		c6  = projection vector
;		c10-c13 = model view matrix
;		c14 = vertex color
;---------------------------------------------------------------------

#define VPOS	v0
#define VCOLOUR v3
#define VNORMAL	v2
#define VUV0	v9
#define VUV1	v10
#define VUV2	v11
#define VUV3	v12

;initialize r2, r3
mov r3, c0
mov r2, c0
mov r1, c0

; transform the position 
m4x4 r1, VPOS, c2

; if the dot product of project vector and the vertex normal
; is negative, then set the oT1 as 0, otherwise, set as the
; transformed projected space coord
dp4 r2.x, VNORMAL, c6
mov r2.yzw, r2.x


sge r3, c0, r2
mul oT1, r3, r1
;mov oT1, r1

; copy colour
mov oD0, c14

; copy position
m4x4 oPos, VPOS, c10

;copy UV0
mov oT0, VUV0

; Screenspace instructions are interwoven to prevent a stall
mul oPos.xyz, r12, c-38
+rcc r1.x, r12.w

mad oPos.xyz, r12, r1.x, c-37
