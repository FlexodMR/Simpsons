//Maya ASCII 4.0 scene
//Name: gpa_driver_left.ma
//Last modified: Tue, Aug 13, 2002 10:22:52 AM
requires maya "4.0";
requires "p3dmayaexp" "18.2";
requires "p3dSimpleShader" "18.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "gpa_driver_leftSource";
	setAttr ".ihi" 0;
	setAttr ".du" 45;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  54 0;
createNode animCurveTL -n "animCurveTL142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  54 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 -1.1229683308553271 1 -1.1229683308553271 
		2 -1.1229683308553271 3 -1.1229683308553271 4 -1.1229683308553271 5 -1.1229683308553271 
		6 -1.1229683308553271 7 -1.1229683308553271 8 -1.1229683308553271 9 -1.1229683308553271 
		10 -1.1229683308553271 11 -1.1229683308553271 12 -1.1229683308553271 13 -1.1229683308553271 
		14 -1.1229683308553271 15 -1.1229683308553271 16 -1.1229683308553271 17 -1.1229683308553271 
		18 -1.1229683308553271 19 -1.1229683308553271 20 -1.1229683308553271 21 -1.1229683308553271 
		22 -1.1229683308553271 23 -1.1229683308553271 24 -1.1229683308553271 25 -1.1229683308553271 
		26 -1.1229683308553271 27 -1.1229683308553271 28 -1.1229683308553271 29 -1.1229683308553271 
		30 -1.1229683308553271 31 -1.1229683308553271 32 -1.1229683308553271 33 -1.1229683308553271 
		34 -1.1229683308553271 35 -1.1229683308553271 36 -1.1229683308553271 37 -1.1229683308553271 
		38 -1.1229683308553271 39 -1.1229683308553271 40 -1.1229683308553271 41 -1.1229683308553271 
		42 -1.1229683308553271 43 -1.1229683308553271 44 -1.1229683308553271 45 -1.1229683308553271;
createNode animCurveTL -n "gpa_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 0.97616451601631116 1 0.97616451601631116 
		2 0.97616451601631116 3 0.97616451601631116 4 0.97616451601631116 5 0.97616451601631116 
		6 0.97616451601631116 7 0.97616451601631116 8 0.97616451601631116 9 0.97616451601631116 
		10 0.97616451601631116 11 0.97616451601631116 12 0.97616451601631116 13 0.97616451601631116 
		14 0.97616451601631116 15 0.97616451601631116 16 0.97616451601631116 17 0.97616451601631116 
		18 0.97616451601631116 19 0.97616451601631116 20 0.97616451601631116 21 0.97616451601631116 
		22 0.97616451601631116 23 0.97616451601631116 24 0.97616451601631116 25 0.97616451601631116 
		26 0.97616451601631116 27 0.97616451601631116 28 0.97616451601631116 29 0.97616451601631116 
		30 0.97616451601631116 31 0.97616451601631116 32 0.97616451601631116 33 0.97616451601631116 
		34 0.97616451601631116 35 0.97616451601631116 36 0.97616451601631116 37 0.97616451601631116 
		38 0.97616451601631116 39 0.97616451601631116 40 0.97616451601631116 41 0.97616451601631116 
		42 0.97616451601631116 43 0.97616451601631116 44 0.97616451601631116 45 0.97616451601631116;
createNode animCurveTA -n "gpa_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  54 0;
createNode animCurveTU -n "animCurveTU8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  54 0;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  54 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  54 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  54 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  54 0;
createNode animCurveTU -n "Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA455";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTL -n "animCurveTL146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  54 0;
createNode animCurveTL -n "animCurveTL147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  54 0;
createNode animCurveTL -n "animCurveTL148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  54 0;
createNode animCurveTL -n "animCurveTL149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.7084450118300396 8 -1.7084450118300396 
		35 -1.7084450118300396;
createNode animCurveTL -n "animCurveTL150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.82121446776202978 8 0.82121446776202978 
		35 0.82121446776202978;
createNode animCurveTL -n "animCurveTL151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.6495856783017808 8 1.6495856783017808 
		35 1.6495856783017808;
createNode animCurveTA -n "animCurveTA457";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 25 0 35 0;
createNode animCurveTA -n "animCurveTA458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 25 0 35 0;
createNode animCurveTA -n "animCurveTA459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 25 0 35 0;
createNode animCurveTL -n "animCurveTL152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.2504784321605431 8 -1.2504784321605431 
		35 -1.2504784321605431;
createNode animCurveTL -n "animCurveTL153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.82533069850741669 8 0.82533069850741669 
		35 0.82533069850741669;
createNode animCurveTL -n "animCurveTL154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.6270503750293122 8 1.6270503750293122 
		35 1.6270503750293122;
createNode animCurveTA -n "animCurveTA460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 25 0 35 0;
createNode animCurveTA -n "animCurveTA461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 25 0 35 0;
createNode animCurveTA -n "animCurveTA462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 25 0 35 0;
createNode animCurveTA -n "animCurveTA463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA465";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA471";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA472";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA473";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA474";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTL -n "animCurveTL155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  54 0;
createNode animCurveTL -n "animCurveTL156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  54 0;
createNode animCurveTL -n "animCurveTL157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  54 1;
createNode animCurveTL -n "animCurveTL158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  54 0;
createNode animCurveTL -n "animCurveTL159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  54 0;
createNode animCurveTL -n "animCurveTL160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  54 1;
createNode animCurveTL -n "animCurveTL161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.4786421250535617 8 -1.4786421250535617 
		35 -1.4786421250535617;
createNode animCurveTL -n "animCurveTL162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.013846891275328 8 1.013846891275328 
		35 1.013846891275328;
createNode animCurveTL -n "animCurveTL163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.2853416563090898 8 1.2853416563090898 
		35 1.2853416563090898;
createNode animCurveTA -n "animCurveTA475";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -25.655237914214105 5 -25.655237914214105 
		8 -25.655237914214105 25 -25.655237914214105 35 -25.655237914214105;
createNode animCurveTA -n "animCurveTA476";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.0975263990809512 5 2.0975263990809512 
		8 2.0975263990809512 25 2.0975263990809512 35 2.0975263990809512;
createNode animCurveTA -n "animCurveTA477";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.53932213336905666 5 -0.53932213336905666 
		8 -0.53932213336905666 25 -0.53932213336905666 35 -0.53932213336905666;
createNode animCurveTA -n "animCurveTA478";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA479";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA480";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA481";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA482";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA483";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA484";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA485";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA486";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA487";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA488";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA489";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA490";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA491";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA492";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA493";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA494";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA495";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA496";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA497";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA498";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA499";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA500";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA501";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA502";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA503";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTL -n "Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 -0.20830475395957251 1 -0.20114983359842994 
		2 -0.19134409117812368 3 -0.18185064198988754 4 -0.1763866455786797 5 -0.17891108431332214 
		6 -0.20434225143517268 7 -0.23760630858341586 8 -0.25265217877062923 9 -0.25495120916358532 
		10 -0.25677094122611721 11 -0.25817788857624463 12 -0.25922582669440603 13 
		-0.25995787369168172 14 -0.26040845712913951 15 -0.26060514770274779 16 -0.26057034556670944 
		17 -0.26032280879758501 18 -0.25987901632040916 19 -0.25925435978309852 20 
		-0.258464160576728 21 -0.25752450960360362 22 -0.25645292859261531 23 -0.25526885281128103 
		24 -0.25399393595158815 25 -0.25265217877062923 26 -0.25082593260280306 27 
		-0.24813809192023256 28 -0.24467190985689796 29 -0.24051500472324905 30 -0.235768382076771 
		31 -0.2305530884634493 32 -0.2250145107126707 33 -0.21932437700108381 34 
		-0.21368055302156619 35 -0.20830475395957251 36 -0.20830475395957251 37 -0.20830475395957251 
		38 -0.20830475395957251 39 -0.20830475395957251 40 -0.20830475395957251 41 
		-0.20830475395957251 42 -0.20830475395957251 43 -0.20830475395957251 44 -0.20830475395957251 
		45 -0.20830475395957251;
createNode animCurveTL -n "Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 -0.31535672398011161 1 -0.29733722435431625 
		2 -0.2755311431232273 3 -0.25606346796514101 4 -0.24466005558572884 5 -0.24690974395751469 
		6 -0.29129619409396268 7 -0.3672540461940707 8 -0.41347740216424866 9 -0.42150875857252246 
		10 -0.4280334182156999 11 -0.4331427207741359 12 -0.43693242528569076 13 
		-0.43950174361727096 14 -0.44095256938184846 15 -0.44138885797098953 16 -0.44091612094055294 
		17 -0.43964100518369054 18 -0.43767093401995072 19 -0.4351137934301012 20 
		-0.43207765210848992 21 -0.42867050874385498 22 -0.42500006394527973 23 -0.42117351748392995 
		24 -0.41729739401379989 25 -0.41347740216424866 26 -0.40851410609827099 27 
		-0.40140767080018136 28 -0.39256482384189106 29 -0.38239219267681657 30 -0.37129264829341874 
		31 -0.35966199560890966 32 -0.34788611206195186 33 -0.33633872589176522 34 
		-0.32538007766724319 35 -0.31535672398011161 36 -0.31535672398011161 37 -0.31535672398011161 
		38 -0.31535672398011161 39 -0.31535672398011161 40 -0.31535672398011161 41 
		-0.31535672398011161 42 -0.31535672398011161 43 -0.31535672398011161 44 -0.31535672398011161 
		45 -0.31535672398011161;
createNode animCurveTL -n "Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 0.86092177196258945 1 0.86638907120013642 
		2 0.87251982252013205 3 0.87817162032500251 4 0.88232996151889242 5 0.88403693023461705 
		6 0.87854199916772024 7 0.86707761058517141 8 0.85977469527774619 9 0.85859279686335144 
		10 0.85768704025575437 11 0.85703396574450308 12 0.85660896956035493 13 0.85638658664204148 
		14 0.85634071196914652 15 0.85644477486848192 16 0.85667187819380963 17 0.85699491189667765 
		18 0.85738664829312672 19 0.85781982431795512 20 0.8582672142661566 21 0.85870169496527182 
		22 0.85909630401225157 23 0.85942429065036008 24 0.85965915805852078 25 0.85977469527774619 
		26 0.85983697251037072 27 0.85992576240062935 28 0.86003547285359239 29 0.86016035105084698 
		30 0.8602945939150195 31 0.86043250851616604 32 0.86056870778440231 33 0.86069831388557616 
		34 0.86081713410952543 35 0.86092177196258945 36 0.86092177196258945 37 0.86092177196258945 
		38 0.86092177196258945 39 0.86092177196258945 40 0.86092177196258945 41 0.86092177196258945 
		42 0.86092177196258945 43 0.86092177196258945 44 0.86092177196258945 45 0.86092177196258945;
createNode animCurveTA -n "Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 46.056537368045603 1 46.806168307578226 
		2 47.676869350829648 3 48.496854694153448 4 49.082895070371549 5 49.248916629224681 
		6 48.228159519672396 7 46.5258666792068 8 45.597073256181744 9 45.454726408513466 
		10 45.346838998711661 11 45.269488738844963 12 45.21901102630418 13 45.191964066253682 
		14 45.185092770776109 15 45.195292558379293 16 45.219574041069691 17 45.255029429157098 
		18 45.29880131790766 19 45.348054355159668 20 45.399950133128904 21 45.451625506803275 
		22 45.500174419451454 23 45.542633214878656 24 45.575969336679805 25 45.597073256181744 
		26 45.615714579626683 27 45.643233131797047 28 45.678845354325261 29 45.721706870625709 
		30 45.770809316847725 31 45.824908276809659 32 45.882481409794998 33 45.941714682503417 
		34 46.00051378441772 35 46.056537368045603 36 46.056537368045603 37 46.056537368045603 
		38 46.056537368045603 39 46.056537368045603 40 46.056537368045603 41 46.056537368045603 
		42 46.056537368045603 43 46.056537368045603 44 46.056537368045603 45 46.056537368045603;
createNode animCurveTA -n "Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 56.887629293648395 1 56.609310879677558 
		2 56.305070774198271 3 56.029469245770336 4 55.823672162912835 5 55.723845174103722 
		6 55.94473532098008 7 56.501739568007963 8 56.896963801346864 9 56.963427969364957 
		10 57.014852342540514 11 57.052205428588145 12 57.076636048881248 13 57.089439073637706 
		14 57.092024802801987 15 57.085891675623984 16 57.072602022230498 17 57.053760608629048 
		18 57.030995769148717 19 57.00594296429167 20 56.980230644791995 21 56.955468342338392 
		22 56.933236942408122 23 56.91508112398585 24 56.902503974041231 25 56.896963801346864 
		26 56.894988720122242 27 56.892404516057113 28 56.889602440761685 29 56.886968900117772 
		30 56.884848699014348 31 56.883513158645222 32 56.883134013755864 33 56.883764614381143 
		34 56.885330236738028 35 56.887629293648395 36 56.887629293648395 37 56.887629293648395 
		38 56.887629293648395 39 56.887629293648395 40 56.887629293648395 41 56.887629293648395 
		42 56.887629293648395 43 56.887629293648395 44 56.887629293648395 45 56.887629293648395;
createNode animCurveTA -n "Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 125.11368116179706 1 124.12063719345909 
		2 122.86201939940641 3 121.74114156839433 4 121.15326167725186 5 121.49211723501249 
		6 124.68689351127679 7 129.84363690931482 8 132.90954088833178 9 133.44736273966072 
		10 133.88827663054118 11 134.23775604294994 12 134.50147385769466 13 134.68527683331419 
		14 134.79515872538698 15 134.83723293811897 16 134.81770551141329 17 134.74284912920882 
		18 134.61897870203336 19 134.45242893994623 20 134.24953420055587 21 134.01661077735054 
		22 133.75994169063554 23 133.48576395924823 24 133.2002582665616 25 132.90954088833178 
		26 132.52432335258194 27 131.97141809674355 28 131.28106732595117 29 130.48346338027301 
		30 129.60866310953904 31 128.68652784154736 32 127.7466882124037 33 126.81853219333762 
		34 125.93121399165338 35 125.11368116179706 36 125.11368116179706 37 125.11368116179706 
		38 125.11368116179706 39 125.11368116179706 40 125.11368116179706 41 125.11368116179706 
		42 125.11368116179706 43 125.11368116179706 44 125.11368116179706 45 125.11368116179706;
createNode animCurveTL -n "Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 0.026488370059534531 1 0.035644660766568852 
		2 0.0465595468410595 3 0.055836690935222179 4 0.060652334450193454 5 0.058401391082065289 
		6 0.033703092210858474 7 -0.010396631514827278 8 -0.03860562327013952 9 -0.043644273811326857 
		10 -0.04777874686325561 11 -0.051049472129795388 12 -0.053503795224480656 
		13 -0.05519458337355275 14 -0.056179030062223773 15 -0.056517628425355897 
		16 -0.056273287926463522 17 -0.055510573593951736 18 -0.054295051623801105 
		19 -0.052692729390655016 20 -0.050769581746522192 21 -0.048591158867482137 
		22 -0.046222273794839737 23 -0.04372677018662216 24 -0.041167372640166774 
		25 -0.03860562327013952 26 -0.035249611156688447 27 -0.030455617766253339 
		28 -0.024508762609324324 29 -0.017693400029174029 30 -0.010289071281332838 
		31 -0.0025670814408616138 32 0.0052122312079293919 33 0.012801407324139973 
		34 0.019966801192143748 35 0.026488370059534531 36 0.026488370059534531 37 
		0.026488370059534531 38 0.026488370059534531 39 0.026488370059534531 40 0.026488370059534531 
		41 0.026488370059534531 42 0.026488370059534531 43 0.026488370059534531 44 
		0.026488370059534531 45 0.026488370059534531;
createNode animCurveTL -n "Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 -0.2496323416231627 1 -0.26261656688129309 
		2 -0.27883798696885065 3 -0.29391912443116058 4 -0.30309245481723074 5 -0.30149962702123551 
		6 -0.26848706858841398 7 -0.2190030664797622 8 -0.19272319451477557 9 -0.1884482842969176 
		10 -0.18504427273327415 11 -0.18242606456932742 12 -0.18051643822023053 13 
		-0.17924486545204224 14 -0.17854635567613783 15 -0.1783603490211442 16 -0.17862967677939501 
		17 -0.17929960327329064 18 -0.18031695945404955 19 -0.18162937546931787 20 
		-0.18318461688949364 21 -0.1849300271715785 22 -0.18681207719924386 23 -0.18877602133074489 
		24 -0.19076565829625972 25 -0.19272319451477557 26 -0.19527814025816356 27 
		-0.19899254237245076 28 -0.20370834111115521 29 -0.20926436419019465 30 -0.2154902164043539 
		31 -0.22220183087178741 32 -0.22919866078426424 33 -0.23626245239425095 34 
		-0.24315750969759559 35 -0.2496323416231627 36 -0.2496323416231627 37 -0.2496323416231627 
		38 -0.2496323416231627 39 -0.2496323416231627 40 -0.2496323416231627 41 -0.2496323416231627 
		42 -0.2496323416231627 43 -0.2496323416231627 44 -0.2496323416231627 45 -0.2496323416231627;
createNode animCurveTL -n "Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 0.93276732714778487 1 0.92872877120855324 
		2 0.92394592764588124 3 0.91937662531769093 4 0.91610391545008119 5 0.9152512802641829 
		6 0.92124882583909218 7 0.93082434599282404 8 0.93581287054465789 9 0.93656301000483211 
		10 0.93712984615315964 11 0.93753616581903698 12 0.93780251615786969 13 0.93794756435227955 
		14 0.93798844943569226 15 0.9379411183260018 16 0.93782064000413967 17 0.93764149328033297 
		18 0.93741782482585467 19 0.93716367516442656 20 0.93689317115737325 21 0.9366206842119702 
		22 0.93636095401416541 23 0.93612917804786488 24 0.9359410675181643 25 0.93581287054465789 
		26 0.93568889206422656 27 0.93550604467894349 28 0.93526966198162931 29 0.93498543015701874 
		30 0.93466005387206419 31 0.93430173638347469 32 0.93392047590226468 33 0.93352818559172579 
		34 0.93313864914382227 35 0.93276732714778487 36 0.93276732714778487 37 0.93276732714778487 
		38 0.93276732714778487 39 0.93276732714778487 40 0.93276732714778487 41 0.93276732714778487 
		42 0.93276732714778487 43 0.93276732714778487 44 0.93276732714778487 45 0.93276732714778487;
createNode animCurveTA -n "Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 40.751331981187242 1 39.843957146319916 
		2 38.808451484021305 3 37.839462174836264 4 37.127051094457173 5 36.860502571604307 
		6 37.891070065955411 7 39.863659505792405 8 41.059651774218203 9 41.250685700016348 
		10 41.396854626154379 11 41.502273966353485 12 41.571103336568108 13 41.607534697153028 
		14 41.615783138399728 15 41.600079765862901 16 41.564666215718773 17 41.513790395104408 
		18 41.451703100555079 19 41.382655221002189 20 41.310895281456752 21 41.240667130236901 
		22 41.176207616895688 23 41.121744150230555 24 41.081492066175166 25 41.059651774218203 
		26 41.044754992852326 27 41.023258797578116 28 40.996249541118807 29 40.964845751270524 
		30 40.930209654463447 31 40.893545905489788 32 40.856089307885306 33 40.819085037791581 
		34 40.783765952687062 35 40.751331981187242 36 40.751331981187242 37 40.751331981187242 
		38 40.751331981187242 39 40.751331981187242 40 40.751331981187242 41 40.751331981187242 
		42 40.751331981187242 43 40.751331981187242 44 40.751331981187242 45 40.751331981187242;
createNode animCurveTA -n "Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 -58.592439569848452 1 -58.746731129621033 
		2 -58.939082477259625 3 -59.12831570674107 4 -59.258839589155933 5 -59.2701427105428 
		6 -58.957828415069443 7 -58.558765150937852 8 -58.399791650326776 9 -58.379181413247409 
		10 -58.364225984320782 11 -58.353811589799363 12 -58.347053783695451 13 -58.343258707477958 
		14 -58.341886864054956 15 -58.342519510511096 16 -58.3448277455362 17 -58.348544346831055 
		18 -58.353438398946928 19 -58.359292741353094 20 -58.365884258739911 21 -58.372967029691139 
		22 -58.380258345229223 23 -58.387427604918521 24 -58.394088094996398 25 -58.399791650326776 
		26 -58.406620928566376 27 -58.41690717394156 28 -58.430553860910699 29 -58.447435291738984 
		30 -58.46732928453573 31 -58.489866266158664 32 -58.514494976108693 33 -58.540464863230895 
		34 -58.566825056935947 35 -58.592439569848452 36 -58.592439569848452 37 -58.592439569848452 
		38 -58.592439569848452 39 -58.592439569848452 40 -58.592439569848452 41 -58.592439569848452 
		42 -58.592439569848452 43 -58.592439569848452 44 -58.592439569848452 45 -58.592439569848452;
createNode animCurveTA -n "Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 -107.17105054330271 1 -108.01592487304538 
		2 -109.11411177935659 3 -110.08524386836778 4 -110.54666085593863 5 -110.11596775303326 
		6 -106.96102378578765 7 -102.07586197095877 8 -99.253197714572437 9 -98.758778668333008 
		10 -98.351852094623666 11 -98.027225613992556 12 -97.779735349256029 13 -97.604238843356526 
		14 -97.495609362978286 15 -97.448731348433384 16 -97.45849679406119 17 -97.51980236012902 
		18 -97.627547030425291 19 -97.77663014169282 20 -97.961949623265696 21 -98.178400298756273 
		22 -98.420872117031436 23 -98.684248197496032 24 -98.963402595180852 25 -99.253197714572437 
		26 -99.641342294205984 27 -100.19898750203244 28 -100.89615787330303 29 -101.70290428054166 
		30 -102.58931333554706 31 -103.52550632944204 32 -104.48162915230725 33 -105.42783605019959 
		34 -106.33427096281005 35 -107.17105054330271 36 -107.17105054330271 37 -107.17105054330271 
		38 -107.17105054330271 39 -107.17105054330271 40 -107.17105054330271 41 -107.17105054330271 
		42 -107.17105054330271 43 -107.17105054330271 44 -107.17105054330271 45 -107.17105054330271;
createNode animCurveTL -n "gpa_Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.1000000000000001;
createNode animCurveTL -n "gpa_Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.5;
createNode animCurveTL -n "gpa_Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.8000000000000003;
createNode animCurveTA -n "gpa_Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 71.400000000000006;
createNode animCurveTA -n "gpa_Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 64.900000000000006;
createNode animCurveTA -n "gpa_Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 143.5;
createNode animCurveTL -n "gpa_Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2;
createNode animCurveTL -n "gpa_Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.5;
createNode animCurveTL -n "gpa_Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.8000000000000003;
createNode animCurveTA -n "gpa_Left_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 45.9;
createNode animCurveTA -n "gpa_Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -73;
createNode animCurveTA -n "gpa_Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -115.8;
createNode animCurveTL -n "animCurveTL164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.80217394619293847 8 0.40292417734735436 
		26 0.40292417734735436 35 0.80217394619293847;
	setAttr -s 4 ".kit[2:3]"  3 9;
	setAttr -s 4 ".kot[1:3]"  3 9 9;
createNode animCurveTL -n "animCurveTL165";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.44299574108883399 8 -0.14514671607158566 
		26 -0.14514671607158566 35 -0.44299574108883399;
	setAttr -s 4 ".kit[0:3]"  9 1 1 9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[1:3]"  0.34277120232582092 0.31100356578826904 
		0.010071705095469952;
	setAttr -s 4 ".kiy[1:3]"  0.93941891193389893 -0.95040875673294067 
		-0.99994927644729614;
	setAttr -s 4 ".kox[1:3]"  0.34277108311653137 0.31100311875343323 
		0.010071705095469952;
	setAttr -s 4 ".koy[1:3]"  0.9394189715385437 -0.95040887594223022 
		-0.99994927644729614;
createNode animCurveTL -n "animCurveTL166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.5412845761155356 8 0.11388048969118612 
		26 0.11388048969118612 35 -0.5412845761155356;
	setAttr -s 4 ".kit[1:3]"  1 3 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[1:3]"  0.14436346292495728 1 0.0045789503492414951;
	setAttr -s 4 ".kiy[1:3]"  0.9895247220993042 0 -0.99998950958251953;
	setAttr -s 4 ".kox[1:3]"  0.92895078659057617 0.013735700398683548 
		0.0045789503492414951;
	setAttr -s 4 ".koy[1:3]"  -0.37020331621170044 -0.99990564584732056 
		-0.99998950958251953;
createNode animCurveTL -n "animCurveTL167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.49484451559913972 8 -0.20542595089916232 
		26 -0.20542595089916232 35 -0.49484451559913972;
	setAttr -s 4 ".kit[2:3]"  3 9;
	setAttr -s 4 ".kot[1:3]"  3 9 9;
createNode animCurveTL -n "animCurveTL168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.71931626134224813 8 -0.50664060260151778 
		26 -0.50664060260151778 35 -0.71931626134224813;
	setAttr -s 4 ".kit[2:3]"  3 9;
	setAttr -s 4 ".kot[1:3]"  3 9 9;
createNode animCurveTL -n "animCurveTL169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.66067307131502628 8 0.33552746989153265 
		26 0.33552746989153265 35 -0.66067307131502628;
	setAttr -s 4 ".kit[2:3]"  3 9;
	setAttr -s 4 ".kot[1:3]"  3 9 9;
createNode animCurveTA -n "animCurveTA504";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.061808866237340665 8 -0.061808866237340665 
		35 -0.061808866237340665;
createNode animCurveTA -n "animCurveTA505";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -59.058178941076754 8 -59.058178941076754 
		35 -59.058178941076754;
createNode animCurveTA -n "animCurveTA506";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.57914742975785 8 16.57914742975785 
		35 16.57914742975785;
createNode animCurveTA -n "animCurveTA507";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 12.253734489678925 8 12.253734489678925 
		35 12.253734489678925;
createNode animCurveTA -n "animCurveTA508";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -65.746751280844975 8 -65.746751280844975 
		35 -65.746751280844975;
createNode animCurveTA -n "animCurveTA509";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA510";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 15.711328223519061 8 15.711328223519061 
		35 15.711328223519061;
createNode animCurveTA -n "animCurveTA511";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.5572674112203657 8 8.5572674112203657 
		35 8.5572674112203657;
createNode animCurveTA -n "animCurveTA512";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA513";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA514";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA515";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA516";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA517";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA518";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.2533422302317216 5 8.2533422302317216 
		8 8.2533422302317216 25 8.2533422302317216 35 8.2533422302317216;
createNode animCurveTA -n "animCurveTA519";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 23.263402056531085 5 23.263402056531085 
		8 23.263402056531085 25 23.263402056531085 35 23.263402056531085;
createNode animCurveTA -n "animCurveTA520";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 20.166277752815617 5 20.166277752815617 
		8 20.166277752815617 25 20.166277752815617 35 20.166277752815617;
createNode animCurveTA -n "animCurveTA521";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 25 0 35 0;
createNode animCurveTA -n "animCurveTA522";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 25 0 35 0;
createNode animCurveTA -n "animCurveTA523";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 79.802705892979176 5 79.802705892979176 
		8 79.802705892979176 25 79.802705892979176 35 79.802705892979176;
createNode animCurveTA -n "animCurveTA524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 8 0 35 0;
createNode animCurveTA -n "animCurveTA527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 25 0 35 0;
createNode animCurveTA -n "animCurveTA528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 25 0 35 0;
createNode animCurveTA -n "animCurveTA529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 13.994403295754109 5 13.994403295754109 
		8 13.994403295754109 25 13.994403295754109 35 13.994403295754109;
createNode animCurveTA -n "animCurveTA530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 25 0 35 0;
createNode animCurveTA -n "animCurveTA531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 25 0 35 0;
createNode animCurveTA -n "animCurveTA532";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 13.994403295754109 5 13.994403295754109 
		8 13.994403295754109 25 13.994403295754109 35 13.994403295754109;
createNode animCurveTA -n "animCurveTA533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 25 0 35 0;
createNode animCurveTA -n "animCurveTA534";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 25 0 35 0;
createNode animCurveTA -n "animCurveTA535";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 71.026803426671577 5 71.026803426671577 
		8 71.026803426671577 25 71.026803426671577 35 71.026803426671577;
createNode animCurveTA -n "animCurveTA536";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 25 0 35 0;
createNode animCurveTA -n "animCurveTA537";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 25 0 35 0;
createNode animCurveTA -n "animCurveTA538";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 25 0 35 0;
createNode animCurveTA -n "animCurveTA539";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 25 0 35 0;
createNode animCurveTA -n "animCurveTA540";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.5886647225957985 5 6.0369138558465032 
		8 -2.6075105075068667 25 -2.6075105075068667 35 -0.5886647225957985;
createNode animCurveTA -n "animCurveTA541";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.5058694957498595 5 -2.5058694957498595 
		8 -2.5058694957498595 25 -2.5058694957498595 35 -2.5058694957498595;
createNode animCurveTA -n "animCurveTA542";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 25 0 35 0;
createNode animCurveTA -n "animCurveTA543";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 25 0 35 0;
createNode animCurveTA -n "animCurveTA544";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 25 0 35 0;
createNode animCurveTA -n "animCurveTA545";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 12.816044532299058 8 -0.59076148227003888 
		25 -0.59076148227003888 31 -17.795032381135897 35 0;
createNode animCurveTA -n "animCurveTA546";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 2.7877353590994791 8 0.57425571330301128 
		25 0 35 0;
createNode animCurveTA -n "animCurveTA547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 18.603314785497371 5 18.603314785497371 
		8 18.603314785497371 25 18.603314785497371 35 18.603314785497371;
createNode animCurveTA -n "animCurveTA548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.5315117770142568 5 1.5315117770142568 
		8 1.4395768870900252 25 1.4395768870900252 35 1.5315117770142568;
createNode animCurveTA -n "animCurveTA549";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.7891971390395636 5 -2.7891971390395636 
		8 -12.960151721890211 25 -12.960151721890211 35 -2.7891971390395636;
createNode animCurveTA -n "animCurveTA550";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 14 5 14 8 13.616998853037087 
		25 13.616998853037087 35 14;
createNode animCurveTA -n "animCurveTA551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.90377949588789308 5 0.90377949588789308 
		8 0.90377949588789308 25 0.90377949588789308 35 0.90377949588789308;
createNode animCurveTA -n "animCurveTA552";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -7.8984463198172383 5 -7.8984463198172383 
		8 -7.8984463198172383 25 -7.8984463198172383 35 -7.8984463198172383;
createNode animCurveTA -n "animCurveTA553";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 80.26632241086908 5 80.26632241086908 
		8 80.26632241086908 25 80.26632241086908 35 80.26632241086908;
createNode animCurveTA -n "animCurveTA554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.423754966968488 5 10.423754966968488 
		8 10.423754966968488 25 10.423754966968488 35 10.423754966968488;
createNode animCurveTA -n "animCurveTA555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.7228482558439 5 27.7228482558439 
		8 27.7228482558439 25 27.7228482558439 35 27.7228482558439;
createNode animCurveTA -n "animCurveTA556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 21.576484776388224 5 21.576484776388224 
		8 21.576484776388224 25 21.576484776388224 35 21.576484776388224;
createNode animCurveTA -n "animCurveTA557";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 25 0 35 0;
createNode animCurveTA -n "animCurveTA558";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 8 0 25 0 35 0;
createNode animCurveTA -n "animCurveTA559";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.911632519594587 5 27.911632519594587 
		8 27.911632519594587 25 27.911632519594587 35 27.911632519594587;
createNode clipLibrary -n "clipLibrary2";
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
select -ne :time1;
	setAttr ".o" 0;
select -ne :renderPartition;
	setAttr -s 86 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 86 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 50 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 50 ".tx";
select -ne :initialShadingGroup;
	setAttr -k on ".nds";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
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
connectAttr "gpa_driver_leftSource.st" "clipLibrary2.st[0]";
connectAttr "gpa_driver_leftSource.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL141.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL142.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary2.cel[0].cev[2].cevr"
		;
connectAttr "gpa_Motion_Root_translateY.a" "clipLibrary2.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary2.cel[0].cev[4].cevr"
		;
connectAttr "gpa_Motion_Root_rotateY.a" "clipLibrary2.cel[0].cev[5].cevr"
		;
connectAttr "animCurveTU7.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU8.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU9.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU10.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU11.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU12.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary2.cel[0].cev[12].cevr"
		;
connectAttr "Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary2.cel[0].cev[13].cevr"
		;
connectAttr "animCurveTA454.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA455.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA456.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL146.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL147.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL148.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL149.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL150.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL151.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA457.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA458.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA459.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL152.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL153.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL154.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA460.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA461.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA462.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA463.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA464.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA465.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA466.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA467.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA468.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTA469.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTA470.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTA471.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTA472.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTA473.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTA474.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL155.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL156.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL157.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTL158.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTL159.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTL160.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTL161.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTL162.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTL163.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA475.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA476.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA477.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA478.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA479.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA480.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA481.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA482.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA483.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA484.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA485.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA486.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA487.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA488.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA489.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA490.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA491.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA492.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA493.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA494.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA495.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA496.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA497.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTA498.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTA499.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTA500.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA501.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA502.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA503.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "Right_Arm_Hoop_translateX.a" "clipLibrary2.cel[0].cev[82].cevr"
		;
connectAttr "Right_Arm_Hoop_translateY.a" "clipLibrary2.cel[0].cev[83].cevr"
		;
connectAttr "Right_Arm_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[84].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[85].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[86].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[87].cevr"
		;
connectAttr "Left_Arm_Hoop_translateX.a" "clipLibrary2.cel[0].cev[88].cevr"
		;
connectAttr "Left_Arm_Hoop_translateY.a" "clipLibrary2.cel[0].cev[89].cevr"
		;
connectAttr "Left_Arm_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[90].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[91].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[92].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[93].cevr"
		;
connectAttr "gpa_Right_Arm_World_translateX.a" "clipLibrary2.cel[0].cev[94].cevr"
		;
connectAttr "gpa_Right_Arm_World_translateY.a" "clipLibrary2.cel[0].cev[95].cevr"
		;
connectAttr "gpa_Right_Arm_World_translateZ.a" "clipLibrary2.cel[0].cev[96].cevr"
		;
connectAttr "gpa_Right_Arm_World_rotateX.a" "clipLibrary2.cel[0].cev[97].cevr"
		;
connectAttr "gpa_Right_Arm_World_rotateY.a" "clipLibrary2.cel[0].cev[98].cevr"
		;
connectAttr "gpa_Right_Arm_World_rotateZ.a" "clipLibrary2.cel[0].cev[99].cevr"
		;
connectAttr "gpa_Left_Arm_World_translateX.a" "clipLibrary2.cel[0].cev[100].cevr"
		;
connectAttr "gpa_Left_Arm_World_translateY.a" "clipLibrary2.cel[0].cev[101].cevr"
		;
connectAttr "gpa_Left_Arm_World_translateZ.a" "clipLibrary2.cel[0].cev[102].cevr"
		;
connectAttr "gpa_Left_Arm_World_rotateX.a" "clipLibrary2.cel[0].cev[103].cevr"
		;
connectAttr "gpa_Left_Arm_World_rotateY.a" "clipLibrary2.cel[0].cev[104].cevr"
		;
connectAttr "gpa_Left_Arm_World_rotateZ.a" "clipLibrary2.cel[0].cev[105].cevr"
		;
connectAttr "animCurveTL164.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTL165.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTL166.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTL167.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTL168.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTL169.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA504.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA505.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA506.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA507.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA508.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA509.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA510.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA511.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA512.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA513.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA514.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA515.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA516.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA517.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA518.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA519.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA520.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA521.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA522.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA523.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA524.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA525.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA526.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA527.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA528.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA529.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA530.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA531.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA532.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA533.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA534.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA535.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA536.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA537.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA538.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA539.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA540.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA541.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA542.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA543.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA544.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA545.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA546.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA547.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA548.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA549.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA550.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA551.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA552.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA553.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr "animCurveTA554.a" "clipLibrary2.cel[0].cev[162].cevr";
connectAttr "animCurveTA555.a" "clipLibrary2.cel[0].cev[163].cevr";
connectAttr "animCurveTA556.a" "clipLibrary2.cel[0].cev[164].cevr";
connectAttr "animCurveTA557.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "animCurveTA558.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "animCurveTA559.a" "clipLibrary2.cel[0].cev[167].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
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
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[38].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[39].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[40].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[41].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[42].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[43].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[44].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[45].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[46].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[47].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[48].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[49].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[50].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[51].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[52].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[53].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[54].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[55].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[56].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[57].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[58].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[59].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[60].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[61].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[62].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[63].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[64].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[65].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[66].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[67].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[68].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[69].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[70].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[71].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[72].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[73].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[74].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[75].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[76].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[77].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[78].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[79].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[80].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[81].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[82].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[83].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[84].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[85].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[85].olnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of gpa_driver_left.ma
