;------------------------------------------------------------------------------
; Vertex shader for Point Sprites
;------------------------------------------------------------------------------
vs.1.1

;------------------------------------------------------------------------------
; Constants 
;    c0       = (0,1,255,0.5)
;    c2-c5    = projection matrix
;
; Registers used for temporaries
;    r10   = Eye vertex
;    r11   = Normal
;------------------------------------------------------------------------------

#define V_POSITION v0
#define V_COLOUR   v3
#define V_W        v13
#define V_SIZE     v14

#define _ZERO c0.x
#define _ONE c0.y
#define _255 c0.z
#define _SCALE_OFFSET c0.w

;------------------------------------------------------------------------------
; Vertex transform
;------------------------------------------------------------------------------

; Transform to projection space
dp4 oPos.x, V_POSITION, c2 
dp4 oPos.y, V_POSITION, c3
dp4 oPos.z, V_POSITION, c4
dp4 oPos.w, V_POSITION, c5

;------------------------------------------------------------------------------
; Texture coordinates
;------------------------------------------------------------------------------

; Just copy the texture coordinate
;mov oT2.z, V_W

;------------------------------------------------------------------------------
; Color
;------------------------------------------------------------------------------

; Just copy the colour
mov oD0,  V_COLOUR

;------------------------------------------------------------------------------
; Size
;------------------------------------------------------------------------------

; generate dot size based on perspective distance
dp4 r2.x, V_POSITION, c5
rcp r2.x, r2.x

; scale point size by distance
mul r2.y, V_SIZE.x, r2.x
add oPts.x, r2.y, _SCALE_OFFSET





