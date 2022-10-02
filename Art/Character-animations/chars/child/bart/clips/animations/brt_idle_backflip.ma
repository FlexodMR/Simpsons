//Maya ASCII 4.0 scene
//Name: brt_idle_backflip.ma
//Last modified: Tue, May 27, 2003 01:47:00 PM
requires maya "4.0";
requires "p3dDeformer" "2.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_idle_backflipSource";
	setAttr ".ihi" 0;
	setAttr ".du" 46;
	setAttr ".ci" no;
createNode animCurveTL -n "brt_Extra_Attributes_translateX1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "brt_Extra_Attributes_translateY1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "brt_Motion_Root_translateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.033880036066693167;
createNode animCurveTL -n "brt_Motion_Root_translateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "brt_Motion_Root_translateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Motion_Root_rotateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_FK_RFoot1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_FK_LFoot1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_Rev_IK_Sim_RFoot1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_Rev_IK_Sim_LFoot1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_FK_RArm1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_FK_LArm1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_Body_IK_World_RArm1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "brt_Hoop_Root_IK_Body_IK_World_LArm1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "brt_Hoop_Root_rotateX1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Hoop_Root_rotateY1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Hoop_Root_rotateZ1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "brt_Hoop_Root_translateX1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "brt_Hoop_Root_translateY1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "brt_Hoop_Root_translateZ1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "brt_Right_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.26454016861507795 8 -0.26454016861507795 
		12 -0.26454016861507795 15 -0.24426300478298507 18 -0.26922974230094548 21 
		-0.3885499584571353 26 -0.26806095877331165 30 -0.31288423412480132 33 -0.26454016861507795 
		35 -0.26454016861507795 46 -0.26454016861507795;
	setAttr -s 11 ".kit[0:10]"  3 9 3 9 9 9 9 
		9 9 3 3;
	setAttr -s 11 ".kot[0:10]"  3 9 3 9 9 9 9 
		9 9 3 3;
createNode animCurveTL -n "brt_Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.2145489688158761 8 0.2145489688158761 
		12 0.2145489688158761 15 1.6524476821469132 18 3.2666369642235726 21 4.623266232462993 
		26 3.5126620184612314 30 1.8741846514962259 33 0.37528039556364207 35 0.2145489688158761 
		46 0.2145489688158761;
	setAttr -s 11 ".kit[0:10]"  3 9 3 9 9 9 9 
		9 9 3 3;
	setAttr -s 11 ".kot[0:10]"  3 9 3 9 9 9 9 
		9 9 3 3;
createNode animCurveTL -n "brt_Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.064904406754016042 8 -0.064904406754016042 
		12 -0.064904406754016042 15 0.35554005703964209 18 0.82295249836901263 21 
		0.20272868256044912 26 -0.28017028910834013 30 0.14285095843452711 33 -0.064904406754016042 
		35 -0.064904406754016042 46 -0.064904406754016042;
	setAttr -s 11 ".kit[0:10]"  3 9 3 9 9 9 9 
		9 9 3 3;
	setAttr -s 11 ".kot[0:10]"  3 9 3 9 9 9 9 
		9 9 3 3;
createNode animCurveTA -n "brt_Right_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 44.979838669111025 
		18 -96.813941927516197 21 -141.45259746481233 26 -260.83716186157977 30 -320.97278948029157 
		33 -320.97278948029157 35 -360 46 -360;
	setAttr -s 11 ".kit[0:10]"  3 9 3 9 9 9 9 
		9 9 3 3;
	setAttr -s 11 ".kot[0:10]"  3 9 3 9 9 9 9 
		9 9 3 3;
createNode animCurveTA -n "brt_Right_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -25.948901905116401 8 -25.948901905116401 
		12 -25.948901905116401 15 -12.566891054956121 18 0.83264455816919847 21 0.83264455816919614 
		26 0.83264455816920024 30 0.83264455816919736 33 0.83264455816919736 35 -25.948901905116401 
		46 -25.948901905116401;
	setAttr -s 11 ".kit[0:10]"  3 9 3 9 9 9 9 
		9 9 3 3;
	setAttr -s 11 ".kot[0:10]"  3 9 3 9 9 9 9 
		9 9 3 3;
createNode animCurveTA -n "brt_Right_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 3.7278030847151347 
		18 5.63325126946238 21 5.6332512694623871 26 5.6332512694624297 30 5.6332512694624279 
		33 5.6332512694624279 35 0 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 3 9 9 9 9 
		9 9 3 3;
	setAttr -s 11 ".kot[0:10]"  3 9 3 9 9 9 9 
		9 9 3 3;
createNode animCurveTL -n "brt_Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.21594587158542247 8 0.21594587158542247 
		12 0.21594587158542247 15 0.1887702133027673 18 0.062315447620254698 21 0.11441522312857477 
		26 0.1357986997876835 30 0.15910744021559486 33 0.15910744021559486 35 0.21594587158542247 
		46 0.21594587158542247;
	setAttr -s 11 ".kit[0:10]"  3 9 3 9 9 9 9 
		9 9 3 3;
	setAttr -s 11 ".kot[0:10]"  3 9 3 9 9 9 9 
		9 9 3 3;
createNode animCurveTL -n "brt_Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.21454861014623702 8 0.21454861014623702 
		12 0.21454861014623702 15 1.5287313498540345 18 2.6405383879634652 21 4.5236089971603031 
		26 3.7000777780175786 30 2.2766096327170398 33 0.62371100281982439 35 0.21454861014623702 
		46 0.21454861014623702;
	setAttr -s 11 ".kit[0:10]"  3 9 3 9 9 9 9 
		9 9 3 3;
	setAttr -s 11 ".kot[0:10]"  3 9 3 9 9 9 9 
		9 9 3 3;
createNode animCurveTL -n "brt_Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.00078430246903575811 8 0.00078430246903575811 
		12 0.00078430246903575811 15 0.19011623006467521 18 0.8270727593865429 21 
		-0.10762229399040055 26 -0.34682869488224183 30 0.14916335075646345 33 0.14916335075646345 
		35 0.00078430246903575811 46 0.00078430246903575811;
	setAttr -s 11 ".kit[0:10]"  3 9 3 9 9 9 9 
		9 9 3 3;
	setAttr -s 11 ".kot[0:10]"  3 9 3 9 9 9 9 
		9 9 3 3;
createNode animCurveTA -n "brt_Left_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 50.438886786100674 
		18 5.3875037446029364 21 -224.29406083340055 26 -224.29406083340055 30 -290.66350272111083 
		33 -290.66350272111083 35 -361.81890932981412 46 -360;
	setAttr -s 11 ".kit[0:10]"  3 9 3 9 9 9 9 
		9 9 3 3;
	setAttr -s 11 ".kot[0:10]"  3 9 3 9 9 9 9 
		9 9 3 3;
createNode animCurveTA -n "brt_Left_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 0 18 0 21 0 26 
		0 30 0.44523955498139811 33 0.44523955498139811 35 0.44523955498139789 46 
		0;
	setAttr -s 11 ".kit[0:10]"  3 9 3 9 9 9 9 
		9 9 3 3;
	setAttr -s 11 ".kot[0:10]"  3 9 3 9 9 9 9 
		9 9 3 3;
createNode animCurveTA -n "brt_Left_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 0 18 0 21 0 26 
		0 30 2.8217984458977381 33 2.8217984458977381 35 2.8217984458977372 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 3 9 9 9 9 
		9 9 3 3;
	setAttr -s 11 ".kot[0:10]"  3 9 3 9 9 9 9 
		9 9 3 3;
createNode animCurveTA -n "brt_Right_Ball_Hoop_rotateX1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Right_Ball_Hoop_rotateY1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Right_Ball_Hoop_rotateZ1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Left_Ball_Hoop_rotateX1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Left_Ball_Hoop_rotateY1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Left_Ball_Hoop_rotateZ1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Right_Toe_Hoop_rotateX1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Right_Toe_Hoop_rotateY1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Right_Toe_Hoop_rotateZ1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Left_Toe_Hoop_rotateX1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Left_Toe_Hoop_rotateY1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Left_Toe_Hoop_rotateZ1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "brt_Right_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 0 18 0 21 0 26 
		0 30 0 33 0 35 0 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "brt_Right_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 0 18 0 21 0 26 
		0 30 0 33 0 35 0 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "brt_Right_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8 1 12 1 15 1 18 1 21 1 26 
		1 30 1 33 1 35 1 46 1;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "brt_Left_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 0 18 0 21 0 26 
		0 30 0 33 0 35 0 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "brt_Left_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 0 18 0 21 0 26 
		0 30 0 33 0 35 0 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "brt_Left_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8 1 12 1 15 1 18 1 21 1 26 
		1 30 1 33 1 35 1 46 1;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "brt_Character_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.076472881617957691 8 -0.036738392750264824 
		12 -0.035750009648891579 15 -0.081994873421873879 18 -0.092572462360597976 
		21 -0.092572462360597976 26 -0.092572462360597976 30 -0.092572462360597976 
		33 -0.087764467388450659 35 -0.0699456518249012 46 -0.076472881617957691;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "brt_Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.96624786942537044 8 0.62782633424051026 
		12 0.56199010499518331 15 2.0074948288561867 18 3.3479282310684941 21 4.0711787512265154 
		26 3.8501507182198265 30 2.6313032745799996 33 1.0989210910321257 35 0.61034466878045457 
		46 0.96624786942537044;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		1 1 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		1 1 9 3;
	setAttr -s 11 ".kix[7:10]"  0.00070199597394093871 0.00078383454820141196 
		0.032644294202327728 1;
	setAttr -s 11 ".kiy[7:10]"  -0.9999997615814209 -0.99999970197677612 
		-0.99946701526641846 0;
	setAttr -s 11 ".kox[7:10]"  0.00070200249319896102 0.00078384950757026672 
		0.032644294202327728 1;
	setAttr -s 11 ".koy[7:10]"  -0.9999997615814209 -0.99999970197677612 
		-0.99946701526641846 0;
createNode animCurveTL -n "brt_Character_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 -0.14374023320113355 12 -0.13365992254629697 
		15 0.23832165449970596 18 0.30560382033858302 21 0.30560382033858297 26 0.30560382033858297 
		30 0.26822483931698471 33 0.16236873907083657 35 -0.066785722110649912 46 
		0;
	setAttr -s 11 ".kit[0:10]"  3 1 1 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 1 1 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kix[1:10]"  0.022055217996239662 0.01240845862776041 
		0.0045530260540544987 0.029712434858083725 1 0.080001756548881531 0.016288075596094131 
		0.0049749058671295643 0.026678724214434624 1;
	setAttr -s 11 ".kiy[1:10]"  -0.99975675344467163 0.9999229907989502 
		0.99998962879180908 0.99955850839614868 0 -0.99679470062255859 -0.99986732006072998 
		-0.99998760223388672 -0.99964404106140137 0;
	setAttr -s 11 ".kox[1:10]"  0.022055186331272125 0.01240845862776041 
		0.0045530260540544987 0.029712434858083725 1 0.080001756548881531 0.016288075596094131 
		0.0049749058671295643 0.026678724214434624 1;
	setAttr -s 11 ".koy[1:10]"  -0.99975675344467163 0.9999229907989502 
		0.99998962879180908 0.99955850839614868 0 -0.99679470062255859 -0.99986732006072998 
		-0.99998760223388672 -0.99964404106140137 0;
createNode animCurveTA -n "brt_Character_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.62843630316474508 8 11.428206675211184 
		12 19.133050379818666 15 -45.400469280978093 18 -128.73897571619531 21 -208.19525148077872 
		26 -318.7266239732167 30 -363.54875408901796 33 -363.22186259124732 35 -347.5159226270984 
		46 -360.628;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Character_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -5.8284402688137158 8 -5.8284402688137105 
		12 -5.8284402688137087 15 -5.8284402688136909 18 -5.8284402688136785 21 -5.8284402688136812 
		26 -5.8284402688136785 30 -5.8284402688136812 33 -5.8284402688136829 35 -5.8284402688136794 
		46 -5.8284402688136829;
createNode animCurveTA -n "brt_Character_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.2956360193097458 8 -1.2956360193097434 
		12 -1.2956360193097425 15 -1.2956360193097429 18 -1.2956360193097411 21 -1.2956360193097489 
		26 -1.2956360193097654 30 -1.2956360193097738 33 -1.2956360193097762 35 -1.295636019309778 
		46 -1.2956360193097762;
createNode animCurveTA -n "brt_R_Hip_Fk_rotateX1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_R_Hip_Fk_rotateY1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_R_Hip_Fk_rotateZ1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_R_Knee_Fk_rotateZ1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_R_Ankle_Fk_rotateX1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_R_Ankle_Fk_rotateY1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_R_Ankle_Fk_rotateZ1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_R_Ball_Fk_rotateX1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_R_Ball_Fk_rotateY1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_R_Ball_Fk_rotateZ1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_L_Hip_Fk_rotateX1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_L_Hip_Fk_rotateY1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_L_Hip_Fk_rotateZ1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_L_Knee_Fk_rotateZ1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_L_Ankle_Fk_rotateX1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_L_Ankle_Fk_rotateY1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_L_Ankle_Fk_rotateZ1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_L_Ball_Fk_rotateX1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_L_Ball_Fk_rotateY1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_L_Ball_Fk_rotateZ1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_L_Ball_IK_Fk_rotateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_L_Ball_IK_Fk_rotateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_L_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "brt_Right_Arm_Hoop_translateX1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.43524234076486068;
createNode animCurveTL -n "brt_Right_Arm_Hoop_translateY1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.82665738350180629;
createNode animCurveTL -n "brt_Right_Arm_Hoop_translateZ1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.27773886459742925;
createNode animCurveTA -n "brt_Right_Arm_Hoop_rotateX1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.8121934161072303e-015;
createNode animCurveTA -n "brt_Right_Arm_Hoop_rotateY1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 28.652637602052774;
createNode animCurveTA -n "brt_Right_Arm_Hoop_rotateZ1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 64.676908227303443;
createNode animCurveTL -n "brt_Left_Arm_Hoop_translateX1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.5198069948790518;
createNode animCurveTL -n "brt_Left_Arm_Hoop_translateY1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.72394202659893114;
createNode animCurveTL -n "brt_Left_Arm_Hoop_translateZ1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.36439499068905612;
createNode animCurveTA -n "brt_Left_Arm_Hoop_rotateX1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 7.7976222737965299;
createNode animCurveTA -n "brt_Left_Arm_Hoop_rotateY1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -30.409274105849079;
createNode animCurveTA -n "brt_Left_Arm_Hoop_rotateZ1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -64.859940280210878;
createNode animCurveTL -n "brt_Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.8448236677023373 8 -0.86868921857465198 
		12 -0.86904006227708042 15 -0.68969567352155159 18 -0.80511957173013937 21 
		-0.77320081622851589 26 -1.2904598786334007 30 -0.90010462257749468 33 -1.2409590590740569 
		35 -1.0127114699125908 46 -0.8448236677023373;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "brt_Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.0269179155097397 8 1.0685964524601861 
		12 1.2383003745271604 15 3.4342294592590581 18 4.266891483413338 21 4.7598242940921294 
		26 5.6807641892698379 30 4.8866755385544831 33 2.688624175585602 35 0.80462042184022753 
		46 1.0269179155097397;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "brt_Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.097994651149805143 8 -0.5611982422335422 
		12 -0.57825875645765845 15 0.60897829276934279 18 -0.092059733871696303 21 
		-0.18010440069885891 26 0.68335592472724405 30 0.68521403185570895 33 0.45390066626850933 
		35 0.28859820824063098 46 -0.097994651149805143;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 5.4739599453216474 8 7.3000627972187591 
		12 7.3000627972187591 15 -109.49316212382762 18 -166.19913758863606 21 -154.05506233615429 
		26 -23.169325706146829 30 -86.43727846862933 33 -14.440210457338225 35 -11.887375639996145 
		46 -5.9332117941655671;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 8.5874521608419823 8 -2.557535922164313 
		12 -2.557535922164313 15 38.44044397268619 18 22.024515555410041 21 -57.41520856323281 
		26 -7.4032494391346981 30 5.441391929498387 33 -5.0008704934831716 35 65.435075448488945 
		46 11.697713394218329;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 74.754744621954103 8 47.956793353273255 
		12 47.956793353273255 15 -70.677247528339606 18 -80.857270395521113 21 -124.97416225581173 
		26 -357.97440223772895 30 -406.51710844112762 33 -405.76338620718923 35 -330.88680798204689 
		46 -292.96613407570959;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "brt_Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.61083301393139333 8 0.7925426869165284 
		12 0.71275596729850821 15 0.63453522965321574 18 0.52107171069963543 21 0.52107171069963543 
		26 0.99072561619065369 30 0.78414750178994996 33 0.99244304501092906 35 0.63750704201886754 
		46 0.61083301393139333;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "brt_Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.0176944705789435 8 1.1554756564620328 
		12 1.2933720495155405 15 2.7210335593463579 18 4.2693868079549011 21 4.726482998800738 
		26 5.6856613680774011 30 4.8193681964626238 33 2.6641653302305257 35 0.86810348015059391 
		46 1.0176944705789435;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "brt_Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.14314299916678522 8 -0.43309508662330759 
		12 -0.44680908402809727 15 0.24676274155065323 18 0.041924583319596441 21 
		0.041924583319596441 26 0.86377584807849372 30 0.56107915711628542 33 0.6022982304650415 
		35 0.13024280216039352 46 0.14314299916678522;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Left_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 16.226511010665405 8 13.522988079894901 
		12 13.522988079894901 15 -103.04736350491589 18 -208.09157121469161 21 -170.80440269138995 
		26 -212.03697634396011 30 -258.49784516726487 33 -184.78859241894779 35 -207.16756520298756 
		46 -170.17401808332437;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -8.513966085499284 8 1.8148685439359089 
		12 1.8148685439359089 15 -56.172649442836658 18 14.373678988232991 21 69.38302423711427 
		26 174.96316686117964 30 170.32593865122249 33 156.13225389082348 35 226.84232957742614 
		46 191.02133479031994;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -68.213989601412422 8 -53.769027459614833 
		12 -53.769027459614833 15 29.848246215792308 18 109.65918052847749 21 148.48436351977736 
		26 178.14426596625776 30 241.01776633348541 33 239.96123183476706 35 142.23347822081905 
		46 115.09883980060239;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "brt_Left_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 0 18 0.6430853469108766 
		21 0.81614842199332671 26 0.49234161095543577 30 0.81614842199332671 33 0.81614842199332671 
		35 0.21210115573821209 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "brt_Left_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 0 18 -1.0055009324346631 
		21 -0.29210200132307307 26 -0.09398108421643693 30 -0.29210200132307307 33 
		-0.29210200132307307 35 -0.26799190112689319 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "brt_Left_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1 8 -1 12 -1 15 -1 18 -0.74035254501025805 
		21 -0.42724922813719379 26 -1.0199456822217707 30 -0.42724922813719379 33 
		-0.42724922813719379 35 -0.69322219610510849 46 -1;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "brt_Right_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.10167917362943303 8 -0.34722075659949825 
		12 -0.34722075659949825 15 -0.34722075659949825 18 -0.41217248370702336 21 
		-0.45937553696617456 26 -0.41210329224339431 30 -0.45937553696617456 33 -0.45937553696617456 
		35 -0.26016597337567632 46 -0.10167917362943303;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "brt_Right_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.40762644910266188 8 -0.12203726294556559 
		12 -0.12203726294556559 15 -0.12203726294556559 18 -1.1201722284705047 21 
		-0.33010007933201863 26 -0.17409512840663907 30 -0.33010007933201863 33 -0.33010007933201863 
		35 -0.46694043642820215 46 -0.40762644910266188;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "brt_Right_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.93129112588482243 8 -1.1352479873763424 
		12 -1.1352479873763424 15 -1.1352479873763424 18 -0.69089313029683352 21 
		-0.56540260908521756 26 -1.0422611608434105 30 -0.56540260908521756 33 -0.56540260908521756 
		35 -0.69415508662088798 46 -0.93129112588482243;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_R_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 12.253734489678925 8 12.253734489678925 
		12 12.253734489678925 15 12.253734489678925 18 12.253734489678925 21 12.253734489678925 
		26 12.253734489678925 30 12.253734489678925 33 12.253734489678925 35 12.253734489678925 
		46 12.253734489678925;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_R_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -65.746751280844961 8 -65.746751280844961 
		12 -65.746751280844961 15 -65.746751280844961 18 -65.746751280844961 21 -65.746751280844961 
		26 -65.746751280844961 30 -65.746751280844961 33 -65.746751280844961 35 -65.746751280844961 
		46 -65.746751280844961;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_R_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 3.871449260799477e-015 8 0 12 
		0 15 0 18 0 21 0 26 0 30 0 33 0 35 0 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_L_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.061808866237337522 8 -0.061808866237337522 
		12 -0.061808866237337522 15 -0.061808866237337522 18 -0.061808866237337522 
		21 -0.061808866237337522 26 -0.061808866237337522 30 -0.061808866237337522 
		33 -0.061808866237337522 35 -0.061808866237337522 46 -0.061808866237337522;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_L_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -59.058178941076754 8 -59.058178941076754 
		12 -59.058178941076754 15 -59.058178941076754 18 -59.058178941076754 21 -59.058178941076754 
		26 -59.058178941076754 30 -59.058178941076754 33 -59.058178941076754 35 -59.058178941076754 
		46 -59.058178941076754;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_L_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 16.579147429757843 8 16.579147429757843 
		12 16.579147429757843 15 16.579147429757843 18 16.579147429757843 21 16.579147429757843 
		26 16.579147429757843 30 16.579147429757843 33 16.579147429757843 35 16.579147429757843 
		46 16.579147429757843;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_R_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 8.5572674112203622 8 8.5572674112203622 
		12 8.5572674112203622 15 8.5572674112203622 18 8.5572674112203622 21 8.5572674112203622 
		26 8.5572674112203622 30 8.5572674112203622 33 8.5572674112203622 35 8.5572674112203622 
		46 8.5572674112203622;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_L_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 15.711328223519057 8 15.711328223519057 
		12 15.711328223519057 15 15.711328223519057 18 15.711328223519057 21 15.711328223519057 
		26 15.711328223519057 30 15.711328223519057 33 15.711328223519057 35 15.711328223519057 
		46 15.711328223519057;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_R_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 0 18 0 21 0 26 
		0 30 0 33 0 35 0 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_R_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 0 18 0 21 0 26 
		0 30 0 33 0 35 0 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_R_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 0 18 0 21 0 26 
		0 30 0 33 0 35 0 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_L_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 0 18 0 21 0 26 
		0 30 0 33 0 35 0 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_L_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 0 18 0 21 0 26 
		0 30 0 33 0 35 0 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_L_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 0 18 0 21 0 26 
		0 30 0 33 0 35 0 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 210.60557314878687 8 210.60557314878687 
		12 210.60557314878687 15 210.60557314878687 18 210.60557314878687 21 210.60557314878687 
		26 210.60557314878687 30 210.60557314878687 33 210.60557314878687 35 210.60557314878687 
		46 210.60557314878687;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 27.722848255843903 8 27.722848255843903 
		12 27.722848255843903 15 27.722848255843903 18 27.722848255843903 21 27.722848255843903 
		26 27.722848255843903 30 27.722848255843903 33 27.722848255843903 35 27.722848255843903 
		46 27.722848255843903;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 21.576484776388227 8 21.576484776388227 
		12 21.576484776388227 15 21.576484776388227 18 21.576484776388227 21 21.576484776388227 
		26 21.576484776388227 30 21.576484776388227 33 21.576484776388227 35 21.576484776388227 
		46 21.576484776388227;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Middle_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 0 18 0 21 0 26 
		0 30 0 33 0 35 0 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Middle_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 0 18 0 21 0 26 
		0 30 0 33 0 35 0 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Middle_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 27.080064458283051 8 27.080064458283051 
		12 27.080064458283051 15 27.080064458283051 18 27.080064458283051 21 27.080064458283051 
		26 27.080064458283051 30 27.080064458283051 33 27.080064458283051 35 27.080064458283051 
		46 27.080064458283051;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Pelvis_rotateX1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Pelvis_rotateY1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Pelvis_rotateZ1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Thumb_R_rotateX1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Thumb_R_rotateY1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Thumb_R_rotateZ1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "brt_Thumb_L_rotateX1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Thumb_L_rotateY1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "brt_Thumb_L_rotateZ1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "brt_Middle_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 0 18 0 21 0 26 
		0 30 0 33 0 35 0 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Middle_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 0 18 0 21 0 26 
		0 30 0 33 0 35 0 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Middle_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 27.911632519594587 8 27.911632519594587 
		12 27.911632519594587 15 27.911632519594587 18 27.911632519594587 21 27.911632519594587 
		26 27.911632519594587 30 27.911632519594587 33 27.911632519594587 35 27.911632519594587 
		46 27.911632519594587;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Jaw_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 0 18 0 21 0 26 
		0 30 0 33 0 35 0 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Jaw_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 0 18 0 21 0 26 
		0 30 0 33 0 35 0 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Jaw_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 0 18 0 21 0 26 
		0 30 0 33 0 35 0 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Spine_2_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.65073001024951671 8 -0.65073001024951671 
		12 -1.7082311046427858 15 -0.59557844331941034 18 -2.940288306792068 21 -3.5145769216030254 
		26 -2.0481998634351775 30 -0.54437296113747669 33 -0.064023565620019568 35 
		-1.4084498331120807 46 -0.65073001024951671;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Spine_2_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -4.2368721935960929 8 -4.2368721935960929 
		12 -3.9319578382073113 15 -4.2449616001686685 18 -3.1204196470014844 21 -2.4554179240603751 
		26 -3.76625612761655 30 -4.2518191000078529 33 -4.285985538590138 35 -4.0411783382325703 
		46 -4.2368721935960929;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Spine_2_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.6995264082587447 8 2.6995264082587447 
		12 17.464730840239675 15 1.9537455064042379 18 37.296502328535709 21 49.062007568648994 
		26 22.525851349431463 30 1.262539552916548 33 -5.1837471272917304 35 13.195573573905858 
		46 2.6995264082587447;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Neck_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 0 18 0 21 0 26 
		0 30 0 33 0 35 0 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Neck_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 0 18 0 21 0 26 
		0 30 0 33 0 35 0 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Neck_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 11.959078149127214 12 11.959078149127214 
		15 -11.946748173729494 18 10.71528304806332 21 29.512970983556141 26 29.512970983556141 
		30 29.512970983556141 33 29.512970983556141 35 26.174835745644344 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 8.9251701322399404e-015 8 0 12 
		-7.888228879436503 15 -7.7638131932741974 18 -6.1385041323909499 21 -5.8461749047003959 
		26 -7.3355691314103275 30 -7.3355691314103275 33 -7.8548437511554718 35 -5.5486205619807398 
		46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -7.2005835300832052e-015 8 0 
		12 0 15 -1.3997738925686913 18 -4.9635981373007789 21 -5.3051096592060683 
		26 -2.9085842864277813 30 -2.9085842864277813 33 -0.72725660578609552 35 
		0.69346648432413116 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 6.6786334979782902 8 24.154602901609053 
		12 27.379324020793057 15 17.2213103327474 18 -11.437258274247666 21 -14.702925232203427 
		26 5.8666475431230936 30 5.8666475431230936 33 22.122694079241732 35 29.207358496208386 
		46 6.6786334979782902;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Spine_1_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.8903601258661931 8 -1.8903601258661931 
		12 -1.8903601258661931 15 -1.8903601258661931 18 -1.8903601258661931 21 -1.8903601258661931 
		26 -1.8903601258661931 30 -1.8903601258661931 33 -1.8903601258661931 35 -1.8903601258661931 
		46 -1.8903601258661931;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Spine_1_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.5597289571479034 8 2.5597289571479034 
		12 2.5597289571479034 15 2.5597289571479034 18 2.5597289571479034 21 2.5597289571479034 
		26 2.5597289571479034 30 2.5597289571479034 33 2.5597289571479034 35 2.5597289571479034 
		46 2.5597289571479034;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Spine_1_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.016811087403604 8 2.016811087403604 
		12 2.016811087403604 15 2.016811087403604 18 2.016811087403604 21 2.016811087403604 
		26 2.016811087403604 30 2.016811087403604 33 2.016811087403604 35 2.016811087403604 
		46 2.016811087403604;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Middle_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 0 18 0 21 0 26 
		0 30 0 33 0 35 0 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Middle_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 0 18 0 21 0 26 
		0 30 0 33 0 35 0 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Middle_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 33.429092416277157 8 33.429092416277157 
		12 33.429092416277157 15 33.429092416277157 18 33.429092416277157 21 33.429092416277157 
		26 33.429092416277157 30 33.429092416277157 33 33.429092416277157 35 33.429092416277157 
		46 33.429092416277157;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 208.43516041205012 8 208.43516041205012 
		12 208.43516041205012 15 208.43516041205012 18 208.43516041205012 21 208.43516041205012 
		26 208.43516041205012 30 208.43516041205012 33 208.43516041205012 35 208.43516041205012 
		46 208.43516041205012;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 23.263402056531085 8 23.263402056531085 
		12 23.263402056531085 15 23.263402056531085 18 23.263402056531085 21 23.263402056531085 
		26 23.263402056531085 30 23.263402056531085 33 23.263402056531085 35 23.263402056531085 
		46 23.263402056531085;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 20.166277752815617 8 20.166277752815617 
		12 20.166277752815617 15 20.166277752815617 18 20.166277752815617 21 20.166277752815617 
		26 20.166277752815617 30 20.166277752815617 33 20.166277752815617 35 20.166277752815617 
		46 20.166277752815617;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Middle_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 0 18 0 21 0 26 
		0 30 0 33 0 35 0 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Middle_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8 0 12 0 15 0 18 0 21 0 26 
		0 30 0 33 0 35 0 46 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "brt_Middle_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 17.254116939558369 8 17.254116939558369 
		12 17.254116939558369 15 17.254116939558369 18 17.254116939558369 21 17.254116939558369 
		26 17.254116939558369 30 17.254116939558369 33 17.254116939558369 35 17.254116939558369 
		46 17.254116939558369;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
createNode clipLibrary -n "clipLibrary1";
	setAttr -s 168 ".cel[0].cev";
	setAttr ".cd[0].cm" -type "characterMapping" 168 "Extra_Attributes.translateX" 
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
		2 118 "Middle_L.rotateZ" 2 119  ;
	setAttr ".cd[0].cim" -type "Int32Array" 168 0 1 2 3
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
		 158 159 160 161 162 163 164 165 166 167 ;
createNode lightLinker -n "lightLinker1";
	setAttr ".ihi" 0;
	setAttr -s 21 ".lnk";
select -ne :time1;
	setAttr ".o" 40;
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
select -ne :particleCloud1;
	addAttr -ci true -sn "p3dLit" -ln "p3dLit" -dv 1 -at "short";
	addAttr -ci true -sn "p3dShadeMode" -ln "p3dShadeMode" -dv 1 -at "short";
	addAttr -ci true -sn "p3dBlendMode" -ln "p3dBlendMode" -at "short";
	addAttr -ci true -sn "p3dTextureGen" -ln "p3dTextureGen" -at "short";
	addAttr -ci true -sn "p3dUVMode" -ln "p3dUVMode" -dv 1 -at "short";
	addAttr -ci true -sn "p3dFilterMode" -ln "p3dFilterMode" -dv 1 -at "short";
	addAttr -ci true -sn "p3dAlphaTest" -ln "p3dAlphaTest" -at "short";
	addAttr -ci true -sn "p3dAlphaCompareMode" -ln "p3dAlphaCompareMode" -at "short";
	addAttr -ci true -sn "p3dProceduralTexXRes" -ln "p3dProceduralTexXRes" -at "short";
	addAttr -ci true -sn "p3dProceduralTexYRes" -ln "p3dProceduralTexYRes" -at "short";
	setAttr ".t" -type "float3" 0.47108001 0.47108001 0.47108001 ;
select -ne :initialShadingGroup;
	setAttr -k on ".nds";
	setAttr ".ro" yes;
	setAttr -s 654 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -k on ".ra";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr -k on ".esr";
	setAttr -k on ".ors";
	setAttr -k on ".outf";
	setAttr -k on ".gama";
	setAttr ".top" 478;
	setAttr -k on ".left";
	setAttr -k on ".bot";
	setAttr ".rght" 638;
	setAttr -k on ".urr";
	setAttr ".fs" 1;
	setAttr ".ef" 10;
	setAttr -k on ".bf";
	setAttr -k on ".bfs";
	setAttr -k on ".be";
	setAttr -k on ".fec";
	setAttr -k on ".sec";
	setAttr -k on ".ofc";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -k on ".sp";
	setAttr -k on ".shs";
	setAttr -k on ".lpr";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".shp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -k on ".mbf";
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -k on ".bll";
	setAttr -k on ".bls";
	setAttr -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -k on ".rgpn";
	setAttr -k on ".rlsd";
	setAttr -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
select -ne :defaultResolution;
	setAttr ".w" 720;
	setAttr ".h" 486;
	setAttr ".dar" 1.3329999446868896;
	setAttr ".ldar" yes;
select -ne :characterPartition;
select -ne :hyperGraphLayout;
	setAttr ".cch" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".img" -type "string" "";
	setAttr ".ims" 1;
select -ne :ikSystem;
connectAttr "brt_idle_backflipSource.st" "clipLibrary1.st[0]";
connectAttr "brt_idle_backflipSource.du" "clipLibrary1.du[0]";
connectAttr "brt_Extra_Attributes_translateX1.a" "clipLibrary1.cel[0].cev[0].cevr"
		;
connectAttr "brt_Extra_Attributes_translateY1.a" "clipLibrary1.cel[0].cev[1].cevr"
		;
connectAttr "brt_Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "brt_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "brt_Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "brt_Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr"
		;
connectAttr "brt_Hoop_Root_IK_FK_RFoot1.a" "clipLibrary1.cel[0].cev[6].cevr"
		;
connectAttr "brt_Hoop_Root_IK_FK_LFoot1.a" "clipLibrary1.cel[0].cev[7].cevr"
		;
connectAttr "brt_Hoop_Root_IK_Rev_IK_Sim_RFoot1.a" "clipLibrary1.cel[0].cev[8].cevr"
		;
connectAttr "brt_Hoop_Root_IK_Rev_IK_Sim_LFoot1.a" "clipLibrary1.cel[0].cev[9].cevr"
		;
connectAttr "brt_Hoop_Root_IK_FK_RArm1.a" "clipLibrary1.cel[0].cev[10].cevr"
		;
connectAttr "brt_Hoop_Root_IK_FK_LArm1.a" "clipLibrary1.cel[0].cev[11].cevr"
		;
connectAttr "brt_Hoop_Root_IK_Body_IK_World_RArm1.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "brt_Hoop_Root_IK_Body_IK_World_LArm1.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "brt_Hoop_Root_rotateX1.a" "clipLibrary1.cel[0].cev[14].cevr"
		;
connectAttr "brt_Hoop_Root_rotateY1.a" "clipLibrary1.cel[0].cev[15].cevr"
		;
connectAttr "brt_Hoop_Root_rotateZ1.a" "clipLibrary1.cel[0].cev[16].cevr"
		;
connectAttr "brt_Hoop_Root_translateX1.a" "clipLibrary1.cel[0].cev[17].cevr"
		;
connectAttr "brt_Hoop_Root_translateY1.a" "clipLibrary1.cel[0].cev[18].cevr"
		;
connectAttr "brt_Hoop_Root_translateZ1.a" "clipLibrary1.cel[0].cev[19].cevr"
		;
connectAttr "brt_Right_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[20].cevr"
		;
connectAttr "brt_Right_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[21].cevr"
		;
connectAttr "brt_Right_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[22].cevr"
		;
connectAttr "brt_Right_Foot_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[23].cevr"
		;
connectAttr "brt_Right_Foot_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[24].cevr"
		;
connectAttr "brt_Right_Foot_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[25].cevr"
		;
connectAttr "brt_Left_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[26].cevr"
		;
connectAttr "brt_Left_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[27].cevr"
		;
connectAttr "brt_Left_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[28].cevr"
		;
connectAttr "brt_Left_Foot_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[29].cevr"
		;
connectAttr "brt_Left_Foot_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[30].cevr"
		;
connectAttr "brt_Left_Foot_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[31].cevr"
		;
connectAttr "brt_Right_Ball_Hoop_rotateX1.a" "clipLibrary1.cel[0].cev[32].cevr"
		;
connectAttr "brt_Right_Ball_Hoop_rotateY1.a" "clipLibrary1.cel[0].cev[33].cevr"
		;
connectAttr "brt_Right_Ball_Hoop_rotateZ1.a" "clipLibrary1.cel[0].cev[34].cevr"
		;
connectAttr "brt_Left_Ball_Hoop_rotateX1.a" "clipLibrary1.cel[0].cev[35].cevr"
		;
connectAttr "brt_Left_Ball_Hoop_rotateY1.a" "clipLibrary1.cel[0].cev[36].cevr"
		;
connectAttr "brt_Left_Ball_Hoop_rotateZ1.a" "clipLibrary1.cel[0].cev[37].cevr"
		;
connectAttr "brt_Right_Toe_Hoop_rotateX1.a" "clipLibrary1.cel[0].cev[38].cevr"
		;
connectAttr "brt_Right_Toe_Hoop_rotateY1.a" "clipLibrary1.cel[0].cev[39].cevr"
		;
connectAttr "brt_Right_Toe_Hoop_rotateZ1.a" "clipLibrary1.cel[0].cev[40].cevr"
		;
connectAttr "brt_Left_Toe_Hoop_rotateX1.a" "clipLibrary1.cel[0].cev[41].cevr"
		;
connectAttr "brt_Left_Toe_Hoop_rotateY1.a" "clipLibrary1.cel[0].cev[42].cevr"
		;
connectAttr "brt_Left_Toe_Hoop_rotateZ1.a" "clipLibrary1.cel[0].cev[43].cevr"
		;
connectAttr "brt_Right_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[44].cevr"
		;
connectAttr "brt_Right_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[45].cevr"
		;
connectAttr "brt_Right_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[46].cevr"
		;
connectAttr "brt_Left_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[47].cevr"
		;
connectAttr "brt_Left_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[48].cevr"
		;
connectAttr "brt_Left_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[49].cevr"
		;
connectAttr "brt_Character_Hoop_translateX.a" "clipLibrary1.cel[0].cev[50].cevr"
		;
connectAttr "brt_Character_Hoop_translateY.a" "clipLibrary1.cel[0].cev[51].cevr"
		;
connectAttr "brt_Character_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[52].cevr"
		;
connectAttr "brt_Character_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[53].cevr"
		;
connectAttr "brt_Character_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[54].cevr"
		;
connectAttr "brt_Character_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[55].cevr"
		;
connectAttr "brt_R_Hip_Fk_rotateX1.a" "clipLibrary1.cel[0].cev[56].cevr"
		;
connectAttr "brt_R_Hip_Fk_rotateY1.a" "clipLibrary1.cel[0].cev[57].cevr"
		;
connectAttr "brt_R_Hip_Fk_rotateZ1.a" "clipLibrary1.cel[0].cev[58].cevr"
		;
connectAttr "brt_R_Knee_Fk_rotateZ1.a" "clipLibrary1.cel[0].cev[59].cevr"
		;
connectAttr "brt_R_Ankle_Fk_rotateX1.a" "clipLibrary1.cel[0].cev[60].cevr"
		;
connectAttr "brt_R_Ankle_Fk_rotateY1.a" "clipLibrary1.cel[0].cev[61].cevr"
		;
connectAttr "brt_R_Ankle_Fk_rotateZ1.a" "clipLibrary1.cel[0].cev[62].cevr"
		;
connectAttr "brt_R_Ball_Fk_rotateX1.a" "clipLibrary1.cel[0].cev[63].cevr"
		;
connectAttr "brt_R_Ball_Fk_rotateY1.a" "clipLibrary1.cel[0].cev[64].cevr"
		;
connectAttr "brt_R_Ball_Fk_rotateZ1.a" "clipLibrary1.cel[0].cev[65].cevr"
		;
connectAttr "brt_L_Hip_Fk_rotateX1.a" "clipLibrary1.cel[0].cev[66].cevr"
		;
connectAttr "brt_L_Hip_Fk_rotateY1.a" "clipLibrary1.cel[0].cev[67].cevr"
		;
connectAttr "brt_L_Hip_Fk_rotateZ1.a" "clipLibrary1.cel[0].cev[68].cevr"
		;
connectAttr "brt_L_Knee_Fk_rotateZ1.a" "clipLibrary1.cel[0].cev[69].cevr"
		;
connectAttr "brt_L_Ankle_Fk_rotateX1.a" "clipLibrary1.cel[0].cev[70].cevr"
		;
connectAttr "brt_L_Ankle_Fk_rotateY1.a" "clipLibrary1.cel[0].cev[71].cevr"
		;
connectAttr "brt_L_Ankle_Fk_rotateZ1.a" "clipLibrary1.cel[0].cev[72].cevr"
		;
connectAttr "brt_L_Ball_Fk_rotateX1.a" "clipLibrary1.cel[0].cev[73].cevr"
		;
connectAttr "brt_L_Ball_Fk_rotateY1.a" "clipLibrary1.cel[0].cev[74].cevr"
		;
connectAttr "brt_L_Ball_Fk_rotateZ1.a" "clipLibrary1.cel[0].cev[75].cevr"
		;
connectAttr "brt_R_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[76].cevr"
		;
connectAttr "brt_R_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[77].cevr"
		;
connectAttr "brt_R_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[78].cevr"
		;
connectAttr "brt_L_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[79].cevr"
		;
connectAttr "brt_L_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[80].cevr"
		;
connectAttr "brt_L_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[81].cevr"
		;
connectAttr "brt_Right_Arm_Hoop_translateX1.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "brt_Right_Arm_Hoop_translateY1.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "brt_Right_Arm_Hoop_translateZ1.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "brt_Right_Arm_Hoop_rotateX1.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "brt_Right_Arm_Hoop_rotateY1.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "brt_Right_Arm_Hoop_rotateZ1.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "brt_Left_Arm_Hoop_translateX1.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "brt_Left_Arm_Hoop_translateY1.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "brt_Left_Arm_Hoop_translateZ1.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "brt_Left_Arm_Hoop_rotateX1.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "brt_Left_Arm_Hoop_rotateY1.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "brt_Left_Arm_Hoop_rotateZ1.a" "clipLibrary1.cel[0].cev[93].cevr"
		;
connectAttr "brt_Right_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[94].cevr"
		;
connectAttr "brt_Right_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[95].cevr"
		;
connectAttr "brt_Right_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[96].cevr"
		;
connectAttr "brt_Right_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[97].cevr"
		;
connectAttr "brt_Right_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[98].cevr"
		;
connectAttr "brt_Right_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[99].cevr"
		;
connectAttr "brt_Left_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[100].cevr"
		;
connectAttr "brt_Left_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[101].cevr"
		;
connectAttr "brt_Left_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[102].cevr"
		;
connectAttr "brt_Left_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[103].cevr"
		;
connectAttr "brt_Left_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[104].cevr"
		;
connectAttr "brt_Left_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[105].cevr"
		;
connectAttr "brt_Left_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[106].cevr"
		;
connectAttr "brt_Left_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[107].cevr"
		;
connectAttr "brt_Left_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[108].cevr"
		;
connectAttr "brt_Right_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[109].cevr"
		;
connectAttr "brt_Right_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[110].cevr"
		;
connectAttr "brt_Right_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[111].cevr"
		;
connectAttr "brt_R_FK_Shoulder_rotateX.a" "clipLibrary1.cel[0].cev[112].cevr"
		;
connectAttr "brt_R_FK_Shoulder_rotateY.a" "clipLibrary1.cel[0].cev[113].cevr"
		;
connectAttr "brt_R_FK_Shoulder_rotateZ.a" "clipLibrary1.cel[0].cev[114].cevr"
		;
connectAttr "brt_L_FK_Shoulder_rotateX.a" "clipLibrary1.cel[0].cev[115].cevr"
		;
connectAttr "brt_L_FK_Shoulder_rotateY.a" "clipLibrary1.cel[0].cev[116].cevr"
		;
connectAttr "brt_L_FK_Shoulder_rotateZ.a" "clipLibrary1.cel[0].cev[117].cevr"
		;
connectAttr "brt_R_FK_Elbow_rotateZ.a" "clipLibrary1.cel[0].cev[118].cevr"
		;
connectAttr "brt_L_FK_Elbow_rotateZ.a" "clipLibrary1.cel[0].cev[119].cevr"
		;
connectAttr "brt_R_FK_Wrist_rotateX.a" "clipLibrary1.cel[0].cev[120].cevr"
		;
connectAttr "brt_R_FK_Wrist_rotateY.a" "clipLibrary1.cel[0].cev[121].cevr"
		;
connectAttr "brt_R_FK_Wrist_rotateZ.a" "clipLibrary1.cel[0].cev[122].cevr"
		;
connectAttr "brt_L_FK_Wrist_rotateX.a" "clipLibrary1.cel[0].cev[123].cevr"
		;
connectAttr "brt_L_FK_Wrist_rotateY.a" "clipLibrary1.cel[0].cev[124].cevr"
		;
connectAttr "brt_L_FK_Wrist_rotateZ.a" "clipLibrary1.cel[0].cev[125].cevr"
		;
connectAttr "brt_Thumb_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[126].cevr"
		;
connectAttr "brt_Thumb_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[127].cevr"
		;
connectAttr "brt_Thumb_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[128].cevr"
		;
connectAttr "brt_Middle_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[129].cevr"
		;
connectAttr "brt_Middle_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[130].cevr"
		;
connectAttr "brt_Middle_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[131].cevr"
		;
connectAttr "brt_Pelvis_rotateX1.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "brt_Pelvis_rotateY1.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "brt_Pelvis_rotateZ1.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "brt_Thumb_R_rotateX1.a" "clipLibrary1.cel[0].cev[135].cevr"
		;
connectAttr "brt_Thumb_R_rotateY1.a" "clipLibrary1.cel[0].cev[136].cevr"
		;
connectAttr "brt_Thumb_R_rotateZ1.a" "clipLibrary1.cel[0].cev[137].cevr"
		;
connectAttr "brt_Thumb_L_rotateX1.a" "clipLibrary1.cel[0].cev[138].cevr"
		;
connectAttr "brt_Thumb_L_rotateY1.a" "clipLibrary1.cel[0].cev[139].cevr"
		;
connectAttr "brt_Thumb_L_rotateZ1.a" "clipLibrary1.cel[0].cev[140].cevr"
		;
connectAttr "brt_Middle_R_rotateX.a" "clipLibrary1.cel[0].cev[141].cevr"
		;
connectAttr "brt_Middle_R_rotateY.a" "clipLibrary1.cel[0].cev[142].cevr"
		;
connectAttr "brt_Middle_R_rotateZ.a" "clipLibrary1.cel[0].cev[143].cevr"
		;
connectAttr "brt_Jaw_rotateX.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "brt_Jaw_rotateY.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "brt_Jaw_rotateZ.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "brt_Spine_2_rotateX.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "brt_Spine_2_rotateY.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "brt_Spine_2_rotateZ.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "brt_Neck_rotateX.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "brt_Neck_rotateY.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "brt_Neck_rotateZ.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "brt_Head_rotateX.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "brt_Head_rotateY.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "brt_Head_rotateZ.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "brt_Spine_1_rotateX.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "brt_Spine_1_rotateY.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "brt_Spine_1_rotateZ.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "brt_Middle_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[159].cevr"
		;
connectAttr "brt_Middle_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[160].cevr"
		;
connectAttr "brt_Middle_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[161].cevr"
		;
connectAttr "brt_Thumb_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[162].cevr"
		;
connectAttr "brt_Thumb_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[163].cevr"
		;
connectAttr "brt_Thumb_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[164].cevr"
		;
connectAttr "brt_Middle_L_rotateX.a" "clipLibrary1.cel[0].cev[165].cevr"
		;
connectAttr "brt_Middle_L_rotateY.a" "clipLibrary1.cel[0].cev[166].cevr"
		;
connectAttr "brt_Middle_L_rotateZ.a" "clipLibrary1.cel[0].cev[167].cevr"
		;
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[4].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[5].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[6].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[7].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[8].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[9].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[10].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[11].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[12].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[13].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[14].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[15].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[16].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[17].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[18].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[19].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[20].llnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of brt_idle_backflip.ma
