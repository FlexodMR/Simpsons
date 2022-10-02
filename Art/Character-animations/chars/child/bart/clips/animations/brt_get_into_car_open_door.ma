//Maya ASCII 4.0 scene
//Name: brt_get_into_car_open_door.ma
//Last modified: Tue, May 27, 2003 01:42:23 PM
requires maya "4.0";
requires "p3dDeformer" "2.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_get_into_car_open_doorSource";
	setAttr ".ihi" 0;
	setAttr ".du" 12;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL411";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL412";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -0.033880036066693167 1 -0.037971747811035045 
		2 -0.042063459555376929 3 -0.033880036066693167 4 0.002941135665592402 5 
		0.05203744310796371 6 0.076596183177308014 7 0.062818216137140351 8 0.030640646402153134 
		9 -0.0061448628840003192 10 -0.033746648577666759 11 -0.039372089317754447 
		12 -0.033880036066693167;
	setAttr -s 13 ".kit[12]"  1;
	setAttr -s 13 ".kot[0:12]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kix[12]"  0.06096956878900528;
	setAttr -s 13 ".kiy[12]"  0.99813961982727051;
	setAttr -s 13 ".kox[0:12]"  0.081196501851081848 0.081196509301662445 
		0.16081050038337708 0.014811675995588303 0.0077591496519744396 0.0090508302673697472 
		0.061720587313175201 0.014505249448120594 0.0096665564924478531 0.010353454388678074 
		0.020059829577803612 0.98056536912918091 0.060582291334867477;
	setAttr -s 13 ".koy[0:12]"  -0.99669814109802246 -0.99669814109802246 
		0.98698532581329346 0.99989032745361328 0.99996989965438843 0.99995905160903931 
		0.99809348583221436 -0.99989479780197144 -0.99995326995849609 -0.99994641542434692 
		-0.99979877471923828 -0.19619272649288177 0.99816322326660156;
createNode animCurveTL -n "animCurveTL414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
createNode animCurveTL -n "animCurveTL415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 -0.00056059444862637637 2 
		-0.0011211888972527527 3 0 4 0.0058759941145687727 5 0.013433771581685069 
		6 0.015136050142919943 7 0.0070531498748221668 8 -0.0061222304123380155 9 
		-0.018993804876407335 10 -0.026165287675232515 11 -0.01920418262416097 12 
		0;
	setAttr -s 13 ".kit[12]"  1;
	setAttr -s 13 ".kot[0:12]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kix[12]"  0.015021692961454391;
	setAttr -s 13 ".kiy[12]"  0.99988716840744019;
	setAttr -s 13 ".kox[0:12]"  0.51108318567276001 0.51108324527740479 
		0.76536864042282104 0.094846919178962708 0.049565177410840988 0.071807950735092163 
		0.10391735285520554 0.03134492039680481 0.025586424395442009 0.033243339508771896 
		0.95364367961883545 0.025470782071352005 0.017354721203446388;
	setAttr -s 13 ".koy[0:12]"  -0.85953128337860107 -0.8595312237739563 
		0.64359211921691895 0.99549186229705811 0.99877089262008667 0.99741846323013306 
		-0.99458593130111694 -0.99950861930847168 -0.99967259168624878 -0.9994472861289978 
		-0.30093812942504883 0.99967557191848755 0.99984937906265259;
createNode animCurveTA -n "animCurveTA1185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -5.8284402688137176 1 -1.8523997388840645 
		2 6.9105796367819146 3 15.712784536999759 4 24.492590611654776 5 33.311622871464685 
		6 37.60704203649366 7 36.392526415228041 8 32.330201344609208 9 26.329898087383981 
		10 19.301447906299206 11 5.585282891144562 12 -5.8284402688137176;
	setAttr -s 13 ".kit[12]"  1;
	setAttr -s 13 ".kot[0:12]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9;
	setAttr -s 13 ".kix[12]"  0.34629267454147339;
	setAttr -s 13 ".kiy[12]"  -0.93812650442123413;
	setAttr -s 13 ".kox[0:12]"  0.43298158049583435 0.28721079230308533 
		0.2124934047460556 0.21229921281337738 0.21210534870624542 0.27964037656784058 
		0.77836471796035767 0.58636462688446045 0.3548865020275116 0.28133460879325867 
		0.18108640611171722 0.15027301013469696 0.16503563523292542;
	setAttr -s 13 ".koy[0:12]"  0.90140277147293091 0.95786738395690918 
		0.97716248035430908 0.97720468044281006 0.97724682092666626 0.96010482311248779 
		0.62781238555908203 -0.81004726886749268 -0.9349094033241272 -0.9596097469329834 
		-0.98346716165542603 -0.98864454030990601 -0.98628759384155273;
createNode animCurveTU -n "animCurveTU81";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU82";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU83";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU84";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU85";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU86";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU87";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 12 1;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU88";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 12 1;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1186";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1187";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1188";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL416";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL417";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL418";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL419";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.26454016861507795 3 -0.26454016861507795 
		6 -0.17390215284266961 12 -0.26454016861507795;
	setAttr -s 4 ".kit[2:3]"  9 1;
	setAttr -s 4 ".kot[0:3]"  1 3 9 9;
	setAttr -s 4 ".kix[3]"  0.068844608962535858;
	setAttr -s 4 ".kiy[3]"  -0.9976273775100708;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0.022060425952076912;
	setAttr -s 4 ".koy[0:3]"  0 0 0 -0.99975663423538208;
createNode animCurveTL -n "animCurveTL420";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.21854541072049752 3 0.21854541072049752 
		6 0.25678279360175266 12 0.21854541072049752;
	setAttr -s 4 ".kit[2:3]"  9 1;
	setAttr -s 4 ".kot[0:3]"  1 3 9 9;
	setAttr -s 4 ".kix[3]"  0.06712062656879425;
	setAttr -s 4 ".kiy[3]"  -0.9977448582649231;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0.052233435213565826;
	setAttr -s 4 ".koy[0:3]"  0 0 0 -0.99863487482070923;
createNode animCurveTL -n "animCurveTL421";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.064904406754016042 3 -0.064904406754016042 
		6 -0.052792361204449745 12 -0.064904406754016042;
	setAttr -s 4 ".kit[2:3]"  9 1;
	setAttr -s 4 ".kot[0:3]"  1 3 9 9;
	setAttr -s 4 ".kix[3]"  0.24042223393917084;
	setAttr -s 4 ".kiy[3]"  -0.97066831588745117;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0.16291873157024384;
	setAttr -s 4 ".koy[0:3]"  0 0 0 -0.98663949966430664;
createNode animCurveTA -n "animCurveTA1189";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 40.947029585382076 12 
		0;
	setAttr -s 4 ".kit[2:3]"  9 1;
	setAttr -s 4 ".kot[0:3]"  1 3 9 9;
	setAttr -s 4 ".kix[3]"  0.56475114822387695;
	setAttr -s 4 ".kiy[3]"  -0.82526123523712158;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0.26949882507324219;
	setAttr -s 4 ".koy[0:3]"  0 0 0 -0.96300071477890015;
createNode animCurveTA -n "animCurveTA1190";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -25.948901905116401 3 -25.948901905116401 
		6 -22.743554926231724 12 -25.948901905116401;
	setAttr -s 4 ".kit[2:3]"  9 1;
	setAttr -s 4 ".kot[0:3]"  1 3 9 9;
	setAttr -s 4 ".kix[3]"  0.98305344581604004;
	setAttr -s 4 ".kiy[3]"  -0.1833193302154541;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0.96303415298461914;
	setAttr -s 4 ".koy[0:3]"  0 0 0 -0.26937922835350037;
createNode animCurveTA -n "animCurveTA1191";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 3 0 6 -20.771216329880893 12 
		0;
	setAttr -s 4 ".kit[2:3]"  9 1;
	setAttr -s 4 ".kot[0:3]"  1 3 9 9;
	setAttr -s 4 ".kix[3]"  0.63754045963287354;
	setAttr -s 4 ".kiy[3]"  0.77041685581207275;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0.48305067420005798;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0.87559241056442261;
createNode animCurveTL -n "animCurveTL422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.21594587158542247 3 0.21594587158542247 
		6 0.21594587158542247 10 0.21594587158542247 12 0.21594587158542247;
	setAttr -s 5 ".kit[0:4]"  3 3 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 3 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.21854505205085809 3 0.21854505205085809 
		6 0.21854505205085809 10 0.21854505205085809 12 0.21854505205085809;
	setAttr -s 5 ".kit[0:4]"  3 3 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 3 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.00078430246903575811 3 0.00078430246903575811 
		6 0.00078430246903575811 10 0.00078430246903575811 12 0.00078430246903575811;
	setAttr -s 5 ".kit[0:4]"  3 3 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 3 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 10 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 3 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 3 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 10 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 3 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 3 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 10 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 3 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 3 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1195";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1196";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1197";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1198";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1199";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1200";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1201";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1202";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1203";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1204";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1205";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1206";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 10 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 10 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 3 1 6 1 10 1 12 1;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 10 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 10 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 3 1 6 1 10 1 12 1;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.076472881617957691 3 -0.076472881617957691 
		6 0.17289033686313299 10 -0.076171803849399422 12 -0.076472881617957691;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.038607187569141388;
	setAttr -s 5 ".kiy[4]"  0.99925446510314941;
	setAttr -s 5 ".kox[0:4]"  1 0.0080201709643006325 0.99177771806716919 
		0.0080201709643006325 0.91136932373046875;
	setAttr -s 5 ".koy[0:4]"  0 0.99996781349182129 0.12797237932682037 
		-0.99996781349182129 -0.41158950328826904;
createNode animCurveTL -n "animCurveTL432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.95473100313980441 3 0.93105416142265018 
		6 0.96166607922299341 10 0.95329017309074449 12 0.95473100313980441;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.053990725427865982;
	setAttr -s 5 ".kiy[4]"  -0.99854141473770142;
	setAttr -s 5 ".kox[0:4]"  1 0.27709633111953735 0.1043618768453598 
		0.27709633111953735 0.4199242889881134;
	setAttr -s 5 ".koy[0:4]"  0 0.96084213256835938 0.99453938007354736 
		-0.96084213256835938 0.90755915641784668;
createNode animCurveTL -n "animCurveTL433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0.034164584962791775 
		10 -0.059059410177397804 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.0067236358299851418;
	setAttr -s 5 ".kiy[4]"  0.9999774694442749;
	setAttr -s 5 ".kox[0:4]"  1 0.058440100401639938 0.03947744145989418 
		0.058440100401639938 0.01128735113888979;
	setAttr -s 5 ".koy[0:4]"  0 0.99829089641571045 -0.99922049045562744 
		-0.99829089641571045 0.99993628263473511;
createNode animCurveTA -n "animCurveTA1207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.62843630316474508 3 -0.64945777164326313 
		6 3.5362358469263615 10 2.2213518221595017 12 -0.62843630316474508;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.83527082204818726;
	setAttr -s 5 ".kiy[4]"  -0.54983878135681152;
	setAttr -s 5 ".kox[0:4]"  1 0.93985384702682495 0.97771209478378296 
		0.93985384702682495 0.80150836706161499;
	setAttr -s 5 ".koy[0:4]"  0 0.34157693386077881 0.2099500447511673 
		-0.34157693386077881 -0.59798353910446167;
createNode animCurveTA -n "animCurveTA1208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -5.8284402688137167 3 15.712784536999756 
		6 37.60704203649366 10 19.301447906299206 12 -5.8284402688137167;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.58695673942565918;
	setAttr -s 5 ".kiy[4]"  -0.80961829423904419;
	setAttr -s 5 ".kox[0:4]"  1 0.25509214401245117 0.96580928564071655 
		0.25509214401245117 0.15027303993701935;
	setAttr -s 5 ".koy[0:4]"  0 0.96691673994064331 0.25925353169441223 
		-0.96691673994064331 -0.98864454030990601;
createNode animCurveTA -n "animCurveTA1209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.295636019309746 3 -1.5353463816017385 
		6 -1.9350868568911364 10 -1.7971044910279799 12 -1.295636019309746;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.99998736381530762;
	setAttr -s 5 ".kiy[4]"  0.0050283870659768581;
	setAttr -s 5 ".kox[0:4]"  1 0.99844664335250854 0.99980837106704712 
		0.99844664335250854 0.99149203300476074;
	setAttr -s 5 ".koy[0:4]"  0 -0.055715933442115784 -0.019575709477066994 
		0.055715933442115784 0.13016717135906219;
createNode animCurveTA -n "animCurveTA1210";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1211";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1212";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1213";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1214";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1215";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1216";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1217";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1218";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1219";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1220";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1221";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1222";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1223";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1224";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1225";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1226";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1227";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1228";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1229";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1230";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1231";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1232";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1233";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0.16666668653488159;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1234";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0.16666668653488159;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1235";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 0.16666668653488159;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL434";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.43524234076486068 12 -0.43524234076486068;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL435";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 12 -0.82665738350180629;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL436";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 12 0.27773886459742925;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1236";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1237";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 28.652637602052774 12 28.652637602052774;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1238";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.676908227303443 12 64.676908227303443;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL437";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.5198069948790518 12 0.5198069948790518;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL438";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 12 -0.72394202659893114;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL439";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 12 0.36439499068905612;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1239";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965317 12 7.7976222737965317;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1240";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -30.409274105849079 12 -30.409274105849079;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1241";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.859940280210893 12 -64.859940280210893;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL440";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.8448236677023373 3 -0.097868043675122127 
		6 0.67297017784466751 8 -0.53889157443010816 10 -0.91687176238261336 12 -0.8448236677023373;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.74165117740631104;
	setAttr -s 6 ".kiy[5]"  -0.67078572511672974;
	setAttr -s 6 ".kox[0:5]"  1 0.0013177008368074894 0.003779060672968626 
		0.00083865749184042215 0.0043582241050899029 0.0092526832595467567;
	setAttr -s 6 ".koy[0:5]"  0 0.99999910593032837 -0.99999284744262695 
		-0.99999964237213135 -0.99999052286148071 0.99995720386505127;
createNode animCurveTL -n "animCurveTL441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.0304014029588007 3 1.6409997766055862 
		6 2.0516744866464558 8 1.9297493576614511 10 1.6867389784155029 12 1.0304014029588007;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.0037110487464815378;
	setAttr -s 6 ".kiy[5]"  -0.99999308586120605;
	setAttr -s 6 ".kox[0:5]"  1 0.0019583364482969046 0.0057719177566468716 
		0.0036535891704261303 0.0014825538964942098 0.0010157370707020164;
	setAttr -s 6 ".koy[0:5]"  0 0.99999809265136719 0.99998337030410767 
		-0.99999332427978516 -0.99999892711639404 -0.99999946355819702;
createNode animCurveTL -n "animCurveTL442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.097994651149805143 3 0.84567637706889831 
		6 1.012740774631735 7.9950000000000001 0.99955266503950313 10 0.82410919595210663 
		12 -0.097994651149805143;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.0026205787435173988;
	setAttr -s 6 ".kiy[5]"  -0.99999654293060303;
	setAttr -s 6 ".kox[0:5]"  1 0.0018006057944148779 0.010819747112691402 
		0.0070682759396731853 0.0012163475621491671 0.00072298425948247313;
	setAttr -s 6 ".koy[0:5]"  0 0.99999839067459106 0.99994146823883057 
		-0.99997502565383911 -0.9999992847442627 -0.9999997615814209;
createNode animCurveTA -n "animCurveTA1242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 5.4739599453216465 3 71.119159344460144 
		6 115.97949163849844 7.9950000000000001 78.443105148750945 10 4.4503298151152562 
		12 5.4739599453216465;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.5300518274307251;
	setAttr -s 6 ".kiy[5]"  -0.8479653000831604;
	setAttr -s 6 ".kox[0:5]"  1 0.10314449667930603 0.79319912195205688 
		0.068337090313434601 0.10425372421741486 0.96591699123382568;
	setAttr -s 6 ".koy[0:5]"  0 0.99466639757156372 0.60896235704421997 
		-0.99766230583190918 -0.99455070495605469 0.25885194540023804;
createNode animCurveTA -n "animCurveTA1243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.5874521608419823 3 28.587710488537017 
		6 70.59428487001783 8 73.544495109388265 10 33.344727940425187 12 8.5874521608419823;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.89412903785705566;
	setAttr -s 6 ".kiy[5]"  -0.44780939817428589;
	setAttr -s 6 ".kox[0:5]"  1 0.18172752857208252 0.20777507126331329 
		0.20090635120868683 0.11680252104997635 0.1524825394153595;
	setAttr -s 6 ".koy[0:5]"  0 0.98334890604019165 0.97817665338516235 
		-0.97961044311523438 -0.99315518140792847 -0.98830616474151611;
createNode animCurveTA -n "animCurveTA1244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 74.754744621954103 3 145.5137268770755 
		6 193.1888567175117 7.9950000000000001 152.83471523677741 10 74.65908388092609 
		12 74.754744621954103;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.3978392481803894;
	setAttr -s 6 ".kiy[5]"  -0.91745513677597046;
	setAttr -s 6 ".kox[0:5]"  1 0.096305795013904572 0.79331791400909424 
		0.064318180084228516 0.097496777772903442 0.99968653917312622;
	setAttr -s 6 ".koy[0:5]"  0 0.99535179138183594 0.60880762338638306 
		-0.99792945384979248 -0.9952358603477478 0.025036068633198738;
createNode animCurveTL -n "animCurveTL443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.61083301393139333 3 0.57262925149573951 
		6 0.65078171898999204 10 0.65379941659865082 12 0.61083301393139333;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.025730980560183525;
	setAttr -s 5 ".kiy[4]"  0.99966889619827271;
	setAttr -s 5 ".kox[0:4]"  1 0.050001580268144608 0.028734326362609863 
		0.050001580268144608 0.015514133498072624;
	setAttr -s 5 ".koy[0:4]"  0 0.99874913692474365 0.99958705902099609 
		-0.99874913692474365 -0.99987965822219849;
createNode animCurveTL -n "animCurveTL444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.0211562878106184 3 1.4163535334556963 
		6 1.1595450764031354 10 1.187554025869259 12 1.0211562878106184;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.0049515031278133392;
	setAttr -s 5 ".kiy[4]"  0.99998766183853149;
	setAttr -s 5 ".kox[0:4]"  1 0.014450528658926487 0.010197627358138561 
		0.014450528658926487 0.0040064333006739616;
	setAttr -s 5 ".koy[0:4]"  0 0.99989557266235352 -0.99994802474975586 
		-0.99989557266235352 -0.99999195337295532;
createNode animCurveTL -n "animCurveTL445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.14314299916678522 3 -0.37264849786442289 
		6 -0.61670812692470955 10 -0.37392246864567208 12 0.14314299916678522;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.0015965987695381045;
	setAttr -s 5 ".kiy[4]"  0.99999874830245972;
	setAttr -s 5 ".kox[0:4]"  1 0.0026320854667574167 0.87769883871078491 
		0.0026320854667574167 0.0012893265811726451;
	setAttr -s 5 ".koy[0:4]"  0 -0.99999654293060303 -0.47921258211135864 
		0.99999654293060303 0.99999916553497314;
createNode animCurveTA -n "animCurveTA1245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.226511010665408 3 16.226511010665405 
		6 -36.342371142933764 10 -19.485233780889633 12 16.226511010665408;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.12616510689258575;
	setAttr -s 5 ".kiy[4]"  0.99200928211212158;
	setAttr -s 5 ".kox[0:4]"  1 0.21298222243785858 0.35059714317321777 
		0.21298222243785858 0.10635312646627426;
	setAttr -s 5 ".koy[0:4]"  0 -0.97705608606338501 -0.93652635812759399 
		0.97705608606338501 0.99432843923568726;
createNode animCurveTA -n "animCurveTA1246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -8.513966085499284 3 -8.513966085499284 
		6 11.969566747283142 10 -0.96208380069696442 12 -8.513966085499284;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.30320754647254944;
	setAttr -s 5 ".kiy[4]"  -0.95292454957962036;
	setAttr -s 5 ".kox[0:4]"  1 0.48822635412216187 0.87068885564804077 
		0.48822635412216187 0.45134714245796204;
	setAttr -s 5 ".koy[0:4]"  0 0.87271702289581299 0.49183425307273865 
		-0.87271702289581299 -0.89234846830368042;
createNode animCurveTA -n "animCurveTA1247";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -68.213989601412422 3 -68.213989601412422 
		6 -58.343731855318346 10 -56.825927835201007 12 -68.213989601412422;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.35211485624313354;
	setAttr -s 5 ".kiy[4]"  -0.93595677614212036;
	setAttr -s 5 ".kox[0:4]"  1 0.75768208503723145 0.76125329732894897 
		0.75768208503723145 0.31800290942192078;
	setAttr -s 5 ".koy[0:4]"  0 0.65262377262115479 0.64845460653305054 
		-0.65262377262115479 -0.94808971881866455;
createNode animCurveTL -n "animCurveTL446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0.17523930523423681 6 0.17523930523423681 
		10 0.17523930523423681 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 1 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 0.011412221938371658 0.0038042948581278324;
	setAttr -s 5 ".koy[0:4]"  0 0 0 -0.9999348521232605 -0.99999278783798218;
createNode animCurveTL -n "animCurveTL447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 -0.00072435787012014696 6 
		-0.00072435787012014696 10 -0.00072435787012014696 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 1 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 0.94023275375366211 0.67719817161560059;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0.34053251147270203 0.73580068349838257;
createNode animCurveTL -n "animCurveTL448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1 3 -0.80201435285893019 6 -0.80201435285893019 
		10 -0.80201435285893019 12 -1;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 1 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 0.010101226158440113 0.0033672288991510868;
	setAttr -s 5 ".koy[0:4]"  0 0 0 -0.99994897842407227 -0.99999433755874634;
createNode animCurveTL -n "animCurveTL449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.10167917362943303 3 -0.4001111643408698 
		6 -0.4001111643408698 10 -0.4001111643408698 12 -0.10167917362943303;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 1 9 9 9;
	setAttr -s 5 ".kix[4]"  0.018605001270771027;
	setAttr -s 5 ".kiy[4]"  0.99982690811157227;
	setAttr -s 5 ".kox[0:4]"  1 1 1 0.0067015434615314007 0.0022338929120451212;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0.99997752904891968 0.99999749660491943;
createNode animCurveTL -n "animCurveTL450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.40762644910266188 3 -0.32054195494897236 
		6 -0.32054195494897236 10 -0.32054195494897236 12 -0.40762644910266188;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 1 9 9 9;
	setAttr -s 5 ".kix[4]"  0.0070660621859133244;
	setAttr -s 5 ".kiy[4]"  -0.99997502565383911;
	setAttr -s 5 ".kox[0:4]"  1 1 1 0.022960146889090538 0.0076551772654056549;
	setAttr -s 5 ".koy[0:4]"  0 0 0 -0.99973636865615845 -0.99997067451477051;
createNode animCurveTL -n "animCurveTL451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.93129112588482243 3 -0.81561019929437761 
		6 -0.81561019929437761 10 -0.81561019929437761 12 -0.93129112588482243;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 1 9 9 9;
	setAttr -s 5 ".kix[4]"  0.007047965656965971;
	setAttr -s 5 ".kiy[4]"  0.99997508525848389;
	setAttr -s 5 ".kox[0:4]"  1 1 1 0.017286350950598717 0.0057628834620118141;
	setAttr -s 5 ".koy[0:4]"  0 0 0 -0.9998505711555481 -0.99998337030410767;
createNode animCurveTA -n "animCurveTA1248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 12.253734489678925 3 12.253734489678925 
		6 12.253734489678925 10 12.253734489678925 12 12.253734489678925;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -65.746751280844975 3 -65.746751280844961 
		6 -65.746751280844961 10 -65.746751280844961 12 -65.746751280844975;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 10 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1251";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.061808866237340665 3 -0.061808866237337522 
		6 -0.061808866237337522 10 -0.061808866237337522 12 -0.061808866237340665;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1252";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -59.058178941076754 3 -59.058178941076754 
		6 -59.058178941076754 10 -59.058178941076754 12 -59.058178941076754;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1253";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.57914742975785 3 16.579147429757843 
		6 16.579147429757843 10 16.579147429757843 12 16.57914742975785;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1254";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.5572674112203657 3 8.5572674112203622 
		6 8.5572674112203622 10 8.5572674112203622 12 8.5572674112203657;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 15.711328223519061 3 15.711328223519057 
		6 15.711328223519057 10 15.711328223519057 12 15.711328223519061;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 10 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 10 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 10 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 10 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 10 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 10 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 143.71460997127252 3 -177.04830761929054 
		6 -177.04830761929054 10 -177.04830761929054 12 143.71460997127252;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 0.035701915621757507 1 0.035701915621757507 
		0.011907387524843216;
	setAttr -s 5 ".koy[0:4]"  0 -0.99936246871948242 0 0.99936246871948242 
		0.99992913007736206;
createNode animCurveTA -n "animCurveTA1263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.804554996454378 3 27.722848255843903 
		6 27.722848255843903 10 27.722848255843903 12 27.804554996454378;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 0.99997460842132568 1 0.99997460842132568 
		0.99977129697799683;
	setAttr -s 5 ".koy[0:4]"  0 -0.0071300771087408066 0 0.0071300771087408066 
		0.021385878324508667;
createNode animCurveTA -n "animCurveTA1264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 29.452980944098744 3 21.576484776388227 
		6 21.576484776388227 10 21.576484776388227 12 29.452980944098744;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 0.82409811019897461 1 0.82409811019897461 
		0.43634858727455139;
	setAttr -s 5 ".koy[0:4]"  0 -0.56644707918167114 0 0.56644707918167114 
		0.89977771043777466;
createNode animCurveTA -n "animCurveTA1265";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 10 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1266";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 10 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.080064458283051 3 27.080064458283051 
		6 27.080064458283051 10 27.080064458283051 12 27.080064458283051;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1268";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1269";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1270";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1271";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1272";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1273";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 2.6613427475794857;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0.082281425595283508;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0.21256037056446075;
createNode animCurveTA -n "animCurveTA1274";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1275";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 12 0;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1276";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 12 13.994403295754109;
	setAttr -s 2 ".kix[0:1]"  1 0.40000003576278687;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  1 1.0333333015441895;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1277";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 10 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 10 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1279";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.911632519594587 3 27.911632519594587 
		6 27.911632519594587 10 27.911632519594587 12 27.911632519594587;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1280";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 10 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1281";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 10 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1282";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 10 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1283";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.65073001024951671 3 17.865547004487734 
		6 26.344302103719443 10 15.995208714699748 12 -0.65073001024951671;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.76055014133453369;
	setAttr -s 5 ".kiy[4]"  -0.64927917718887329;
	setAttr -s 5 ".kox[0:4]"  1 0.39074397087097168 0.99035519361495972 
		0.39074397087097168 0.22365568578243256;
	setAttr -s 5 ".koy[0:4]"  0 0.92049938440322876 -0.13855166733264923 
		-0.92049938440322876 -0.97466820478439331;
createNode animCurveTA -n "animCurveTA1284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.2368721935960938 3 -8.1938064043711503 
		6 -14.600939198760139 10 -10.255568461043122 12 -4.2368721935960938;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.77311158180236816;
	setAttr -s 5 ".kiy[4]"  0.63427001237869263;
	setAttr -s 5 ".kox[0:4]"  1 0.74165624380111694 0.98831617832183838 
		0.74165624380111694 0.53584063053131104;
	setAttr -s 5 ".koy[0:4]"  0 -0.67078018188476563 -0.15241757035255432 
		0.67078018188476563 0.84431910514831543;
createNode animCurveTA -n "animCurveTA1285";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.6995264082587447 3 15.088783978648813 
		6 18.187946831246631 10 13.315807209516004 12 2.6995264082587447;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.98703163862228394;
	setAttr -s 5 ".kiy[4]"  0.16052569448947906;
	setAttr -s 5 ".kox[0:4]"  1 0.59476667642593384 0.99132049083709717 
		0.59476667642593384 0.33855140209197998;
	setAttr -s 5 ".koy[0:4]"  0 0.8038983941078186 -0.1314672976732254 
		-0.8038983941078186 -0.94094789028167725;
createNode animCurveTA -n "animCurveTA1286";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 10 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.8021014928817749;
	setAttr -s 5 ".kiy[4]"  0.59718775749206543;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 10 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1288";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 6.9655753505297673 6 6.9655753505297673 
		10 6.9655753505297673 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 0.85451513528823853 1 0.85451513528823853 
		0.48082172870635986;
	setAttr -s 5 ".koy[0:4]"  0 0.51942652463912964 0 -0.51942652463912964 
		-0.87681835889816284;
createNode animCurveTA -n "animCurveTA1289";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 -5.9242295281046466 6 1.8652854771413565 
		10 21.728187361662286 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.30323299765586853;
	setAttr -s 5 ".kiy[4]"  -0.95291644334793091;
	setAttr -s 5 ".kox[0:4]"  1 0.98700940608978271 0.43526580929756165 
		0.98700940608978271 0.17314055562019348;
	setAttr -s 5 ".koy[0:4]"  0 0.16066230833530426 0.90030199289321899 
		-0.16066230833530426 -0.98489713668823242;
createNode animCurveTA -n "animCurveTA1290";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 -9.077909751430024 6 16.975603900501056 
		10 21.522809173019919 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.30302581191062927;
	setAttr -s 5 ".kiy[4]"  -0.95298236608505249;
	setAttr -s 5 ".kox[0:4]"  1 0.55949372053146362 0.40034624934196472 
		0.55949372053146362 0.17474250495433807;
	setAttr -s 5 ".koy[0:4]"  0 0.82883459329605103 0.91636395454406738 
		-0.82883459329605103 -0.98461419343948364;
createNode animCurveTA -n "animCurveTA1291";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 6.6786334979782902 3 -7.2687178407216164 
		6 -14.2973988729951 10 -1.4936145831966527 12 6.6786334979782902;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  0.99628615379333496;
	setAttr -s 5 ".kiy[4]"  -0.086104333400726318;
	setAttr -s 5 ".kox[0:4]"  1 0.47942221164703369 0.91800940036773682 
		0.47942221164703369 0.42343190312385559;
	setAttr -s 5 ".koy[0:4]"  0 -0.87758439779281616 0.39655867218971252 
		0.87758439779281616 0.90592795610427856;
createNode animCurveTA -n "animCurveTA1292";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.8903601258661935 3 -1.8903601258661931 
		6 -10.620934651579155 10 -1.8903601258661931 12 -1.8903601258661935;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 0.79543876647949219 1 0.79543876647949219 
		1;
	setAttr -s 5 ".koy[0:4]"  0 -0.60603398084640503 0 0.60603398084640503 
		0;
createNode animCurveTA -n "animCurveTA1293";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.5597289571479038 3 2.5597289571479034 
		6 -4.2675310995034259 10 2.5597289571479034 12 2.5597289571479038;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 0.85908406972885132 1 0.85908406972885132 
		1;
	setAttr -s 5 ".koy[0:4]"  0 -0.51183444261550903 0 0.51183444261550903 
		0;
createNode animCurveTA -n "animCurveTA1294";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.0168110874036049 3 2.016811087403604 
		6 -2.5690730322880704 10 2.016811087403604 12 2.0168110874036049;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 0.92841458320617676 1 0.92841458320617676 
		1;
	setAttr -s 5 ".koy[0:4]"  0 -0.37154585123062134 0 0.37154585123062134 
		0;
createNode animCurveTA -n "animCurveTA1295";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 10 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 10 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 33.429092416277157 3 33.429092416277157 
		6 33.429092416277157 10 33.429092416277157 12 33.429092416277157;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -121.24398976748977 3 -171.24588681251637 
		6 -171.24588681251637 10 -171.24588681251637 12 -121.24398976748977;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 0.2233833372592926 1 0.2233833372592926 
		0.076169565320014954;
	setAttr -s 5 ".koy[0:4]"  0 -0.97473067045211792 0 0.97473067045211792 
		0.99709486961364746;
createNode animCurveTA -n "animCurveTA1299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 28.612774017129329 3 23.263402056531085 
		6 23.263402056531085 10 23.263402056531085 12 28.612774017129329;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 0.90612959861755371 1 0.90612959861755371 
		0.58111119270324707;
	setAttr -s 5 ".koy[0:4]"  0 -0.42300012707710266 0 0.42300012707710266 
		0.81382417678833008;
createNode animCurveTA -n "animCurveTA1300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.632837226638049 3 20.166277752815617 
		6 20.166277752815617 10 20.166277752815617 12 17.632837226638049;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 0.9764217734336853 1 0.9764217734336853 
		0.83336091041564941;
	setAttr -s 5 ".koy[0:4]"  0 0.21587161719799042 0 -0.21587161719799042 
		-0.55272918939590454;
createNode animCurveTA -n "animCurveTA1301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 10 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1302";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3 0 6 0 10 0 12 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1303";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.254116939558369 3 17.254116939558369 
		6 17.254116939558369 10 17.254116939558369 12 17.254116939558369;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
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
connectAttr "brt_get_into_car_open_doorSource.st" "clipLibrary1.st[0]";
connectAttr "brt_get_into_car_open_doorSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL411.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL412.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL413.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL414.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL415.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA1185.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU81.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU82.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU83.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU84.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU85.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU86.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU87.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU88.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA1186.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1187.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1188.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL416.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL417.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL418.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL419.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL420.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL421.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1189.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1190.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1191.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL422.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL423.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL424.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1192.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1193.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1194.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1195.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1196.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1197.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1198.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1199.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1200.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA1201.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA1202.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA1203.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA1204.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA1205.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA1206.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL425.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL426.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL427.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL428.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL429.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL430.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL431.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL432.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL433.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1207.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1208.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1209.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1210.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1211.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1212.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1213.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1214.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1215.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1216.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1217.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1218.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1219.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1220.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1221.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1222.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1223.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1224.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1225.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1226.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1227.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1228.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1229.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA1230.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA1231.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA1232.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1233.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1234.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1235.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL434.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL435.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL436.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA1236.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA1237.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1238.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL437.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL438.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL439.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1239.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1240.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1241.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL440.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL441.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL442.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1242.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1243.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1244.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL443.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL444.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL445.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1245.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1246.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1247.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL446.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL447.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL448.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL449.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL450.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL451.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1248.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1249.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1250.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1251.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1252.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1253.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1254.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1255.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1256.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1257.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1258.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1259.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1260.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1261.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1262.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1263.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1264.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1265.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1266.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1267.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1268.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1269.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1270.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1271.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1272.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1273.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1274.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1275.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1276.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1277.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1278.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1279.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1280.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1281.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1282.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1283.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1284.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1285.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1286.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1287.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1288.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1289.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1290.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1291.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1292.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1293.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1294.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1295.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1296.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1297.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1298.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1299.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1300.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1301.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1302.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1303.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of brt_get_into_car_open_door.ma
