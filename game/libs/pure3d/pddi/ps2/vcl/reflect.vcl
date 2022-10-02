; oct3/2002 amb
.include "vcl_sml.i"
.init_vf_all
.init_vi_all
.name vclSpheremap

--enter
 in_vf _VIEW(VF25)

 in_vi Input(vi04)
 in_vi Output(vi06)
 in_vi VertCount(vi05)
 in_vi VertClipCount(vi03)
--endenter

SP_TOP_REFL:

    iaddiu VertClipCount,vi00,0        ; initialize clip count

SP_REFL_LOOP: 
--LoopCS	3,0

    lq.xyzw VertST ,0(Output)
    lq.xyzw VertNrm,1(Input)
    lq.xyzw VertPos,2(Input)           ; load vertex, normal, st

    sub.xyz EyeVector,_VIEW,VertPos

    VectorNormalize  Eye,EyeVector
    VectorDotProduct NdotE, VertNrm, Eye
    addx.y NdotE[y],vf00,NdotE[x]            ; NdotE.xyz = Dotproduct(N,E)
    addx.z NdotE[z],vf00,NdotE[x]
    loi 2.0
    muli.xyz NdotE,NdotE,i
    mul.xyz  Refl,VertNrm,NdotE
    sub.xyz  Refl,Eye,Refl             ; Refl = reflection vector

    add.xyz  Refl2,Refl,vf00
    addw.z   Refl2,Refl2,vf00          ; Refl2 = (rx,ry,rz+1)


    VectorDotProduct Refl2,Refl2,Refl2
    rsqrt q,vf00[w],Refl2[x]
 
    mulq.xy NewST,Refl,q
    loi 0.5
    muli.xy NewST,NewST,i
    addi.xy NewST,NewST,i
    mulz.xy NewST,NewST,VertST[z]

    sq.xy NewST,0(Output)

    iaddi VertCount,VertCount,-1
    iaddiu Input,Input,+3
    iaddiu Output,Output,+3
    ibgtz VertCount,SP_REFL_LOOP

--cont

--exit
 out_vi VertClipCount(vi03)             ; make sure vi03 is preserved because test_bfc_clip needs it
--endexit
