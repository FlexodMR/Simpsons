//Maya ASCII 4.0 scene
//Name: ndr_sway_left.ma
//Last modified: Tue, Jun 17, 2003 03:49:53 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "ndr_sway_leftSource";
	setAttr ".ihi" 0;
	setAttr ".du" 32;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL288";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 20 0 32 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "ndr_Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "ndr_Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.995;
createNode animCurveTL -n "ndr_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.46000000000000002;
createNode animCurveTL -n "ndr_Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.72;
createNode animCurveTA -n "ndr_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "ndr_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "ndr_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "ndr_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "ndr_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "ndr_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "ndr_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "ndr_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "ndr_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "ndr_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "ndr_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "ndr_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "ndr_Right_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.1582036071592778;
createNode animCurveTL -n "ndr_Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.8024274637299138;
createNode animCurveTL -n "ndr_Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.6023458233856847;
createNode animCurveTA -n "ndr_Right_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -2.7149195703006082;
createNode animCurveTA -n "ndr_Right_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -9.448854147766081;
createNode animCurveTA -n "ndr_Right_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 2.9042146334359309;
createNode animCurveTL -n "ndr_Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.635760016530293;
createNode animCurveTL -n "ndr_Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.79733745153385938;
createNode animCurveTL -n "ndr_Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.6031411449878863;
createNode animCurveTA -n "ndr_Left_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_Left_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 14.260733409455982;
createNode animCurveTA -n "ndr_Left_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "ndr_Right_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.011621961304049206;
createNode animCurveTL -n "ndr_Right_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.53592894662340362;
createNode animCurveTL -n "ndr_Right_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.1714982742260704;
createNode animCurveTL -n "ndr_Left_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.028577078352958335;
createNode animCurveTL -n "ndr_Left_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.6265256146554018;
createNode animCurveTL -n "ndr_Left_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.1827937027824305;
createNode animCurveTL -n "ndr_Character_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.406;
createNode animCurveTL -n "ndr_Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.96452787963755071;
createNode animCurveTL -n "animCurveTL310";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.0057239815788857 3 1.006 28 
		1.006 32 1.0057239815788857;
	setAttr -s 4 ".kit[0:3]"  3 1 1 3;
	setAttr -s 4 ".kot[0:3]"  3 1 1 3;
	setAttr -s 4 ".kix[1:3]"  0.99999701976776123 0.99999970197677612 
		1;
	setAttr -s 4 ".kiy[1:3]"  0.0024418716784566641 -0.00075547490268945694 
		0;
	setAttr -s 4 ".kox[1:3]"  0.99999701976776123 0.99999970197677612 
		1;
	setAttr -s 4 ".koy[1:3]"  0.0024418726097792387 -0.00075547496089711785 
		0;
createNode animCurveTA -n "animCurveTA808";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -19.688418588621207 6 -19.688418588621186 
		10 -16.681098374804272 20 -16.681098374804272 24 -19.688418588621186 28 -19.751370263652689 
		32 -19.688418588621207;
	setAttr -s 7 ".kit[0:6]"  3 1 1 1 1 9 3;
	setAttr -s 7 ".kot[0:6]"  3 1 1 1 1 9 3;
	setAttr -s 7 ".kix[1:6]"  0.99996250867843628 0.99975961446762085 
		0.99955809116363525 0.99988770484924316 1 1;
	setAttr -s 7 ".kiy[1:6]"  0.0086584025993943214 0.021924974396824837 
		-0.029726272448897362 -0.014985235407948494 0 0;
	setAttr -s 7 ".kox[1:6]"  0.99996250867843628 0.99975961446762085 
		0.99955809116363525 0.99988770484924316 1 1;
	setAttr -s 7 ".koy[1:6]"  0.0086583998054265976 0.021925013512372971 
		-0.029726259410381317 -0.014985213056206703 0 0;
createNode animCurveTA -n "animCurveTA809";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.6085540494966317 6 -1.6085540494966299 
		10 -3.7948068215313993 20 -3.7948068215313993 24 -1.6085540494966297 28 0.045498044900976108 
		32 -1.6085540494966317;
	setAttr -s 7 ".kit[0:6]"  3 1 1 1 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 1 1 1 9 9 3;
	setAttr -s 7 ".kix[1:6]"  0.99993801116943359 0.99994856119155884 
		0.99992567300796509 0.96983426809310913 1 1;
	setAttr -s 7 ".kiy[1:6]"  -0.011137021705508232 -0.010144998319447041 
		0.012190749868750572 0.24376527965068817 0 0;
	setAttr -s 7 ".kox[1:6]"  0.99993801116943359 0.99994856119155884 
		0.99992567300796509 0.96983426809310913 1 1;
	setAttr -s 7 ".koy[1:6]"  -0.011137016117572784 -0.010145001113414764 
		0.012190760113298893 0.24376527965068817 0 0;
createNode animCurveTA -n "animCurveTA810";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.23076428718713959 6 0.22886021256755165 
		10 -6.0873376106532353 20 -6.0873376106532353 24 -2.583061391743402 28 0.32902733342417539 
		32 0.23076428718713959;
	setAttr -s 7 ".kit[0:6]"  3 1 1 1 1 3 3;
	setAttr -s 7 ".kot[0:6]"  3 1 1 1 1 3 3;
	setAttr -s 7 ".kix[1:6]"  0.99760442972183228 0.99844193458557129 
		0.99916386604309082 0.80160540342330933 1 1;
	setAttr -s 7 ".kiy[1:6]"  -0.069176971912384033 -0.055800478905439377 
		0.040884647518396378 0.59785342216491699 0 0;
	setAttr -s 7 ".kox[1:6]"  0.99760442972183228 0.99844193458557129 
		0.99916386604309082 0.80160552263259888 1 1;
	setAttr -s 7 ".koy[1:6]"  -0.069176957011222839 -0.055800512433052063 
		0.040884643793106079 0.59785336256027222 0 0;
createNode animCurveTA -n "ndr_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -5.6803276403432976;
createNode animCurveTA -n "ndr_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -6.1570151121354497;
createNode animCurveTA -n "ndr_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 5.3480278027016874;
createNode animCurveTA -n "ndr_L_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_L_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_L_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -0.071393788731188013 1 -0.063569806082171568 
		2 -0.048097490633097095 3 -0.037172090639227238 4 -0.033247477405352013 5 
		-0.030961534309315652 6 -0.031013923366210748 7 -0.045173013779846088 8 -0.073328462971984434 
		9 -0.099675573010293311 10 -0.11190197064496658 11 -0.11335555503516105 12 
		-0.11438597141546382 13 -0.1150350225438757 14 -0.11534227277176286 15 -0.11534556148037212 
		16 -0.11508147809311595 17 -0.1145857945005713 18 -0.11389385175095754 19 
		-0.11304089871114684 20 -0.11206238110913773 21 -0.11016394065683016 22 -0.10627454808354628 
		23 -0.099894229227143111 24 -0.090485481900291806 25 -0.080425491657823617 
		26 -0.072440107256923625 27 -0.067180084561287573 28 -0.065836356566729815 
		29 -0.067298678648357965 30 -0.069148882128970399 31 -0.070727477129123598 
		32 -0.071393788731188013;
createNode animCurveTL -n "Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -0.33020600607735029 1 -0.3286992946484214 
		2 -0.32578416700135182 3 -0.32376399139470957 4 -0.32314546613520856 5 -0.32316415257588965 
		6 -0.32409367631048869 7 -0.33423007234823082 8 -0.35666353446413873 9 -0.3816365570691781 
		10 -0.39501715458569137 11 -0.39700588717127061 12 -0.39841982367690421 13 
		-0.39931083171224901 14 -0.39973273090516276 15 -0.39974087870270925 16 -0.39939180349062936 
		17 -0.39874288037430189 18 -0.39785204600576352 19 -0.39677754980097762 20 
		-0.39557773975467131 21 -0.39534020508085849 22 -0.39503504367717479 23 -0.39157102275984751 
		24 -0.38179729019924458 25 -0.36535332530181258 26 -0.34748394051731679 27 
		-0.33303401049252629 28 -0.32666436183030684 29 -0.32680108241280048 30 -0.32807679141050827 
		31 -0.32952165263000266 32 -0.33020600607735029;
createNode animCurveTL -n "Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0.8507267908877798 1 0.85444169384579949 
		2 0.86154407669736677 3 0.86635728009766066 4 0.86808200207097475 5 0.86924902624163025 
		6 0.869654403056073 7 0.86499068454822547 8 0.85499723519815629 9 0.84527459975166896 
		10 0.84073207756723667 11 0.84034635077507858 12 0.84005946824924627 13 0.83986533537278929 
		14 0.83975773337946136 15 0.83973043949036075 16 0.83977732047222819 17 0.83989240081154148 
		18 0.84006990634697276 19 0.8403042838805953 20 0.84059019700049209 21 0.84296570470475818 
		22 0.84756778488172502 23 0.85164858833475465 24 0.85236245366520969 25 0.85066596264047378 
		26 0.84952859480145049 27 0.84875493349555631 28 0.8481976787628891 29 0.8483287182846071 
		30 0.84923816881221059 31 0.85025059013977233 32 0.8507267908877798;
createNode animCurveTA -n "Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -29.385780402081803 1 -28.455234189779578 
		2 -26.597123492007121 3 -25.281053326391252 4 -24.805303497710753 5 -24.47228106046564 
		6 -24.341145787025038 7 -24.743596442696585 8 -25.577530032096298 9 -26.325069593910648 
		10 -26.655538463282333 11 -26.689955469076242 12 -26.707594138036633 13 -26.712197671123221 
		14 -26.707523122670629 15 -26.697326645444548 16 -26.685347154664758 17 -26.675288353847119 
		18 -26.670799124358407 19 -26.675452351519397 20 -26.692722343287578 21 -27.01949898236867 
		22 -27.688576003429539 23 -28.369478197542247 24 -28.914999363170381 25 -29.316894462359599 
		26 -29.595831147960357 27 -29.791696737858274 28 -29.933389010284749 29 -29.916641775828431 
		30 -29.720757658961535 31 -29.49431979222204 32 -29.385780402081803;
createNode animCurveTA -n "Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 62.958174689347601 1 63.162879665582579 
		2 63.549327372605113 3 63.804937652247993 4 63.893247648033004 5 63.955916726512328 
		6 63.984252603763785 7 64.315500424651106 8 65.049828897772798 9 65.807089765249813 
		10 66.174592329077313 11 66.204321646330698 12 66.231169387147972 13 66.253655531435271 
		14 66.270335363503207 15 66.279788448305382 16 66.280608107851961 17 66.271391428279728 
		18 66.250729833888101 19 66.217200272063295 20 66.169357062020296 21 65.662771142223207 
		22 64.608208714290143 23 63.539701046858163 24 63.002328062505029 25 62.92367077800693 
		26 62.86606910612069 27 62.828389059633558 28 62.800798255627043 29 62.809800038073924 
		30 62.865232220482817 31 62.928140120742889 32 62.958174689347601;
createNode animCurveTA -n "Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 65.616366301272222 1 66.29451819483134 
		2 67.656025858006217 3 68.620904925058497 4 68.981507460956635 5 69.294693052276784 
		6 69.54242617776697 7 71.047589923369515 8 74.159337713992073 9 77.349488793080951 
		10 78.959294281924258 11 79.176559257832977 12 79.34292198558795 13 79.459571800887176 
		14 79.527680855928693 15 79.548417799866073 16 79.522963497834326 17 79.452528818076345 
		18 79.338374462750664 19 79.181832752032435 20 78.984331192749224 21 78.079898161531474 
		22 76.238535098843968 23 74.058842553972298 24 71.976682039859327 25 69.791282673799742 
		26 67.47014414884346 27 65.575692691968968 28 64.680260913713369 29 64.712166436870746 
		30 65.046733271884648 31 65.431996524503177 32 65.616366301272222;
createNode animCurveTL -n "Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0.089531466712054461 1 0.096882741474896075 
		2 0.11122287654075706 3 0.12119839998926012 4 0.12476074451955527 5 0.12683497116416845 
		6 0.126797497185554 7 0.11371750888840666 8 0.084653263843397331 9 0.05313053464439918 
		10 0.036781278341008486 11 0.034716302832508747 12 0.03322081253092847 13 
		0.032253577523176202 14 0.031771549546135702 15 0.031730158716378583 16 0.032083572754697233 
		17 0.032784924014981696 18 0.0337865085137787 19 0.035039960151306671 20 
		0.036496402426880653 21 0.040159671487357967 22 0.047317508499348265 23 0.057038284068480043 
		24 0.068892141477767274 25 0.080621421483861588 26 0.089254412244333142 27 
		0.094087317283265859 28 0.094978391741186677 29 0.093521985067509944 30 0.091719709917957748 
		31 0.090182825113350878 32 0.089531466712054461;
createNode animCurveTL -n "Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -0.36630945286283184 1 -0.36733343776130351 
		2 -0.36942257118779653 3 -0.3709916283556795 4 -0.37148422269345666 5 -0.37127878370432721 
		6 -0.3700632872304187 7 -0.34974689789511587 8 -0.30915228215843521 9 -0.27121578594646678 
		10 -0.25366366114454564 11 -0.25161230167958254 12 -0.25006984890004574 13 
		-0.24900949575924158 14 -0.24840696280986066 15 -0.24824001595325512 16 -0.24848802105003912 
		17 -0.24913153836615579 18 -0.25015195925765071 19 -0.25153118702240673 20 
		-0.25325136344928806 21 -0.26234932331732297 22 -0.28122823337211289 23 -0.30271764624350267 
		24 -0.31902535470450838 25 -0.3329531428056749 26 -0.34958430411084818 27 
		-0.3637725205152485 28 -0.37020647799128847 29 -0.37006339248511116 30 -0.36868076246616005 
		31 -0.36707934623240407 32 -0.36630945286283184;
createNode animCurveTL -n "Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0.80887693548548756 1 0.80481077258736811 
		2 0.79667819273520779 3 0.79093600528936547 4 0.78889334015620793 5 0.78742718100432063 
		6 0.7867791697509583 7 0.78320257637091983 8 0.77498862286677395 9 0.76605083912651983 
		10 0.76158181015516024 11 0.76124786685111678 12 0.76092254612452781 13 0.76063198599234372 
		14 0.76040190821168752 15 0.76025772893260124 16 0.7602246541558304 17 0.76032775898998628 
		18 0.76059204993729668 19 0.76104250962394648 20 0.76170412353567429 21 0.76901234649410011 
		22 0.78407802433426099 23 0.79913994967638957 24 0.80693608225083069 25 0.80854991458730563 
		26 0.80973418603317826 27 0.81057570521315347 28 0.81119021676793712 29 0.81114583353426972 
		30 0.81032583311630524 31 0.80935091587039609 32 0.80887693548548756;
createNode animCurveTA -n "Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -35.087478750046408 1 -36.256562770565814 
		2 -38.536491821243388 3 -40.106973585539627 4 -40.66510656297563 5 -41.0555527071527 
		6 -41.213745890137865 7 -41.277619850898795 8 -41.518232555439866 9 -41.939679001262988 
		10 -42.201109593579545 11 -42.216090489352773 12 -42.241943561936083 13 -42.27290758259808 
		14 -42.303259737966201 15 -42.327323798990676 16 -42.339479185992055 17 -42.334171126260195 
		18 -42.305922169142171 19 -42.249345382999316 20 -42.159159604908183 21 -41.085467131522407 
		22 -38.928427458577033 23 -36.827729365930068 24 -35.604373383263891 25 -35.111226415376912 
		26 -34.764170979576271 27 -34.523503289743005 28 -34.348733297066353 29 -34.376662258515836 
		30 -34.640099266145675 31 -34.94272874694343 32 -35.087478750046408;
createNode animCurveTA -n "Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -66.472370131839597 1 -66.433624906976718 
		2 -66.336049393460073 3 -66.251043993608548 4 -66.216819139418689 5 -66.193599899578089 
		6 -66.187575770759722 7 -66.561554957786541 8 -67.372434914552983 9 -68.175331088006899 
		10 -68.554603099021548 11 -68.586959483755948 12 -68.613082484850409 13 -68.632619117569007 
		14 -68.645249705464096 15 -68.650674165916527 16 -68.648598217925851 17 -68.63871952471537 
		18 -68.620713793042754 19 -68.59422086332134 20 -68.558830840207307 21 -68.215290530953823 
		22 -67.487206387443294 23 -66.736873261687307 24 -66.401693495678131 25 -66.426735886712436 
		26 -66.441476007221951 27 -66.454187771676132 28 -66.463084126453921 29 -66.466987806252462 
		30 -66.469594165464954 31 -66.471551500732005 32 -66.472370131839597;
createNode animCurveTA -n "Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -83.863669147879861 1 -82.943347398110575 
		2 -81.153632730248646 3 -79.930397773336381 4 -79.48604303426103 5 -79.114726781930287 
		6 -78.840097333806185 7 -76.914230611218372 8 -72.827191403482601 9 -68.567037295672179 
		10 -66.412338755736997 11 -66.149640901302362 12 -65.943066640872019 13 -65.793369668730065 
		14 -65.701272605441389 15 -65.667458083356649 16 -65.692558710382258 17 -65.777145737700195 
		18 -65.921716183966566 19 -66.126678104690811 20 -66.392333644866596 21 -67.996646519431096 
		22 -71.228867611822864 23 -74.731534980065163 24 -77.448951979955879 25 -79.728328631193079 
		26 -82.119276867751125 27 -84.060067790434573 28 -84.98968388151313 29 -84.947068596105211 
		30 -84.54525349029791 31 -84.084094741995543 32 -83.863669147879861;
createNode animCurveTL -n "ndr_Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.5799571818574061;
createNode animCurveTL -n "ndr_Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 2.1296110275135671;
createNode animCurveTL -n "ndr_Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 2.0696046407532309;
createNode animCurveTA -n "ndr_Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -44.889076788073439;
createNode animCurveTA -n "ndr_Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 71.289995585927571;
createNode animCurveTA -n "ndr_Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 50.619719123253631;
createNode animCurveTL -n "ndr_Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 2.5330905047330146;
createNode animCurveTL -n "ndr_Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 2.0768417541934041;
createNode animCurveTL -n "ndr_Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 2.0481292103665369;
createNode animCurveTA -n "ndr_Left_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -36.33267118790765;
createNode animCurveTA -n "ndr_Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -76.683613894212968;
createNode animCurveTA -n "ndr_Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -83.339653964504663;
createNode animCurveTL -n "animCurveTL323";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.578730476483856 32 0.578730476483856;
createNode animCurveTL -n "animCurveTL324";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.3751169572549602 32 -1.3751169572549602;
createNode animCurveTL -n "animCurveTL325";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.21739896228115529 32 -0.21739896228115529;
createNode animCurveTL -n "animCurveTL326";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.48508072212835623 32 -0.48508072212835623;
createNode animCurveTL -n "animCurveTL327";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.3461376073222053 32 -1.3461376073222053;
createNode animCurveTL -n "animCurveTL328";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.22135527095932556 32 -0.22135527095932556;
createNode animCurveTA -n "ndr_R_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 12.253734489678925;
createNode animCurveTA -n "ndr_R_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -65.746751280844975;
createNode animCurveTA -n "ndr_R_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_L_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -0.061808866237340665;
createNode animCurveTA -n "ndr_L_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -59.058178941076754;
createNode animCurveTA -n "ndr_L_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 16.57914742975785;
createNode animCurveTA -n "ndr_R_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 8.5572674112203639;
createNode animCurveTA -n "ndr_L_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 15.711328223519061;
createNode animCurveTA -n "ndr_R_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_R_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_R_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_L_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_L_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_L_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -10.597736793341939;
createNode animCurveTA -n "ndr_Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 64.03458729655091;
createNode animCurveTA -n "ndr_Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -3.5980180414270868;
createNode animCurveTA -n "ndr_Middle_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_Middle_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_Middle_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 56.683882055276058;
createNode animCurveTA -n "ndr_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 13.994403295754109;
createNode animCurveTA -n "ndr_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 13.994403295754109;
createNode animCurveTA -n "ndr_Middle_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_Middle_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_Middle_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 44.839776244285055;
createNode animCurveTA -n "ndr_Jaw_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_Jaw_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_Jaw_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "animCurveTA884";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.55766507474896454 6 -0.57681454945791288 
		10 -1.236975047779568 24 -1.2145118372202401 28 -0.87616976080293729 32 -0.55766507474896454;
	setAttr -s 6 ".kit[0:5]"  3 1 1 1 9 3;
	setAttr -s 6 ".kot[0:5]"  3 1 1 1 9 3;
	setAttr -s 6 ".kix[1:5]"  0.99996471405029297 0.99999731779098511 
		0.9999774694442749 0.9990772008895874 1;
	setAttr -s 6 ".kiy[1:5]"  -0.0083987731486558914 -0.0023195310495793819 
		0.0067168646492063999 0.042950849980115891 0;
	setAttr -s 6 ".kox[1:5]"  0.99996471405029297 0.99999731779098511 
		0.9999774694442749 0.9990772008895874 1;
	setAttr -s 6 ".koy[1:5]"  -0.0083987731486558914 -0.0023195301182568073 
		0.0067168651148676872 0.042950849980115891 0;
createNode animCurveTA -n "animCurveTA885";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.0198239624003347 6 -2.0903572641597776 
		10 -5.4504057683347451 24 -5.4217609806336728 28 -2.1749789963697106 32 -2.0198239624003347;
	setAttr -s 6 ".kit[0:5]"  3 1 1 3 1 3;
	setAttr -s 6 ".kot[0:5]"  3 1 1 3 1 3;
	setAttr -s 6 ".kix[1:5]"  0.99976879358291626 0.99875479936599731 
		1 0.99923253059387207 1;
	setAttr -s 6 ".kiy[1:5]"  -0.021502315998077393 -0.049888432025909424 
		0 0.03917115181684494 0;
	setAttr -s 6 ".kox[1:5]"  0.99976879358291626 0.99875479936599731 
		1 0.99923253059387207 1;
	setAttr -s 6 ".koy[1:5]"  -0.021502315998077393 -0.049888424575328827 
		0 0.03917115181684494 0;
createNode animCurveTA -n "animCurveTA886";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 7.5513277031901893 6 7.5466374935089897 
		10 7.3353787742734253 20 7.3353787742734253 24 7.5499791124447633 32 7.5513277031901893;
	setAttr -s 6 ".kit[0:5]"  3 1 1 1 1 3;
	setAttr -s 6 ".kot[0:5]"  3 1 1 1 1 3;
	setAttr -s 6 ".kix[1:5]"  0.99999880790710449 0.9999995231628418 
		0.99999868869781494 0.99999994039535522 1;
	setAttr -s 6 ".kiy[1:5]"  -0.0015333611518144608 -0.00099428894463926554 
		0.0016065838281065226 0.00033112938399426639 0;
	setAttr -s 6 ".kox[1:5]"  0.99999880790710449 0.9999995231628418 
		0.99999868869781494 0.99999994039535522 1;
	setAttr -s 6 ".koy[1:5]"  -0.0015333660412579775 -0.00099428801331669092 
		0.0016065835952758789 0.00033112935489043593 0;
createNode animCurveTA -n "animCurveTA887";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.95273800592490188 6 1.1949158726017999 
		10 18.829269962708576 15 19.047819429433172 20 16.628895002917908 24 7.0084518016860722 
		28 0.87957077920152749 32 0.95273800592490188;
	setAttr -s 8 ".kit[0:7]"  3 1 1 9 1 9 3 
		3;
	setAttr -s 8 ".kot[0:7]"  3 1 1 9 1 9 3 
		3;
	setAttr -s 8 ".kix[1:7]"  0.99655246734619141 0.97392737865447998 
		0.99342852830886841 0.92444676160812378 0.69630557298660278 1 1;
	setAttr -s 8 ".kiy[1:7]"  0.08296521008014679 0.22686003148555756 
		-0.11445426195859909 -0.38131117820739746 -0.71774548292160034 0 0;
	setAttr -s 8 ".kox[1:7]"  0.99655246734619141 0.97392731904983521 
		0.99342852830886841 0.924446702003479 0.69630557298660278 1 1;
	setAttr -s 8 ".koy[1:7]"  0.082965187728404999 0.2268601655960083 
		-0.11445426195859909 -0.38131123781204224 -0.71774548292160034 0 0;
createNode animCurveTA -n "animCurveTA888";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.41955881507249093 10 0.31216944232808796 
		15 -6.0037363824290102 20 -6.0037363824290102 24 -2.770439936679427 28 0.43279927470668644 
		32 0.41955881507249093;
	setAttr -s 7 ".kit[0:6]"  3 1 1 1 1 3 3;
	setAttr -s 7 ".kot[0:6]"  3 1 1 1 1 3 3;
	setAttr -s 7 ".kix[1:6]"  0.99946939945220947 0.99267256259918213 
		0.9945148229598999 0.89220166206359863 1 1;
	setAttr -s 7 ".kiy[1:6]"  -0.032571513205766678 -0.12083552032709122 
		0.10459599643945694 0.45163720846176147 0 0;
	setAttr -s 7 ".kox[1:6]"  0.99946939945220947 0.99267256259918213 
		0.9945148229598999 0.89220166206359863 1 1;
	setAttr -s 7 ".koy[1:6]"  -0.032571513205766678 -0.12083539366722107 
		0.10459597408771515 0.45163720846176147 0 0;
createNode animCurveTA -n "animCurveTA889";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.6634293801101623 10 1.6214360266354397 
		15 -0.30458770080736486 20 -0.30458770080736486 24 0.86545910645245694 28 
		1.6662227833676611 32 1.6634293801101623;
	setAttr -s 7 ".kit[1:6]"  1 9 9 1 3 3;
	setAttr -s 7 ".kot[1:6]"  1 9 9 1 3 3;
	setAttr -s 7 ".kix[1:6]"  0.9999651312828064 0.994953453540802 
		0.99769121408462524 0.98853659629821777 1 1;
	setAttr -s 7 ".kiy[1:6]"  -0.008351130411028862 -0.1003374382853508 
		0.06791340559720993 0.15098156034946442 0 0;
	setAttr -s 7 ".kox[1:6]"  0.9999651312828064 0.994953453540802 
		0.99769121408462524 0.98853659629821777 1 1;
	setAttr -s 7 ".koy[1:6]"  -0.008351130411028862 -0.1003374382853508 
		0.06791340559720993 0.15098157525062561 0 0;
createNode animCurveTA -n "animCurveTA890";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.0598705588951514 3 -6.3459498001189099 
		6 4.8714700432790456 10 11.585389647444966 20 4.8714700432790456 24 1.107962030853916 
		28 4.7871034605416334 32 1.0598705588951514;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA891";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.26280824457411484 3 -1.9963037400559176 
		6 11.783606204137085 10 10.333092121253337 20 11.783606204137085 24 2.8983658144265312 
		28 -5.037822461176523 32 0.26280824457411484;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA892";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 6.5086084195154994 3 6.3786479652115133 
		6 7.5423825101935913 10 7.4167347966497221 20 7.5423825101935913 24 6.6727974003941704 
		28 6.1239022477803227 32 6.5086084195154994;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA893";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.47197901174667056 3 -1.6329203501433724 
		6 -2.0923016578577855 10 -0.62491185199516064 28 -0.62731213752257731 32 
		0.47197901174667056;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 3;
	setAttr -s 6 ".kot[0:5]"  3 1 3 1 1 3;
	setAttr -s 6 ".kix[1:5]"  0.99066120386123657 1 0.99997639656066895 
		0.99999624490737915 1;
	setAttr -s 6 ".kiy[1:5]"  -0.1363464742898941 0 0.0068697370588779449 
		0.0027316983323544264 0;
	setAttr -s 6 ".kox[1:5]"  0.99066120386123657 1 0.99997639656066895 
		0.99999624490737915 1;
	setAttr -s 6 ".koy[1:5]"  -0.13634645938873291 0 0.0068697305396199226 
		0.0027316967025399208 0;
createNode animCurveTA -n "animCurveTA894";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.6163460272109138 6 1.5868457645631084 
		10 0.43729114985046524 20 0.43729114985046524 24 1.5924579241051695 32 1.6163460272109138;
	setAttr -s 6 ".kit[0:5]"  3 1 9 9 1 3;
	setAttr -s 6 ".kot[0:5]"  3 1 9 9 1 3;
	setAttr -s 6 ".kix[1:5]"  0.99993312358856201 0.99907708168029785 
		0.99906802177429199 0.99996834993362427 1;
	setAttr -s 6 ".kiy[1:5]"  -0.011563016101717949 -0.042953565716743469 
		0.04316287487745285 0.0079589663073420525 0;
	setAttr -s 6 ".kox[1:5]"  0.99993312358856201 0.99907708168029785 
		0.99906802177429199 0.99996834993362427 1;
	setAttr -s 6 ".koy[1:5]"  -0.01156301237642765 -0.042953565716743469 
		0.04316287487745285 0.0079589635133743286 0;
createNode animCurveTA -n "animCurveTA895";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.9660530560192304 6 1.9688842878935504 
		10 2.0392151659083639 20 2.0392151659083639 24 1.9840981620606046 28 1.970241689140211 
		32 1.9660530560192304;
	setAttr -s 7 ".kit[0:6]"  3 1 1 1 1 1 3;
	setAttr -s 7 ".kot[0:6]"  3 1 1 1 1 1 3;
	setAttr -s 7 ".kix[1:6]"  0.99999988079071045 0.9999995231628418 
		0.99999910593032837 0.99999284744262695 0.9999997615814209 1;
	setAttr -s 7 ".kiy[1:6]"  0.00045281130587682128 0.00099385133944451809 
		-0.001324824639596045 -0.0037882155738770962 -0.00068935711169615388 0;
	setAttr -s 7 ".kox[1:6]"  0.99999988079071045 0.9999995231628418 
		0.99999910593032837 0.99999284744262695 0.9999997615814209 1;
	setAttr -s 7 ".koy[1:6]"  0.00045281130587682128 0.00099385122302919626 
		-0.001324824639596045 -0.0037882141768932343 -0.00068935711169615388 0;
createNode animCurveTA -n "ndr_Middle_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_Middle_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_Middle_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 77.428435288625664;
createNode animCurveTA -n "ndr_Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -12.533800869393716;
createNode animCurveTA -n "ndr_Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 38.757782523984616;
createNode animCurveTA -n "ndr_Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -17.577333162534281;
createNode animCurveTA -n "ndr_Middle_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_Middle_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "ndr_Middle_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 37.656527956664149;
createNode clipLibrary -n "clipLibrary1";
	setAttr -s 162 ".cel[0].cev";
	setAttr ".cd[0].cm" -type "characterMapping" 162 "Extra_Attributes.translateX" 
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
		2 15 "Left_Ball_Hoop.rotateZ" 2 16 "Right_Knee_Hoop.translateX" 
		1 15 "Right_Knee_Hoop.translateY" 1 16 "Right_Knee_Hoop.translateZ" 
		1 17 "Left_Knee_Hoop.translateX" 1 18 "Left_Knee_Hoop.translateY" 
		1 19 "Left_Knee_Hoop.translateZ" 1 20 "Character_Hoop.translateX" 
		1 21 "Character_Hoop.translateY" 1 22 "Character_Hoop.translateZ" 
		1 23 "Character_Hoop.rotateX" 2 17 "Character_Hoop.rotateY" 
		2 18 "Character_Hoop.rotateZ" 2 19 "R_Hip_Fk.rotateX" 2 
		20 "R_Hip_Fk.rotateY" 2 21 "R_Hip_Fk.rotateZ" 2 22 "R_Knee_Fk.rotateZ" 
		2 23 "R_Ankle_Fk.rotateX" 2 24 "R_Ankle_Fk.rotateY" 2 
		25 "R_Ankle_Fk.rotateZ" 2 26 "R_Ball_Fk.rotateX" 2 27 "R_Ball_Fk.rotateY" 
		2 28 "R_Ball_Fk.rotateZ" 2 29 "L_Hip_Fk.rotateX" 2 
		30 "L_Hip_Fk.rotateY" 2 31 "L_Hip_Fk.rotateZ" 2 32 "L_Knee_Fk.rotateZ" 
		2 33 "L_Ankle_Fk.rotateX" 2 34 "L_Ankle_Fk.rotateY" 2 
		35 "L_Ankle_Fk.rotateZ" 2 36 "L_Ball_Fk.rotateX" 2 37 "L_Ball_Fk.rotateY" 
		2 38 "L_Ball_Fk.rotateZ" 2 39 "R_Ball_IK_Fk.rotateX" 2 
		40 "R_Ball_IK_Fk.rotateY" 2 41 "R_Ball_IK_Fk.rotateZ" 2 
		42 "L_Ball_IK_Fk.rotateX" 2 43 "L_Ball_IK_Fk.rotateY" 2 
		44 "L_Ball_IK_Fk.rotateZ" 2 45 "Right_Arm_Hoop.translateX" 1 
		24 "Right_Arm_Hoop.translateY" 1 25 "Right_Arm_Hoop.translateZ" 
		1 26 "Right_Arm_Hoop.rotateX" 2 46 "Right_Arm_Hoop.rotateY" 
		2 47 "Right_Arm_Hoop.rotateZ" 2 48 "Left_Arm_Hoop.translateX" 
		1 27 "Left_Arm_Hoop.translateY" 1 28 "Left_Arm_Hoop.translateZ" 
		1 29 "Left_Arm_Hoop.rotateX" 2 49 "Left_Arm_Hoop.rotateY" 
		2 50 "Left_Arm_Hoop.rotateZ" 2 51 "Right_Arm_World.translateX" 
		1 30 "Right_Arm_World.translateY" 1 31 "Right_Arm_World.translateZ" 
		1 32 "Right_Arm_World.rotateX" 2 52 "Right_Arm_World.rotateY" 
		2 53 "Right_Arm_World.rotateZ" 2 54 "Left_Arm_World.translateX" 
		1 33 "Left_Arm_World.translateY" 1 34 "Left_Arm_World.translateZ" 
		1 35 "Left_Arm_World.rotateX" 2 55 "Left_Arm_World.rotateY" 
		2 56 "Left_Arm_World.rotateZ" 2 57 "Left_Elbow_Hoop.translateX" 
		1 36 "Left_Elbow_Hoop.translateY" 1 37 "Left_Elbow_Hoop.translateZ" 
		1 38 "Right_Elbow_Hoop.translateX" 1 39 "Right_Elbow_Hoop.translateY" 
		1 40 "Right_Elbow_Hoop.translateZ" 1 41 "R_FK_Shoulder.rotateX" 
		2 58 "R_FK_Shoulder.rotateY" 2 59 "R_FK_Shoulder.rotateZ" 
		2 60 "L_FK_Shoulder.rotateX" 2 61 "L_FK_Shoulder.rotateY" 
		2 62 "L_FK_Shoulder.rotateZ" 2 63 "R_FK_Elbow.rotateZ" 
		2 64 "L_FK_Elbow.rotateZ" 2 65 "R_FK_Wrist.rotateX" 2 
		66 "R_FK_Wrist.rotateY" 2 67 "R_FK_Wrist.rotateZ" 2 68 "L_FK_Wrist.rotateX" 
		2 69 "L_FK_Wrist.rotateY" 2 70 "L_FK_Wrist.rotateZ" 2 
		71 "Thumb_Base_L.rotateX" 2 72 "Thumb_Base_L.rotateY" 2 
		73 "Thumb_Base_L.rotateZ" 2 74 "Middle_Base_L.rotateX" 2 
		75 "Middle_Base_L.rotateY" 2 76 "Middle_Base_L.rotateZ" 2 
		77 "Pelvis.rotateX" 2 78 "Pelvis.rotateY" 2 79 "Pelvis.rotateZ" 
		2 80 "Thumb_R.rotateX" 2 81 "Thumb_R.rotateY" 2 82 "Thumb_R.rotateZ" 
		2 83 "Thumb_L.rotateX" 2 84 "Thumb_L.rotateY" 2 85 "Thumb_L.rotateZ" 
		2 86 "Middle_R.rotateX" 2 87 "Middle_R.rotateY" 2 
		88 "Middle_R.rotateZ" 2 89 "Jaw.rotateX" 2 90 "Jaw.rotateY" 
		2 91 "Jaw.rotateZ" 2 92 "Spine_2.rotateX" 2 93 "Spine_2.rotateY" 
		2 94 "Spine_2.rotateZ" 2 95 "Neck.rotateX" 2 96 "Neck.rotateY" 
		2 97 "Neck.rotateZ" 2 98 "Head.rotateX" 2 99 "Head.rotateY" 
		2 100 "Head.rotateZ" 2 101 "Spine_1.rotateX" 2 102 "Spine_1.rotateY" 
		2 103 "Spine_1.rotateZ" 2 104 "Middle_Base_R.rotateX" 2 
		105 "Middle_Base_R.rotateY" 2 106 "Middle_Base_R.rotateZ" 2 
		107 "Thumb_Base_R.rotateX" 2 108 "Thumb_Base_R.rotateY" 2 
		109 "Thumb_Base_R.rotateZ" 2 110 "Middle_L.rotateX" 2 111 "Middle_L.rotateY" 
		2 112 "Middle_L.rotateZ" 2 113  ;
	setAttr ".cd[0].cim" -type "Int32Array" 162 0 1 2 3
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
		 158 159 160 161 ;
createNode lightLinker -n "lightLinker1";
select -ne :time1;
	setAttr ".o" 1;
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
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -k on ".ra";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr -k on ".esr";
	setAttr -k on ".ors";
	setAttr -k on ".gama";
	setAttr -k on ".left";
	setAttr -k on ".bot";
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
	setAttr -k on ".soll";
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
	setAttr -k on ".rlen";
	setAttr -k on ".rlpn";
	setAttr -k on ".rgpn";
	setAttr -k on ".rlsd";
	setAttr -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
select -ne :characterPartition;
select -ne :hyperGraphLayout;
	setAttr ".cch" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".img" -type "string" "";
	setAttr ".ims" 1;
select -ne :ikSystem;
connectAttr "ndr_sway_leftSource.st" "clipLibrary1.st[0]";
connectAttr "ndr_sway_leftSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL288.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "ndr_Extra_Attributes_translateY.a" "clipLibrary1.cel[0].cev[1].cevr"
		;
connectAttr "ndr_Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "ndr_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "ndr_Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "ndr_Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr"
		;
connectAttr "ndr_Hoop_Root_IK_FK_RFoot.a" "clipLibrary1.cel[0].cev[6].cevr"
		;
connectAttr "ndr_Hoop_Root_IK_FK_LFoot.a" "clipLibrary1.cel[0].cev[7].cevr"
		;
connectAttr "ndr_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary1.cel[0].cev[8].cevr"
		;
connectAttr "ndr_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary1.cel[0].cev[9].cevr"
		;
connectAttr "ndr_Hoop_Root_IK_FK_RArm.a" "clipLibrary1.cel[0].cev[10].cevr"
		;
connectAttr "ndr_Hoop_Root_IK_FK_LArm.a" "clipLibrary1.cel[0].cev[11].cevr"
		;
connectAttr "ndr_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "ndr_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "ndr_Hoop_Root_rotateX.a" "clipLibrary1.cel[0].cev[14].cevr"
		;
connectAttr "ndr_Hoop_Root_rotateY.a" "clipLibrary1.cel[0].cev[15].cevr"
		;
connectAttr "ndr_Hoop_Root_rotateZ.a" "clipLibrary1.cel[0].cev[16].cevr"
		;
connectAttr "ndr_Hoop_Root_translateX.a" "clipLibrary1.cel[0].cev[17].cevr"
		;
connectAttr "ndr_Hoop_Root_translateY.a" "clipLibrary1.cel[0].cev[18].cevr"
		;
connectAttr "ndr_Hoop_Root_translateZ.a" "clipLibrary1.cel[0].cev[19].cevr"
		;
connectAttr "ndr_Right_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[20].cevr"
		;
connectAttr "ndr_Right_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[21].cevr"
		;
connectAttr "ndr_Right_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[22].cevr"
		;
connectAttr "ndr_Right_Foot_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[23].cevr"
		;
connectAttr "ndr_Right_Foot_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[24].cevr"
		;
connectAttr "ndr_Right_Foot_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[25].cevr"
		;
connectAttr "ndr_Left_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[26].cevr"
		;
connectAttr "ndr_Left_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[27].cevr"
		;
connectAttr "ndr_Left_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[28].cevr"
		;
connectAttr "ndr_Left_Foot_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[29].cevr"
		;
connectAttr "ndr_Left_Foot_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[30].cevr"
		;
connectAttr "ndr_Left_Foot_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[31].cevr"
		;
connectAttr "ndr_Right_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[32].cevr"
		;
connectAttr "ndr_Right_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[33].cevr"
		;
connectAttr "ndr_Right_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[34].cevr"
		;
connectAttr "ndr_Left_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[35].cevr"
		;
connectAttr "ndr_Left_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[36].cevr"
		;
connectAttr "ndr_Left_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[37].cevr"
		;
connectAttr "ndr_Right_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[38].cevr"
		;
connectAttr "ndr_Right_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[39].cevr"
		;
connectAttr "ndr_Right_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[40].cevr"
		;
connectAttr "ndr_Left_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[41].cevr"
		;
connectAttr "ndr_Left_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[42].cevr"
		;
connectAttr "ndr_Left_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[43].cevr"
		;
connectAttr "ndr_Character_Hoop_translateX.a" "clipLibrary1.cel[0].cev[44].cevr"
		;
connectAttr "ndr_Character_Hoop_translateY.a" "clipLibrary1.cel[0].cev[45].cevr"
		;
connectAttr "animCurveTL310.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA808.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA809.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA810.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "ndr_R_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "ndr_R_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "ndr_R_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "ndr_R_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[53].cevr"
		;
connectAttr "ndr_R_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[54].cevr"
		;
connectAttr "ndr_R_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[55].cevr"
		;
connectAttr "ndr_R_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[56].cevr"
		;
connectAttr "ndr_R_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[57].cevr"
		;
connectAttr "ndr_R_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[58].cevr"
		;
connectAttr "ndr_R_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[59].cevr"
		;
connectAttr "ndr_L_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "ndr_L_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "ndr_L_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "ndr_L_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[63].cevr"
		;
connectAttr "ndr_L_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[64].cevr"
		;
connectAttr "ndr_L_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[65].cevr"
		;
connectAttr "ndr_L_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[66].cevr"
		;
connectAttr "ndr_L_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[67].cevr"
		;
connectAttr "ndr_L_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[68].cevr"
		;
connectAttr "ndr_L_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[69].cevr"
		;
connectAttr "ndr_R_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[70].cevr"
		;
connectAttr "ndr_R_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[71].cevr"
		;
connectAttr "ndr_R_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[72].cevr"
		;
connectAttr "ndr_L_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[73].cevr"
		;
connectAttr "ndr_L_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[74].cevr"
		;
connectAttr "ndr_L_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[75].cevr"
		;
connectAttr "Right_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[76].cevr"
		;
connectAttr "Right_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[77].cevr"
		;
connectAttr "Right_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[78].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[79].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[80].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[81].cevr"
		;
connectAttr "Left_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "Left_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "Left_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "ndr_Right_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "ndr_Right_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "ndr_Right_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "ndr_Right_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "ndr_Right_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "ndr_Right_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[93].cevr"
		;
connectAttr "ndr_Left_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[94].cevr"
		;
connectAttr "ndr_Left_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[95].cevr"
		;
connectAttr "ndr_Left_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[96].cevr"
		;
connectAttr "ndr_Left_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[97].cevr"
		;
connectAttr "ndr_Left_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[98].cevr"
		;
connectAttr "ndr_Left_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[99].cevr"
		;
connectAttr "animCurveTL323.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL324.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL325.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL326.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL327.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL328.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "ndr_R_FK_Shoulder_rotateX.a" "clipLibrary1.cel[0].cev[106].cevr"
		;
connectAttr "ndr_R_FK_Shoulder_rotateY.a" "clipLibrary1.cel[0].cev[107].cevr"
		;
connectAttr "ndr_R_FK_Shoulder_rotateZ.a" "clipLibrary1.cel[0].cev[108].cevr"
		;
connectAttr "ndr_L_FK_Shoulder_rotateX.a" "clipLibrary1.cel[0].cev[109].cevr"
		;
connectAttr "ndr_L_FK_Shoulder_rotateY.a" "clipLibrary1.cel[0].cev[110].cevr"
		;
connectAttr "ndr_L_FK_Shoulder_rotateZ.a" "clipLibrary1.cel[0].cev[111].cevr"
		;
connectAttr "ndr_R_FK_Elbow_rotateZ.a" "clipLibrary1.cel[0].cev[112].cevr"
		;
connectAttr "ndr_L_FK_Elbow_rotateZ.a" "clipLibrary1.cel[0].cev[113].cevr"
		;
connectAttr "ndr_R_FK_Wrist_rotateX.a" "clipLibrary1.cel[0].cev[114].cevr"
		;
connectAttr "ndr_R_FK_Wrist_rotateY.a" "clipLibrary1.cel[0].cev[115].cevr"
		;
connectAttr "ndr_R_FK_Wrist_rotateZ.a" "clipLibrary1.cel[0].cev[116].cevr"
		;
connectAttr "ndr_L_FK_Wrist_rotateX.a" "clipLibrary1.cel[0].cev[117].cevr"
		;
connectAttr "ndr_L_FK_Wrist_rotateY.a" "clipLibrary1.cel[0].cev[118].cevr"
		;
connectAttr "ndr_L_FK_Wrist_rotateZ.a" "clipLibrary1.cel[0].cev[119].cevr"
		;
connectAttr "ndr_Thumb_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[120].cevr"
		;
connectAttr "ndr_Thumb_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[121].cevr"
		;
connectAttr "ndr_Thumb_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[122].cevr"
		;
connectAttr "ndr_Middle_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[123].cevr"
		;
connectAttr "ndr_Middle_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[124].cevr"
		;
connectAttr "ndr_Middle_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[125].cevr"
		;
connectAttr "ndr_Pelvis_rotateX.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "ndr_Pelvis_rotateY.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "ndr_Pelvis_rotateZ.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "ndr_Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "ndr_Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "ndr_Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "ndr_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "ndr_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "ndr_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "ndr_Middle_R_rotateX.a" "clipLibrary1.cel[0].cev[135].cevr"
		;
connectAttr "ndr_Middle_R_rotateY.a" "clipLibrary1.cel[0].cev[136].cevr"
		;
connectAttr "ndr_Middle_R_rotateZ.a" "clipLibrary1.cel[0].cev[137].cevr"
		;
connectAttr "ndr_Jaw_rotateX.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "ndr_Jaw_rotateY.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "ndr_Jaw_rotateZ.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA884.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA885.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA886.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA887.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA888.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA889.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA890.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA891.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA892.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA893.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA894.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA895.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "ndr_Middle_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[153].cevr"
		;
connectAttr "ndr_Middle_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[154].cevr"
		;
connectAttr "ndr_Middle_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[155].cevr"
		;
connectAttr "ndr_Thumb_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[156].cevr"
		;
connectAttr "ndr_Thumb_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[157].cevr"
		;
connectAttr "ndr_Thumb_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[158].cevr"
		;
connectAttr "ndr_Middle_L_rotateX.a" "clipLibrary1.cel[0].cev[159].cevr"
		;
connectAttr "ndr_Middle_L_rotateY.a" "clipLibrary1.cel[0].cev[160].cevr"
		;
connectAttr "ndr_Middle_L_rotateZ.a" "clipLibrary1.cel[0].cev[161].cevr"
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
// End of ndr_sway_left.ma
