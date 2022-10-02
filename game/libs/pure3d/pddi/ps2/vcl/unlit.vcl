.init_vf_all
.init_vi_all
.name vclUnlit

--enter
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
 in_vi ReturnAddr(vi15)
--endenter

TOP_UNLIT:

    fcset 0                            ; reset clip flags
    iaddiu VertClipCount,vi00,0        ; initialize clip count 

UNLIT_LOOP: 
--LoopCS	3,0

    lq.xyz VertPos,2(Input)           ; load vertex, normal, st
    lq.xyzw VertCol,1(Input)          ; load & store colour
    sq.xyzw VertCol,1(Output)
    lq.xyz VertST ,0(Input)

    mul  ACC, _CTM3, vf00[w]           ; transform vertex
    madd ACC, _CTM2, VertPos[z]
    madd ACC, _CTM1, VertPos[y]
    madd OutVert, _CTM0, VertPos[x]
    clipw.xyz OutVert,OutVert[w]          ; clip test vertex
    div   q ,vf00[w],OutVert[w]        ; begin perspective divide

    fcand vi01,0x3ffff
    iadd VertClipCount,VertClipCount,vi01
    iaddiu AdcBit,vi01,0x7fff
    mfir.w  OutVert[w], AdcBit

    mul.xyz  OutVert, OutVert,_VPS     ; convert eye space to screen space
    mulq.xyz OutVert, OutVert,q
    mulq.xyz VertST , VertST ,q
    add.xyz  OutVert, OutVert,_VPO

    ftoi4.xyz OutVert,OutVert          ; convert vertex to 12.4
    sq OutVert,2(Output)           ; store vertex, colour, st
    sq.xyz VertST,0(Output)
    iaddiu Output,Output,3             ; increment pointers, decrement counter
    iaddi VertCount,VertCount,-1
    iaddiu Input,Input,3
    ibgtz VertCount,UNLIT_LOOP           ; and loop


--cont

--exit
 out_vi ReturnAddr(vi15)
 out_vi VertClipCount(vi03)             ; make sure vi03 is preserved because test_bfc_clip needs it
--endexit
