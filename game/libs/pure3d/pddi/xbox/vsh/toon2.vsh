/************************************************************************
Port this code from NVIDIA 

Algorithm:
	-Compute world-space position, find vector from eye to vertex
	-Normalize this eye vector
	-Use this eye vector dotted with the surface normal (also in world space)
	  as a texture coordinate (this will index into a 1D texture).
	  This dot product effectively finds the silhouette of the object.
	-Use the light vector dotted with the surface normal to index into a 
	  second 1D texture.  This lookup generates the constant-tone toon
	  shading depending on how close the surface normal coincides with the
	  light vector.

*************************************************************************/


xvs.1.1
#pragma screenspace

;---------------------------------------------------------------------
;	Constants
;		c1    Eye   Position
;		c2 - c5	= transform matrix( world + camera + projected )
;		c6 - c9 = world matrix
;		c12 - c15 = world inverse/transpose matrix
;		c10 = vertex color
;		c11.x = size of edge map
;		c11.y = size of shade map
;		c11.z = width of silhouette
;		texture0	shade map
;		texture1    edge map
;		c16.x = 0
;		c16.y = 1
;		c16.z = 0.03
;		c17			light0
;		c18			light1
;		c19			light2
;---------------------------------------------------------------------

#define VPOS	v0
#define VCOLOUR v3
#define VNORMAL	v2
#define VUV0	v9


// transform position
dp4 oPos.x, VPOS, c2
dp4 oPos.y, VPOS, c3
dp4 oPos.z, VPOS, c4
dp4 oPos.w, VPOS, c5

// transform normal
dp3 r0.x, VNORMAL, c12
dp3 r0.y, VNORMAL, c13
dp3 r0.z, VNORMAL, c14

// normalize normal
dp3 r0.w, r0, r0
rsq r0.w, r0.w
mul r0, r0, r0.w

// compute world space position
dp4 r1.x, VPOS, c6
dp4 r1.y, VPOS, c7
dp4 r1.z, VPOS, c8
dp4 r1.w, VPOS, c9

// vector from point to eye
add r2, c1, -r1

// normalize e
dp3 r2.w, r2, r2
rsq r2.w, r2.w
mul r2, r2, r2.w

// l dot n : the result for looking up shading
dp3 r3.x,  r0,   -c17			//dot product of light0 and normal
dp3 r3.y,  r0,   -c18			//dot product of light1 and normal
dp3 r3.z,  r0,   -c19			//dot product of light2 and normal
mov r3.w,  c11.w

; clamp negative dot-product value to 0
sge r4, r3, c11.z
mul r3,	r3, r4

; add r3.x, r3.y, and r3.z, the result value for looking up shade map
add r3.x, r3.x, r3.y
add r3.x, r3.x, r3.z

mul oT1.x, r3.x, c11.y


;set base texture uv
mov oT0, VUV0

// e dot n: the result for looking up edge color
dp3 r3.x, r0, r2


//vertex color material
mov oD0, c10
sge oD0.w, c16.z, r3.x

//set texture1
mul oT2.x, r3.x, c11.x

; Screenspace instructions are interwoven to prevent a stall
mul oPos.xyz, r12, c-38
+rcc r1.x, r12.w

mad oPos.xyz, r12, r1.x, c-37
