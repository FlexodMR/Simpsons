//Maya ASCII 4.0 scene
//Name: mrg_jump_dash_take_off.ma
//Last modified: Tue, Oct 01, 2002 05:20:52 PM
requires maya "4.0";
requires "p3dmayaexp" "18.5";
requires "p3dSimpleShader" "18.5";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_jump_dash_take_offSource";
	setAttr ".ihi" 0;
	setAttr ".du" 6;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL244";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 0.00099502387456595898;
	setAttr -s 2 ".kiy[0:1]"  0 -0.9999995231628418;
createNode animCurveTL -n "animCurveTL245";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.025084102686805086 1 0.025084102686805086 
		2 0.025084102686805086 3 0.025084102686805086 4 0.025084102686805086 5 0.025084102686805086 
		6 0.025084102686805086;
createNode animCurveTL -n "mrg_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.30657028989033369 1 -0.087218047805441498 
		2 0.1341845784766954 3 0.35609979681831588 4 0.5913425949751776 5 0.85789379511171593 
		6 1.1387181088027776;
createNode animCurveTA -n "mrg_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0;
createNode animCurveTU -n "animCurveTU49";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[0:1]"  1 3;
	setAttr -s 2 ".kot[0:1]"  9 3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU50";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[0:1]"  1 3;
	setAttr -s 2 ".kot[0:1]"  9 3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU51";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[0:1]"  1 3;
	setAttr -s 2 ".kot[0:1]"  9 3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU52";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[0:1]"  1 3;
	setAttr -s 2 ".kot[0:1]"  9 3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU53";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 25 1 33 1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[2]"  9;
createNode animCurveTU -n "animCurveTU54";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 25 1 33 1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[2]"  9;
createNode animCurveTU -n "animCurveTU55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 0;
createNode animCurveTU -n "animCurveTU56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 0;
createNode animCurveTA -n "mrg_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "mrg_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "mrg_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "mrg_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "mrg_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "mrg_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Right_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.05490398416830243 1 -0.051769569338219121 
		2 -0.049117372191673656 3 -0.049117372191673656 4 -0.049117372191673656 5 
		-0.048702447355801988 6 -0.049117372191673656;
createNode animCurveTL -n "Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.511579945562327 1 0.29750905196662675 
		2 0.11473465073044499 3 0.10409097246318597 4 0.10409097246318597 5 0.13791760439383263 
		6 0.2180575061126355;
createNode animCurveTL -n "Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.0046764648862522053 1 0.34644990028217509 
		2 0.64849389440560179 3 0.73202598728935064 4 0.73202598728935064 5 0.75434669616152084 
		6 0.86041086687988455;
createNode animCurveTA -n "animCurveTA728";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 -30.072192405388279 1 -39.530732734140123 
		2 -41.212750336269735 3 -0.123893425901984 4 -0.123893425901984 5 23.386003902624832 
		6 50.024119495848225 8 91.765870245776981 12 46.531082634899178 17 -57.517594950930636 
		18 -53.336704851844473 19 0 21 0 25 0 29 0 33 0;
	setAttr -s 16 ".kit[11:15]"  3 3 3 9 3;
	setAttr -s 16 ".kot[11:15]"  3 3 3 9 3;
createNode animCurveTA -n "animCurveTA729";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 
		12 0 18 0 19 -25.948901905116401 21 -25.948901905116401 25 -25.948901905116401 
		29 -25.948901905116401 33 -25.948901905116401;
	setAttr -s 15 ".kit[10:14]"  3 3 3 9 3;
	setAttr -s 15 ".kot[10:14]"  3 3 3 9 3;
createNode animCurveTA -n "animCurveTA730";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 8 0 
		12 0 18 0 19 0 21 0 25 0 29 0 33 0;
	setAttr -s 15 ".kit[10:14]"  3 3 3 9 3;
	setAttr -s 15 ".kot[10:14]"  3 3 3 9 3;
createNode animCurveTL -n "Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.12872179725675842 1 0.14447766787152236 
		2 0.15963897688577408 3 0.17465164579733172 4 0.18579966735506592 5 0.18657120501360477 
		6 0.18579966735506592;
createNode animCurveTL -n "Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.66563734011738351 1 0.58226822872492756 
		2 0.50408168599554182 3 0.42719078709425667 4 0.38398659108711358 5 0.4064226694498892 
		6 0.49192454507298139;
createNode animCurveTL -n "Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.0334301114186693 1 -0.71361562045544935 
		2 -0.39507483003304261 3 -0.07685248101220335 4 0.23309084385424383 5 0.5083817227084676 
		6 0.80521394842601124;
createNode animCurveTA -n "animCurveTA731";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 99.963052812293768 1 109.17073245253111 
		2 117.71177813411254 3 126.08616526668909 4 130.12743265542596 5 123.4923108397532 
		6 113.21120007869165 8 96.458941847380999 12 -1.7311171177000968 18 -47.411319879483621 
		19 -1.7196527915923594 21 -1.7196527915923594 25 -1.7196527915923594 29 -1.0017759168053326 
		33 0;
	setAttr -s 15 ".kit[10:14]"  3 3 9 9 1;
	setAttr -s 15 ".kot[10:14]"  3 3 9 9 5;
	setAttr -s 15 ".kix[14]"  1;
	setAttr -s 15 ".kiy[14]"  0;
createNode animCurveTA -n "animCurveTA732";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 0 2 0 3 0 4 0 5 -0.1063424378441859 
		6 0 8 1.7014789694155465 12 -1.9324880421037114 18 -0.88133929287550627 19 
		-1.6242425176100523 21 -1.6242425176100523 25 -1.6242425176100523 29 -0.94619508876613001 
		33 0;
	setAttr -s 15 ".kit[10:14]"  3 3 9 9 1;
	setAttr -s 15 ".kot[10:14]"  3 3 9 9 5;
	setAttr -s 15 ".kix[14]"  1;
	setAttr -s 15 ".kiy[14]"  0;
createNode animCurveTA -n "animCurveTA733";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 0 2 0 3 0 4 0 5 -0.033993730194802937 
		6 0 8 0.54389970145120459 12 0.88656424674760648 18 3.6005713078583419 19 
		3.3323657759730554 21 3.3323657759730554 25 3.3323657759730554 29 1.9412545388213331 
		33 0;
	setAttr -s 15 ".kit[10:14]"  3 3 9 9 1;
	setAttr -s 15 ".kot[10:14]"  3 3 9 9 5;
	setAttr -s 15 ".kix[14]"  1;
	setAttr -s 15 ".kiy[14]"  0;
createNode animCurveTA -n "animCurveTA734";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA735";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA736";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA737";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA738";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA739";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA740";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA741";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA742";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA743";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA744";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA745";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 2 0 4 0 6 0 8 0 12 0 18 0.015017241321288224 
		21 0.015017241321288224 25 0.015017241321288224 29 0.0062571839736229231 
		33 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 0.21669310331344604 0.1958996057510376 
		1 0.29121780395507813 0.17483852803707123 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0.97623980045318604 0.98062396049499512 
		0 -0.95665675401687622 -0.98459714651107788 0;
createNode animCurveTL -n "animCurveTL259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.24354617521346231 2 0.24354617521346231 
		4 0.24354617521346231 6 0.24354617521346231 8 0.24354617521346231 12 0.24354617521346231 
		18 0.49949286214571587 21 0.49949286214571587 25 0.49949286214571587 29 0.20812202506070285 
		33 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 0.013022441416978836 
		0.011720385402441025 1 0.0091517558321356773 0.0053386720828711987 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0.99991518259048462 0.99993133544921875 
		0 -0.9999580979347229 -0.99998575448989868 0;
createNode animCurveTL -n "animCurveTL260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.73266363114951272 2 0.73266363114951272 
		4 0.73266363114951272 6 0.73266363114951272 8 0.73266363114951272 12 0.73266363114951272 
		18 0.50034176497263683 21 0.50034176497263683 25 0.50034176497263683 29 0.82334737780780476 
		33 1.1269999742507935;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 0.014346432872116566 
		0.012912043370306492 1 0.008255508728325367 0.0042553381063044071 0.0078345993533730507;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 -0.9998970627784729 -0.99991661310195923 
		0 0.99996590614318848 0.99999094009399414 0.99996930360794067;
createNode animCurveTL -n "animCurveTL261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 2 0 4 0 6 0 8 0 12 0 18 0.11641540109138682 
		21 0.11641540109138682 25 0.11641540109138682 29 0.048506417302344319 33 
		0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 0.028621364384889603 
		0.025761233642697334 1 0.039238002151250839 0.022900467738509178 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0.99959033727645874 0.99966812133789063 
		0 -0.99922990798950195 -0.99973773956298828 0;
createNode animCurveTL -n "animCurveTL262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.72172207365063845 2 0.72172207365063845 
		4 0.72172207365063845 6 0.72172207365063845 8 0.72172207365063845 12 0.72172207365063845 
		18 0.37075848534494549 21 0.37075848534494549 25 0.37075848534494549 29 0.15448270118623625 
		33 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 0.0094972327351570129 
		0.0085475826635956764 1 0.012329000048339367 0.0071922764182090759 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 -0.99995487928390503 
		-0.99996346235275269 0 -0.99992400407791138 -0.99997413158416748 0;
createNode animCurveTL -n "animCurveTL263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.39818034372871203 2 0.39818034372871203 
		4 0.39818034372871203 6 0.39818034372871203 8 0.39818034372871203 12 0.39818034372871203 
		18 0.64196267648156669 21 0.64196267648156669 25 0.64196267648156669 29 0.882356090422728 
		33 1.1269999742507935;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 0.013672122731804848 
		0.012305127456784248 1 0.011092244647443295 0.0054977755062282085 0.0078345993533730507;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0.99990653991699219 0.99992430210113525 
		0 0.9999384880065918 0.99998486042022705 0.99996930360794067;
createNode animCurveTL -n "Character_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.03056236763751306 1 0.03056236763751306 
		2 0.03056236763751306 3 0.03056236763751306 4 0.03056236763751306 5 0.03056236763751306 
		6 0.03056236763751306;
createNode animCurveTL -n "Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.1465331633204445 1 0.98901620458192752 
		2 0.84241967667140094 3 0.69855325406010693 4 0.62566961328008952 5 0.71589373752137131 
		6 0.88941837055644457;
createNode animCurveTL -n "Character_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.37352398143769161 1 -0.10626611104802504 
		2 0.1634899390220852 3 0.43387052915111685 4 0.72048938776108418 5 1.0452542746899856 
		6 1.387409464522358;
createNode animCurveTA -n "animCurveTA746";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 17.005118065408293 1 17.005118065408293 
		2 17.005118065408293 3 17.005118065408293 4 17.005118065408293 5 17.005118065408293 
		6 17.005118065408293;
createNode animCurveTA -n "animCurveTA747";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.71413050451596 1 16.71413050451596 
		2 16.71413050451596 3 16.71413050451596 4 16.71413050451596 5 16.71413050451596 
		6 16.71413050451596;
createNode animCurveTA -n "animCurveTA748";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 4.5450427004597262 1 4.5450427004597262 
		2 4.5450427004597271 3 4.5450427004597271 4 4.545042700459728 5 4.545042700459728 
		6 4.545042700459728;
createNode animCurveTA -n "animCurveTA749";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.040709616517141604 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA750";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.831398321977693 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA751";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 3.7337164321498379 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA752";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -2.5673169553733399 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA753";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -5.9383831660683679 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA754";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.00040252039393781289 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA755";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.1571952141288731 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA756";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA757";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA758";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.0034456079181433771 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA759";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.040473860579884571 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA760";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.8313984519406281 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA761";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 3.733716455368874 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA762";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -2.5673170049738836 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA763";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -5.9383298724540099 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA764";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.00017158844849065349 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA765";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.157195188032677 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA766";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA767";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA768";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.0034456079182833216 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA769";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 2 0.21501235533055132 4 0 6 
		-2.5801482445824764 8 -2.4438834762883364 12 -0.2770852798837723 18 -0.2770852798837723 
		21 -0.2770852798837723 25 -0.2770852798837723 29 -0.11545220094387665 33 
		0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 0.93911314010620117 0.95245081186294556 
		0.98039543628692627 0.99362564086914063 1 1 0.99994403123855591 0.99983561038970947 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 -0.34360805153846741 -0.30469244718551636 
		0.19704003632068634 0.11273010075092316 0 0 0.010578268207609653 0.018132207915186882 
		0;
createNode animCurveTA -n "animCurveTA770";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 2 -0.18444743933245167 4 0 
		6 2.2133692590006788 8 2.6592667151031826 12 3.387649532337587 18 3.387649532337587 
		21 3.387649532337587 25 3.387649532337587 29 1.4115206415603474 33 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 0.95410615205764771 0.94441729784011841 
		0.99479037523269653 0.99927353858947754 1 1 0.99173939228057861 0.97629052400588989 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0.29946860671043396 0.32874903082847595 
		0.10194142907857895 0.038110330700874329 0 0 -0.12826894223690033 -0.21646425127983093 
		0;
createNode animCurveTA -n "animCurveTA771";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.0034456079181433771 2 3.9289711404805479 
		4 0.0034456079181433771 6 -47.102861458702762 8 -44.137031448171832 12 -2.379897363697026 
		18 -2.379897363697026 21 -2.379897363697026 25 -2.379897363697026 29 -0.99162389549362673 
		33 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 0.1480497419834137 0.17053577303886414 
		0.24820725619792938 0.41593298316001892 1 1 0.99589741230010986 0.98808515071868896 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 -0.98897993564605713 -0.98535150289535522 
		0.96870696544647217 0.90939527750015259 0 0 0.090489521622657776 0.15390802919864655 
		0;
createNode animCurveTA -n "animCurveTA772";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.15553530681976535 2 0.15553530681976535 
		4 0.15553530681976535 6 0.15553530681976535 8 0.15553530681976535 12 0.15553530681976535 
		18 0.15553530681976535 21 0.15553530681976535 25 0.15553530681976535 29 0.064806378591716229 
		33 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 0.99998235702514648 
		0.99994820356369019 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 -0.0059380899183452129 
		-0.01017923466861248 0;
createNode animCurveTA -n "animCurveTA773";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.36354176124207516 2 -0.36354176124207516 
		4 -0.36354176124207516 6 -0.36354176124207516 8 -0.36354176124207516 12 -0.36354176124207516 
		18 -0.36354176124207516 21 -0.36354176124207516 25 -0.36354176124207516 29 
		-0.15147573327848146 33 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 0.99990367889404297 
		0.99971705675125122 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0.01387835294008255 
		0.023787021636962891 0;
createNode animCurveTA -n "animCurveTA774";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 5.3250602596476986 2 5.3250602596476986 
		4 5.3250602596476986 6 5.3250602596476986 8 5.3250602596476986 12 5.3250602596476986 
		18 5.3250602596476986 21 5.3250602596476986 25 5.3250602596476986 29 2.2187751173360901 
		33 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 0.97995275259017944 
		0.94429200887680054 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 -0.19923014938831329 
		-0.32910880446434021 0;
createNode animCurveTL -n "animCurveTL267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.0198894790833886 2 0.39022156920938328 
		4 -0.98872819052200589 6 -0.98872819052200589 8 -0.98872819052200589 12 -0.98872819052200589 
		18 -0.98872819052200589 21 -0.98872819052200589 25 -0.98872819052200589 29 
		-0.66586144449046203 33 -0.43524234076486068;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 0.00044317133142612875 0.0009669190039858222 
		1 1 1 1 1 0.0082590598613023758 0.0048178932629525661 1;
	setAttr -s 11 ".kiy[0:10]"  0 -0.99999988079071045 -0.9999995231628418 
		0 0 0 0 0 0.99996590614318848 0.9999883770942688 0;
createNode animCurveTL -n "animCurveTL268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 5.6984910970697689 2 2.601235143282397 
		4 -0.019519870042852914 6 -0.019519870042852914 8 -0.019519870042852914 12 
		-0.019519870042852914 18 -0.019519870042852914 21 -0.019519870042852914 25 
		-0.019519870042852914 29 -0.4903500831297769 33 -0.82665738350180629;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 0.00023318130115512758 0.00050875917077064514 
		1 1 1 1 1 0.0056636636145412922 0.0033038386609405279 1;
	setAttr -s 11 ".kiy[0:10]"  0 -1 -0.99999988079071045 0 0 0 
		0 0 -0.99998396635055542 -0.99999451637268066 0;
createNode animCurveTL -n "animCurveTL269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 8.0603643752051148 2 3.6834930218179527 
		4 -0.020013375596438072 6 -0.020013375596438072 8 -0.020013375596438072 12 
		-0.020013375596438072 18 -0.020013375596438072 21 -0.020013375596438072 25 
		-0.020013375596438072 29 0.15367543263896985 33 0.27773886459742925;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 0.00016500879428349435 0.00036001915577799082 
		1 1 1 1 1 0.015351320616900921 0.0089556332677602768 1;
	setAttr -s 11 ".kiy[0:10]"  0 -1 -0.99999994039535522 0 0 0 
		0 0 0.99988216161727905 0.99995988607406616 0;
createNode animCurveTA -n "animCurveTA775";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 14.588094718924015 2 6.6862100072789694 
		4 0 6 0 8 0 12 0 18 0 21 0 25 0 29 0 33 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 0.46391427516937256 0.75249356031417847 
		1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 -0.88588011264801025 -0.65859955549240112 
		0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA776";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 51.024437275888211 2 23.386200408285521 
		4 0 6 0 8 0 12 0 18 0 21 0 25 0 29 16.714038531687819 33 28.652637602052774;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 0.14807073771953583 0.31051662564277649 
		1 1 1 1 1 0.67470824718475342 0.4705275297164917 1;
	setAttr -s 11 ".kiy[0:10]"  0 -0.98897677659988403 -0.95056796073913574 
		0 0 0 0 0 0.73808449506759644 0.88238531351089478 0;
createNode animCurveTA -n "animCurveTA777";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 83.689443642728136 2 38.357661516821274 
		4 0 6 0 8 0 12 0 18 0 21 0 25 0 29 37.728196176152927 33 64.676908227303443;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 0.090905211865901947 0.195327028632164 
		1 1 1 1 1 0.37536031007766724 0.22990581393241882 1;
	setAttr -s 11 ".kiy[0:10]"  0 -0.99585956335067749 -0.98073816299438477 
		0 0 0 0 0 0.92687898874282837 0.97321289777755737 0;
createNode animCurveTL -n "animCurveTL270";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.6892948228568385 2 1.7681541935437322 
		4 0.98872754407817198 6 0.98872754407817198 8 0.98872754407817198 12 0.98872754407817198 
		18 0.98872754407817198 21 0.98872754407817198 25 0.98872754407817198 29 0.71519055581335922 
		33 0.5198069948790518;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 0.00078405189560726285 0.0017106565646827221 
		1 1 1 1 1 0.009748370386660099 0.0056867273524403572 1;
	setAttr -s 11 ".kiy[0:10]"  0 -0.99999970197677612 -0.99999850988388062 
		0 0 0 0 0 -0.99995249509811401 -0.99998384714126587 0;
createNode animCurveTL -n "animCurveTL271";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 5.772482784375633 2 2.6351509302235763 
		4 -0.019514335421655121 6 -0.019514335421655121 8 -0.019514335421655121 12 
		-0.019514335421655121 18 -0.019514335421655121 21 -0.019514335421655121 25 
		-0.019514335421655121 29 -0.43043048903751685 33 -0.72394202659893114;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 0.00023020266962703317 0.00050226034363731742 
		1 1 1 1 1 0.0064894277602434158 0.0037855515256524086 1;
	setAttr -s 11 ".kiy[0:10]"  0 -1 -0.99999988079071045 0 0 0 
		0 0 -0.99997895956039429 -0.99999284744262695 0;
createNode animCurveTL -n "animCurveTL272";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 7.8673837738270382 2 3.5950436951339202 
		4 -0.020013361448308328 6 -0.020013361448308328 8 -0.020013361448308328 12 
		-0.020013361448308328 18 -0.020013361448308328 21 -0.020013361448308328 25 
		-0.020013361448308328 29 0.20422484503638583 33 0.36439499068905612;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 0.000169046048540622 0.00036882772110402584 
		1 1 1 1 1 0.011891274712979794 0.0069369003176689148 1;
	setAttr -s 11 ".kiy[0:10]"  0 -1 -0.99999994039535522 0 0 0 
		0 0 0.99992930889129639 0.99997591972351074 0;
createNode animCurveTA -n "animCurveTA778";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -20.54771245489415 2 -9.4177015528120087 
		4 0 6 0 8 0 12 0 18 0 21 0 25 0 29 4.5486129970886342 33 7.7976222737965317;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 0.3484843373298645 0.62997424602508545 
		1 1 1 1 1 0.95842927694320679 0.89070808887481689 1;
	setAttr -s 11 ".kiy[0:10]"  0 0.93731462955474854 0.77661603689193726 
		0 0 0 0 0 0.28533017635345459 0.45457571744918823 0;
createNode animCurveTA -n "animCurveTA779";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -35.622308552549562 2 -16.326890900535634 
		4 0 6 0 8 0 12 0 18 0 21 0 25 0 29 -17.738743336741955 33 -30.409274105849079;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 0.20968876779079437 0.42380642890930176 
		1 1 1 1 1 0.65261745452880859 0.44895786046981812 1;
	setAttr -s 11 ".kiy[0:10]"  0 0.9777681827545166 0.90575277805328369 
		0 0 0 0 0 -0.75768756866455078 -0.89355295896530151 0;
createNode animCurveTA -n "animCurveTA780";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -49.505494806470452 2 -22.690018095521062 
		4 0 6 0 8 0 12 0 18 0 21 0 25 0 29 -37.834965265094176 33 -64.859940280210893;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 0.15250974893569946 0.31908696889877319 
		1 1 1 1 1 0.37444975972175598 0.22929118573665619 1;
	setAttr -s 11 ".kiy[0:10]"  0 0.98830199241638184 0.94772541522979736 
		0 0 0 0 0 -0.92724722623825073 -0.97335785627365112 0;
createNode animCurveTL -n "animCurveTL273";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  25 -1.2139909955983827 29 -0.86356959702335279 
		33 -0.65311611999272123;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  0.9359748363494873;
	setAttr -s 3 ".kiy[2]"  0.35206687450408936;
createNode animCurveTL -n "animCurveTL274";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  25 2.6075959259075336 29 2.1287405626823119 
		33 2.222264083594911;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  0.00140042370185256;
	setAttr -s 3 ".kiy[2]"  0.99999904632568359;
createNode animCurveTL -n "animCurveTL275";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  25 16.188314819097791 29 16.135806774925189 
		33 16.083298730752592;
createNode animCurveTA -n "animCurveTA781";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  25 -4.4651808712913121 29 1.7467820144588779 
		33 5.4739599453216465;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA782";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  25 9.1496298294511842 29 8.798268801479848 
		33 8.5874521608419823;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA783";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  25 15.907745061866969 29 52.687118000711337 
		33 74.754744621954103;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "animCurveTL276";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  25 1.0478226883521298 29 0.7352276284351108 
		33 0.25368378509166484;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  0.0018141375621780753;
	setAttr -s 3 ".kiy[2]"  -0.99999833106994629;
createNode animCurveTL -n "animCurveTL277";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  25 2.4562957799775118 29 2.0504649648571092 
		33 2.2026421011163611;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  0.0013479042099788785;
	setAttr -s 3 ".kiy[2]"  0.99999910593032837;
createNode animCurveTL -n "animCurveTL278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  25 17.317421545115735 29 16.753622260190049 
		33 16.189822975264367;
createNode animCurveTA -n "animCurveTA784";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  25 3.6967238076545499 29 11.527840628327649 
		33 16.226511010665412;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA785";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  25 -17.905815273786772 29 -12.035909756014521 
		33 -8.5139660854992858;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA786";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  25 -17.044808664904625 29 -49.025545331659288 
		33 -68.213989601412422;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "animCurveTL279";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 2 0 4 0 6 0 8 0 12 0 18 0 21 
		0 25 0 29 -0.060888612384549304 33 -0.245189189189189;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 0.043753877282142639 
		0.010875312611460686 0.0040581570938229561;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 -0.9990423321723938 
		-0.99994087219238281 -0.999991774559021;
createNode animCurveTL -n "animCurveTL280";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 2 0 4 0 6 0 8 0 12 0 18 0 21 
		0 25 0 29 0 33 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL281";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1 2 -1 4 -1 6 -1 8 -1 12 -1 
		18 -1 21 -1 25 -1 29 -1 33 -1;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL282";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 2 0 4 0 6 0 8 0 12 0 18 0 21 
		0 25 0 29 -0.018582123560173549 33 0.062337280601809833;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 0.1420518159866333 
		0.042738951742649078 0.0060665016062557697;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 -0.98985922336578369 
		0.99908626079559326 0.9999815821647644;
createNode animCurveTL -n "animCurveTL283";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 2 0 4 0 6 0 8 0 12 0 18 0 21 
		0 25 0 29 -0.23778209516536314 33 -0.40762644910266188;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 0.011214043945074081 
		0.0065417969599366188 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 -0.99993711709976196 
		-0.99997860193252563 0;
createNode animCurveTL -n "animCurveTL284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1 2 -1 4 -1 6 -1 8 -1 12 -1 
		18 -1 21 -1 25 -1 29 -0.95991982290403843 33 -0.93129112588482243;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 0.066386528313159943 
		0.038781899958848953 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0.99779397249221802 
		0.99924767017364502 0;
createNode animCurveTA -n "animCurveTA787";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 62.637510963932357 2 64.083183492314092 
		4 47.559968188787039 6 -67.792131539496978 8 -92.762398791111991 12 -92.595877449370889 
		18 -103.58646321742303 23 -68.049560481933625 33 25.860811621743338;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.45197179913520813 0.057832289487123489 
		0.054361548274755478 0.41939827799797058 0.86999231576919556 0.6502336859703064 
		0.21608099341392517 0.1992909163236618;
	setAttr -s 9 ".kiy[0:8]"  0 -0.8920322060585022 -0.99832630157470703 
		-0.99852132797241211 -0.90780234336853027 -0.49306529760360718 0.75973427295684814 
		0.97637546062469482 0.97994035482406616;
createNode animCurveTA -n "animCurveTA788";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -2.6073428674072119 2 -17.452000236502361 
		4 -29.625227631973953 6 -27.10559385654599 8 62.140006124938203 12 22.376001670689305 
		18 59.900555116451642 23 -63.407040052440614 33 -78.470385067428694;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.2720872163772583 0.62055355310440063 
		0.082962803542613983 0.22561325132846832 0.99319541454315186 0.23787257075309753 
		0.20273737609386444 0.78517246246337891;
	setAttr -s 9 ".kiy[0:8]"  0 -0.96227258443832397 -0.78416407108306885 
		0.99655264616012573 0.97421693801879883 -0.11645949631929398 -0.97129637002944946 
		-0.97923314571380615 -0.61927717924118042;
createNode animCurveTA -n "animCurveTA789";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -70.410339040713239 2 -79.857241164999749 
		4 -66.897696128230251 6 69.297314869958157 8 65.356218890313173 12 -3.4309763204389219 
		18 -33.811307132468642 23 60.705374916816034 33 -14.204465743022162;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 9 ".kix[0:8]"  0 0.90855807065963745 0.051151212304830551 
		0.057667285203933716 0.1556410938501358 0.18911394476890564 0.31128495931625366 
		0.82523137331008911 0.24705144762992859;
	setAttr -s 9 ".kiy[0:8]"  0 0.4177585244178772 0.9986909031867981 
		0.99833583831787109 -0.98781365156173706 -0.98195517063140869 0.95031660795211792 
		0.56479483842849731 -0.969002366065979;
createNode animCurveTA -n "animCurveTA790";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -83.808571762569912 2 -6.5023039827685221 
		4 45.865508803538361 6 -43.821767397958219 8 -95.437716397796393 12 -55.608371841431328 
		18 -104.7842169990904 23 -61.839062248144273 33 -0.11082275642435294;
createNode animCurveTA -n "animCurveTA791";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -24.50348790292907 2 -12.45907261150033 
		4 -27.369603767159667 6 -41.866784192438274 8 55.972564310993548 12 15.045218595018964 
		18 60.701671665603016 23 -60.55702551287947 33 -73.335602794949779;
createNode animCurveTA -n "animCurveTA792";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 66.76377660925931 2 -23.769801304952651 
		4 -74.992910143220058 6 55.020511381782029 8 59.182821014115724 12 10.454068181153136 
		18 -41.759695376174811 23 60.966270635460852 33 16.632302896146598;
createNode animCurveTA -n "animCurveTA793";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 43.533492033034975 2 53.248344736240192 
		4 61.257580248492559 6 59.885923337858159 8 13.07006849586902 12 37.37060327344804 
		18 13.520144119786524 21 13.520144119786524 24 9.9328762147629011 28 45.007800400928261 
		33 8.5572674112203639;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 0.39581817388534546 0.75487017631530762 
		0.1565801203250885 0.45358279347419739 0.99972242116928101 0.58467215299606323 
		0.9543309211730957 0.39081284403800964 0.99681293964385986 1;
	setAttr -s 11 ".kiy[0:10]"  0 0.91832888126373291 0.65587425231933594 
		-0.98766523599624634 -0.89121413230895996 0.023559363558888435 -0.81126970052719116 
		-0.29875156283378601 0.92047017812728882 -0.079774610698223114 0;
createNode animCurveTA -n "animCurveTA794";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 73.421813693602928 2 75.298977414251667 
		4 73.421813693602928 6 50.895849135732625 8 9.0203515410801671 12 38.904569403859057 
		18 19.816098442803629 21 19.816098442803629 24 9.3794235190435593 27 46.481016311910246 
		33 15.711328223519061;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 0.29875448346138 0.11779623478651047 
		0.69088369607925415 0.87054544687271118 0.66916066408157349 0.73932123184204102 
		0.39483118057250977 0.93835705518722534 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 -0.95433002710342407 -0.99303776025772095 
		-0.72296595573425293 0.49208799004554749 -0.7431178092956543 -0.67335289716720581 
		0.91875368356704712 0.34566757082939148 0;
createNode animCurveTA -n "animCurveTA795";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 14.849434068729675 2 14.849434068729675 
		4 14.849434068729675 6 14.849434068729675 8 14.849434068729675 12 14.849434068729675 
		18 14.849434068729675 21 46.580245708418737 25 25.924873362818666 29 -19.407194126999588 
		33 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[10]"  3;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 0.47630909085273743 
		0.77007091045379639 0.22557438910007477 0.50773465633392334 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0.87927788496017456 
		0.63795828819274902 -0.97422593832015991 -0.86151349544525146 0;
createNode animCurveTA -n "animCurveTA796";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.051608316401883243 2 0.051608316401883222 
		4 0.051608316401883209 6 0.051608316401883209 8 0.051608316401883209 12 0.051608316401883209 
		18 0.051608316401883209 21 69.338987410782579 25 -31.079528420132799 29 -39.82379897811682 
		33 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[10]"  3;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 0.2407802939414978 
		0.3945949375629425 0.13861300051212311 0.4411768913269043 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0.97057962417602539 
		-0.91885519027709961 -0.99034661054611206 0.89742016792297363 0;
createNode animCurveTA -n "animCurveTA797";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.8225462689462448 2 1.8225462689462448 
		4 1.8225462689462448 6 1.8225462689462448 8 1.8225462689462448 12 1.8225462689462448 
		18 1.8225462689462448 21 46.485488943708134 25 -6.829480355792346 29 33.837376891491054 
		33 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[10]"  3;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 0.3591734766960144 
		0.83952754735946655 0.77030700445175171 0.91294753551483154 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0.93327081203460693 
		-0.54331707954406738 -0.63767325878143311 0.40807700157165527 0;
createNode animCurveTA -n "animCurveTA798";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 14.859570486861989 2 14.859570486861985 
		4 14.859570486861982 6 14.859570486861982 8 14.859570486861982 12 14.859570486861982 
		18 41.73305362505554 21 73.102055713924912 25 37.775485820568534 29 -10.775538902299475 
		33 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 0.57929331064224243 0.28305423259735107 
		0.95886886119842529 0.17920790612697601 0.37495651841163635 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0.81511914730072021 0.95910388231277466 
		-0.28384953737258911 -0.98381119966506958 -0.92704242467880249 0;
createNode animCurveTA -n "animCurveTA799";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.052172032759606073 2 0.052172032759606073 
		4 0.052172032759606073 6 0.052172032759606073 8 0.052172032759606073 12 0.052172032759606073 
		18 9.7572732770799497 21 52.578196875405027 25 -36.997017970947923 29 -36.358348933178924 
		33 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 0.89149916172027588 0.31101289391517639 
		0.27492353320121765 0.16931486129760742 0.38170674443244934 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0.45302236080169678 0.95040571689605713 
		-0.96146607398986816 -0.9855620265007019 0.92428350448608398 0;
createNode animCurveTA -n "animCurveTA800";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.8225558374727127 2 1.8225558374727127 
		4 1.8225558374727127 6 1.8225558374727127 8 1.8225558374727127 12 1.8225558374727127 
		18 10.373625078774515 21 71.889597376914111 25 -0.33517985117778892 29 27.09614101323665 
		33 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 0.91269421577453613 0.23825392127037048 
		0.78048157691955566 0.32283252477645874 0.99975943565368652 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0.40864327549934387 0.97120290994644165 
		-0.62517881393432617 -0.94645613431930542 0.021932194009423256 0;
createNode animCurveTA -n "animCurveTA801";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -60.679962459776895 2 -60.679981229888448 
		4 -60.680000000000007 6 -60.680000000000007 12 -68.646546621500605 21 -69.437669165106229 
		25 -95.509156876781361 29 -60.844108145446022 33 10.423754966968488;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[0:8]"  0 1 1 0.88670474290847778 0.95631289482116699 
		0.67875105142593384 0.87159520387649536 0.14275440573692322 0.076304338872432709;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 -0.46233609318733215 -0.29234516620635986 
		-0.73436844348907471 0.49022629857063293 0.98975813388824463 0.99708455801010132;
createNode animCurveTA -n "animCurveTA802";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 12.355514613247319 2 12.355777531074544 
		4 12.356 6 12.356 12 12.015850196970904 21 13.535064792336808 25 8.739667321749879 
		29 15.53146283203909 33 27.7228482558439;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[0:8]"  0 1 1 0.99975228309631348 0.99915409088134766 
		0.99140608310699463 0.99157124757766724 0.62700265645980835 0.44143593311309814;
	setAttr -s 9 ".kiy[0:8]"  0 6.3536979723721743e-005 2.9121114494046196e-005 
		-0.022257236763834953 0.041122313588857651 -0.13082024455070496 0.1295626163482666 
		0.77901715040206909 0.89729279279708862;
createNode animCurveTA -n "animCurveTA803";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 13.110465504305045 2 13.110465504305044 
		4 13.110465504305042 6 13.110465504305042 12 10.092999771388492 21 7.4677155128191046 
		25 7.9429249099341375 29 10.700531849989124 33 21.576484776388224;
	setAttr -s 9 ".kit[0:8]"  1 9 9 9 9 9 9 
		9 1;
	setAttr -s 9 ".kot[8]"  5;
	setAttr -s 9 ".kix[0:8]"  0 1 1 0.98105084896087646 0.981148362159729 
		0.99627131223678589 0.9783400297164917 0.7461388111114502 0.34273472428321838;
	setAttr -s 9 ".kiy[0:8]"  0 0 0 -0.19375035166740417 -0.1932559460401535 
		-0.086275301873683929 0.2070043683052063 0.66579043865203857 0.93943220376968384;
createNode animCurveTA -n "animCurveTA804";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -20.551139383726671 2 -20.551139383726671 
		4 -20.551139383726671 6 -20.551139383726671 8 -20.551139383726671 12 -20.551139383726671 
		18 -20.551139383726671 21 -20.551139383726671 25 -20.621969962535726 29 -8.5983901363363522 
		33 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 0.99998599290847778 
		0.78762084245681763 0.59531164169311523 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 -0.0052980403415858746 
		0.61616021394729614 0.80349493026733398 0;
createNode animCurveTA -n "animCurveTA805";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 3.0722483700821352 2 3.0722483700821352 
		4 3.0722483700821352 6 3.0722483700821352 8 3.0722483700821352 12 3.0722483700821352 
		18 3.0722483700821352 21 3.0722483700821352 25 2.5283412887140928 29 1.0081499367684186 
		33 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 0.99917340278625488 
		0.99099773168563843 0.9865831732749939 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 -0.04065052792429924 
		-0.13387876749038696 -0.16325934231281281 0;
createNode animCurveTA -n "animCurveTA806";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 19.857676546395723 2 32.687308405152443 
		4 40.385087435566923 6 40.385087435566923 8 40.385087435566923 12 40.385087435566923 
		18 40.385087435566923 21 40.385087435566923 25 38.935365965373954 29 31.89896333167103 
		33 27.080064458283051;
	setAttr -s 11 ".kit[0:10]"  1 9 3 3 3 9 3 
		9 9 9 1;
	setAttr -s 11 ".kot[2:10]"  3 3 3 9 3 9 9 
		9 5;
	setAttr -s 11 ".kix[0:10]"  0 0.3487870991230011 1 1 1 1 1 
		0.9941718578338623 0.87420922517776489 0.79006004333496094 1;
	setAttr -s 11 ".kiy[0:10]"  0 0.93720197677612305 0 0 0 0 0 
		-0.10780692100524902 -0.48554936051368713 -0.61302947998046875 0;
createNode animCurveTA -n "animCurveTA807";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA808";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA809";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA810";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 12 0 21 0 25 0 29 0 33 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA811";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 12 0 21 0 25 0 29 0 33 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA812";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.085861696683486 2 11.124506342384869 
		12 -9.5337869981145538 21 -16.408691529818391 25 -16.408691529818391 29 -9.3713214273346779 
		33 13.994403295754113;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 0.72741585969924927 0.79663968086242676 
		0.96373587846755981 0.90828520059585571 0.44903072714805603 0.17574992775917053;
	setAttr -s 7 ".kiy[0:6]"  0 -0.68619692325592041 -0.60445451736450195 
		-0.26685786247253418 0.41835147142410278 0.89351630210876465 0.98443484306335449;
createNode animCurveTA -n "animCurveTA813";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 12 0 21 0 25 0 29 0 33 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA814";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 12 0 21 0 25 0 29 0 33 
		0;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA815";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.085861696683486 2 12.127560748252574 
		12 11.458979054182175 21 11.592062602249253 25 11.592062602249253 29 12.354066213588421 
		33 13.994403295754109;
	setAttr -s 7 ".kit[0:6]"  1 9 9 9 9 9 1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[0:6]"  0 0.99962610006332397 0.99989110231399536 
		0.99998563528060913 0.99875867366790771 0.98786348104476929 0.94827407598495483;
	setAttr -s 7 ".kiy[0:6]"  0 -0.027342690154910088 -0.014755561016499996 
		0.0053601064719259739 0.049811109900474548 0.15532457828521729 0.3174528181552887;
createNode animCurveTA -n "animCurveTA816";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 2 0 4 0 6 0 8 0 12 0 18 0 21 
		0 25 0 29 0 33 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA817";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 2 0 4 0 6 0 8 0 12 0 18 0 21 
		0 25 0 29 0 33 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA818";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.43065494947832278 2 10.347951364760274 
		4 16.815115114639937 6 16.815115114639937 8 16.815115114639937 12 16.815115114639937 
		18 16.815115114639937 21 16.815115114639937 25 16.815115114639937 29 23.288083622834453 
		33 27.911632519594587;
	setAttr -s 11 ".kit[0:10]"  1 9 3 3 3 9 3 
		9 9 9 1;
	setAttr -s 11 ".kot[2:10]"  3 3 3 9 3 9 9 
		9 5;
	setAttr -s 11 ".kix[0:10]"  0 0.40501588582992554 1 1 1 1 1 
		1 0.92077618837356567 0.80912363529205322 1;
	setAttr -s 11 ".kiy[0:10]"  0 0.91430962085723877 0 0 0 0 0 
		0 0.39009124040603638 0.58763843774795532 0;
createNode animCurveTA -n "animCurveTA819";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 2 0 4 0 6 0 8 0 12 0 18 0 21 
		0 25 0 29 0 33 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA820";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 2 0 4 0 6 0 8 0 12 0 18 0 21 
		0 25 0 29 0 33 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA821";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 2 0 4 0 6 0 8 0 12 0 18 0 21 
		0 25 0 29 0 33 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA822";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -35.707608158512564 2 -19.928061607697675 
		4 -7.8488318321418218 6 -7.8488318321418218;
createNode animCurveTA -n "animCurveTA823";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 7.6176588389656468 2 6.2559881819480347 
		4 0.28957704637835974 6 0.28957704637835974;
createNode animCurveTA -n "animCurveTA824";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -9.9496488329750612 2 -0.88229308790976269 
		4 -0.19814059001683229 6 -0.19814059001683229;
createNode animCurveTA -n "animCurveTA825";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 13.080701152040394 2 7.3211970338286116 
		4 2.1460408398897917 6 1.368371505523315 8 1.4542626308673925 12 2.3133856289641028 
		18 2.7848723431010085 21 2.7848723431010085 25 2.726234938035355 29 1.1310447823146981 
		33 0;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
createNode animCurveTA -n "animCurveTA826";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 5.2771833863571764 2 1.9606436812038766 
		4 2.0624487991120239 6 2.3046095840573373 8 2.2465907498595747 12 1.835303679842897 
		18 1.0320883585182181 21 1.0320883585182181 25 1.1922905093535756 29 0.51013789151395794 
		33 0;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
createNode animCurveTA -n "animCurveTA827";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -12.430131853727808 2 1.4744476681810397 
		4 9.9122318299174008 6 -24.335372748829869 8 -21.681719082039709 12 10.963497901140434 
		18 42.006015419987435 21 42.006015419987435 25 35.745889546816734 29 9.1956975103513834 
		33 0;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[10]"  0.34612613916397095;
	setAttr -s 11 ".kiy[10]"  0.93818801641464233;
createNode animCurveTA -n "animCurveTA828";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 2 0 4 0 6 0 8 0 12 0 18 0 21 
		0 25 0 29 1.270040601525988 33 -2.0270270270270276;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 0.99656301736831665 
		0.99131399393081665 0.61441761255264282;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0.082838267087936401 
		-0.13151626288890839 -0.78898096084594727;
createNode animCurveTA -n "animCurveTA829";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 2 0 4 0 6 0 8 0 12 0 18 0 21 
		0 25 0 29 3.2734632449649448 33 -2.4108692476260059;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 0.97781002521514893 
		0.98777872323989868 0.37785211205482483;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0.20949351787567139 
		-0.15586261451244354 -0.92586594820022583;
createNode animCurveTA -n "animCurveTA830";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 2 0 4 0 6 0 8 0 12 0 18 0 21 
		0 25 0 29 5.5836590003045181 33 13.0432985235726;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 0.93924522399902344 
		0.76055574417114258 0.68613415956497192;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0.34324681758880615 
		0.64927268028259277 0.72747498750686646;
createNode animCurveTA -n "animCurveTA831";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.4604146385263861 2 -3.7328250424494209 
		4 -9.9121571890715732 6 -9.9121571890715732;
createNode animCurveTA -n "animCurveTA832";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 6.6410702871168432 2 6.1183128835401339 
		4 6.1183128835401304 6 6.1183128835401304;
createNode animCurveTA -n "animCurveTA833";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 10.744847792553902 2 20.705857363312234 
		4 20.705857363312237 6 20.705857363312237;
createNode animCurveTA -n "animCurveTA834";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -20.551139383726671 2 -20.551139383726671 
		4 -20.551139383726671 6 -20.551139383726671 8 -20.551139383726671 12 -20.551139383726671 
		18 -20.551139383726671 21 -20.551139383726671 25 -19.82448629783994 29 -8.1996483039884609 
		33 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 0.99852609634399414 
		0.77767086029052734 0.61044520139694214 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0.054273411631584167 
		0.62867164611816406 0.79205846786499023 0;
createNode animCurveTA -n "animCurveTA835";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 3.0722483700821352 2 3.0722483700821352 
		4 3.0722483700821352 6 3.0722483700821352 8 3.0722483700821352 12 3.0722483700821352 
		18 3.0722483700821352 21 3.0722483700821352 25 -6.3228915097060865 29 -3.4174664624416713 
		33 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 0.81817162036895752 
		0.92041343450546265 0.92400401830673218 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 -0.57497406005859375 
		-0.39094638824462891 0.38238269090652466 0;
createNode animCurveTA -n "animCurveTA836";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 19.857676546395723 2 54.87380593393241 
		4 75.883483181626644 6 75.883244218680389 8 75.883244218680389 12 75.883483181626644 
		18 75.883244218680389 21 75.883244218680389 25 50.760000989689736 29 38.5567008265635 
		33 33.429092416277157;
	setAttr -s 11 ".kit[0:10]"  1 9 3 3 3 9 3 
		9 9 9 1;
	setAttr -s 11 ".kot[2:10]"  3 3 3 9 3 9 9 
		9 5;
	setAttr -s 11 ".kix[0:10]"  0 0.13510546088218689 1 1 1 1 1 
		0.46976602077484131 0.37882241606712341 0.66130268573760986 1;
	setAttr -s 11 ".kiy[0:10]"  0 0.99083119630813599 0 0 0 0 0 
		-0.88279098272323608 -0.92546939849853516 -0.75011914968490601 0;
createNode animCurveTA -n "animCurveTA837";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -60.679962459776895 2 -60.679962459776895 
		4 -60.679962459776895 6 -60.679962459776895 8 -60.679962459776895 12 -60.679962459776895 
		18 -60.679962459776895 21 -60.679962459776895 25 -60.679962459776895 29 -44.11238497268608 
		33 8.2533422302317234;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 0.67793804407119751 
		0.21639545261859894 0.080515041947364807;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0.7351190447807312 
		0.97630578279495239 0.99675339460372925;
createNode animCurveTA -n "animCurveTA838";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 12.355514613247319 2 12.355514613247319 
		4 12.355514613247321 6 12.355514613247321 8 12.355514613247321 12 12.355514613247321 
		18 12.355514613247321 21 12.355514613247321 25 12.355514613247321 29 16.143961949700888 
		33 23.263402056531085;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 0.97060811519622803 
		0.81387436389923096 0.5957978367805481;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0.24066548049449921 
		0.58104085922241211 0.80313444137573242;
createNode animCurveTA -n "animCurveTA839";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 13.110465504305045 2 13.110465504305044 
		4 13.110465504305042 6 13.110465504305042 8 13.110465504305042 12 13.110465504305042 
		18 13.110465504305042 21 13.110465504305042 25 13.110465504305042 29 13.312949452726679 
		33 20.166277752815617;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 0.99991220235824585 
		0.90786838531494141 0.43858695030212402;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0.013251380063593388 
		0.41925528645515442 0.89868873357772827;
createNode animCurveTA -n "animCurveTA840";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 2 0 4 0 6 0 8 0 12 0 18 0 21 
		0 25 0 29 0 33 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA841";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 2 0 4 0 6 0 8 0 12 0 18 0 21 
		0 25 0 29 0 33 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[10]"  5;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA842";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.43065494947832278 2 10.48005827846732 
		4 17.026486028044062 6 17.026486028044062 8 17.026486028044062 12 17.026486028044062 
		18 17.026486028044062 21 17.026486028044062 25 17.026486028044062 29 17.1592707255354 
		33 17.254116939558369;
	setAttr -s 11 ".kit[0:10]"  1 9 3 3 3 9 3 
		9 9 9 1;
	setAttr -s 11 ".kot[2:10]"  3 3 3 9 3 9 9 
		9 5;
	setAttr -s 11 ".kix[0:10]"  0 0.40090417861938477 1 1 1 1 1 
		1 0.9999622106552124 0.99988901615142822 1;
	setAttr -s 11 ".kiy[0:10]"  0 0.91611999273300171 0 0 0 0 0 
		0 0.0086904102936387062 0.01489675510674715 0;
createNode animCurveTA -n "animCurveTA843";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 1.5246827226067685 12 0.71267184627082159 
		18 0.67391851610520792 23 0 29 0 33 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA844";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 2.4056993198888903 12 0.56568474759276766 
		18 0.61133866217104205 23 0 29 0 33 0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA845";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 7.0222676051454389 7 -26.255521795947523 
		12 36.926536539247046 18 33.154921915654533 23 -26.86280499084403 29 21.74444833540381 
		33 0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA846";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.0853750031781717e-015 7 -1.7246148637282368 
		12 0.82744191513868348 18 0.4028508836256261 23 0 29 0 33 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA847";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 7.0425273117337879 12 0.37846231743247505 
		18 0.81584681463186515 23 0 29 0 33 0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA848";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 14.448896204908987 8 -52.729892846101755 
		13 36.925751194316234 18 4.5364717448465255 18.005 36.925751194316234 24 
		-52.111927718193535 30 22.291673846906427 34 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA849";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 -4.8479044990167308 12 0.87969678295163023 
		18 0.48371560388978996 23 0 29 0 33 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA850";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 -3.5590173614152056 12 0.23242569982137146 
		18 0.77066024686484236 23 0 29 0 33 0;
	setAttr -s 7 ".kit[6]"  3;
	setAttr -s 7 ".kot[6]"  3;
createNode animCurveTA -n "animCurveTA851";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  2 6.6660296646964277 9 -25.118530099954718 
		14 36.924802662595773 18 3.7792306495862502 18.005 36.924802662595773 25 
		-55.051051778020259 31 20.588421051888908 35 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
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
connectAttr "mrg_jump_dash_take_offSource.st" "clipLibrary1.st[0]";
connectAttr "mrg_jump_dash_take_offSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL244.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL245.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "mrg_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "mrg_Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr"
		;
connectAttr "animCurveTU49.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU50.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU51.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU52.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU53.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU54.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU55.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU56.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "mrg_Hoop_Root_rotateX.a" "clipLibrary1.cel[0].cev[14].cevr"
		;
connectAttr "mrg_Hoop_Root_rotateY.a" "clipLibrary1.cel[0].cev[15].cevr"
		;
connectAttr "mrg_Hoop_Root_rotateZ.a" "clipLibrary1.cel[0].cev[16].cevr"
		;
connectAttr "mrg_Hoop_Root_translateX.a" "clipLibrary1.cel[0].cev[17].cevr"
		;
connectAttr "mrg_Hoop_Root_translateY.a" "clipLibrary1.cel[0].cev[18].cevr"
		;
connectAttr "mrg_Hoop_Root_translateZ.a" "clipLibrary1.cel[0].cev[19].cevr"
		;
connectAttr "Right_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[20].cevr"
		;
connectAttr "Right_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[21].cevr"
		;
connectAttr "Right_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[22].cevr"
		;
connectAttr "animCurveTA728.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA729.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA730.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "Left_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[26].cevr"
		;
connectAttr "Left_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[27].cevr"
		;
connectAttr "Left_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[28].cevr"
		;
connectAttr "animCurveTA731.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA732.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA733.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA734.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA735.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA736.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA737.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA738.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA739.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA740.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA741.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA742.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA743.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA744.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA745.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL258.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL259.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL260.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL261.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL262.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL263.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "Character_Hoop_translateX.a" "clipLibrary1.cel[0].cev[50].cevr"
		;
connectAttr "Character_Hoop_translateY.a" "clipLibrary1.cel[0].cev[51].cevr"
		;
connectAttr "Character_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[52].cevr"
		;
connectAttr "animCurveTA746.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA747.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA748.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA749.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA750.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA751.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA752.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA753.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA754.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA755.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA756.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA757.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA758.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA759.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA760.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA761.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA762.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA763.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA764.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA765.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA766.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA767.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA768.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA769.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA770.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA771.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA772.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA773.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA774.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL267.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL268.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL269.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA775.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA776.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA777.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL270.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL271.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL272.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA778.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA779.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA780.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL273.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL274.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL275.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA781.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA782.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA783.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL276.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL277.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL278.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA784.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA785.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA786.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL279.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL280.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL281.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL282.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL283.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL284.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA787.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA788.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA789.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA790.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA791.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA792.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA793.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA794.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA795.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA796.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA797.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA798.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA799.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA800.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA801.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA802.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA803.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA804.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA805.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA806.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA807.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA808.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA809.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA810.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA811.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA812.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA813.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA814.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA815.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA816.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA817.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA818.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA819.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA820.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA821.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA822.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA823.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA824.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA825.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA826.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA827.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA828.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA829.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA830.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA831.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA832.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA833.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA834.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA835.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA836.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA837.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA838.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA839.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA840.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA841.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA842.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr "animCurveTA843.a" "clipLibrary1.cel[0].cev[168].cevr";
connectAttr "animCurveTA844.a" "clipLibrary1.cel[0].cev[169].cevr";
connectAttr "animCurveTA845.a" "clipLibrary1.cel[0].cev[170].cevr";
connectAttr "animCurveTA846.a" "clipLibrary1.cel[0].cev[171].cevr";
connectAttr "animCurveTA847.a" "clipLibrary1.cel[0].cev[172].cevr";
connectAttr "animCurveTA848.a" "clipLibrary1.cel[0].cev[173].cevr";
connectAttr "animCurveTA849.a" "clipLibrary1.cel[0].cev[174].cevr";
connectAttr "animCurveTA850.a" "clipLibrary1.cel[0].cev[175].cevr";
connectAttr "animCurveTA851.a" "clipLibrary1.cel[0].cev[176].cevr";
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
// End of mrg_jump_dash_take_off.ma
