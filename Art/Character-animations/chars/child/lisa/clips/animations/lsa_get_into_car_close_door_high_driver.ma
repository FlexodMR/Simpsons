//Maya ASCII 4.0 scene
//Name: lsa_get_into_car_close_door_high_driver.ma
//Last modified: Fri, Oct 11, 2002 02:55:29 PM
requires maya "4.0";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_get_into_car_close_door_high_driverSource";
	setAttr ".ihi" 0;
	setAttr ".du" 11;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL1067";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL1068";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL1069";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -1.0849761522975041 1 -1.0337040716247212 
		2 -0.91545620615882073 3 -0.77525337873918243 4 -0.65811641220518724 5 -0.60906612939621529 
		6 -0.6333022893477539 7 -0.69719761952783432 8 -0.7875323954246527 9 -0.89108689252640616 
		10 -0.99464138632129107 11 -1.0849761522975041;
createNode animCurveTL -n "animCurveTL1070";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0;
createNode animCurveTL -n "animCurveTL1071";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.48984849604313591 1 0.48609257449611581 
		2 0.48606864244111014 3 0.48811227036743243 4 0.49055902876439589 5 0.49174448812131405 
		6 0.49164793296582432 7 0.49139337846645398 8 0.49103349107385158 9 0.49062093723866546 
		10 0.49020838341154405 11 0.48984849604313591;
createNode animCurveTA -n "animCurveTA3071";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0;
createNode animCurveTU -n "animCurveTU209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTU -n "animCurveTU210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTU -n "animCurveTU211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTU -n "animCurveTU212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTU -n "animCurveTU213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTU -n "animCurveTU214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTU -n "animCurveTU215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 11 1;
createNode animCurveTU -n "animCurveTU216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 11 1;
createNode animCurveTA -n "animCurveTA3072";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3073";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3074";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL1072";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL1073";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL1074";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL1075";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.7239713357678643 5 -2.0265987355345594 
		11 -2.7239713357678643;
createNode animCurveTL -n "animCurveTL1076";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.3644614825362704 5 2.3426796094004652 
		11 2.3644614825362704;
createNode animCurveTL -n "animCurveTL1077";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.7939370303188074 5 1.4333447243398911 
		11 1.7939370303188074;
createNode animCurveTA -n "animCurveTA3075";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -27.647037481197401 5 30.7227137734269 
		11 -27.647037481197401;
createNode animCurveTA -n "animCurveTA3076";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.6471102606573034 5 -23.559044833361053 
		11 -1.6471102606573034;
createNode animCurveTA -n "animCurveTA3077";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -7.7922141916432519 5 -15.013213858909364 
		11 -7.7922141916432519;
createNode animCurveTL -n "animCurveTL1078";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.2856607953032229 5 -1.5394582886391421 
		11 -2.2856607953032229;
createNode animCurveTL -n "animCurveTL1079";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.381084848324742 5 2.2146718429531851 
		11 2.381084848324742;
createNode animCurveTL -n "animCurveTL1080";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.801244371336878 5 1.5753762720477491 
		11 1.801244371336878;
createNode animCurveTA -n "animCurveTA3078";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -28.33147073208438 5 30.693473148004159 
		11 -28.33147073208438;
createNode animCurveTA -n "animCurveTA3079";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 10.113681911874204 5 -19.287234896979506 
		11 10.113681911874204;
createNode animCurveTA -n "animCurveTA3080";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.6896128937020114 5 -34.331821279448754 
		11 -3.6896128937020114;
createNode animCurveTA -n "animCurveTA3081";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3082";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3083";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3084";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3085";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3086";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3087";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3088";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3089";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3090";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3091";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3092";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL1081";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTL -n "animCurveTL1082";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
createNode animCurveTL -n "animCurveTL1083";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 5 1 11 1;
createNode animCurveTL -n "animCurveTL1084";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 -0.034660776702225261 11 
		0;
createNode animCurveTL -n "animCurveTL1085";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0.43236842264083392 11 0;
createNode animCurveTL -n "animCurveTL1086";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 5 1.022596790343715 11 1;
createNode animCurveTL -n "animCurveTL1087";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.5040279595091715 5 -1.4056701743799815 
		11 -2.5040279595091715;
createNode animCurveTL -n "animCurveTL1088";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.6614994502053553 5 2.7047448676097749 
		11 2.6614994502053553;
createNode animCurveTL -n "animCurveTL1089";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.1305265350009219 5 1.1349023152102036 
		11 1.1305265350009219;
createNode animCurveTA -n "animCurveTA3093";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -19.504876398732133 5 -12.662850904412618 
		11 -19.504876398732133;
createNode animCurveTA -n "animCurveTA3094";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 -2.9461983826611342 11 0;
createNode animCurveTA -n "animCurveTA3095";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 -23.379622524262416 11 0;
createNode animCurveTA -n "animCurveTA3096";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3097";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3098";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3099";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL1090";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.5198069948790518 11 -0.5198069948790518;
createNode animCurveTL -n "animCurveTL1091";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 11 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL1092";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 11 0.36439499068905612;
createNode animCurveTA -n "animCurveTA3122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965317 11 7.7976222737965317;
createNode animCurveTA -n "animCurveTA3123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 30.409274105849079 11 30.409274105849079;
createNode animCurveTA -n "animCurveTA3124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.859940280210893 11 64.859940280210893;
createNode animCurveTL -n "animCurveTL1093";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.43524234076486068 11 0.43524234076486068;
createNode animCurveTL -n "animCurveTL1094";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 11 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL1095";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 11 0.27773886459742925;
createNode animCurveTA -n "animCurveTA3125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -28.652637602052774 11 -28.652637602052774;
createNode animCurveTA -n "animCurveTA3127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.676908227303443 11 -64.676908227303443;
createNode animCurveTL -n "animCurveTL1096";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -4.5650504642976548 5 -2.7061480999602638 
		11 -4.5650504642976548;
createNode animCurveTL -n "animCurveTL1097";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.8006025697972157 5 4.2730802276713886 
		11 3.8006025697972157;
createNode animCurveTL -n "animCurveTL1098";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.7686455822002116 5 1.6879074399120366 
		11 1.7686455822002116;
createNode animCurveTA -n "animCurveTA3128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -26.203413720634714 5 18.07051120818576 
		11 -26.203413720634714;
createNode animCurveTA -n "animCurveTA3129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 14.791961579779635 5 27.042197631862905 
		11 14.791961579779635;
createNode animCurveTA -n "animCurveTA3130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 45.895436695401962 5 44.163945774207242 
		11 45.895436695401962;
createNode animCurveTL -n "animCurveTL1099";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.790531447591571 5 -0.5099299555228195 
		11 -2.790531447591571;
createNode animCurveTL -n "animCurveTL1100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.7466536474163434 5 3.8151598175362609 
		11 3.7466536474163434;
createNode animCurveTL -n "animCurveTL1101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.750436070454791 5 2.0786415129687987 
		11 1.750436070454791;
createNode animCurveTA -n "animCurveTA3131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -33.734888782993906 5 -32.318402203478271 
		11 -33.734888782993906;
createNode animCurveTA -n "animCurveTA3132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -14.870586397896902 5 -22.509929029446681 
		11 -14.870586397896902;
createNode animCurveTA -n "animCurveTA3133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -30.592169336881899 5 30.298008427764341 
		11 -30.592169336881899;
createNode animCurveTL -n "animCurveTL1102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.31054502397108613 5 0.31054502397108613 
		11 0.31054502397108613;
createNode animCurveTL -n "animCurveTL1103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.55640530640609931 5 -0.55640530640609931 
		11 -0.55640530640609931;
createNode animCurveTL -n "animCurveTL1104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.57914122395678103 5 -0.57914122395678103 
		11 -0.57914122395678103;
createNode animCurveTL -n "animCurveTL1105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.063331173333856433 5 -0.37736680843384973 
		11 -0.063331173333856433;
createNode animCurveTL -n "animCurveTL1106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.69960805773293522 5 -0.54343311259648019 
		11 -0.69960805773293522;
createNode animCurveTL -n "animCurveTL1107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.66762598980258558 5 -0.97043124551903082 
		11 -0.66762598980258558;
createNode animCurveTA -n "animCurveTA3134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.061808866237340665 5 -0.061808866237337522 
		11 -0.061808866237340665;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -59.058178941076754 5 -59.058178941076754 
		11 -59.058178941076754;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.57914742975785 5 16.579147429757843 
		11 16.57914742975785;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 12.253734489678925 5 12.253734489678925 
		11 12.253734489678925;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -65.746751280844975 5 -65.746751280844961 
		11 -65.746751280844975;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 15.711328223519061 5 15.711328223519057 
		11 15.711328223519061;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.5572674112203657 5 8.5572674112203622 
		11 8.5572674112203657;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 19.002497950056895 5 -184.57169410760673 
		11 19.002497950056895;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 23.263402056531085 5 23.263402056531085 
		11 23.263402056531085;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 20.166277752815624 5 20.166277752815617 
		11 20.166277752815624;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 33.429092416277157 5 33.429092416277157 
		11 33.429092416277157;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 11 13.994403295754109;
createNode animCurveTA -n "animCurveTA3160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA3162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 11 13.994403295754109;
createNode animCurveTA -n "animCurveTA3163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 17.254116939558369 5 17.254116939558369 
		11 17.254116939558369;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.373100660218926 5 -11.37102964548717 
		11 1.373100660218926;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.38374158911587308 5 0.57536973090558297 
		11 -0.38374158911587308;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.96901743689791298 5 21.192869117571593 
		11 0.96901743689791298;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.2144674450583466 5 20.076803070551748 
		11 2.2144674450583466;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5.3642380392152509 5 0 11 5.3642380392152509;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.2584064202075544 5 0 11 -3.2584064202075544;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -4.9690701715193732 5 16.399518942919972 
		11 -4.9690701715193732;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.9904681746768538 5 -34.525938596521542 
		11 2.9904681746768538;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 14.780225156536885 5 -32.501680130080977 
		11 14.780225156536885;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.211833892135727 5 11.266439246406184 
		11 -2.211833892135727;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.7086730360615547 5 -8.2514393232251884 
		11 -1.7086730360615547;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.7082804953288213 5 4.6912887305040609 
		11 2.7082804953288213;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.080064458283051 5 27.080064458283051 
		11 27.080064458283051;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -177.04830761929054 5 -182.40128137086998 
		11 -177.04830761929054;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.722848255843903 5 27.722848255843903 
		11 27.722848255843903;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 21.576484776388227 5 21.576484776388227 
		11 21.576484776388227;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 5 0 11 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTA -n "animCurveTA3189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.911632519594587 5 27.911632519594587 
		11 27.911632519594587;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
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
connectAttr "lsa_get_into_car_close_door_high_driverSource.st" "clipLibrary1.st[0]"
		;
connectAttr "lsa_get_into_car_close_door_high_driverSource.du" "clipLibrary1.du[0]"
		;
connectAttr "animCurveTL1067.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL1068.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL1069.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL1070.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL1071.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA3071.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU209.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU210.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU211.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU212.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU213.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU214.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU215.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU216.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA3072.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA3073.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA3074.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL1072.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL1073.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL1074.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL1075.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL1076.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL1077.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA3075.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA3076.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA3077.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL1078.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL1079.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL1080.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA3078.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA3079.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA3080.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA3081.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA3082.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA3083.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA3084.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA3085.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA3086.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA3087.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA3088.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA3089.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA3090.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA3091.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA3092.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL1081.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL1082.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL1083.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL1084.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL1085.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL1086.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL1087.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL1088.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL1089.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA3093.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA3094.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA3095.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA3096.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA3097.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA3098.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA3099.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA3100.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA3101.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA3102.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA3103.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA3104.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA3105.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA3106.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA3107.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA3108.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA3109.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA3110.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA3111.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA3112.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA3113.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA3114.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA3115.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA3116.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA3117.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA3118.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA3119.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA3120.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA3121.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL1090.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL1091.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL1092.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA3122.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA3123.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA3124.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL1093.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL1094.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL1095.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA3125.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA3126.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA3127.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL1096.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL1097.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL1098.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA3128.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA3129.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA3130.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL1099.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL1100.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL1101.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA3131.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA3132.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA3133.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL1102.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL1103.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL1104.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL1105.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL1106.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL1107.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA3134.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA3135.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA3136.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA3137.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA3138.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA3139.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA3140.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA3141.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA3142.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA3143.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA3144.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA3145.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA3146.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA3147.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA3148.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA3149.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA3150.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA3151.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA3152.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA3153.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA3154.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA3155.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA3156.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA3157.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA3158.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA3159.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA3160.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA3161.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA3162.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA3163.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA3164.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA3165.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA3166.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA3167.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA3168.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA3169.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA3170.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA3171.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA3172.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA3173.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA3174.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA3175.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA3176.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA3177.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA3178.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA3179.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA3180.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA3181.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA3182.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA3183.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA3184.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA3185.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA3186.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA3187.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA3188.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA3189.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of lsa_get_into_car_close_door_high_driver.ma
