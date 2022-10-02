;.init_vf vf01,vf14,vf15,vf16
.init_vf_all
.init_vi_all
.name vclClipLoop

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
in_vi VertCount(vi05)
in_vi ReturnAddr(vi15)
in_vi VertLUTnext(vi07)
--endenter

TOP:

    fcset 0
    isw.z  ReturnAddr,VERTEX_QUEUE_LUT(vi00) ; save return addr
    ilw.x VertLUT,VERTEX_QUEUE_LUT+2(vi00)x
    ilw.y VertLUTnext,VERTEX_QUEUE_LUT+2(vi00)y

    CLIPTRIANGLE_LOOP:
--LoopCS 3,3

    lq VertPos,-1+\vertStride(InPtr)
    lq VertST ,\stOff(InPtr)
    lq VertCol,1(OutPtr)

    mulaw  ACC, _CTM3, vf00
    maddaz ACC, _CTM2, VertPos
    madday ACC, _CTM1, VertPos
    maddx XformPos, _CTM0, VertPos

    clipw.xyz XformPos,XformPos

    sq VertST, 0(VertLUT)
    sq VertCol,1(VertLUT)
    sq XformPos,2(VertLUT)

    ilwr.x VertLUT,(VertLUTnext)x
    ilwr.y VertLUTnext,(VertLUTnext)y
    iaddiu InPtr,InPtr,\vertStride
    iaddiu OutPtr,OutPtr,3

    fcand vi01,0x3ffff
    ibeq vi01,vi00,CLIPSKIP

    bal ReturnAddr,CLIPPER

CLIPSKIP:
    iaddi  vi05,vi05,-1
    ibgtz vi05, CLIPTRIANGLE_LOOP

    ilw.z  ReturnAddr,VERTEX_QUEUE_LUT(vi00) ;
;    jr ReturnAddr

CLIPPER:


--cont

--exit
out_vi DontUse(vi02)
out_vi DontUse2(vi03)
out_vi ReturnAddr(vi15)
--endexit

   b TOP


