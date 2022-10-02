.init_vf_all
.init_vi_all
.name vclFogLoop

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

;_FOGSCALE    VF30w, _VPSw
;_FOGOFFSET   VF31w, _VPOw


    loi 255.0

    FOG_LOOP:
--LoopCS 3,0

    lq Vertex, 2(OutPtr)
    mulw.w Vertex,Vertex,_VPS[w]
    addw.w Vertex,Vertex,_VPO[w]
    minii.w Vertex,Vertex, i
    maxx.w Vertex, Vertex, vf00
    ftoi4.w Vertex,Vertex
    mtir FogCol,Vertex[w]
    isw.w FogCol, 1(OutPtr)w
    iaddi  VertCount,VertCount,-1
    iaddiu OutPtr,OutPtr,3
    ibgtz VertCount,FOG_LOOP

--cont

--exit
out_vi DontUse(vi02)
out_vi DontUse2(vi03)
out_vi ReturnAddr(vi15)
--endexit

