//Maya ASCII 4.0 scene
//Name: lsa_get_into_car_open_door_high.ma
//Last modified: Fri, Oct 11, 2002 02:56:32 PM
requires maya "4.0";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_get_into_car_open_door_highSource";
	setAttr ".ihi" 0;
	setAttr ".du" 14;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL1026";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL1027";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL1028";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -0.033135114381557439 1 -0.034814082662384324 
		2 -0.037612363130429143 3 -0.038172019224038095 4 -0.033135114381557439 5 
		-0.012945127168954665 6 0.015204413867208933 7 0.029546370317696392 8 0.02173354166445364 
		9 0.0034126821166036428 10 -0.017192414644324805 11 -0.031857954936802921 
		12 -0.036656194744748863 13 -0.035768582764144671 14 -0.033135114381557439;
createNode animCurveTL -n "animCurveTL1029";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0;
createNode animCurveTL -n "animCurveTL1030";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 -6.5919098452128533e-005 13 -0.00013183819690425707 
		14 0;
createNode animCurveTA -n "animCurveTA2952";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0;
createNode animCurveTU -n "animCurveTU201";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU202";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU203";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU204";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU205";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU206";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU207";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU208";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "animCurveTA2953";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2954";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2955";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL1031";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL1032";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL1033";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL1034";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.26454016861507795 4 -0.26454016861507795 
		7 -0.26454016861507795 11 -0.26454016861507795 14 -0.26454016861507795;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL1035";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.13806192026723146 4 0.1409760382998537 
		7 0.1409760382998537 11 0.1409760382998537 14 0.13806192026723146;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL1036";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.064904406754016042 4 -0.064904406754016042 
		7 -0.064904406754016042 11 -0.064904406754016042 14 -0.064904406754016042;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA2956";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA2957";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -13.717778871715204 4 -25.948901905116401 
		7 -25.948901905116401 11 -25.948901905116401 14 -13.717778871715204;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA2958";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL1037";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.21594587158542247 4 0.21594587158542247 
		7 0.21594587158542247 11 0.21594587158542247 14 0.21594587158542247;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL1038";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.1380615615975922 4 0.14137691863350235 
		7 0.14137691863350235 11 0.14137691863350235 14 0.1380615615975922;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL1039";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.00078430246903575811 4 0.00078430246903575811 
		7 0.00078430246903575811 11 0.00078430246903575811 14 0.00078430246903575811;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA2959";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA2960";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA2961";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA2962";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2963";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2964";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2965";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2966";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2967";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2968";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2969";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2970";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2971";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2972";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2973";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL1040";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL1041";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL1042";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 4 1 7 1 11 1 14 1;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL1043";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL1044";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL1045";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 4 1 7 1 11 1 14 1;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL1046";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.076472881617957691 4 -0.076472881617957691 
		7 0.068190381162623673 11 -0.073525311801197701 14 -0.076472881617957691;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL1047";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.96147551361829786 4 0.93105416142265018 
		7 0.93304546632269802 11 0.95322249940707271 14 0.96147551361829786;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL1048";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA2974";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.62843630316474508 4 -0.64945777164326313 
		7 3.0455725522002712 11 0.6762199719426083 14 -0.62843630316474508;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA2975";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -5.8284402688137167 4 15.712784536999756 
		7 23.118437686934161 11 18.156455913488841 14 -5.8284402688137167;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA2976";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.295636019309746 4 -1.5353463816017385 
		7 -2.8980232091229619 11 -1.9051048544433762 14 -1.295636019309746;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA2977";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2978";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2979";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2980";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2981";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2982";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2983";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2984";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2985";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2986";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2987";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2988";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2989";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2990";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2991";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2992";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2993";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2994";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2995";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2996";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2997";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2998";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA2999";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA3000";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA3001";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA3002";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL1049";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL1050";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL1051";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.27773886459742925;
createNode animCurveTA -n "animCurveTA3003";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA3004";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 28.652637602052774;
createNode animCurveTA -n "animCurveTA3005";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 64.676908227303443;
createNode animCurveTL -n "animCurveTL1052";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.5198069948790518;
createNode animCurveTL -n "animCurveTL1053";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL1054";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.36439499068905612;
createNode animCurveTA -n "animCurveTA3006";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 7.7976222737965317;
createNode animCurveTA -n "animCurveTA3007";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -30.409274105849079;
createNode animCurveTA -n "animCurveTA3008";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -64.859940280210893;
createNode animCurveTL -n "animCurveTL1055";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.97384023505055983 4 -0.39060337815167934 
		7 0.70536037302492116 11 -0.50541844399179925 14 -0.97384023505055983;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL1056";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.2525965505547216 4 1.5277817648267611 
		7 2.262645060024512 11 2.1798585636308268 14 1.2525965505547216;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL1057";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.097994651149805143 4 0.84567637706889853 
		7 0.84670831388281143 11 0.8519779261565199 14 -0.097994651149805143;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3009";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -12.222987645962959 4 71.119159344460144 
		7 174.96455812755872 11 194.05587618443292 14 -12.222987645962959;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3010";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -19.681044208515029 4 28.587710488537017 
		7 25.877151374335089 11 68.824260400212339 14 -19.681044208515029;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3011";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 65.119655550709027 4 145.5137268770755 
		7 221.32177793259166 11 268.86030920150114 14 65.119655550709027;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL1058";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.75854111686822778 4 0.57262925149573951 
		7 0.71423301719164856 11 0.51306664410410396 14 0.75854111686822778;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL1059";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.1932952672205326 4 1.4163535334556963 
		7 1.2948347548889261 11 1.2288485135927962 14 1.1932952672205326;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL1060";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.14314299916678522 4 -0.37264849786442289 
		7 -0.5597073479984731 11 -0.34826352988816595 14 0.14314299916678522;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3012";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -5.7993291745893352 4 16.226511010665405 
		7 16.226511010665405 11 16.226511010665405 14 -5.7993291745893352;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3013";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.228264010471275 4 -8.513966085499284 
		7 -8.513966085499284 11 -8.513966085499284 14 -1.228264010471275;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3014";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -60.456694896838378 4 -68.213989601412422 
		7 -68.213989601412422 11 -68.213989601412422 14 -60.456694896838378;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL1061";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0.17523930523423681 7 0.17523930523423681 
		11 0.17523930523423681 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 1 9 9 9;
	setAttr -s 5 ".kox[1:4]"  1 1 0.013313944451510906 0.0057063903659582138;
	setAttr -s 5 ".koy[1:4]"  0 0 -0.99991136789321899 -0.99998372793197632;
createNode animCurveTL -n "animCurveTL1062";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 -0.00072435787012014696 7 
		-0.00072435787012014696 11 -0.00072435787012014696 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 1 9 9 9;
	setAttr -s 5 ".kox[1:4]"  1 1 0.95503866672515869 0.80985754728317261;
	setAttr -s 5 ".koy[1:4]"  0 0 0.29648131132125854 0.58662664890289307;
createNode animCurveTL -n "animCurveTL1063";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1 4 -0.80201435285893019 7 -0.80201435285893019 
		11 -0.80201435285893019 14 -1;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 1 9 9 9;
	setAttr -s 5 ".kox[1:4]"  1 1 0.011784547939896584 0.0050508072599768639;
	setAttr -s 5 ".koy[1:4]"  0 0 -0.99993056058883667 -0.99998724460601807;
createNode animCurveTL -n "animCurveTL1064";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.10167917362943303 4 -0.4001111643408698 
		7 -0.57061566826858701 11 0.016678813185503023 14 -0.10167917362943303;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 1 9 9 9;
	setAttr -s 5 ".kox[1:4]"  0.0058648455888032913 0.0055982554331421852 
		0.0049757366068661213 0.0084486436098814011;
	setAttr -s 5 ".koy[1:4]"  -0.99998277425765991 0.99998432397842407 
		0.99998760223388672 -0.99996429681777954;
createNode animCurveTL -n "animCurveTL1065";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.40762644910266188 4 -0.32054195494897236 
		7 -0.92711716659639209 11 -1.1955509282625838 14 -0.40762644910266188;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 1 9 9 9;
	setAttr -s 5 ".kox[1:4]"  0.0016485977685078979 0.0026666298508644104 
		0.0044915331527590752 0.0012691562296822667;
	setAttr -s 5 ".koy[1:4]"  -0.99999862909317017 -0.99999642372131348 
		0.99998992681503296 0.99999916553497314;
createNode animCurveTL -n "animCurveTL1066";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.93129112588482243 4 -0.81561019929437761 
		7 -0.49128941948543675 11 -1.1924527185884712 14 -0.93129112588482243;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 1 9 9 9;
	setAttr -s 5 ".kox[1:4]"  0.0030833517666906118 0.0061916806735098362 
		0.0053029353730380535 0.0038290191441774368;
	setAttr -s 5 ".koy[1:4]"  0.99999523162841797 -0.99998080730438232 
		-0.99998593330383301 0.99999266862869263;
createNode animCurveTA -n "animCurveTA3015";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 12.253734489678925 4 12.253734489678925 
		7 12.253734489678925 11 12.253734489678925 14 12.253734489678925;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3016";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -65.746751280844975 4 -65.746751280844961 
		7 -65.746751280844961 11 -65.746751280844961 14 -65.746751280844975;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3017";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3018";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.061808866237340665 4 -0.061808866237337522 
		7 -0.061808866237337522 11 -0.061808866237337522 14 -0.061808866237340665;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3019";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -59.058178941076754 4 -59.058178941076754 
		7 -59.058178941076754 11 -59.058178941076754 14 -59.058178941076754;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3020";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.57914742975785 4 16.579147429757843 
		7 16.579147429757843 11 16.579147429757843 14 16.57914742975785;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3021";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.5572674112203657 4 8.5572674112203622 
		7 8.5572674112203622 11 8.5572674112203622 14 8.5572674112203657;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3022";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 15.711328223519061 4 15.711328223519057 
		7 15.711328223519057 11 15.711328223519057 14 15.711328223519061;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3023";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3024";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3025";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3026";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3027";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3028";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3029";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.423754966968488 4 -182.40128137086998 
		7 -182.40128137086998 11 -182.40128137086998 14 10.423754966968488;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3030";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.7228482558439 4 27.722848255843903 
		7 27.722848255843903 11 27.722848255843903 14 27.7228482558439;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3031";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 21.576484776388224 4 21.576484776388227 
		7 21.576484776388227 11 21.576484776388227 14 21.576484776388224;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3032";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3033";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3034";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.080064458283051 4 27.080064458283051 
		7 27.080064458283051 11 27.080064458283051 14 27.080064458283051;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3035";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA3036";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA3037";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA3038";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA3039";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA3040";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA3041";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA3042";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA3043";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA3044";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3045";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3046";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.911632519594587 4 27.911632519594587 
		7 27.911632519594587 11 27.911632519594587 14 27.911632519594587;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3047";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3048";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3049";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3050";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.65073001024951671 4 17.865547004487734 
		7 33.568934881885703 11 18.030120514681801 14 -0.65073001024951671;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3051";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.2368721935960938 4 -8.1938064043711503 
		7 -14.78974371171115 11 -9.186989417956184 14 -4.2368721935960938;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3052";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.6995264082587447 4 15.088783978648813 
		7 -10.201758905374636 11 -0.85376281237392615 14 2.6995264082587447;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3053";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3054";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3055";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3056";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.0198472869727979 4 -11.346446826343373 
		7 4.6991931281127517 11 1.4823408320702993 14 -4.0198472869727979;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3057";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -9.1335573833666519 4 -17.661900718647104 
		7 15.383983504751654 11 4.153798069427185 14 -9.1335573833666519;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3058";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.2752136084709536 4 -4.4079947587230608 
		7 6.3106130796856919 11 4.9670423477653189 14 -2.2752136084709536;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3059";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.8903601258661935 4 -1.8903601258661931 
		7 -1.6444520461961631 11 -1.8903601258661931 14 -1.8903601258661935;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3060";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.5597289571479038 4 2.5597289571479034 
		7 2.7241716931476172 11 2.5597289571479034 14 2.5597289571479038;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3061";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.0168110874036049 4 2.016811087403604 
		7 7.3478449364257932 11 2.016811087403604 14 2.0168110874036049;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3062";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3063";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3064";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 33.429092416277157 4 33.429092416277157 
		7 33.429092416277157 11 33.429092416277157 14 33.429092416277157;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3065";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.2533422302317216 4 -184.57169410760673 
		7 -184.57169410760673 11 -184.57169410760673 14 8.2533422302317216;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3066";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 23.263402056531085 4 23.263402056531085 
		7 23.263402056531085 11 23.263402056531085 14 23.263402056531085;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3067";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 20.166277752815617 4 20.166277752815617 
		7 20.166277752815617 11 20.166277752815617 14 20.166277752815617;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3068";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3069";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4 0 7 0 11 0 14 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA3070";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.254116939558369 4 17.254116939558369 
		7 17.254116939558369 11 17.254116939558369 14 17.254116939558369;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
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
	setAttr -s 102 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".top" 479;
	setAttr ".rght" 639;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
select -ne :defaultRenderQuality;
	setAttr ".eaa" 1;
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
connectAttr "lsa_get_into_car_open_door_highSource.st" "clipLibrary1.st[0]"
		;
connectAttr "lsa_get_into_car_open_door_highSource.du" "clipLibrary1.du[0]"
		;
connectAttr "animCurveTL1026.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL1027.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL1028.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL1029.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL1030.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA2952.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU201.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU202.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU203.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU204.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU205.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU206.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU207.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU208.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA2953.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA2954.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA2955.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL1031.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL1032.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL1033.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL1034.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL1035.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL1036.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA2956.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA2957.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA2958.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL1037.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL1038.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL1039.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA2959.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA2960.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA2961.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA2962.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA2963.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA2964.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA2965.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA2966.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA2967.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA2968.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA2969.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA2970.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA2971.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA2972.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA2973.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL1040.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL1041.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL1042.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL1043.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL1044.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL1045.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL1046.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL1047.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL1048.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA2974.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA2975.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA2976.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA2977.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA2978.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA2979.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA2980.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA2981.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA2982.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA2983.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA2984.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA2985.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA2986.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA2987.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA2988.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA2989.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA2990.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA2991.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA2992.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA2993.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA2994.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA2995.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA2996.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA2997.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA2998.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA2999.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA3000.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA3001.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA3002.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL1049.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL1050.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL1051.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA3003.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA3004.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA3005.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL1052.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL1053.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL1054.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA3006.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA3007.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA3008.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL1055.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL1056.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL1057.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA3009.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA3010.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA3011.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL1058.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL1059.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL1060.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA3012.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA3013.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA3014.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL1061.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL1062.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL1063.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL1064.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL1065.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL1066.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA3015.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA3016.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA3017.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA3018.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA3019.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA3020.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA3021.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA3022.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA3023.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA3024.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA3025.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA3026.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA3027.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA3028.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA3029.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA3030.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA3031.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA3032.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA3033.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA3034.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA3035.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA3036.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA3037.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA3038.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA3039.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA3040.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA3041.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA3042.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA3043.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA3044.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA3045.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA3046.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA3047.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA3048.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA3049.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA3050.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA3051.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA3052.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA3053.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA3054.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA3055.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA3056.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA3057.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA3058.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA3059.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA3060.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA3061.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA3062.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA3063.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA3064.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA3065.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA3066.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA3067.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA3068.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA3069.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA3070.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[4].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[5].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[5].olnk";
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
// End of lsa_get_into_car_open_door_high.ma
