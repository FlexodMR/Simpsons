//Maya ASCII 4.0 scene
//Name: lsa_in_car_idle.ma
//Last modified: Mon, Jan 06, 2003 04:43:56 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_in_car_idleSource";
	setAttr ".ihi" 0;
	setAttr ".du" 60;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL42";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL43";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.99485515190251295 60 0.99485515190251295;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.45955081921718022 60 0.45955081921718022;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.72080901693409116 60 0.72080901693409116;
createNode animCurveTA -n "lsa_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU15";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU16";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "animCurveTA121";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA122";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA123";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL47";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL48";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL49";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.0407430139147178 20 2.0407430139147178 
		40 2.0407430139147178 60 2.0407430139147178;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.99995529262164395 20 0.99995529262164395 
		40 0.99995529262164395 60 0.99995529262164395;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL52";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.4400670660903248 20 2.4400670660903248 
		40 2.4400670660903248 60 2.4400670660903248;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -28.33147073208438 20 -28.33147073208438 
		40 -28.33147073208438 60 -28.33147073208438;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -10.113681911874204 20 -10.113681911874204 
		40 -10.113681911874204 60 -10.113681911874204;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.6896128937020114 20 3.6896128937020114 
		40 3.6896128937020114 60 3.6896128937020114;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.4790535543793637 20 2.4790535543793637 
		40 2.4790535543793637 60 2.4790535543793637;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.9833319268331725 20 0.9833319268331725 
		40 0.9833319268331725 60 0.9833319268331725;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.4327597250722541 20 2.4327597250722541 
		40 2.4327597250722541 60 2.4327597250722541;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -27.647037481197394 20 -27.647037481197394 
		40 -27.647037481197394 60 -27.647037481197394;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.6471102606573029 20 1.6471102606573029 
		40 1.6471102606573029 60 1.6471102606573029;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 7.792214191643251 20 7.792214191643251 
		40 7.792214191643251 60 7.792214191643251;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA130";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA131";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA132";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA133";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA134";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA135";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA136";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA137";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA138";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA139";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA140";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA141";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 40 0 60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 40 0 60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 20 1 40 1 60 1;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 40 0 60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 40 0 60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 20 1 40 1 60 1;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.2591101781206659 20 2.2591101781206659 
		40 2.2591101781206659 60 2.2591101781206659;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.2803698945022608 20 1.2803698945022608 
		40 1.2803698945022608 60 1.2803698945022608;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.7693492297543687 20 1.7693492297543687 
		40 1.7693492297543687 60 1.7693492297543687;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -19.504876398732126 20 -19.504876398732126 
		40 -19.504876398732126 60 -19.504876398732126;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 40 0 60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 40 0 60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA145";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA146";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA147";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA148";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA149";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA150";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA151";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA152";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA153";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA154";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA155";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA156";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA157";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA158";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA159";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA160";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA161";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA162";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA163";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA164";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA165";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA166";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA167";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA168";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA169";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA170";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL65";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL66";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL67";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.27773886459742925;
createNode animCurveTA -n "animCurveTA171";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA172";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 28.652637602052774;
createNode animCurveTA -n "animCurveTA173";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 64.676908227303443;
createNode animCurveTL -n "animCurveTL68";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.5198069948790518;
createNode animCurveTL -n "animCurveTL69";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL70";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.36439499068905612;
createNode animCurveTA -n "animCurveTA174";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 7.7976222737965299;
createNode animCurveTA -n "animCurveTA175";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -30.409274105849079;
createNode animCurveTA -n "animCurveTA176";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -64.859940280210878;
createNode animCurveTL -n "animCurveTL71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.4318854543692052 20 2.4318854543692052 
		40 2.4318854543692052 60 2.4318854543692052;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.7241929732026566 20 1.7241929732026566 
		40 1.7241929732026566 60 1.7241929732026566;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.6858977529588222 20 2.6858977529588222 
		40 2.6858977529588222 60 2.6858977529588222;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -33.734888782993899 20 -33.734888782993899 
		40 -33.734888782993899 60 -33.734888782993899;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 14.870586397896899 20 14.870586397896899 
		40 14.870586397896899 60 14.870586397896899;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 30.592169336881899 20 30.592169336881899 
		40 30.592169336881899 60 30.592169336881899;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL74";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 4.206404471075289 20 4.206404471075289 
		40 4.206404471075289 60 4.206404471075289;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL75";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.7781418955835293 20 1.7781418955835293 
		40 1.7781418955835293 60 1.7781418955835293;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL76";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.7041072647042435 20 2.7041072647042435 
		40 2.7041072647042435 60 2.7041072647042435;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -26.203413720634725 20 -26.203413720634725 
		40 -26.203413720634725 60 -26.203413720634725;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -14.791961579779638 20 -14.791961579779638 
		40 -14.791961579779638 60 -14.791961579779638;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -45.895436695401962 20 -45.895436695401962 
		40 -45.895436695401962 60 -45.895436695401962;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.063331173333856433 20 0.063331173333856433 
		40 0.063331173333856433 60 0.063331173333856433;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.69960805773293522 20 -0.69960805773293522 
		40 -0.69960805773293522 60 -0.69960805773293522;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.66762598980258558 20 -0.66762598980258558 
		40 -0.66762598980258558 60 -0.66762598980258558;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.31054502397108613 20 -0.31054502397108613 
		40 -0.31054502397108613 60 -0.31054502397108613;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.55640530640609931 20 -0.55640530640609931 
		40 -0.55640530640609931 60 -0.55640530640609931;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.57914122395678103 20 -0.57914122395678103 
		40 -0.57914122395678103 60 -0.57914122395678103;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 12.253734489678925 20 12.253734489678925 
		40 12.253734489678925 60 12.253734489678925;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -65.746751280844961 20 -65.746751280844961 
		40 -65.746751280844961 60 -65.746751280844961;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 40 0 60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.061808866237337522 20 -0.061808866237337522 
		40 -0.061808866237337522 60 -0.061808866237337522;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -59.058178941076754 20 -59.058178941076754 
		40 -59.058178941076754 60 -59.058178941076754;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 16.579147429757843 20 16.579147429757843 
		40 16.579147429757843 60 16.579147429757843;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.5572674112203622 20 8.5572674112203622 
		40 8.5572674112203622 60 8.5572674112203622;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 15.711328223519057 20 15.711328223519057 
		40 15.711328223519057 60 15.711328223519057;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 40 0 60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 40 0 60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 40 0 60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 40 0 60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 40 0 60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 40 0 60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -177.04830761929054 20 -177.04830761929054 
		40 -177.04830761929054 60 -177.04830761929054;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.722848255843903 20 27.722848255843903 
		40 27.722848255843903 60 27.722848255843903;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 21.576484776388227 20 21.576484776388227 
		40 21.576484776388227 60 21.576484776388227;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 40 0 60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 40 0 60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.080064458283051 20 27.080064458283051 
		40 27.080064458283051 60 27.080064458283051;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA203";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA204";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA205";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA206";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA207";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA208";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA209";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA210";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA211";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 40 0 60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 40 0 60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.911632519594587 20 27.911632519594587 
		40 27.911632519594587 60 27.911632519594587;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 40 0 60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 40 0 60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 40 0 60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.3731006602189262 20 -5.1820556965417408 
		40 -5.1820556965417408 60 -1.3731006602189262;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.38374158911587303 20 1.2101139139311432 
		40 1.2101139139311432 60 0.38374158911587303;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.96901743689791309 20 0.83582270733191311 
		40 0.83582270733191311 60 0.96901743689791309;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.2144674450583466 20 -12.126478993577004 
		40 -12.126478993577004 60 -2.2144674450583466;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -5.36423803921525 20 -7.5197992088679895 
		40 -7.5197992088679895 60 -5.36423803921525;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -3.2584064202075531 20 -1.8922059019952662 
		40 -1.8922059019952662 60 -3.2584064202075531;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 4.9690701715193724 20 3.0906715455454905 
		40 3.0901716773245895 60 4.9690701715193724;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.9904681746768538 20 -2.1498880369691902 
		40 1.8871983192572559 60 -2.9904681746768538;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 14.780225156536881 20 19.699256809863961 
		40 19.917175944852382 60 14.780225156536881;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.211833892135727 20 2.211833892135727 
		40 2.211833892135727 60 2.211833892135727;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.708673036061555 20 1.708673036061555 
		40 1.708673036061555 60 1.708673036061555;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.7082804953288209 20 2.7082804953288209 
		40 2.7082804953288209 60 2.7082804953288209;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 40 0 60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 40 0 60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 33.429092416277157 20 33.429092416277157 
		40 33.429092416277157 60 33.429092416277157;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 19.002497950056888 20 19.002497950056888 
		40 19.002497950056888 60 19.002497950056888;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 23.263402056531085 20 23.263402056531085 
		40 23.263402056531085 60 23.263402056531085;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 20.166277752815617 20 20.166277752815617 
		40 20.166277752815617 60 20.166277752815617;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 40 0 60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 40 0 60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 17.254116939558369 20 17.254116939558369 
		40 17.254116939558369 60 17.254116939558369;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
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
connectAttr "lsa_in_car_idleSource.st" "clipLibrary1.st[0]";
connectAttr "lsa_in_car_idleSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL42.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL43.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "lsa_Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr"
		;
connectAttr "animCurveTU9.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU15.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU16.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA121.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA122.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA123.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL47.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL48.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL49.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL50.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL51.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL52.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA124.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA125.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA126.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL53.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL54.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL55.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA127.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA128.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA129.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA130.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA131.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA132.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA133.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA134.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA135.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA136.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA137.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA138.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA139.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA140.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA141.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL56.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL57.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL58.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL59.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL60.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL61.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL62.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL63.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL64.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA142.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA143.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA144.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA145.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA146.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA147.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA148.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA149.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA150.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA151.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA152.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA153.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA154.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA155.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA156.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA157.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA158.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA159.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA160.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA161.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA162.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA163.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA164.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA165.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA166.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA167.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA168.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA169.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA170.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL65.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL66.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL67.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA171.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA172.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA173.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL68.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL69.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL70.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA174.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA175.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA176.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL71.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL72.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL73.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA177.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA178.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA179.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL74.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL75.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL76.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA180.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA181.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA182.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL77.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL78.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL79.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL80.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL81.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL82.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA183.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA184.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA185.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA186.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA187.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA188.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA189.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA190.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA191.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA192.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA193.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA194.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA195.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA196.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA197.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA198.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA199.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA200.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA201.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA202.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA203.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA204.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA205.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA206.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA207.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA208.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA209.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA210.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA211.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA212.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA213.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA214.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA215.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA216.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA217.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA218.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA219.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA220.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA221.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA222.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA223.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA224.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA225.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA226.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA227.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA228.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA229.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA230.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA231.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA232.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA233.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA234.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA235.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA236.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA237.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA238.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of lsa_in_car_idle.ma
