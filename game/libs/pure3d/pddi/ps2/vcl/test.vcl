.init_vf_all
.init_vi_all
.name vclMultiTex

--enter
in_vf _CTM0(vf26)
in_vf _CTM1(vf27)
in_vf _CTM2(VF28)
in_vf _CTM3(VF29)
in_vf _VPS(VF30)
in_vf _VPO(VF31)

in_vi Input(vi04)
in_vi Output(vi06)
in_vi VertCount(vi05)
in_vi VertClipCount(vi03)
--endenter

TOP:

   fcset 0
   iaddiu VertClipCount,vi00,0

_UNLIT_TRI_NC_LOOP_MT:
--LoopCS	3,3

   lq.xyzw VertPos,3(Input)
   lq.xyzw VertCol,2(Input)
   lq.xyzw VertST ,0(Input)

   mulaw  ACC, _CTM3, vf00
   maddaz ACC, _CTM2, VertPos
   madday ACC, _CTM1, VertPos
   maddx  OutVert, _CTM0, VertPos

   clipw.xyz OutVert,OutVert
   div q,vf00w,OutVertw
   fcand vi01,0x3ffff
   iadd VertClipCount,VertClipCount,vi01
   iaddiu vi01,vi01,0x7fff
   mul.xyz OutVert,OutVert,_VPS
   mulq.xyz OutVert, OutVert,q
   mulq.xyz VertST,VertST,q
   add.xyz  OutVert,OutVert,_VPO
   mfir.w OutVertw,vi01
   ftoi4.xyz OutVert,OutVert
   sq OutVert,2(Output)
   sq VertCol,1(Output)
   sq VertST,0(Output)
   iaddiu Output,Output,3
   iaddi VertCount,VertCount,-1
   iaddiu Input,Input,4
   ibgtz VertCount,_UNLIT_TRI_NC_LOOP_MT

--cont

--exit
out_vi VertClipCount(vi03)
--endexit

   b TOP

