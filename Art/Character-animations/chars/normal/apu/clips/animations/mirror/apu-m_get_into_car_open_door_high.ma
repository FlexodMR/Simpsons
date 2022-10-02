//Maya ASCII 4.0 scene
//Name: apu-m_get_into_car_open_door_high.ma
//Last modified: Tue, Jul 23, 2002 12:37:37 PM
requires maya "4.0";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dSimpleShader" "17.1";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "apu_get_into_car_open_door_high";
	setAttr ".ihi" 0;
	setAttr ".du" 14;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kot[0:1]"  5 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 14 1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kot[0:1]"  5 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0.011833743287319011 1 0.011833743287319011 
		2 0.011833743287319011 3 0.011833743287319011 4 0.011833743287319011 5 0.011728402511589589 
		6 0.011833743287319011 7 0.01256722721623553 8 0.013487983643071475 9 0.013940558836709529 
		10 0.013487983643071475 11 0.01256722721623553 12 0.011833743287319011 13 
		0.016113798212413395 14 0.011833743287319011;
	setAttr -s 15 ".kit[14]"  1;
	setAttr -s 15 ".kot[0:14]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9;
	setAttr -s 15 ".kix[14]"  0.021131936460733414;
	setAttr -s 15 ".kiy[14]"  -0.99977672100067139;
	setAttr -s 15 ".kox[0:14]"  1 1 1 1 0.98774522542953491 1 0.62219178676605225 
		0.37379193305969238 0.43670246005058289 1 0.43670246005058289 0.37379193305969238 
		0.18473947048187256 1 0.077645517885684967;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 -0.15607477724552155 0 
		0.78286480903625488 0.92751258611679077 0.89960598945617676 0 -0.89960598945617676 
		-0.92751258611679077 0.98278754949569702 0 -0.99698102474212646;
createNode animCurveTL -n "animCurveTL209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTL -n "animCurveTL210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -0.19934347275585879 1 -0.19934347275585879 
		2 -0.19934347275585879 3 -0.19934347275585879 4 -0.19934347275585879 5 -0.19934347275585879 
		6 -0.19934347275585879 7 -0.19934347275585879 8 -0.19934347275585879 9 -0.19934347275585879 
		10 -0.19934347275585879 11 -0.19934347275585879 12 -0.19934347275585879 13 
		-0.19934347275585879 14 -0.19934347275585879;
	setAttr -s 15 ".kit[14]"  1;
	setAttr -s 15 ".kot[0:14]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9;
	setAttr -s 15 ".kix[14]"  0.051824722439050674;
	setAttr -s 15 ".kiy[14]"  -0.99865615367889404;
	setAttr -s 15 ".kox[0:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA566";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[0:1]"  2 1;
	setAttr -s 2 ".kot[1]"  2;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU41";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU42";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU43";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU44";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU45";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU46";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU47";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 14 1;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU48";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 14 1;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA567";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA568";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA569";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL211";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL212";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL213";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL214";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.27568360450508722 2 -0.27568360450508722 
		4 -0.27568360450508722 6 -0.27568360450508722 9 -0.27568360450508722 12 -0.27568360450508722 
		14 -0.27568360450508722;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 3 3 3 3 3 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL215";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.12653210140617871 2 0.12653210140617871 
		4 0.12653210140617871 6 0.12653210140617871 9 0.12653210140617871 12 0.12653210140617871 
		14 0.12653210140617871;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 3 3 3 3 3 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL216";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.28112502897458508 2 -0.28112502897458508 
		4 -0.28112502897458508 6 -0.28112502897458508 9 -0.28112502897458508 12 -0.28112502897458508 
		14 -0.28112502897458508;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 3 3 3 3 3 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA570";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 3 3 3 3 3 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA571";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 3 3 3 3 3 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA572";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 3 3 3 3 3 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL217";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.20480243569541287 2 0.20480243569541287 
		4 0.20480243569541287 6 0.20480243569541287 9 0.20480243569541287 12 0.20480243569541287 
		14 0.20480243569541287;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 3 3 3 3 3 3;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL218";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.12653246007581798 2 0.12653246007581798 
		4 0.12653246007581798 6 0.12653246007581798 9 0.12653246007581798 12 0.12653246007581798 
		14 0.12653246007581798;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 3 3 3 3 3 3;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL219";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.34681373819763683 2 -0.34681373819763683 
		4 -0.34681373819763683 6 -0.34681373819763683 9 -0.34681373819763683 12 -0.34681373819763683 
		14 -0.34681373819763683;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 3 3 3 3 3 3;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA573";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 3 3 3 3 3 3;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA574";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 25.948901905116401 2 25.948901905116401 
		4 25.948901905116401 6 25.948901905116401 9 25.948901905116401 12 25.948901905116401 
		14 25.948901905116401;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 3 3 3 3 3 3;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA575";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 3 3 3 3 3 3;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA576";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA577";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA578";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA579";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA580";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA581";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 2 1 4 1 6 1 9 1 12 1 14 1;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 2 1 4 1 6 1 9 1 12 1 14 1;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.016735148698293616 2 0.016735148698293616 
		4 0.016735148698293616 6 0.016735148698293616 9 0.01971458391527264 12 0.016735148698293616 
		14 0.016735148698293616;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.013435794040560722;
	setAttr -s 7 ".kiy[6]"  -0.99990975856781006;
	setAttr -s 7 ".kox[0:6]"  1 1 1 0.48819813132286072 1 0.48819813132286072 
		1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0.87273281812667847 0 -0.87273281812667847 
		0;
createNode animCurveTL -n "animCurveTL227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.96427704314795082 2 0.96427704314795082 
		4 0.96427704314795126 6 0.96427704314795082 9 0.96427704314795082 12 0.96427704314795082 
		14 0.96427704314795082;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.28190933144362085 2 -0.28190933144362085 
		4 -0.28190933144362085 6 -0.28190933144362085 9 -0.28190933144362085 12 -0.28190933144362085 
		14 -0.28190933144362085;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.62843630316474508 2 1.4172706358132503 
		4 5.3559938600896526 6 5.3559938600896526 9 5.5887949045481076 12 -0.62843630316474508 
		14 -0.62843630316474508;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.99998974800109863;
	setAttr -s 7 ".kiy[6]"  -0.0045273411087691784;
	setAttr -s 7 ".kox[0:6]"  1 0.78721785545349121 0.88882029056549072 
		0.99970299005508423 0.8864026665687561 0.83803480863571167 1;
	setAttr -s 7 ".koy[0:6]"  0 0.61667501926422119 0.45825591683387756 
		0.024371625855565071 -0.46291497349739075 -0.5456167459487915 0;
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 5.8284402688137158 2 3.310891698770456 
		4 -23.474724321549342 6 -23.474724321549342 9 -20.756934084050513 12 5.8284402688137158 
		14 5.8284402688137158;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.99999988079071045;
	setAttr -s 7 ".kiy[6]"  -0.00050343270413577557;
	setAttr -s 7 ".kox[0:6]"  1 0.25227141380310059 0.27426981925964355 
		0.96180492639541626 0.36419814825057983 0.33804753422737122 1;
	setAttr -s 7 ".koy[0:6]"  0 -0.96765649318695068 -0.96165275573730469 
		0.27373579144477844 0.93132150173187256 0.94112902879714966 0;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.2956360193097458 2 1.3333736146708783 
		4 0.63689151618975604 6 0.63689151618975404 9 -0.035210834251391099 12 1.2956360193097458 
		14 1.2956360193097458;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.99900686740875244;
	setAttr -s 7 ".kiy[6]"  -0.044556625187397003;
	setAttr -s 7 ".kox[0:6]"  1 0.99630284309387207 0.99586981534957886 
		0.99753230810165405 0.99835175275802612 0.99042779207229614 1;
	setAttr -s 7 ".koy[0:6]"  0 -0.085910655558109283 -0.090792752802371979 
		-0.070208713412284851 0.05739155039191246 0.13803191483020782 0;
createNode animCurveTA -n "animCurveTA585";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA586";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA587";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA588";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA589";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA590";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA591";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA592";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA593";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA594";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA595";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA596";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA597";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA598";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA599";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA600";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA601";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA602";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA603";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA604";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA605";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA606";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA607";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA608";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA609";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA610";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.5198069948790518 2 -0.5198069948790518 
		4 -0.5198069948790518 6 -0.5198069948790518 9 -0.5198069948790518 12 -0.5198069948790518 
		14 -0.5198069948790518;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.72394202659893114 2 -0.72394202659893114 
		4 -0.72394202659893114 6 -0.72394202659893114 9 -0.72394202659893114 12 -0.72394202659893114 
		14 -0.72394202659893114;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.36439499068905612 2 0.36439499068905612 
		4 0.36439499068905612 6 0.36439499068905612 9 0.36439499068905612 12 0.36439499068905612 
		14 0.36439499068905612;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA611";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 7.7976222737965299 2 7.7976222737965299 
		4 7.7976222737965299 6 7.7976222737965299 9 7.7976222737965299 12 7.7976222737965299 
		14 7.7976222737965299;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA612";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 30.409274105849079 2 30.409274105849079 
		4 30.409274105849079 6 30.409274105849079 9 30.409274105849079 12 30.409274105849079 
		14 30.409274105849079;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA613";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 64.859940280210878 2 64.859940280210878 
		4 64.859940280210878 6 64.859940280210878 9 64.859940280210878 12 64.859940280210878 
		14 64.859940280210878;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.43524234076486068 2 0.43524234076486068 
		4 0.43524234076486068 6 0.43524234076486068 9 0.43524234076486068 12 0.43524234076486068 
		14 0.43524234076486068;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.82665738350180629 2 -0.82665738350180629 
		4 -0.82665738350180629 6 -0.82665738350180629 9 -0.82665738350180629 12 -0.82665738350180629 
		14 -0.82665738350180629;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.27773886459742925 2 0.27773886459742925 
		4 0.27773886459742925 6 0.27773886459742925 9 0.27773886459742925 12 0.27773886459742925 
		14 0.27773886459742925;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA614";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA615";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -28.652637602052774 2 -28.652637602052774 
		4 -28.652637602052774 6 -28.652637602052774 9 -28.652637602052774 12 -28.652637602052774 
		14 -28.652637602052774;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA616";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -64.676908227303443 2 -64.676908227303443 
		4 -64.676908227303443 6 -64.676908227303443 9 -64.676908227303443 12 -64.676908227303443 
		14 -64.676908227303443;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.69763319415119751 2 -0.81459490521198263 
		4 -0.67226080069775407 6 -0.75301694272795427 9 -0.7556892457058263 12 -0.69763319415119751 
		14 -0.69763319415119751;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.036097411066293716;
	setAttr -s 7 ".kiy[6]"  0.99934828281402588;
	setAttr -s 7 ".kox[0:6]"  0.0056997784413397312 0.052478142082691193 
		0.02164769358932972 0.019973212853074074 0.036088153719902039 0.028696067631244659 
		1;
	setAttr -s 7 ".koy[0:6]"  -0.99998372793197632 0.99862205982208252 
		0.99976563453674316 -0.99980050325393677 0.99934858083724976 0.99958819150924683 
		0;
createNode animCurveTL -n "animCurveTL236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.4351252783300359 2 1.4890790011597372 
		4 1.5502339295420049 6 1.5502339295420045 9 1.5502339295420049 12 1.4876514904098039 
		14 1.4351252783300359;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.0086043328046798706;
	setAttr -s 7 ".kiy[6]"  0.99996298551559448;
	setAttr -s 7 ".kox[0:6]"  0.012355323880910873 0.011582481674849987 
		0.021797370165586472 1 0.031941540539264679 0.014477555640041828 0.012691054493188858;
	setAttr -s 7 ".koy[0:6]"  0.99992358684539795 0.99993294477462769 
		0.99976241588592529 0 -0.99948972463607788 -0.99989521503448486 -0.99991947412490845;
createNode animCurveTL -n "animCurveTL237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.30999899439089884 2 -0.67736924911423591 
		4 -0.86247677383074772 6 -0.89057021104691625 9 -0.91088998173187918 12 -0.025527037442321234 
		14 -0.30999899439089884;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.0048719923943281174;
	setAttr -s 7 ".kiy[6]"  0.9999881386756897;
	setAttr -s 7 ".kox[0:6]"  0.0018146964721381664 0.0024133629631251097 
		0.0062537579797208309 0.034405484795570374 0.0023120171390473843 0.002773648127913475 
		0.0023435170296579599;
	setAttr -s 7 ".koy[0:6]"  -0.99999833106994629 -0.99999707937240601 
		-0.99998044967651367 -0.99940794706344604 0.99999731779098511 0.9999961256980896 
		-0.99999725818634033;
createNode animCurveTA -n "animCurveTA617";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -9.8095199935760213 2 -9.8095199935760213 
		4 -9.8095199935760213 6 -16.928554070556896 9 -9.8095199935760213 12 -12.190116301634809 
		14 -9.8095199935760213;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.20402401685714722;
	setAttr -s 7 ".kiy[6]"  0.9789658784866333;
	setAttr -s 7 ".kox[0:6]"  1 1 0.73158562183380127 1 0.9241102933883667 
		1 0.84866946935653687;
	setAttr -s 7 ".koy[0:6]"  0 0 -0.68174958229064941 0 0.38212582468986511 
		0 0.52892357110977173;
createNode animCurveTA -n "animCurveTA618";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 6.903921154505233 2 6.903921154505233 
		4 6.903921154505233 6 13.055194006776288 9 6.903921154505233 12 36.773497737324583 
		14 6.903921154505233;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.33803966641426086;
	setAttr -s 7 ".kiy[6]"  0.94113188982009888;
	setAttr -s 7 ".kox[0:6]"  1 1 0.77888929843902588 1 0.43502429127693176 
		1 0.12684693932533264;
	setAttr -s 7 ".koy[0:6]"  0 0 0.62716144323348999 0 0.90041869878768921 
		0 -0.99192231893539429;
createNode animCurveTA -n "animCurveTA619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 65.755594144247468 2 65.755594144247468 
		4 65.755594144247468 6 65.169805915331949 9 65.755594144247468 12 59.577337968631539 
		14 65.755594144247468;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.19646483659744263;
	setAttr -s 7 ".kiy[6]"  0.9805108904838562;
	setAttr -s 7 ".kox[0:6]"  1 1 0.99707305431365967 1 0.89868694543838501 
		1 0.52586525678634644;
	setAttr -s 7 ".koy[0:6]"  0 0 -0.076455056667327881 0 -0.43859061598777771 
		0 0.85056787729263306;
createNode animCurveTL -n "animCurveTL238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.67692029843130319 2 0.48932199157368977 
		4 -0.46288624483713819 6 -0.46288624483713819 9 -0.46288624483713819 12 0.90758980983475146 
		14 0.67692029843130319;
	setAttr -s 7 ".kit[2:6]"  1 9 1 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 1 9 1 9 9;
	setAttr -s 7 ".kix[2:6]"  0.019770221784710884 1 0.04546814039349556 
		0.0014622348826378584 0.0043184822425246239;
	setAttr -s 7 ".kiy[2:6]"  -0.99980455636978149 0 0.9989657998085022 
		0.99999892711639404 -0.99999070167541504;
	setAttr -s 7 ".kox[0:6]"  0.0035536698997020721 0.0011697883019223809 
		0.019770149141550064 1 0.045468136668205261 0.0014622348826378584 0.0028901258483529091;
	setAttr -s 7 ".koy[0:6]"  -0.99999368190765381 -0.99999934434890747 
		-0.99980455636978149 0 0.9989657998085022 0.99999892711639404 -0.99999582767486572;
createNode animCurveTL -n "animCurveTL239";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.4255172795853828 2 1.4952854716260258 
		4 1.8699687912210814 6 1.8699687912210814 9 1.8699687912210814 12 1.9285754055495894 
		14 1.4255172795853828;
	setAttr -s 7 ".kit[0:6]"  9 1 1 9 1 9 1;
	setAttr -s 7 ".kot[3:6]"  9 1 9 9;
	setAttr -s 7 ".kix[1:6]"  0.0093650491908192635 0.029609318822622299 
		1 0.46370998024940491 0.0037499142345041037 0.0046084076166152954;
	setAttr -s 7 ".kiy[1:6]"  0.99995613098144531 0.99956148862838745 
		0 0.88598698377609253 -0.9999929666519165 -0.99998939037322998;
	setAttr -s 7 ".kox[0:6]"  0.0095550166442990303 0.009365093894302845 
		0.029609166085720062 1 0.46371012926101685 0.0037499142345041037 0.0013252268545329571;
	setAttr -s 7 ".koy[0:6]"  0.99995434284210205 0.99995613098144531 
		0.99956148862838745 0 0.88598698377609253 -0.9999929666519165 -0.99999910593032837;
createNode animCurveTL -n "animCurveTL240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.41319991648047383 2 0.076522399588847739 
		4 0.47731659828725059 6 0.47731659828725059 9 0.47731659828725059 12 0.069982576425077353 
		14 -0.41319991648047383;
	setAttr -s 7 ".kit[2:6]"  1 9 1 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 1 9 1 9 9;
	setAttr -s 7 ".kix[2:6]"  0.029424659907817841 1 0.050222642719745636 
		0.0018715696642175317 0.0044850418344140053;
	setAttr -s 7 ".kiy[2:6]"  0.99956703186035156 0 -0.99873805046081543 
		-0.99999827146530151 -0.99998992681503296;
	setAttr -s 7 ".kox[0:6]"  0.0013613143237307668 0.0014972566859796643 
		0.029424808919429779 1 0.050222612917423248 0.0018715696642175317 0.0013797397259622812;
	setAttr -s 7 ".koy[0:6]"  0.99999904632568359 0.99999886751174927 
		0.99956703186035156 0 -0.99873805046081543 -0.99999827146530151 -0.99999904632568359;
createNode animCurveTA -n "animCurveTA620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -8.3720838028337159 2 -21.57916405216001 
		4 3.6034376717901329 6 3.6034376717901329 9 3.6034376717901329 12 -74.97486221642059 
		14 -8.3720838028337159;
	setAttr -s 7 ".kit[2:6]"  1 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 1 9 9 9 9;
	setAttr -s 7 ".kix[2:6]"  0.96192079782485962 1 0.14430467784404755 
		0.62345534563064575 0.11092628538608551;
	setAttr -s 7 ".kiy[2:6]"  0.27332830429077148 0 -0.98953330516815186 
		-0.78185898065567017 0.99382865428924561;
	setAttr -s 7 ".kox[0:6]"  0.27783098816871643 0.53780972957611084 
		0.96192079782485962 1 0.14430467784404755 0.62345534563064575 0.057256657630205154;
	setAttr -s 7 ".koy[0:6]"  -0.96062994003295898 0.84306627511978149 
		0.27332830429077148 0 -0.98953330516815186 -0.78185898065567017 0.99835950136184692;
createNode animCurveTA -n "animCurveTA621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -7.9878122667209013 2 -38.216231671775468 
		4 -16.013673265538053 6 -16.013673265538053 9 -16.013673265538053 12 -78.085162025408806 
		14 -7.9878122667209013;
	setAttr -s 7 ".kit[2:6]"  1 1 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 1 1 9 9 9;
	setAttr -s 7 ".kix[2:6]"  0.94024252891540527 0.99969333410263062 
		0.1815444678068161 0.7655290961265564 0.20203626155853271;
	setAttr -s 7 ".kiy[2:6]"  0.340505450963974 -0.024763632565736771 
		-0.98338276147842407 0.64340132474899292 0.97937804460525513;
	setAttr -s 7 ".kox[0:6]"  0.12536492943763733 0.68945449590682983 
		0.94024258852005005 0.99969333410263062 0.1815444678068161 0.7655290961265564 
		0.054410908371210098;
	setAttr -s 7 ".koy[0:6]"  -0.99211066961288452 -0.72432899475097656 
		0.34050527215003967 -0.024763632565736771 -0.98338276147842407 0.64340132474899292 
		0.99851864576339722;
createNode animCurveTA -n "animCurveTA622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -70.479639319526854 2 -65.091981205430542 
		4 -177.47233113591014 6 -177.47233113591014 9 -177.47233113591014 12 -108.69598856768454 
		14 -70.479639319526854;
	setAttr -s 7 ".kit[2:6]"  1 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 1 9 9 9 9;
	setAttr -s 7 ".kix[2:6]"  0.59387826919555664 1 0.16434919834136963 
		0.08889847993850708 0.33352217078208923;
	setAttr -s 7 ".kiy[2:6]"  -0.80455487966537476 0 0.98640221357345581 
		0.9960407018661499 0.94274228811264038;
	setAttr -s 7 ".kox[0:6]"  0.57836621999740601 0.071220166981220245 
		0.59387791156768799 1 0.16434919834136963 0.08889847993850708 0.099454320967197418;
	setAttr -s 7 ".koy[0:6]"  0.8157772421836853 -0.99746060371398926 
		-0.80455517768859863 0 0.98640221357345581 0.9960407018661499 0.99504214525222778;
createNode animCurveTL -n "animCurveTL241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.1016791736294336 2 0.1016791736294336 
		4 0.43277885085526263 6 0.43277885085526263 9 1.1531151559350343 12 0.28205296994012197 
		14 0.1016791736294336;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.009239676408469677;
	setAttr -s 7 ".kiy[6]"  -0.99995732307434082;
	setAttr -s 7 ".kox[0:6]"  1 0.0040269517339766026 0.0040269517339766026 
		0.0023137279786169529 0.013267953880131245 0.0015851318603381515 0.0036960032302886248;
	setAttr -s 7 ".koy[0:6]"  0 0.99999189376831055 0.99999189376831055 
		0.99999731779098511 -0.99991196393966675 -0.99999874830245972 -0.99999314546585083;
createNode animCurveTL -n "animCurveTL242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.40762644910266188 2 -0.40762644910266188 
		4 -1.0665105917635724 6 -1.0665105917635724 9 -0.38483240262525004 12 -0.87920517052667224 
		14 -0.40762644910266188;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.003534205723553896;
	setAttr -s 7 ".kiy[6]"  0.99999374151229858;
	setAttr -s 7 ".kox[0:6]"  1 0.0020236191339790821 0.0020236191339790821 
		0.0024449389893561602 0.010677139274775982 0.072923831641674042 0.0014136898098513484;
	setAttr -s 7 ".koy[0:6]"  0 -0.99999797344207764 -0.99999797344207764 
		0.99999701976776123 0.99994301795959473 -0.99733752012252808 0.99999898672103882;
createNode animCurveTL -n "animCurveTL243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.93129112588482243 2 -0.93129112588482243 
		4 -0.56596695006850484 6 -0.56596695006850484 9 0.38422740689155033 12 -0.85940030809392287 
		14 -0.93129112588482243;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.023177076131105423;
	setAttr -s 7 ".kiy[6]"  -0.99973136186599731;
	setAttr -s 7 ".kox[0:6]"  1 0.0036497022956609726 0.0036497022956609726 
		0.0017540242988616228 0.0068156993947923183 0.0012669265270233154 0.0092729236930608749;
	setAttr -s 7 ".koy[0:6]"  0 0.99999332427978516 0.99999332427978516 
		0.99999845027923584 -0.9999767541885376 -0.99999922513961792 -0.99995702505111694;
createNode animCurveTL -n "animCurveTL244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 -0.47879246795359254 
		6 -0.6060290109067098 9 -0.57093507714497682 12 0 14 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 0.0027847725432366133 0.0022001094184815884 
		0.018084947019815445 0.0033001541160047054 0.0029191754292696714 1;
	setAttr -s 7 ".koy[0:6]"  0 -0.9999961256980896 -0.99999755620956421 
		-0.99983644485473633 0.99999457597732544 0.99999576807022095 0;
createNode animCurveTL -n "animCurveTL245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 -0.08835860664206352 
		6 -0.22976474856709092 9 -0.083833438851239048 12 0 14 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 0.01508830301463604 0.0058029391802847385 
		0.3456139862537384 0.0087042255327105522 0.019876763224601746 1;
	setAttr -s 7 ".koy[0:6]"  0 -0.999886155128479 -0.99998319149017334 
		0.938376784324646 0.99996209144592285 0.99980241060256958 0;
createNode animCurveTL -n "animCurveTL246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1 2 -1 4 -0.39982101962890249 
		6 -0.84672745560074869 9 -0.37165354612466645 12 -1 14 -1;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 0.0022215540520846844 0.008698771707713604 
		0.059066593647003174 0.013047539629042149 0.0026524551212787628 1;
	setAttr -s 7 ".koy[0:6]"  0 0.99999755620956421 0.99996215105056763 
		0.99825406074523926 -0.99991488456726074 -0.99999648332595825 0;
createNode animCurveTA -n "animCurveTA623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.061808866237337522 2 -0.061808866237337522 
		4 -0.061808866237337522 6 -0.061808866237337522 9 -0.061808866237337522 12 
		-0.061808866237337522 14 -0.061808866237337522;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -59.058178941076754 2 -59.058178941076754 
		4 -59.058178941076754 6 -59.058178941076754 9 -59.058178941076754 12 -59.058178941076754 
		14 -59.058178941076754;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.579147429757843 2 16.579147429757843 
		4 16.579147429757843 6 16.579147429757843 9 16.579147429757843 12 16.579147429757843 
		14 16.579147429757843;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.253734489678925 2 12.253734489678925 
		4 12.253734489678925 6 12.253734489678925 9 12.253734489678925 12 12.253734489678925 
		14 12.253734489678925;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA627";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -65.746751280844961 2 -65.746751280844961 
		4 -65.746751280844961 6 -65.746751280844961 9 -65.746751280844961 12 -65.746751280844961 
		14 -65.746751280844961;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA628";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.711328223519057 2 15.711328223519057 
		4 15.711328223519057 6 15.711328223519057 9 15.711328223519057 12 15.711328223519057 
		14 15.711328223519057;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.5572674112203622 2 8.5572674112203622 
		4 8.5572674112203622 6 8.5572674112203622 9 8.5572674112203622 12 8.5572674112203622 
		14 8.5572674112203622;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.2533422302317216 2 8.2533422302317216 
		4 8.2533422302317216 6 8.2533422302317216 9 8.2533422302317216 12 8.2533422302317216 
		14 8.2533422302317216;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 23.263402056531085 2 23.263402056531085 
		4 23.263402056531085 6 23.263402056531085 9 23.263402056531085 12 23.263402056531085 
		14 23.263402056531085;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 20.166277752815617 2 20.166277752815617 
		4 20.166277752815617 6 20.166277752815617 9 20.166277752815617 12 20.166277752815617 
		14 20.166277752815617;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 33.429092416277157 2 33.429092416277157 
		4 39.958476539989476 6 39.958476539989476 9 39.958476539989476 12 33.429092416277157 
		14 33.429092416277157;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 0.76017552614212036 0.76017552614212036 
		1 0.86885339021682739 0.82548224925994873 1;
	setAttr -s 7 ".koy[0:6]"  0 0.64971774816513062 0.64971774816513062 
		0 -0.49506944417953491 -0.56442803144454956 0;
createNode animCurveTA -n "animCurveTA643";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA644";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA645";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA646";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA647";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA648";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 14 13.994403295754109;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA649";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA650";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA651";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 14 13.994403295754109;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA653";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 17.254116939558369 2 17.254116939558369 
		4 17.254116939558369 6 17.254116939558369 9 17.254116939558369 12 17.254116939558369 
		14 17.254116939558369;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA657";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA658";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.65073001024951671 2 -3.9568076839401427 
		4 -17.068638286573716 6 -17.068638286573716 9 -19.588638286573751 12 0.65073001024951671 
		14 0.65073001024951671;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0.00023334745492320508;
	setAttr -s 7 ".kox[0:6]"  1 0.39590707421302795 0.50342202186584473 
		0.96689921617507935 0.54304021596908569 0.42670729756355286 1;
	setAttr -s 7 ".koy[0:6]"  0 -0.91829055547714233 -0.86404067277908325 
		-0.2551586925983429 0.8397066593170166 0.90438979864120483 0;
createNode animCurveTA -n "animCurveTA659";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 4.2368721935960929 2 4.2368721935960965 
		4 13.425353902454427 6 13.425353902454427 9 13.425353902454402 12 4.2368721935960929 
		14 4.2368721935960929;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.97637087106704712;
	setAttr -s 7 ".kiy[6]"  0.21610152721405029;
	setAttr -s 7 ".kox[0:6]"  1 0.6393132209777832 0.6393132209777832 
		1 0.78016567230224609 0.720589280128479 1;
	setAttr -s 7 ".koy[0:6]"  0 0.76894640922546387 0.76894640922546387 
		0 -0.62557297945022583 -0.69336217641830444 0;
createNode animCurveTA -n "animCurveTA660";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.7398866450636881 2 8.7398866450636916 
		4 7.2436181159875543 6 7.2436181159875543 9 7.2436181159875463 12 8.7398866450636881 
		14 8.7398866450636881;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.99999678134918213;
	setAttr -s 7 ".kiy[6]"  0.0025287920143455267;
	setAttr -s 7 ".kox[0:6]"  1 0.9813539981842041 0.9813539981842041 
		1 0.99158269166946411 0.9879457950592041 1;
	setAttr -s 7 ".koy[0:6]"  0 -0.19220907986164093 -0.19220907986164093 
		0 0.12947498261928558 0.15480011701583862 0;
createNode animCurveTA -n "animCurveTA661";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 -65.099346843289041 4 -8.9218180358985339 
		6 -8.9218180358985339 9 39.465670659755219 12 0 14 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.25994285941123962;
	setAttr -s 7 ".kiy[6]"  -0.96562397480010986;
	setAttr -s 7 ".kox[0:6]"  0.058574475347995758 0.65040671825408936 
		0.1347472071647644 0.19361615180969238 0.78904706239700317 0.23517808318138123 
		1;
	setAttr -s 7 ".koy[0:6]"  -0.9982830286026001 -0.75958609580993652 
		0.99088001251220703 0.98107737302780151 0.61433273553848267 -0.97195231914520264 
		0;
createNode animCurveTA -n "animCurveTA662";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 11.733347411067861 4 1.6155955699641837 
		6 1.6155955699641837 9 -8.4110773468270246 12 0 14 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.77032369375228882;
	setAttr -s 7 ".kiy[6]"  0.63765299320220947;
	setAttr -s 7 ".kox[0:6]"  0.30955371260643005 0.97836107015609741 
		0.60257762670516968 0.68965834379196167 0.9902070164680481 0.75041347742080688 
		1;
	setAttr -s 7 ".koy[0:6]"  0.9508819580078125 0.20690475404262543 
		-0.79806023836135864 -0.72413492202758789 -0.13960662484169006 0.66096866130828857 
		0;
createNode animCurveTA -n "animCurveTA663";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -15.452965173287611 2 2.5398046573199404 
		4 8.9932894977754412 6 8.9932894977754412 9 0.81922993329620952 12 -15.452965173287611 
		14 -15.452965173287611;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.44861438870429993;
	setAttr -s 7 ".kiy[6]"  0.89372539520263672;
	setAttr -s 7 ".kox[0:6]"  0.20766393840312958 0.29827436804771423 
		0.76391136646270752 0.75969088077545166 0.42443308234214783 0.5061306357383728 
		1;
	setAttr -s 7 ".koy[0:6]"  0.97820025682449341 0.95448017120361328 
		0.64532119035720825 -0.65028440952301025 -0.90545928478240967 -0.86245685815811157 
		0;
createNode animCurveTA -n "animCurveTA664";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -4.8714700432790456 2 -4.8714700432790456 
		4 -4.8714700432790456 6 -4.8714700432790456 9 -4.8714700432790456 12 -4.8714700432790456 
		14 -4.8714700432790456;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA665";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -11.783606204137085 2 -11.783606204137085 
		4 -11.783606204137085 6 -11.783606204137085 9 -11.783606204137085 12 -11.783606204137085 
		14 -11.783606204137085;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA666";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 7.5423825101935913 2 7.5423825101935913 
		4 7.5423825101935913 6 7.5423825101935913 9 7.5423825101935913 12 7.5423825101935913 
		14 7.5423825101935913;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA667";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.8903601258661931 2 1.1957942388486538 
		4 -3.4800486108535926 6 -3.4800486108535926 9 -2.8124611984170382 12 1.8903601258661931 
		14 1.8903601258661931;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  -6.3793573644943535e-005;
	setAttr -s 7 ".kox[0:6]"  1 0.81808310747146606 0.85291910171508789 
		0.99756526947021484 0.90549147129058838 0.8971099853515625 1;
	setAttr -s 7 ".koy[0:6]"  0 -0.57510006427764893 -0.52204310894012451 
		0.069739371538162231 0.42436450719833374 0.44180721044540405 0;
createNode animCurveTA -n "animCurveTA668";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.5597289571479034 2 -2.5789635952751016 
		4 -1.9834659991821482 6 -1.9834659991821482 9 -2.95704996942565 12 -2.5597289571479034 
		14 -2.5597289571479034;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.99887633323669434;
	setAttr -s 7 ".kiy[6]"  0.047392416745424271;
	setAttr -s 7 ".kox[0:6]"  1 0.99716705083847046 0.99697566032409668 
		0.99484288692474365 0.99873793125152588 0.99913555383682251 1;
	setAttr -s 7 ".koy[0:6]"  0 0.075218945741653442 0.077714703977108002 
		-0.10142769664525986 -0.050224963575601578 0.041571393609046936 0;
createNode animCurveTA -n "animCurveTA669";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.016811087403604 2 2.9237779855754376 
		4 3.0641521685924453 6 3.0641521685924453 9 2.3319106751928649 12 2.016811087403604 
		14 2.016811087403604;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  0.99999874830245972;
	setAttr -s 7 ".kiy[6]"  0.0015669860877096653;
	setAttr -s 7 ".kox[0:6]"  1 0.99073266983032227 0.99983119964599609 
		0.99707299470901489 0.99584919214248657 0.99945604801177979 1;
	setAttr -s 7 ".koy[0:6]"  0 0.13582611083984375 0.018371837213635445 
		-0.07645571231842041 -0.091018378734588623 -0.032979205250740051 0;
createNode animCurveTA -n "animCurveTA670";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA671";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA672";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.080064458283051 2 27.080064458283051 
		4 27.080064458283051 6 27.080064458283051 9 27.080064458283051 12 27.080064458283051 
		14 27.080064458283051;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA673";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 10.423754966968488 2 10.423754966968488 
		4 10.423754966968488 6 10.423754966968488 9 10.423754966968488 12 10.423754966968488 
		14 10.423754966968488;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA674";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.722848255843903 2 27.722848255843903 
		4 27.722848255843903 6 27.722848255843903 9 27.722848255843903 12 27.722848255843903 
		14 27.722848255843903;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA675";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 21.576484776388227 2 21.576484776388227 
		4 21.576484776388227 6 21.576484776388227 9 21.576484776388227 12 21.576484776388227 
		14 21.576484776388227;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA676";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA677";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 4 0 6 0 9 0 12 0 14 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA678";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.911632519594587 2 27.911632519594587 
		4 35.69325681061391 6 35.69325681061391 9 35.69325681061391 12 27.911632519594587 
		14 27.911632519594587;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 0.70055723190307617 0.70055723190307617 
		1 0.82728224992752075 0.77520650625228882 1;
	setAttr -s 7 ".koy[0:6]"  0 0.71359622478485107 0.71359622478485107 
		0 -0.56178653240203857 -0.63170790672302246 0;
createNode clipLibrary -n "clipLibrary2";
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
connectAttr "apu_get_into_car_open_door_high.st" "clipLibrary2.st[0]";
connectAttr "apu_get_into_car_open_door_high.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL206.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL207.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL208.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL209.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL210.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA566.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU41.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU42.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU43.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU44.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU45.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU46.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU47.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU48.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA567.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA568.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA569.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL211.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL212.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL213.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL214.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL215.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL216.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA570.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA571.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA572.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL217.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL218.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL219.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA573.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA574.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA575.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA576.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA577.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA578.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA579.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA580.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA581.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTL220.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTL221.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTL222.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTL223.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTL224.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTL225.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL226.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL227.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL228.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTA582.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTA583.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTA584.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTA585.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTA586.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTA587.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA588.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA589.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA590.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA591.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA592.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA593.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA594.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA595.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA596.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA597.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA598.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA599.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA600.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA601.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA602.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA603.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA604.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA605.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA606.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA607.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA608.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA609.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA610.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTL229.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTL230.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTL231.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA611.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA612.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA613.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL232.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL233.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL234.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA614.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA615.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA616.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL235.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL236.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL237.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA617.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA618.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA619.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL238.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL239.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL240.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA620.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA621.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA622.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL241.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL242.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL243.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTL244.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTL245.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTL246.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTA623.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTA624.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTA625.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTA626.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTA627.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTA628.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA629.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA630.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA631.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA632.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA633.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA634.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA635.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA636.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA637.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA638.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA639.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA640.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA641.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA642.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA643.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA644.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA645.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA646.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA647.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA648.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA649.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA650.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA651.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA652.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA653.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA654.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA655.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA656.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA657.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA658.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA659.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA660.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA661.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA662.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA663.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA664.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA665.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA666.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA667.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA668.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA669.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA670.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA671.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA672.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA673.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA674.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA675.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA676.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA677.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA678.a" "clipLibrary2.cel[0].cev[161].cevr";
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
// End of apu-m_get_into_car_open_door_high.ma
