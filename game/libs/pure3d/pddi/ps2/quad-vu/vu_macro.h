;-----------------------------------------------------------------------------------------
; break point macro
;-----------------------------------------------------------------------------------------
.macro BREAK
   nop nop
   nop[t] nop
   .rept 5
      nop nop
   .endr
.endm

.macro DBREAK
   nop[d] nop
   nop    nop
.endm   

.macro SaveIntVector4 offset, reg, val1, val2, val3, val4
    nop mfir.x vf01, \val1
    nop mfir.y vf01, \val2
    nop mfir.z vf01, \val3
    nop mfir.w vf01, \val4
    nop sq.xyzw vf01, \offset(\reg)
.endm

.macro LoadIntVector4 offset, reg, val1, val2, val3, val4
    nop lq.xyzw vf01, \offset(\reg)
    nop mtir \val1,vf01x
    nop mtir \val2,vf01y
    nop mtir \val3,vf01z
    nop mtir \val4,vf01w
.endm


.macro x_lessthan_w e1, e2, r
   subw.x vf00, \e1, \e2   iaddiu \r, vi00, 0x80 ; sign bit for x 
   nop                     nop
   nop                     nop
   nop                     nop
   nop                     fmeq \r, \r
.endm

.macro x_lessthan_neg_w e1, e2, r
   addx.w vf00, \e1, \e2   iaddiu \r, vi00, 0 ; sign bit for x 
   nop                     nop
   nop                     nop
   nop                     nop
   nop                     fmeq \r, \r
.endm

.macro y_lessthan_w e1, e2, r
   subw.y vf00, \e1, \e2   iaddiu \r, vi00, 0x40 ; sign bit for y 
   nop                     nop
   nop                     nop
   nop                     nop
   nop                     fmeq \r, \r
.endm

.macro y_lessthan_neg_w e1, e2, r
   addy.w vf00, \e1, \e2   iaddiu \r, vi00, 0 ; sign bit for y 
   nop                     nop
   nop                     nop
   nop                     nop
   nop                     fmeq \r, \r
.endm


.macro z_lessthan_w e1, e2, r
   subw.z vf00, \e1, \e2   iaddiu \r, vi00, 0x20 ; sign bit for z
   nop                     nop
   nop                     nop
   nop                     nop
   nop                     fmeq \r, \r
.endm

.macro z_lessthan_neg_w e1, e2, r
   subw.z vf00, \e1, \e2   iaddiu \r, vi00, 0 ; sign bit for z
   nop                     nop
   nop                     nop
   nop                     nop
   nop                     fmeq \r, \r
.endm

.macro test_clip

   ; check clip flag
   nop                              iaddiu vi01, vi00, 1
   nop                              iand   vi01,_CLIPPER,vi01
   nop                              nop

   nop                              ibeq vi01,vi00,test_clip_skip\@      ; clip flag not set
   nop                              nop

   ; check to see if we need to clip
   nop                              ibeq vi03,vi00,test_clip_skip\@      ; no triangles need clipping
   nop                              nop

   ; yeah gotta clip!
   nop                              bal vi15, CLIPBUFFER
   nop                              nop
test_clip_skip\@:
.endm

.macro test_bfc_clip

; apr/23/2002 amb : todo, FIX THIS?!?!?!?!?
#if 0 
   ; see if all verts were clipped away
   nop                              isub vi01,_NVER,vi03
   nop                              nop

   nop                              ibgtz vi01, some_clipped\@
   nop                              nop

   ; all verts outside of view
   ; apr/23/2002 amb : todo, adjust giftag so nloop = 0
   nop                              b test_skip_clip\@
   nop                              nop

some_clipped\@:
   ; see if we need to BFC
#endif

   nop                              iaddi vi01,_CLIPPER,-2
   nop                              nop
            
   nop                              ibltz vi01,test_skip_bfc\@
   nop                              nop

   ; vi05 = vert count
   ; vi04 = vertex buffer
   nop                              iadd vi05,vi00,_NVER
   nop                              iaddiu vi04,_GIFTAG,1
      
   ; go to the backface culler!
   nop                              bal vi15,BACKFACE_CULL
   nop                              nop

test_skip_bfc\@:
   ; check clip flag
   nop                              iaddiu vi01, vi00, 1
   nop                              iand   vi01,_CLIPPER,vi01
   nop                              nop

   nop                              ibeq vi01,vi00,test_skip_clip\@      ; clip flag not set
   nop                              nop

   ; check to see if we need to clip
   nop                              ibeq vi03,vi00,test_skip_clip\@      ; no triangles need clipping
   nop                              nop

   ; yeah gotta clip!
   nop                              bal vi15, CLIPBUFFER
   nop                              nop
test_skip_clip\@:

.endm

;-----------------------------------------------------------------------------------------

.macro test_shadow_bfc_clip

   ; vi05 = vert count
   ; vi04 = vertex buffer
   nop                              iadd vi05,vi00,_NVER
   nop                              iaddiu vi04,_GIFTAG,1
      
   nop                              bal vi15,SHADOW_BACKFACE_CULL
   nop                              nop

   nop                              ibeq vi03,vi00,test_shadow_skip_clip\@      ; no triangles need clipping
   nop                              nop

   ; yeah gotta clip!
   nop                              bal vi15, CLIPBUFFER
   nop                              nop
test_shadow_skip_clip\@:

.endm


;-----------------------------------------------------------------------------------------
; load primgroup
;-----------------------------------------------------------------------------------------
; this macro loads a VU1_Primgroup structure (from ps2context.cpp) that has been
; DMAed into VU1 memory into registers

; warning:  vi06 is used for the output buffer pointer
; some v16 program use this for the clipper.

.macro check_skinning
    nop      xtop vi04
    nop      ilwr.y vi02, (vi04)y             ; Load flags register
    nop      iaddiu vi01, vi00, 1 << 1        ; mask bit for skinning flag
    nop      iand vi02, vi02, vi01            ; mask out everything but skinning flag
    nop      nop
    nop      ibeq vi02, vi00, no_skinning\@   ; branch to no_skinning local label
    nop      iaddiu vi02, vi00, 1023          ; create pointer to skinning info for skinning program, not used if not skinning  
    nop      bal vi15, VU_SKINBLEND           ; jump to skinning code
    nop      ilwr.w vi10, (vi04)w             ; Load scratch area pointer
no_skinning\@:
.endm

.macro load_primgroup
    nop      xtop vi04
    nop      iaddiu vi01, vi00, 1 << 0        ; mask bit for tristrip flag  
    nop      ilwr.x _NVER, (vi04)x            ; load vertex count
    nop      ilwr.y _TRISTRIP, (vi04)y        ; load tristrip flag
    nop      ilwr.z vi06, (vi04)z             ; load offset of output bufer
    nop      iadd vi06, vi06, vi04            ; offset output buffer address by xitop
    nop      iadd vi05, vi00, _NVER           ; store vertex count
    nop      iand _TRISTRIP, _TRISTRIP, vi01  ; mask out everything but tristrip bit
    nop      lq vf01, 1(vi04)                 ; load giftag   
    nop      sq vf01, 0(vi06)                 ; store giftag at start of output buffer
    nop      iadd _GIFTAG, vi00, vi06         ; remember giftag address
    nop      iaddiu vi06, vi06, 1             ; first output vertex address
    nop      iaddiu vi04, vi04, 2             ; first input vertex address
.endm

;-----------------------------------------------------------------------------------------
; load transform context
;-----------------------------------------------------------------------------------------
; this macro loads a VU_Context_Transform structure (from ps2context.cpp) that has been
; DMAed into VU1 memory into registers
;   vi01 : starting pointer of VU_Context_Transform structure
;   vi08 : current pointer into VU_Context_Transform structure
.macro load_transform_context
    nop      iaddiu vi08, vi01, 0           ; store starting pointer of VU_Context_Transform structure
    nop      iaddiu vi02, vi01, 4           ; address of projection matrix
    nop      bal vi15, MultMatrix           ; CTM * projection
    nop      iadd vi03, vi01, vi00          ; address of destination matrix (stomp over CTM)

    nop      lqi _CTM0, (vi08++)            ; load CTM*projection
    nop      lqi _CTM1, (vi08++)
    nop      lqi _CTM2, (vi08++)
    nop      lqi _CTM3, (vi08++)

    nop      iaddiu vi08, vi08, 4           ; skip past projection matrix

    nop      lqi _VPS, (vi08++)             ; viewport scale (xy), z scale (z), fog scale (w)
    nop      lqi _VPO, (vi08++)             ; viewport offset (xy), z offset (z), fog offset (w)

    nop      ilwr.x _CLIPPER, (vi08)x       ; load clipper enabled flag
    nop      iaddiu vi08, vi08, 1
.endm

;-----------------------------------------------------------------------------------------
; load lighting context
;-----------------------------------------------------------------------------------------
; this macro loads a VU_Context_Lighting structure (from ps2context.cpp) that has been
; DMAed into VU1 memory into registers
;   vi01 : starting pointer of VU_Context_Lighting structure
;   vi08 : current pointer into VU_Context_Lighting structure
.macro load_lighting_context
    nop      iaddiu vi08, vi01, 0           ; starting address of VU_Context_Lighting
    nop      lqi _LVX, (vi08++)             ; light direction matrix
    nop      lqi _LVY, (vi08++)
    nop      lqi _LVZ, (vi08++)

    nop      lqi _LRGB0, (vi08++)           ; light colour vectors
    nop      lqi _LRGB1, (vi08++)
    nop      lqi _LRGB2, (vi08++)
    nop      lqi _LRGB3, (vi08++)

    nop      lqi _LADDITIVE, (vi08++)       ; load additive lighting term
    nop      lqi _LSPECULAR, (vi08++)       ; load specular lighting term
    nop      lqi _VIEW, (vi08++)            ; view vector, shininess (w)
.endm
