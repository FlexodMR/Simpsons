//Maya ASCII 4.0 scene
//Name: lsa_jump_run_all.ma
//Last modified: Fri, Oct 11, 2002 03:01:19 PM
requires maya "4.0";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_jump_run_allSource";
	setAttr ".ihi" 0;
	setAttr ".du" 35;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL914";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTL -n "animCurveTL915";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 35 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0.013223370898418536 1 -0.0027115556740051235 
		2 -0.02109800941470447 3 -0.024235964190097343 4 -0.024628208537021457 5 
		-0.023451475496249125 6 -0.021882498108552688 7 -0.02109800941470447 8 -0.02109800941470447 
		9 -0.02109800941470447 10 -0.02109800941470447 11 -0.02109800941470447 12 
		-0.02109800941470447 13 -0.02109800941470447 14 -0.02178443700617351 15 -0.023157292189111597 
		16 -0.024186933576315166 17 -0.023843719780580645 18 -0.02109800941470447 
		19 -0.011989526933920492 20 0.0018858139853253537 21 0.013223370898418536 
		22 0.016935351908383918 23 0.017070912211199513 24 0.017985988437557644 25 
		0.019357899227751184 26 0.02056949579099613 27 0.021003629336508501 28 0.020043151073504292 
		29 0.017070912211199513 30 0.01044650601065983 31 0.00033557012369979903 
		32 -0.011169977654341266 33 -0.021978219528124034 34 -0.029997237702309203 
		35 -0.033135114381557439;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0.68525936395702469 1 0.8151512896224532 
		2 0.97014367928646639 3 1.177216336636713 4 1.402734634506013 5 1.631078332766297 
		6 1.8466271912894945 7 2.0337609699475361 8 2.1860502485213842 9 2.3148228288320443 
		10 2.4310943038115123 11 2.545880266391781 12 2.670196309504846 13 2.8150580260827018 
		14 2.9938843219139808 15 3.1995921555545079 16 3.4124441990870698 17 3.6127031245944501 
		18 3.7806316041594368 19 3.8861769293704045 20 3.938466063800246 21 3.9765311875085247 
		22 3.9991288661462834 23 4.0004508321850976 24 4.0007950858766188 25 3.9993887667679702 
		26 3.9968105140927146 27 3.9936389670844155 28 3.9904527649766339 29 3.9878305470029352 
		30 3.9856697671624763 31 3.9834870049202356 32 3.9812895877085039 33 3.9790848429595735 
		34 3.9768800981057364 35 3.9746826805792841;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0;
createNode animCurveTU -n "animCurveTU185";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTU -n "animCurveTU186";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTU -n "animCurveTU187";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTU -n "animCurveTU188";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTU -n "animCurveTU189";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 21 1 23 0 35 0;
	setAttr -s 4 ".kit[2:3]"  1 3;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTU -n "animCurveTU190";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 21 1 23 0 35 0;
	setAttr -s 4 ".kit[2:3]"  1 3;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTU -n "animCurveTU191";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 21 0 23 1 35 1;
	setAttr -s 4 ".kit[2:3]"  1 3;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTU -n "animCurveTU192";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 21 0 23 1 35 1;
	setAttr -s 4 ".kit[2:3]"  1 3;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "animCurveTA2625";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2626";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2627";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTL -n "animCurveTL919";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTL -n "animCurveTL920";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTL -n "animCurveTL921";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTL -n "animCurveTL922";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.19763288944005308 2 -0.19763288944005308 
		7 -0.26743046713945823 13 -0.19361324548656986 18 -0.19763288944005308 21 
		-0.26454016861507795 23 -0.26454016861507795 29 -0.26454016861507795 35 -0.26454016861507795;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 3 3 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 3 3 
		9 3;
createNode animCurveTL -n "animCurveTL923";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.36956228769602462 2 0.48553879384849169 
		7 2.7006242161799872 13 2.7181066443696431 18 0.5390069303671019 21 0.13800000000000001 
		23 0.13800000000000001 29 0.13800000000000001 35 0.13806192026723146;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 3 3 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 3 3 
		9 3;
createNode animCurveTL -n "animCurveTL924";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.1850695690183266 2 2.1203301526419867 
		7 5.2431979791589161 13 6.2921032035986126 18 8.2461663583404139 21 9.1080000000000005 
		23 9.1080000000000005 29 9.1080000000000005 35 9.108307871941598;
	setAttr -s 9 ".kit[5:8]"  3 3 9 9;
	setAttr -s 9 ".kot[5:8]"  3 3 9 9;
createNode animCurveTA -n "animCurveTA2628";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 68.750149689121002 2 58.991545356860456 
		7 -23.756352536516083 13 63.42919453699708 18 63.42919453699708 21 0 23 0 
		29 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 3 3 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 3 3 
		9 3;
createNode animCurveTA -n "animCurveTA2629";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 7.5012435233160621 2 0 7 0 13 
		0 18 0 21 -13.684436532566473 23 -13.684436532566473 29 -13.684436532566473 
		35 -13.717778871715204;
	setAttr -s 9 ".kit[1:8]"  9 9 9 3 3 3 9 
		3;
	setAttr -s 9 ".kot[1:8]"  9 9 9 3 3 3 9 
		3;
createNode animCurveTA -n "animCurveTA2630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 7 0 13 0 18 0 21 0 23 0 
		29 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL925";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.27370329528033366 2 0.27370329528033366 
		7 0.19697756422115981 13 0.20466293379550235 18 0.19697756422115981 21 0.21594587158542247 
		23 0.21594587158542247 29 0.21594587158542247 35 0.21594587158542247;
	setAttr -s 9 ".kit[1:8]"  9 9 9 9 3 3 3 
		3;
	setAttr -s 9 ".kot[1:8]"  9 9 9 9 3 3 3 
		3;
createNode animCurveTL -n "animCurveTL926";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.11742628606129618 2 0.21883269393183521 
		7 2.5551053259469829 13 2.8688065975154795 18 0.46685556106951737 21 0.13800000000000001 
		23 0.13800000000000001 29 0.13800000000000001 35 0.1380615615975922;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 3 3 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 3 3 
		9 3;
createNode animCurveTL -n "animCurveTL927";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.4384099090534985 2 1.7348532718746719 
		7 4.3214402232490379 13 7.0354508459422771 18 9.174 21 9.174 23 9.174 29 
		9.174 35 9.1739965811646513;
	setAttr -s 9 ".kit[4:8]"  3 3 3 3 9;
	setAttr -s 9 ".kot[4:8]"  3 3 3 3 9;
createNode animCurveTA -n "animCurveTA2631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 15.468242281845603 7 63.280688109220009 
		13 15.152663851696316 18 -21.697759345501197 21 0 23 0 29 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 3 3 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 3 3 
		9 3;
createNode animCurveTA -n "animCurveTA2632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -32.597249886621306 2 0 7 0 13 
		0 18 0 21 0 23 0 29 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 7 0 13 0 18 0 21 0 23 0 
		29 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2634";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2635";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2636";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2637";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2638";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2639";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2640";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2641";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2642";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2643";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2644";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2645";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTL -n "animCurveTL928";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 7 0 13 0 18 0 21 0 23 0 
		29 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL929";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 7 0 13 0 18 0 21 0 23 0 
		29 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL930";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 2 1 7 1 13 1 18 1 21 1 23 1 
		29 1 35 1;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL931";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.61286360265336515 2 0 7 0 13 
		0 18 0 21 0 23 0 29 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL932";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 7 0 13 0 18 0 21 0 23 0 
		29 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL933";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 2 1 7 1 13 1 18 1 21 1 23 1 
		29 1 35 1;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL934";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.03051835782609956 2 -0.048692319506319935 
		7 -0.048692319506319935 13 -0.048692319506319935 18 -0.048692319506319935 
		21 0.03051835782609956 23 0.03939813919472121 29 0.03939813919472121 35 -0.076472881617957691;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL935";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.76074829734573723 2 0.87639974265305898 
		7 2.9942091371908175 13 3.3210984729564728 18 1.0085220366676828 21 0.6772959304381142 
		23 0.57343699945878546 29 0.61678692073698771 35 0.96147551361829786;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 1 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 1 9 
		9 3;
	setAttr -s 9 ".kix[5:8]"  0.0062057445757091045 0.044027835130691528 
		0.010307707823812962 1;
	setAttr -s 9 ".kiy[5:8]"  -0.99998074769973755 -0.99903029203414917 
		0.99994689226150513 0;
	setAttr -s 9 ".kox[5:8]"  0.0062057911418378353 0.044027835130691528 
		0.010307707823812962 1;
	setAttr -s 9 ".koy[5:8]"  -0.99998074769973755 -0.99903029203414917 
		0.99994689226150513 0;
createNode animCurveTL -n "animCurveTL936";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.5815173478516726 2 2.239004878153577 
		7 4.6937384945496152 13 6.4969022499021047 18 8.7253597430438354 21 9.1774784674264556 
		23 9.2326828688548499 29 9.2035563789442687 35 9.1732122786956154;
createNode animCurveTA -n "animCurveTA2646";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 20.950825280283908 2 20.950825280283908 
		7 -27.4658159762194 13 -31.871346166237402 18 -17.73343894735353 21 -11.722674222649985 
		23 -11.722674222649985 29 -11.722674222649983 35 -0.62843630316474508;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 -6.8139232258102842 7 -6.6831835168417442 
		13 -6.2464949092521325 18 -6.2464949092521254 21 0 23 0 29 0 35 -5.8284402688137167;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 -1.4726187357019898 7 1.9851625591198019 
		13 3.0995684069088036 18 3.0995684069087965 21 0 23 0 29 0 35 -1.295636019309746;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2649";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2650";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2651";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.0984482521620249 35 0;
createNode animCurveTA -n "animCurveTA2652";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.588300303494186 35 0;
createNode animCurveTA -n "animCurveTA2653";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2654";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2655";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -22.686733334985114 35 0;
createNode animCurveTA -n "animCurveTA2656";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2657";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2658";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0579251312417479e-005 35 0;
createNode animCurveTA -n "animCurveTA2659";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2660";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2661";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.0984482535121209 35 0;
createNode animCurveTA -n "animCurveTA2662";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.588300300216805 35 0;
createNode animCurveTA -n "animCurveTA2663";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2664";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2665";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -22.686733333057838 35 0;
createNode animCurveTA -n "animCurveTA2666";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2667";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2668";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0579251312417479e-005 35 0;
createNode animCurveTA -n "animCurveTA2669";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2670";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2671";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -53.481021487645641 35 0;
createNode animCurveTA -n "animCurveTA2672";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 19 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2673";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 19 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2674";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.0579251312417479e-005 19 0 
		35 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL937";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.99214331096561381 35 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL938";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.033841737269357866 35 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL939";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.027201153963313806 35 0.27773886459742925;
createNode animCurveTA -n "animCurveTA2675";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2676";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 28.652637602052774;
createNode animCurveTA -n "animCurveTA2677";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 64.676908227303443;
createNode animCurveTL -n "animCurveTL940";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.99214413619678865 35 0.5198069948790518;
createNode animCurveTL -n "animCurveTL941";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.033851474715545553 35 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL942";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.0272011762672867 35 0.36439499068905612;
createNode animCurveTA -n "animCurveTA2678";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 7.7976222737965317;
createNode animCurveTA -n "animCurveTA2679";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 -30.409274105849079;
createNode animCurveTA -n "animCurveTA2680";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 -64.859940280210893;
createNode animCurveTL -n "animCurveTL943";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.3705977767760478 20 -0.98061208805004418 
		23 -0.98061208805004418 29 -0.92287094496223643 35 -0.97384023505055983;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "animCurveTL944";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.1618658070195953 20 0.63150002143062933 
		23 0.63150002143062933 29 0.56644343935920771 35 1.2525965505547216;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "animCurveTL945";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.12044246479037771 20 14.160713051824285 
		23 14.093451429924768 29 14.00177103920892 35 13.334822721606706;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA2681";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 -42.867554010787885 23 -38.134762363532673 
		29 0.84516848667927391 35 -12.222987645962956;
	setAttr -s 5 ".kit[1:4]"  9 9 1 3;
	setAttr -s 5 ".kot[1:4]"  1 9 1 3;
	setAttr -s 5 ".kix[3:4]"  0.47622326016426086 1;
	setAttr -s 5 ".kiy[3:4]"  0.87932437658309937 0;
	setAttr -s 5 ".kox[1:4]"  0.77098405361175537 0.36594519019126892 
		0.47622323036193848 1;
	setAttr -s 5 ".koy[1:4]"  0.63685446977615356 0.93063640594482422 
		0.87932443618774414 0;
createNode animCurveTA -n "animCurveTA2682";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 28.149690506654711 23 27.83960258319113 
		29 21.560322259711064 35 -19.681044208515029;
	setAttr -s 5 ".kit[1:4]"  9 9 1 3;
	setAttr -s 5 ".kot[1:4]"  1 9 1 3;
	setAttr -s 5 ".kix[3:4]"  0.55313801765441895 1;
	setAttr -s 5 ".kiy[3:4]"  -0.83308959007263184 0;
	setAttr -s 5 ".kox[1:4]"  0.99853867292404175 0.93373972177505493 
		0.55313795804977417 1;
	setAttr -s 5 ".koy[1:4]"  -0.05404147133231163 -0.3579527735710144 
		-0.83308964967727661 0;
createNode animCurveTA -n "animCurveTA2683";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 30.109428848425473 23 31.359956923713636 
		29 56.68315006067558 35 65.119655550709012;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 1 9 9 3;
	setAttr -s 5 ".kox[1:4]"  0.97700017690658569 0.54311704635620117 
		0.5616682767868042 1;
	setAttr -s 5 ".koy[1:4]"  0.21323844790458679 0.8396570086479187 
		0.8273625373840332 0;
createNode animCurveTL -n "animCurveTL946";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.3705978542308779 20 0.92493013705870175 
		23 0.92493013705870175 29 0.85311970967631501 35 0.75854111686822778;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "animCurveTL947";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.1618621235956237 20 0.53859139700882563 
		23 0.53859139700882563 29 0.50851714900144152 35 1.1932952672205326;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "animCurveTL948";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.12044250833667494 20 14.328305320332769 
		23 14.26104369843325 29 14.1083314857245 35 13.575960371923296;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA2684";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 -2.1513976318227264 23 -2.1513976318227264 
		29 -2.1513976318227264 35 -5.7993291745893361;
	setAttr -s 5 ".kit[1:4]"  9 3 9 3;
	setAttr -s 5 ".kot[1:4]"  1 3 9 3;
	setAttr -s 5 ".kox[1:4]"  1 1 0.98756802082061768 1;
	setAttr -s 5 ".koy[1:4]"  0 0 -0.15719223022460938 0;
createNode animCurveTA -n "animCurveTA2685";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 -29.430271342549375 23 -29.430271342549375 
		29 -29.430271342549375 35 -1.2282640104712745;
	setAttr -s 5 ".kit[1:4]"  9 3 9 3;
	setAttr -s 5 ".kot[1:4]"  1 3 9 3;
	setAttr -s 5 ".kox[1:4]"  1 1 0.63066190481185913 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0.7760576605796814 0;
createNode animCurveTA -n "animCurveTA2686";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 -43.400827249869813 23 -43.400827249869813 
		29 -43.40082724986982 35 -60.456694896838378;
	setAttr -s 5 ".kit[1:4]"  9 3 9 3;
	setAttr -s 5 ".kot[1:4]"  1 3 9 3;
	setAttr -s 5 ".kox[1:4]"  1 1 0.80222684144973755 1;
	setAttr -s 5 ".koy[1:4]"  0 0 -0.59701931476593018 0;
createNode animCurveTL -n "animCurveTL949";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 7 0 13 0 18 0 21 0.44879925919486569 
		23 0.44879925919486569 29 0.44879925919486569 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL950";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 7 0 13 0 18 0 21 -2.1086769476633807 
		23 -2.1086769476633807 29 -2.1086769476633807 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL951";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1 2 -1 7 -1 13 -1 18 -1 21 -0.18536689079245133 
		23 -0.18536689079245133 29 -0.18536689079245133 35 -1;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL952";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 7 0 13 0 18 0 21 -0.5126104209518183 
		23 -0.5126104209518183 29 -0.5126104209518183 35 -0.10167917362943303;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL953";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 7 0 13 0 18 0 21 -1.3386630780291868 
		23 -1.3386630780291868 29 -1.3386630780291868 35 -0.40762644910266188;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTL -n "animCurveTL954";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1 2 -1 7 -1 13 -1 18 -1 21 -0.049199106950677696 
		23 -0.049199106950677696 29 -0.049199106950677696 35 -0.93129112588482243;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2687";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -10.587124207154311 2 38.288355439467409 
		6 -9.7806751951410718 14 -58.519680197032365 18 -31.571577954490724 21 -42.771826393301765 
		23 -22.78039507191296 29 -22.78039507191296 35 12.253734489678925;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2688";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -60.592711499848903 2 -34.477986237269441 
		6 -8.4296852078207465 14 33.527431276659861 18 7.3574512395266103 21 -50.50902704873203 
		23 -59.78589307060367 29 -59.78589307060367 35 -65.746751280844975;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 1 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kix[6:8]"  1 0.96780091524124146 1;
	setAttr -s 9 ".kiy[6:8]"  0 -0.25171682238578796 0;
createNode animCurveTA -n "animCurveTA2689";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.15003680417244974 2 -58.841273892169454 
		6 13.309227169289349 14 48.24819198542562 18 35.617654615044998 21 34.78650961055213 
		23 34.574435665981952 29 34.574435665981952 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2690";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 15.193242356562445 2 55.55104118666123 
		6 -39.047870538844734 14 -78.55054160946581 18 -34.843094200493795 21 -18.096320074856848 
		23 -4.3077020824181265 29 -4.3077020824181256 35 -0.061808866237340665;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2691";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -57.561344427126031 2 -22.864898916390906 
		6 34.228246858113778 14 47.006849538266806 18 2.1260275889345177 21 -49.220253033269849 
		23 -49.658336589859132 29 -49.658336589859147 35 -59.058178941076754;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 1 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kix[6:8]"  1 0.92520463466644287 1;
	setAttr -s 9 ".kiy[6:8]"  0 -0.37946853041648865 0;
createNode animCurveTA -n "animCurveTA2692";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -21.451005533521723 2 -66.560432261884458 
		6 31.092418731050284 14 5.0067341800000937 18 -4.0384343808384129 21 22.481085713744079 
		23 45.957278122761899 29 45.957278122761899 35 16.57914742975785;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2693";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 72.938873120018542 2 42.061717197589253 
		6 63.595530963034982 14 18.413186094630159 18 50.602895361976628 21 44.432703580981681 
		23 64.255341242982553 29 64.255341242982553 35 8.5572674112203639;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2694";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 59.305463658789549 2 39.540454462093251 
		6 15.683132976672461 14 29.822033701000105 18 76.952784880962497 21 50.842923737118142 
		23 72.208811687058059 29 72.208811687058059 35 15.711328223519061;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2695";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -17.955810303398231 2 -20.023139945693767 
		6 -20.023139945693767 14 45.026792796940271 18 -20.023139945693767 21 60.563198486797667 
		23 72.79493678537078 29 72.794936785370766 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2696";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 10.082003051124259 2 26.671328910479655 
		6 26.671328910479655 14 26.671328910479694 18 26.671328910479655 21 26.360430176523643 
		23 35.224795679311441 29 35.224795679311441 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2697";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -4.7201893288928645 2 5.3717556430426301 
		6 5.3717556430426301 14 5.3717556430426114 18 5.3717556430426301 21 33.197555990358396 
		23 56.771965155298119 29 56.771965155298119 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2698";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 20.127263792592359 2 -50.380399976743753 
		6 5.5563002740969507 14 -14.855460620052202 18 5.5563002740969507 21 59.556508727470074 
		23 59.556508727470074 29 59.556508727470074 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2699";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 11.615881410206432 2 17.011015481116551 
		6 17.01101548111658 14 3.4359667312808053 18 17.01101548111658 21 36.028288837490415 
		23 36.028288837490415 29 36.028288837490415 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2700";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.3215928107553504 2 -5.3376311675567187 
		6 -5.3376311675567338 14 -8.2007816812803718 18 -5.3376311675567338 21 13.094680882304901 
		23 13.094680882304901 29 13.094680882304898 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2701";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 11.09331921989552 19 -135.99575007373303 
		35 10.42375496696849;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA2702";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 59.959644693642325 35 27.722848255843896;
createNode animCurveTA -n "animCurveTA2703";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 48.10646961869692 35 21.576484776388224;
createNode animCurveTA -n "animCurveTA2704";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 6 0 14 0 18 0 21 0 23 0 
		29 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2705";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 6 0 14 0 18 0 21 0 23 0 
		29 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2706";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 86.382238158606057 2 67.810939637714412 
		6 67.810939637714412 14 67.810939637714412 18 67.810939637714412 21 59.219502482153104 
		23 59.219502482153104 29 59.219502482153118 35 27.080064458283051;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2707";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2708";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2709";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA2710";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 27.70521891534332 35 0;
createNode animCurveTA -n "animCurveTA2711";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 43.35103828268312 35 0;
createNode animCurveTA -n "animCurveTA2712";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 54.235722998003197 35 13.994403295754109;
createNode animCurveTA -n "animCurveTA2713";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 39.038703285259977 35 0;
createNode animCurveTA -n "animCurveTA2714";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 72.755037061650995 35 0;
createNode animCurveTA -n "animCurveTA2715";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 38.926480273156798 35 13.994403295754109;
createNode animCurveTA -n "animCurveTA2716";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 6 0 14 0 18 0 21 0 23 0 
		29 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2717";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 6 0 14 0 18 0 21 0 23 0 
		29 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2718";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 95.284705327631698 2 40.637834425062678 
		6 40.637834425062678 14 40.637834425062678 18 40.637834425062678 21 66.672206829852314 
		23 66.672206829852314 29 66.672206829852328 35 27.911632519594587;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2719";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.2945941069882385 2 0 6 0 14 
		0 18 0 21 0 23 0 29 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 1 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2720";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 3.3208811165553156 2 0 6 0 14 
		0 18 0 21 0 23 0 29 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 1 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2721";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -27.52582447785997 2 0 6 0 14 
		0 18 0 21 0 23 0 29 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 1 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2722";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 -7.660020298875442 6 -20.174528203279309 
		14 9.3168978960520814 18 8.4064065218267139 21 -1.5829914574537056 23 -1.7049747317397197 
		29 -1.704974731739719 35 -0.65073001024951671;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2723";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 1.4575024756080202 6 3.5015358300888062 
		14 -2.6412510516012935 18 -3.9144739663283423 21 -1.7175900971389688 23 -1.3972839984681547 
		29 -1.397283998468154 35 -4.2368721935960938;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2724";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.97510462353592187 2 11.303295119228467 
		6 -18.434669853316674 14 -16.499523597698332 18 0.31929352552719664 21 26.300887772213173 
		23 32.754691543705967 29 28.797380284411332 35 2.6995264082587447;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2725";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 6 0 14 0 18 0 21 0 23 0 
		29 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2726";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 6 0 14 0 18 0 21 0 23 0 
		29 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2727";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 6 0 14 0 18 0 21 14.508952910281577 
		23 14.508952910281577 29 14.508952910281574 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2728";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0.88855738406062901 6 0.88855738406062901 
		14 7.4551353158152267 18 6.0738884979870962 21 3.6375267832064915 23 5.3394441416968288 
		29 5.3394441416968288 35 -4.0198472869727979;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2729";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 -8.2331616608723177 6 -8.2331616608723177 
		14 3.2100512689098402 18 5.3890682779967127 21 5.005087459058303 23 3.1252923706827938 
		29 3.1252923706827955 35 -9.1335573833666519;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2730";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -18.616622641828215 2 -7.5844312513428269 
		6 -7.5844312513428269 14 2.0594213626924698 18 0.069580784890004577 21 -2.5006014476938456 
		23 21.163097977813688 29 21.163097977813695 35 -2.2752136084709531;
	setAttr -s 9 ".kit[0:8]"  3 9 9 1 1 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 1 1 9 9 
		9 3;
	setAttr -s 9 ".kix[3:8]"  0.85773366689682007 0.73541063070297241 
		0.41241848468780518 0.5424269437789917 0.69913095235824585 1;
	setAttr -s 9 ".kiy[3:8]"  0.51409429311752319 -0.67762172222137451 
		0.91099452972412109 0.84010297060012817 -0.71499365568161011 0;
	setAttr -s 9 ".kox[3:8]"  0.85773360729217529 0.73541074991226196 
		0.41241848468780518 0.5424269437789917 0.69913095235824585 1;
	setAttr -s 9 ".koy[3:8]"  0.51409435272216797 -0.67762154340744019 
		0.91099452972412109 0.84010297060012817 -0.71499365568161011 0;
createNode animCurveTA -n "animCurveTA2731";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 6 0 14 0 18 0 21 -0.18869730455872094 
		23 -0.013750268718396658 29 -0.013750268718396562 35 -1.8903601258661935;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2732";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 6 0 14 0 18 0 21 1.4407607497566994 
		23 1.452997479744611 29 1.452997479744611 35 2.5597289571479038;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2733";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 5.671986885245901 2 0 6 0 14 
		0 18 0 21 35.157428558935315 23 42.399434798529782 29 39.180803183306388 
		35 2.0168110874036049;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2734";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 6 0 14 0 18 0 21 0 23 0 
		29 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2735";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 6 0 14 0 18 0 21 0 23 0 
		29 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2736";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 85.281921116584812 2 66.910735171519136 
		6 66.910735171519136 14 66.910735171519136 18 66.910735171519136 21 61.824373247854581 
		23 61.824373247854581 29 61.824373247854581 35 33.429092416277157;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2737";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 26.194612819039182 35 8.2533422302317359;
createNode animCurveTA -n "animCurveTA2738";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 42.116293762219598 35 23.263402056531092;
createNode animCurveTA -n "animCurveTA2739";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 51.312599966148298 35 20.166277752815617;
createNode animCurveTA -n "animCurveTA2740";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 6 0 14 0 18 0 21 0 23 0 
		29 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2741";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 2 0 6 0 14 0 18 0 21 0 23 0 
		29 0 35 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA2742";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 77.470348806333035 2 55.749331591600708 
		6 55.749331591600708 14 55.749331591600708 18 55.749331591600708 21 50.17101925731437 
		23 50.17101925731437 29 50.171019257314363 35 17.254116939558369;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
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
connectAttr "lsa_jump_run_allSource.st" "clipLibrary1.st[0]";
connectAttr "lsa_jump_run_allSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL914.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL915.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU185.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU186.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU187.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU188.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU189.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU190.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU191.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU192.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA2625.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA2626.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA2627.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL919.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL920.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL921.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL922.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL923.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL924.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA2628.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA2629.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA2630.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL925.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL926.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL927.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA2631.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA2632.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA2633.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA2634.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA2635.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA2636.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA2637.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA2638.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA2639.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA2640.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA2641.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA2642.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA2643.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA2644.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA2645.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL928.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL929.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL930.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL931.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL932.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL933.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL934.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL935.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL936.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA2646.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA2647.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA2648.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA2649.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA2650.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA2651.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA2652.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA2653.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA2654.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA2655.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA2656.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA2657.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA2658.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA2659.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA2660.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA2661.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA2662.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA2663.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA2664.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA2665.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA2666.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA2667.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA2668.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA2669.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA2670.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA2671.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA2672.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA2673.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA2674.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL937.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL938.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL939.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA2675.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA2676.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA2677.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL940.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL941.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL942.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA2678.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA2679.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA2680.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL943.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL944.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL945.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA2681.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA2682.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA2683.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL946.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL947.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL948.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA2684.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA2685.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA2686.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL949.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL950.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL951.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL952.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL953.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL954.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA2687.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA2688.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA2689.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA2690.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA2691.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA2692.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA2693.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA2694.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA2695.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA2696.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA2697.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA2698.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA2699.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA2700.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA2701.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA2702.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA2703.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA2704.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA2705.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA2706.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA2707.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA2708.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA2709.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA2710.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA2711.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA2712.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA2713.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA2714.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA2715.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA2716.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA2717.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA2718.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA2719.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA2720.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA2721.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA2722.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA2723.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA2724.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA2725.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA2726.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA2727.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA2728.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA2729.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA2730.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA2731.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA2732.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA2733.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA2734.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA2735.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA2736.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA2737.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA2738.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA2739.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA2740.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA2741.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA2742.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of lsa_jump_run_all.ma
