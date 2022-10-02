//Maya ASCII 4.0 scene
//Name: brt_victory_large.ma
//Last modified: Tue, May 27, 2003 01:56:58 PM
requires maya "4.0";
requires "p3dDeformer" "2.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_victory_largeSource";
	setAttr ".ihi" 0;
	setAttr ".du" 67;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Motion_Root_translateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.033880036066693167 67 -0.033880036066693167;
createNode animCurveTL -n "animCurveTL127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 67 0;
createNode animCurveTL -n "Motion_Root_translateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 67 0;
createNode animCurveTA -n "animCurveTA346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 67 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTU -n "brt_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTU -n "animCurveTU29";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 1 62 1 67 0;
createNode animCurveTU -n "animCurveTU30";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 1 62 1 67 0;
createNode animCurveTU -n "animCurveTU31";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTU -n "animCurveTU32";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL132";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.26454016861507795 11 -0.26454016861507795 
		15 -0.5744536098845735 19 -0.5744536098845735 23 -0.65613002520774599 53 
		-0.65613002520774599 57 -0.45311505283528453 62 -0.26454016861507795 67 -0.26454016861507795;
	setAttr -s 9 ".kit[0:8]"  1 3 1 1 3 3 9 
		3 3;
	setAttr -s 9 ".kot[0:8]"  9 3 1 1 3 3 9 
		3 3;
	setAttr -s 9 ".kix[0:8]"  0 1 0.16092103719711304 0.23018896579742432 
		1 1 0.007660851813852787 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 -0.98696726560592651 0.97314596176147461 
		0 0 0.99997067451477051 0 0;
	setAttr -s 9 ".kox[2:8]"  0.16092094779014587 0.23018887639045715 
		1 1 0.007660851813852787 1 1;
	setAttr -s 9 ".koy[2:8]"  -0.98696732521057129 0.97314596176147461 
		0 0 0.99997067451477051 0 0;
createNode animCurveTL -n "animCurveTL133";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.21854541072049752 11 0.21854541072049752 
		15 1.761222463534621 19 1.4684046851735948 23 0.13270736323676019 53 0.13270736323676019 
		57 0.46491217930701972 62 0.21854541072049752 67 0.21854541072049752;
	setAttr -s 9 ".kit[0:8]"  1 3 3 9 3 3 9 
		3 3;
	setAttr -s 9 ".kot[0:8]"  9 3 3 9 3 3 9 
		3 3;
	setAttr -s 9 ".kix[0:8]"  0 1 1 0.0016374812694266438 1 1 
		0.034928210079669952 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 -0.99999868869781494 0 0 
		0.99938982725143433 0 0;
createNode animCurveTL -n "animCurveTL134";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.064904406754016042 11 -0.064904406754016042 
		15 0.11137703239811556 19 0.11137703239811556 23 0.14295639531906773 53 0.14295639531906773 
		57 0.0094678013299580172 62 -0.064904406754016042 67 -0.064904406754016042;
	setAttr -s 9 ".kit[0:8]"  1 3 1 1 3 3 9 
		3 3;
	setAttr -s 9 ".kot[0:8]"  9 3 1 1 3 3 9 
		3 3;
	setAttr -s 9 ".kix[0:8]"  0 1 0.30353394150733948 0.23872078955173492 
		1 1 0.014431232586503029 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0.95282059907913208 0.9710882306098938 
		0 0 -0.99989587068557739 0 0;
	setAttr -s 9 ".kox[2:8]"  0.30353397130966187 0.23872098326683044 
		1 1 0.014431232586503029 1 1;
	setAttr -s 9 ".koy[2:8]"  0.95282059907913208 0.9710882306098938 
		0 0 -0.99989587068557739 0 0;
createNode animCurveTA -n "animCurveTA350";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 11 0 15 65.231227208685439 
		19 65.231227208685439 23 43.216599960122892 53 43.216599960122892 57 28.676756933617352 
		62 0 67 0;
	setAttr -s 9 ".kit[0:8]"  1 3 1 1 3 3 9 
		3 3;
	setAttr -s 9 ".kot[0:8]"  9 3 1 1 3 3 9 
		3 3;
	setAttr -s 9 ".kix[0:8]"  0 1 0.98006194829940796 0.99541604518890381 
		1 1 0.36957526206970215 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0.19869218766689301 -0.095639415085315704 
		0 0 -0.92920082807540894 0 0;
	setAttr -s 9 ".kox[2:8]"  0.98006188869476318 0.99541604518890381 
		1 1 0.36957526206970215 1 1;
	setAttr -s 9 ".koy[2:8]"  0.19869239628314972 -0.095639452338218689 
		0 0 -0.92920082807540894 0 0;
createNode animCurveTA -n "animCurveTA351";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -25.948901905116401 11 -25.948901905116401 
		15 39.727973562825269 19 39.727973562825269 23 0.36681535426783723 53 0.36681535426783723 
		57 -33.835358556122671 62 -25.948901905116401 67 -25.948901905116401;
	setAttr -s 9 ".kit[0:8]"  1 3 1 1 3 3 3 
		3 3;
	setAttr -s 9 ".kot[0:8]"  9 3 1 1 3 3 3 
		3 3;
	setAttr -s 9 ".kix[0:8]"  0 1 0.99972021579742432 0.96362149715423584 
		1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0.023653460666537285 -0.26727059483528137 
		0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  0.99972021579742432 0.96362155675888062 
		1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0.023653594776988029 -0.26727050542831421 
		0 0 0 0 0;
createNode animCurveTA -n "animCurveTA352";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 11 0 15 -26.695722961308096 
		19 -26.695722961308096 23 -93.051597429861232 53 -93.051597429861232 57 -47.149844121986412 
		62 0 67 0;
	setAttr -s 9 ".kit[0:8]"  1 3 1 1 3 3 9 
		3 3;
	setAttr -s 9 ".kot[0:8]"  9 3 1 1 3 3 9 
		3 3;
	setAttr -s 9 ".kix[0:8]"  0 1 0.99345588684082031 0.99504786729812622 
		1 1 0.18164943158626556 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0.11421671509742737 -0.099396981298923492 
		0 0 0.98336333036422729 0 0;
	setAttr -s 9 ".kox[2:8]"  0.99345582723617554 0.99504786729812622 
		1 1 0.18164943158626556 1 1;
	setAttr -s 9 ".koy[2:8]"  0.11421677470207214 -0.099396802484989166 
		0 0 0.98336333036422729 0 0;
createNode animCurveTL -n "animCurveTL135";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.21594587158542247 11 0.21594587158542247 
		15 0.72967816737801672 53 0.72274173449115753 57 0.37853746108481223 62 0.21594587158542247 
		67 0.21594587158542247;
	setAttr -s 7 ".kit[0:6]"  1 3 1 3 9 3 3;
	setAttr -s 7 ".kot[0:6]"  9 3 1 3 9 3 3;
	setAttr -s 7 ".kix[0:6]"  0 1 0.42023205757141113 1 0.0059194392524659634 
		1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0.90741664171218872 0 -0.99998247623443604 
		0 0;
	setAttr -s 7 ".kox[2:6]"  0.42023259401321411 1 0.0059194392524659634 
		1 1;
	setAttr -s 7 ".koy[2:6]"  0.90741640329360962 0 -0.99998247623443604 
		0 0;
createNode animCurveTL -n "animCurveTL136";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.21854505205085809 11 0.21854505205085809 
		15 1.8460554219537924 19 1.5532376435927662 23 0.18449069246296926 53 0.18449069246296926 
		57 0.41434605213727621 62 0.21854505205085809 67 0.21854505205085809;
	setAttr -s 9 ".kit[0:8]"  1 3 3 9 3 3 9 
		3 3;
	setAttr -s 9 ".kot[0:8]"  9 3 3 9 3 3 9 
		3 3;
	setAttr -s 9 ".kix[0:8]"  0 1 1 0.0016049108235165477 1 1 
		0.087754584848880768 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 -0.99999868869781494 0 0 
		0.99614214897155762 0 0;
createNode animCurveTL -n "animCurveTL137";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.00078430246903575811 11 0.00078430246903575811 
		15 0.10292091909190523 53 0.10292091909190523 57 -0.03056767489720447 62 
		0.00078430246903575811 67 0.00078430246903575811;
	setAttr -s 7 ".kit[0:6]"  1 3 3 3 3 3 3;
	setAttr -s 7 ".kot[0:6]"  9 3 3 3 3 3 3;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA353";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 11 0 15 -79.306610252500249 
		19 -79.306610252500249 23 -104.01207444226009 53 -104.01207444226009 57 6.4777937363772526 
		62 0 67 0;
	setAttr -s 9 ".kit[0:8]"  1 3 1 1 3 3 3 
		3 3;
	setAttr -s 9 ".kot[0:8]"  9 3 1 1 3 3 3 
		3 3;
	setAttr -s 9 ".kix[0:8]"  0 1 0.99554669857025146 0.99553865194320679 
		1 1 1 1 1;
	setAttr -s 9 ".kiy[0:8]"  0 0 -0.094269834458827972 -0.094354592263698578 
		0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  0.99554675817489624 0.99553865194320679 
		1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  -0.094269156455993652 -0.094354644417762756 
		0 0 0 0 0;
createNode animCurveTA -n "animCurveTA354";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 11 0 15 70.099799414792429 
		53 70.099799414792429 57 44.119815638852891 62 0 67 0;
	setAttr -s 7 ".kit[0:6]"  1 3 3 3 9 3 3;
	setAttr -s 7 ".kot[0:6]"  9 3 3 3 9 3 3;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 0.23814891278743744 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 -0.97122865915298462 0 
		0;
createNode animCurveTA -n "animCurveTA355";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 11 0 15 -9.2706636274653054 
		53 -9.2706636274652219 57 0.65898936877668357 62 0 67 0;
	setAttr -s 7 ".kit[0:6]"  1 3 3 3 3 3 3;
	setAttr -s 7 ".kot[0:6]"  9 3 3 3 3 3 3;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL138";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 10 0 15 -0.37280215569932479 
		19 -0.37280215569932479 23 0.057451328089667401 57 0.057451328089667401 62 
		0 67 0;
	setAttr -s 8 ".kit[6:7]"  9 9;
	setAttr -s 8 ".kot[0:7]"  9 1 1 1 1 1 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.29725745320320129 0.1838398277759552 
		0.19983649253845215 0.85341733694076538 0.54441404342651367 0.057922713458538055 
		1;
	setAttr -s 8 ".kiy[0:7]"  0 -0.95479738712310791 -0.98295623064041138 
		0.97982925176620483 0.52122825384140015 0.83881664276123047 -0.9983210563659668 
		0;
	setAttr -s 8 ".kox[1:7]"  0.29725754261016846 0.18383991718292236 
		0.19983647763729095 0.85341739654541016 0.54441416263580322 0.057922713458538055 
		1;
	setAttr -s 8 ".koy[1:7]"  -0.95479732751846313 -0.9829561710357666 
		0.97982925176620483 0.5212281346321106 0.83881658315658569 -0.9983210563659668 
		0;
createNode animCurveTL -n "animCurveTL139";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 10 0 15 0.78052984424792637 
		19 0.78052984424792637 23 0.73075468297990986 57 0.73075468297990986 62 0 
		67 0;
	setAttr -s 8 ".kit[3:7]"  9 9 1 1 9;
	setAttr -s 8 ".kot[0:7]"  9 1 1 9 9 1 1 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.15635828673839569 0.14910319447517395 
		0.053497523069381714 0.24661757051944733 0.23143656551837921 0.12019147723913193 
		1;
	setAttr -s 8 ".kiy[0:7]"  0 0.98770040273666382 0.98882162570953369 
		-0.99856799840927124 -0.96911287307739258 0.97285002470016479 -0.99275070428848267 
		0;
	setAttr -s 8 ".kox[1:7]"  0.15635834634304047 0.14910325407981873 
		0.053497523069381714 0.24661757051944733 0.23143661022186279 0.12019149959087372 
		1;
	setAttr -s 8 ".koy[1:7]"  0.98770040273666382 0.98882162570953369 
		-0.99856799840927124 -0.96911287307739258 0.97284996509552002 -0.99275070428848267 
		0;
createNode animCurveTL -n "animCurveTL140";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 10 1 15 1.0116735027353858 
		19 1.0116735027353858 23 1.078522203638808 57 1.078522203638808 62 1 67 1;
	setAttr -s 8 ".kit[7]"  9;
	setAttr -s 8 ".kot[0:7]"  9 1 1 1 1 1 1 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.97929215431213379 0.98089253902435303 
		0.82214897871017456 0.94086766242980957 0.95816624164581299 0.96094655990600586 
		1;
	setAttr -s 8 ".kiy[0:7]"  0 0.20245222747325897 0.19455024600028992 
		0.56927239894866943 0.33877435326576233 -0.28621232509613037 -0.27673396468162537 
		0;
	setAttr -s 8 ".kox[1:7]"  0.97929215431213379 0.98089253902435303 
		0.82214879989624023 0.94086766242980957 0.95816624164581299 0.96094655990600586 
		1;
	setAttr -s 8 ".koy[1:7]"  0.20245224237442017 0.19455021619796753 
		0.56927269697189331 0.33877426385879517 -0.2862122654914856 -0.27673399448394775 
		0;
createNode animCurveTL -n "animCurveTL141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 67 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 67 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 67 1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.076472881617957691 67 -0.076472881617957691;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.95473100313980441 10 0.76977439470656872 
		15 2.1353045522496679 19 1.7204793662382141 23 0.39582750583170362 51 0.39582750583170362 
		57 1.0906689798769134 62 0.77720332986648755 67 0.95473100313980441;
	setAttr -s 9 ".kit[0:8]"  3 1 3 9 3 1 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 1 3 9 3 1 9 
		9 9;
	setAttr -s 9 ".kix[1:8]"  0.052692774683237076 1 0.001533025992102921 
		1 0.14210288226604462 0.0096138687804341316 0.024513617157936096 0.0093877958133816719;
	setAttr -s 9 ".kiy[1:8]"  0.99861079454421997 0 -0.99999880790710449 
		0 0.98985189199447632 0.99995380640029907 -0.99969947338104248 0.99995595216751099;
	setAttr -s 9 ".kox[1:8]"  0.052692752331495285 1 0.001533025992102921 
		1 0.14210276305675507 0.0096138687804341316 0.024513617157936096 0.0093877958133816719;
	setAttr -s 9 ".koy[1:8]"  0.99861079454421997 0 -0.99999880790710449 
		0 0.98985189199447632 0.99995380640029907 -0.99969947338104248 0.99995595216751099;
createNode animCurveTL -n "animCurveTL146";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0.018960135289690292 57 
		0.018960135289690292 62 0 67 0;
	setAttr -s 5 ".kit[0:4]"  3 1 1 9 9;
	setAttr -s 5 ".kot[0:4]"  3 1 1 9 9;
	setAttr -s 5 ".kix[1:4]"  0.99999970197677612 0.99929076433181763 
		0.17315191030502319 1;
	setAttr -s 5 ".kiy[1:4]"  0.00080026849173009396 -0.037656553089618683 
		-0.98489511013031006 0;
	setAttr -s 5 ".kox[1:4]"  0.99999970197677612 0.99929076433181763 
		0.17315191030502319 1;
	setAttr -s 5 ".koy[1:4]"  0.00080026802606880665 -0.037656556814908981 
		-0.98489511013031006 0;
createNode animCurveTA -n "animCurveTA368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.62843630316474508 10 3.6259553482671349 
		15 3.8664477148685781 19 3.8664477148685781 23 4.259957539819732 40 4.259957539819732 
		51 4.9201749934337302 57 4.1684089320113111 62 8.2947331502555102 67 -0.62843630316474508;
	setAttr -s 10 ".kit[0:9]"  3 1 9 9 9 9 9 
		1 1 9;
	setAttr -s 10 ".kot[0:9]"  3 1 9 9 9 9 9 
		1 1 9;
	setAttr -s 10 ".kix[1:9]"  0.99555230140686035 0.99990212917327881 
		0.99966847896575928 0.99995189905166626 0.99992382526397705 0.99999600648880005 
		0.99961239099502563 0.99999421834945679 0.73065477609634399;
	setAttr -s 10 ".kiy[1:9]"  0.094210483133792877 0.013989909552037716 
		0.025746619328856468 0.0098110167309641838 0.012345097027719021 -0.002819679444655776 
		0.027839310467243195 -0.0034003944601863623 -0.68274712562561035;
	setAttr -s 10 ".kox[1:9]"  0.99555230140686035 0.99990212917327881 
		0.99966847896575928 0.99995189905166626 0.99992382526397705 0.99999600648880005 
		0.99961239099502563 0.99999421834945679 0.73065477609634399;
	setAttr -s 10 ".koy[1:9]"  0.094210498034954071 0.013989909552037716 
		0.025746619328856468 0.0098110167309641838 0.012345097027719021 -0.002819679444655776 
		0.027839317917823792 -0.0034004074987024069 -0.68274712562561035;
createNode animCurveTA -n "animCurveTA369";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -5.8284402688137167 10 -5.8060086236243054 
		15 21.080701262117305 19 21.080701262117305 23 32.110951785056599 40 32.717038475487627 
		51 32.110951785056592 57 1.9308182868720476 62 -5.5582964975381355 67 -5.8284402688137167;
	setAttr -s 10 ".kit[0:9]"  3 1 1 1 1 9 1 
		9 1 9;
	setAttr -s 10 ".kot[0:9]"  3 1 1 1 1 9 1 
		9 1 9;
	setAttr -s 10 ".kix[1:9]"  0.99830001592636108 0.99685746431350708 
		0.97955459356307983 0.99672502279281616 1 0.99791771173477173 0.4870789647102356 
		0.99250417947769165 0.9996001124382019;
	setAttr -s 10 ".kiy[1:9]"  0.058284565806388855 0.079215899109840393 
		0.20117838680744171 0.080865681171417236 0 -0.064499698579311371 -0.87335795164108276 
		-0.12221057713031769 -0.02827807143330574;
	setAttr -s 10 ".kox[1:9]"  0.99830001592636108 0.99685746431350708 
		0.97955459356307983 0.99672502279281616 1 0.99791771173477173 0.4870789647102356 
		0.99250417947769165 0.9996001124382019;
	setAttr -s 10 ".koy[1:9]"  0.058284565806388855 0.07921590656042099 
		0.20117838680744171 0.080865666270256042 0 -0.064499549567699432 -0.87335795164108276 
		-0.1222105398774147 -0.02827807143330574;
createNode animCurveTA -n "animCurveTA370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1.295636019309746 10 -0.28371612029207754 
		15 1.4761075958046204 19 1.4761075958046204 23 2.3509957591291633 40 2.461738890903046 
		51 2.3509957591291628 57 -0.12830178341452339 62 -2.1826335928518401 67 -1.295636019309746;
	setAttr -s 10 ".kit[0:9]"  3 9 1 1 1 9 1 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 9 1 1 1 9 1 
		9 9 9;
	setAttr -s 10 ".kix[2:9]"  0.9999157190322876 0.99987310171127319 
		0.99990200996398926 1 0.99998438358306885 0.97749805450439453 0.99813729524612427 
		0.99571377038955688;
	setAttr -s 10 ".kiy[2:9]"  0.012981664389371872 0.015930617228150368 
		0.013999025337398052 0 -0.0055840243585407734 -0.21094433963298798 -0.061007626354694366 
		0.092488020658493042;
	setAttr -s 10 ".kox[2:9]"  0.9999157190322876 0.99987310171127319 
		0.99990200996398926 1 0.99998438358306885 0.97749805450439453 0.99813729524612427 
		0.99571377038955688;
	setAttr -s 10 ".koy[2:9]"  0.012981663458049297 0.015930615365505219 
		0.013999025337398052 0 -0.005584025289863348 -0.21094433963298798 -0.061007626354694366 
		0.092488020658493042;
createNode animCurveTA -n "animCurveTA371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.43524234076486068 10 -0.43524234076486068 
		15 -0.43524234076486068 19 -0.43524234076486068 23 -0.43524234076486068 40 
		-0.43524234076486068 51 -0.43524234076486068 57 -0.43524234076486068 62 -0.43524234076486068 
		67 -0.43524234076486068;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.82665738350180629 10 -0.82665738350180629 
		15 -0.82665738350180629 19 -0.82665738350180629 23 -0.82665738350180629 40 
		-0.82665738350180629 51 -0.82665738350180629 57 -0.82665738350180629 62 -0.82665738350180629 
		67 -0.82665738350180629;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.27773886459742925 10 0.27773886459742925 
		15 0.27773886459742925 19 0.27773886459742925 23 0.27773886459742925 40 0.27773886459742925 
		51 0.27773886459742925 57 0.27773886459742925 62 0.27773886459742925 67 0.27773886459742925;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.8121934161072299e-015 10 1.8121934161072299e-015 
		15 0 19 0 23 0 40 0 51 0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 28.652637602052774 10 28.652637602052774 
		15 28.652637602052774 19 28.652637602052774 23 28.652637602052774 40 28.652637602052774 
		51 28.652637602052774 57 28.652637602052774 62 28.652637602052774 67 28.652637602052774;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 64.676908227303443 10 64.676908227303443 
		15 64.676908227303443 19 64.676908227303443 23 64.676908227303443 40 64.676908227303443 
		51 64.676908227303443 57 64.676908227303443 62 64.676908227303443 67 64.676908227303443;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.5198069948790518 10 0.5198069948790518 
		15 0.5198069948790518 19 0.5198069948790518 23 0.5198069948790518 40 0.5198069948790518 
		51 0.5198069948790518 57 0.5198069948790518 62 0.5198069948790518 67 0.5198069948790518;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.72394202659893114 10 -0.72394202659893114 
		15 -0.72394202659893114 19 -0.72394202659893114 23 -0.72394202659893114 40 
		-0.72394202659893114 51 -0.72394202659893114 57 -0.72394202659893114 62 -0.72394202659893114 
		67 -0.72394202659893114;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.36439499068905612 10 0.36439499068905612 
		15 0.36439499068905612 19 0.36439499068905612 23 0.36439499068905612 40 0.36439499068905612 
		51 0.36439499068905612 57 0.36439499068905612 62 0.36439499068905612 67 0.36439499068905612;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 7.7976222737965317 10 7.7976222737965317 
		15 7.7976222737965317 19 7.7976222737965317 23 7.7976222737965317 40 7.7976222737965317 
		51 7.7976222737965317 57 7.7976222737965317 62 7.7976222737965317 67 7.7976222737965317;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -30.409274105849079 10 -30.409274105849079 
		15 -30.409274105849079 19 -30.409274105849079 23 -30.409274105849079 40 -30.409274105849079 
		51 -30.409274105849079 57 -30.409274105849079 62 -30.409274105849079 67 -30.409274105849079;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -64.859940280210893 10 -64.859940280210893 
		15 -64.859940280210893 19 -64.859940280210893 23 -64.859940280210893 40 -64.859940280210893 
		51 -64.859940280210893 57 -64.859940280210893 62 -64.859940280210893 67 -64.859940280210893;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.8448236677023373 10 -0.8448236677023373 
		15 -0.8448236677023373 19 -0.8448236677023373 23 -0.8448236677023373 40 -0.8448236677023373 
		51 -0.8448236677023373 57 -0.8448236677023373 62 -0.8448236677023373 67 -0.8448236677023373;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.0304014029588007 10 1.0304014029588007 
		15 1.0304014029588007 19 1.0304014029588007 23 1.0304014029588007 40 1.0304014029588007 
		51 1.0304014029588007 57 1.0304014029588007 62 1.0304014029588007 67 1.0304014029588007;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.097994651149805143 10 -0.097994651149805143 
		15 -0.097994651149805143 19 -0.097994651149805143 23 -0.097994651149805143 
		40 -0.097994651149805143 51 -0.097994651149805143 57 -0.097994651149805143 
		62 -0.097994651149805143 67 -0.097994651149805143;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 5.4739599453216465 10 5.4739599453216465 
		15 5.4739599453216465 19 5.4739599453216465 23 5.4739599453216465 40 5.4739599453216465 
		51 5.4739599453216465 57 5.4739599453216465 62 5.4739599453216465 67 5.4739599453216465;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 8.5874521608419823 10 8.5874521608419823 
		15 8.5874521608419823 19 8.5874521608419823 23 8.5874521608419823 40 8.5874521608419823 
		51 8.5874521608419823 57 8.5874521608419823 62 8.5874521608419823 67 8.5874521608419823;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 74.754744621954103 10 74.754744621954103 
		15 74.754744621954103 19 74.754744621954103 23 74.754744621954103 40 74.754744621954103 
		51 74.754744621954103 57 74.754744621954103 62 74.754744621954103 67 74.754744621954103;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.61083301393139333 10 0.61083301393139333 
		15 0.61083301393139333 19 0.61083301393139333 23 0.61083301393139333 40 0.61083301393139333 
		51 0.61083301393139333 57 0.61083301393139333 62 0.61083301393139333 67 0.61083301393139333;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.0211562878106184 10 1.0211562878106184 
		15 1.0211562878106184 19 1.0211562878106184 23 1.0211562878106184 40 1.0211562878106184 
		51 1.0211562878106184 57 1.0211562878106184 62 1.0211562878106184 67 1.0211562878106184;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.14314299916678522 10 0.14314299916678522 
		15 0.14314299916678522 19 0.14314299916678522 23 0.14314299916678522 40 0.14314299916678522 
		51 0.14314299916678522 57 0.14314299916678522 62 0.14314299916678522 67 0.14314299916678522;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 16.226511010665412 10 16.226511010665412 
		15 16.226511010665412 19 16.226511010665412 23 16.226511010665412 40 16.226511010665412 
		51 16.226511010665412 57 16.226511010665412 62 16.226511010665412 67 16.226511010665412;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -8.5139660854992858 10 -8.5139660854992858 
		15 -8.5139660854992858 19 -8.5139660854992858 23 -8.5139660854992858 40 -8.5139660854992858 
		51 -8.5139660854992858 57 -8.5139660854992858 62 -8.5139660854992858 67 -8.5139660854992858;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -68.213989601412422 10 -68.213989601412422 
		15 -68.213989601412422 19 -68.213989601412422 23 -68.213989601412422 40 -68.213989601412422 
		51 -68.213989601412422 57 -68.213989601412422 62 -68.213989601412422 67 -68.213989601412422;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1 10 -1 15 -1 19 -1 23 -1 40 
		-1 51 -1 57 -1 62 -1 67 -1;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.10167917362943303 10 -0.10167917362943303 
		15 -0.10167917362943303 19 -0.10167917362943303 23 -0.10167917362943303 40 
		-0.10167917362943303 51 -0.10167917362943303 57 -0.10167917362943303 62 -0.10167917362943303 
		67 -0.10167917362943303;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.40762644910266188 10 -0.40762644910266188 
		15 -0.40762644910266188 19 -0.40762644910266188 23 -0.40762644910266188 40 
		-0.40762644910266188 51 -0.40762644910266188 57 -0.40762644910266188 62 -0.40762644910266188 
		67 -0.40762644910266188;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.93129112588482243 10 -0.93129112588482243 
		15 -0.93129112588482243 19 -0.93129112588482243 23 -0.93129112588482243 40 
		-0.93129112588482243 51 -0.93129112588482243 57 -0.93129112588482243 62 -0.93129112588482243 
		67 -0.93129112588482243;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA409";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 12.253734489678925 10 24.685816412029631 
		15 -87.661708735263574 17 -123.1389007706787 19 -50.15253905496894 21 59.241581711333012 
		23 -86.608507595123712 40 -79.30431233283268 47 -91.547275923879752 51 -22.201941741079242 
		57 -20.549333787543787 62 6.910356299462082 67 12.253734489678925;
	setAttr -s 13 ".kit[2:12]"  9 1 9 1 1 9 1 
		1 1 9 9;
	setAttr -s 13 ".kot[0:12]"  9 1 9 1 9 1 1 
		9 1 1 1 9 9;
	setAttr -s 13 ".kix[0:12]"  0 0.81785589456558228 0.0900706946849823 
		0.95372438430786133 0.041850659996271133 0.8367505669593811 0.9656451940536499 
		0.99424535036087036 0.97757923603057861 0.87368154525756836 0.8067358136177063 
		0.50315278768539429 0.87267071008682251;
	setAttr -s 13 ".kiy[0:12]"  0 -0.57542306184768677 -0.99593538045883179 
		0.30068230628967285 0.99912387132644653 -0.54758423566818237 -0.25986403226852417 
		-0.10712715983390808 0.21056801080703735 0.48649820685386658 0.59091228246688843 
		0.8641974925994873 0.48830914497375488;
	setAttr -s 13 ".kox[1:12]"  0.81785595417022705 0.0900706946849823 
		0.9537244439125061 0.041850659996271133 0.83675068616867065 0.96564525365829468 
		0.99424535036087036 0.97757917642593384 0.87368160486221313 0.80673587322235107 
		0.50315278768539429 0.87267071008682251;
	setAttr -s 13 ".koy[1:12]"  -0.57542306184768677 -0.99593538045883179 
		0.30068206787109375 0.99912387132644653 -0.54758399724960327 -0.25986388325691223 
		-0.10712715983390808 0.21056815981864929 0.4864981472492218 0.59091222286224365 
		0.8641974925994873 0.48830914497375488;
createNode animCurveTA -n "animCurveTA410";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -65.746751280844975 10 -49.411721855009041 
		15 39.635902392301624 17 45.28118835035486 19 -11.257064537868647 21 -19.960177849479408 
		23 18.394172358781137 40 57.450200521919641 47 17.62241570827555 51 -27.458172757786961 
		57 -17.206545894458209 62 -43.563500381831652 67 -65.746751280844975;
	setAttr -s 13 ".kit[0:12]"  3 1 1 1 1 1 9 
		9 9 1 9 9 3;
	setAttr -s 13 ".kot[0:12]"  3 1 1 1 1 1 9 
		9 9 1 9 9 3;
	setAttr -s 13 ".kix[1:12]"  0.36466497182846069 0.25667354464530945 
		0.64959907531738281 0.17497338354587555 0.88396984338760376 0.42444548010826111 
		0.99985826015472412 0.2401822954416275 0.75293326377868652 0.79362738132476807 
		0.36613771319389343 1;
	setAttr -s 13 ".kiy[1:12]"  0.93113881349563599 0.96649813652038574 
		-0.7602769136428833 -0.98457318544387817 0.46754387021064758 0.90545350313186646 
		-0.01683473214507103 -0.97072780132293701 -0.65809690952301025 -0.60840409994125366 
		-0.9305606484413147 0;
	setAttr -s 13 ".kox[1:12]"  0.36466497182846069 0.25667348504066467 
		0.64959907531738281 0.17497336864471436 0.88396978378295898 0.42444548010826111 
		0.99985826015472412 0.2401822954416275 0.75293326377868652 0.79362738132476807 
		0.36613771319389343 1;
	setAttr -s 13 ".koy[1:12]"  0.93113881349563599 0.96649819612503052 
		-0.76027697324752808 -0.98457318544387817 0.46754398941993713 0.90545350313186646 
		-0.01683473214507103 -0.97072780132293701 -0.65809684991836548 -0.60840409994125366 
		-0.9305606484413147 0;
createNode animCurveTA -n "animCurveTA411";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 10 -22.238498361952505 15 2.3077527462370639 
		17 102.44408165171022 19 149.78723250488386 21 5.3239384233185509 23 -5.9944208845436391 
		40 -2.0122685469519843 47 49.38240419154922 51 49.960197076215927 57 44.467698992949607 
		62 6.426342552073609 67 0;
	setAttr -s 13 ".kit[0:12]"  3 9 1 9 1 1 9 
		1 1 9 1 9 9;
	setAttr -s 13 ".kot[0:12]"  3 9 1 9 1 1 9 
		1 1 9 1 9 9;
	setAttr -s 13 ".kix[2:12]"  0.15558768808841705 0.051730643957853317 
		0.68198835849761963 0.21327105164527893 0.98016953468322754 0.84648281335830688 
		0.92923170328140259 0.96844840049743652 0.75081944465637207 0.39463502168655396 
		0.82963079214096069;
	setAttr -s 13 ".kiy[2:12]"  0.98782205581665039 0.9986611008644104 
		-0.73136299848556519 -0.97699308395385742 -0.19816082715988159 0.53241604566574097 
		0.36949756741523743 -0.24921409785747528 -0.66050750017166138 -0.91883796453475952 
		-0.55831241607666016;
	setAttr -s 13 ".kox[2:12]"  0.15558768808841705 0.051730643957853317 
		0.68198859691619873 0.21327091753482819 0.98016953468322754 0.84648293256759644 
		0.92923170328140259 0.96844840049743652 0.75081950426101685 0.39463502168655396 
		0.82963079214096069;
	setAttr -s 13 ".koy[2:12]"  0.98782205581665039 0.9986611008644104 
		-0.73136276006698608 -0.97699308395385742 -0.19816082715988159 0.53241586685180664 
		0.36949753761291504 -0.24921409785747528 -0.66050738096237183 -0.91883796453475952 
		-0.55831241607666016;
createNode animCurveTA -n "animCurveTA412";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.061808866237340665 10 -11.433083569646572 
		15 -62.222815638145534 57 -60.278513845645591 62 -0.061808866237340665 67 
		-0.061808866237340665;
	setAttr -s 6 ".kit[0:5]"  3 9 1 1 1 9;
	setAttr -s 6 ".kot[0:5]"  3 9 1 1 1 9;
	setAttr -s 6 ".kix[2:5]"  0.99999845027923584 0.98817342519760132 
		0.96656394004821777 1;
	setAttr -s 6 ".kiy[2:5]"  0.0017738976748660207 0.15334054827690125 
		0.25642561912536621 0;
	setAttr -s 6 ".kox[2:5]"  0.99999845027923584 0.98817342519760132 
		0.96656399965286255 1;
	setAttr -s 6 ".koy[2:5]"  0.0017738164169713855 0.15334048867225647 
		0.25642558932304382 0;
createNode animCurveTA -n "animCurveTA413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -59.058178941076754 10 -56.556653897270323 
		15 -54.209721552328524 19 -54.209721552328524 23 -55.104766947864903 40 -55.104766947864903 
		51 -55.104766947864903 57 -18.431575607013844 62 -59.058178941076754 67 -59.058178941076754;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 1 
		9 1 9;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 1 
		9 1 9;
	setAttr -s 10 ".kix[6:9]"  0.99643540382385254 0.98275059461593628 
		0.99801039695739746 1;
	setAttr -s 10 ".kiy[6:9]"  0.084359139204025269 -0.18493594229221344 
		-0.063049100339412689 0;
	setAttr -s 10 ".kox[6:9]"  0.99643540382385254 0.98275059461593628 
		0.99801045656204224 1;
	setAttr -s 10 ".koy[6:9]"  0.084359228610992432 -0.18493594229221344 
		-0.063049085438251495 0;
createNode animCurveTA -n "animCurveTA414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 16.57914742975785 10 26.286379968936686 
		15 39.057330333717402 19 39.057330333717402 23 41.788192102555058 40 42.42025798030383 
		51 41.788192102555058 57 28.984620228187932 62 16.57914742975785 67 16.57914742975785;
	setAttr -s 10 ".kit[0:9]"  1 9 1 9 9 9 1 
		9 1 9;
	setAttr -s 10 ".kot[2:9]"  1 9 9 9 1 9 1 
		9;
	setAttr -s 10 ".kix[0:9]"  0 0.78673005104064941 0.99996942281723022 
		0.98439979553222656 0.99650311470031738 1 0.99943631887435913 0.64020085334777832 
		0.99919676780700684 1;
	setAttr -s 10 ".kiy[0:9]"  0 0.61729717254638672 0.0078221764415502548 
		0.1759461909532547 0.083555594086647034 0 -0.033572152256965637 -0.76820755004882813 
		-0.040072925388813019 0;
	setAttr -s 10 ".kox[2:9]"  0.99996942281723022 0.98439979553222656 
		0.99650311470031738 1 0.99943631887435913 0.64020085334777832 0.99919676780700684 
		1;
	setAttr -s 10 ".koy[2:9]"  0.0078221810981631279 0.1759461909532547 
		0.083555594086647034 0 -0.033572182059288025 -0.76820755004882813 -0.04007289931178093 
		0;
createNode animCurveTA -n "animCurveTA415";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 8.5572674112203639 10 24.539521764395609 
		23 24.539521764395609 40 31.189133325915638 51 31.556091995077789 57 31.189133325915638 
		62 8.5572674112203639 67 8.5572674112203639;
	setAttr -s 8 ".kit[2:7]"  9 1 9 1 1 9;
	setAttr -s 8 ".kot[0:7]"  9 1 9 1 9 1 1 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.99959820508956909 0.99333256483078003 
		0.99842005968093872 1 0.99949163198471069 0.99415773153305054 1;
	setAttr -s 8 ".kiy[0:7]"  0 0.02834414504468441 0.11528381705284119 
		0.056191004812717438 0 -0.031881928443908691 -0.10793731361627579 0;
	setAttr -s 8 ".kox[1:7]"  0.99959820508956909 0.99333256483078003 
		0.99842005968093872 1 0.99949163198471069 0.99415773153305054 1;
	setAttr -s 8 ".koy[1:7]"  0.028344154357910156 0.11528381705284119 
		0.056190978735685349 0 -0.031881947070360184 -0.10793726146221161 0;
createNode animCurveTA -n "animCurveTA416";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 15.711328223519061 10 36.110441702423657 
		15 87.265461014016324 40 87.265461014016324 51 48.803988228948441 57 70.6487084445791 
		62 15.711328223519061 67 15.711328223519061;
	setAttr -s 8 ".kit[1:7]"  9 1 1 9 1 1 9;
	setAttr -s 8 ".kot[0:7]"  9 9 1 1 9 1 1 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.37168410420417786 0.99819648265838623 
		0.99945658445358276 0.89018791913986206 0.73645365238189697 0.99261832237243652 
		1;
	setAttr -s 8 ".kiy[0:7]"  0 0.9283592700958252 0.060031283646821976 
		-0.032962657511234283 -0.45559355616569519 -0.67648798227310181 -0.12128029018640518 
		0;
	setAttr -s 8 ".kox[2:7]"  0.99819648265838623 0.99945658445358276 
		0.89018791913986206 0.73645371198654175 0.99261832237243652 1;
	setAttr -s 8 ".koy[2:7]"  0.060031414031982422 -0.032962646335363388 
		-0.45559355616569519 -0.67648798227310181 -0.12128029763698578 0;
createNode animCurveTA -n "animCurveTA417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 67 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 67 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 67 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA420";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 10 0 15 -35.473287198274271 
		40 -35.473287198274271 51 -19.261333561132862 57 -50.259239396395763 62 0 
		67 0;
	setAttr -s 8 ".kit[4:7]"  9 1 1 9;
	setAttr -s 8 ".kot[0:7]"  9 1 1 1 9 1 1 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.98921245336532593 0.99780702590942383 
		0.99988603591918945 0.91007113456726074 0.99873536825180054 0.9951857328414917 
		1;
	setAttr -s 8 ".kiy[0:7]"  0 -0.14648810029029846 -0.066189803183078766 
		0.015096281655132771 -0.41445210576057434 0.050275366753339767 0.098007127642631531 
		0;
	setAttr -s 8 ".kox[1:7]"  0.98921239376068115 0.99780702590942383 
		0.99988603591918945 0.91007113456726074 0.99873536825180054 0.9951857328414917 
		1;
	setAttr -s 8 ".koy[1:7]"  -0.14648817479610443 -0.066189929842948914 
		0.015096292831003666 -0.41445210576057434 0.050275370478630066 0.098007209599018097 
		0;
createNode animCurveTA -n "animCurveTA421";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 10 0 15 5.5013377698315464 
		40 5.5013377698315464 51 30.82885027330477 57 -16.391229556860921 62 0 67 
		0;
	setAttr -s 8 ".kit[1:7]"  9 1 1 1 1 1 9;
	setAttr -s 8 ".kot[0:7]"  9 9 1 1 1 1 1 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.98205643892288208 0.99993950128555298 
		0.99752330780029297 0.93878114223480225 0.98232418298721313 0.94342577457427979 
		1;
	setAttr -s 8 ".kiy[0:7]"  0 0.18858717381954193 0.010998829267919064 
		0.070336632430553436 -0.34451419115066528 -0.18718776106834412 0.33158385753631592 
		0;
	setAttr -s 8 ".kox[2:7]"  0.99993950128555298 0.99752330780029297 
		0.93878114223480225 0.98232418298721313 0.94342577457427979 1;
	setAttr -s 8 ".koy[2:7]"  0.010998830199241638 0.070336632430553436 
		-0.3445141613483429 -0.18718773126602173 0.33158385753631592 0;
createNode animCurveTA -n "animCurveTA422";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 10 0 15 -69.680976818290702 
		40 -69.680976818290702 51 -21.631915124934444 57 14.628674351779871 62 0 
		67 0;
	setAttr -s 8 ".kit[7]"  9;
	setAttr -s 8 ".kot[0:7]"  9 1 1 1 1 1 1 
		9;
	setAttr -s 8 ".kix[0:7]"  0 0.97872644662857056 0.99934440851211548 
		0.99774646759033203 0.30090624094009399 0.99156635999679565 0.88952058553695679 
		1;
	setAttr -s 8 ".kiy[0:7]"  0 -0.20516940951347351 -0.036204036325216293 
		0.067096926271915436 0.95365375280380249 0.1296001672744751 -0.45689511299133301 
		0;
	setAttr -s 8 ".kox[1:7]"  0.97872644662857056 0.99934440851211548 
		0.99774646759033203 0.30090624094009399 0.99156635999679565 0.88952058553695679 
		1;
	setAttr -s 8 ".koy[1:7]"  -0.2051694393157959 -0.036203891038894653 
		0.067097008228302002 0.95365375280380249 0.12960013747215271 -0.45689508318901062 
		0;
createNode animCurveTA -n "animCurveTA423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 143.71460997127252 10 143.71460997127252 
		15 143.71460997127252 19 143.71460997127252 23 143.71460997127252 40 143.71460997127252 
		51 143.71460997127252 57 143.71460997127252 62 143.71460997127252 67 143.71460997127252;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 27.804554996454378 10 27.804554996454378 
		15 27.804554996454378 19 27.804554996454378 23 27.804554996454378 40 27.804554996454378 
		51 27.804554996454378 57 27.804554996454378 62 27.804554996454378 67 27.804554996454378;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 29.452980944098744 10 29.452980944098744 
		15 29.452980944098744 19 29.452980944098744 23 29.452980944098744 40 29.452980944098744 
		51 29.452980944098744 57 29.452980944098744 62 29.452980944098744 67 29.452980944098744;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 27.080064458283051 10 27.080064458283051 
		15 27.080064458283051 19 27.080064458283051 23 27.080064458283051 40 27.080064458283051 
		51 27.080064458283051 57 27.080064458283051 62 27.080064458283051 67 27.080064458283051;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA434";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA435";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA436";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA437";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 13.994403295754109 10 13.994403295754109 
		15 13.994403295754109 19 13.994403295754109 23 13.994403295754109 40 13.994403295754109 
		51 13.994403295754109 57 13.994403295754109 62 13.994403295754109 67 13.994403295754109;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA438";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA439";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA440";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 27.911632519594587 10 27.911632519594587 
		15 27.911632519594587 19 27.911632519594587 23 27.911632519594587 40 27.911632519594587 
		51 27.911632519594587 57 27.911632519594587 62 27.911632519594587 67 27.911632519594587;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA444";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.65073001024951671 10 1.1783055246515226 
		19 0.87406734536394382 23 5.613769498290262 40 5.4609139891814271 51 6.6923870220694228 
		53 -4.281274076509324 57 7.6442646871333535 62 0.95236092254188176 67 -0.65073001024951671;
	setAttr -s 10 ".kit[0:9]"  3 1 1 1 9 1 3 
		3 9 3;
	setAttr -s 10 ".kot[0:9]"  3 1 1 1 9 1 3 
		3 9 3;
	setAttr -s 10 ".kix[1:9]"  1 0.99987888336181641 0.99993139505386353 
		0.99979662895202637 0.99745374917984009 1 1 0.91722351312637329 1;
	setAttr -s 10 ".kiy[1:9]"  -0.0002283646899741143 0.015562774613499641 
		0.011715817265212536 0.020165998488664627 -0.071316570043563843 0 0 -0.39837300777435303 
		0;
	setAttr -s 10 ".kox[1:9]"  1 0.99987888336181641 0.99993139505386353 
		0.99979662895202637 0.99745374917984009 1 1 0.91722351312637329 1;
	setAttr -s 10 ".koy[1:9]"  -0.00022836304560769349 0.015562782995402813 
		0.01171581819653511 0.020165998488664627 -0.071316570043563843 0 0 -0.39837300777435303 
		0;
createNode animCurveTA -n "animCurveTA445";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -4.2368721935960938 10 -1.9546208044371249 
		19 -1.7070878645965772 23 -4.4100899712258874 40 -4.5982072757289929 51 -5.9634408608379106 
		53 -4.4907187955182106 57 -3.4366315785698087 62 -0.42352225903659912 67 
		-4.2368721935960938;
	setAttr -s 10 ".kit[4:9]"  9 9 1 9 1 9;
	setAttr -s 10 ".kot[0:9]"  9 1 1 1 9 9 1 
		9 1 9;
	setAttr -s 10 ".kix[0:9]"  0 0.99867945909500122 0.99938368797302246 
		0.99854391813278198 0.99957835674285889 0.99999064207077026 0.98618191480636597 
		0.97312873601913452 0.99954825639724731 0.92869013547897339;
	setAttr -s 10 ".kiy[0:9]"  0 0.051375001668930054 -0.035103965550661087 
		-0.053945325314998627 -0.029035346582531929 0.0043292548507452011 0.16566586494445801 
		0.23026163876056671 -0.030054859817028046 -0.37085661292076111;
	setAttr -s 10 ".kox[1:9]"  0.99867945909500122 0.99938368797302246 
		0.99854391813278198 0.99957835674285889 0.99999064207077026 0.98618191480636597 
		0.97312873601913452 0.99954825639724731 0.92869013547897339;
	setAttr -s 10 ".koy[1:9]"  0.051374997943639755 -0.03510395810008049 
		-0.053945332765579224 -0.029035346582531929 0.0043292548507452011 0.1656658947467804 
		0.23026163876056671 -0.030054859817028046 -0.37085661292076111;
createNode animCurveTA -n "animCurveTA446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 2.6995264082587447 10 -18.840735710834089 
		19 -19.41559112855494 23 -18.105863951211916 40 -16.159624224034655 51 -4.6086569302614819 
		53 -23.874274734927177 57 -41.259056317104609 62 -29.692665130126066 67 2.6995264082587447;
	setAttr -s 10 ".kit[0:9]"  3 1 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 1 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[1:9]"  0.99577492475509644 0.99956226348876953 
		0.99672096967697144 0.96959316730499268 0.95496219396591187 0.29841512441635132 
		0.9472048282623291 0.39848333597183228 0.28277084231376648;
	setAttr -s 10 ".kiy[1:9]"  -0.091827705502510071 0.029585348442196846 
		0.080915719270706177 0.24472257494926453 -0.29672744870185852 -0.95443618297576904 
		-0.3206290602684021 0.91717559099197388 0.95918750762939453;
	setAttr -s 10 ".kox[1:9]"  0.99577492475509644 0.99956226348876953 
		0.99672096967697144 0.96959316730499268 0.95496219396591187 0.29841512441635132 
		0.9472048282623291 0.39848333597183228 0.28277084231376648;
	setAttr -s 10 ".koy[1:9]"  -0.091827712953090668 0.029585348442196846 
		0.080915719270706177 0.24472257494926453 -0.29672744870185852 -0.95443618297576904 
		-0.3206290602684021 0.91717559099197388 0.95918750762939453;
createNode animCurveTA -n "animCurveTA447";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 10 0.034142177955573297 15 
		-17.108234508676606 19 -17.108234508676606 23 -5.6784617847376282 40 -4.6909082213919548 
		51 -3.4695057631600159 53 -7.6881075517266959 57 -6.041029753353385 62 0.34681053618467633 
		67 0;
	setAttr -s 11 ".kit[0:10]"  3 1 1 1 1 9 9 
		1 9 1 9;
	setAttr -s 11 ".kot[0:10]"  3 1 1 1 1 9 9 
		1 9 1 9;
	setAttr -s 11 ".kix[1:10]"  0.99952006340026855 0.95286720991134644 
		0.98160523176193237 0.99275952577590942 0.99914795160293579 0.99279230833053589 
		0.99114251136779785 0.90591013431549072 0.99578398466110229 0.99934113025665283;
	setAttr -s 11 ".kiy[1:10]"  -0.03097865916788578 -0.30338776111602783 
		0.19092191755771637 0.12011856585741043 0.041272185742855072 -0.11984759569168091 
		-0.13280263543128967 0.42347002029418945 0.091729000210762024 -0.036293979734182358;
	setAttr -s 11 ".kox[1:10]"  0.99952006340026855 0.95286720991134644 
		0.98160523176193237 0.99275952577590942 0.99914795160293579 0.99279230833053589 
		0.99114251136779785 0.90591013431549072 0.99578398466110229 0.99934113025665283;
	setAttr -s 11 ".koy[1:10]"  -0.030978642404079437 -0.30338770151138306 
		0.19092193245887756 0.12011858075857162 0.041272185742855072 -0.11984759569168091 
		-0.13280262053012848 0.42347002029418945 0.091729044914245605 -0.036293979734182358;
createNode animCurveTA -n "animCurveTA448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 10 -0.69631877675102183 15 
		-13.368626818826034 19 -13.368626818826034 23 5.3740468133109163 40 6.2540797219329418 
		51 7.2106216368550671 53 2.8774453600833394 57 5.0385036818923474 62 -1.943538329275772 
		67 0;
	setAttr -s 11 ".kit[0:10]"  3 1 1 1 1 9 9 
		9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  3 1 1 1 1 9 9 
		9 9 9 9;
	setAttr -s 11 ".kix[1:10]"  0.98950695991516113 0.97758781909942627 
		0.94162225723266602 0.99543344974517822 0.99941074848175049 0.99087834358215332 
		0.98250490427017212 0.9628455638885498 0.96691787242889404 0.97991043329238892;
	setAttr -s 11 ".kiy[1:10]"  -0.14448505640029907 -0.21052791178226471 
		0.33667126297950745 0.095458231866359711 0.034323632717132568 -0.1347595751285553 
		-0.18623679876327515 -0.27005264163017273 -0.25508785247802734 0.19943803548812866;
	setAttr -s 11 ".kox[1:10]"  0.98950695991516113 0.97758781909942627 
		0.94162225723266602 0.99543344974517822 0.99941074848175049 0.99087834358215332 
		0.98250490427017212 0.9628455638885498 0.96691787242889404 0.97991043329238892;
	setAttr -s 11 ".koy[1:10]"  -0.14448505640029907 -0.21052800118923187 
		0.33667129278182983 0.095458194613456726 0.034323632717132568 -0.1347595751285553 
		-0.18623679876327515 -0.27005264163017273 -0.25508785247802734 0.19943803548812866;
createNode animCurveTA -n "animCurveTA449";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 10 6.6706460484076109 15 -34.005188277521697 
		19 -34.005188277521697 23 30.662271690261864 40 40.387562648851208 51 48.604066654707552 
		53 7.797191917166356 57 25.501435267568844 62 17.656692119180786 67 0;
	setAttr -s 11 ".kit[0:10]"  3 1 1 1 1 9 1 
		1 9 1 9;
	setAttr -s 11 ".kot[0:10]"  3 1 1 1 1 9 1 
		1 9 1 9;
	setAttr -s 11 ".kix[1:10]"  0.95780903100967407 0.77925604581832886 
		0.56705552339553833 0.81673848628997803 0.94806218147277832 0.93336188793182373 
		0.69552189111709595 0.86742967367172241 0.56128942966461182 0.47571521997451782;
	setAttr -s 11 ".kiy[1:10]"  -0.2874053418636322 -0.62670564651489258 
		0.82367956638336182 0.57700800895690918 0.31808507442474365 -0.35893669724464417 
		-0.71850490570068359 0.4975598156452179 -0.82761961221694946 -0.87959933280944824;
	setAttr -s 11 ".kox[1:10]"  0.95780903100967407 0.77925604581832886 
		0.56705570220947266 0.81673848628997803 0.94806218147277832 0.93336194753646851 
		0.6955220103263855 0.86742967367172241 0.56128937005996704 0.47571521997451782;
	setAttr -s 11 ".koy[1:10]"  -0.28740543127059937 -0.62670570611953735 
		0.82367944717407227 0.57700800895690918 0.31808507442474365 -0.35893663763999939 
		-0.71850478649139404 0.4975598156452179 -0.82761961221694946 -0.87959933280944824;
createNode animCurveTA -n "animCurveTA450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 6.6786334979782902 10 6.6786334979782902 
		15 6.6786334979782902 19 6.6786334979782902 23 6.6786334979782902 40 6.6786334979782902 
		51 6.6786334979782902 57 6.6786334979782902 62 6.6786334979782902 67 6.6786334979782902;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA453";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1.8903601258661931 19 -1.9205240733526463 
		23 7.9118491028495663 40 7.9324127039230241 51 10.273198448435163 53 -3.8883787180425085 
		57 -4.8446395099161847 62 -1.5284932876765061 67 -1.8903601258661931;
	setAttr -s 9 ".kit[0:8]"  3 1 1 9 1 1 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 1 1 9 1 1 9 
		9 9;
	setAttr -s 9 ".kix[1:8]"  0.99987614154815674 0.99986350536346436 
		0.99902647733688354 0.99503660202026367 0.94972920417785645 0.99070656299591064 
		0.98824667930603027 0.99928277730941772;
	setAttr -s 9 ".kiy[1:8]"  0.015740359202027321 0.016520306468009949 
		0.044114142656326294 -0.099509559571743011 -0.31307259202003479 0.13601663708686829 
		0.1528676301240921 -0.037867419421672821;
	setAttr -s 9 ".kox[1:8]"  0.99987614154815674 0.99986350536346436 
		0.99902647733688354 0.99503660202026367 0.94972914457321167 0.99070656299591064 
		0.98824667930603027 0.99928277730941772;
	setAttr -s 9 ".koy[1:8]"  0.015740349888801575 0.016520330682396889 
		0.044114142656326294 -0.099509544670581818 -0.31307268142700195 0.13601663708686829 
		0.1528676301240921 -0.037867419421672821;
createNode animCurveTA -n "animCurveTA454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.5597289571479034 10 0.5752989879270447 
		23 0.57529898792704504 40 0.055381486637154635 51 -1.3823720610338039 53 
		1.0686593169736842 57 -0.007799744317415272 62 1.3769914912502106 67 2.5597289571479034;
	setAttr -s 9 ".kit[0:8]"  3 1 9 9 1 1 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  3 1 9 9 1 1 9 
		9 9;
	setAttr -s 9 ".kix[1:8]"  0.99998617172241211 0.99995881319046021 
		0.99933058023452759 0.99995136260986328 0.99974054098129272 0.99983912706375122 
		0.99108421802520752 0.99241697788238525;
	setAttr -s 9 ".kiy[1:8]"  -0.0052587445825338364 -0.0090738991275429726 
		-0.036583859473466873 0.0098633123561739922 0.022778905928134918 0.017935153096914291 
		0.13323688507080078 0.12291675060987473;
	setAttr -s 9 ".kox[1:8]"  0.99998617172241211 0.99995881319046021 
		0.99933058023452759 0.99995136260986328 0.99974054098129272 0.99983912706375122 
		0.99108421802520752 0.99241697788238525;
	setAttr -s 9 ".koy[1:8]"  -0.0052587375976145267 -0.0090738991275429726 
		-0.036583859473466873 0.0098633142188191414 0.02277890220284462 0.017935153096914291 
		0.13323688507080078 0.12291675060987473;
createNode animCurveTA -n "animCurveTA455";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.0168110874036045 10 21.608151777516508 
		23 21.6081517775165 40 25.343114835033809 51 33.82909431470523 53 5.3578073059043785 
		57 8.5499490539839709 62 13.877210978893407 67 2.0168110874036045;
	setAttr -s 9 ".kit[0:8]"  3 1 9 9 1 1 1 
		1 9;
	setAttr -s 9 ".kot[0:8]"  3 1 9 9 1 1 1 
		1 9;
	setAttr -s 9 ".kix[1:8]"  0.99819642305374146 0.99788206815719604 
		0.97486704587936401 0.95273548364639282 0.95509892702102661 0.80021035671234131 
		0.96706521511077881 0.62713384628295898;
	setAttr -s 9 ".kiy[1:8]"  0.060032155364751816 0.065049335360527039 
		0.22278742492198944 -0.30380105972290039 -0.29628711938858032 0.59971946477890015 
		-0.25452867150306702 -0.77891147136688232;
	setAttr -s 9 ".kox[1:8]"  0.99819642305374146 0.99788206815719604 
		0.97486704587936401 0.95273548364639282 0.95509892702102661 0.80021035671234131 
		0.96706521511077881 0.62713384628295898;
	setAttr -s 9 ".koy[1:8]"  0.060032125562429428 0.065049335360527039 
		0.22278742492198944 -0.30380105972290039 -0.29628711938858032 0.59971946477890015 
		-0.25452867150306702 -0.77891147136688232;
createNode animCurveTA -n "animCurveTA456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA457";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 33.429092416277157 10 33.429092416277157 
		15 33.429092416277157 19 33.429092416277157 23 33.429092416277157 40 33.429092416277157 
		51 33.429092416277157 57 33.429092416277157 62 33.429092416277157 67 33.429092416277157;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -121.24398976748977 10 -121.24398976748977 
		15 -121.24398976748977 19 -121.24398976748977 23 -121.24398976748977 40 -121.24398976748977 
		51 -121.24398976748977 57 -121.24398976748977 62 -121.24398976748977 67 -121.24398976748977;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 28.612774017129329 10 28.612774017129329 
		15 28.612774017129329 19 28.612774017129329 23 28.612774017129329 40 28.612774017129329 
		51 28.612774017129329 57 28.612774017129329 62 28.612774017129329 67 28.612774017129329;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 17.632837226638049 10 17.632837226638049 
		15 17.632837226638049 19 17.632837226638049 23 17.632837226638049 40 17.632837226638049 
		51 17.632837226638049 57 17.632837226638049 62 17.632837226638049 67 17.632837226638049;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 10 0 15 0 19 0 23 0 40 0 51 
		0 57 0 62 0 67 0;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 17.254116939558369 10 17.254116939558369 
		15 17.254116939558369 19 17.254116939558369 23 17.254116939558369 40 17.254116939558369 
		51 17.254116939558369 57 17.254116939558369 62 17.254116939558369 67 17.254116939558369;
	setAttr -s 10 ".kit[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kix[0:9]"  0 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
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
	setAttr ".ihi" 0;
	setAttr -s 21 ".lnk";
select -ne :time1;
	setAttr ".o" 30;
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
connectAttr "brt_victory_largeSource.st" "clipLibrary2.st[0]";
connectAttr "brt_victory_largeSource.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL124.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL125.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX1.a" "clipLibrary2.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL127.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ1.a" "clipLibrary2.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA346.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "brt_Hoop_Root_IK_FK_RFoot.a" "clipLibrary2.cel[0].cev[6].cevr"
		;
connectAttr "brt_Hoop_Root_IK_FK_LFoot.a" "clipLibrary2.cel[0].cev[7].cevr"
		;
connectAttr "brt_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary2.cel[0].cev[8].cevr"
		;
connectAttr "brt_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary2.cel[0].cev[9].cevr"
		;
connectAttr "animCurveTU29.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU30.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU31.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU32.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA347.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA348.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA349.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL129.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL130.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL131.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL132.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL133.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL134.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA350.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA351.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA352.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL135.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL136.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL137.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA353.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA354.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA355.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA356.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA357.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA358.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA359.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA360.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA361.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTA362.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTA363.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTA364.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTA365.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTA366.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTA367.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL138.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL139.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL140.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTL141.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTL142.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTL143.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTL144.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTL145.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTL146.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA368.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA369.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA370.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA371.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA372.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA373.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA374.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA375.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA376.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA377.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA378.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA379.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA380.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA381.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA382.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA383.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA384.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA385.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA386.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA387.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA388.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA389.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA390.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTA391.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTA392.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTA393.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA394.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA395.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA396.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL147.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL148.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL149.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA397.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA398.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA399.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL150.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL151.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL152.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA400.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA401.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA402.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL153.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL154.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL155.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA403.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA404.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA405.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL156.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL157.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL158.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTA406.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTA407.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTA408.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTL159.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTL160.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTL161.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTL162.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTL163.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTL164.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA409.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA410.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA411.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA412.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA413.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA414.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA415.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA416.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA417.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA418.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA419.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA420.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA421.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA422.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA423.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA424.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA425.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA426.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA427.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA428.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA429.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA430.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA431.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA432.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA433.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA434.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA435.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA436.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA437.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA438.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA439.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA440.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA441.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA442.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA443.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA444.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA445.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA446.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA447.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA448.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA449.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA450.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA451.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA452.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA453.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA454.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA455.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA456.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA457.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA458.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr "animCurveTA459.a" "clipLibrary2.cel[0].cev[162].cevr";
connectAttr "animCurveTA460.a" "clipLibrary2.cel[0].cev[163].cevr";
connectAttr "animCurveTA461.a" "clipLibrary2.cel[0].cev[164].cevr";
connectAttr "animCurveTA462.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "animCurveTA463.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "animCurveTA464.a" "clipLibrary2.cel[0].cev[167].cevr";
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
// End of brt_victory_large.ma
