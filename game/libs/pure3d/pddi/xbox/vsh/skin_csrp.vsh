;------------------------------------------------------------------------------
; Vertex shader to perform vertex blending
;------------------------------------------------------------------------------
vs.1.1

;------------------------------------------------------------------------------
; Constants specified by the app
;    c0       = (0,1,255,0.5)
;    c2-c5    = projection matrix
;    c6       = material diffuse colour
;    c7       = material specular (power in w)
;    c8       = material emissive (emissove + ambient)
;    c9       = light 0 position
;    c10      = light 0 colour
;    c11      = light 1 position
;    c12      = light 1 
;    c13      = light 2 direction
;    c14      = light 2 
;    c15      = light 2 attenuation
;    c16      = light 3 direction
;    c17      = light 3 
;    c18      = light 3 attenuation
;    c19      = texture projection matrix
;    c23+     = matrix palette
;
; Temporaries used for semi-persistant data
;    r8    = Colour
;    r9    = Post-scale Blend Indices \ Specular
;    r10   = Blended Vertex
;    r11   = Blended Normal
;
;------------------------------------------------------------------------------
//#define FOUR_JOINTS

#include "util.vsh"

#define _ZERO c0.x
#define _ONE c0.y
#define _255 c0.z
#define _HALF c0.w

#define PALSTART 23

#define MATERIAL_DIFFUSE   c6
#define MATERIAL_SPECULAR  c7
#define MATERIAL_EMISSIVE  c8

#define LIGHT0_DIRECTION   c9
#define LIGHT0_COLOUR      c10
#define LIGHT1_DIRECTION   c11
#define LIGHT1_COLOUR      c12
#define LIGHT2_POSITION    c13
#define LIGHT2_COLOUR      c14
#define LIGHT2_ATTENUATION c15
#define LIGHT3_POSITION    c16
#define LIGHT3_COLOUR      c17
#define LIGHT3_ATTENUATION c18

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

;mov oFog.x, r10.z
mov oFog.x, c0.xxxx

;------------------------------------------------------------------------------
; Lighting calculation
;------------------------------------------------------------------------------

; add emissive
mov r8, MATERIAL_EMISSIVE
mov r9, _ZERO

Normalize r11	;??? allready normalized?? see above!

DirLightSpec          r8, r9, MATERIAL_DIFFUSE, MATERIAL_SPECULAR, r11, LIGHT0_DIRECTION, LIGHT0_COLOUR
DirLight              r8, r9, MATERIAL_DIFFUSE, MATERIAL_SPECULAR, r11, LIGHT1_DIRECTION, LIGHT1_COLOUR
PointLightAttenuated  r8, r9, MATERIAL_DIFFUSE, MATERIAL_SPECULAR, r11, r10, LIGHT2_POSITION, LIGHT2_COLOUR, LIGHT2_ATTENUATION
PointLightAttenuated  r8, r9, MATERIAL_DIFFUSE, MATERIAL_SPECULAR, r11, r10, LIGHT2_POSITION, LIGHT3_COLOUR, LIGHT3_ATTENUATION

min oD0, r8, _ONE   ; clamp if > 1
min oD1, r9, _ONE   ; clamp if > 1

;------------------------------------------------------------------------------
; Texture coordinates
;------------------------------------------------------------------------------

; Just copy the texture coordinates
mov oT0, V_UV0	;Just copy the base map
mov oT0.z, V_W.x

mov oT1, V_UV0	;Just copy the specular map. Use the same UV's as the base map
mov oT1.z, V_W.x

;Spherical projection
;Compute CAMERASPACEREFLECTIONVECTOR. Should be macroized.
;Compute E, normalized vector from eye to vertex(probably need this to do nice point lights as well)
mov r1, r10
Normalize r1

; Calculate E - 2*(E dot N)*N
dp3 r2, r1, r11				;E dot N
add r2, r2, r2				;2*(E dot N)
mad r1, r11, -r2, r1		;E - 2*(E dot N)*N
mov r1.w, c0.y

dp4 oT2.x, c0.wxxw, r1		;out.x = n/2 + 0.5
dp4 oT2.y, c0.xwxw, r1		;out.y = n/2 + 0.5

;Projected texture
dp4 r0.x, r10, c17
dp4 r0.y, r10, c18
dp4 r0.z, r10, c19
dp4 r0.w, r10, c20
rcp r1.w, r0.w
mul oT3, r0, r1.wwww
