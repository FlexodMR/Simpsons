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
;    c9      = light 0 direction
;    c10      = light 0 colour
;    c11      = light 1 direction
;    c12      = light 1 colour
;    c13      = light 2 direction
;    c14      = light 2 colour
;    c15      = light 3 direction
;    c16      = light 3 colour
;    c17+     = matrix palette
;
; Temporaries used for semi-persistant data
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
#define LIGHT3_DIRECTION c15
#define LIGHT3_COLOUR c16

#include "util.vsh"

;------------------------------------------------------------------------------
; Vertex transform
;------------------------------------------------------------------------------
mul r9, V_INDICES, _255  // need to scale indices by 255 to undo colour conversiom
mov r0.w, _ONE

;------------------------------------------------------------------------------
; Joint 1
;------------------------------------------------------------------------------

; get palette index for joint 1 
mov a0.x, r9.x

; transform weighted joint 1 to camera space
dp4 r0.x, V_POSITION, c[a0.x + PALSTART + 0]
dp4 r0.y, V_POSITION, c[a0.x + PALSTART + 1]
dp4 r0.z, V_POSITION, c[a0.x + PALSTART + 2]

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
dp4 r0.x, V_POSITION, c[a0.x + PALSTART + 0]
dp4 r0.y, V_POSITION, c[a0.x + PALSTART + 1]
dp4 r0.z, V_POSITION, c[a0.x + PALSTART + 2]

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
dp4 r0.x, V_POSITION, c[a0.x + PALSTART + 0]
dp4 r0.y, V_POSITION, c[a0.x + PALSTART + 1]
dp4 r0.z, V_POSITION, c[a0.x + PALSTART + 2]

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
dp4 r0.x, V_POSITION, c[a0.x + PALSTART + 0]
dp4 r0.y, V_POSITION, c[a0.x + PALSTART + 1]
dp4 r0.z, V_POSITION, c[a0.x + PALSTART + 2]

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

; add emissive
mov r8, EMISSIVE
mov r9, _ZERO

DirLightSpec          r8, r9, MAT_DIFFUSE, MAT_SPECULAR, r11, LIGHT0_DIRECTION, LIGHT0_COLOUR
DirLight              r8, r9, MAT_DIFFUSE, MAT_SPECULAR, r11, LIGHT1_DIRECTION, LIGHT1_COLOUR
DirLight              r8, r9, MAT_DIFFUSE, MAT_SPECULAR, r11, LIGHT2_DIRECTION, LIGHT2_COLOUR
DirLight              r8, r9, MAT_DIFFUSE, MAT_SPECULAR, r11, LIGHT3_DIRECTION, LIGHT3_COLOUR

min oD0, r8, _ONE   ; clamp if > 1
min oD1, r9, _ONE   ; clamp if > 1

;------------------------------------------------------------------------------
; Texture coordinates
;------------------------------------------------------------------------------

; Just copy the texture coordinates
mov oT0,  V_UV0
mov oT1,  V_UV1
mov oT2,  V_UV2
mov oT3,  V_UV3


