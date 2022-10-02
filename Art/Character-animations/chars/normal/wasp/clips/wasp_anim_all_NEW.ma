//Maya ASCII 4.0 scene
//Name: wasp_anim_all_NEW.ma
//Last modified: Wed, Mar 05, 2003 03:03:00 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "clip1Source2";
	setAttr ".ihi" 0;
	setAttr ".du" 300;
	setAttr ".ci" no;
createNode animCurveTA -n "animCurveTA520";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 239.995 0 240 0 245 0 255 0 
		265 0 285 0 292 0 300 0;
createNode animCurveTA -n "animCurveTA521";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 239.995 0 240 0 245 0 255 0 
		265 0 285 0 292 0 300 0;
createNode animCurveTA -n "animCurveTA522";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 239.995 0 240 0 245 10.479027132790534 
		255 -9.3553292578451632 265 2.4134602417399482 285 2.0513481619270935 292 
		-12.029404670837355 300 0;
createNode animCurveTA -n "animCurveTA523";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 239.995 0 240 0 245 0 250 0 
		255 0 259 0 286 0 290 0.16357480076690634 300 0;
createNode animCurveTA -n "animCurveTA524";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 27.928496915240618 10 -20.259483238386213 
		20 -27.748849736918814 30 22.022222857270869 40 27.928496915240618 50 -20.259483238386213 
		60 -27.748849736918814 70 22.022222857270869 80 27.928496915240618 90 -20.259483238386213 
		100 -27.748849736918814 110 22.022222857270869 120 27.928496915240618 130 
		-20.259483238386213 140 -27.748849736918814 150 22.022222857270869 160 27.928496915240618 
		170 -20.259483238386213 180 -27.748849736918814 190 22.022222857270869 200 
		27.928496915240618 210 -20.259483238386213 220 -27.748849736918814 230 22.022222857270869 
		239.995 27.928496915240618 240 27.928496915240618 245 0 250 0 255 0 259 0 
		286 0 290 -1.0045311897991396 300 27.928496915240618;
createNode animCurveTA -n "animCurveTA525";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 239.995 0 240 0 245 13.90105676921168 
		250 28.342264020733978 255 -64.544650492221308 259 -75.267311307628106 286 
		-78.604472488758702 290 -58.492883019264987 300 0;
createNode animCurveTA -n "animCurveTA526";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 57 ".ktv[0:56]"  0 0 5 0 10 0 15 0 20 0 25 0 30 
		0 35 0 40 0 45 0 50 0 55 0 60 0 65 0 70 0 75 0 80 0 85 0 90 0 95 0 100 0 
		105 0 110 0 115 0 120 0 125 0 130 0 135 0 140 0 145 0 150 0 155 0 160 0 165 
		0 170 0 175 0 180 0 185 0 190 0 195 0 200 0 205 0 210 0 215 0 220 0 225 0 
		230 0 235 0 239.995 0 240 0 245 0 250 0 255 0 259 0 287 0 293 -0.61495301204139274 
		300 0;
createNode animCurveTA -n "animCurveTA527";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 100 ".ktv[0:99]"  0 0 5 0 10 0 15 0 20 0 25 0 30 
		0 35 0 40 0 45 0 50 0 55 0 60 0 65 0 70 0 75 0 80 0 85 -1.2057291131373193 
		89 0.782518199232066 93 -0.85054214757045687 98 1.7712202049028454 102 -2.1997915265400021 
		105 1.7724806453490058 108 -1.9212549634633516 110 2.9106567091202473 113 
		-2.136536218508033 115 3.3411067037841269 116 -2.5608469212054468 118 4.228164001610021 
		120 -3.4752818739305464 122 5.5226177341440126 123.995 -4.8711176943374328 
		125.995 6.9463063295433125 128 -5.2623724453844485 130 7.9698047741104237 
		132 -7.4276655099302182 134 9.5966186591060065 136 -8.255048704039547 138 
		9.8775417782063499 140 -8.1201016763502274 142 9.6315662252346907 144 -8.6739936710908996 
		146 9.5781924337857518 148 -8.5565563438784924 150 9.7049912222566306 151 
		-8.8168615128560575 153 9.6984187602464687 154 -8.2552366758632747 156 9.366463175993303 
		157 -9.0631743518413526 159 9.8317666604602127 160 -9.8906600000000005 162 
		9.4176683120232703 164 -10.390013435311952 166 9.4176684455860062 168 -9.973885336758018 
		170 9.167992 172 -9.973885 174 8.751864 176 -9.224855 178 8.6686390000000006 
		180 -10.140336217655975 182 8.252511 184 -9.557758 186 7.420255 188 -9.973885 
		190 7.420255 192 -9.474532 194 7.8363830000000005 196 -9.058404 198 7.586707 
		200 -9.3080805544139942 202 7.753158 204 -9.308081108827988 206 6.920902 
		208 -9.474532 210 6.920902 212 -9.058404 214 6.8376770000000002 216 -8.7255020000000005 
		218 6.588 220 -9.308081 222 6.9209024455860053 224 -8.9751790000000025 226 
		6.671225 228 -8.9751784455860051 230 6.2550980000000003 232 -8.3926 234 6.421549 
		236 -9.224855 238 5.339617 239.995 -9.8906600000000005 240 -9.8906600000000022 
		245 0 250 0 255 0 259 0 287 0 293 0.9109042462925192 300 -9.8906600000000022;
createNode animCurveTA -n "animCurveTA528";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 57 ".ktv[0:56]"  0 0 5 21.690242375383669 10 28.673509909362057 
		15 12.127377808311618 20 0 25 21.690242375383669 30 28.673509909362057 35 
		12.127377808311618 40 0 45 21.690242375383669 50 28.673509909362057 55 12.127377808311618 
		60 0 65 21.690242375383669 70 28.673509909362057 75 12.127377808311618 80 
		0 85 21.690242375383669 90 28.673509909362057 95 12.127377808311618 100 0 
		105 21.690242375383669 110 28.673509909362057 115 12.127377808311618 120 
		0 125 21.690242375383669 130 28.673509909362057 135 12.127377808311618 140 
		0 145 21.690242375383669 150 28.673509909362057 155 12.127377808311618 160 
		0 165 21.690242375383669 170 28.673509909362057 175 12.127377808311618 180 
		0 185 21.690242375383669 190 28.673509909362057 195 12.127377808311618 200 
		0 205 21.690242375383669 210 28.673509909362057 215 12.127377808311618 220 
		0 225 21.690242375383669 230 28.673509909362057 235 12.127377808311618 239.995 
		0 240 0 245 -21.646647099429167 250 41.555020612022609 255 62.847779633481117 
		259 -10.474771440276591 287 -6.6488253257952987 293 34.55721321385311 300 
		0;
createNode animCurveTA -n "animCurveTA529";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 240 0 250 0 255 0 265 0 286 
		0 300 0;
createNode animCurveTA -n "animCurveTA530";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 240 0 250 0 255 0 265 0 286 
		0 300 0;
createNode animCurveTA -n "animCurveTA531";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 240 0 250 0 255 0 265 0 286 
		0 300 0;
createNode animCurveTL -n "animCurveTL4";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 9.4346572793527347e-035 240 9.8120435705268569e-036 
		250 9.0852255282656091e-036 255 9.0852255282656091e-036 265 7.938667574081198e-036 
		286 7.938667574081198e-036 300 0;
createNode animCurveTL -n "animCurveTL5";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 -0.16549807245685835 240 -0.16549807245685835 
		250 0.12876499134883351 255 0.25590003991835153 257 0.29758539310343124 259 
		0.26293473793104588 261 0.27592873793104561 263 0.27159738344826778 265 0.30372093903714786 
		267 0.27809411172415038 269 0.29758539310343129 271 0.27592847586209185 273 
		0.31274389793101287 275 0.27376335448277789 277 0.3149102813792809 279 0.28242573793104586 
		281 0.31274389793101282 283 0.2802601117241505 285 0.30624739310343124 287 
		0.28242560689656893 289 0.30408214068964029 291 0.30372093903714786 300 -0.16549807245685835;
createNode animCurveTL -n "animCurveTL6";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.18579147373758764 240 -0.18579147373758764 
		250 -0.18579147373758764 255 -0.18579147373758764 265 -0.18579147373758764 
		286 -0.18579147373758764 300 -0.18579147373758764;
createNode animCurveTL -n "Stinger_translateZ";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  255 0 259 -0.03486708874330003 
		283 -0.03486708874330003 293 0;
createNode animCurveTL -n "Stinger_translateY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  255 0 259 -0.34867088743300623 
		283 -0.34867088743300623 293 0;
createNode animCurveTL -n "Stinger_translateX";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  255 0 259 0 283 0 293 0;
createNode clipLibrary -n "clipLibrary2";
	setAttr -s 18 ".cel[0].cev";
	setAttr ".cd[0].cm" -type "characterMapping" 18 "head.rotateZ" 2 
		1 "head.rotateY" 2 2 "head.rotateX" 2 3 "Body.rotateZ" 
		2 4 "Body.rotateY" 2 5 "Body.rotateX" 2 6 "Pelvis.rotateZ" 
		2 7 "Pelvis.rotateY" 2 8 "Pelvis.rotateX" 2 9 "Root.rotateZ" 
		2 10 "Root.rotateY" 2 11 "Root.rotateX" 2 12 "Root.translateZ" 
		1 1 "Root.translateY" 1 2 "Root.translateX" 1 3 "Stinger.translateZ" 
		1 4 "Stinger.translateY" 1 5 "Stinger.translateX" 1 
		6  ;
	setAttr ".cd[0].cim" -type "Int32Array" 18 0 1 2 3
		 4 5 6 7 8 9 10 11 12 13 14
		 15 16 17 ;
createNode lightLinker -n "lightLinker1";
select -ne :time1;
	setAttr ".o" 0;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :lambert1;
	setAttr ".c" -type "float3" 0.93387997 0.93387997 0.93387997 ;
select -ne :initialShadingGroup;
	setAttr -k on ".nds";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :characterPartition;
select -ne :hyperGraphLayout;
	setAttr ".cch" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".img" -type "string" "";
	setAttr ".ims" 1;
connectAttr "clip1Source2.st" "clipLibrary2.st[0]";
connectAttr "clip1Source2.du" "clipLibrary2.du[0]";
connectAttr "animCurveTA520.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTA521.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTA522.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTA523.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTA524.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA525.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTA526.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTA527.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTA528.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTA529.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTA530.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTA531.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTL4.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTL5.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTL6.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "Stinger_translateZ.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "Stinger_translateY.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "Stinger_translateX.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[3].olnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of wasp_anim_all_NEW.ma
