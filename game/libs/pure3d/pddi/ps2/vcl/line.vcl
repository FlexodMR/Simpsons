;.init_vf vf01,vf14,vf15,vf16
.init_vf_all
.init_vi_all
.name vclLine

--enter
in_vf _CTM0(vf26)
in_vf _CTM1(vf27)
in_vf _CTM2(VF28)
in_vf _CTM3(VF29)
in_vf _VPS(VF30)
in_vf _VPO(VF31)

in_vi DontUse(vi02)
in_vi DontUse2(vi03)
in_vi InPtr(vi04)
in_vi OutPtr(vi06)
in_vi ReturnAddr(vi15)
in_vi VertCount(vi05)
--endenter

LINE_START:

   fcset 0

LINE_LOOP:
--LoopCS 3,3
   lq VertPos,2(InPtr)
   lq VertST,0(InPtr)
   lq VertCol,1(InPtr)

   mulaw  ACC, _CTM3, vf00
   maddaz ACC, _CTM2, VertPos
   madday ACC, _CTM1, VertPos
   maddx XformPos, _CTM0, VertPos

   clipw.xyz XformPos,XformPos
   div q,vf00w,XformPosw
   iaddi VertCount,VertCount,-1
   fcand vi01,0xfff
   iaddiu vi01,vi01,0x7fff
   mul.xyz XformPos,XformPos,_VPS
   mulq.xyz XformPos,XformPos,q
   mfir.w XformPosw,vi01
   add.xyz XformPos,XformPos,_VPO
   ftoi4.xyz XformPos,XformPos
   sq VertCol,1(OutPtr)
   sq VertST,0(OutPtr)
   sq XformPos,2(OutPtr)
   iaddiu OutPtr,OutPtr,3
   iaddiu InPtr,InPtr,3

   ibgtz VertCount,LINE_LOOP
--cont

--exit
out_vi DontUse(vi02)
out_vi DontUse2(vi03)
out_vi ReturnAddr(vi15)
--endexit

   b LINE_START



