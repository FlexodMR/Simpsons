//Maya ASCII 4.0 scene
//Name: apu_jump_dash_in_air.ma
//Last modified: Wed, Oct 09, 2002 02:47:00 PM
requires maya "4.0";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "apu_jump_dash_in_airSource";
	setAttr ".ihi" 0;
	setAttr ".du" 14;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL42";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 1;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "animCurveTL43";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  38 0;
	setAttr ".kot[0]"  5;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0.021611233900292327 1 0.021611233900292327 
		2 0.021611233900292327 3 0.021342540840122898 4 0.020894719073173858 5 0.020805154719784044 
		6 0.021611233900292327 7 0.023212196684777711 8 0.02510424356277751 9 0.027220201283818062 
		10 0.029492896597425714 11 0.031855156253126786 12 0.034239807000447611 13 
		0.036579675588914541 14 0.038807588768053895;
createNode animCurveTL -n "apu_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0.98106373200187924 1 1.1856505028619051 
		2 1.4733047923453362 3 1.9425696932449814 4 2.4775299841608267 5 3.0057007401013287 
		6 3.4545970360749436 7 3.8267773903454145 8 4.1765681557688685 9 4.5091361592423382 
		10 4.8296482276628572 11 5.1432711879274562 12 5.4551718669331741 13 5.7705170915770401 
		14 6.0944736887560884;
createNode animCurveTA -n "animCurveTA114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 38 0;
	setAttr -s 16 ".kit[15]"  1;
	setAttr -s 16 ".kot[15]"  5;
	setAttr -s 16 ".kix[15]"  1;
	setAttr -s 16 ".kiy[15]"  0;
createNode animCurveTU -n "apu_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "apu_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "apu_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "apu_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "apu_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "apu_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "apu_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Right_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -0.13256050696689192 1 -0.13872253554363778 
		2 -0.14905872037566498 3 -0.17007878011059646 4 -0.19543865222361853 5 -0.21838013407188406 
		6 -0.23214502301254597 7 -0.23744610200248825 8 -0.2399343635691959 9 -0.24025891942572297 
		10 -0.23906888128512371 11 -0.23701336086045216 12 -0.2347414698647626 13 
		-0.23290232001110917 14 -0.23214502301254597;
createNode animCurveTL -n "Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0.33536218880936136 1 0.28136323463289187 
		2 0.25337762817758164 3 0.28405858856018668 4 0.33650837539853939 5 0.38444054146668899 
		6 0.40156863953868593 7 0.3633621172933148 8 0.27905197612247101 9 0.17299409936986909 
		10 0.069544370379221024 11 -0.0069413275057581183 12 -0.03210711094135462 
		13 0.018402903416143545 14 0.1689445989104516;
createNode animCurveTL -n "Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0.8439405082252831 1 1.1493891537768177 
		2 1.5890639731499914 3 2.3143702747656083 4 3.1406134308509803 5 3.9663220444789848 
		6 4.6900247187225022 7 5.3753400493869163 8 6.1221272596154641 9 6.8832758934877827 
		10 7.6116754950835164 11 8.2602156084823033 12 8.7817857777637869 13 9.1292755470076052 
		14 9.2555744602934027;
createNode animCurveTA -n "animCurveTA118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 50.024119495848225 1 63.727173964159803 
		2 76.799343260722793 3 93.993803257109434 4 114.35704712692555 5 127.43639716146204 
		6 122.77917565200983 7 95.012324034514066 8 51.927602994059882 9 2.8195636956481516 
		10 -43.017242695720185 11 -76.288265015044217 12 -85.434189040950102 13 -76.887286036296501 
		14 -68.340383062431542;
createNode animCurveTA -n "animCurveTA119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0;
createNode animCurveTA -n "animCurveTA120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0;
createNode animCurveTL -n "Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0.18579966735506592 1 0.19162298017298432 
		2 0.19961575648113566 3 0.21333506427227569 4 0.22942575110738819 5 0.24402787766046133 
		6 0.25328150460548288 7 0.25762223852333693 8 0.26031284468450849 9 0.26173412179738775 
		10 0.26226686857036458 11 0.26229188371182904 12 0.26218996593017113 13 0.26234191393378092 
		14 0.26312852643104823;
createNode animCurveTL -n "Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0.56698302137080003 1 0.50738765167347488 
		2 0.47186037163961891 3 0.49273727525603861 4 0.53517159556864868 5 0.57059325369094727 
		6 0.57043217073643182 7 0.53684868793928564 8 0.49267857815442095 9 0.44036490992642885 
		10 0.38235075179989891 11 0.32107917231942279 12 0.25899324002959134 13 0.19853602347499361 
		14 0.14215059120022308;
createNode animCurveTL -n "Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0.80521394842601124 1 1.1177972514026961 
		2 1.6057104121857011 3 2.4885617206517243 4 3.5178185662913553 5 4.5172591995033686 
		6 5.3106618706865403 7 5.9077821627913512 8 6.4450629076250729 9 6.9363132288716534 
		10 7.3953422502150383 11 7.83595909533918 12 8.2719728879280261 13 8.717192751665527 
		14 9.1854278102356304;
createNode animCurveTA -n "animCurveTA121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 113.21120007869165 1 108.30666574799092 
		2 96.458941847380999 3 68.402706680889821 4 34.169590926335346 5 1.8754532163530673 
		6 -20.363847816421583 7 -33.147893509142669 8 -42.946184494058713 9 -50.447741081176041 
		10 -56.341583580500995 11 -61.31673230203991 12 -66.062207555799091 13 -71.26702965178491 
		14 -77.620218900003721;
createNode animCurveTA -n "animCurveTA122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 0.7096413837334774 2 1.7014789694155465 
		3 3.6083057074568039 4 5.9369943703832435 5 7.8452533032446494 6 8.4907908510908037 
		7 7.994057519078118 8 7.0984039341859653 9 5.8958886241985748 10 4.4785701169001753 
		11 2.938506940074999 12 1.3677576215072764 13 -0.14161931101876435 14 -1.4975653297188947;
createNode animCurveTA -n "animCurveTA123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 0.56035706330454949 2 0.54389970145120459 
		3 -0.90809109185684689 4 -2.9325612139548438 5 -4.6772942703078737 6 -5.2900738663810198 
		7 -4.8540824144096941 8 -4.0736391742975879 9 -3.0282330230122159 10 -1.7973528375210948 
		11 -0.4604874947917425 12 0.90287412820832558 13 2.2132431545115918 14 3.3911307071505439;
createNode animCurveTA -n "apu_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 -0.20874769211918687 
		14 0.015017241321288224;
createNode animCurveTL -n "animCurveTL57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.24354617521346231 2 0.24354617521346231 
		6 0.23778561366766798 14 0.49949286214571587;
createNode animCurveTL -n "animCurveTL58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.73266363114951272 2 0.73266363114951272 
		6 0.75296208046735535 14 0.50034176497263683;
createNode animCurveTL -n "animCurveTL59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 14 0.11641540109138682;
createNode animCurveTL -n "animCurveTL60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.72172207365063845 2 0.72172207365063845 
		6 0.72172207365063845 14 0.37075848534494549;
createNode animCurveTL -n "animCurveTL61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.39818034372871203 2 0.39818034372871203 
		6 0.39818034372871203 14 0.64196267648156669;
createNode animCurveTL -n "Character_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0.030562367637513056 1 0.030562367637513056 
		2 0.030562367637513056 3 0.030182384887595417 4 0.029549080304399348 5 0.029422419387760131 
		6 0.030562367637513056 7 0.032826431476679449 8 0.035502143217139424 9 0.038494507192016442 
		10 0.041708527734433995 11 0.045049209177515523 12 0.048421555854384513 13 
		0.051730572098164451 14 0.054881262241978805;
createNode animCurveTL -n "Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0.96447684685426327 1 0.94952684906490803 
		2 0.93457685154423598 3 0.91962685424746582 4 0.9046768571298176 5 0.88972686014651148 
		6 0.87477686325276627 7 0.85982686640380102 8 0.84487686955483565 9 0.82992687266109033 
		10 0.81497687567778354 11 0.80002687856013555 12 0.78507688126336572 13 0.77012688374269334 
		14 0.75517688595333821;
createNode animCurveTL -n "Character_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1.3874094645223582 1 1.6767338100753983 
		2 2.0835313204934089 3 2.7471605462398432 4 3.5036954649711531 5 4.2506286985343911 
		6 4.8854528687766052 7 5.4117862038908084 8 5.906456430422117 9 6.3767704177457381 
		10 6.8300350352368815 11 7.2735571522707545 12 7.7146436382225687 13 8.1606013624675313 
		14 8.6187371943808539;
createNode animCurveTA -n "animCurveTA130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 17.005118065408293 1 13.610495101554037 
		2 8.3407475718963671 3 -1.5882568295349166 4 -13.373349307261771 5 -24.258953449688583 
		6 -31.489492845219729 7 -35.332598062245843 8 -38.063984292772957 9 -39.940202060628607 
		10 -41.217801889640292 11 -42.153334303635532 12 -43.003349826441841 13 -44.024398981886741 
		14 -45.473032293797743;
createNode animCurveTA -n "animCurveTA131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 16.71413050451596 1 15.471193073722645 
		2 13.541680570055405 3 9.8247239167966089 4 5.3738547357649491 5 1.3609485100333478 
		6 -1.0421192773252748 7 -1.9638895417538667 8 -2.3903543588369138 9 -2.4358149857137885 
		10 -2.2145726795238629 11 -1.8409286974065084 12 -1.4291842965010964 13 -1.0936407339470011 
		14 -0.94859926688359153;
createNode animCurveTA -n "animCurveTA132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 4.545042700459728 1 4.2336296456006846 
		2 3.7501979423063525 3 2.8138918126472072 4 1.6903485055717238 5 0.68325158602499925 
		6 0.096284618952130821 7 -0.10464684335731156 8 -0.17602433827015243 9 -0.14774493532588939 
		10 -0.049705704064019765 11 0.088196285975958952 12 0.23606396525454948 13 
		0.36400026423225401 14 0.44210811336957551;
createNode animCurveTA -n "apu_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.040709616517141604;
createNode animCurveTA -n "apu_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.831398321977693;
createNode animCurveTA -n "apu_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.7337164321498379;
createNode animCurveTA -n "apu_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.5673169553733399;
createNode animCurveTA -n "apu_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.9383831660683679;
createNode animCurveTA -n "apu_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.000402520393937813;
createNode animCurveTA -n "apu_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.1571952141288731;
createNode animCurveTA -n "apu_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.0034456079181433771;
createNode animCurveTA -n "apu_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.040473860579884571;
createNode animCurveTA -n "apu_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.8313984519406281;
createNode animCurveTA -n "apu_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.733716455368874;
createNode animCurveTA -n "apu_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.5673170049738836;
createNode animCurveTA -n "apu_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.9383298724540099;
createNode animCurveTA -n "apu_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00017158844849065349;
createNode animCurveTA -n "apu_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.157195188032677;
createNode animCurveTA -n "apu_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.0034456079182833216;
createNode animCurveTA -n "animCurveTA153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.5801482445824764 2 -2.4438834762883364 
		6 -0.2770852798837723 14 -0.2770852798837723;
createNode animCurveTA -n "animCurveTA154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.2133692590006788 2 2.6592667151031821 
		6 3.387649532337587 14 3.387649532337587;
createNode animCurveTA -n "animCurveTA155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -47.102861458702762 2 -44.137031448171832 
		6 -2.379897363697026 14 -2.379897363697026;
createNode animCurveTA -n "animCurveTA156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.15553530681976535 2 0.15553530681976535 
		6 0.15553530681976535 14 0.15553530681976535;
createNode animCurveTA -n "animCurveTA157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.36354176124207516 2 -0.36354176124207516 
		6 -0.36354176124207516 14 -0.36354176124207516;
createNode animCurveTA -n "animCurveTA158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 5.3250602596476986 2 5.3250602596476986 
		6 5.3250602596476986 14 5.3250602596476986;
createNode animCurveTL -n "animCurveTL65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.98872819052200589 2 -0.98872819052200589 
		6 -0.98872819052200589 14 -0.98872819052200589;
createNode animCurveTL -n "animCurveTL66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.019519870042852914 2 -0.019519870042852914 
		6 -0.019519870042852914 14 -0.019519870042852914;
createNode animCurveTL -n "animCurveTL67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.020013375596438072 2 -0.020013375596438072 
		6 -0.020013375596438072 14 -0.020013375596438072;
createNode animCurveTA -n "animCurveTA159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 14 0;
createNode animCurveTA -n "animCurveTA160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 14 0;
createNode animCurveTA -n "animCurveTA161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 14 0;
createNode animCurveTL -n "animCurveTL68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.98872754407817198 2 0.98872754407817198 
		6 0.98872754407817198 14 0.98872754407817198;
createNode animCurveTL -n "animCurveTL69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.019514335421655121 2 -0.019514335421655121 
		6 -0.019514335421655121 14 -0.019514335421655121;
createNode animCurveTL -n "animCurveTL70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.020013361448308328 2 -0.020013361448308328 
		6 -0.020013361448308328 14 -0.020013361448308328;
createNode animCurveTA -n "animCurveTA162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 14 0;
createNode animCurveTA -n "animCurveTA163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 14 0;
createNode animCurveTA -n "animCurveTA164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 14 0;
createNode animCurveTL -n "animCurveTL71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.70634147935472369 4 -0.78442163429181122 
		8 -0.70988431734715507 11 -0.761211521228914 14 -0.74907294409113789;
createNode animCurveTL -n "animCurveTL72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.5063348790592803 4 4.4968394647482341 
		8 4.7027273529564111 11 3.5148345094360467 14 2.240327765034531;
createNode animCurveTL -n "animCurveTL73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.9844518706751608 4 5.654036591998433 
		8 7.7105792146431575 11 9.4361765899409562 14 11.42008202208736;
createNode animCurveTA -n "animCurveTA165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -26.064131993977409 4 -135.55674651928086 
		8 -79.584377961916346 14 -75.806581285896897;
createNode animCurveTA -n "animCurveTA166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 24.007537278602197 4 -0.50845436964543567 
		8 -60.506224034919292 14 -46.600612617954155;
createNode animCurveTA -n "animCurveTA167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 81.602185302341567 4 -86.111062347369483 
		8 -88.909030057165808 14 -93.626022806939858;
createNode animCurveTL -n "apu_Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.80216628327519235;
createNode animCurveTL -n "apu_Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.4644416293758407;
createNode animCurveTL -n "apu_Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 14.768558450597681;
createNode animCurveTA -n "animCurveTA168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 16.226511010665412;
createNode animCurveTA -n "animCurveTA169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -8.5139660854992858;
createNode animCurveTA -n "animCurveTA170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -68.213989601412422;
createNode animCurveTL -n "animCurveTL77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 14 0;
createNode animCurveTL -n "animCurveTL78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 14 0;
createNode animCurveTL -n "animCurveTL79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1 2 -1 6 -1 14 -1;
createNode animCurveTL -n "animCurveTL80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.49728131120044688 14 -0.95007664579860074;
createNode animCurveTL -n "animCurveTL81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.38284438563142026 14 0.10218284616135791;
createNode animCurveTL -n "animCurveTL82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.1253596642312792 14 -0.11765180056616498;
createNode animCurveTA -n "animCurveTA171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -67.792131539496978 2 -92.762398791111991 
		6 -92.595877449370889 14 -25.45424806295372;
createNode animCurveTA -n "animCurveTA172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -27.10559385654599 2 62.140006124938203 
		6 22.376001670689305 14 -30.640496266362231;
createNode animCurveTA -n "animCurveTA173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 69.297314869958157 2 65.356218890313173 
		6 -3.4309763204389219 14 51.578798483498971;
createNode animCurveTA -n "animCurveTA174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -43.821767397958219 2 -95.437716397796393 
		6 -96.207851845119038 14 -43.32485505200777;
createNode animCurveTA -n "animCurveTA175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -41.866784192438274 2 55.972564310993548 
		6 12.375792021016869 14 -25.713861434224221;
createNode animCurveTA -n "animCurveTA176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 55.020511381782029 2 59.182821014115724 
		6 21.335509849436715 14 16.003249533323878;
createNode animCurveTA -n "animCurveTA177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 59.885923337858159 2 13.07006849586902 
		6 37.37060327344804 14 24.296280820968938;
createNode animCurveTA -n "animCurveTA178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 50.895849135732625 2 9.0203515410801671 
		6 60.617791435334176 14 71.313019451573382;
createNode animCurveTA -n "animCurveTA179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 14.849434068729675 2 14.849434068729675 
		6 14.849434068729675 14 14.849434068729675;
createNode animCurveTA -n "animCurveTA180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.051608316401883209 2 0.051608316401883209 
		6 0.051608316401883209 14 0.051608316401883209;
createNode animCurveTA -n "animCurveTA181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.8225462689462448 2 1.8225462689462448 
		6 1.8225462689462448 14 1.8225462689462448;
createNode animCurveTA -n "animCurveTA182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 14.859570486861982 2 14.859570486861982 
		6 14.859570486861982 14 15.825434745729005;
createNode animCurveTA -n "animCurveTA183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.052172032759606073 2 0.052172032759606073 
		6 0.052172032759606073 14 -19.883191347796444;
createNode animCurveTA -n "animCurveTA184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.8225558374727127 2 1.8225558374727127 
		6 1.8225558374727127 14 -3.697740306891494;
createNode animCurveTA -n "apu_Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -60.680000000000007;
createNode animCurveTA -n "apu_Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 12.356;
createNode animCurveTA -n "apu_Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.110465504305042;
createNode animCurveTA -n "animCurveTA188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -20.551139383726671 2 -20.551139383726671 
		6 -20.551139383726671 14 -20.551139383726671;
createNode animCurveTA -n "animCurveTA189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.0722483700821352 2 3.0722483700821352 
		6 3.0722483700821352 14 3.0722483700821352;
createNode animCurveTA -n "animCurveTA190";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 40.385087435566923 2 40.385087435566923 
		6 40.385087435566923 14 40.385087435566923;
createNode animCurveTA -n "apu_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -17.939217448485856;
createNode animCurveTA -n "apu_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "apu_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 12.085861696683486;
createNode animCurveTA -n "animCurveTA200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 14 0;
createNode animCurveTA -n "animCurveTA201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 14 0;
createNode animCurveTA -n "animCurveTA202";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 16.815115114639937 2 16.815115114639937 
		6 16.815115114639937 14 16.815115114639937;
createNode animCurveTA -n "animCurveTA203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 14 0;
createNode animCurveTA -n "animCurveTA204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 14 0;
createNode animCurveTA -n "animCurveTA205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 14 0;
createNode animCurveTA -n "animCurveTA206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -7.8488318321418218 2 -6.7542884668359422 
		6 -1.722656132605406 14 -12.09775179425397;
createNode animCurveTA -n "animCurveTA207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.28957704637835974 2 0.066607887862941043 
		6 -0.95838463759339543 14 -1.3620116247449556;
createNode animCurveTA -n "animCurveTA208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.19814059001683229 2 3.4932684931313434 
		6 20.462730686018006 14 5.8497271850448449;
createNode animCurveTA -n "animCurveTA209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.3683715055233148 2 1.4542626308673925 
		6 2.3133856289641028 14 2.7848723431010085;
createNode animCurveTA -n "animCurveTA210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.3046095840573373 2 2.2465907498595747 
		6 1.835303679842897 14 1.0320883585182179;
createNode animCurveTA -n "animCurveTA211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -24.335372748829869 2 -21.681719082039709 
		6 10.963497901140434 14 42.006015419987435;
createNode animCurveTA -n "animCurveTA212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 14 0;
createNode animCurveTA -n "animCurveTA213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 14 0;
createNode animCurveTA -n "animCurveTA214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 14 0;
createNode animCurveTA -n "animCurveTA215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -9.9121571890715732 2 -7.887787193800909 
		6 1.4182719624174749 14 -9.3912253173869011;
createNode animCurveTA -n "animCurveTA216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 6.1183128835401304 2 5.0896412973304965 
		6 0.36082243316831419 14 0.70699352503150537;
createNode animCurveTA -n "animCurveTA217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 20.705857363312237 2 21.203309525495904 
		6 23.490104523738605 14 8.8780090567274588;
createNode animCurveTA -n "animCurveTA218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -20.551139383726671 2 -20.551139383726671 
		6 -20.551139383726671 14 -20.551139383726671;
createNode animCurveTA -n "animCurveTA219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.0722483700821352 2 3.0722483700821352 
		6 3.0722483700821352 14 3.0722483700821352;
createNode animCurveTA -n "animCurveTA220";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 75.883244218680389 2 75.883244218680389 
		6 75.883483181626644 14 75.883244218680389;
createNode animCurveTA -n "animCurveTA221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -60.679962459776895 2 -60.679962459776895 
		6 -60.679962459776895 14 -60.679962459776895;
createNode animCurveTA -n "animCurveTA222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 12.355514613247321 2 12.355514613247321 
		6 12.355514613247321 14 12.355514613247321;
createNode animCurveTA -n "animCurveTA223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 13.110465504305042 2 13.110465504305042 
		6 13.110465504305042 14 13.110465504305042;
createNode animCurveTA -n "animCurveTA224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 14 0;
createNode animCurveTA -n "animCurveTA225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0 6 0 14 0;
createNode animCurveTA -n "animCurveTA226";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 17.026486028044062 2 17.026486028044062 
		6 17.026486028044062 14 17.026486028044062;
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
	setAttr ".o" 0;
select -ne :renderPartition;
	setAttr -s 40 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 40 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 4 ".tx";
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
connectAttr "apu_jump_dash_in_airSource.st" "clipLibrary1.st[0]";
connectAttr "apu_jump_dash_in_airSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL42.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL43.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "apu_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA114.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "apu_Hoop_Root_IK_FK_RFoot.a" "clipLibrary1.cel[0].cev[6].cevr"
		;
connectAttr "apu_Hoop_Root_IK_FK_LFoot.a" "clipLibrary1.cel[0].cev[7].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary1.cel[0].cev[8].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary1.cel[0].cev[9].cevr"
		;
connectAttr "apu_Hoop_Root_IK_FK_RArm.a" "clipLibrary1.cel[0].cev[10].cevr"
		;
connectAttr "apu_Hoop_Root_IK_FK_LArm.a" "clipLibrary1.cel[0].cev[11].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "apu_Hoop_Root_rotateX.a" "clipLibrary1.cel[0].cev[14].cevr"
		;
connectAttr "apu_Hoop_Root_rotateY.a" "clipLibrary1.cel[0].cev[15].cevr"
		;
connectAttr "apu_Hoop_Root_rotateZ.a" "clipLibrary1.cel[0].cev[16].cevr"
		;
connectAttr "apu_Hoop_Root_translateX.a" "clipLibrary1.cel[0].cev[17].cevr"
		;
connectAttr "apu_Hoop_Root_translateY.a" "clipLibrary1.cel[0].cev[18].cevr"
		;
connectAttr "apu_Hoop_Root_translateZ.a" "clipLibrary1.cel[0].cev[19].cevr"
		;
connectAttr "Right_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[20].cevr"
		;
connectAttr "Right_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[21].cevr"
		;
connectAttr "Right_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[22].cevr"
		;
connectAttr "animCurveTA118.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA119.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA120.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "Left_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[26].cevr"
		;
connectAttr "Left_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[27].cevr"
		;
connectAttr "Left_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[28].cevr"
		;
connectAttr "animCurveTA121.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA122.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA123.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "apu_Right_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[32].cevr"
		;
connectAttr "apu_Right_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[33].cevr"
		;
connectAttr "apu_Right_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[34].cevr"
		;
connectAttr "apu_Left_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[35].cevr"
		;
connectAttr "apu_Left_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[36].cevr"
		;
connectAttr "apu_Left_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[37].cevr"
		;
connectAttr "animCurveTL56.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL57.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL58.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL59.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL60.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL61.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "Character_Hoop_translateX.a" "clipLibrary1.cel[0].cev[44].cevr"
		;
connectAttr "Character_Hoop_translateY.a" "clipLibrary1.cel[0].cev[45].cevr"
		;
connectAttr "Character_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[46].cevr"
		;
connectAttr "animCurveTA130.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA131.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA132.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "apu_R_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "apu_R_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "apu_R_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "apu_R_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[53].cevr"
		;
connectAttr "apu_R_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[54].cevr"
		;
connectAttr "apu_R_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[55].cevr"
		;
connectAttr "apu_R_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[56].cevr"
		;
connectAttr "apu_R_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[57].cevr"
		;
connectAttr "apu_R_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[58].cevr"
		;
connectAttr "apu_R_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[59].cevr"
		;
connectAttr "apu_L_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "apu_L_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "apu_L_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "apu_L_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[63].cevr"
		;
connectAttr "apu_L_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[64].cevr"
		;
connectAttr "apu_L_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[65].cevr"
		;
connectAttr "apu_L_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[66].cevr"
		;
connectAttr "apu_L_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[67].cevr"
		;
connectAttr "apu_L_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[68].cevr"
		;
connectAttr "apu_L_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[69].cevr"
		;
connectAttr "animCurveTA153.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA154.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA155.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA156.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA157.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA158.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTL65.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTL66.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTL67.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA159.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA160.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA161.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL68.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL69.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL70.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA162.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA163.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA164.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL71.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL72.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL73.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA165.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA166.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA167.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "apu_Left_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[94].cevr"
		;
connectAttr "apu_Left_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[95].cevr"
		;
connectAttr "apu_Left_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[96].cevr"
		;
connectAttr "animCurveTA168.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA169.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA170.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL77.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL78.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL79.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL80.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL81.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL82.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA171.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA172.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA173.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA174.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA175.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA176.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA177.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA178.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA179.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA180.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA181.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA182.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA183.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA184.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "apu_Thumb_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[120].cevr"
		;
connectAttr "apu_Thumb_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[121].cevr"
		;
connectAttr "apu_Thumb_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[122].cevr"
		;
connectAttr "animCurveTA188.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA189.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA190.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "apu_Pelvis_rotateX.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "apu_Pelvis_rotateY.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "apu_Pelvis_rotateZ.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "apu_Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "apu_Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "apu_Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "apu_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "apu_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "apu_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA200.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA201.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA202.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA203.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA204.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA205.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA206.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA207.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA208.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA209.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA210.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA211.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA212.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA213.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA214.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA215.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA216.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA217.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA218.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA219.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA220.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA221.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA222.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA223.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA224.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA225.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA226.a" "clipLibrary1.cel[0].cev[161].cevr";
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
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of apu_jump_dash_in_air.ma
