.init_vf_all
.init_vi_all
.name vclLit

--enter
in_vf _LADDITIVE(VF16)
in_vf _LSPECULAR(VF17)

in_vf _LVX(VF18)
in_vf _LVY(VF19)
in_vf _LVZ(VF20)

in_vf _LRGB0(VF21)
in_vf _LRGB1(VF22)
in_vf _LRGB2(VF23)
in_vf _LRGB3(VF24)
in_vf _VIEW(VF25)
in_vf _LSHININESS(VF25) ; _SHININESS VF25w

in_vf _CTM0(VF26)
in_vf _CTM1(VF27)
in_vf _CTM2(VF28)
in_vf _CTM3(VF29)

in_vf _VPS(VF30)
in_vf _VPO(VF31)

in_vi Input(vi04)
in_vi Output(vi06)
in_vi VertCount(vi05)
in_vi VertClipCount(vi03)
--endenter

TOP_LIT:

    fcset 0                            ; reset clip flags
    iaddiu VertClipCount,vi00,0        ; initialize clip count
    loi 255.0                          ; light clamping value

LIT_LOOP: 
--LoopCS	3,0

    lq.xyzw VertPos,2(Input)           ; load vertex, normal, st
    lq.xyzw VertNrm,1(Input)
    lq.xyzw VertST ,0(Input)

    mul  ACC, _CTM3, vf00[w]           ; transform vertex
    madd ACC, _CTM2, VertPos[z]
    madd ACC, _CTM1, VertPos[y]
    madd OutVert, _CTM0, VertPos[x]
    clipw.xyz OutVert,OutVert          ; clip test vertex
    div   q ,vf00[w],OutVert[w]        ; begin perspective divide

    fcand vi01,0x3ffff
    iadd VertClipCount,VertClipCount,vi01
    iaddiu AdcBit,vi01,0x7fff
    isw.w AdcBit,2(Output)             ; store ADC bit into output vertex

    mul   ACC,   _LVX, VertNrm[x]      ; computer L dot N for all 4 lights
    madd  ACC,   _LVY, VertNrm[y]
    madd  LdotN, _LVZ, VertNrm[z]
    max   LdotN, LdotN, vf00[x]        ; clamp dot products to 0

    mul    ACC, _LADDITIVE, vf00[w]    ; load ambient into accumulator
    maddax ACC, _LRGB0, LdotN          ; DiffuseColour * (L dot N)
    madday ACC, _LRGB1, LdotN          ; for all 4 lights
    maddaz ACC, _LRGB2,  LdotN
    maddw  VertCol,_LRGB3, LdotN
    minii.xyzw VertCol, VertCol, i     ; clamp to 255.0
    ftoi0.xyzw VertCol, VertCol        ; convert to colour int

    mul.xyz OutVert,OutVert,_VPS       ; convert eye space to screen space
    mulq.xyz OutVert, OutVert,q
    mulq.xyz VertST,VertST,q
    add.xyz  OutVert,OutVert,_VPO

    ftoi4.xyz OutVert,OutVert          ; convert vertex to 12.4
    sq.xyz OutVert,2(Output)           ; store vertex, colour, st
    sq.xyzw VertCol,1(Output)
    sq.xyzw VertST,0(Output)
    iaddiu Output,Output,3             ; increment pointers, decrement counter
    iaddi VertCount,VertCount,-1
    iaddiu Input,Input,3
    ibgtz VertCount,LIT_LOOP           ; and loop

--cont

--exit
out_vi VertClipCount(vi03)             ; make sure vi03 is preserved because test_bfc_clip needs it
--endexit
#if 0
.vsm
    test_bfc_clip

    nop                              xgkick _GIFTAG                   ; kick prims and go to sleep
    nop                              nop

    nop[e]                           nop
    nop                              nop

    nop                              b TOP_LIT
    nop                              nop

.endvsm
#endif
