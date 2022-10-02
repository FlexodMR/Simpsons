//Maya ASCII 4.0 scene
//Name: wdr_sway_right.ma
//Last modified: Mon, Aug 12, 2002 01:47:08 PM
requires maya "4.0";
requires "p3dSimpleShader" "18.0";
requires "p3dmayaexp" "18.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "wdr_sway_right";
	setAttr ".ihi" 0;
	setAttr ".du" 30;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "animCurveTL2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "animCurveTL3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 1.0931321889110071;
createNode animCurveTL -n "animCurveTL4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "animCurveTL5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0.50990367929941149;
createNode animCurveTA -n "animCurveTA1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTU -n "animCurveTU1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTU -n "animCurveTU2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTU -n "animCurveTU3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTU -n "animCurveTU4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTU -n "animCurveTU5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTU -n "animCurveTU6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTU -n "animCurveTU7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTU -n "animCurveTU8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "animCurveTL6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "animCurveTL7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "animCurveTL8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "animCurveTL9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.1468862801970878 10 1.1468862801970878 
		22 1.1468862801970878 30 1.1468862801970878;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.2464696855624631 10 1.2464696855624631 
		22 1.2464696855624631 30 1.2464696855624631;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.3883743416871892 10 1.3883743416871892 
		22 1.3883743416871892 30 1.3883743416871892;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -36.819011955683756 10 -36.819011955683756 
		22 -36.819011955683756 30 -36.819011955683756;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 22 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 22 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.4496212507996262 10 1.4496212507996262 
		22 1.4496212507996262 30 1.4496212507996262;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.2279490663618713 10 1.2279490663618713 
		22 1.2279490663618713 30 1.2279490663618713;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.4274355819015074 10 1.4274355819015074 
		22 1.4274355819015074 30 1.4274355819015074;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -24.204848230542304 10 -24.204848230542304 
		22 -24.204848230542304 30 -24.204848230542304;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 22 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 22 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA21";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "animCurveTL15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 22 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 22 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 10 1 22 1 30 1;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 22 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 22 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 10 1 22 1 30 1;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL21";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.3318677670487873 10 1.3318677670487873 
		22 1.3318677670487873 30 1.3318677670487873;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.4718651042148105 10 1.4718651042148105 
		22 1.4718651042148105 30 1.4718651042148105;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL23";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.62126454755213167 10 0.62126454755213167 
		22 0.62126454755213167 30 0.62126454755213167;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA23";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -47.088616656908457 10 -47.111296789890289 
		22 -47.051443783514138 30 -47.088616656908457;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA24";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.0975263990809512 10 1.2663603050553738 
		22 2.9959442674156853 30 -2.0975263990809512;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.53932213336905677 10 3.6641018264066778 
		22 5.2733250180821916 30 0.53932213336905677;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA27";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA28";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA31";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA33";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA35";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA37";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA38";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA39";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA41";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA49";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTL -n "animCurveTL24";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.20626769739024042 1 -0.20461158420174883 
		2 -0.19997703557200225 3 -0.19284166394135127 4 -0.18368456025435023 5 -0.17301616456796809 
		6 -0.16139460992686311 7 -0.14942911011103577 8 -0.13777249996298935 9 -0.12710598049208641 
		10 -0.11811933074921427 11 -0.11045370642461762 12 -0.10339424184967953 13 
		-0.097089777799730548 14 -0.091684143913967384 15 -0.087308602527817816 16 
		-0.084052279013451997 17 -0.08190631152169886 18 -0.080846922184904607 19 
		-0.080868113251945317 20 -0.081989271252802504 21 -0.084259278834547049 22 
		-0.087756677941125932 23 -0.096559330811887209 24 -0.11282626801880469 25 
		-0.13345447232956303 26 -0.15527155405245963 27 -0.17543158946455378 28 -0.1916810214469109 
		29 -0.20239046466453603 30 -0.20626769739024042;
createNode animCurveTL -n "animCurveTL25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.4886122070385342 1 -0.48687258158350921 
		2 -0.48215949799884417 3 -0.47527362314331384 4 -0.46703095118107713 5 -0.45822008834967237 
		6 -0.44956888086481811 7 -0.44172127297439823 8 -0.43522606468603559 9 -0.43053927710200818 
		10 -0.42804132935314576 11 -0.42669275434910203 12 -0.4250688700239586 13 
		-0.42293063089862643 14 -0.4200317416731319 15 -0.41611381520999091 16 -0.41100300659673294 
		17 -0.40491689667985825 18 -0.39817244104898453 19 -0.39109616019938614 20 
		-0.38403314128827193 21 -0.37735381270334645 22 -0.37145907401283251 23 -0.37137500521112332 
		24 -0.38060485662080806 25 -0.39728006073329197 26 -0.41911007223608648 27 
		-0.44309583132153663 28 -0.46551582474502867 29 -0.48214164299634155 30 -0.4886122070385342;
createNode animCurveTL -n "animCurveTL26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.71257877629597177 1 0.71198260647267153 
		2 0.71029715398510529 3 0.70768013130007801 4 0.70429185387826154 5 0.70029379322786556 
		6 0.69584773009355871 7 0.69111518555988338 8 0.68625665183395679 9 0.68143018711954517 
		10 0.6767891222613831 11 0.67244824310776663 12 0.66860669568099962 13 0.66553049558659638 
		14 0.66347918880970458 15 0.66271386878575922 16 0.66342930774051612 17 0.6655274400472182 
		18 0.66884722321986512 19 0.67323385431839311 20 0.67853118110368249 21 0.68457574556080214 
		22 0.69119256647502436 23 0.69748201528766385 24 0.70265290687144133 25 0.70665632540891754 
		26 0.70949193441514979 27 0.71126449676639458 28 0.71218370138514409 29 0.71252516658808096 
		30 0.71257877629597177;
createNode animCurveTA -n "animCurveTA52";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -45.794489268991065 1 -45.860301114373712 
		2 -46.047291832202781 3 -46.341961923476397 4 -46.730963363273808 5 -47.198438542719707 
		6 -47.724323657339731 7 -48.283605892788692 8 -48.846465433457112 9 -49.379194447282906 
		10 -49.845766562956825 11 -50.256381495095269 12 -50.632297995316193 13 -50.9544951432948 
		14 -51.204810363933007 15 -51.365342275668972 16 -51.422397750984885 17 -51.379681850035425 
		18 -51.244182383108182 19 -51.022117567817787 20 -50.719492346169019 21 -50.34255297591428 
		22 -49.898165337451502 23 -49.281113388218735 24 -48.471816645292485 25 -47.627938591773152 
		26 -46.89012023140365 27 -46.343255855996446 28 -46.005064286876568 29 -45.840300453000317 
		30 -45.794489268991065;
createNode animCurveTA -n "animCurveTA53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 69.888741868854027 1 69.841526068102397 
		2 69.707994171731116 3 69.500653890380121 4 69.232006420368535 5 68.91414029216746 
		6 68.558541028163148 7 68.176096000639802 8 67.777230109333644 9 67.372081960779454 
		10 66.970627872644584 11 66.584741458694793 12 66.239485823260864 13 65.964479128997411 
		14 65.789309638852117 15 65.74357558953426 16 65.848580937663527 17 66.092349503275088 
		18 66.454765423572368 19 66.915899821800622 20 67.455943444119015 21 68.05512611795433 
		22 68.693635379475779 23 69.24299731205106 24 69.609238743159608 25 69.82503420880623 
		26 69.926316562413717 27 69.950743556575574 28 69.933468651721938 29 69.904239689087646 
		30 69.888741868854027;
createNode animCurveTA -n "animCurveTA54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 14.70557263514106 1 14.452220230562773 
		2 13.750755139372563 3 12.687280116624816 4 11.347948476840671 5 9.8212845422389865 
		6 8.199573472113002 7 6.5793370714781423 8 5.0609935807315809 9 3.7478512041367278 
		10 2.7446069157936526 11 1.9410838201729623 12 1.1560849459823481 13 0.38664251282363532 
		14 -0.37123287372902924 15 -1.1218663941637674 16 -1.86305926551227 17 -2.5670887805468778 
		18 -3.1985913000271275 19 -3.7212188128816814 20 -4.0982383277778878 21 -4.2930372230507414 
		22 -4.2695550101308397 23 -3.2755537647724307 24 -0.91812069059461232 25 
		2.277077071992168 26 5.7974953244511358 27 9.1804178743279863 28 12.024555924838435 
		29 13.977633549912465 30 14.70557263514106;
createNode animCurveTL -n "animCurveTL27";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.24539528622847229 1 0.24722032337407143 
		2 0.25225134836510849 3 0.25979241227666933 4 0.26913651093722141 5 0.27959613344152784 
		6 0.29052801139903522 7 0.30135105663378625 8 0.31155528256800663 9 0.32069915243068126 
		10 0.3283931645820235 11 0.33493301841803769 12 0.34075016210712933 13 0.34568065491211714 
		14 0.34955852886144273 15 0.35221120305937631 16 0.35349722590249599 17 0.35344354406464162 
		18 0.35213385027340394 19 0.34967016091832648 20 0.34617154526008165 21 0.34176869922433356 
		22 0.33659501751068549 23 0.3295055892783455 24 0.31950564043028012 25 0.30675178781682005 
		26 0.29173639760351366 27 0.27571752395562044 28 0.260796143247087 29 0.24970654027267075 
		30 0.24539528622847229;
createNode animCurveTL -n "animCurveTL28";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.44502060810624655 1 -0.44705265276355954 
		2 -0.45269917764731837 3 -0.4613250063173247 4 -0.47230279543594839 5 -0.48496918507934689 
		6 -0.4985958730721099 7 -0.51237544282773728 8 -0.52542066994259273 9 -0.53677522651441889 
		10 -0.54543338268405184 11 -0.55233720304575995 12 -0.55922080210576897 13 
		-0.5662465564830812 14 -0.57357432254459384 15 -0.58135342751599339 16 -0.5896127268232958 
		17 -0.59795903203669953 18 -0.60589150253372992 19 -0.61291669952337258 20 
		-0.61856119102597262 21 -0.62238151936622832 22 -0.62397116802046737 23 -0.61581426706319176 
		24 -0.59411643454923069 25 -0.56404436796300716 26 -0.53054299444554975 27 
		-0.49813877185201305 28 -0.47081122118190638 29 -0.45202768620417288 30 -0.44502060810624655;
createNode animCurveTL -n "animCurveTL29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.67920043317323675 1 0.67960738285068178 
		2 0.68076005044165722 3 0.68255563197652735 4 0.68489327696029534 5 0.68767636353727557 
		6 0.69081343448220578 7 0.69421790350223744 8 0.69780684492154121 9 0.7014993237617303 
		10 0.70521474570600329 11 0.7088537357833502 12 0.71215421869402395 13 0.71478545687437012 
		14 0.71641327569119628 15 0.71670614230101881 16 0.71543229011169884 17 0.71273282359195089 
		18 0.70884671138175703 19 0.70401409332970244 20 0.69847117561322725 21 0.69244670088070626 
		22 0.68615979832954155 23 0.68109133631563268 24 0.67822164455575473 25 0.67701081156990239 
		26 0.67692749834664268 27 0.67747960671390028 28 0.67825131984460452 29 0.67891601443638405 
		30 0.67920043317323675;
createNode animCurveTA -n "animCurveTA55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -26.769542984158743 1 -26.749159653966373 
		2 -26.692866662759755 3 -26.610696430422898 4 -26.513708222999814 5 -26.411255836902349 
		6 -26.308851529773094 7 -26.206593707797161 8 -26.098187841761195 9 -25.970655377591061 
		10 -25.804895995689851 11 -25.62091745020793 12 -25.46945839867546 13 -25.374141044455627 
		14 -25.358635195312775 15 -25.445783239962108 16 -25.649023306575 17 -25.950087744028789 
		18 -26.323231280568613 19 -26.744374276052493 20 -27.192106007148109 21 -27.648028503405925 
		22 -28.096566895838262 23 -28.311815784459892 24 -28.187816601129587 25 -27.881707373709741 
		26 -27.522805128843071 27 -27.200663648505486 28 -26.962117262196305 29 -26.819039264434348 
		30 -26.769542984158743;
createNode animCurveTA -n "animCurveTA56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -63.847396819970108 1 -63.898991281388938 
		2 -64.045276968817575 3 -64.273865765056641 4 -64.572543868588355 5 -64.928924124131569 
		6 -65.330130620646017 7 -65.762542543022533 8 -66.211643891601085 9 -66.662024871114511 
		10 -67.097564419317266 11 -67.509973299332387 12 -67.882161408246574 13 -68.184475365920406 
		14 -68.387249366842283 15 -68.46077659148861 16 -68.383403857917941 17 -68.165902557775254 
		18 -67.827119549706637 19 -67.385950727374379 20 -66.861428411573499 21 -66.272777422850183 
		22 -65.63943842702183 23 -65.053972928507449 24 -64.593293121837917 25 -64.254652204866446 
		26 -64.030604743177847 27 -63.904914229993373 28 -63.852744455892676 29 -63.843915661731927 
		30 -63.847396819970108;
createNode animCurveTA -n "animCurveTA57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -20.817287075694008 1 -21.027150319987459 
		2 -21.603738089259707 3 -22.464970164586838 4 -23.527737002268584 5 -24.710424565385967 
		6 -25.934957206465715 7 -27.128385789465042 8 -28.223961691806778 9 -29.161557530424393 
		10 -29.887220844830107 11 -30.483126891124648 12 -31.063744514757715 13 -31.627009210192995 
		14 -32.170834814845605 15 -32.694040828318492 16 -33.194197094809518 17 -33.65756056019498 
		18 -34.067144520343874 19 -34.404318329526383 20 -34.647770682280232 21 -34.77313415137273 
		22 -34.753139684185584 23 -34.139459801404989 24 -32.651932304628247 25 -30.524404984556675 
		26 -28.019732080395084 27 -25.439953114770915 28 -23.127676783544679 29 -21.457777753281473 
		30 -20.817287075694008;
createNode animCurveTL -n "animCurveTL30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.2760452972323346 10 2.2760452972323346 
		22 2.2760452972323346 30 2.2760452972323346;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL31";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.8907520938893785 10 3.8907520938893785 
		22 3.8907520938893785 30 3.8907520938893785;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.6188797842204361 10 1.6188797842204361 
		22 1.6188797842204361 30 1.6188797842204361;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 70.626908478600072 10 70.626908478600072 
		22 70.626908478600072 30 70.626908478600072;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 118.13736085477974 10 118.13736085477974 
		22 118.13736085477974 30 118.13736085477974;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 137.25600907246934 10 137.25600907246934 
		22 137.25600907246934 30 137.25600907246934;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL33";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.4012936997283774 10 3.4012936997283774 
		22 3.4012936997283774 30 3.4012936997283774;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.9492335849148859 10 3.9492335849148859 
		22 3.9492335849148859 30 3.9492335849148859;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL35";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.5749480404742857 10 1.5749480404742857 
		22 1.5749480404742857 30 1.5749480404742857;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 95.306131338095284 10 95.306131338095284 
		22 95.306131338095284 30 95.306131338095284;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -118.5838298882701 10 -118.5838298882701 
		22 -118.5838298882701 30 -118.5838298882701;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -146.79957702114922 10 -146.79957702114922 
		22 -146.79957702114922 30 -146.79957702114922;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.22996541113775407 10 0.22996541113775407 
		22 0.22996541113775407 30 0.22996541113775407;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL37";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.71572892866406468 10 -0.71572892866406468 
		22 -0.71572892866406468 30 -0.71572892866406468;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL38";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.86045149817799882 10 -0.86045149817799882 
		22 -0.86045149817799882 30 -0.86045149817799882;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL39";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.017571725225418895 10 -0.017571725225418895 
		22 -0.017571725225418895 30 -0.017571725225418895;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.54560785950824164 10 -0.54560785950824164 
		22 -0.54560785950824164 30 -0.54560785950824164;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL41";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.64724218630287966 10 -0.64724218630287966 
		22 -0.64724218630287966 30 -0.64724218630287966;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 12.253734489678925 10 12.253734489678925 
		22 12.253734489678925 30 12.253734489678925;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -65.746751280844975 10 -65.746751280844975 
		22 -65.746751280844975 30 -65.746751280844975;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 22 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.061808866237340665 10 -0.061808866237340665 
		22 -0.061808866237340665 30 -0.061808866237340665;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -59.058178941076754 10 -59.058178941076754 
		22 -59.058178941076754 30 -59.058178941076754;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 16.57914742975785 10 16.57914742975785 
		22 16.57914742975785 30 16.57914742975785;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.5572674112203657 10 8.5572674112203657 
		22 8.5572674112203657 30 8.5572674112203657;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 15.711328223519061 10 15.711328223519061 
		22 15.711328223519061 30 15.711328223519061;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 22 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 22 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA74";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 22 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA75";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 22 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA76";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 22 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 22 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -4.4857988835365301 10 -4.4857988835365301 
		22 -4.4857988835365301 30 -4.4857988835365301;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 33.296656517080201 10 33.296656517080201 
		22 33.296656517080201 30 33.296656517080201;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 11.822498430160282 10 11.822498430160282 
		22 11.822498430160282 30 11.822498430160282;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 22 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 22 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA83";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 33.321241519753315 10 33.321241519753315 
		22 33.321241519753315 30 33.321241519753315;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA84";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA85";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA86";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 0;
createNode animCurveTA -n "animCurveTA87";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 4.0997018413633617;
createNode animCurveTA -n "animCurveTA88";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 11.088235898323637;
createNode animCurveTA -n "animCurveTA89";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 -3.7232021658234848;
createNode animCurveTA -n "animCurveTA90";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 -15.715763414303195;
createNode animCurveTA -n "animCurveTA91";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 3.6668765941632233;
createNode animCurveTA -n "animCurveTA92";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  7 6.2620030236771775;
createNode animCurveTA -n "animCurveTA93";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 22 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA94";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 22 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA95";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 52.057610833014301 10 52.057610833014301 
		22 52.057610833014301 30 52.057610833014301;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA96";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 22 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA97";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 22 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA98";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 22 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA99";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.3937906322123035 10 2.4307263296393797 
		22 2.4477629483042542 30 2.3937906322123035;
	setAttr -s 4 ".kit[0:3]"  3 1 1 3;
	setAttr -s 4 ".kot[0:3]"  3 1 1 3;
	setAttr -s 4 ".kix[1:3]"  0.9999958872795105 0.99999874830245972 
		1;
	setAttr -s 4 ".kiy[1:3]"  0.0028626294806599617 -0.0015920022269710898 
		0;
	setAttr -s 4 ".kox[1:3]"  0.9999958872795105 0.99999874830245972 
		1;
	setAttr -s 4 ".koy[1:3]"  0.0028626290149986744 -0.0015920022269710898 
		0;
createNode animCurveTA -n "animCurveTA100";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.7843868968348546 10 9.227438881790377 
		22 12.577876135536419 30 -1.7843868968348546;
	setAttr -s 4 ".kit[0:3]"  3 1 1 3;
	setAttr -s 4 ".kot[0:3]"  3 1 1 3;
	setAttr -s 4 ".kix[1:3]"  0.89286357164382935 0.98090708255767822 
		1;
	setAttr -s 4 ".kiy[1:3]"  0.4503273069858551 -0.19447685778141022 
		0;
	setAttr -s 4 ".kox[1:3]"  0.89286357164382935 0.98090708255767822 
		1;
	setAttr -s 4 ".koy[1:3]"  0.45032727718353271 -0.19447685778141022 
		0;
createNode animCurveTA -n "animCurveTA101";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 13.23227595374661 10 13.815210967749168 
		22 13.959887819785315 30 13.23227595374661;
	setAttr -s 4 ".kit[0:3]"  3 1 1 3;
	setAttr -s 4 ".kot[0:3]"  3 1 1 3;
	setAttr -s 4 ".kix[1:3]"  0.99991130828857422 0.99999982118606567 
		1;
	setAttr -s 4 ".kiy[1:3]"  0.013317766599357128 0.00061842403374612331 
		0;
	setAttr -s 4 ".kox[1:3]"  0.99991130828857422 0.99999982118606567 
		1;
	setAttr -s 4 ".koy[1:3]"  0.013317765668034554 0.00061842199647799134 
		0;
createNode animCurveTA -n "animCurveTA102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 22 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 22 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 22 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.71032600031388182 10 18.216685664612541 
		22 4.0373667488234783 30 0.71032600031388182;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.6938159239902002 10 3.6938159239901989 
		22 3.693815923990198 30 3.6938159239902002;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 14.572231982957494 10 14.572231982957538 
		22 14.572231982957561 30 14.572231982957494;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.2796212519697261 10 -2.2796212519697261 
		22 -2.2796212519697261 30 -2.2796212519697261;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.2209313171847884 10 2.2209313171847884 
		22 2.2209313171847884 30 2.2209313171847884;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.0401232256568225 10 8.0401232256568225 
		22 8.0401232256568225 30 8.0401232256568225;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 22 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 22 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 33.429092416277157 10 33.429092416277157 
		22 33.429092416277157 30 33.429092416277157;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.2533422302317216 10 8.2533422302317216 
		22 8.2533422302317216 30 8.2533422302317216;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 23.263402056531085 10 23.263402056531085 
		22 23.263402056531085 30 23.263402056531085;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 20.166277752815617 10 20.166277752815617 
		22 20.166277752815617 30 20.166277752815617;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 22 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0 22 0 30 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 43.699331907638154 10 43.699331907638154 
		22 43.699331907638154 30 43.699331907638154;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA120";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 30 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA121";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 17.25578479238543 30 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA122";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 30 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA123";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 30 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA124";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 21.778938790131544 30 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA125";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 30 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA126";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 30 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA127";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 21.778938790131544 30 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode animCurveTA -n "animCurveTA128";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 10 0 30 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
createNode clipLibrary -n "clipLibrary2";
	setAttr -s 177 ".cel[0].cev";
	setAttr ".cd[0].cm" -type "characterMapping" 177 "Extra_Attributes.translateX" 
		1 1 "Extra_Attributes.translateY" 1 2 "Motion_Root.translateX" 
		1 3 "Motion_Root.translateY" 1 4 "Motion_Root.translateZ" 
		1 5 "Motion_Root.rotateY" 2 1 "Hoop_Root.IK_FK_RFoot" 
		0 1 "Hoop_Root.IK_FK_LFoot" 0 2 "Hoop_Root.IK_Rev_IK_Sim_RFoot" 
		0 3 "Hoop_Root.IK_Rev_IK_Sim_LFoot" 0 4 "Hoop_Root.IK_FK_RArm" 
		0 5 "Hoop_Root.IK_FK_LArm" 0 6 "Hoop_Root.IK_Body_IK_World_RArm" 
		0 7 "Hoop_Root.IK_Body_IK_World_LArm" 0 8 "Hoop_Root.rotateX" 
		2 2 "Hoop_Root.rotateY" 2 3 "Hoop_Root.rotateZ" 2 
		4 "Hoop_Root.translateX" 1 6 "Hoop_Root.translateY" 1 
		7 "Hoop_Root.translateZ" 1 8 "Right_Foot_Hoop.translateX" 
		1 9 "Right_Foot_Hoop.translateY" 1 10 "Right_Foot_Hoop.translateZ" 
		1 11 "Right_Foot_Hoop.rotateX" 2 5 "Right_Foot_Hoop.rotateY" 
		2 6 "Right_Foot_Hoop.rotateZ" 2 7 "Left_Foot_Hoop.translateX" 
		1 12 "Left_Foot_Hoop.translateY" 1 13 "Left_Foot_Hoop.translateZ" 
		1 14 "Left_Foot_Hoop.rotateX" 2 8 "Left_Foot_Hoop.rotateY" 
		2 9 "Left_Foot_Hoop.rotateZ" 2 10 "Right_Ball_Hoop.rotateX" 
		2 11 "Right_Ball_Hoop.rotateY" 2 12 "Right_Ball_Hoop.rotateZ" 
		2 13 "Left_Ball_Hoop.rotateX" 2 14 "Left_Ball_Hoop.rotateY" 
		2 15 "Left_Ball_Hoop.rotateZ" 2 16 "Right_Toe_Hoop.rotateX" 
		2 17 "Right_Toe_Hoop.rotateY" 2 18 "Right_Toe_Hoop.rotateZ" 
		2 19 "Left_Toe_Hoop.rotateX" 2 20 "Left_Toe_Hoop.rotateY" 
		2 21 "Left_Toe_Hoop.rotateZ" 2 22 "Right_Knee_Hoop.translateX" 
		1 15 "Right_Knee_Hoop.translateY" 1 16 "Right_Knee_Hoop.translateZ" 
		1 17 "Left_Knee_Hoop.translateX" 1 18 "Left_Knee_Hoop.translateY" 
		1 19 "Left_Knee_Hoop.translateZ" 1 20 "Character_Hoop.translateX" 
		1 21 "Character_Hoop.translateY" 1 22 "Character_Hoop.translateZ" 
		1 23 "Character_Hoop.rotateX" 2 23 "Character_Hoop.rotateY" 
		2 24 "Character_Hoop.rotateZ" 2 25 "R_Hip_Fk.rotateX" 2 
		26 "R_Hip_Fk.rotateY" 2 27 "R_Hip_Fk.rotateZ" 2 28 "R_Knee_Fk.rotateZ" 
		2 29 "R_Ankle_Fk.rotateX" 2 30 "R_Ankle_Fk.rotateY" 2 
		31 "R_Ankle_Fk.rotateZ" 2 32 "R_Ball_Fk.rotateX" 2 33 "R_Ball_Fk.rotateY" 
		2 34 "R_Ball_Fk.rotateZ" 2 35 "L_Hip_Fk.rotateX" 2 
		36 "L_Hip_Fk.rotateY" 2 37 "L_Hip_Fk.rotateZ" 2 38 "L_Knee_Fk.rotateZ" 
		2 39 "L_Ankle_Fk.rotateX" 2 40 "L_Ankle_Fk.rotateY" 2 
		41 "L_Ankle_Fk.rotateZ" 2 42 "L_Ball_Fk.rotateX" 2 43 "L_Ball_Fk.rotateY" 
		2 44 "L_Ball_Fk.rotateZ" 2 45 "R_Ball_IK_Fk.rotateX" 2 
		46 "R_Ball_IK_Fk.rotateY" 2 47 "R_Ball_IK_Fk.rotateZ" 2 
		48 "L_Ball_IK_Fk.rotateX" 2 49 "L_Ball_IK_Fk.rotateY" 2 
		50 "L_Ball_IK_Fk.rotateZ" 2 51 "Right_Arm_Hoop.translateX" 1 
		24 "Right_Arm_Hoop.translateY" 1 25 "Right_Arm_Hoop.translateZ" 
		1 26 "Right_Arm_Hoop.rotateX" 2 52 "Right_Arm_Hoop.rotateY" 
		2 53 "Right_Arm_Hoop.rotateZ" 2 54 "Left_Arm_Hoop.translateX" 
		1 27 "Left_Arm_Hoop.translateY" 1 28 "Left_Arm_Hoop.translateZ" 
		1 29 "Left_Arm_Hoop.rotateX" 2 55 "Left_Arm_Hoop.rotateY" 
		2 56 "Left_Arm_Hoop.rotateZ" 2 57 "Right_Arm_World.translateX" 
		1 30 "Right_Arm_World.translateY" 1 31 "Right_Arm_World.translateZ" 
		1 32 "Right_Arm_World.rotateX" 2 58 "Right_Arm_World.rotateY" 
		2 59 "Right_Arm_World.rotateZ" 2 60 "Left_Arm_World.translateX" 
		1 33 "Left_Arm_World.translateY" 1 34 "Left_Arm_World.translateZ" 
		1 35 "Left_Arm_World.rotateX" 2 61 "Left_Arm_World.rotateY" 
		2 62 "Left_Arm_World.rotateZ" 2 63 "Left_Elbow_Hoop.translateX" 
		1 36 "Left_Elbow_Hoop.translateY" 1 37 "Left_Elbow_Hoop.translateZ" 
		1 38 "Right_Elbow_Hoop.translateX" 1 39 "Right_Elbow_Hoop.translateY" 
		1 40 "Right_Elbow_Hoop.translateZ" 1 41 "R_FK_Shoulder.rotateX" 
		2 64 "R_FK_Shoulder.rotateY" 2 65 "R_FK_Shoulder.rotateZ" 
		2 66 "L_FK_Shoulder.rotateX" 2 67 "L_FK_Shoulder.rotateY" 
		2 68 "L_FK_Shoulder.rotateZ" 2 69 "R_FK_Elbow.rotateZ" 
		2 70 "L_FK_Elbow.rotateZ" 2 71 "R_FK_Wrist.rotateX" 2 
		72 "R_FK_Wrist.rotateY" 2 73 "R_FK_Wrist.rotateZ" 2 74 "L_FK_Wrist.rotateX" 
		2 75 "L_FK_Wrist.rotateY" 2 76 "L_FK_Wrist.rotateZ" 2 
		77 "Thumb_Base_L.rotateX" 2 78 "Thumb_Base_L.rotateY" 2 
		79 "Thumb_Base_L.rotateZ" 2 80 "Middle_Base_L.rotateX" 2 
		81 "Middle_Base_L.rotateY" 2 82 "Middle_Base_L.rotateZ" 2 
		83 "Pelvis.rotateX" 2 84 "Pelvis.rotateY" 2 85 "Pelvis.rotateZ" 
		2 86 "Thumb_R.rotateX" 2 87 "Thumb_R.rotateY" 2 88 "Thumb_R.rotateZ" 
		2 89 "Thumb_L.rotateX" 2 90 "Thumb_L.rotateY" 2 91 "Thumb_L.rotateZ" 
		2 92 "Middle_R.rotateX" 2 93 "Middle_R.rotateY" 2 
		94 "Middle_R.rotateZ" 2 95 "Jaw.rotateX" 2 96 "Jaw.rotateY" 
		2 97 "Jaw.rotateZ" 2 98 "Spine_2.rotateX" 2 99 "Spine_2.rotateY" 
		2 100 "Spine_2.rotateZ" 2 101 "Neck.rotateX" 2 102 "Neck.rotateY" 
		2 103 "Neck.rotateZ" 2 104 "Head.rotateX" 2 105 "Head.rotateY" 
		2 106 "Head.rotateZ" 2 107 "Spine_1.rotateX" 2 108 "Spine_1.rotateY" 
		2 109 "Spine_1.rotateZ" 2 110 "Middle_Base_R.rotateX" 2 
		111 "Middle_Base_R.rotateY" 2 112 "Middle_Base_R.rotateZ" 2 
		113 "Thumb_Base_R.rotateX" 2 114 "Thumb_Base_R.rotateY" 2 
		115 "Thumb_Base_R.rotateZ" 2 116 "Middle_L.rotateX" 2 117 "Middle_L.rotateY" 
		2 118 "Middle_L.rotateZ" 2 119 "hair_1.rotateX" 2 120 "hair_1.rotateY" 
		2 121 "hair_1.rotateZ" 2 122 "hair_2.rotateX" 2 123 "hair_2.rotateY" 
		2 124 "hair_2.rotateZ" 2 125 "hair_3.rotateX" 2 126 "hair_3.rotateY" 
		2 127 "hair_3.rotateZ" 2 128  ;
	setAttr ".cd[0].cim" -type "Int32Array" 177 0 1 2 3
		 4 5 6 7 8 9 10 11 12 13 14
		 15 16 17 18 19 20 21 22 23 24 25
		 26 27 28 29 30 31 32 33 34 35 36
		 37 38 39 40 41 42 43 44 45 46 47
		 48 49 50 51 52 53 54 55 56 57 58
		 59 60 61 62 63 64 65 66 67 68 69
		 70 71 72 73 74 75 76 77 78 79 80
		 81 82 83 84 85 86 87 88 89 90 91
		 92 93 94 95 96 97 98 99 100 101 102
		 103 104 105 106 107 108 109 110 111 112 113
		 114 115 116 117 118 119 120 121 122 123 124
		 125 126 127 128 129 130 131 132 133 134 135
		 136 137 138 139 140 141 142 143 144 145 146
		 147 148 149 150 151 152 153 154 155 156 157
		 158 159 160 161 162 163 164 165 166 167 168
		 169 170 171 172 173 174 175 176 ;
createNode lightLinker -n "lightLinker1";
	setAttr ".ihi" 0;
	setAttr -s 21 ".lnk";
select -ne :time1;
	setAttr ".o" 0;
select -ne :renderPartition;
	setAttr -s 21 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 21 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr -k on ".nds";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".outf" 23;
	setAttr ".an" yes;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
select -ne :characterPartition;
select -ne :hyperGraphLayout;
	setAttr ".cch" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".img" -type "string" "";
	setAttr ".ims" 1;
select -ne :ikSystem;
	setAttr -s 3 ".sol";
connectAttr "wdr_sway_right.st" "clipLibrary2.st[0]";
connectAttr "wdr_sway_right.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL1.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL2.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL3.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL4.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL5.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA1.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU1.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU2.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU3.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU4.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU5.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU6.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU7.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU8.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA2.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA3.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA4.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL6.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL7.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL8.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL9.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL10.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL11.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA5.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA6.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA7.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL12.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL13.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL14.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA8.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA9.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA10.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA11.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA12.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA13.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA14.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA15.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA16.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTA17.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTA18.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTA19.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTA20.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTA21.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTA22.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL15.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL16.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL17.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTL18.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTL19.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTL20.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTL21.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTL22.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTL23.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA23.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA24.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA25.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA26.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA27.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA28.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA29.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA30.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA31.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA32.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA33.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA34.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA35.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA36.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA37.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA38.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA39.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA40.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA41.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA42.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA43.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA44.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA45.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTA46.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTA47.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTA48.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA49.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA50.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA51.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL24.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL25.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL26.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA52.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA53.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA54.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL27.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL28.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL29.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA55.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA56.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA57.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL30.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL31.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL32.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA58.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA59.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA60.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL33.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL34.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL35.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTA61.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTA62.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTA63.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTL36.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTL37.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTL38.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTL39.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTL40.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTL41.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA64.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA65.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA66.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA67.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA68.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA69.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA70.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA71.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA72.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA73.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA74.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA75.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA76.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA77.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA78.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA79.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA80.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA81.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA82.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA83.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA84.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA85.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA86.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA87.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA88.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA89.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA90.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA91.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA92.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA93.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA94.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA95.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA96.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA97.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA98.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA99.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA100.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA101.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA102.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA103.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA104.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA105.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA106.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA107.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA108.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA109.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA110.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA111.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA112.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA113.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr "animCurveTA114.a" "clipLibrary2.cel[0].cev[162].cevr";
connectAttr "animCurveTA115.a" "clipLibrary2.cel[0].cev[163].cevr";
connectAttr "animCurveTA116.a" "clipLibrary2.cel[0].cev[164].cevr";
connectAttr "animCurveTA117.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "animCurveTA118.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "animCurveTA119.a" "clipLibrary2.cel[0].cev[167].cevr";
connectAttr "animCurveTA120.a" "clipLibrary2.cel[0].cev[168].cevr";
connectAttr "animCurveTA121.a" "clipLibrary2.cel[0].cev[169].cevr";
connectAttr "animCurveTA122.a" "clipLibrary2.cel[0].cev[170].cevr";
connectAttr "animCurveTA123.a" "clipLibrary2.cel[0].cev[171].cevr";
connectAttr "animCurveTA124.a" "clipLibrary2.cel[0].cev[172].cevr";
connectAttr "animCurveTA125.a" "clipLibrary2.cel[0].cev[173].cevr";
connectAttr "animCurveTA126.a" "clipLibrary2.cel[0].cev[174].cevr";
connectAttr "animCurveTA127.a" "clipLibrary2.cel[0].cev[175].cevr";
connectAttr "animCurveTA128.a" "clipLibrary2.cel[0].cev[176].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[8].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[13].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[21].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[22].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[23].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[24].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[25].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[26].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[27].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[28].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[29].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[30].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[31].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[32].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[33].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[34].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[35].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[36].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[37].llnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of wdr_sway_right.ma
