//Maya ASCII 4.0 scene
//Name: mrg_loco_walk.ma
//Last modified: Tue, Oct 01, 2002 05:22:29 PM
requires maya "4.0";
requires "p3dmayaexp" "18.5";
requires "p3dSimpleShader" "18.5";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_loco_walkSource";
	setAttr ".ihi" 0;
	setAttr ".du" 25;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 4 0 13 1 25 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 17 0 25 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
	setAttr ".pst" 4;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -0.0042538045267426321 1 -0.0042538045267426321 
		2 -0.0042538045267426321 3 -0.0042538045267426321 4 -0.0042538045267426321 
		5 -0.0042538045267426321 6 -0.0042538045267426321 7 -0.0042538045267426321 
		8 -0.0042538045267426321 9 -0.0042538045267426321 10 -0.0042538045267426321 
		11 -0.0042538045267426321 12 -0.0042538045267426321 13 -0.0042538045267426321 
		14 -0.0042538045267426321 15 -0.0042538045267426321 16 -0.0042538045267426321 
		17 -0.0042538045267426321 18 -0.0042538045267426321 19 -0.0042538045267426321 
		20 -0.0042538045267426321 21 -0.0042538045267426321 22 -0.0042538045267426321 
		23 -0.0042538045267426321 24 -0.0042538045267426321 25 -0.0042538045267426321;
	setAttr -s 26 ".kit[0:25]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 26 ".kot[0:25]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "animCurveTL127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0;
	setAttr -s 26 ".kit[0:25]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 26 ".kot[0:25]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -0.01320860630851238 1 0.029469516690570706 
		2 0.071753914901833207 3 0.1148257614677676 4 0.15986622953086643 5 0.20903447976776246 
		6 0.26108582494479987 7 0.31209566633903829 8 0.35813940522753723 9 0.39754985365231643 
		10 0.4326270093293425 11 0.46539705204659643 12 0.49788616159205867 13 0.52930669988661838 
		14 0.55881771618392184 15 0.58836542127108604 16 0.6198960259352283 17 0.65535574096346527 
		18 0.69679832425979427 19 0.74322857865036329 20 0.79201928230551399 21 0.8405432133955888 
		22 0.88859086037691026 23 0.93739971201012695 24 0.98651304692207054 25 1.0354741437395723;
	setAttr -s 26 ".kit[0:25]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 26 ".kot[0:25]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTA -n "animCurveTA310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0;
	setAttr -s 26 ".kit[0:25]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 26 ".kot[0:25]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 3;
createNode animCurveTU -n "animCurveTU25";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTU -n "animCurveTU26";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTU -n "animCurveTU27";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTU -n "animCurveTU28";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTU -n "mrg_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA311";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA312";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA313";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL129";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL130";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL131";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL132";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.0824301661906061 4 -0.0824301661906061 
		8 -0.0824301661906061 12 -0.0824301661906061 17 -0.0824301661906061 21 -0.0824301661906061 
		25 -0.0824301661906061;
	setAttr -s 7 ".kit[3:6]"  9 3 3 3;
	setAttr -s 7 ".kot[3:6]"  9 3 3 3;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL133";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.098738061346252126 4 0.1986270110550338 
		8 0.21580861452230996 12 0.12901080546558155 17 0.098738061346252126 21 0.098738061346252126 
		25 0.098738061346252126;
	setAttr -s 7 ".kit[1:6]"  1 1 1 3 3 3;
	setAttr -s 7 ".kot[1:6]"  1 1 1 3 3 3;
	setAttr -s 7 ".kix[1:6]"  0.021233890205621719 0.044602829962968826 
		0.020876806229352951 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0.9997745156288147 -0.9990047812461853 
		-0.99978208541870117 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.02123415470123291 0.044602643698453903 
		0.020877229049801826 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0.9997745156288147 -0.9990047812461853 
		-0.9997820258140564 0 0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL134";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.2791985960448875 4 -0.069920876718234104 
		8 0.45388315189222972 12 0.86534385708374606 17 1.0202316507433113 21 1.0202316507433113 
		25 1.020448970452952;
	setAttr -s 7 ".kit[1:6]"  1 1 1 3 3 3;
	setAttr -s 7 ".kot[1:6]"  1 1 1 3 3 3;
	setAttr -s 7 ".kix[1:6]"  0.0030499065760523081 0.0021571461111307144 
		0.0049544237554073334 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0.99999535083770752 0.99999767541885376 
		0.99998772144317627 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.0030499384738504887 0.0021572185214608908 
		0.0049543972127139568 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0.99999535083770752 0.99999767541885376 
		0.99998772144317627 0 0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA314";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 26.806670006734159 8 26.806670006734159 
		12 -23.266155566386427 17 -0.44600127297452896 21 -0.44600127297452896 25 
		0;
	setAttr -s 7 ".kit[3:6]"  9 3 3 3;
	setAttr -s 7 ".kot[3:6]"  9 3 3 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA315";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.3542804462764078 4 1.3542804462764078 
		8 1.3542804462764078 12 1.3542804462763982 17 1.3542804462763951 21 1.3542804462763951 
		25 1.3542804462764078;
	setAttr -s 7 ".kit[3:6]"  9 3 3 3;
	setAttr -s 7 ".kot[3:6]"  9 3 3 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA316";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 12 2.0013528718349399e-016 
		17 -1.2508455448968377e-017 21 -1.2508455448968377e-017 25 0;
	setAttr -s 7 ".kit[3:6]"  9 3 3 3;
	setAttr -s 7 ".kot[3:6]"  9 3 3 3;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.075409280333859782 4 0.075409280333859782 
		8 0.075409280333859782 12 0.075409280333859782 17 0.075409280333859782 21 
		0.075409280333859782 25 0.075409280333859782;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL136";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.11720892593478788 4 0.097593247320304444 
		8 0.097593247320304444 12 0.097593247320304444 17 0.16179818663161025 21 
		0.17897979009888623 25 0.11720892593478788;
	setAttr -s 7 ".kit[4:6]"  9 9 3;
	setAttr -s 7 ".kot[4:6]"  9 9 3;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL137";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.32938223676987038 4 0.35229104139290529 
		8 0.35229104139290529 12 0.35229104139290529 17 0.46056296769580152 21 0.97082876621484815 
		25 1.5978185451187847;
	setAttr -s 7 ".kit[4:6]"  1 9 3;
	setAttr -s 7 ".kot[4:6]"  1 9 3;
	setAttr -s 7 ".kix[4:6]"  0.0058819996193051338 0.0023448197171092033 
		1;
	setAttr -s 7 ".kiy[4:6]"  0.99998271465301514 0.99999725818634033 
		0;
	setAttr -s 7 ".kox[4:6]"  0.0058820252306759357 0.0023448197171092033 
		1;
	setAttr -s 7 ".koy[4:6]"  0.99998271465301514 0.99999725818634033 
		0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA317";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -21.346586890289334 4 0.071605597996866902 
		8 0.071605597996866902 12 0.071605597996866902 17 36.383495096781608 21 35.197104894046767 
		25 -21.346586890289334;
	setAttr -s 7 ".kit[4:6]"  9 9 3;
	setAttr -s 7 ".kot[4:6]"  9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA318";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.2923044222983542 25 1.2923044222983542;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA319";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.6437643349617042 4 1.6783904939221743 
		8 1.6783904939221743 12 1.6783904939221743 17 1.6424307572368271 21 1.6870572692472354 
		25 1.6437643349617042;
	setAttr -s 7 ".kit[4:6]"  9 9 3;
	setAttr -s 7 ".kot[4:6]"  9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA320";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA321";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA322";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA323";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA324";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA325";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA326";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA327";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA329";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA330";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTL -n "Right_Knee_Hoop_translateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTL -n "Right_Knee_Hoop_translateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTL -n "Right_Knee_Hoop_translateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 23 1;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTL -n "Left_Knee_Hoop_translateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTL -n "Left_Knee_Hoop_translateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 23 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTL -n "Left_Knee_Hoop_translateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 23 1;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTL -n "animCurveTL144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.0051828179555656355 4 -0.0051828179555656355 
		8 -0.0051828179555656355 12 -0.0051828179555656355 17 -0.0051828179555656355 
		21 -0.0051828179555656355 25 -0.0051828179555656355;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL145";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.94287010041498109 4 0.96241872427589259 
		8 0.9890585413701547 12 0.95467844994911299 17 0.94171366242820687 21 0.98953493983670915 
		25 0.94287010041498109;
	setAttr -s 7 ".kit[0:6]"  3 9 1 1 1 1 3;
	setAttr -s 7 ".kot[0:6]"  3 9 1 1 1 1 3;
	setAttr -s 7 ".kix[2:6]"  0.11154475808143616 0.03348076343536377 
		0.050801098346710205 0.03238648921251297 1;
	setAttr -s 7 ".kiy[2:6]"  0.9937593936920166 -0.99943935871124268 
		0.99870878458023071 0.99947541952133179 0;
	setAttr -s 7 ".kox[2:6]"  0.1115449070930481 0.033483181148767471 
		0.050797063857316971 0.032386120408773422 1;
	setAttr -s 7 ".koy[2:6]"  0.9937593936920166 -0.9994392991065979 
		0.99870902299880981 0.99947541952133179 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.016093311649225527 4 0.19478035713493938 
		8 0.43635557965571303 12 0.60662245336011422 17 0.7984827417891297 21 1.0241143972244096 
		25 1.2616174417414894;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kix[0:6]"  0.0076882187277078629 0.0058937491849064827 
		0.0064748381264507771 0.0082840984687209129 0.0071855816058814526 0.0057577681727707386 
		0.0053364322520792484;
	setAttr -s 7 ".kiy[0:6]"  0.99997043609619141 0.99998265504837036 
		0.99997901916503906 0.99996566772460938 0.99997419118881226 0.99998342990875244 
		0.99998575448989868;
	setAttr -s 7 ".kox[0:6]"  0.0076882289722561836 0.0058937491849064827 
		0.0064748381264507771 0.0082840984687209129 0.0071855816058814526 0.0057577681727707386 
		0.0053364476189017296;
	setAttr -s 7 ".koy[0:6]"  0.99997043609619141 0.99998265504837036 
		0.99997901916503906 0.99996566772460938 0.99997419118881226 0.99998342990875244 
		0.99998575448989868;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.86153846153846037 4 -0.86153846153846037 
		8 -0.86153846153846037 12 -0.86153846153846037 17 -0.86153846153846037 21 
		-0.86153846153846037 25 -0.86153846153846037;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA333";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.62803185506048198 4 -0.62803185506048309 
		8 -0.62803185506048309 12 -0.62803185506048309 17 -0.62803185506048309 21 
		-0.62803185506048309 25 -0.62803185506048198;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA334";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.032052077933186804 4 -0.032052077933186804 
		8 -0.032052077933186804 12 -0.032052077933186804 17 -0.032052077933186804 
		21 -0.032052077933186804 25 -0.032052077933186804;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA335";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA336";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA337";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0984482521620249;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA338";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300303494186;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA339";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA340";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA341";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.686733334985114;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA342";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA343";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA344";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417477e-005;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA345";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA346";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA347";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0984482535121209;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA348";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300300216801;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA349";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA350";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA351";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.686733333057838;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA352";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA353";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA354";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417477e-005;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 1.0579251312417477e-005;
createNode animCurveTA -n "animCurveTA358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 1.0579251312417477e-005;
createNode animCurveTL -n "Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.043193376355120723 6 -0.099043622853139265 
		13 -0.11532600555877594 19 -0.099043622853139265 25 -0.043193376355120723;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTL -n "Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.93094979537967537 6 -0.94793804541191606 
		13 -0.86869065645146648 19 -0.94793804541191606 25 -0.93094979537967537;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTL -n "Right_Arm_Hoop_translateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.27800214794658379 6 -0.15014501308945982 
		13 -0.46503951835408097 19 -0.15014501308945982 25 0.27800214794658379;
	setAttr -s 5 ".kit[0:4]"  3 1 9 1 3;
	setAttr -s 5 ".kot[0:4]"  3 1 9 1 3;
	setAttr -s 5 ".kix[1:4]"  0.0047299070283770561 1 0.0043609295971691608 
		1;
	setAttr -s 5 ".kiy[1:4]"  -0.99998879432678223 0 0.99999046325683594 
		0;
	setAttr -s 5 ".kox[1:4]"  0.0047299494035542011 1 0.004360914696007967 
		1;
	setAttr -s 5 ".koy[1:4]"  -0.99998879432678223 0 0.99999046325683594 
		0;
	setAttr ".pst" 4;
createNode animCurveTA -n "Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.483227932149639 6 22.226403173859293 
		13 22.931501853375202 19 22.226403173859293 25 27.483227932149639;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 25.36361293646176 6 7.1460771443228701 
		13 -21.170468148360559 19 7.1460771443228701 25 25.36361293646176;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 82.051458148149095 6 75.561734306384324 
		13 70.325204906655443 19 75.561734306384324 25 82.051458148149095;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTL -n "Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.056206797005434489 6 0.12245255988439821 
		13 0.16639160562106106 19 0.11829400527536001 25 0.056206797005434489;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTL -n "Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.81785877132884321 6 -0.96810075509183091 
		13 -0.88910458155384109 19 -0.95675561802905318 25 -0.81785877132884321;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTL -n "Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.55083617274783547 6 -0.11361521072051595 
		13 0.37218277729617716 19 -0.14381190797969642 25 -0.55083617274783547;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.908234850645616 6 17.920204508173303 
		13 17.978725561691764 19 17.951411423843723 25 17.908234850645616;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 4.636242190785504 6 -12.534996769611087 
		13 -30.191501173917207 19 -15.868506560936984 25 4.636242190785504;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -68.267941854598007 6 -68.468123196124495 
		13 -68.695421351250729 19 -68.520397325968389 25 -68.267941854598007;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL153";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.3705977767760478;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL154";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.1618658070195953;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL155";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.12044246479037771;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA367";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA368";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA369";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL156";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.3705978542308779;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL157";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.1618621235956237;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL158";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.12044250833667494;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA370";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA371";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA372";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL159";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL160";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL161";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL162";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL163";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL164";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1;
	setAttr ".pst" 4;
createNode animCurveTA -n "R_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  4 -32.216258146823499 13 -32.216258146823499;
createNode animCurveTA -n "R_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  4 -84.768858434975755 13 -84.768858434975755;
createNode animCurveTA -n "R_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  4 36.715010235240797 13 36.715010235240797;
createNode animCurveTA -n "L_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  4 56.580855369275973 13 56.580855369275973;
createNode animCurveTA -n "L_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  4 -58.789023256574225 13 -58.789023256574225;
createNode animCurveTA -n "L_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  4 -65.214240094188824 13 -65.214240094188824;
createNode animCurveTA -n "R_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  4 23.227906019181638 13 23.227906019181638;
createNode animCurveTA -n "L_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  4 11.919434481921025 13 11.919434481921025;
createNode animCurveTA -n "R_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  4 -3.5678365513752466 13 -3.5678365513752466;
createNode animCurveTA -n "R_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  4 1.1122577728711633 13 1.1122577728711633;
createNode animCurveTA -n "R_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  4 -8.9383319261341718 13 -8.9383319261341718;
createNode animCurveTA -n "L_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  4 3.317816178207873 13 3.317816178207873;
createNode animCurveTA -n "L_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  4 -1.9149992340738797 13 -1.9149992340738797;
createNode animCurveTA -n "L_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  4 15.87512600911526 13 15.87512600911526;
createNode animCurveTA -n "Thumb_Base_L_rotateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -25.042492698641183 25 -25.042492698641183;
createNode animCurveTA -n "Thumb_Base_L_rotateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -4.6827643663504066 25 -4.6827643663504066;
createNode animCurveTA -n "Thumb_Base_L_rotateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 22.200094566998427 25 22.200094566998427;
createNode animCurveTA -n "animCurveTA390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -7.6785820447977198 4 -7.6785820447977198 
		13 -7.6785820447977198;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.7605391839518916 4 2.7605391839518916 
		13 2.7605391839518916;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 28.344788980746365 4 28.344788980746365 
		13 28.344788980746365;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA393";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA394";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA395";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "Thumb_R_rotateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "Thumb_R_rotateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "Thumb_R_rotateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "Thumb_L_rotateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "Thumb_L_rotateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "Thumb_L_rotateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "animCurveTA402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 13 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 13 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 26.049252495284946 4 26.049252495284946 
		13 26.049252495284946;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 13 0 25 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 13 0 25 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -26.770100963031059 4 -26.770100963031059 
		13 -26.770100963031059 25 -26.770100963031059;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA408";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -6.5396698020070287 13 -0.48366553025344328 
		25 -6.5396698020070287;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA409";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.3323736815845302 13 -0.30209979101314915 
		25 -2.3323736815845302;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA410";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.6597993527638946 13 -2.6795105012118867 
		25 -2.6597993527638946;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA411";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 13 0 25 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA412";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 13 0 25 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA413";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 13 0 25 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 76 ".ktv[0:75]"  0 -1.7531851104021543 1 -1.7017161057587629 
		2 -1.5584611985166268 3 -1.3401648452971071 4 -1.0635696342674441 5 -0.74539488457465763 
		6 -0.40232693167381423 7 -0.051020583232685636 8 0.29189110664436196 9 0.60978296343672789 
		10 0.88602436401638518 11 1.1039706117325545 12 1.2469617759253042 13 1.2983294430521481 
		14 1.2383154427851637 15 1.0724013708530713 16 0.82177872026216436 17 0.50762533955568423 
		18 0.15109776205469849 19 -0.22666363511073814 20 -0.60451869242007217 21 
		-0.9613066082368199 22 -1.2758279471421268 23 -1.5268373655439849 24 -1.6930530579198257 
		25 -1.7531851104021543 26 -1.7017161057587629 27 -1.5584611985166268 28 -1.3401648452971071 
		29 -1.0635696342674441 30 -0.74539488457465763 31 -0.40232693167381423 32 
		-0.051020583232685636 33 0.29189110664436196 34 0.60978296343672789 35 0.88602436401638518 
		36 1.1039706117325545 37 1.2469617759253042 38 1.2983294430521481 39 1.2383154427851637 
		40 1.0724013708530713 41 0.82177872026216436 42 0.50762533955568423 43 0.15109776205469849 
		44 -0.22666363511073814 45 -0.60451869242007217 46 -0.9613066082368199 47 
		-1.2758279471421268 48 -1.5268373655439849 49 -1.6930530579198257 50 -1.7531851104021543 
		51 -1.7017161057587629 52 -1.5584611985166268 53 -1.3401648452971071 54 -1.0635696342674441 
		55 -0.74539488457465763 56 -0.40232693167381423 57 -0.051020583232685636 
		58 0.29189110664436196 59 0.60978296343672789 60 0.88602436401638518 61 1.1039706117325545 
		62 1.2469617759253042 63 1.2983294430521481 64 1.2383154427851637 65 1.0724013708530713 
		66 0.82177872026216436 67 0.50762533955568423 68 0.15109776205469849 69 -0.22666363511073814 
		70 -0.60451869242007217 71 -0.9613066082368199 72 -1.2758279471421268 73 
		-1.5268373655439849 74 -1.6930530579198257 75 -1.7531851104021543;
createNode animCurveTA -n "Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 76 ".ktv[0:75]"  0 -4.2524059999613275 1 -4.1824242982327187 
		2 -3.9876062843987068 3 -3.6906397500115333 4 -3.314212723584522 5 -2.8810171440931547 
		6 -2.4137505730894708 7 -1.9351160319201406 8 -1.4678204341181575 9 -1.0345723062023373 
		10 -0.65807955929898343 11 -0.36104799388559078 12 -0.16618099140807296 13 
		-0.096180467048344112 14 -0.17796381392074359 15 -0.40407159876066367 16 
		-0.74564016194521288 17 -1.1738035402230549 18 -1.6596924278663938 19 -2.1744351828001003 
		20 -2.6891605397481331 21 -3.1750010683153458 22 -3.6030960977958677 23 -3.9445928197560369 
		24 -4.1706445803512517 25 -4.2524059999613275 26 -4.1824242982327187 27 -3.9876062843987068 
		28 -3.6906397500115333 29 -3.314212723584522 30 -2.8810171440931547 31 -2.4137505730894708 
		32 -1.9351160319201406 33 -1.4678204341181575 34 -1.0345723062023373 35 -0.65807955929898343 
		36 -0.36104799388559078 37 -0.16618099140807296 38 -0.096180467048344112 
		39 -0.17796381392074359 40 -0.40407159876066367 41 -0.74564016194521288 42 
		-1.1738035402230549 43 -1.6596924278663938 44 -2.1744351828001003 45 -2.6891605397481331 
		46 -3.1750010683153458 47 -3.6030960977958677 48 -3.9445928197560369 49 -4.1706445803512517 
		50 -4.2524059999613275 51 -4.1824242982327187 52 -3.9876062843987068 53 -3.6906397500115333 
		54 -3.314212723584522 55 -2.8810171440931547 56 -2.4137505730894708 57 -1.9351160319201406 
		58 -1.4678204341181575 59 -1.0345723062023373 60 -0.65807955929898343 61 
		-0.36104799388559078 62 -0.16618099140807296 63 -0.096180467048344112 64 
		-0.17796381392074359 65 -0.40407159876066367 66 -0.74564016194521288 67 -1.1738035402230549 
		68 -1.6596924278663938 69 -2.1744351828001003 70 -2.6891605397481331 71 -3.1750010683153458 
		72 -3.6030960977958677 73 -3.9445928197560369 74 -4.1706445803512517 75 -4.2524059999613275;
createNode animCurveTA -n "Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 76 ".ktv[0:75]"  0 11.977854749457556 1 11.976034404590772 
		2 11.971160491937161 3 11.964278619854763 4 11.956504180310441 5 11.94886764077089 
		6 11.942199490147734 7 11.937054480906173 8 11.933674535779714 9 11.931989732596239 
		10 11.931657038218646 11 11.932136783982262 12 11.932807114084007 13 11.933116693828946 
		14 11.932758579084924 15 11.932026753964523 16 11.931640545587141 17 11.932379217670183 
		18 11.934866019299802 19 11.939413967499325 20 11.945932870157533 21 11.953897324367045 
		22 11.962375959831656 23 11.970122765859841 24 11.975731610372497 25 11.977854749457556 
		26 11.976034404590772 27 11.971160491937161 28 11.964278619854763 29 11.956504180310441 
		30 11.94886764077089 31 11.942199490147734 32 11.937054480906173 33 11.933674535779714 
		34 11.931989732596239 35 11.931657038218646 36 11.932136783982262 37 11.932807114084007 
		38 11.933116693828946 39 11.932758579084924 40 11.932026753964523 41 11.931640545587141 
		42 11.932379217670183 43 11.934866019299802 44 11.939413967499325 45 11.945932870157533 
		46 11.953897324367045 47 11.962375959831656 48 11.970122765859841 49 11.975731610372497 
		50 11.977854749457556 51 11.976034404590772 52 11.971160491937161 53 11.964278619854763 
		54 11.956504180310441 55 11.94886764077089 56 11.942199490147734 57 11.937054480906173 
		58 11.933674535779714 59 11.931989732596239 60 11.931657038218646 61 11.932136783982262 
		62 11.932807114084007 63 11.933116693828946 64 11.932758579084924 65 11.932026753964523 
		66 11.931640545587141 67 11.932379217670183 68 11.934866019299802 69 11.939413967499325 
		70 11.945932870157533 71 11.953897324367045 72 11.962375959831656 73 11.970122765859841 
		74 11.975731610372497 75 11.977854749457556;
createNode animCurveTA -n "animCurveTA417";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.4966495997994176e-017 13 0 
		25 2.4966495997994176e-017;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA418";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.0246598089166925 13 -0.40320223523219545 
		25 3.0246598089166925;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA419";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -4.0830121457489881 13 -4.0830121457489978 
		25 -4.0830121457489881;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[1:2]"  9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -7.2356183565074765 4 -7.2356183565074765 
		13 -7.2356183565074765;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.775875410252576 4 3.775875410252576 
		13 3.775875410252576;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 36.102571754571038 4 36.102571754571038 
		13 36.102571754571038;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -35.160370854790166 4 -35.160370854790166 
		13 -35.160370854790166;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 20.563693271869273 4 20.563693271869273 
		13 20.563693271869273;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 22.57991983767285 4 22.57991983767285 
		13 22.57991983767285;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 13 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 4 0 13 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 21.110481929355618 4 21.110481929355618 
		13 21.110481929355618;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "hair_1_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 13 0 18 0 21 0 25 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "hair_1_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 13 0 18 0 21 0 25 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "hair_1_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 5.5133014575693009 8 7.913235584574049 
		13 0 18 5.5133014575693009 21 7.913235584574049 25 0;
	setAttr -s 7 ".kit[0:6]"  3 1 9 9 1 9 3;
	setAttr -s 7 ".kot[0:6]"  3 1 9 9 1 9 3;
	setAttr -s 7 ".kix[1:6]"  0.83241522312164307 0.94063389301300049 
		0.99219703674316406 0.79002714157104492 0.92447316646575928 1;
	setAttr -s 7 ".kiy[1:6]"  0.55415242910385132 -0.3394227921962738 
		-0.12467973679304123 0.61307185888290405 -0.38124716281890869 0;
	setAttr -s 7 ".kox[1:6]"  0.83241522312164307 0.94063389301300049 
		0.99219703674316406 0.7900272011756897 0.92447316646575928 1;
	setAttr -s 7 ".koy[1:6]"  0.55415242910385132 -0.3394227921962738 
		-0.12467973679304123 0.61307179927825928 -0.38124716281890869 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "hair_2_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 13 0 18 0 21 0 25 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "hair_2_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 13 0 18 0 21 0 25 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "hair_2_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 5.2697360940651183 8 7.6696702210698673 
		13 0 18 5.2697360940651183 21 7.6696702210698673 25 0;
	setAttr -s 7 ".kit[0:6]"  3 1 9 9 1 9 3;
	setAttr -s 7 ".kot[0:6]"  3 1 9 9 1 9 3;
	setAttr -s 7 ".kix[1:6]"  0.77132934331893921 0.94535088539123535 
		0.99219703674316406 0.79962372779846191 0.93033349514007568 1;
	setAttr -s 7 ".kiy[1:6]"  0.63643622398376465 -0.32605478167533875 
		-0.12467973679304123 0.60050135850906372 -0.36671453714370728 0;
	setAttr -s 7 ".kox[1:6]"  0.77132928371429443 0.94535088539123535 
		0.99219703674316406 0.79962366819381714 0.93033349514007568 1;
	setAttr -s 7 ".koy[1:6]"  0.63643622398376465 -0.32605478167533875 
		-0.12467973679304123 0.6005014181137085 -0.36671453714370728 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "hair_3_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 13 0 18 0 21 0 25 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "hair_3_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 8 0 13 0 18 0 21 0 25 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "hair_3_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 5.1885476395637253 8 7.5884817665684734 
		13 0 18 5.1885476395637253 21 7.5884817665684734 25 0;
	setAttr -s 7 ".kit[0:6]"  3 1 9 9 1 9 3;
	setAttr -s 7 ".kot[0:6]"  3 1 9 9 1 9 3;
	setAttr -s 7 ".kix[1:6]"  0.77132934331893921 0.94689106941223145 
		0.99219703674316406 0.7900272011756897 0.93225210905075073 1;
	setAttr -s 7 ".kiy[1:6]"  0.63643616437911987 -0.32155442237854004 
		-0.12467973679304123 0.61307179927825928 -0.36180934309959412 0;
	setAttr -s 7 ".kox[1:6]"  0.77132928371429443 0.94689106941223145 
		0.99219703674316406 0.7900272011756897 0.93225210905075073 1;
	setAttr -s 7 ".koy[1:6]"  0.63643628358840942 -0.32155442237854004 
		-0.12467973679304123 0.61307179927825928 -0.36180934309959412 0;
	setAttr ".pst" 4;
createNode clipLibrary -n "clipLibrary1";
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
connectAttr "mrg_loco_walkSource.st" "clipLibrary1.st[0]";
connectAttr "mrg_loco_walkSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL124.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL125.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL127.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA310.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU25.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU26.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU27.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU28.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "mrg_Hoop_Root_IK_FK_RArm.a" "clipLibrary1.cel[0].cev[10].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_FK_LArm.a" "clipLibrary1.cel[0].cev[11].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "animCurveTA311.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA312.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA313.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL129.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL130.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL131.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL132.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL133.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL134.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA314.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA315.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA316.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL135.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL136.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL137.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA317.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA318.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA319.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA320.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA321.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA322.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA323.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA324.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA325.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA326.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA327.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA328.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA329.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA330.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA331.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "Right_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[44].cevr"
		;
connectAttr "Right_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[45].cevr"
		;
connectAttr "Right_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[46].cevr"
		;
connectAttr "Left_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[47].cevr"
		;
connectAttr "Left_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[48].cevr"
		;
connectAttr "Left_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[49].cevr"
		;
connectAttr "animCurveTL144.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL145.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL146.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA332.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA333.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA334.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA335.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA336.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA337.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA338.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA339.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA340.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA341.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA342.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA343.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA344.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA345.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA346.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA347.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA348.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA349.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA350.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA351.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA352.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA353.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA354.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA355.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA356.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA357.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA358.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA359.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA360.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "Right_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "Right_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "Right_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "Left_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "Left_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "Left_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[93].cevr"
		;
connectAttr "animCurveTL153.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL154.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL155.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA367.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA368.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA369.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL156.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL157.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL158.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA370.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA371.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA372.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL159.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL160.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL161.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL162.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL163.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL164.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "R_FK_Shoulder_rotateX.a" "clipLibrary1.cel[0].cev[112].cevr"
		;
connectAttr "R_FK_Shoulder_rotateY.a" "clipLibrary1.cel[0].cev[113].cevr"
		;
connectAttr "R_FK_Shoulder_rotateZ.a" "clipLibrary1.cel[0].cev[114].cevr"
		;
connectAttr "L_FK_Shoulder_rotateX.a" "clipLibrary1.cel[0].cev[115].cevr"
		;
connectAttr "L_FK_Shoulder_rotateY.a" "clipLibrary1.cel[0].cev[116].cevr"
		;
connectAttr "L_FK_Shoulder_rotateZ.a" "clipLibrary1.cel[0].cev[117].cevr"
		;
connectAttr "R_FK_Elbow_rotateZ.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "L_FK_Elbow_rotateZ.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "R_FK_Wrist_rotateX.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "R_FK_Wrist_rotateY.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "R_FK_Wrist_rotateZ.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "L_FK_Wrist_rotateX.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "L_FK_Wrist_rotateY.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "L_FK_Wrist_rotateZ.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "Thumb_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[126].cevr"
		;
connectAttr "Thumb_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[127].cevr"
		;
connectAttr "Thumb_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[128].cevr"
		;
connectAttr "animCurveTA390.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA391.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA392.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA393.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA394.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA395.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA402.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA403.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA404.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA405.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA406.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA407.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA408.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA409.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA410.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA411.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA412.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA413.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "Head_rotateX.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "Head_rotateY.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "Head_rotateZ.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA417.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA418.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA419.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA420.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA421.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA422.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA423.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA424.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA425.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA426.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA427.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA428.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr "hair_1_rotateX.a" "clipLibrary1.cel[0].cev[168].cevr";
connectAttr "hair_1_rotateY.a" "clipLibrary1.cel[0].cev[169].cevr";
connectAttr "hair_1_rotateZ.a" "clipLibrary1.cel[0].cev[170].cevr";
connectAttr "hair_2_rotateX.a" "clipLibrary1.cel[0].cev[171].cevr";
connectAttr "hair_2_rotateY.a" "clipLibrary1.cel[0].cev[172].cevr";
connectAttr "hair_2_rotateZ.a" "clipLibrary1.cel[0].cev[173].cevr";
connectAttr "hair_3_rotateX.a" "clipLibrary1.cel[0].cev[174].cevr";
connectAttr "hair_3_rotateY.a" "clipLibrary1.cel[0].cev[175].cevr";
connectAttr "hair_3_rotateZ.a" "clipLibrary1.cel[0].cev[176].cevr";
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
// End of mrg_loco_walk.ma
