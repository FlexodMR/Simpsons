;------------------------------------------------------------------------------
; Vertex shader to perform vertex blending
;------------------------------------------------------------------------------
vs.1.1

;------------------------------------------------------------------------------
; Constants 
;    c0       = (0,1,255,0.5)
;    c2-c5    = projection matrix
;    c6       = material diffuse colour
;    c7       = material specular (power in w)
;    c8       = material emissive (emissove + ambient)
;    c9      = light 0 position
;    c10      = light 0 colour
;    c11      = light 1 position
;    c12      = light 1 colour
;    c13      = light 2 position
;    c14      = light 2 colour
;    c15      = light 3 position
;    c16      = light 3 colour
;    c17+     = matrix palette
;	
;	 c92	  = silhoutte color
;	 c93.x	  = size of shademap( pass 2 ) || 0 ( pass 1 )
;	 c93.y	  = size of shademap( pass 1 ) || 0 ( pass 2 )
;	 c93.z    = offset value( pass 2 ) || 0 ( pass 1 )
;	 c93.w	  = 0.f
;	 c94.x    = light0 intensity
;	 c94.y    = light1 intensity
;	 c94.z    = light2 intensity
; Temporaries used for semi-persistant data
;	 r7    = offset position
;    r8    = Colour
;    r9    = Post-scale Blend Indices \ Specular
;    r10   = Blended Vertex
;    r11   = Blended Normal
;
;------------------------------------------------------------------------------

//#define FOUR_JOINTS

#define _ZERO c0.x
#define _ONE c0.y
#define _255 c0.z

#define _OFFSET	c93.z
#define _SHADEMAP_SIZE	c93.y

#define PALSTART 17

#define MAT_DIFFUSE  c6
#define MAT_SPECULAR c7

#define EMISSIVE c8


#define LIGHT0_DIRECTION c9
#define LIGHT0_COLOUR c10
#define LIGHT1_DIRECTION c11
#define LIGHT1_COLOUR c12
#define LIGHT2_DIRECTION c13
#define LIGHT2_COLOUR c14
#define LIGHT3_POSITION c15
#define LIGHT3_COLOUR c16
#define SILOUETTE_COLOUR	c92


#define V_OFFSET_POS	r7

#include "util.vsh"

;------------------------------------------------------------------------------
; Vertex transform
;------------------------------------------------------------------------------
mul r9, V_INDICES, _255  // need to scale indices by 255 to undo colour conversiom
mov r0.w, _ONE

;offset the position along the normal in object space
mov r7, V_POSITION
mad r7.xyz, V_NORMAL.xyz, _OFFSET, r7.xyz

;------------------------------------------------------------------------------
; Joint 1
;------------------------------------------------------------------------------

; get palette index for joint 1 
mov a0.x, r9.x

; transform weighted joint 1 to camera space
dp4 r0.x, V_OFFSET_POS, c[a0.x + PALSTART + 0]
dp4 r0.y, V_OFFSET_POS, c[a0.x + PALSTART + 1]
dp4 r0.z, V_OFFSET_POS, c[a0.x + PALSTART + 2]

; calculate weighting
mul r10, V_WEIGHTS.x, r0

; Transform normal for world0 matrix
dp3 r11.x, V_NORMAL, c[a0.x + PALSTART + 0]
dp3 r11.y, V_NORMAL, c[a0.x + PALSTART + 1]
dp3 r11.z, V_NORMAL, c[a0.x + PALSTART + 2]
mov r11.w, _ONE

;------------------------------------------------------------------------------
; Joint 2
;------------------------------------------------------------------------------

; get palette index for joint 2 
mov a0.x, r9.y

; transform weighted joint 1 to camera space
dp4 r0.x, V_OFFSET_POS, c[a0.x + PALSTART + 0]
dp4 r0.y, V_OFFSET_POS, c[a0.x + PALSTART + 1]
dp4 r0.z, V_OFFSET_POS, c[a0.x + PALSTART + 2]

; calculate weighting and sum 
mad r10, V_WEIGHTS.y, r0, r10

; Transform normal for world1 matrix
dp3 r0.x, V_NORMAL, c[a0.x + PALSTART + 0]
dp3 r0.y, V_NORMAL, c[a0.x + PALSTART + 1]
dp3 r0.z, V_NORMAL, c[a0.x + PALSTART + 2]
mov r0.w, _ONE

; Lerp the two normals r11 and r0 into r11
mul r2, r11, V_WEIGHTS.x     ; v0 * weight
add r4, _ONE, -V_WEIGHTS.x   ; r2 = 1 - weight
mad r11, r0, r4, r11   ; normal = (1-weight)*v1 + v0*weight
Normalize r11

;------------------------------------------------------------------------------
; Joint 3
;------------------------------------------------------------------------------

; get palette index for joint 3
mov a0.x, r9.z

; 1 - weight[0] - weight[1]
; (mult by 255 needed 'cause of colour conversion)
add r0.x, V_WEIGHTS.x, V_WEIGHTS.y
sub r6.x, _ONE, r0.x

; transform weighted joint 1 to camera space
dp4 r0.x, V_OFFSET_POS, c[a0.x + PALSTART + 0]
dp4 r0.y, V_OFFSET_POS, c[a0.x + PALSTART + 1]
dp4 r0.z, V_OFFSET_POS, c[a0.x + PALSTART + 2]

; calculate weighting and sum 
#ifdef FOUR_JOINTS
 mad r10, V_WEIGHTS.z, r0, r10
#else
 mad r10, r6.x, r0, r10
#endif

;------------------------------------------------------------------------------
; Joint 4
;------------------------------------------------------------------------------

#ifdef FOUR_JOINTS
; get palette index for joint 4 
mov a0.x, r9.w

; 1 - weight[0] - weight[1] - weight[3]
; (mult by 255 needed 'cause of colour conversion)
sub r6.x, _ONE, V_WEIGHTS.z
sub r6.x, r6.x, V_WEIGHTS.y
sub r6.x, r6.x, V_WEIGHTS.x
max r6.x, r6.x, _ZERO  

; transform weighted joint 1 to camera space
dp4 r0.x, V_OFFSET_POS, c[a0.x + PALSTART + 0]
dp4 r0.y, V_OFFSET_POS, c[a0.x + PALSTART + 1]
dp4 r0.z, V_OFFSET_POS, c[a0.x + PALSTART + 2]

; calculate weighting and sum 
mad r10, r6.x, r0, r10
#endif

;------------------------------------------------------------------------------
; Projection
;------------------------------------------------------------------------------

; Transform to projection space
dp4 oPos.x, r10, c2 
dp4 oPos.y, r10, c3
dp4 oPos.z, r10, c4
dp4 oPos.w, r10, c5

;------------------------------------------------------------------------------
; Fog calculation
;------------------------------------------------------------------------------

mov oFog.x, r10.z

;------------------------------------------------------------------------------
; Lighting calculation
;------------------------------------------------------------------------------

// l dot n : the result for looking up shading
dp3 r3.x,  r11,   -LIGHT0_DIRECTION			//dot product of light0 and normal
dp3 r3.y,  r11,   -LIGHT1_DIRECTION			//dot product of light1 and normal
dp3 r3.z,  r11,   -LIGHT2_DIRECTION			//dot product of light2 and normal
mov r3.w,  _ONE								//initialize r3.w

; clamp negative dot-product value to 0
sge r4, r3, _ZERO
mul r3,	r3, r4

; multply the intensity of light to the dot-product, and sum them
; r3.x hold the final result for looking up shade-map
dp3 r3.x, r3, c94


;------------------------------------------------------------------------------
; Texture coordinates
;------------------------------------------------------------------------------

;set base texture
mov oT0, V_UV0

mul oT1.x, r3.x, _SHADEMAP_SIZE

//vertex color material
mov oD0, SILOUETTE_COLOUR


