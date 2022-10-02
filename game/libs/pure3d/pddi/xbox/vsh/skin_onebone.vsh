;------------------------------------------------------------------------------
; Vertex shader to single bone per vertex skin rendering
;------------------------------------------------------------------------------
xvs.1.1

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
; Registers used for temporaries
;    r11   = Eye vertex
;    r11   = Normal
;------------------------------------------------------------------------------

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

mov r10.w, _ONE

;------------------------------------------------------------------------------
; Object -> Camera
;------------------------------------------------------------------------------

; get palette index for joint from v2 (mult by 255 needed 'cause of colour conversion)
mul r0.x, V_INDICES.x, _255
mov a0.x, r0.x

; transform joint to camera space
dp4 r10.x, V_POSITION, c[a0.x + PALSTART + 0]
dp4 r10.y, V_POSITION, c[a0.x + PALSTART + 1]
dp4 r10.z, V_POSITION, c[a0.x + PALSTART + 2]

; Transform normal 
dp3 r11.x, V_NORMAL, c[a0.x + PALSTART + 0]
dp3 r11.y, V_NORMAL, c[a0.x + PALSTART + 1]
dp3 r11.z, V_NORMAL, c[a0.x + PALSTART + 2]
mov r11.w, _ONE
Normalize r11

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




