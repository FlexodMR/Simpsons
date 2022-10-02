;------------------------------------------------------------------------------
; dot3 bump map shader with diffuse and specular
;------------------------------------------------------------------------------
xvs.1.1
#pragma screenspace

;------------------------------------------------------------------------------
;		Check out bumpmap_Constatns.h for all the 
;		constant registers definition
;------------------------------------------------------------------------------

#include "..\shaders\bumpmap_Constants.h"

#define V_POSITION		v0
#define V_DIFUSSE		v3
#define V_NORMAL		v2
#define V_UV0			v9
#define V_UV1			v10
#define V_UV2			v11
#define V_UV3			v12
#define V_SxT			v2			;the same as normal
#define V_S				v6			;bi-normal
#define V_T				v15			;tangent


#define S_LOCAL			r0
#define T_LOCAL			r1
#define SxT_LOCAL		r2
#define LIGHT_LOCAL		r3
#define EYE_VECTOR		r5
#define HALF_ANGLE		r7

; Transform position to clip space and output it
dp4 oPos.x, V_POSITION, c[CV_WORLDVIEWPROJ_0]
dp4 oPos.y, V_POSITION, c[CV_WORLDVIEWPROJ_1]
dp4 oPos.z, V_POSITION, c[CV_WORLDVIEWPROJ_2]
dp4 oPos.w, V_POSITION, c[CV_WORLDVIEWPROJ_3]

mov S_LOCAL, V_S
mov T_LOCAL, V_T
mov SxT_LOCAL, V_SxT

mul S_LOCAL.xyz, S_LOCAL.xyz, c[CV_BUMP_SCALE].w
mul T_LOCAL.xyz, T_LOCAL.xyz, c[CV_BUMP_SCALE].w

; transform light by basis vectors to put it
; into texture space
dp3 LIGHT_LOCAL.x, S_LOCAL, c[CV_LIGHT_DIRECTION_OBJECT]
dp3 LIGHT_LOCAL.y, T_LOCAL, c[CV_LIGHT_DIRECTION_OBJECT]
dp3 LIGHT_LOCAL.z, SxT_LOCAL, c[CV_LIGHT_DIRECTION_OBJECT]
mov LIGHT_LOCAL.w, c[CV_ONE]


/////////////////////////////////////
// Calculate half angle vector

; Half angle vector is  (L+V)/||L+V||  or Normalize( L+V )
;  ||a|| is magnitude of a
;  L = vec to light from vertex point
;  V = vec to viewer from vertex point

// vertex position - eye position
// eye position - vertex position
add EYE_VECTOR,  c[ CV_EYE_POS_OBJECT ], -V_POSITION.xyz


; Normalize eye vec
dp3 EYE_VECTOR.w, EYE_VECTOR, EYE_VECTOR
rsq EYE_VECTOR.w, EYE_VECTOR.w
mul EYE_VECTOR,   EYE_VECTOR, EYE_VECTOR.w

// Add them to average & create half angle vector
add HALF_ANGLE,  c[CV_LIGHT_DIRECTION_OBJECT], EYE_VECTOR

;  Normalize it
dp3 HALF_ANGLE.w, HALF_ANGLE, HALF_ANGLE
rsq HALF_ANGLE.w, HALF_ANGLE.w
mul HALF_ANGLE,   HALF_ANGLE, HALF_ANGLE.w

; enable or disable specular
; if specular is enabled, c[ CV_SPECULAR_ENABLED ] is one, otherwise zero
mul HALF_ANGLE, HALF_ANGLE, c[ CV_SPECULAR_ENABLED ]

/////////////////////////////////////////////////
; Transform half angle vector from object space to local tangent space and
;  output to tex coord set 3 for specular calc

dp3 oT3.x, HALF_ANGLE, S_LOCAL
dp3 oT3.y, HALF_ANGLE, T_LOCAL
dp3 oT3.z, HALF_ANGLE, SxT_LOCAL
mov oT3.w, c[ CV_ZERO ].w



/////////////////////////////////////
// move local light vector to TC 2
mov oT2, LIGHT_LOCAL
mov oT2.w, c[CV_ZERO].w        // w to 0


; output tex coords
mov oT0, V_UV0
mov oT1, V_UV1


; Screenspace instructions are interwoven to prevent a stall
mul oPos.xyz, r12, c-38
+rcc r1.x, r12.w

mad oPos.xyz, r12, r1.x, c-37
