//Maya ASCII 4.0 scene
//Name: ndr_crash.ma
//Last modified: Tue, Jun 17, 2003 03:48:56 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "ndr_crashSource";
	setAttr ".ihi" 0;
	setAttr ".du" 25;
	setAttr ".ci" no;
createNode animCurveTL -n "ndr_Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 1;
createNode animCurveTL -n "ndr_Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTL -n "ndr_Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0.995;
createNode animCurveTL -n "ndr_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0.46000000000000002;
createNode animCurveTL -n "ndr_Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0.7320000000000001;
createNode animCurveTA -n "ndr_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTU -n "ndr_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTU -n "ndr_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTU -n "ndr_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTU -n "ndr_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTU -n "ndr_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTU -n "ndr_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTU -n "Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTU -n "Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
createNode animCurveTA -n "ndr_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTL -n "ndr_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTL -n "ndr_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTL -n "ndr_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTL -n "ndr_Right_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 1.1582036071592778;
createNode animCurveTL -n "ndr_Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0.8024274637299138;
createNode animCurveTL -n "ndr_Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 1.6023458233856847;
createNode animCurveTA -n "ndr_Right_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -2.7149195703006082;
createNode animCurveTA -n "ndr_Right_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -9.448854147766081;
createNode animCurveTA -n "ndr_Right_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 2.9042146334359309;
createNode animCurveTL -n "ndr_Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 1.635760016530293;
createNode animCurveTL -n "ndr_Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0.79733745153385938;
createNode animCurveTL -n "ndr_Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 1.6031411449878863;
createNode animCurveTA -n "ndr_Left_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_Left_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 14.260733409455984;
createNode animCurveTA -n "ndr_Left_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTL -n "ndr_Right_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -0.011621961304049206;
createNode animCurveTL -n "ndr_Right_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0.53592894662340362;
createNode animCurveTL -n "ndr_Right_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 1.1714982742260704;
createNode animCurveTL -n "ndr_Left_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -0.028577078352958335;
createNode animCurveTL -n "ndr_Left_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0.6265256146554018;
createNode animCurveTL -n "ndr_Left_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 1.1827937027824305;
createNode animCurveTL -n "ndr_Character_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 1.4056785302309036;
createNode animCurveTL -n "ndr_Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0.96452787963755071;
createNode animCurveTL -n "ndr_Character_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 1.0057239815788857;
createNode animCurveTA -n "ndr_Character_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -19.688418588621207 2 -17.137625437997748 
		4 -13.619632319071798 7 -13.619632319071798 11 -16.952628778258561 15 -19.981663380635595 
		19 -19.688418588621207 25 -19.688418588621207;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 3 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 3 9 
		3;
createNode animCurveTA -n "ndr_Character_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.6085540494966313 2 -1.6085540494966333 
		4 -3.6312922951088162 7 -3.6312922951088162 11 -1.6085540494966326 25 -1.6085540494966313;
	setAttr -s 6 ".kit[0:5]"  3 1 9 9 1 3;
	setAttr -s 6 ".kot[0:5]"  3 1 9 9 1 3;
	setAttr -s 6 ".kix[1:5]"  0.99893945455551147 0.978293776512146 
		0.98874694108963013 0.9999697208404541 1;
	setAttr -s 6 ".kiy[1:5]"  -0.046043023467063904 -0.2072228342294693 
		0.1495978832244873 0.0077811875380575657 0;
	setAttr -s 6 ".kox[1:5]"  0.99893945455551147 0.978293776512146 
		0.98874694108963013 0.9999697208404541 1;
	setAttr -s 6 ".koy[1:5]"  -0.046043012291193008 -0.2072228342294693 
		0.1495978832244873 0.0077811810187995434 0;
createNode animCurveTA -n "ndr_Character_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.23076428718713959 2 0.23076428718713968 
		4 -1.7195623893478855 7 -1.7195623893478855 11 0.23076428718713984 25 0.23076428718713959;
	setAttr -s 6 ".kit[0:5]"  3 1 9 9 1 3;
	setAttr -s 6 ".kot[0:5]"  3 1 9 9 1 3;
	setAttr -s 6 ".kix[1:5]"  0.9995383620262146 0.97977405786514282 
		0.98952579498291016 0.9998466968536377 1;
	setAttr -s 6 ".kiy[1:5]"  -0.03038165345788002 -0.20010682940483093 
		0.14435607194900513 0.017510505393147469 0;
	setAttr -s 6 ".kox[1:5]"  0.9995383620262146 0.97977405786514282 
		0.98952579498291016 0.9998466968536377 1;
	setAttr -s 6 ".koy[1:5]"  -0.030381662771105766 -0.20010682940483093 
		0.14435607194900513 0.017510514706373215 0;
createNode animCurveTA -n "ndr_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -5.6803276403432976;
createNode animCurveTA -n "ndr_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -6.1570151121354488;
createNode animCurveTA -n "ndr_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 5.3480278027016865;
createNode animCurveTA -n "ndr_L_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_L_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_L_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTL -n "Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -0.07092131407192824 1 -0.086107380126388189 
		2 -0.10271365489352065 3 -0.10606532098324578 4 -0.10826439697437139 5 -0.10904343683050172 
		6 -0.10930354142056842 7 -0.10909431793989455 8 -0.1037312478704888 9 -0.09189724869963925 
		10 -0.079103434348953949 11 -0.071849331203018216 12 -0.070190101523967027 
		13 -0.06929113748439733 14 -0.068912784735743748 15 -0.068820585926472402 
		16 -0.06903380581319965 17 -0.06955832624081125 18 -0.070140986439680836 
		19 -0.070542782352964364 20 -0.070732684503673232 21 -0.070848081362915427 
		22 -0.070906868782354873 23 -0.070926804185877476 24 -0.07092566763223232 
		25 -0.07092131407192824;
createNode animCurveTL -n "Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -0.33020004307485273 1 -0.27905905027964462 
		2 -0.20421278559853406 3 -0.11968831562960702 4 -0.052146370122702949 5 -0.031576105224045393 
		6 -0.020949577556608822 7 -0.018176297830013163 8 -0.041262649584374866 9 
		-0.09990349046097631 10 -0.17766069528415621 11 -0.25034413500855851 12 -0.31587831731964788 
		13 -0.38303111755843688 14 -0.43644284481945217 15 -0.45948804356869105 16 
		-0.44264338643370627 17 -0.40153835532987686 18 -0.35721435866045953 19 -0.32975322128877516 
		20 -0.3210610305294867 21 -0.31870654427294592 22 -0.3205542546661348 23 
		-0.32449559770255981 24 -0.32841897774631923 25 -0.33020004307485273;
createNode animCurveTL -n "Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0.85072115135335824 1 0.84303243798217742 
		2 0.82103734375768467 3 0.75191669089624069 4 0.67556047227376914 5 0.65298375044139223 
		6 0.64238326036492899 7 0.64180280896812403 8 0.66522452271007282 9 0.71294394106257319 
		10 0.76288053721219184 11 0.79952539797290056 12 0.82713284278288302 13 0.85054149874139828 
		14 0.8653590475845081 15 0.87026543261808897 16 0.86844485004255989 17 0.86353348661391094 
		18 0.85625796853627845 19 0.85060903137048982 20 0.84860105372648265 21 0.84804337386201978 
		22 0.84848593833612329 23 0.84941315807337237 24 0.85031702140940757 25 0.85072115135335824;
createNode animCurveTA -n "Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -29.385780402081803 1 -34.837528238601593 
		2 -44.430786002527292 3 -60.83919828300786 4 -89.98229601555434 5 -102.20864977142995 
		6 -107.79742479071122 7 -107.7163613460723 8 -93.557937140653749 9 -66.890301729290059 
		10 -46.66630830548273 11 -36.401126990281988 12 -30.682407335364424 13 -26.585718259973135 
		14 -24.115969345579199 15 -23.2089962764266 16 -23.861685469228462 17 -25.611670925728212 
		18 -27.824044689383484 19 -29.41174125613097 20 -29.956638110067207 21 -30.108132780085032 
		22 -29.989515821263883 23 -29.739622847059778 24 -29.495279426733635 25 -29.385780402081803;
createNode animCurveTA -n "Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 62.958174689347601 1 65.408105361002328 
		2 69.060225045109405 3 75.140321552493987 4 79.231636813036474 5 79.606012781011941 
		6 79.467188298034557 7 79.219319361710063 8 79.040950209109582 9 77.138009099375267 
		10 72.783928587823823 11 68.265134439536695 12 64.179001563187498 13 59.987688101517051 
		14 56.689493231724903 15 55.282620348792577 16 56.276922105677023 17 58.70271236330121 
		18 61.324297802911168 19 62.953215376415244 20 63.474276139382027 21 63.620695447873473 
		22 63.518106710928663 23 63.290508765226804 24 63.062163996088749 25 62.958174689347601;
createNode animCurveTA -n "Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 65.616366301272251 1 60.878150618546989 
		2 52.324215726855648 3 37.481026820969063 4 9.7997762518920926 5 -2.0619168662195091 
		6 -7.567123000327439 7 -7.6133457082460856 8 5.8438152228379554 9 31.154395130846563 
		10 49.893393025994222 11 59.171824410743248 12 64.378170482396925 13 67.999316278505518 
		14 70.112764626849042 15 70.869337315850245 16 70.325701489359432 17 68.848202276537094 
		18 66.935631927184787 19 65.541009721469152 20 65.065899836677602 21 64.942013745421036 
		22 65.059267300439103 23 65.291972890092026 24 65.516409854702488 25 65.616366301272251;
createNode animCurveTL -n "Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0.090003941371312804 1 0.075499452811885706 
		2 0.059301330380023672 3 0.056224375604025739 4 0.053868411296818408 5 0.053001935001028358 
		6 0.05276768244296761 7 0.053073741379280649 8 0.058426693487001559 9 0.069971783860019635 
		10 0.08224472714030355 11 0.089120224172160076 12 0.090690223439671341 13 
		0.091540495458887969 14 0.091898992121070652 15 0.091986720021701565 16 0.091784705809428435 
		17 0.091288257857647187 18 0.090737566272968029 19 0.090358482788082881 20 
		0.090179813103001438 21 0.090071529153028115 22 0.09001663639231651 23 0.089998307366623467 
		24 0.089999709773478001 25 0.090003941371312804;
createNode animCurveTL -n "Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -0.36630348986033462 1 -0.31415146953596917 
		2 -0.23540913054308202 3 -0.13832707691277946 4 -0.060109923172333275 5 -0.038003881973632796 
		6 -0.028050552066332932 7 -0.027382592264063615 8 -0.056895322280393137 9 
		-0.12672286720227516 10 -0.21503971705777883 11 -0.29133013560768251 12 -0.35423791797743109 
		13 -0.41796907271452477 14 -0.46835343500221593 15 -0.49006866345577144 16 
		-0.47417703275721557 17 -0.4352085461043283 18 -0.3930156911946221 19 -0.36672594984493223 
		20 -0.35826164990395953 21 -0.35582744294474195 22 -0.35740874933397704 23 
		-0.36101311027181959 24 -0.36464613121054384 25 -0.36630348986033462;
createNode animCurveTL -n "Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0.80887129595106577 1 0.82015165947029334 
		2 0.81931167819617334 3 0.74169428466058052 4 0.64932908795859245 5 0.62336788376826779 
		6 0.61377135185254139 7 0.61731923787662402 8 0.64379843203706755 9 0.68980301915892595 
		10 0.73370467954009044 11 0.76360166609223457 12 0.78627887818722908 13 0.80567838905999456 
		14 0.81789377867069935 15 0.82184438542728477 16 0.82086300542101731 17 0.81802318342765123 
		18 0.81310508146015226 19 0.80897232970951272 20 0.80742708722088496 21 0.80696222491704139 
		22 0.80725554259389387 23 0.80792085607070241 24 0.8085770048319284 25 0.80887129595106577;
createNode animCurveTA -n "Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -35.087478750046394 1 -33.17825904596144 
		2 -30.584424106571252 3 -39.08237198375312 4 -122.66440714281966 5 -158.96027836902704 
		6 -169.17702177588077 7 -171.90467897069445 8 -138.3552532749047 9 -52.689675672568917 
		10 -39.801104601151224 11 -36.850626594940167 12 -35.448595773353411 13 -34.451791920344199 
		14 -33.844019549585404 15 -33.614504717547113 16 -33.755709110046276 17 -34.149973571798292 
		18 -34.667536753722224 19 -35.05569567899586 20 -35.197866825488106 21 -35.244646693309804 
		22 -35.223847550636201 23 -35.168811162352682 24 -35.112892742750468 25 -35.087478750046394;
createNode animCurveTA -n "Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -66.472370131839625 1 -69.807220911154729 
		2 -74.945660328554368 3 -82.635241939383448 4 -87.412323182652997 5 -86.235823672368625 
		6 -85.518511788417953 7 -85.651134535244779 8 -87.538502224399849 9 -84.598765708399029 
		10 -78.083505630519483 11 -72.478917226625157 12 -67.815389095186973 13 -63.226673541518004 
		14 -59.695338280270668 15 -58.204502003359224 16 -59.261843103571216 17 -61.856145980803184 
		18 -64.691472280527961 19 -66.474091711736008 20 -67.047375639675394 21 -67.207569576308686 
		22 -67.092474680987053 23 -66.839783354545943 24 -66.587177937228248 25 -66.472370131839625;
createNode animCurveTA -n "Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -83.863669147879833 1 -85.465160310252514 
		2 -87.640260859441725 3 -78.482329193602453 4 5.717461188678457 5 42.121377476847691 
		6 52.302801564434901 7 54.89648080350441 8 20.948920575195956 9 -65.40715611057081 
		10 -78.990235146156849 11 -82.25713871890656 12 -83.607915241998555 13 -84.517420776321828 
		14 -85.041274450259309 15 -85.23320056598439 16 -85.116416289346006 17 -84.774357656984805 
		18 -84.307722510149219 19 -83.945044619169238 20 -83.803084842762487 21 -83.74823534822788 
		22 -83.756367201609137 23 -83.797762062059775 24 -83.842740948377681 25 -83.863669147879833;
createNode animCurveTL -n "ndr_Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 1.5799571818574061;
createNode animCurveTL -n "ndr_Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 2.1296110275135671;
createNode animCurveTL -n "ndr_Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 2.0696046407532309;
createNode animCurveTA -n "ndr_Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 315.11092321192655;
createNode animCurveTA -n "ndr_Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 71.289995585927571;
createNode animCurveTA -n "ndr_Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 410.61971912325362;
createNode animCurveTL -n "ndr_Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 2.5330905047330146;
createNode animCurveTL -n "ndr_Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 2.0768417541934041;
createNode animCurveTL -n "ndr_Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 2.0481292103665369;
createNode animCurveTA -n "ndr_Left_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -36.332671187907607;
createNode animCurveTA -n "ndr_Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -76.683613894212968;
createNode animCurveTA -n "ndr_Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -83.339653964504663;
createNode animCurveTL -n "ndr_Left_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0.578730476483856;
createNode animCurveTL -n "ndr_Left_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -1.3751169572549602;
createNode animCurveTL -n "ndr_Left_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -0.21739896228115529;
createNode animCurveTL -n "ndr_Right_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -0.48508072212835623;
createNode animCurveTL -n "ndr_Right_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -1.3461376073222053;
createNode animCurveTL -n "ndr_Right_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -0.22135527095932556;
createNode animCurveTA -n "ndr_R_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 12.253734489678925;
createNode animCurveTA -n "ndr_R_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -65.746751280844961;
createNode animCurveTA -n "ndr_R_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_L_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -0.061808866237337522;
createNode animCurveTA -n "ndr_L_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -59.058178941076754;
createNode animCurveTA -n "ndr_L_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 16.579147429757843;
createNode animCurveTA -n "ndr_R_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 8.5572674112203622;
createNode animCurveTA -n "ndr_L_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 15.711328223519057;
createNode animCurveTA -n "ndr_R_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_R_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_R_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_L_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_L_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_L_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -10.597736793341934;
createNode animCurveTA -n "ndr_Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 64.03458729655091;
createNode animCurveTA -n "ndr_Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -3.5980180414270846;
createNode animCurveTA -n "ndr_Middle_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_Middle_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_Middle_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 56.683882055276051;
createNode animCurveTA -n "ndr_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 13.994403295754109;
createNode animCurveTA -n "ndr_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 13.994403295754109;
createNode animCurveTA -n "ndr_Middle_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_Middle_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_Middle_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 44.839776244285055;
createNode animCurveTA -n "ndr_Jaw_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_Jaw_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_Jaw_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_Spine_2_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.55766507474896432 2 -0.83773622806904913 
		4 -0.92216557055208959 7 -0.9618960648203605 11 -0.59810810522475333 15 -0.38321630685420927 
		19 -0.55766507474896432 25 -0.55766507474896432;
	setAttr -s 8 ".kit[0:7]"  3 1 9 1 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 1 9 1 9 9 9 
		3;
	setAttr -s 8 ".kix[1:7]"  0.99943286180496216 0.9999154806137085 
		0.99999964237213135 0.9992835521697998 0.99999648332595825 0.99995827674865723 
		1;
	setAttr -s 8 ".kiy[1:7]"  -0.033674821257591248 -0.013000888749957085 
		0.00086245761485770345 0.037847366183996201 0.002646980807185173 -0.0091337356716394424 
		0;
	setAttr -s 8 ".kox[1:7]"  0.99943286180496216 0.9999154806137085 
		0.99999964237213135 0.9992835521697998 0.99999648332595825 0.99995827674865723 
		1;
	setAttr -s 8 ".koy[1:7]"  -0.033674813807010651 -0.013000888749957085 
		0.00086245866259559989 0.037847366183996201 0.002646980807185173 -0.0091337356716394424 
		0;
createNode animCurveTA -n "ndr_Spine_2_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.0198239624003347 2 -1.920679893154813 
		4 -1.8816128016437741 7 -1.8616207767482296 11 -2.0082239757210152 15 -2.0600385638792456 
		19 -2.0198239624003347 25 -2.0198239624003347;
	setAttr -s 8 ".kit[0:7]"  3 1 9 1 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 1 9 1 9 9 9 
		3;
	setAttr -s 8 ".kix[1:7]"  0.99986791610717773 0.9999808669090271 
		0.99999892711639404 0.99991565942764282 0.99999970197677612 0.99999779462814331 
		1;
	setAttr -s 8 ".kiy[1:7]"  0.016253845766186714 0.0061845378950238228 
		-0.0014788102125748992 -0.012985318899154663 -0.00075921713141724467 0.0021056269761174917 
		0;
	setAttr -s 8 ".kox[1:7]"  0.99986791610717773 0.9999808669090271 
		0.99999892711639404 0.99991565942764282 0.99999970197677612 0.99999779462814331 
		1;
	setAttr -s 8 ".koy[1:7]"  0.016253845766186714 0.0061845378950238228 
		-0.0014788105618208647 -0.012985318899154663 -0.00075921713141724467 0.0021056269761174917 
		0;
createNode animCurveTA -n "ndr_Spine_2_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 7.5513277031901911 2 15.68385544795642 
		4 18.228392920766296 7 19.444832673490446 11 8.7020659444776438 15 2.6535113621100006 
		19 7.5513277031901911 25 7.5513277031901911;
	setAttr -s 8 ".kit[0:7]"  3 1 9 1 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 1 9 1 9 9 9 
		3;
	setAttr -s 8 ".kix[1:7]"  0.66416138410568237 0.93043720722198486 
		0.99927693605422974 0.67301124334335327 0.99717581272125244 0.9686548113822937 
		1;
	setAttr -s 8 ".kiy[1:7]"  0.74758923053741455 0.36645141243934631 
		0.038020897656679153 -0.739632248878479 -0.075102932751178741 0.24841062724590302 
		0;
	setAttr -s 8 ".kox[1:7]"  0.66416150331497192 0.93043720722198486 
		0.99927693605422974 0.67301124334335327 0.99717581272125244 0.9686548113822937 
		1;
	setAttr -s 8 ".koy[1:7]"  0.747589111328125 0.36645141243934631 
		0.038020975887775421 -0.739632248878479 -0.075102932751178741 0.24841062724590302 
		0;
createNode animCurveTA -n "ndr_Neck_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.95273800592490165 2 -18.246040685343559 
		4 -17.938352473608539 7 -10.671527914791685 11 1.0216316475638312 25 0.95273800592490165;
	setAttr -s 6 ".kit[0:5]"  3 1 9 9 1 3;
	setAttr -s 6 ".kot[0:5]"  3 1 9 9 1 3;
	setAttr -s 6 ".kix[1:5]"  0.89577895402908325 0.78346043825149536 
		0.57626587152481079 0.99667257070541382 1;
	setAttr -s 6 ".kiy[1:5]"  -0.44449973106384277 0.62144172191619873 
		0.81726229190826416 0.081509649753570557 0;
	setAttr -s 6 ".kox[1:5]"  0.89577895402908325 0.78346043825149536 
		0.57626587152481079 0.99667257070541382 1;
	setAttr -s 6 ".koy[1:5]"  -0.44449985027313232 0.62144172191619873 
		0.81726229190826416 0.081509657204151154 0;
createNode animCurveTA -n "ndr_Neck_rotateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.41955881507249082 2 2.5097877267090642 
		4 -4.2194661418633661 7 2.6521004107659336 11 -0.19999024509490329 15 0.41955881507249082 
		25 0.41955881507249082;
	setAttr -s 7 ".kit[2:6]"  9 3 3 9 3;
	setAttr -s 7 ".kot[2:6]"  9 3 3 9 3;
createNode animCurveTA -n "ndr_Neck_rotateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.6634293801101616 2 -19.415402116775478 
		4 -39.786202681687321 7 12.445958530219665 11 36.503375283574854 15 -26.163464570471707 
		19 1.6634293801101616 22 17.961512019346134 25 1.6634293801101616;
	setAttr -s 9 ".kit[1:8]"  9 3 9 3 3 9 3 
		3;
	setAttr -s 9 ".kot[1:8]"  9 3 9 3 3 9 3 
		3;
createNode animCurveTA -n "ndr_Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 1.0598705588951511;
createNode animCurveTA -n "ndr_Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0.26280824457411489;
createNode animCurveTA -n "ndr_Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 6.5086084195154994;
createNode animCurveTA -n "ndr_Spine_1_rotateX";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.47197901174667056 2 2.621829733057881 
		4 2.884225887552454 7 2.9340258809630368 11 0.53237498794462645 15 0.38358651583048448 
		19 0.47197901174667056 25 0.47197901174667056;
	setAttr -s 8 ".kit[0:7]"  3 1 9 1 1 3 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 1 9 1 1 3 9 
		3;
	setAttr -s 8 ".kix[1:7]"  0.99188810586929321 0.99946600198745728 
		0.99988245964050293 0.99813699722290039 1 0.99998927116394043 1;
	setAttr -s 8 ".kiy[1:7]"  0.12711407244205475 0.032675646245479584 
		-0.01533340010792017 -0.061012700200080872 0 0.0046281707473099232 0;
	setAttr -s 8 ".kox[1:7]"  0.99188810586929321 0.99946600198745728 
		0.99988245964050293 0.99813699722290039 1 0.99998927116394043 1;
	setAttr -s 8 ".koy[1:7]"  0.12711413204669952 0.032675646245479584 
		-0.015333409421145916 -0.061012718826532364 0 0.0046281707473099232 0;
createNode animCurveTA -n "ndr_Spine_1_rotateY";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.6163460272109134 2 1.8617018014205855 
		4 1.4214264359163584 7 1.3154885694855836 11 1.5974760988824526 15 1.6395673571821843 
		19 1.6163460272109134 25 1.6163460272109134;
	setAttr -s 8 ".kit[2:7]"  1 3 1 1 9 3;
	setAttr -s 8 ".kot[2:7]"  1 3 1 1 9 3;
	setAttr -s 8 ".kix[2:7]"  0.99932241439819336 1 0.99989593029022217 
		0.99999994039535522 0.9999992847442627 1;
	setAttr -s 8 ".kiy[2:7]"  -0.036805659532546997 0 0.014428546652197838 
		0.00031416400452144444 -0.0012158650206401944 0;
	setAttr -s 8 ".kox[2:7]"  0.99932241439819336 1 0.99989593029022217 
		0.99999994039535522 0.9999992847442627 1;
	setAttr -s 8 ".koy[2:7]"  -0.036805670708417892 0 0.014428549446165562 
		0.00031416412093676627 -0.0012158650206401944 0;
createNode animCurveTA -n "ndr_Spine_1_rotateZ";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.9660530560192302 2 -0.29402040880081254 
		4 8.8462032742118613 7 10.931240458389277 11 4.1195518650669962 15 -1.1445672687462345 
		19 1.9660530560192302 25 1.9660530560192302;
	setAttr -s 8 ".kit[2:7]"  1 3 9 3 9 3;
	setAttr -s 8 ".kot[2:7]"  1 3 9 3 9 3;
	setAttr -s 8 ".kix[2:7]"  0.7867579460144043 1 0.78454452753067017 
		1 0.98699456453323364 1;
	setAttr -s 8 ".kiy[2:7]"  0.61726164817810059 0 -0.62007248401641846 
		0 0.16075348854064941 0;
	setAttr -s 8 ".kox[2:7]"  0.78675782680511475 1 0.78454452753067017 
		1 0.98699456453323364 1;
	setAttr -s 8 ".koy[2:7]"  0.61726176738739014 0 -0.62007248401641846 
		0 0.16075348854064941 0;
createNode animCurveTA -n "ndr_Middle_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_Middle_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_Middle_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 77.428435288625664;
createNode animCurveTA -n "ndr_Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -12.533800869393716;
createNode animCurveTA -n "ndr_Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 38.757782523984616;
createNode animCurveTA -n "ndr_Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 -17.577333162534277;
createNode animCurveTA -n "ndr_Middle_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_Middle_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "ndr_Middle_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 37.656527956664149;
createNode clipLibrary -n "clipLibrary1";
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
	setAttr ".o" 13;
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
	setAttr -k on ".left";
	setAttr -k on ".bot";
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
	setAttr -k on ".soll";
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
	setAttr -k on ".rlen";
	setAttr -k on ".rlpn";
	setAttr -k on ".rgpn";
	setAttr -k on ".rlsd";
	setAttr -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
select -ne :characterPartition;
select -ne :hyperGraphLayout;
	setAttr ".cch" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".img" -type "string" "";
	setAttr ".ims" 1;
select -ne :ikSystem;
connectAttr "ndr_crashSource.st" "clipLibrary1.st[0]";
connectAttr "ndr_crashSource.du" "clipLibrary1.du[0]";
connectAttr "ndr_Extra_Attributes_translateX.a" "clipLibrary1.cel[0].cev[0].cevr"
		;
connectAttr "ndr_Extra_Attributes_translateY.a" "clipLibrary1.cel[0].cev[1].cevr"
		;
connectAttr "ndr_Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "ndr_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "ndr_Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "ndr_Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr"
		;
connectAttr "ndr_Hoop_Root_IK_FK_RFoot.a" "clipLibrary1.cel[0].cev[6].cevr"
		;
connectAttr "ndr_Hoop_Root_IK_FK_LFoot.a" "clipLibrary1.cel[0].cev[7].cevr"
		;
connectAttr "ndr_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary1.cel[0].cev[8].cevr"
		;
connectAttr "ndr_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary1.cel[0].cev[9].cevr"
		;
connectAttr "ndr_Hoop_Root_IK_FK_RArm.a" "clipLibrary1.cel[0].cev[10].cevr"
		;
connectAttr "ndr_Hoop_Root_IK_FK_LArm.a" "clipLibrary1.cel[0].cev[11].cevr"
		;
connectAttr "Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "ndr_Hoop_Root_rotateX.a" "clipLibrary1.cel[0].cev[14].cevr"
		;
connectAttr "ndr_Hoop_Root_rotateY.a" "clipLibrary1.cel[0].cev[15].cevr"
		;
connectAttr "ndr_Hoop_Root_rotateZ.a" "clipLibrary1.cel[0].cev[16].cevr"
		;
connectAttr "ndr_Hoop_Root_translateX.a" "clipLibrary1.cel[0].cev[17].cevr"
		;
connectAttr "ndr_Hoop_Root_translateY.a" "clipLibrary1.cel[0].cev[18].cevr"
		;
connectAttr "ndr_Hoop_Root_translateZ.a" "clipLibrary1.cel[0].cev[19].cevr"
		;
connectAttr "ndr_Right_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[20].cevr"
		;
connectAttr "ndr_Right_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[21].cevr"
		;
connectAttr "ndr_Right_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[22].cevr"
		;
connectAttr "ndr_Right_Foot_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[23].cevr"
		;
connectAttr "ndr_Right_Foot_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[24].cevr"
		;
connectAttr "ndr_Right_Foot_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[25].cevr"
		;
connectAttr "ndr_Left_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[26].cevr"
		;
connectAttr "ndr_Left_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[27].cevr"
		;
connectAttr "ndr_Left_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[28].cevr"
		;
connectAttr "ndr_Left_Foot_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[29].cevr"
		;
connectAttr "ndr_Left_Foot_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[30].cevr"
		;
connectAttr "ndr_Left_Foot_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[31].cevr"
		;
connectAttr "ndr_Right_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[32].cevr"
		;
connectAttr "ndr_Right_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[33].cevr"
		;
connectAttr "ndr_Right_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[34].cevr"
		;
connectAttr "ndr_Left_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[35].cevr"
		;
connectAttr "ndr_Left_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[36].cevr"
		;
connectAttr "ndr_Left_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[37].cevr"
		;
connectAttr "ndr_Right_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[38].cevr"
		;
connectAttr "ndr_Right_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[39].cevr"
		;
connectAttr "ndr_Right_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[40].cevr"
		;
connectAttr "ndr_Left_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[41].cevr"
		;
connectAttr "ndr_Left_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[42].cevr"
		;
connectAttr "ndr_Left_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[43].cevr"
		;
connectAttr "ndr_Character_Hoop_translateX.a" "clipLibrary1.cel[0].cev[44].cevr"
		;
connectAttr "ndr_Character_Hoop_translateY.a" "clipLibrary1.cel[0].cev[45].cevr"
		;
connectAttr "ndr_Character_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[46].cevr"
		;
connectAttr "ndr_Character_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[47].cevr"
		;
connectAttr "ndr_Character_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[48].cevr"
		;
connectAttr "ndr_Character_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[49].cevr"
		;
connectAttr "ndr_R_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "ndr_R_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "ndr_R_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "ndr_R_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[53].cevr"
		;
connectAttr "ndr_R_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[54].cevr"
		;
connectAttr "ndr_R_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[55].cevr"
		;
connectAttr "ndr_R_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[56].cevr"
		;
connectAttr "ndr_R_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[57].cevr"
		;
connectAttr "ndr_R_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[58].cevr"
		;
connectAttr "ndr_R_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[59].cevr"
		;
connectAttr "ndr_L_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "ndr_L_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "ndr_L_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "ndr_L_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[63].cevr"
		;
connectAttr "ndr_L_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[64].cevr"
		;
connectAttr "ndr_L_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[65].cevr"
		;
connectAttr "ndr_L_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[66].cevr"
		;
connectAttr "ndr_L_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[67].cevr"
		;
connectAttr "ndr_L_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[68].cevr"
		;
connectAttr "ndr_L_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[69].cevr"
		;
connectAttr "ndr_R_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[70].cevr"
		;
connectAttr "ndr_R_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[71].cevr"
		;
connectAttr "ndr_R_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[72].cevr"
		;
connectAttr "ndr_L_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[73].cevr"
		;
connectAttr "ndr_L_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[74].cevr"
		;
connectAttr "ndr_L_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[75].cevr"
		;
connectAttr "Right_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[76].cevr"
		;
connectAttr "Right_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[77].cevr"
		;
connectAttr "Right_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[78].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[79].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[80].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[81].cevr"
		;
connectAttr "Left_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "Left_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "Left_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "ndr_Right_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "ndr_Right_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "ndr_Right_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "ndr_Right_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "ndr_Right_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "ndr_Right_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[93].cevr"
		;
connectAttr "ndr_Left_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[94].cevr"
		;
connectAttr "ndr_Left_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[95].cevr"
		;
connectAttr "ndr_Left_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[96].cevr"
		;
connectAttr "ndr_Left_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[97].cevr"
		;
connectAttr "ndr_Left_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[98].cevr"
		;
connectAttr "ndr_Left_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[99].cevr"
		;
connectAttr "ndr_Left_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[100].cevr"
		;
connectAttr "ndr_Left_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[101].cevr"
		;
connectAttr "ndr_Left_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[102].cevr"
		;
connectAttr "ndr_Right_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[103].cevr"
		;
connectAttr "ndr_Right_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[104].cevr"
		;
connectAttr "ndr_Right_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[105].cevr"
		;
connectAttr "ndr_R_FK_Shoulder_rotateX.a" "clipLibrary1.cel[0].cev[106].cevr"
		;
connectAttr "ndr_R_FK_Shoulder_rotateY.a" "clipLibrary1.cel[0].cev[107].cevr"
		;
connectAttr "ndr_R_FK_Shoulder_rotateZ.a" "clipLibrary1.cel[0].cev[108].cevr"
		;
connectAttr "ndr_L_FK_Shoulder_rotateX.a" "clipLibrary1.cel[0].cev[109].cevr"
		;
connectAttr "ndr_L_FK_Shoulder_rotateY.a" "clipLibrary1.cel[0].cev[110].cevr"
		;
connectAttr "ndr_L_FK_Shoulder_rotateZ.a" "clipLibrary1.cel[0].cev[111].cevr"
		;
connectAttr "ndr_R_FK_Elbow_rotateZ.a" "clipLibrary1.cel[0].cev[112].cevr"
		;
connectAttr "ndr_L_FK_Elbow_rotateZ.a" "clipLibrary1.cel[0].cev[113].cevr"
		;
connectAttr "ndr_R_FK_Wrist_rotateX.a" "clipLibrary1.cel[0].cev[114].cevr"
		;
connectAttr "ndr_R_FK_Wrist_rotateY.a" "clipLibrary1.cel[0].cev[115].cevr"
		;
connectAttr "ndr_R_FK_Wrist_rotateZ.a" "clipLibrary1.cel[0].cev[116].cevr"
		;
connectAttr "ndr_L_FK_Wrist_rotateX.a" "clipLibrary1.cel[0].cev[117].cevr"
		;
connectAttr "ndr_L_FK_Wrist_rotateY.a" "clipLibrary1.cel[0].cev[118].cevr"
		;
connectAttr "ndr_L_FK_Wrist_rotateZ.a" "clipLibrary1.cel[0].cev[119].cevr"
		;
connectAttr "ndr_Thumb_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[120].cevr"
		;
connectAttr "ndr_Thumb_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[121].cevr"
		;
connectAttr "ndr_Thumb_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[122].cevr"
		;
connectAttr "ndr_Middle_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[123].cevr"
		;
connectAttr "ndr_Middle_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[124].cevr"
		;
connectAttr "ndr_Middle_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[125].cevr"
		;
connectAttr "ndr_Pelvis_rotateX.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "ndr_Pelvis_rotateY.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "ndr_Pelvis_rotateZ.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "ndr_Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "ndr_Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "ndr_Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "ndr_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "ndr_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "ndr_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "ndr_Middle_R_rotateX.a" "clipLibrary1.cel[0].cev[135].cevr"
		;
connectAttr "ndr_Middle_R_rotateY.a" "clipLibrary1.cel[0].cev[136].cevr"
		;
connectAttr "ndr_Middle_R_rotateZ.a" "clipLibrary1.cel[0].cev[137].cevr"
		;
connectAttr "ndr_Jaw_rotateX.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "ndr_Jaw_rotateY.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "ndr_Jaw_rotateZ.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "ndr_Spine_2_rotateX.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "ndr_Spine_2_rotateY.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "ndr_Spine_2_rotateZ.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "ndr_Neck_rotateX.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "ndr_Neck_rotateY.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "ndr_Neck_rotateZ.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "ndr_Head_rotateX.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "ndr_Head_rotateY.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "ndr_Head_rotateZ.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "ndr_Spine_1_rotateX.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "ndr_Spine_1_rotateY.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "ndr_Spine_1_rotateZ.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "ndr_Middle_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[153].cevr"
		;
connectAttr "ndr_Middle_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[154].cevr"
		;
connectAttr "ndr_Middle_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[155].cevr"
		;
connectAttr "ndr_Thumb_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[156].cevr"
		;
connectAttr "ndr_Thumb_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[157].cevr"
		;
connectAttr "ndr_Thumb_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[158].cevr"
		;
connectAttr "ndr_Middle_L_rotateX.a" "clipLibrary1.cel[0].cev[159].cevr"
		;
connectAttr "ndr_Middle_L_rotateY.a" "clipLibrary1.cel[0].cev[160].cevr"
		;
connectAttr "ndr_Middle_L_rotateZ.a" "clipLibrary1.cel[0].cev[161].cevr"
		;
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
// End of ndr_crash.ma
