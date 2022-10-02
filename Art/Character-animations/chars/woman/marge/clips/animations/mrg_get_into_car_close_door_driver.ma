//Maya ASCII 4.0 scene
//Name: mrg_get_into_car_close_door_driver.ma
//Last modified: Tue, Oct 01, 2002 05:15:03 PM
requires maya "4.0";
requires "p3dmayaexp" "18.5";
requires "p3dSimpleShader" "18.5";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_get_into_car_close_door_driverSource";
	setAttr ".ihi" 0;
	setAttr ".du" 7;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.98752775572053031 1 -0.88946691708917069 
		2 -0.79140607762969928 3 -0.74683296863391924 4 -0.77315896073833201 5 -0.83709351316957137 
		6 -0.91607149010463729 7 -0.98752775572053031;
createNode animCurveTL -n "animCurveTL209";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.7862033266438363 1 0.80638383960005899 
		2 0.82656435321617405 3 0.83573731407075247 4 0.83031953396573499 5 0.81716206817179626 
		6 0.80090872847060657 7 0.7862033266438363;
createNode animCurveTA -n "animCurveTA617";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "animCurveTU41";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTU -n "animCurveTU42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTU -n "animCurveTU43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTU -n "animCurveTU44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTU -n "animCurveTU45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTU -n "animCurveTU46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTU -n "animCurveTU47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 7 1;
createNode animCurveTU -n "animCurveTU48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 7 1;
createNode animCurveTA -n "animCurveTA618";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTL -n "animCurveTL211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTL -n "animCurveTL212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTL -n "animCurveTL213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTL -n "animCurveTL214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.3209532433521722 3 -1.2549807197808469 
		7 -1.3209532433521722;
createNode animCurveTL -n "animCurveTL215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.49929236591446868 3 0.49929236591446868 
		7 0.49929236591446868;
createNode animCurveTL -n "animCurveTL216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.7640779368499853 3 1.7640779368499853 
		7 1.7640779368499853;
createNode animCurveTA -n "animCurveTA621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -24.2048482305423 3 -23.806588583135124 
		7 -24.2048482305423;
createNode animCurveTA -n "animCurveTA622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 -1.647110260657298 7 0;
createNode animCurveTA -n "animCurveTA623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 -7.792214191643243 7 0;
createNode animCurveTL -n "animCurveTL217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.0182182727496343 3 -0.92619931052361293 
		7 -1.0182182727496343;
createNode animCurveTL -n "animCurveTL218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.51781298511506035 3 0.51781298511506035 
		7 0.51781298511506035;
createNode animCurveTL -n "animCurveTL219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.725016696635667 3 1.725016696635667 
		7 1.725016696635667;
createNode animCurveTA -n "animCurveTA624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -36.819011955683756 3 -37.968729457000954 
		7 -36.819011955683756;
createNode animCurveTA -n "animCurveTA625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 6.734512670826839 7 0;
createNode animCurveTA -n "animCurveTA626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 -13.85301503894679 7 0;
createNode animCurveTA -n "animCurveTA627";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA628";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA633";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA634";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA635";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA636";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA637";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA638";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 7 0;
createNode animCurveTL -n "animCurveTL221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 7 0;
createNode animCurveTL -n "animCurveTL222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 3 1 7 1;
createNode animCurveTL -n "animCurveTL223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 7 0;
createNode animCurveTL -n "animCurveTL224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 7 0;
createNode animCurveTL -n "animCurveTL225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 3 1 7 1;
createNode animCurveTL -n "animCurveTL226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.2031997596013333 3 -0.90993822008277991 
		7 -1.2031997596013333;
createNode animCurveTL -n "animCurveTL227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.74320840376740638 3 0.74267409856230726 
		7 0.74320840376740638;
createNode animCurveTL -n "animCurveTL228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.95790690250061006 3 1.0182589092355252 
		7 0.95790690250061006;
createNode animCurveTA -n "animCurveTA639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -47.088616656908435 3 -5.4513933106138657 
		7 -47.088616656908435;
createNode animCurveTA -n "animCurveTA640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.0975263990809503 3 -0.71074198285418522 
		7 2.0975263990809503;
createNode animCurveTA -n "animCurveTA641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.53932213336905643 3 -22.697660472141617 
		7 -0.53932213336905643;
createNode animCurveTA -n "animCurveTA642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA643";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA644";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA645";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA646";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA650";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA653";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA657";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA658";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA659";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA660";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA661";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA662";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA663";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA664";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA665";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA666";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA667";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTL -n "animCurveTL229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.5198069948790518 7 -0.5198069948790518;
createNode animCurveTL -n "animCurveTL230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 7 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 7 0.36439499068905612;
createNode animCurveTA -n "animCurveTA668";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965299 7 7.7976222737965299;
createNode animCurveTA -n "animCurveTA669";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 30.409274105849079 7 30.409274105849079;
createNode animCurveTA -n "animCurveTA670";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.859940280210878 7 64.859940280210878;
createNode animCurveTL -n "animCurveTL232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.43524234076486068 7 0.43524234076486068;
createNode animCurveTL -n "animCurveTL233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 7 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 7 0.27773886459742925;
createNode animCurveTA -n "animCurveTA671";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA672";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -28.652637602052774 7 -28.652637602052774;
createNode animCurveTA -n "animCurveTA673";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.676908227303443 7 -64.676908227303443;
createNode animCurveTL -n "animCurveTL235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.1112480635238988 3 -2.5110052138231755 
		7 -3.1112480635238988;
createNode animCurveTL -n "animCurveTL236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.7424766145627919 3 2.2439371616167576 
		7 1.7424766145627919;
createNode animCurveTL -n "animCurveTL237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.8531126401564211 3 1.8477632277561455 
		7 1.8531126401564211;
createNode animCurveTA -n "animCurveTA674";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 26.27937306915484 3 26.719919114785494 
		7 26.27937306915484;
createNode animCurveTA -n "animCurveTA675";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 55.316964386970021 3 27.3481632338883 
		7 55.316964386970021;
createNode animCurveTA -n "animCurveTA676";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 77.201572122121519 3 45.372205371553832 
		7 77.201572122121519;
createNode animCurveTL -n "animCurveTL238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.0647721020251719 3 -0.33301913643447956 
		7 -2.0647721020251719;
createNode animCurveTL -n "animCurveTL239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.7590071920447805 3 2.211366408225683 
		7 1.7590071920447805;
createNode animCurveTL -n "animCurveTL240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.9261547314579206 3 2.5619048374060109 
		7 1.9261547314579206;
createNode animCurveTA -n "animCurveTA677";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 59.00791013189712 3 -19.345874397196617 
		7 59.00791013189712;
createNode animCurveTA -n "animCurveTA678";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -71.601588453715053 3 -47.068687946319812 
		7 -71.601588453715053;
createNode animCurveTA -n "animCurveTA679";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -90.779043014820644 3 7.3649226411748101 
		7 -90.779043014820644;
createNode animCurveTL -n "animCurveTL241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.017571725225418906 3 0.012113033259649377 
		7 0.017571725225418906;
createNode animCurveTL -n "animCurveTL242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.54560785950824164 3 -0.64348980055978888 
		7 -0.54560785950824164;
createNode animCurveTL -n "animCurveTL243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.64724218630287966 3 -0.69482215054722585 
		7 -0.64724218630287966;
createNode animCurveTL -n "animCurveTL244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.22996541113775407 3 0.11190813190038036 
		7 -0.22996541113775407;
createNode animCurveTL -n "animCurveTL245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.71572892866406468 3 -0.69888369986281507 
		7 -0.71572892866406468;
createNode animCurveTL -n "animCurveTL246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.86045149817799893 3 -0.8656116369436555 
		7 -0.86045149817799893;
createNode animCurveTA -n "animCurveTA680";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.061808866237337522 3 -0.061808866237337522 
		7 -0.061808866237337522;
createNode animCurveTA -n "animCurveTA681";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -59.058178941076754 3 -59.058178941076754 
		7 -59.058178941076754;
createNode animCurveTA -n "animCurveTA682";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.579147429757843 3 16.579147429757843 
		7 16.579147429757843;
createNode animCurveTA -n "animCurveTA683";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 12.253734489678925 3 12.253734489678925 
		7 12.253734489678925;
createNode animCurveTA -n "animCurveTA684";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -65.746751280844961 3 -65.746751280844961 
		7 -65.746751280844961;
createNode animCurveTA -n "animCurveTA685";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 7 0;
createNode animCurveTA -n "animCurveTA686";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 15.711328223519057 3 15.711328223519057 
		7 15.711328223519057;
createNode animCurveTA -n "animCurveTA687";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.5572674112203622 3 8.5572674112203622 
		7 8.5572674112203622;
createNode animCurveTA -n "animCurveTA688";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 7 0;
createNode animCurveTA -n "animCurveTA689";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 7 0;
createNode animCurveTA -n "animCurveTA690";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 7 0;
createNode animCurveTA -n "animCurveTA691";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 7 0;
createNode animCurveTA -n "animCurveTA692";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 7 0;
createNode animCurveTA -n "animCurveTA693";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 7 0;
createNode animCurveTA -n "animCurveTA694";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.2533422302317216 3 8.2533422302317216 
		7 8.2533422302317216;
createNode animCurveTA -n "animCurveTA695";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 23.263402056531085 3 23.263402056531085 
		7 23.263402056531085;
createNode animCurveTA -n "animCurveTA696";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 20.166277752815617 3 20.166277752815617 
		7 20.166277752815617;
createNode animCurveTA -n "animCurveTA697";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 7 0;
createNode animCurveTA -n "animCurveTA698";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 7 0;
createNode animCurveTA -n "animCurveTA699";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 33.429092416277157 3 33.429092416277157 
		7 33.429092416277157;
createNode animCurveTA -n "animCurveTA700";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA701";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA702";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA703";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA704";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA705";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 7 13.994403295754109;
createNode animCurveTA -n "animCurveTA706";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA707";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 7 0;
createNode animCurveTA -n "animCurveTA708";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 7 13.994403295754109;
createNode animCurveTA -n "animCurveTA709";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 7 0;
createNode animCurveTA -n "animCurveTA710";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 7 0;
createNode animCurveTA -n "animCurveTA711";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 17.254116939558369 3 17.254116939558369 
		7 17.254116939558369;
createNode animCurveTA -n "animCurveTA712";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 7 0;
createNode animCurveTA -n "animCurveTA713";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 7 0;
createNode animCurveTA -n "animCurveTA714";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 7 0;
createNode animCurveTA -n "animCurveTA715";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.3937906322123035 3 5.9660149388432382 
		7 -2.3937906322123035;
createNode animCurveTA -n "animCurveTA716";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.7843868968348546 3 4.5116636179203082 
		7 1.7843868968348546;
createNode animCurveTA -n "animCurveTA717";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.23227595374661 3 3.100515661214426 
		7 13.23227595374661;
createNode animCurveTA -n "animCurveTA718";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 -7.1097278539792699 7 0;
createNode animCurveTA -n "animCurveTA719";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 7 0;
createNode animCurveTA -n "animCurveTA720";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 7 0;
createNode animCurveTA -n "animCurveTA721";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.71032600031388216 3 -10.343335099734212 
		7 -0.71032600031388216;
createNode animCurveTA -n "animCurveTA722";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.6938159239902011 3 -39.607073910831495 
		7 -3.6938159239902011;
createNode animCurveTA -n "animCurveTA723";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 14.57223198295749 3 16.345936932681713 
		7 14.57223198295749;
createNode animCurveTA -n "animCurveTA724";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.2796212519697265 3 3.7501548384564991 
		7 2.2796212519697265;
createNode animCurveTA -n "animCurveTA725";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.2209313171847893 3 -11.127067305137468 
		7 -2.2209313171847893;
createNode animCurveTA -n "animCurveTA726";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.0401232256568225 3 -11.452816059011486 
		7 8.0401232256568225;
createNode animCurveTA -n "animCurveTA727";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 7 0;
createNode animCurveTA -n "animCurveTA728";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 7 0;
createNode animCurveTA -n "animCurveTA729";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.080064458283051 3 27.080064458283051 
		7 27.080064458283051;
createNode animCurveTA -n "animCurveTA730";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 10.423754966968488 3 10.423754966968488 
		7 10.423754966968488;
createNode animCurveTA -n "animCurveTA731";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.722848255843903 3 27.722848255843903 
		7 27.722848255843903;
createNode animCurveTA -n "animCurveTA732";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 21.576484776388227 3 21.576484776388227 
		7 21.576484776388227;
createNode animCurveTA -n "animCurveTA733";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 7 0;
createNode animCurveTA -n "animCurveTA734";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 3 0 7 0;
createNode animCurveTA -n "animCurveTA735";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.911632519594587 3 27.911632519594587 
		7 27.911632519594587;
createNode animCurveTA -n "animCurveTA736";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.213 3 -2.295 5 -2.427 7 -2.162;
createNode animCurveTA -n "animCurveTA737";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -12.377000000000001 3 19.662 
		5 25.629000000000001 7 -0.79000000000000004;
createNode animCurveTA -n "animCurveTA738";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.5523595055826966 3 7.3050468936634978 
		5 7.0218037952395305 7 8.1075942281935571;
createNode animCurveTA -n "animCurveTA739";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.162 3 -2.295 5 -2.427 7 -2.162;
createNode animCurveTA -n "animCurveTA740";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -12.377000000000001 3 19.662 
		5 25.629000000000001 7 -0.79000000000000004;
createNode animCurveTA -n "animCurveTA741";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.5523595055826966 3 7.3050468936634978 
		5 7.0218037952395305 7 8.1075942281935571;
createNode animCurveTA -n "animCurveTA742";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.213 3 -2.295 5 -2.427 7 -2.162;
createNode animCurveTA -n "animCurveTA743";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -12.377000000000001 3 19.662 
		5 25.629000000000001 7 -0.79000000000000004;
createNode animCurveTA -n "animCurveTA744";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.5523595055826966 3 7.3050468936634978 
		5 7.0218037952395305 7 8.1075942281935571;
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
select -ne :characterPartition;
select -ne :hyperGraphLayout;
	setAttr ".cch" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".img" -type "string" "";
	setAttr ".ims" 1;
select -ne :ikSystem;
connectAttr "mrg_get_into_car_close_door_driverSource.st" "clipLibrary1.st[0]"
		;
connectAttr "mrg_get_into_car_close_door_driverSource.du" "clipLibrary1.du[0]"
		;
connectAttr "animCurveTL206.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL207.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL208.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL209.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL210.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA617.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU41.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU42.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU43.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU44.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU45.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU46.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU47.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU48.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA618.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA619.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA620.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL211.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL212.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL213.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL214.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL215.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL216.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA621.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA622.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA623.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL217.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL218.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL219.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA624.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA625.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA626.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA627.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA628.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA629.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA630.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA631.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA632.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA633.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA634.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA635.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA636.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA637.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA638.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL220.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL221.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL222.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL223.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL224.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL225.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL226.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL227.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL228.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA639.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA640.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA641.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA642.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA643.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA644.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA645.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA646.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA647.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA648.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA649.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA650.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA651.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA652.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA653.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA654.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA655.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA656.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA657.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA658.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA659.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA660.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA661.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA662.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA663.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA664.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA665.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA666.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA667.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL229.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL230.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL231.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA668.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA669.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA670.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL232.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL233.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL234.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA671.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA672.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA673.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL235.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL236.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL237.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA674.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA675.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA676.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL238.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL239.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL240.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA677.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA678.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA679.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL241.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL242.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL243.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL244.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL245.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL246.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA680.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA681.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA682.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA683.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA684.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA685.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA686.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA687.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA688.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA689.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA690.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA691.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA692.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA693.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA694.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA695.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA696.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA697.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA698.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA699.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA700.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA701.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA702.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA703.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA704.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA705.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA706.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA707.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA708.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA709.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA710.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA711.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA712.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA713.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA714.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA715.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA716.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA717.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA718.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA719.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA720.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA721.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA722.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA723.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA724.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA725.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA726.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA727.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA728.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA729.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA730.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA731.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA732.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA733.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA734.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA735.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr "animCurveTA736.a" "clipLibrary1.cel[0].cev[168].cevr";
connectAttr "animCurveTA737.a" "clipLibrary1.cel[0].cev[169].cevr";
connectAttr "animCurveTA738.a" "clipLibrary1.cel[0].cev[170].cevr";
connectAttr "animCurveTA739.a" "clipLibrary1.cel[0].cev[171].cevr";
connectAttr "animCurveTA740.a" "clipLibrary1.cel[0].cev[172].cevr";
connectAttr "animCurveTA741.a" "clipLibrary1.cel[0].cev[173].cevr";
connectAttr "animCurveTA742.a" "clipLibrary1.cel[0].cev[174].cevr";
connectAttr "animCurveTA743.a" "clipLibrary1.cel[0].cev[175].cevr";
connectAttr "animCurveTA744.a" "clipLibrary1.cel[0].cev[176].cevr";
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
// End of mrg_get_into_car_close_door_driver.ma
