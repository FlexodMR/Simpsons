; nov20/2002 amb
.include "vcl_sml.i"
.init_vf_all
.init_vi_all
.name vclSpheremap2

--enter
 in_vf MTX0(vf06)
 in_vf MTX1(vf07)
 in_vf MTX2(vf08)
 in_vf MTX3(vf09)
 in_vf _VIEW(vf25)

 in_vi Input(vi04)
 in_vi Output(vi06)
 in_vi VertCount(vi05)
 in_vi VertClipCount(vi03)

--endenter

SP_TOP_REFL:

    iaddiu VertClipCount,vi00,0        ; initialize clip count

SP_REFL_LOOP: 
--LoopCS	3,3

    lq.xyz  OldST ,0(Output)
    lq.xyz  VertNrm,1(Input)
    lq.xyz  VertPos,2(Input)           ; load vertex, normal, st

    sub.xyz VertPos,_VIEW,VertPos

    VectorNormalizeXYZ EyeVector, VertPos
    VectorDotProduct NdotE, EyeVector, VertNrm

    loi 2.0
    muli.x NdotE,NdotE,i           ; 2*NdotE
    mulx.xyz VertNrm, VertNrm, NdotE[x]  ; VertNrm = 2(N dot E)
    sub.xyz  ReflectVector, EyeVector, VertNrm

    mulax  ACC, MTX0, ReflectVector
    madday ACC, MTX1, ReflectVector
    maddz  ReflectVector, MTX2, ReflectVector

    ; ReflectVector = normalize(E - 2*(N dot E))

    loi 1.0
    add.xyz ReflectVector2, vf00, ReflectVector
    addi.z  ReflectVector2, ReflectVector2,i
    VectorNormalizeXYZ ReflectCoef, ReflectVector2

    loi 0.5
    mulq.xy  OutST, ReflectVector, q
    muli.xy  OutST, OutST, i
    addi.xy  OutST, OutST, i
    mulz.xy  OutST, OutST, OldST   ; perspective correct

    sq.xy OutST,0(Output)

    iaddi VertCount,VertCount,-1
    iaddiu Input,Input,+3
    iaddiu Output,Output,+3
    ibgtz VertCount,SP_REFL_LOOP

--cont

--exit
 out_vi VertClipCount(vi03)             ; make sure vi03 is preserved because test_bfc_clip needs it
--endexit
