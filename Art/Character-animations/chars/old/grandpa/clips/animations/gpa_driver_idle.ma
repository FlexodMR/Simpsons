//Maya ASCII 4.0 scene
//Name: gpa_driver_idle.ma
//Last modified: Tue, Aug 13, 2002 10:22:33 AM
requires maya "4.0";
requires "p3dmayaexp" "18.2";
requires "p3dSimpleShader" "18.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "gpa_driver_idleSource";
	setAttr ".ihi" 0;
	setAttr ".du" 45;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 -1.1229683308553271 1 -1.1229683308553271 
		2 -1.1229683308553271 3 -1.1229683308553271 4 -1.1229683308553271 5 -1.1229683308553271 
		6 -1.1229683308553271 7 -1.1229683308553271 8 -1.1229683308553271 9 -1.1229683308553271 
		10 -1.1229683308553271 11 -1.1229683308553271 12 -1.1229683308553271 13 -1.1229683308553271 
		14 -1.1229683308553271 15 -1.1229683308553271 16 -1.1229683308553271 17 -1.1229683308553271 
		18 -1.1229683308553271 19 -1.1229683308553271 20 -1.1229683308553271 21 -1.1229683308553271 
		22 -1.1229683308553271 23 -1.1229683308553271 24 -1.1229683308553271 25 -1.1229683308553271 
		26 -1.1229683308553271 27 -1.1229683308553271 28 -1.1229683308553271 29 -1.1229683308553271 
		30 -1.1229683308553271 31 -1.1229683308553271 32 -1.1229683308553271 33 -1.1229683308553271 
		34 -1.1229683308553271 35 -1.1229683308553271 36 -1.1229683308553271 37 -1.1229683308553271 
		38 -1.1229683308553271 39 -1.1229683308553271 40 -1.1229683308553271 41 -1.1229683308553271 
		42 -1.1229683308553271 43 -1.1229683308553271 44 -1.1229683308553271 45 -1.1229683308553271;
createNode animCurveTL -n "gpa_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  44 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 0.97616451601631116 1 0.97616451601631116 
		2 0.97616451601631116 3 0.97616451601631116 4 0.97616451601631116 5 0.97616451601631116 
		6 0.97616451601631116 7 0.97616451601631116 8 0.97616451601631116 9 0.97616451601631116 
		10 0.97616451601631116 11 0.97616451601631116 12 0.97616451601631116 13 0.97616451601631116 
		14 0.97616451601631116 15 0.97616451601631116 16 0.97616451601631116 17 0.97616451601631116 
		18 0.97616451601631116 19 0.97616451601631116 20 0.97616451601631116 21 0.97616451601631116 
		22 0.97616451601631116 23 0.97616451601631116 24 0.97616451601631116 25 0.97616451601631116 
		26 0.97616451601631116 27 0.97616451601631116 28 0.97616451601631116 29 0.97616451601631116 
		30 0.97616451601631116 31 0.97616451601631116 32 0.97616451601631116 33 0.97616451601631116 
		34 0.97616451601631116 35 0.97616451601631116 36 0.97616451601631116 37 0.97616451601631116 
		38 0.97616451601631116 39 0.97616451601631116 40 0.97616451601631116 41 0.97616451601631116 
		42 0.97616451601631116 43 0.97616451601631116 44 0.97616451601631116 45 0.97616451601631116;
createNode animCurveTA -n "gpa_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  44 0;
createNode animCurveTU -n "gpa_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  44 0;
createNode animCurveTU -n "gpa_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  44 0;
createNode animCurveTU -n "gpa_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  44 0;
createNode animCurveTU -n "gpa_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  44 0;
createNode animCurveTU -n "gpa_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  44 0;
createNode animCurveTU -n "gpa_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  44 0;
createNode animCurveTU -n "gpa_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  44 0;
createNode animCurveTU -n "gpa_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  44 0;
createNode animCurveTA -n "animCurveTA347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTL -n "gpa_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  44 0;
createNode animCurveTL -n "gpa_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  44 0;
createNode animCurveTL -n "gpa_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  44 0;
createNode animCurveTL -n "animCurveTL120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.7084450118300396 45 -1.7084450118300396;
createNode animCurveTL -n "animCurveTL121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.82121446776202978 45 0.82121446776202978;
createNode animCurveTL -n "animCurveTL122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.6495856783017808 45 1.6495856783017808;
createNode animCurveTA -n "animCurveTA350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24.99 0 45 0;
createNode animCurveTA -n "animCurveTA351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24.99 0 45 0;
createNode animCurveTA -n "animCurveTA352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24.99 0 45 0;
createNode animCurveTL -n "animCurveTL123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.2504784321605431 45 -1.2504784321605431;
createNode animCurveTL -n "animCurveTL124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.82533069850741669 45 0.82533069850741669;
createNode animCurveTL -n "animCurveTL125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.6270503750293122 45 1.6270503750293122;
createNode animCurveTA -n "animCurveTA353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24.99 0 45 0;
createNode animCurveTA -n "animCurveTA354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24.99 0 45 0;
createNode animCurveTA -n "animCurveTA355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24.99 0 45 0;
createNode animCurveTA -n "animCurveTA356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTL -n "animCurveTL126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "animCurveTL129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "animCurveTL132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.4786421250535617 45 -1.4786421250535617;
createNode animCurveTL -n "animCurveTL133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.013846891275328 45 1.013846891275328;
createNode animCurveTL -n "animCurveTL134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.2853416563090898 45 1.2853416563090898;
createNode animCurveTA -n "animCurveTA368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -25.655237914214105 24.99 -25.655237914214105 
		45 -25.655237914214105;
createNode animCurveTA -n "animCurveTA369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.0975263990809512 24.99 2.0975263990809512 
		45 2.0975263990809512;
createNode animCurveTA -n "animCurveTA370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.53932213336905666 24.99 -0.53932213336905666 
		45 -0.53932213336905666;
createNode animCurveTA -n "animCurveTA371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTL -n "Right_Arm_Hoop_translateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 -0.20830475395957251 1 -0.20811499765972485 
		2 -0.20791228466735676 3 -0.20769822063038759 4 -0.20747442547162109 5 -0.20724253562784442 
		6 -0.20700420589931526 7 -0.20676111091029953 8 -0.20651494618143432 9 -0.20626742881480709 
		10 -0.20602029779271164 11 -0.20577531389111528 12 -0.20553425920884594 13 
		-0.20529893631356402 14 -0.20507116700550171 15 -0.20485279069989248 16 -0.2046456624289209 
		17 -0.20445165046389208 18 -0.20427263355813863 19 -0.2041104978109877 20 
		-0.20396713315289902 21 -0.20384442945157161 22 -0.20374427223856514 23 -0.20366853805562074 
		24 -0.20361908941948173 25 -0.20359777023621917 26 -0.20361398888179849 27 
		-0.20367325452140733 28 -0.20377199660568182 29 -0.2039066016881077 30 -0.20407342905994996 
		31 -0.20426882494467236 32 -0.20448913525786339 33 -0.20473071693654787 34 
		-0.20498994783985269 35 -0.20526323522136353 36 -0.20554702277204911 37 -0.20583779623146256 
		38 -0.20613208756400808 39 -0.20642647769633754 40 -0.20671759781150401 41 
		-0.20700212919525199 42 -0.20727680162984713 43 -0.20753839033098984 44 -0.20778371142384516 
		45 -0.20800961595477532;
createNode animCurveTL -n "Right_Arm_Hoop_translateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 -0.31535672398011161 1 -0.31483017810827207 
		2 -0.31426932813926783 3 -0.31367890708759816 4 -0.31306364350846111 5 -0.31242826073961294 
		6 -0.31177747625802765 7 -0.31111600115323362 8 -0.31044853971957947 9 -0.30977978916992804 
		10 -0.30911443947345596 11 -0.30845717332033945 12 -0.30781266621614234 13 
		-0.30718558670864438 14 -0.30658059674972421 15 -0.30600235219468891 16 -0.30545550344116496 
		17 -0.30494469620926384 18 -0.30447457246431842 19 -0.30404977148292889 20 
		-0.30367493106247773 21 -0.30335468887356948 22 -0.30309368395409797 23 -0.30289655834279977 
		24 -0.30276795884924995 25 -0.30271254111997048 26 -0.30275469891130302 27 
		-0.30290882877809416 28 -0.30316589700446223 29 -0.30351688458904469 30 -0.30395278176059043 
		31 -0.30446458299820778 32 -0.30504328257188418 33 -0.30567987061347468 34 
		-0.30636532972357927 35 -0.30709063211548004 36 -0.30784673729362783 37 -0.30862459026110395 
		38 -0.30941512024792356 39 -0.31020923995012784 40 -0.31099784526818169 41 
		-0.31177181553245087 42 -0.31252201420324527 43 -0.31323929003330703 44 -0.31391447868153632 
		45 -0.31453840476828943;
createNode animCurveTL -n "Right_Arm_Hoop_translateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 0.86092177196258945 1 0.86109959122007951 
		2 0.86128899527846359 3 0.8614883857563489 4 0.86169616577828745 5 0.86191074023081116 
		6 0.86213051597968815 7 0.86235390204778373 8 0.86257930975276087 9 0.8628051528037548 
		10 0.8630298473561675 11 0.86325181202358126 12 0.86346946784588385 13 0.86368123821267151 
		14 0.86388554874103751 15 0.8640808271069369 16 0.86426550282943637 17 0.86443800700723916 
		18 0.86459677200707263 19 0.86474023110367104 20 0.86486681807131593 21 0.86497496672710039 
		22 0.86506311042637507 23 0.8651296815110765 24 0.8651731107119861 25 0.86519182577557319 
		26 0.86517758871180739 27 0.86512553767516354 28 0.86503872343241295 29 0.86492019178110457 
		30 0.86477298540169611 31 0.86460014553925879 32 0.864404713509489 33 0.86418973202556404 
		34 0.8639582463440354 35 0.86371330522934575 36 0.86345796173782219 37 0.86319527382303618 
		38 0.86292830476526183 39 0.86266012342844689 40 0.86239380434855561 41 0.86213242765742137 
		42 0.86187907884633941 43 0.86163684837348231 44 0.86140883111892697 45 0.86119812569057153;
createNode animCurveTA -n "Right_Arm_Hoop_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 46.056537368045603 1 46.080426344418868 
		2 46.105881819044235 3 46.132690788443377 4 46.160640186279167 5 46.189516873646731 
		6 46.219107631096421 7 46.249199152381948 8 46.279578039922519 9 46.310030801968608 
		10 46.340343851459124 11 46.37030350655791 12 46.39969599285709 13 46.428307447235021 
		14 46.455923923357687 15 46.482331398813166 16 46.507315783868812 17 46.530662931845278 
		18 46.552158651100235 19 46.571588718619836 20 46.588738895216117 21 46.603394942333601 
		22 46.615342640470431 23 46.6243678092236 24 46.630256328971605 25 46.632794065126184 
		26 46.630863529526664 27 46.623805981420261 28 46.612036792739971 29 46.59597152103035 
		30 46.576025842090516 31 46.552615488826106 32 46.526156196240329 33 46.497063652520531 
		34 46.465753456195699 35 46.43264107935947 36 46.398141836970332 37 46.362670862251989 
		38 46.326643088231201 39 46.290473235455835 40 46.254575805944185 41 46.219365083419717 
		42 46.185255139885442 43 46.152659848592918 44 46.121992903454 45 46.093667844939169;
createNode animCurveTA -n "Right_Arm_Hoop_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 56.887629293648395 1 56.878456355108547 
		2 56.868689629617634 3 56.858412208311549 4 56.847707000667107 5 56.836656705483691 
		6 56.825343786759809 7 56.813850454475748 8 56.802258650294029 9 56.790650038191053 
		10 56.779106000034488 11 56.767707636121457 12 56.756535770692153 13 56.745670962434247 
		14 56.735193519991249 15 56.725183522488742 16 56.715720845088256 17 56.706885189579587 
		18 56.698756120017023 19 56.691413103404386 20 56.684935555429178 21 56.679402891243001 
		22 56.674894581281293 23 56.671490212111138 24 56.669269552290444 25 56.6683126605772 
		26 56.669040590962283 27 56.671702109070182 28 56.676141824951074 29 56.682204906413801 
		30 56.689736874628743 31 56.698583418558428 32 56.708590228298988 33 56.71960284738725 
		34 56.731466544102894 35 56.744026201771312 36 56.757126228054794 37 56.770610483201786 
		38 56.784322227210957 39 56.798104085856522 40 56.811798035513327 41 56.825245406715702 
		42 56.838286906383928 43 56.85076265865208 44 56.862512264237679 45 56.873374878300957;
createNode animCurveTA -n "Right_Arm_Hoop_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 125.11368116179706 1 125.08645133795301 
		2 125.05743824617107 3 125.02688506215958 4 124.9950349706245 5 124.96213116681861 
		6 124.92841685786085 7 124.8941352638215 8 124.85952961856684 9 124.82484317035811 
		10 124.79031918219789 11 124.75620093191723 12 124.72273171199784 13 124.69015482912216 
		14 124.65871360344609 15 124.62865136758934 16 124.60021146533801 17 124.57363725005649 
		18 124.54917208280602 19 124.52705933016816 20 124.50754236177363 21 124.49086454753699 
		22 124.47726925460145 23 124.46699984399734 24 124.46029966702208 25 124.4574121740919 
		26 124.45960877858769 27 124.46763911898317 28 124.48103093025081 29 124.49931191732473 
		30 124.52200976631566 31 124.5486521546953 32 124.57876676041538 33 124.61188126993858 
		34 124.64752338516958 35 124.68522082928099 36 124.72450135144088 37 124.76489273045063 
		38 124.8059227773136 39 124.84711933675311 40 124.88801028770771 41 124.92812354283038 
		42 124.96698704702038 43 125.00412877501714 44 125.03907672808194 45 125.07135892979186;
createNode animCurveTL -n "Left_Arm_Hoop_translateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 0.026488370059534531 1 0.026751902849755708 
		2 0.027032309923783658 3 0.027327172827186531 4 0.027634083214024087 5 0.027950644472265935 
		6 0.028274473078024869 7 0.028603199677623366 8 0.028934469896381643 9 0.029265944872844899 
		10 0.029595301517123574 11 0.029920232491956539 12 0.030238445915111926 13 
		0.030547664781757362 14 0.030845626105542295 15 0.031130079777201728 16 0.031398787139681021 
		17 0.03164951927893981 18 0.031880055029829747 19 0.032088178696699006 20 
		0.032271677488660944 21 0.032428338669816981 22 0.032555946425064805 23 0.032652278442557477 
		24 0.032715102214296791 25 0.032742170000058482 26 0.032721579066645176 27 
		0.032646283203397672 28 0.032520647510250737 29 0.032349005817855242 30 0.032135672166867267 
		31 0.031884951230025535 32 0.0316011476694203 33 0.031288574423931549 34 
		0.030951559924158972 35 0.030594454234186514 36 0.030221634121341198 37 0.029837507056606115 
		38 0.029446514149601626 39 0.029053132023024376 40 0.028661873632165682 41 
		0.028277288035539243 42 0.027903959122801608 43 0.027546503306038233 44 0.027209566180011677 
		45 0.026897818156284076;
createNode animCurveTL -n "Left_Arm_Hoop_translateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 -0.2496323416231627 1 -0.250009174405319 
		2 -0.25041091985983238 3 -0.25083425170214035 4 -0.25127583715600971 5 -0.25173233596438549 
		6 -0.25220039958084267 7 -0.25267667054030757 8 -0.2531577820074607 9 -0.25364035750105079 
		10 -0.2541210107921868 11 -0.25459634597460806 12 -0.25506295770492676 13 
		-0.25551743161081836 14 -0.25595634486529201 15 -0.25637626692525245 16 -0.25677376043284417 
		17 -0.25714538227826139 18 -0.25748768482309348 19 -0.25779721728362531 20 
		-0.25807052727395402 21 -0.25830416250932031 22 -0.25849467267055803 23 -0.25863861143123812 
		24 -0.2587325386497305 25 -0.25877302114847511 26 -0.2587422246587216 27 
		-0.25862965033057739 28 -0.25844195536091291 29 -0.25818581580291222 30 -0.25786791975358869 
		31 -0.25749496116930071 32 -0.25707363429782876 33 -0.25661062871959972 34 
		-0.25611262499416371 35 -0.25558629091115043 36 -0.25503827834762438 37 -0.25447522073599138 
		38 -0.25390373114847392 39 -0.25333040100552173 40 -0.2527617994165155 41 
		-0.25220447316165945 42 -0.25166494732405992 43 -0.25114972658072837 44 -0.25066529716046398 
		45 -0.25021812947552713;
createNode animCurveTL -n "Left_Arm_Hoop_translateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 0.93276732714778487 1 0.93264006734174587 
		2 0.9325043943030944 3 0.9323614313479246 4 0.9322123039846214 5 0.93205814024791467 
		6 0.93190007097192595 7 0.93173923000268533 8 0.93157675435064091 9 0.93141378428375277 
		10 0.93125146336185183 11 0.93109093841290191 12 0.93093335945186706 13 0.93077987954286645 
		14 0.93063165460523722 15 0.93048984316410788 16 0.93035560604601952 17 0.93023010601999456 
		18 0.9301145073844076 19 0.93000997549982789 20 0.92991767626790212 21 0.92983877555611516 
		22 0.92977443856815745 23 0.92972582915933544 24 0.92969410909629036 25 0.92968043779384035 
		26 0.92969083804429054 27 0.92972885540329753 28 0.92979224167584285 29 0.92987874229896661 
		30 0.92998609864239912 31 0.93011205009711451 32 0.93025433595567453 33 0.93041069708684609 
		34 0.9305788774058269 35 0.93075662514033308 36 0.93094169389189485 37 0.93113184349096945 
		38 0.93132484064383037 39 0.931518459368748 40 0.93171048121864264 41 0.9318986952871946 
		42 0.9320808979953904 43 0.93225489265553863 44 0.93241848881007017 45 0.93256950134280825;
createNode animCurveTA -n "Left_Arm_Hoop_rotateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 40.751331981187242 1 40.722083905742942 
		2 40.690920295940629 3 40.65810233584623 4 40.623891221609099 5 40.588548163518766 
		6 40.552334387750712 7 40.515511137797198 8 40.478339675576507 9 40.441081282214085 
		10 40.403997258488054 11 40.367348924931321 12 40.33139762158261 13 40.296404707377967 
		14 40.262631559175901 15 40.230339570408624 16 40.199790149353305 17 40.171244717018098 
		18 40.144964704638973 19 40.121211550784757 20 40.100246698070478 21 40.082331589478791 
		22 40.06772766429502 23 40.056696353660293 24 40.049499075753424 25 40.046397351717772 
		26 40.048756928479918 27 40.05738305759423 28 40.071768420127952 29 40.091405657146794 
		30 40.115787384644939 31 40.144406207100054 32 40.176754729608035 33 40.212325568567579 
		34 40.250611360899917 35 40.291104771800775 36 40.333298501032814 37 40.376685287776738 
		38 40.420757914063721 39 40.465009206820611 40 40.508932038560403 41 40.552019326752124 
		42 40.593764031908073 43 40.633659154418702 44 40.671197730168608 45 40.705872824958668;
createNode animCurveTA -n "Left_Arm_Hoop_rotateY1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 -58.592439569848452 1 -58.597152193011205 
		2 -58.602179902223831 3 -58.607481697053288 4 -58.613016402403815 5 -58.61874264103978 
		6 -58.624618810864817 7 -58.630603066953192 8 -58.636653308326345 9 -58.642727169467697 
		10 -58.648782016568106 11 -58.654774948493987 12 -58.660662802469645 13 -58.666402164466241 
		14 -58.671949384288979 15 -58.677260595356536 16 -58.682291739164867 17 -58.686998594431664 
		18 -58.691336810916425 19 -58.695261947914467 20 -58.698729517423679 21 -58.701695031986148 
		22 -58.704114057207704 23 -58.705942268962353 24 -58.707135515290169 25 -58.707649862916867 
		26 -58.707258576920033 27 -58.705828437813786 28 -58.703444592611284 29 -58.700192715105608 
		30 -58.696158813684626 31 -58.691429056852954 32 -58.686089616414748 33 -58.680226528286852 
		34 -58.673925570927388 35 -58.667272161376104 36 -58.660351268915164 37 -58.653247346367102 
		38 -58.646044279054564 39 -58.638825351452212 40 -58.631673231564193 41 -58.624669973063284 
		42 -58.617897035228175 43 -58.611435320713667 44 -58.605365231185587 45 -58.599766740847862;
createNode animCurveTA -n "Left_Arm_Hoop_rotateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 -107.17105054330271 1 -107.19332541394958 
		2 -107.21705698981488 3 -107.24204599355792 4 -107.26809319450517 5 -107.29499941634754 
		6 -107.32256554360781 7 -107.35059252686872 8 -107.37888138674754 9 -107.40723321660248 
		10 -107.435449183955 11 -107.46333053061107 12 -107.49067857146508 13 -107.5172946919685 
		14 -107.54298034424954 15 -107.56753704186657 16 -107.59076635318482 17 -107.61246989336398 
		18 -107.63244931494964 19 -107.65050629706327 20 -107.66644253319041 21 -107.68005971756922 
		22 -107.6911595301878 23 -107.69954362040316 24 -107.70501358920075 25 -107.70737087807825 
		26 -107.70557761807169 27 -107.69902171545793 28 -107.68808837640798 29 -107.67316265833969 
		30 -107.6546295249297 31 -107.63287389606046 32 -107.6082806926059 33 -107.58123487599583 
		34 -107.55212148252433 35 -107.52132565239732 36 -107.48923265353439 37 -107.45622790016039 
		38 -107.42269696623558 39 -107.38902559378728 40 -107.3555996962122 41 -107.32280535662235 
		42 -107.29102882131265 43 -107.26065648841976 44 -107.23207489184077 45 -107.20567068046914;
createNode animCurveTL -n "gpa_Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  44 -3.1000000000000001;
createNode animCurveTL -n "gpa_Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  44 2.5;
createNode animCurveTL -n "gpa_Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  44 2.8000000000000003;
createNode animCurveTA -n "gpa_Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  44 71.400000000000006;
createNode animCurveTA -n "gpa_Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  44 64.900000000000006;
createNode animCurveTA -n "gpa_Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  44 143.5;
createNode animCurveTL -n "gpa_Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  44 -2;
createNode animCurveTL -n "gpa_Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  44 2.5;
createNode animCurveTL -n "gpa_Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  44 2.8000000000000003;
createNode animCurveTA -n "gpa_Left_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  44 45.9;
createNode animCurveTA -n "gpa_Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  44 -73;
createNode animCurveTA -n "gpa_Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  44 -115.8;
createNode animCurveTL -n "animCurveTL135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.80217394619293847 30 0.80217394619293847 
		45 0.80217394619293847;
createNode animCurveTL -n "animCurveTL136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.44299574108883399 30 -0.44299574108883399 
		45 -0.44299574108883399;
createNode animCurveTL -n "animCurveTL137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.5412845761155356 30 -0.5412845761155356 
		45 -0.5412845761155356;
createNode animCurveTL -n "animCurveTL138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.49484451559913967 30 -0.49484451559913967 
		45 -0.49484451559913967;
createNode animCurveTL -n "animCurveTL139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.71931626134224813 30 -0.71931626134224813 
		45 -0.71931626134224813;
createNode animCurveTL -n "animCurveTL140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.66067307131502628 30 -0.66067307131502628 
		45 -0.66067307131502628;
createNode animCurveTA -n "animCurveTA397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 -0.061808866237340665;
createNode animCurveTA -n "animCurveTA398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 -59.058178941076754;
createNode animCurveTA -n "animCurveTA399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 16.57914742975785;
createNode animCurveTA -n "animCurveTA400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 12.253734489678925;
createNode animCurveTA -n "animCurveTA401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 -65.746751280844975;
createNode animCurveTA -n "animCurveTA402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 15.711328223519061;
createNode animCurveTA -n "animCurveTA404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 8.5572674112203657;
createNode animCurveTA -n "animCurveTA405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.2533422302317216 24.99 8.2533422302317216 
		45 8.2533422302317216;
createNode animCurveTA -n "animCurveTA412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 23.263402056531085 24.99 23.263402056531085 
		45 23.263402056531085;
createNode animCurveTA -n "animCurveTA413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 20.166277752815617 24.99 20.166277752815617 
		45 20.166277752815617;
createNode animCurveTA -n "animCurveTA414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
createNode animCurveTA -n "animCurveTA415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
createNode animCurveTA -n "animCurveTA416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 79.802705892979176 45 79.802705892979176;
createNode animCurveTA -n "animCurveTA417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24.99 0 45 0;
createNode animCurveTA -n "animCurveTA421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24.99 0 45 0;
createNode animCurveTA -n "animCurveTA422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 24.99 13.994403295754109 
		45 13.994403295754109;
createNode animCurveTA -n "animCurveTA423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24.99 0 45 0;
createNode animCurveTA -n "animCurveTA424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24.99 0 45 0;
createNode animCurveTA -n "animCurveTA425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 24.99 13.994403295754109 
		45 13.994403295754109;
createNode animCurveTA -n "animCurveTA426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
createNode animCurveTA -n "animCurveTA427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 45 0;
createNode animCurveTA -n "animCurveTA428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 71.026803426671577 45 71.026803426671577;
createNode animCurveTA -n "animCurveTA429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24.99 0 45 0;
createNode animCurveTA -n "animCurveTA430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24.99 0 45 0;
createNode animCurveTA -n "animCurveTA431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24.99 0 45 0;
createNode animCurveTA -n "animCurveTA432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 24.99 0 45 0 46.3 0;
createNode animCurveTA -n "animCurveTA433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.5886647225957985 24.99 0.61281507018947234 
		45 -0.51117081998836877 46.3 -0.5886647225957985;
createNode animCurveTA -n "animCurveTA434";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -2.50586949574986 45 -2.50586949574986;
createNode animCurveTA -n "animCurveTA435";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24.99 0 45 0;
createNode animCurveTA -n "animCurveTA436";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24.99 0 45 0;
createNode animCurveTA -n "animCurveTA437";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24.99 0 45 0;
createNode animCurveTA -n "animCurveTA438";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24.99 0 45 0;
createNode animCurveTA -n "animCurveTA439";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 24.99 3.7819536719015394 36 
		-1.7337390861282356 45 0;
createNode animCurveTA -n "animCurveTA440";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.603314785497371 45 18.603314785497371;
createNode animCurveTA -n "animCurveTA441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.5315117770142568 24.99 1.5315117770142568 
		45 1.5315117770142568;
createNode animCurveTA -n "animCurveTA442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.7891971390395636 24.99 -2.7891971390395636 
		45 -2.7891971390395636;
createNode animCurveTA -n "animCurveTA443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 14 45 14;
createNode animCurveTA -n "animCurveTA444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.90377949588789308 45 0.90377949588789308;
createNode animCurveTA -n "animCurveTA445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -7.8984463198172383 45 -7.8984463198172383;
createNode animCurveTA -n "animCurveTA446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 80.26632241086908 45 80.26632241086908;
createNode animCurveTA -n "animCurveTA447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 10.423754966968488 24.99 10.423754966968488 
		45 10.423754966968488;
createNode animCurveTA -n "animCurveTA448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.7228482558439 24.99 27.7228482558439 
		45 27.7228482558439;
createNode animCurveTA -n "animCurveTA449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 21.576484776388224 24.99 21.576484776388224 
		45 21.576484776388224;
createNode animCurveTA -n "animCurveTA450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24.99 0 45 0;
createNode animCurveTA -n "animCurveTA451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24.99 0 45 0;
createNode animCurveTA -n "animCurveTA452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.911632519594587 24.99 27.911632519594587 
		45 27.911632519594587;
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
select -ne :time1;
	setAttr ".o" 44;
select -ne :renderPartition;
	setAttr -s 86 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 86 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 50 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 50 ".tx";
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
connectAttr "gpa_driver_idleSource.st" "clipLibrary1.st[0]";
connectAttr "gpa_driver_idleSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL112.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL113.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "gpa_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "gpa_Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr"
		;
connectAttr "gpa_Hoop_Root_IK_FK_RFoot.a" "clipLibrary1.cel[0].cev[6].cevr"
		;
connectAttr "gpa_Hoop_Root_IK_FK_LFoot.a" "clipLibrary1.cel[0].cev[7].cevr"
		;
connectAttr "gpa_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary1.cel[0].cev[8].cevr"
		;
connectAttr "gpa_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary1.cel[0].cev[9].cevr"
		;
connectAttr "gpa_Hoop_Root_IK_FK_RArm.a" "clipLibrary1.cel[0].cev[10].cevr"
		;
connectAttr "gpa_Hoop_Root_IK_FK_LArm.a" "clipLibrary1.cel[0].cev[11].cevr"
		;
connectAttr "gpa_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "gpa_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "animCurveTA347.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA348.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA349.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "gpa_Hoop_Root_translateX.a" "clipLibrary1.cel[0].cev[17].cevr"
		;
connectAttr "gpa_Hoop_Root_translateY.a" "clipLibrary1.cel[0].cev[18].cevr"
		;
connectAttr "gpa_Hoop_Root_translateZ.a" "clipLibrary1.cel[0].cev[19].cevr"
		;
connectAttr "animCurveTL120.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL121.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL122.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA350.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA351.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA352.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL123.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL124.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL125.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA353.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA354.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA355.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA356.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA357.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA358.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA359.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA360.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA361.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA362.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA363.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA364.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA365.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA366.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA367.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL126.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL127.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL128.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL129.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL130.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL131.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL132.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL133.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL134.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA368.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA369.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA370.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA371.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA372.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA373.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA374.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA375.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA376.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA377.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA378.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA379.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA380.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA381.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA382.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA383.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA384.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA385.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA386.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA387.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA388.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA389.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA390.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA391.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA392.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA393.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA394.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA395.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA396.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "Right_Arm_Hoop_translateX1.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "Right_Arm_Hoop_translateY1.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "Right_Arm_Hoop_translateZ1.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateX1.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateY1.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateZ1.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "Left_Arm_Hoop_translateX1.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "Left_Arm_Hoop_translateY1.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "Left_Arm_Hoop_translateZ1.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateX1.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateY1.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateZ1.a" "clipLibrary1.cel[0].cev[93].cevr"
		;
connectAttr "gpa_Right_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[94].cevr"
		;
connectAttr "gpa_Right_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[95].cevr"
		;
connectAttr "gpa_Right_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[96].cevr"
		;
connectAttr "gpa_Right_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[97].cevr"
		;
connectAttr "gpa_Right_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[98].cevr"
		;
connectAttr "gpa_Right_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[99].cevr"
		;
connectAttr "gpa_Left_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[100].cevr"
		;
connectAttr "gpa_Left_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[101].cevr"
		;
connectAttr "gpa_Left_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[102].cevr"
		;
connectAttr "gpa_Left_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[103].cevr"
		;
connectAttr "gpa_Left_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[104].cevr"
		;
connectAttr "gpa_Left_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[105].cevr"
		;
connectAttr "animCurveTL135.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL136.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL137.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL138.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL139.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL140.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA397.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA398.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA399.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA400.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA401.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA402.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA403.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA404.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA405.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA406.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA407.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA408.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA409.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA410.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA411.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA412.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA413.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA414.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA415.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA416.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA417.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA418.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA419.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA420.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA421.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA422.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA423.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA424.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA425.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA426.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA427.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA428.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA429.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA430.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA431.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA432.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA433.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA434.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA435.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA436.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA437.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA438.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA439.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA440.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA441.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA442.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA443.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA444.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA445.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA446.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA447.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA448.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA449.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA450.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA451.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA452.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
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
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[38].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[39].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[40].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[41].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[42].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[43].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[44].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[45].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[46].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[47].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[48].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[49].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[50].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[51].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[52].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[53].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[54].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[55].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[56].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[57].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[58].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[59].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[60].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[61].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[62].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[63].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[64].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[65].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[66].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[67].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[68].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[69].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[70].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[71].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[72].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[73].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[74].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[75].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[76].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[77].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[78].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[79].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[80].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[81].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[82].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[83].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[84].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[85].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[85].olnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of gpa_driver_idle.ma
