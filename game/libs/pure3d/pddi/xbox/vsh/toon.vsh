/************************************************************************
Algorithm:
	- offset the position along normal in object space
	- transform the offseted position by world+view+projection
	- transform normal to world space
	- calculate the dot-product of lights and normal
	- use the result of last step for looking up the gradient texture(tex1)
	- blend tex1, tex0 and diffuse color
*************************************************************************/


xvs.1.1
#pragma screenspace

;---------------------------------------------------------------------
;	Constants
;		c12	  Normalized light0 direction vector
;		c13   Normalized light1 direction vector
;		c14   Normalized light2 direction vector
;		c15.x   intensity of light0
;		c15.y   intensity of light1
;		c15.z   intensity of light2
;		c2 - c5	= transform matrix( world + camera + projected )
;		c6 - c9 = world matrix
;		c10 = vertex color
;		c11.x = size of edge map
;		c11.y = size of shade map
;		c11.z = offset value along normal
;		c11.w = 0.f
;		texture0	shade map
;---------------------------------------------------------------------

#define VPOS	v0
#define VCOLOUR v3
#define VNORMAL	v2
#define VUV0	v9

//add offset to the position
mov r1, VPOS
mad r1.xyz, VNORMAL.xyz, c11.z, r1.xyz

// transform position
dp4 oPos.x, r1, c2
dp4 oPos.y, r1, c3
dp4 oPos.z, r1, c4
dp4 oPos.w, r1, c5

// transform normal
dp3 r0.x, VNORMAL, c6
dp3 r0.y, VNORMAL, c7
dp3 r0.z, VNORMAL, c8

// normalize normal
dp3 r0.w, r0, r0
rsq r0.w, r0.w
mul r0, r0, r0.w

// l dot n : the result for looking up shading
dp3 r3.x,  r0,   -c12			//dot product of light0 and normal
dp3 r3.y,  r0,   -c13			//dot product of light1 and normal
dp3 r3.z,  r0,   -c14			//dot product of light2 and normal
mov r3.w,  c11.w				//initialize r3.w

; clamp negative dot-product value to 0
sge r4, r3, c11.w
mul r3,	r3, r4

; multply the intensity of light to the dot-product, and sum them
; r3.x hold the final result for looking up shade-map
dp3 r3.x, r3, c15

;set base texture
mov oT0, VUV0

mul oT1.x, r3.x, c11.y

//vertex color material
mov oD0, c10

; Screenspace instructions are interwoven to prevent a stall
mul oPos.xyz, r12, c-38
+rcc r1.x, r12.w

mad oPos.xyz, r12, r1.x, c-37
