//Maya ASCII 4.0 scene
//Name: apu_dialogue_yes.ma
//Last modified: Fri, Feb 21, 2003 12:49:46 PM
requires maya "4.0";
requires "p3dSimpleShader" "18.8";
requires "p3dmayaexp" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "apu_dialogue_yesSource";
	setAttr ".ihi" 0;
	setAttr ".st" 1;
	setAttr ".du" 39;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 0.005 1 14 1 20 1 39 1 40 1;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.060083816922849878 0.005 -0.060083816922849878 
		14 -0.060083816922849878 20 -0.060083816922849878 39 -0.060083816922849878 
		40 -0.060083816922849878;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA340";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "animCurveTU33";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.005 0 40 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  1 0 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  0 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU34";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.005 0 40 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  1 0 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  0 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU35";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.005 0 40 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  1 0 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  0 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU36";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.005 0 40 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  1 0 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  0 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU37";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.005 0 40 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  1 0 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  0 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "animCurveTU38";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 0.005 0 40 0;
	setAttr -s 3 ".kot[0:2]"  9 1 5;
	setAttr -s 3 ".kix[0:2]"  1 0 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  0 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  29 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  29 0;
createNode animCurveTA -n "animCurveTA341";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA342";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.22948570846143723 0.005 -0.22948570846143723 
		14 -0.22948570846143723 20 -0.22948570846143723 39 -0.22948570846143723 40 
		-0.22948570846143723;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  0.49555754661560059 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0.86857509613037109 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.13964711708164665 0.005 0.13964711708164665 
		14 0.13964711708164665 20 0.13964711708164665 39 0.13964711708164665 40 0.13964711708164665;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  0.99687367677688599 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0.079012051224708557 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.064904406754016042 0.005 -0.064904406754016042 
		14 -0.064904406754016042 20 -0.064904406754016042 39 -0.064904406754016042 
		40 -0.064904406754016042;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -12.031576538165265 0.005 -12.031576538165265 
		14 -12.031576538165265 20 -12.031576538165265 39 -12.031576538165265 40 -12.031576538165265;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  0.99270534515380859 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0.12056563049554825 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.10825868069997467 0.005 0.10825868069997467 
		14 0.10825868069997467 20 0.10825868069997467 39 0.10825868069997467 40 0.10825868069997467;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  0.18260058760643005 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  -0.98318719863891602 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.13791212285411131 0.005 0.13791212285411131 
		14 0.13791212285411131 20 0.13791212285411131 39 0.13791212285411131 40 0.13791212285411131;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  0.99997210502624512 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  -0.0074717286042869091 0 0 0 0 
		0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.10454507572235824 0.005 -0.10454507572235824 
		14 -0.10454507572235824 20 -0.10454507572235824 39 -0.10454507572235824 40 
		-0.10454507572235824;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  0.18654736876487732 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  -0.98244595527648926 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 18.635117457566011 0.005 18.635117457566011 
		14 18.635117457566011 20 18.635117457566011 39 18.635117457566011 40 18.635117457566011;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  0.9870336651802063 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0.16051346063613892 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 0.005 1 14 1 20 1 39 1 40 1;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 0.005 1 14 1 20 1 39 1 40 1;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.0052529700667724097 0.005 
		-0.0052529700667724097 14 -0.0052529700667724097 20 -0.0052529700667724097 
		39 -0.0052529700667724097 40 -0.0052529700667724097;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  0.27036222815513611 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0.96275866031646729 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.9912550528809112 0.005 0.9912550528809112 
		14 0.9912550528809112 20 0.9912550528809112 39 0.9912550528809112 40 0.9912550528809112;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  0.9963797926902771 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  -0.085013292729854584 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  0.9999849796295166 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0.0054840589873492718 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  0.99870902299880981 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0.050797071307897568 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  0.99993610382080078 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0.011305834166705608 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.22164053326398034 0.005 -0.22164053326398034 
		14 -0.22164053326398034 20 -0.22164053326398034 39 -0.22164053326398034 40 
		-0.22164053326398034;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  0.093224413692951202 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0.99564510583877563 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.9417076481617882 0.005 -0.9417076481617882 
		7 -0.92489475030368129 14 -0.9367163190659461 20 -0.93128689887096916 39 
		-0.9417076481617882 40 -0.9417076481617882;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 1 1;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 5;
	setAttr -s 7 ".kix[0:6]"  0.17126850783824921 0.13746483623981476 
		0.68282079696655273 0.56112933158874512 0.85788649320602417 0.51936447620391846 
		1;
	setAttr -s 7 ".kiy[0:6]"  -0.98522436618804932 0.99050664901733398 
		0.73058587312698364 -0.82772815227508545 -0.5138392448425293 -0.85455280542373657 
		0;
	setAttr -s 7 ".kox[1:6]"  0.13746483623981476 0.68282079696655273 
		0.56112933158874512 0.85788649320602417 0.53890383243560791 1;
	setAttr -s 7 ".koy[1:6]"  0.99050664901733398 0.73058587312698364 
		-0.82772815227508545 -0.5138392448425293 -0.84236729145050049 0;
createNode animCurveTL -n "animCurveTL149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.038362195289875119 0.005 0.038362195289875119 
		7 0.037983043802464332 14 0.038249634687041179 20 0.038127194596247908 39 
		0.038362195289875119 40 0.038362195289875119;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 1 1;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 5;
	setAttr -s 7 ".kix[0:6]"  0.083260230720043182 0.98705375194549561 
		0.99970901012420654 0.99944716691970825 0.99990880489349365 0.99931228160858154 
		1;
	setAttr -s 7 ".kiy[0:6]"  -0.99652785062789917 -0.16038981080055237 
		-0.024121725931763649 0.033247176557779312 0.013506039977073669 0.037079859524965286 
		0;
	setAttr -s 7 ".kox[1:6]"  0.98705375194549561 0.99970901012420654 
		0.99944716691970825 0.99990880489349365 0.99937927722930908 1;
	setAttr -s 7 ".koy[1:6]"  -0.16038981080055237 -0.024121725931763649 
		0.033247176557779312 0.013506039977073669 0.035228226333856583 0;
createNode animCurveTA -n "animCurveTA385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 6.7230119492284173 0.005 6.7230119492284173 
		14 6.7230119492284173 20 6.7230119492284173 39 6.7230119492284173 40 6.7230119492284173;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  0.99828338623046875 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0.05856863409280777 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 19.839511008631867 0.005 19.839511008631867 
		14 19.839511008631867 20 19.839511008631867 39 19.839511008631867 40 19.839511008631867;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  0.9970555305480957 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  -0.076682582497596741 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 76.90743997913691 0.005 76.90743997913691 
		14 76.90743997913691 20 76.90743997913691 39 76.90743997913691 40 76.90743997913691;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  0.99435240030288696 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0.1061287522315979 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.20623790699604494 0.005 0.20623790699604494 
		14 0.20623790699604494 20 0.20623790699604494 39 0.20623790699604494 40 0.20623790699604494;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  0.063652455806732178 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  -0.99797213077545166 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.94615818397708606 0.005 -0.94615818397708606 
		7 -0.92934528611897915 14 -0.94116685488124407 20 -0.93573743468626702 39 
		-0.94615818397708606 40 -0.94615818397708606;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 1 1;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 5;
	setAttr -s 7 ".kix[0:6]"  0.089640133082866669 0.13746483623981476 
		0.68282079696655273 0.56112933158874512 0.85788649320602417 0.51936447620391846 
		1;
	setAttr -s 7 ".kiy[0:6]"  -0.99597424268722534 0.99050664901733398 
		0.73058587312698364 -0.82772815227508545 -0.5138392448425293 -0.85455280542373657 
		0;
	setAttr -s 7 ".kox[1:6]"  0.13746483623981476 0.68282079696655273 
		0.56112933158874512 0.85788649320602417 0.53890383243560791 1;
	setAttr -s 7 ".koy[1:6]"  0.99050664901733398 0.73058587312698364 
		-0.82772815227508545 -0.5138392448425293 -0.84236729145050049 0;
createNode animCurveTL -n "animCurveTL152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.023808763748733922 0.005 0.023808763748733922 
		7 0.023429612261323132 14 0.023696203145899979 20 0.023573763055106715 39 
		0.023808763748733922 40 0.023808763748733922;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 1 1;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 5;
	setAttr -s 7 ".kix[0:6]"  0.058621291071176529 0.98705375194549561 
		0.99970901012420654 0.99944716691970825 0.99990880489349365 0.99931228160858154 
		1;
	setAttr -s 7 ".kiy[0:6]"  -0.99828028678894043 -0.16038981080055237 
		-0.024121725931763649 0.033247176557779312 0.013506039977073669 0.037079859524965286 
		0;
	setAttr -s 7 ".kox[1:6]"  0.98705375194549561 0.99970901012420654 
		0.99944716691970825 0.99990880489349365 0.99937927722930908 1;
	setAttr -s 7 ".koy[1:6]"  -0.16038981080055237 -0.024121725931763649 
		0.033247176557779312 0.013506039977073669 0.035228226333856583 0;
createNode animCurveTA -n "animCurveTA388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.1910546202722809 0.005 8.1910546202722809 
		14 8.1910546202722809 20 8.1910546202722809 39 8.1910546202722809 40 8.1910546202722809;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  0.99999409914016724 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0.0034333246294409037 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -16.680769289981995 0.005 -16.680769289981995 
		14 -16.680769289981995 20 -16.680769289981995 39 -16.680769289981995 40 -16.680769289981995;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  0.99289983510971069 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0.11895318329334259 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -64.609749241846473 0.005 -64.609749241846473 
		14 -64.609749241846473 20 -64.609749241846473 39 -64.609749241846473 40 -64.609749241846473;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  0.99999761581420898 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0.0021833234932273626 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.8448236677023373 0.005 -0.8448236677023373 
		14 -0.8448236677023373 20 -0.8448236677023373 39 -0.8448236677023373 40 -0.8448236677023373;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.5117481219250299 0.005 1.5117481219250299 
		14 1.5117481219250299 20 1.5117481219250299 39 1.5117481219250299 40 1.5117481219250299;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.097994651149805143 0.005 -0.097994651149805143 
		14 -0.097994651149805143 20 -0.097994651149805143 39 -0.097994651149805143 
		40 -0.097994651149805143;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 5.4739599453216474 0.005 5.4739599453216474 
		14 5.4739599453216474 20 5.4739599453216474 39 5.4739599453216474 40 5.4739599453216474;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.5874521608419823 0.005 8.5874521608419823 
		14 8.5874521608419823 20 8.5874521608419823 39 8.5874521608419823 40 8.5874521608419823;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 74.754744621954103 0.005 74.754744621954103 
		14 74.754744621954103 20 74.754744621954103 39 74.754744621954103 40 74.754744621954103;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.61083301393139333 0.005 0.61083301393139333 
		14 0.61083301393139333 20 0.61083301393139333 39 0.61083301393139333 40 0.61083301393139333;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.4644416293758407 0.005 1.4644416293758407 
		14 1.4644416293758407 20 1.4644416293758407 39 1.4644416293758407 40 1.4644416293758407;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.14314299916678522 0.005 0.14314299916678522 
		14 0.14314299916678522 20 0.14314299916678522 39 0.14314299916678522 40 0.14314299916678522;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 16.226511010665405 0.005 16.226511010665405 
		14 16.226511010665405 20 16.226511010665405 39 16.226511010665405 40 16.226511010665405;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -8.513966085499284 0.005 -8.513966085499284 
		14 -8.513966085499284 20 -8.513966085499284 39 -8.513966085499284 40 -8.513966085499284;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -68.213989601412422 0.005 -68.213989601412422 
		14 -68.213989601412422 20 -68.213989601412422 39 -68.213989601412422 40 -68.213989601412422;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1 0.005 -1 14 -1 20 -1 39 -1 
		40 -1;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.10167917362943303 0.005 -0.10167917362943303 
		14 -0.10167917362943303 20 -0.10167917362943303 39 -0.10167917362943303 40 
		-0.10167917362943303;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.40762644910266188 0.005 -0.40762644910266188 
		14 -0.40762644910266188 20 -0.40762644910266188 39 -0.40762644910266188 40 
		-0.40762644910266188;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.93129112588482243 0.005 -0.93129112588482243 
		14 -0.93129112588482243 20 -0.93129112588482243 39 -0.93129112588482243 40 
		-0.93129112588482243;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 12.253734489678925 0.005 12.253734489678925 
		14 12.253734489678925 20 12.253734489678925 39 12.253734489678925 40 12.253734489678925;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -65.746751280844961 0.005 -65.746751280844961 
		14 -65.746751280844961 20 -65.746751280844961 39 -65.746751280844961 40 -65.746751280844961;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 3.871449260799477e-015 0.005 
		0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.061808866237337522 0.005 -0.061808866237337522 
		14 -0.061808866237337522 20 -0.061808866237337522 39 -0.061808866237337522 
		40 -0.061808866237337522;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -59.058178941076754 0.005 -59.058178941076754 
		14 -59.058178941076754 20 -59.058178941076754 39 -59.058178941076754 40 -59.058178941076754;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 16.579147429757843 0.005 16.579147429757843 
		14 16.579147429757843 20 16.579147429757843 39 16.579147429757843 40 16.579147429757843;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.5572674112203622 0.005 8.5572674112203622 
		14 8.5572674112203622 20 8.5572674112203622 39 8.5572674112203622 40 8.5572674112203622;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 15.711328223519057 0.005 15.711328223519057 
		14 15.711328223519057 20 15.711328223519057 39 15.711328223519057 40 15.711328223519057;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 10.423754966968488 0.005 10.423754966968488 
		14 10.423754966968488 20 10.423754966968488 39 10.423754966968488 40 10.423754966968488;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.722848255843903 0.005 27.722848255843903 
		14 27.722848255843903 20 27.722848255843903 39 27.722848255843903 40 27.722848255843903;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 21.576484776388227 0.005 21.576484776388227 
		14 21.576484776388227 20 21.576484776388227 39 21.576484776388227 40 21.576484776388227;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.080064458283051 0.005 27.080064458283051 
		14 27.080064458283051 20 27.080064458283051 39 27.080064458283051 40 27.080064458283051;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 13.994403295754109 0.005 13.994403295754109 
		14 13.994403295754109 20 13.994403295754109 39 13.994403295754109 40 13.994403295754109;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 13.994403295754109 0.005 13.994403295754109 
		14 13.994403295754109 20 13.994403295754109 39 13.994403295754109 40 13.994403295754109;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.911632519594587 0.005 27.911632519594587 
		14 27.911632519594587 20 27.911632519594587 39 27.911632519594587 40 27.911632519594587;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  0.99998384714126587 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0.0056785987690091133 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  0.99931716918945313 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0.036948438733816147 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA434";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 0.005 0 7 1.2918712010013078 
		14 0.38352425973169957 20 0.80071061801954979 39 0 40 0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 1 1;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 5;
	setAttr -s 7 ".kix[0:6]"  0.99710410833358765 0.99536359310150146 
		0.9998970627784729 0.99980437755584717 0.99996775388717651 0.99975663423538208 
		1;
	setAttr -s 7 ".kiy[0:6]"  -0.07604902982711792 0.096183717250823975 
		0.014347421005368233 -0.019778519868850708 -0.0080322548747062683 -0.02206047996878624 
		0;
	setAttr -s 7 ".kox[1:6]"  0.99536359310150146 0.9998970627784729 
		0.99980437755584717 0.99996775388717651 0.99978035688400269 1;
	setAttr -s 7 ".koy[1:6]"  0.096183709800243378 0.014347421005368233 
		-0.019778519868850708 -0.0080322548747062683 -0.020957950502634048 0;
createNode animCurveTA -n "animCurveTA435";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA436";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA437";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 0.005 0 7 7.9308011105049889 
		14 2.7633526172010727 20 5.9670144834762038 39 0 40 0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 1 1 1;
	setAttr -s 7 ".kot[1:6]"  1 9 9 1 9 5;
	setAttr -s 7 ".kix[0:6]"  0.99102956056594849 0.86005383729934692 
		0.99469810724258423 0.99688661098480225 0.9817434549331665 0.98674821853637695 
		1;
	setAttr -s 7 ".kiy[0:6]"  0.13364286720752716 0.51020330190658569 
		0.102837935090065 -0.078848838806152344 0.19020979106426239 -0.16225889325141907 
		0;
	setAttr -s 7 ".kox[1:6]"  0.86005383729934692 0.99469810724258423 
		0.99688661098480225 0.9817434549331665 0.98801714181900024 1;
	setAttr -s 7 ".koy[1:6]"  0.51020330190658569 0.102837935090065 
		-0.078848838806152344 0.19020974636077881 -0.15434415638446808 0;
createNode animCurveTA -n "animCurveTA438";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -4.9367554394300077 0.005 -4.9367554394300077 
		7 -7.5635700811419921 14 -5.7165910429079396 20 -6.5648731616722058 39 -4.9367554394300077 
		40 -4.9367554394300077;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 1 1;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 5;
	setAttr -s 7 ".kix[0:6]"  0.99635690450668335 0.98123830556869507 
		0.99957466125488281 0.9991919994354248 0.99986666440963745 0.99899494647979736 
		1;
	setAttr -s 7 ".kiy[0:6]"  -0.085281088948249817 -0.19279888272285461 
		-0.029163792729377747 0.040191840380430222 0.016330661252140999 0.04482230544090271 
		0;
	setAttr -s 7 ".kox[1:6]"  0.98123830556869507 0.99957466125488281 
		0.9991919994354248 0.99986666440963745 0.99909281730651855 1;
	setAttr -s 7 ".koy[1:6]"  -0.19279886782169342 -0.029163792729377747 
		0.040191840380430222 0.016330661252140999 0.042585354298353195 0;
createNode animCurveTA -n "animCurveTA439";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -8.6986303327609935 0.005 -8.6986303327609935 
		7 -6.5492107333627931 14 -8.0605213684330064 20 -7.366405326130681 39 -8.6986303327609935 
		40 -8.6986303327609935;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 1 1;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 5;
	setAttr -s 7 ".kix[0:6]"  0.98439866304397583 0.98732078075408936 
		0.99971514940261841 0.99945878982543945 0.99991071224212646 0.99932676553726196 
		1;
	setAttr -s 7 ".kiy[0:6]"  -0.17595262825489044 0.15873770415782928 
		0.023866945877671242 -0.032896194607019424 -0.013363329693675041 -0.036688517779111862 
		0;
	setAttr -s 7 ".kox[1:6]"  0.98732078075408936 0.99971514940261841 
		0.99945878982543945 0.99991071224212646 0.99939233064651489 1;
	setAttr -s 7 ".koy[1:6]"  0.15873768925666809 0.023866945877671242 
		-0.032896194607019424 -0.013363329693675041 -0.034856375306844711 0;
createNode animCurveTA -n "animCurveTA440";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 17.455917002855632 0.005 17.455917002855632 
		7 30.029576388750591 14 21.51836273921953 20 25.375422838707482 39 17.455917002855632 
		40 17.455917002855632;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 1 1;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 5;
	setAttr -s 7 ".kix[0:6]"  0.99627870321273804 0.72844314575195313 
		0.98864597082138062 0.98288029432296753 0.99639993906021118 0.97700303792953491 
		1;
	setAttr -s 7 ".kiy[0:6]"  0.086189977824687958 0.68510627746582031 
		0.150263711810112 -0.18424537777900696 -0.084777355194091797 -0.21322546899318695 
		0;
	setAttr -s 7 ".kox[1:6]"  0.72844314575195313 0.98864597082138062 
		0.98288029432296753 0.99639993906021118 0.97917568683624268 1;
	setAttr -s 7 ".koy[1:6]"  0.68510627746582031 0.150263711810112 
		-0.18424537777900696 -0.084777355194091797 -0.20301462709903717 0;
createNode animCurveTA -n "animCurveTA441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  0.99986398220062256 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0.016494259238243103 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  0.99975061416625977 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  -0.022332277148962021 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  0.99984514713287354 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  -0.017597271129488945 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 33.429092416277157 0.005 33.429092416277157 
		14 33.429092416277157 20 33.429092416277157 39 33.429092416277157 40 33.429092416277157;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.2533422302317216 0.005 8.2533422302317216 
		14 8.2533422302317216 20 8.2533422302317216 39 8.2533422302317216 40 8.2533422302317216;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 23.263402056531085 0.005 23.263402056531085 
		14 23.263402056531085 20 23.263402056531085 39 23.263402056531085 40 23.263402056531085;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 20.166277752815617 0.005 20.166277752815617 
		14 20.166277752815617 20 20.166277752815617 39 20.166277752815617 40 20.166277752815617;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 0.005 0 14 0 20 0 39 0 40 0;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 17.254116939558369 0.005 17.254116939558369 
		14 17.254116939558369 20 17.254116939558369 39 17.254116939558369 40 17.254116939558369;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 1 1;
	setAttr -s 6 ".kot[1:5]"  1 9 9 9 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
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
	setAttr ".o" 29;
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
connectAttr "apu_dialogue_yesSource.st" "clipLibrary2.st[0]";
connectAttr "apu_dialogue_yesSource.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL124.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL125.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL126.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL127.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL128.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA340.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU33.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU34.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU35.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU36.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU37.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU38.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "apu_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary2.cel[0].cev[12].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary2.cel[0].cev[13].cevr"
		;
connectAttr "animCurveTA341.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA342.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA343.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL129.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL130.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL131.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL132.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL133.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL134.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA344.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA345.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA346.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL135.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL136.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL137.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA347.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA348.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA349.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA350.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA351.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA352.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA353.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA354.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA355.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTL138.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTL139.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTL140.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTL141.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTL142.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTL143.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL144.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL145.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL146.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTA356.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTA357.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTA358.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTA359.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTA360.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTA361.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA362.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA363.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA364.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA365.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA366.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA367.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA368.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA369.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA370.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA371.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA372.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA373.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA374.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA375.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA376.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA377.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA378.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA379.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA380.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA381.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA382.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA383.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA384.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTL147.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTL148.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTL149.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA385.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA386.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA387.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL150.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL151.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL152.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA388.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA389.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA390.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL153.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL154.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL155.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA391.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA392.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA393.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL156.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL157.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL158.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA394.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA395.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA396.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL159.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL160.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL161.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTL162.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTL163.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTL164.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTA397.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTA398.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTA399.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTA400.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTA401.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTA402.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA403.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA404.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA405.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA406.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA407.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA408.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA409.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA410.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA411.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA412.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA413.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA414.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA415.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA416.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA417.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA418.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA419.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA420.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA421.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA422.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA423.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA424.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA425.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA426.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA427.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA428.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA429.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA430.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA431.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA432.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA433.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA434.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA435.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA436.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA437.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA438.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA439.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA440.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA441.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA442.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA443.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA444.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA445.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA446.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA447.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA448.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA449.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA450.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA451.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA452.a" "clipLibrary2.cel[0].cev[161].cevr";
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
// End of apu_dialogue_yes.ma
