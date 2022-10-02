//Maya ASCII 4.0 scene
//Name: apu_victory_large.ma
//Last modified: Tue, Feb 25, 2003 04:31:31 PM
requires maya "4.0";
requires "p3dSimpleShader" "18.8";
requires "p3dmayaexp" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "apu_victory_largeSource";
	setAttr ".ihi" 0;
	setAttr ".du" 44;
	setAttr ".ci" no;
createNode animCurveTL -n "apu_Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 5 1 7 1 11 1 13 1 18.16 1 20 
		1 35.66 1 44 1;
createNode animCurveTL -n "apu_Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.060083816922849878 5 -0.060083816922849878 
		7 -0.060083816922849878 11 -0.060083816922849878 13 -0.060083816922849878 
		18.16 -0.060083816922849878 20 -0.060083816922849878 35.66 -0.060083816922849878 
		44 -0.060083816922849878;
createNode animCurveTL -n "apu_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTU -n "animCurveTU1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 14 0 28.66 0;
createNode animCurveTU -n "animCurveTU2";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 14 0 28.66 0;
createNode animCurveTU -n "animCurveTU3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
	setAttr -s 9 ".kit[1:8]"  3 3 9 3 9 9 9 
		9;
	setAttr -s 9 ".kot[1:8]"  3 3 9 3 9 9 9 
		9;
createNode animCurveTA -n "apu_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
	setAttr -s 9 ".kit[1:8]"  3 3 9 3 9 9 9 
		9;
	setAttr -s 9 ".kot[1:8]"  3 3 9 3 9 9 9 
		9;
createNode animCurveTA -n "apu_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
	setAttr -s 9 ".kit[1:8]"  3 3 9 3 9 9 9 
		9;
	setAttr -s 9 ".kot[1:8]"  3 3 9 3 9 9 9 
		9;
createNode animCurveTL -n "apu_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
	setAttr -s 9 ".kit[1:8]"  3 3 9 3 9 9 9 
		9;
	setAttr -s 9 ".kot[1:8]"  3 3 9 3 9 9 9 
		9;
createNode animCurveTL -n "apu_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
	setAttr -s 9 ".kit[1:8]"  3 3 9 3 9 9 9 
		9;
	setAttr -s 9 ".kot[1:8]"  3 3 9 3 9 9 9 
		9;
createNode animCurveTL -n "apu_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
	setAttr -s 9 ".kit[1:8]"  3 3 9 3 9 9 9 
		9;
	setAttr -s 9 ".kot[1:8]"  3 3 9 3 9 9 9 
		9;
createNode animCurveTL -n "apu_Right_Foot_Hoop_translateX";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.26454016861507795 5 -0.72057008972862902 
		7 -0.72057008972862902 11 -0.72057008972862902 13 -0.72057008972862902 18.16 
		-2.0101360007873827 20 -1.8884118815355859 21.66 -1.6253626415395925 28.66 
		-1.043258303025653 31 -1.0296802721242508 35.66 -0.41059456289381824 40.340000000000003 
		-0.41059456289381824 44 -0.26454016861507795;
	setAttr -s 13 ".kit[0:12]"  9 3 3 9 3 9 9 
		9 3 3 3 3 9;
	setAttr -s 13 ".kot[0:12]"  9 3 3 9 3 9 9 
		9 3 3 3 3 9;
createNode animCurveTL -n "apu_Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.13806192026723146 3 0.24729503812600961 
		5 0.13806192026723146 7 0.13806192026723146 11 0.13806192026723146 13 0.13806192026723146 
		15 0.57271066274732474 18.16 1.8012877608430111 20 1.8350876629634953 21.66 
		1.5762035307095608 28.66 0.13806192026723146 31 0.13806192026723146 40.340000000000003 
		0.13806192026723146 44 0.13806192026723146;
	setAttr -s 14 ".kit[5:13]"  3 9 9 9 9 3 3 
		9 9;
	setAttr -s 14 ".kot[5:13]"  3 9 9 9 9 3 3 
		9 9;
createNode animCurveTL -n "apu_Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.064904406754016042 5 -0.064904406754016042 
		7 -0.064904406754016042 11 -0.064904406754016042 13 -0.064904406754016042 
		18.16 -0.064904406754016042 20 -0.064904406754016042 28.66 -0.064904406754016042 
		31 -0.064904406754016042 40.340000000000003 -0.064904406754016042 44 -0.064904406754016042;
createNode animCurveTA -n "apu_Right_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 3 16.87664958544617 5 0 7 0 
		11 0 13 0 18.16 5.5718352963883158 20 5.5135043132481547 21.66 4.6029489794996534 
		28.66 0 31 0 40.340000000000003 0 44 0;
createNode animCurveTA -n "apu_Right_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -25.948901905116401 5 -25.948901905116401 
		7 -25.948901905116401 11 -25.948901905116401 13 -25.948901905116401 18.16 
		-78.135362577294387 20 -52.678778239542488 21.66 -26.575783096632058 28.66 
		-25.948901905116401 31 -25.948901905116401 40.340000000000003 -25.948901905116401 
		44 -25.948901905116401;
createNode animCurveTA -n "apu_Right_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 7 0 11 0 13 0 18.16 -118.67815483095983 
		20 -114.48072707600757 21.66 -93.001411429083575 28.66 0 31 0 40.340000000000003 
		0 44 0;
createNode animCurveTL -n "apu_Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.21594587158542247 5 0.21594587158542247 
		7 0.19622759924389951 11 -0.40652412260470805 13 -0.42131282686085025 18.16 
		-0.46763439321540007 20 -0.78646142627525617 21.66 -1.6210331612132427 26 
		-0.42969333954376299 28.66 -0.23525953222409471 35.68 -0.23525953222409471 
		40.340000000000003 0.21594587158542247 44 0.21594587158542247;
	setAttr -s 13 ".kit[1:12]"  3 1 9 3 9 9 9 
		9 3 3 9 9;
	setAttr -s 13 ".kot[1:12]"  3 1 9 3 9 9 9 
		9 3 3 9 9;
	setAttr -s 13 ".kix[2:12]"  0.021320383995771408 0.0032386374659836292 
		1 0.0063899615779519081 0.0010115028126165271 0.0056057944893836975 0.00168377417139709 
		1 1 0.0061463820748031139 1;
	setAttr -s 13 ".kiy[2:12]"  -0.99977266788482666 -0.99999475479125977 
		0 -0.99997955560684204 -0.99999946355819702 0.9999842643737793 0.99999856948852539 
		0 0 0.9999811053276062 0;
	setAttr -s 13 ".kox[2:12]"  0.021320374682545662 0.0032386374659836292 
		1 0.0063899615779519081 0.0010115028126165271 0.0056057944893836975 0.00168377417139709 
		1 1 0.0061463820748031139 1;
	setAttr -s 13 ".koy[2:12]"  -0.99977266788482666 -0.99999475479125977 
		0 -0.99997955560684204 -0.99999946355819702 0.9999842643737793 0.99999856948852539 
		0 0 0.9999811053276062 0;
createNode animCurveTL -n "apu_Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.1380615615975922 5 0.1380615615975922 
		7 0.1380615615975922 9 0.16894463684771371 11 0.1380615615975922 13 0.1380615615975922 
		18.16 0.37851332490141387 20 0.87353826128555678 21.66 1.3584475659331952 
		26 0.34095409332782767 28.66 0.1380615615975922 35.68 0.1380615615975922 
		40.340000000000003 0.1380615615975922 44 0.1380615615975922;
	setAttr -s 14 ".kit[1:13]"  3 3 9 9 3 9 9 
		9 9 3 3 9 9;
	setAttr -s 14 ".kot[1:13]"  3 3 9 9 3 9 9 
		9 9 3 3 9 9;
createNode animCurveTL -n "apu_Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.00078430246903575811 5 0.00078430246903575811 
		7 0.00078430246903575811 11 0.00078430246903575811 13 0.00078430246903575811 
		18.16 0.00078430246903575811 20 0.00078430246903575811 28.66 0.00078430246903575811 
		35.68 0.00078430246903575811 40.340000000000003 0.00078430246903575811 44 
		0.00078430246903575811;
	setAttr -s 11 ".kit[7:10]"  3 3 9 9;
	setAttr -s 11 ".kot[7:10]"  3 3 9 9;
createNode animCurveTA -n "apu_Left_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 7 0 9 7.850833315628063 
		11 0 13 0 18.16 25.206454086717123 20 38.068604744670345 21.66 54.263592245967182 
		28.66 0 35.68 0 40.340000000000003 0 44 0;
	setAttr -s 13 ".kit[9:12]"  3 3 9 9;
	setAttr -s 13 ".kot[9:12]"  3 3 9 9;
createNode animCurveTA -n "apu_Left_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 5 0 7 0 9 67.800105001866982 
		11 0 13 0 18.16 20.662720429169145 20 14.057805978395818 21.66 48.91478185349299 
		28.66 0 35.68 0 40.340000000000003 0 44 0;
	setAttr -s 13 ".kit[9:12]"  3 3 9 9;
	setAttr -s 13 ".kot[9:12]"  3 3 9 9;
createNode animCurveTA -n "apu_Left_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 5 0 7 0 11 0 13 0 18.16 -36.857408747893565 
		20 -19.983657735654855 21.66 -10.5386763023324 28.66 0 35.68 0 40.340000000000003 
		0 44 0;
	setAttr -s 12 ".kit[8:11]"  3 3 9 9;
	setAttr -s 12 ".kot[8:11]"  3 3 9 9;
createNode animCurveTA -n "apu_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTL -n "apu_Right_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTL -n "apu_Right_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTL -n "apu_Right_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 5 1 7 1 11 1 13 1 18.16 1 20 
		1 35.66 1 44 1;
createNode animCurveTL -n "apu_Left_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTL -n "apu_Left_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTL -n "apu_Left_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 5 1 7 1 11 1 13 1 18.16 1 20 
		1 35.66 1 44 1;
createNode animCurveTL -n "apu_Character_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.038653075460432805 5 -0.31093101005817714 
		7 -0.336052736952693 11 -0.53978783537596609 13 -0.58089611574881039 18.16 
		-0.75610701174788675 20 -0.75483471792139267 31 -0.60635858125975106 40.340000000000003 
		0.038653075460432805 44 0.038653075460432805;
	setAttr -s 10 ".kit[7:9]"  1 9 9;
	setAttr -s 10 ".kot[7:9]"  1 9 9;
	setAttr -s 10 ".kix[7:9]"  0.014586522243916988 0.0067180730402469635 
		1;
	setAttr -s 10 ".kiy[7:9]"  0.99989360570907593 0.99997740983963013 
		0;
	setAttr -s 10 ".kox[7:9]"  0.014586653560400009 0.0067180730402469635 
		1;
	setAttr -s 10 ".koy[7:9]"  0.99989360570907593 0.99997740983963013 
		0;
createNode animCurveTL -n "apu_Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.99296149630440844 5 0.75746373859109783 
		7 0.62559360466625979 11 0.61789278156091954 13 0.79691259333909759 18.16 
		1.5994978877722557 20 1.7758922500328134 21.66 1.6535892373378047 31 0.57729355213991129 
		35.66 0.85749804199378887 40.340000000000003 0.99296149630440844 44 0.99296149630440844;
	setAttr -s 12 ".kit[0:11]"  1 9 9 9 1 9 9 
		1 9 1 1 9;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 1 9 9 
		1 9 1 1 9;
	setAttr -s 12 ".kix[0:11]"  0.087472312152385712 0.0063513610512018204 
		0.014328158460557461 0.011673334054648876 0.0034172812011092901 0.0023834272287786007 
		0.021563436836004257 0.0018015239620581269 0.0058618742041289806 0.0056040878407657146 
		0.039505459368228912 1;
	setAttr -s 12 ".kiy[0:11]"  0.99616694450378418 -0.99997985363006592 
		-0.99989736080169678 0.99993187189102173 0.99999415874481201 0.99999713897705078 
		0.9997674822807312 -0.99999839067459106 -0.99998283386230469 0.99998432397842407 
		0.99921935796737671 0;
	setAttr -s 12 ".kox[0:11]"  0.087472394108772278 0.0063513610512018204 
		0.014328158460557461 0.011673334054648876 0.0034174250904470682 0.0023834272287786007 
		0.021563436836004257 0.0018014194210991263 0.0058618742041289806 0.0056041153147816658 
		0.039505410939455032 1;
	setAttr -s 12 ".koy[0:11]"  0.99616694450378418 -0.99997985363006592 
		-0.99989736080169678 0.99993187189102173 0.99999415874481201 0.99999713897705078 
		0.9997674822807312 -0.99999839067459106 -0.99998283386230469 0.99998432397842407 
		0.99921935796737671 0;
createNode animCurveTL -n "apu_Character_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 21.66 0 40.340000000000003 0 44 0;
createNode animCurveTA -n "apu_Character_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.62843630316474508 5 -0.63691049195303506 
		7 -0.62519274961270188 11 -0.63648037078017783 13 0.26570032236480678 18.16 
		-1.3843551453182581 20 -1.4932926868057499 21.66 -1.7098415622532688 31 -0.4390721139041539 
		40.340000000000003 -0.62843630316474508 44 -0.62843630316474508;
createNode animCurveTA -n "apu_Character_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -5.8284402688137158 5 11.009782208968012 
		7 0.23646794718389225 11 10.808968664328388 13 10.824247720517558 18.16 0.41653002290805818 
		20 -0.77697456402730236 21.66 1.3242954139420409 31 15.284585297573956 40.340000000000003 
		-5.8284402688137158 44 -5.8284402688137158;
createNode animCurveTA -n "apu_Character_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.2956360193097458 5 -1.4810961541035885 
		7 -1.3620366899146767 11 -1.4788234639994084 13 3.3258315221835248 18.16 
		-2.500067427639411 20 -39.406724055968425 21.66 -15.149229996571895 31 2.3693432052342089 
		40.340000000000003 -1.2956360193097458 44 -1.2956360193097458;
createNode animCurveTA -n "apu_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 37.012251385600706 
		20 36.236930405703525 35.66 0 44 0;
createNode animCurveTA -n "apu_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 -32.361589960549935 
		20 -31.683689549126807 35.66 0 44 0;
createNode animCurveTA -n "apu_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 -73.46256795339616 
		20 -71.923697262683262 35.66 0 44 0;
createNode animCurveTA -n "apu_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 437.22692826117054 
		20 428.06803632547138 35.66 0 44 0;
createNode animCurveTA -n "apu_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_L_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_L_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_L_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTL -n "apu_Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.32790263926519492 5 -0.32790263926519492 
		7 -0.32790263926519492 11 -0.32790263926519492 13 -0.32790263926519492 18.16 
		-0.32790263926519492 20 -0.32790263926519492 35.66 -0.32790263926519492 44 
		-0.32790263926519492;
createNode animCurveTL -n "apu_Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.89102848802486645 5 -0.89102848802486645 
		7 -0.89102848802486645 11 -0.89102848802486645 13 -0.89102848802486645 18.16 
		-0.89102848802486645 20 -0.89102848802486645 35.66 -0.89102848802486645 44 
		-0.89102848802486645;
createNode animCurveTL -n "apu_Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.12478177741251885 5 0.12478177741251885 
		7 0.12478177741251885 11 0.12478177741251885 13 0.12478177741251885 18.16 
		0.12478177741251885 20 0.12478177741251885 35.66 0.12478177741251885 44 0.12478177741251885;
createNode animCurveTA -n "apu_Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 7.6521954308306714 5 7.6521954308306714 
		7 7.6521954308306714 11 7.6521954308306714 13 7.6521954308306714 18.16 7.6521954308306714 
		20 7.6521954308306714 35.66 7.6521954308306714 44 7.6521954308306714;
createNode animCurveTA -n "apu_Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 15.398180221309227 5 15.398180221309227 
		7 15.398180221309227 11 15.398180221309227 13 15.398180221309227 18.16 15.398180221309227 
		20 15.398180221309227 35.66 15.398180221309227 44 15.398180221309227;
createNode animCurveTA -n "apu_Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 82.915573338154275 5 82.915573338154275 
		7 82.915573338154275 11 82.915573338154275 13 82.915573338154275 18.16 82.915573338154275 
		20 82.915573338154275 35.66 82.915573338154275 44 82.915573338154275;
createNode animCurveTL -n "apu_Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.34029526049219555 5 0.34029526049219555 
		7 0.34029526049219555 11 0.34029526049219555 13 0.34029526049219555 18.16 
		0.34029526049219555 20 0.34029526049219555 35.66 0.34029526049219555 44 0.34029526049219555;
createNode animCurveTL -n "apu_Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.88721273313410354 5 -0.88721273313410354 
		7 -0.88721273313410354 11 -0.88721273313410354 13 -0.88721273313410354 18.16 
		-0.88721273313410354 20 -0.88721273313410354 35.66 -0.88721273313410354 44 
		-0.88721273313410354;
createNode animCurveTL -n "apu_Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.15740899664846897 5 0.15740899664846897 
		7 0.15740899664846897 11 0.15740899664846897 13 0.15740899664846897 18.16 
		0.15740899664846897 20 0.15740899664846897 35.66 0.15740899664846897 44 0.15740899664846897;
createNode animCurveTA -n "apu_Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.4716200602073644 5 1.4716200602073644 
		7 1.4716200602073644 11 1.4716200602073644 13 1.4716200602073644 18.16 1.4716200602073644 
		20 1.4716200602073644 35.66 1.4716200602073644 44 1.4716200602073644;
createNode animCurveTA -n "apu_Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -13.490899720017319 5 -13.490899720017319 
		7 -13.490899720017319 11 -13.490899720017319 13 -13.490899720017319 18.16 
		-13.490899720017319 20 -13.490899720017319 35.66 -13.490899720017319 44 -13.490899720017319;
createNode animCurveTA -n "apu_Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -64.363245432339795 5 -64.363245432339795 
		7 -64.363245432339795 11 -64.363245432339795 13 -64.363245432339795 18.16 
		-64.363245432339795 20 -64.363245432339795 35.66 -64.363245432339795 44 -64.363245432339795;
createNode animCurveTL -n "apu_Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.8448236677023373 5 -0.8448236677023373 
		7 -0.8448236677023373 11 -0.8448236677023373 13 -0.8448236677023373 18.16 
		-0.8448236677023373 20 -0.8448236677023373 35.66 -0.8448236677023373 44 -0.8448236677023373;
createNode animCurveTL -n "apu_Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.5117481219250299 5 1.5117481219250299 
		7 1.5117481219250299 11 1.5117481219250299 13 1.5117481219250299 18.16 1.5117481219250299 
		20 1.5117481219250299 35.66 1.5117481219250299 44 1.5117481219250299;
createNode animCurveTL -n "apu_Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.097994651149805143 5 -0.097994651149805143 
		7 -0.097994651149805143 11 -0.097994651149805143 13 -0.097994651149805143 
		18.16 -0.097994651149805143 20 -0.097994651149805143 35.66 -0.097994651149805143 
		44 -0.097994651149805143;
createNode animCurveTA -n "apu_Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 5.4739599453216474 5 5.4739599453216474 
		7 5.4739599453216474 11 5.4739599453216474 13 5.4739599453216474 18.16 5.4739599453216474 
		20 5.4739599453216474 35.66 5.4739599453216474 44 5.4739599453216474;
createNode animCurveTA -n "apu_Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.5874521608419823 5 8.5874521608419823 
		7 8.5874521608419823 11 8.5874521608419823 13 8.5874521608419823 18.16 8.5874521608419823 
		20 8.5874521608419823 35.66 8.5874521608419823 44 8.5874521608419823;
createNode animCurveTA -n "apu_Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 74.754744621954103 5 74.754744621954103 
		7 74.754744621954103 11 74.754744621954103 13 74.754744621954103 18.16 74.754744621954103 
		20 74.754744621954103 35.66 74.754744621954103 44 74.754744621954103;
createNode animCurveTL -n "apu_Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.61083301393139333 5 0.61083301393139333 
		7 0.61083301393139333 11 0.61083301393139333 13 0.61083301393139333 18.16 
		0.61083301393139333 20 0.61083301393139333 35.66 0.61083301393139333 44 0.61083301393139333;
createNode animCurveTL -n "apu_Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.4644416293758407 5 1.4644416293758407 
		7 1.4644416293758407 11 1.4644416293758407 13 1.4644416293758407 18.16 1.4644416293758407 
		20 1.4644416293758407 35.66 1.4644416293758407 44 1.4644416293758407;
createNode animCurveTL -n "apu_Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.14314299916678522 5 0.14314299916678522 
		7 0.14314299916678522 11 0.14314299916678522 13 0.14314299916678522 18.16 
		0.14314299916678522 20 0.14314299916678522 35.66 0.14314299916678522 44 0.14314299916678522;
createNode animCurveTA -n "apu_Left_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 16.226511010665405 5 16.226511010665405 
		7 16.226511010665405 11 16.226511010665405 13 16.226511010665405 18.16 16.226511010665405 
		20 16.226511010665405 35.66 16.226511010665405 44 16.226511010665405;
createNode animCurveTA -n "apu_Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -8.513966085499284 5 -8.513966085499284 
		7 -8.513966085499284 11 -8.513966085499284 13 -8.513966085499284 18.16 -8.513966085499284 
		20 -8.513966085499284 35.66 -8.513966085499284 44 -8.513966085499284;
createNode animCurveTA -n "apu_Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -68.213989601412422 5 -68.213989601412422 
		7 -68.213989601412422 11 -68.213989601412422 13 -68.213989601412422 18.16 
		-68.213989601412422 20 -68.213989601412422 35.66 -68.213989601412422 44 -68.213989601412422;
createNode animCurveTL -n "apu_Left_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTL -n "apu_Left_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTL -n "apu_Left_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1 5 -1 7 -1 11 -1 13 -1 18.16 
		-1 20 -1 35.66 -1 44 -1;
createNode animCurveTL -n "apu_Right_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.10167917362943303 5 -0.10167917362943303 
		7 -0.10167917362943303 11 -0.10167917362943303 13 -0.10167917362943303 18.16 
		-0.10167917362943303 20 -0.10167917362943303 35.66 -0.10167917362943303 44 
		-0.10167917362943303;
createNode animCurveTL -n "apu_Right_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.40762644910266188 5 -0.40762644910266188 
		7 -0.40762644910266188 11 -0.40762644910266188 13 -0.40762644910266188 18.16 
		-0.40762644910266188 20 -0.40762644910266188 35.66 -0.40762644910266188 44 
		-0.40762644910266188;
createNode animCurveTL -n "apu_Right_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.93129112588482243 5 -0.93129112588482243 
		7 -0.93129112588482243 11 -0.93129112588482243 13 -0.93129112588482243 18.16 
		-0.93129112588482243 20 -0.93129112588482243 35.66 -0.93129112588482243 44 
		-0.93129112588482243;
createNode animCurveTA -n "apu_R_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.253734489678925 5 -13.346854278445242 
		11 -13.346854278445242 20 -29.15663730387196 31 14.563732149537387 40 12.253734489678925 
		44 12.253734489678925;
createNode animCurveTA -n "apu_R_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -65.746751280844961 5 -44.358982696297929 
		11 -44.358982696297929 20 25.681540858794612 31 -54.86435912843551 40 -65.746751280844961 
		44 -65.746751280844961;
createNode animCurveTA -n "apu_R_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 3.871449260799477e-015 5 27.651773619922491 
		11 27.651773619922491 20 5.1077463368949862 31 6.5977639846462983 40 3.871449260799477e-015 
		44 3.871449260799477e-015;
createNode animCurveTA -n "apu_L_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.061808866237337522 5 -0.061808866237337522 
		11 -32.70227890218964 20 -94.862562780785566 31 -66.007357762448976 35.66 
		-11.2405340109656 40 -0.061808866237337522 44 -0.061808866237337522;
createNode animCurveTA -n "apu_L_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -59.058178941076754 5 -59.058178941076754 
		11 -36.573049606597309 20 7.7383979098614981 31 -60.987729883040807 35.66 
		-44.149959416800222 40 -59.058178941076754 44 -59.058178941076754;
createNode animCurveTA -n "apu_L_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 16.579147429757843 5 16.579147429757843 
		11 80.098137239343416 20 50.923821400056241 31 38.872506488200372 35.66 31.066677395735105 
		40 16.579147429757843 44 16.579147429757843;
createNode animCurveTA -n "apu_R_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.5572674112203622 5 59.388895198529859 
		11 107.89747801715293 18.16 46.403204591470598 20 79.591683493171232 21.66 
		32.40917043117264 31 80.965353993729025 35.66 104.67260972762428 44 8.5572674112203622;
createNode animCurveTA -n "apu_L_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 15.711328223519057 5 5.759063885780801 
		11 85.678367799192301 18.16 27.191908211113002 20 89.573991895301177 21.66 
		48.880787704053056 31 122.80983477178454 35.66 89.982942768852396 40 15.711328223519057 
		44 15.711328223519057;
createNode animCurveTA -n "apu_R_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_R_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 31 38.28840503236448 35.66 0 44 0;
createNode animCurveTA -n "apu_R_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 31 32.622746521975344 35.66 0 44 0;
createNode animCurveTA -n "apu_L_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 -7.7471130202077569 7 0 11 
		0 13 0 18.16 0 20 0 35.66 0 44 0;
createNode animCurveTA -n "apu_L_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 -12.724653712012588 7 0 11 
		0 13 0 18.16 0 20 0 35.66 0 44 0;
createNode animCurveTA -n "apu_L_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 31.700694134855897 7 0 11 
		0 13 0 18.16 0 20 0 35.66 0 44 0;
createNode animCurveTA -n "apu_Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 10.423754966968488 5 10.423754966968488 
		7 10.423754966968488 11 -50.139998098530988 13 10.423754966968488 18.16 10.423754966968488 
		20 10.423754966968488 35.66 10.423754966968488 44 10.423754966968488;
createNode animCurveTA -n "apu_Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 27.722848255843903 5 27.722848255843903 
		7 27.722848255843903 11 19.68681542465734 13 27.722848255843903 18.16 27.722848255843903 
		20 27.722848255843903 35.66 27.722848255843903 44 27.722848255843903;
createNode animCurveTA -n "apu_Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 21.576484776388227 5 21.576484776388227 
		7 21.576484776388227 11 16.075256379745511 13 21.576484776388227 18.16 21.576484776388227 
		20 21.576484776388227 35.66 21.576484776388227 44 21.576484776388227;
createNode animCurveTA -n "apu_Middle_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 -4.560381264514441 7 0 11 
		0 13 0 18.16 0 20 0 35.66 0 44 0;
createNode animCurveTA -n "apu_Middle_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 22.303278845423513 7 0 11 
		0 13 0 18.16 0 20 0 35.66 0 44 0;
createNode animCurveTA -n "apu_Middle_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 27.080064458283051 5 83.81902760916249 
		7 27.080064458283051 11 27.080064458283051 13 27.080064458283051 18.16 27.080064458283051 
		20 74.540670001993135 35.66 27.080064458283051 44 27.080064458283051;
createNode animCurveTA -n "apu_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 13.994403295754109 5 13.994403295754109 
		7 13.994403295754109 11 12.030301795442655 13 13.994403295754109 18.16 13.994403295754109 
		20 13.994403295754109 35.66 13.994403295754109 44 13.994403295754109;
createNode animCurveTA -n "apu_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 13.994403295754109 5 13.994403295754109 
		7 13.994403295754109 11 12.030301795442655 13 13.994403295754109 18.16 13.994403295754109 
		20 13.994403295754109 35.66 13.994403295754109 44 13.994403295754109;
createNode animCurveTA -n "apu_Middle_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 7 0 11 0 18.16 0 20 0 44 
		0;
createNode animCurveTA -n "apu_Middle_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 7 0 11 0 18.16 0 20 0 44 
		0;
createNode animCurveTA -n "apu_Middle_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.911632519594587 5 55.490554081872915 
		7 27.911632519594587 11 96.904570553718131 18.16 96.904570553718131 20 96.904570553718131 
		44 27.911632519594587;
createNode animCurveTA -n "apu_Jaw_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_Jaw_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_Jaw_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 0 7 0 11 0 13 0 18.16 0 20 
		0 35.66 0 44 0;
createNode animCurveTA -n "apu_Spine_2_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.65073001024951671 5 0.21341207110710558 
		11 20.12856235262803 18.16 9.3191709216343046 20 9.3191709216343046 21.66 
		-2.7932488833924891 31 0 40 -0.65073001024951671 44 -0.65073001024951671;
createNode animCurveTA -n "apu_Spine_2_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -4.2368721935960929 5 -4.281156792916966 
		11 -4.1339569205587798 18.16 5.9404407358337927 20 5.9404407358337927 21.66 
		-15.426080016497519 31 0 40 -4.2368721935960929 44 -4.2368721935960929;
createNode animCurveTA -n "apu_Spine_2_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.7398866450636881 5 -2.8564502572248487 
		11 15.35678075556838 18.16 -16.655916103627654 20 -16.655916103627654 21.66 
		-12.498920254655649 31 39.237123336870525 40 8.7398866450636881 44 8.7398866450636881;
createNode animCurveTA -n "apu_Neck_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 -22.195784090126505 7 0 11 
		0 13 0 18.16 0 20 0 21.66 16.397492041760941 35.66 0 40 0 44 0;
createNode animCurveTA -n "apu_Neck_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 -4.8295098093155753 7 0 11 
		0 13 0 18.16 0 20 0 21.66 3.5798020991792607 35.66 0 40 0 44 0;
createNode animCurveTA -n "apu_Neck_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -15.452965173287611 5 -14.346750988363448 
		7 -15.452965173287611 11 -15.452965173287611 13 -15.452965173287611 18.16 
		-15.452965173287611 20 -15.452965173287611 21.66 -6.2685894657013437 35.66 
		-15.452965173287611 40 -15.452965173287611 44 -15.452965173287611;
createNode animCurveTA -n "apu_Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 4.8714700432790456 5 4.8714700432790456 
		7 4.8714700432790456 11 -18.381936973692518 18.16 17.308245911276362 20 32.402522698035774 
		31 16.515218545942982 40 4.8714700432790456 44 4.8714700432790456;
createNode animCurveTA -n "apu_Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 11.783606204137085 5 11.783606204137085 
		7 11.783606204137085 11 15.978297401674125 18.16 -3.756212099746131 20 23.703892083807016 
		31 31.951187777810802 40 11.783606204137085 44 11.783606204137085;
createNode animCurveTA -n "apu_Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 7.5423825101935913 5 7.5423825101935913 
		7 7.5423825101935913 11 19.484641720989288 18.16 16.974134432987093 20 35.33141006728971 
		31 -18.515181370522203 40 7.5423825101935913 44 7.5423825101935913;
createNode animCurveTA -n "apu_Spine_1_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.8903601258661931 5 9.7842836511005995 
		11 9.7842836511005995 18.16 1.459975499716464 20 1.459975499716464 31 -1.3474098154829006 
		40 -1.8903601258661931 44 -1.8903601258661931;
createNode animCurveTA -n "apu_Spine_1_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.5597289571479034 5 21.889557201002745 
		11 21.889557201002745 18.16 6.5350217419176957 20 6.5350217419176957 31 -10.272494507665062 
		40 2.5597289571479034 44 2.5597289571479034;
createNode animCurveTA -n "apu_Spine_1_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.016811087403604 5 30.957445101230753 
		11 30.957445101230753 18.16 27.151860187187932 20 27.151860187187932 31 37.975968726674722 
		40 2.016811087403604 44 2.016811087403604;
createNode animCurveTA -n "apu_Middle_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 -2.4980416074069201 7 0 11 
		0 18.16 0 20 0 44 0;
createNode animCurveTA -n "apu_Middle_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 7.987435157420185 7 0 11 
		0 18.16 0 20 0 44 0;
createNode animCurveTA -n "apu_Middle_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 33.429092416277157 5 94.144130828465904 
		7 33.429092416277157 11 33.429092416277157 18.16 33.429092416277157 20 33.429092416277157 
		44 33.429092416277157;
createNode animCurveTA -n "apu_Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 8.2533422302317216 5 8.2533422302317216 
		7 8.2533422302317216 11 -50.139998098530988 13 8.2533422302317216 18.16 8.2533422302317216 
		20 8.2533422302317216 35.66 8.2533422302317216 44 8.2533422302317216;
createNode animCurveTA -n "apu_Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 23.263402056531085 5 23.263402056531085 
		7 23.263402056531085 11 19.68681542465734 13 23.263402056531085 18.16 23.263402056531085 
		20 23.263402056531085 35.66 23.263402056531085 44 23.263402056531085;
createNode animCurveTA -n "apu_Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 20.166277752815617 5 20.166277752815617 
		7 20.166277752815617 11 16.075256379745511 13 20.166277752815617 18.16 20.166277752815617 
		20 20.166277752815617 35.66 20.166277752815617 44 20.166277752815617;
createNode animCurveTA -n "apu_Middle_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 1.7308898828742409 7 0 11 
		0 13 0 18.16 0 20 0 35.66 0 44 0;
createNode animCurveTA -n "apu_Middle_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 5 14.423833550036129 7 0 11 
		0 13 0 18.16 0 20 0 35.66 0 44 0;
createNode animCurveTA -n "apu_Middle_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 17.254116939558369 5 63.144683657728415 
		7 17.254116939558369 11 17.254116939558369 13 17.254116939558369 18.16 17.254116939558369 
		20 96.896486782620613 35.66 17.254116939558369 44 17.254116939558369;
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
	setAttr ".o" 15;
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
	setAttr ".fs" 1;
	setAttr ".ef" 10;
select -ne :defaultResolution;
	setAttr ".w" 640;
	setAttr ".h" 480;
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
connectAttr "apu_victory_largeSource.st" "clipLibrary1.st[0]";
connectAttr "apu_victory_largeSource.du" "clipLibrary1.du[0]";
connectAttr "apu_Extra_Attributes_translateX.a" "clipLibrary1.cel[0].cev[0].cevr"
		;
connectAttr "apu_Extra_Attributes_translateY.a" "clipLibrary1.cel[0].cev[1].cevr"
		;
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "apu_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "apu_Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr"
		;
connectAttr "animCurveTU1.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU2.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU3.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU4.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU5.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU6.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU7.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU8.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "apu_Hoop_Root_rotateX.a" "clipLibrary1.cel[0].cev[14].cevr"
		;
connectAttr "apu_Hoop_Root_rotateY.a" "clipLibrary1.cel[0].cev[15].cevr"
		;
connectAttr "apu_Hoop_Root_rotateZ.a" "clipLibrary1.cel[0].cev[16].cevr"
		;
connectAttr "apu_Hoop_Root_translateX.a" "clipLibrary1.cel[0].cev[17].cevr"
		;
connectAttr "apu_Hoop_Root_translateY.a" "clipLibrary1.cel[0].cev[18].cevr"
		;
connectAttr "apu_Hoop_Root_translateZ.a" "clipLibrary1.cel[0].cev[19].cevr"
		;
connectAttr "apu_Right_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[20].cevr"
		;
connectAttr "apu_Right_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[21].cevr"
		;
connectAttr "apu_Right_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[22].cevr"
		;
connectAttr "apu_Right_Foot_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[23].cevr"
		;
connectAttr "apu_Right_Foot_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[24].cevr"
		;
connectAttr "apu_Right_Foot_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[25].cevr"
		;
connectAttr "apu_Left_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[26].cevr"
		;
connectAttr "apu_Left_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[27].cevr"
		;
connectAttr "apu_Left_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[28].cevr"
		;
connectAttr "apu_Left_Foot_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[29].cevr"
		;
connectAttr "apu_Left_Foot_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[30].cevr"
		;
connectAttr "apu_Left_Foot_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[31].cevr"
		;
connectAttr "apu_Right_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[32].cevr"
		;
connectAttr "apu_Right_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[33].cevr"
		;
connectAttr "apu_Right_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[34].cevr"
		;
connectAttr "apu_Left_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[35].cevr"
		;
connectAttr "apu_Left_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[36].cevr"
		;
connectAttr "apu_Left_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[37].cevr"
		;
connectAttr "apu_Right_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[38].cevr"
		;
connectAttr "apu_Right_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[39].cevr"
		;
connectAttr "apu_Right_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[40].cevr"
		;
connectAttr "apu_Left_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[41].cevr"
		;
connectAttr "apu_Left_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[42].cevr"
		;
connectAttr "apu_Left_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[43].cevr"
		;
connectAttr "apu_Character_Hoop_translateX.a" "clipLibrary1.cel[0].cev[44].cevr"
		;
connectAttr "apu_Character_Hoop_translateY.a" "clipLibrary1.cel[0].cev[45].cevr"
		;
connectAttr "apu_Character_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[46].cevr"
		;
connectAttr "apu_Character_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[47].cevr"
		;
connectAttr "apu_Character_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[48].cevr"
		;
connectAttr "apu_Character_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[49].cevr"
		;
connectAttr "apu_R_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "apu_R_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "apu_R_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "apu_R_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[53].cevr"
		;
connectAttr "apu_R_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[54].cevr"
		;
connectAttr "apu_R_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[55].cevr"
		;
connectAttr "apu_R_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[56].cevr"
		;
connectAttr "apu_R_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[57].cevr"
		;
connectAttr "apu_R_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[58].cevr"
		;
connectAttr "apu_R_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[59].cevr"
		;
connectAttr "apu_L_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "apu_L_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "apu_L_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "apu_L_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[63].cevr"
		;
connectAttr "apu_L_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[64].cevr"
		;
connectAttr "apu_L_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[65].cevr"
		;
connectAttr "apu_L_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[66].cevr"
		;
connectAttr "apu_L_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[67].cevr"
		;
connectAttr "apu_L_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[68].cevr"
		;
connectAttr "apu_L_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[69].cevr"
		;
connectAttr "apu_R_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[70].cevr"
		;
connectAttr "apu_R_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[71].cevr"
		;
connectAttr "apu_R_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[72].cevr"
		;
connectAttr "apu_L_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[73].cevr"
		;
connectAttr "apu_L_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[74].cevr"
		;
connectAttr "apu_L_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[75].cevr"
		;
connectAttr "apu_Right_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[76].cevr"
		;
connectAttr "apu_Right_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[77].cevr"
		;
connectAttr "apu_Right_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[78].cevr"
		;
connectAttr "apu_Right_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[79].cevr"
		;
connectAttr "apu_Right_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[80].cevr"
		;
connectAttr "apu_Right_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[81].cevr"
		;
connectAttr "apu_Left_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "apu_Left_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "apu_Left_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "apu_Left_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "apu_Left_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "apu_Left_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "apu_Right_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "apu_Right_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "apu_Right_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "apu_Right_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "apu_Right_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "apu_Right_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[93].cevr"
		;
connectAttr "apu_Left_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[94].cevr"
		;
connectAttr "apu_Left_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[95].cevr"
		;
connectAttr "apu_Left_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[96].cevr"
		;
connectAttr "apu_Left_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[97].cevr"
		;
connectAttr "apu_Left_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[98].cevr"
		;
connectAttr "apu_Left_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[99].cevr"
		;
connectAttr "apu_Left_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[100].cevr"
		;
connectAttr "apu_Left_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[101].cevr"
		;
connectAttr "apu_Left_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[102].cevr"
		;
connectAttr "apu_Right_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[103].cevr"
		;
connectAttr "apu_Right_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[104].cevr"
		;
connectAttr "apu_Right_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[105].cevr"
		;
connectAttr "apu_R_FK_Shoulder_rotateX.a" "clipLibrary1.cel[0].cev[106].cevr"
		;
connectAttr "apu_R_FK_Shoulder_rotateY.a" "clipLibrary1.cel[0].cev[107].cevr"
		;
connectAttr "apu_R_FK_Shoulder_rotateZ.a" "clipLibrary1.cel[0].cev[108].cevr"
		;
connectAttr "apu_L_FK_Shoulder_rotateX.a" "clipLibrary1.cel[0].cev[109].cevr"
		;
connectAttr "apu_L_FK_Shoulder_rotateY.a" "clipLibrary1.cel[0].cev[110].cevr"
		;
connectAttr "apu_L_FK_Shoulder_rotateZ.a" "clipLibrary1.cel[0].cev[111].cevr"
		;
connectAttr "apu_R_FK_Elbow_rotateZ.a" "clipLibrary1.cel[0].cev[112].cevr"
		;
connectAttr "apu_L_FK_Elbow_rotateZ.a" "clipLibrary1.cel[0].cev[113].cevr"
		;
connectAttr "apu_R_FK_Wrist_rotateX.a" "clipLibrary1.cel[0].cev[114].cevr"
		;
connectAttr "apu_R_FK_Wrist_rotateY.a" "clipLibrary1.cel[0].cev[115].cevr"
		;
connectAttr "apu_R_FK_Wrist_rotateZ.a" "clipLibrary1.cel[0].cev[116].cevr"
		;
connectAttr "apu_L_FK_Wrist_rotateX.a" "clipLibrary1.cel[0].cev[117].cevr"
		;
connectAttr "apu_L_FK_Wrist_rotateY.a" "clipLibrary1.cel[0].cev[118].cevr"
		;
connectAttr "apu_L_FK_Wrist_rotateZ.a" "clipLibrary1.cel[0].cev[119].cevr"
		;
connectAttr "apu_Thumb_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[120].cevr"
		;
connectAttr "apu_Thumb_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[121].cevr"
		;
connectAttr "apu_Thumb_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[122].cevr"
		;
connectAttr "apu_Middle_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[123].cevr"
		;
connectAttr "apu_Middle_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[124].cevr"
		;
connectAttr "apu_Middle_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[125].cevr"
		;
connectAttr "apu_Pelvis_rotateX.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "apu_Pelvis_rotateY.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "apu_Pelvis_rotateZ.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "apu_Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "apu_Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "apu_Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "apu_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "apu_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "apu_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "apu_Middle_R_rotateX.a" "clipLibrary1.cel[0].cev[135].cevr"
		;
connectAttr "apu_Middle_R_rotateY.a" "clipLibrary1.cel[0].cev[136].cevr"
		;
connectAttr "apu_Middle_R_rotateZ.a" "clipLibrary1.cel[0].cev[137].cevr"
		;
connectAttr "apu_Jaw_rotateX.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "apu_Jaw_rotateY.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "apu_Jaw_rotateZ.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "apu_Spine_2_rotateX.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "apu_Spine_2_rotateY.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "apu_Spine_2_rotateZ.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "apu_Neck_rotateX.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "apu_Neck_rotateY.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "apu_Neck_rotateZ.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "apu_Head_rotateX.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "apu_Head_rotateY.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "apu_Head_rotateZ.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "apu_Spine_1_rotateX.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "apu_Spine_1_rotateY.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "apu_Spine_1_rotateZ.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "apu_Middle_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[153].cevr"
		;
connectAttr "apu_Middle_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[154].cevr"
		;
connectAttr "apu_Middle_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[155].cevr"
		;
connectAttr "apu_Thumb_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[156].cevr"
		;
connectAttr "apu_Thumb_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[157].cevr"
		;
connectAttr "apu_Thumb_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[158].cevr"
		;
connectAttr "apu_Middle_L_rotateX.a" "clipLibrary1.cel[0].cev[159].cevr"
		;
connectAttr "apu_Middle_L_rotateY.a" "clipLibrary1.cel[0].cev[160].cevr"
		;
connectAttr "apu_Middle_L_rotateZ.a" "clipLibrary1.cel[0].cev[161].cevr"
		;
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[4].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[4].olnk";
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
// End of apu_victory_large.ma
