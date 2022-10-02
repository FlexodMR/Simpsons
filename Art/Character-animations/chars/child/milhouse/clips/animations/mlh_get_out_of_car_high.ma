//Maya ASCII 4.0 scene
//Name: mlh_get_out_of_car_high.ma
//Last modified: Wed, Jun 26, 2002 11:12:59 AM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.7";
requires "p3dDeformer" "17.1.0.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mlh_get_out_of_car_highSource";
	setAttr ".ihi" 0;
	setAttr ".du" 30;
	setAttr ".ci" no;
createNode animCurveTL -n "mlh_Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTL -n "mlh_Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 1.0910196825588789 1 1.07398787033849 
		2 1.0243332495343167 3 0.95341830413847495 4 0.87260551814308007 5 0.79325737554024789 
		6 0.72673636032209377 7 0.67283307294342409 8 0.62241564609526567 9 0.5734628621240665 
		10 0.52395350337627389 11 0.47186635219833578 12 0.41518019093669967 13 0.3461842262115678 
		14 0.26599569111560045 15 0.18583540770393228 16 0.11692419803169773 17 0.070482884154031436 
		18 0.060897189281984176 19 0.081512331045247383 20 0.11198837312691641 21 
		0.13198537921008671 22 0.13682795914019591 23 0.13711454818476276 24 0.1354159481600038 
		25 0.13430296088213575 26 0.13600639565643707 27 0.13928968938887407 28 0.1415225852966949 
		29 0.14007482659714776 30 0.1323161565074808;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.45816557815793757 1 0.46755822780096756 
		2 0.48847963899738844 3 0.51545776644498842 4 0.54302056484155536 5 0.56569598888487771 
		6 0.57801199327274377 7 0.58203397258670375 8 0.58255264194707213 9 0.57818393685978353 
		10 0.56754379283077205 11 0.549248145365972 12 0.521912929971318 13 0.47669701087469518 
		14 0.41306956417951152 15 0.34211199320498431 16 0.27490570127033104 17 0.22253209169476898 
		18 0.18994382265618245 19 0.170894308972496 20 0.15966608892298745 21 0.15054170078693482 
		22 0.14435079325743458 23 0.14335791092418923 24 0.14399793591138582 25 0.14270575034321123 
		26 0.13780483074577246 27 0.13121162691005225 28 0.12475048085755125 29 0.12024573460977013 
		30 0.11952173018820952;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 1 -11.911652192620773 2 -20.76390122861325 
		3 -30.818594329945647 4 -41.529353075781842 5 -52.349799045285742 6 -62.733553817621228 
		7 -72.134238971952172 8 -80.005476087442489 9 -86.626712731437593 10 -92.603123111275949 
		11 -97.876918766110933 12 -102.39031123509601 13 -106.08551205738453 14 -108.90473277212999 
		15 -110.79018491848576 16 -112.07062914128245 17 -113.12065853056939 18 -113.95123329332804 
		19 -114.57331363653989 20 -114.99785976718645 21 -115.23583189224915 22 -115.29819021870952 
		23 -115.19589495354903 24 -114.93990630374914 25 -114.54118447629135 26 -114.01068967815712 
		27 -113.35938211632798 28 -112.59822199778539 29 -111.73816952951083 30 -110.79018491848576;
createNode animCurveTU -n "mlh_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTU -n "mlh_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTU -n "mlh_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTU -n "mlh_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTU -n "mlh_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTU -n "mlh_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTU -n "mlh_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 1;
createNode animCurveTU -n "mlh_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 1;
createNode animCurveTA -n "mlh_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTL -n "mlh_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTL -n "mlh_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTL -n "mlh_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTL -n "animCurveTL296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.0144086319011758 6 1.2226628650071876 
		12 1.1237936702150706 15 0.67279308231273705 19 0.45767329698442788 23 0.42471957076167488 
		30 0.42471957076167488;
createNode animCurveTL -n "animCurveTL297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.1198126115895879 6 1.6673560950121395 
		12 1.5351822968118796 15 1.1890974130070411 19 0.49828661080160153 23 0.15617942679476385 
		30 0.15617942679476385;
createNode animCurveTL -n "animCurveTL298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.5111386248335259 6 1.0500082588287662 
		12 0.93139632063352173 15 0.45596310793574701 19 0.18960595071350941 23 0.04295041053611711 
		30 0.04295041053611711;
createNode animCurveTA -n "animCurveTA814";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -28.331470732084387 6 -14.868773507399556 
		12 -129.95294279235549 15 -104.61282655098202 19 20.42261469956993 23 -3.1220038384960587 
		30 -3.1220038384960587;
createNode animCurveTA -n "animCurveTA815";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -10.113681911874206 6 -78.632110970251233 
		12 -77.167965108756619 15 -59.174870718837056 19 -120.91731311278465 23 -113.32682153040034 
		30 -113.32682153040034;
createNode animCurveTA -n "animCurveTA816";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 3.6896128937020123 6 45.811993104511636 
		12 160.88172185248797 15 164.32116342231345 19 1.2347523458486165 23 4.5212018102435723 
		30 4.5212018102435723;
createNode animCurveTL -n "animCurveTL299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.4527191723658217 6 1.6613877290312453 
		12 0.95579556625848594 15 -0.13038708826804987 19 0.21594587158542247 23 
		0.21594587158542247 30 0.21594587158542247;
createNode animCurveTL -n "animCurveTL300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.1031892458011163 6 1.7236745837384495 
		12 1.6535390184723893 15 1.001806518710681 19 0.19968793908602153 23 0.15592918032721184 
		30 0.15592918032721184;
createNode animCurveTL -n "animCurveTL301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.4717026627367022 6 1.6289704736610506 
		12 1.4835782452222117 15 0.48669223335250289 19 0.44052353268102978 23 0.48428229143983942 
		30 0.48428229143983942;
createNode animCurveTA -n "animCurveTA817";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -27.647037481197401 6 -1.6245559154144846 
		12 -98.648923617843252 15 -135.08543617433844 19 -169.048211218012 23 -171.83932330268107 
		30 -171.83932330268107;
createNode animCurveTA -n "animCurveTA818";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.6471102606573036 6 -33.658783037948005 
		12 -69.202813513275629 15 -56.780741339184488 19 -69.249994910671361 23 -68.169561768861598 
		30 -68.169561768861598;
createNode animCurveTA -n "animCurveTA819";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 7.7922141916432519 6 -6.8168172273151395 
		12 123.36829379451167 15 178.0097109456247 19 183.58467400889313 23 170.56724895848305 
		30 170.56724895848305;
createNode animCurveTA -n "mlh_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_Right_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_Right_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_Right_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_Left_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_Left_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_Left_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTL -n "animCurveTL302";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0.034660776702225261 12 0.034660776702225261 
		15 0.034660776702225261 19 0.037136546583753045 23 0 30 0;
createNode animCurveTL -n "animCurveTL303";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0.43236842264083392 12 0.43236842264083392 
		15 0.43236842264083392 19 0.46325188044122045 23 0 30 0;
createNode animCurveTL -n "animCurveTL304";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 6 1.022596790343715 12 1.022596790343715 
		15 1.022596790343715 19 1.024210846778379 23 1 30 1;
createNode animCurveTL -n "animCurveTL305";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTL -n "animCurveTL306";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTL -n "animCurveTL307";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 6 1 12 1 15 1 19 1 23 1 30 
		1;
createNode animCurveTL -n "animCurveTL308";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.232775796107124 6 1.487268636320489 
		12 0.84966778891871164 15 0.14424348184978855 19 0.27010856435616892 23 0.27485150377841289 
		30 0.27078550131278833;
createNode animCurveTL -n "animCurveTL309";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.5264096741096354 6 2.3677091613827397 
		12 2.2809999970960235 15 1.7232515623566733 19 1.0010526182667008 23 0.71953450501365268 
		30 0.96067307055352125;
createNode animCurveTL -n "animCurveTL310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.93763754208463834 6 1.1829036717395498 
		12 1.0680967322075994 15 0.45541274473419691 19 0.30808414476402368 23 0.2920478433389147 
		30 0.2446016607575533;
createNode animCurveTA -n "animCurveTA832";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -14.532001338790588 6 -43.60093415730892 
		12 -148.56017694126103 15 -172.64738219863489 19 -178.32017754444556 23 -164.6957625380733 
		30 -181.38341392974726;
createNode animCurveTA -n "animCurveTA833";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 -69.990829128852255 12 -74.659537822064337 
		15 -52.378684692527266 19 -47.384674013975918 23 -49.574855699002413 30 -49.574855699002391;
createNode animCurveTA -n "animCurveTA834";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 22.241174303419008 12 150.82505898719899 
		15 175.09000486188117 19 177.96257061233209 23 181.77516513600506 30 181.7751651360046;
createNode animCurveTA -n "mlh_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "animCurveTA858";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA859";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA860";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0.29765972495079041;
	setAttr ".kiy[0]"  0.95467203855514526;
createNode animCurveTL -n "mlh_Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 -0.43524234076486068;
createNode animCurveTL -n "mlh_Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 -0.82665738350180629;
createNode animCurveTL -n "mlh_Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0.27773886459742925;
createNode animCurveTA -n "mlh_Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 28.652637602052774;
createNode animCurveTA -n "mlh_Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 64.676908227303443;
createNode animCurveTL -n "mlh_Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0.5198069948790518;
createNode animCurveTL -n "mlh_Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 -0.72394202659893114;
createNode animCurveTL -n "mlh_Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0.36439499068905612;
createNode animCurveTA -n "mlh_Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 7.7976222737965317;
createNode animCurveTA -n "mlh_Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 -30.409274105849079;
createNode animCurveTA -n "mlh_Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 -64.859940280210893;
createNode animCurveTL -n "animCurveTL317";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.7557418833544358 6 2.0320263222251675 
		12 1.5789447819403624 15 0.73133697534548181 19 1.0426625506025762 23 1.0758634811057812 
		30 0.97280454603329236;
createNode animCurveTL -n "animCurveTL318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 3.7286474726585705 6 3.6357283262506757 
		12 3.9320850284055178 15 3.513383855752068 19 2.0858781576746996 23 1.1961596609270233 
		30 1.2541244860637808;
createNode animCurveTL -n "animCurveTL319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.4816110492099963 6 1.1763802009924564 
		12 0.82369496811445486 15 -0.091377751237004964 19 -0.31189470654151014 23 
		-0.33562249572696728 30 -0.17929719218555817;
createNode animCurveTA -n "animCurveTA867";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -33.734888782993906 6 -31.272315638745823 
		12 83.227159798924291 15 78.6625245028455 19 43.967138196032678 23 130.58941958009308 
		30 220.90896415127256;
createNode animCurveTA -n "animCurveTA868";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 14.870586397896902 6 -27.542268230492478 
		12 -63.127065524947852 15 -27.600328353803796 19 -43.18621000293053 23 -57.432684509120577 
		30 -31.611876234674341;
createNode animCurveTA -n "animCurveTA869";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 30.592169336881899 6 -23.705926689999014 
		12 -43.378083526117621 15 -127.01948419350366 19 -108.31315155321009 23 -164.8145574092332 
		30 -233.83174650947143;
createNode animCurveTL -n "animCurveTL320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 4.2602840929099726 6 2.4349248254141824 
		12 0.56755409218319386 15 -0.35397463560481596 19 -0.31437136557875472 23 
		-0.1893510352415263 30 0.15490543823085126;
createNode animCurveTL -n "animCurveTL321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 3.8208059664542691 6 3.8026509340906562 
		12 3.4122146419506736 15 3.2564957716833374 19 2.1674850212791243 23 1.0603249062614366 
		30 1.2046269710762594;
createNode animCurveTL -n "animCurveTL322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.5924222907155747 6 2.572613752811292 
		12 2.3812097276119903 15 1.5194852025327452 19 1.3526521780395544 23 1.2560521214181848 
		30 1.1534303021330221;
createNode animCurveTA -n "animCurveTA870";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -26.203413720634714 6 4.6613644930380378 
		12 135.05490232368319 15 185.67851832553541 19 119.4969719567365 23 142.62940656438087 
		30 159.73669575466215;
createNode animCurveTA -n "animCurveTA871";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -14.791961579779635 6 -36.108857241373819 
		12 -37.198790080116289 15 -58.846420601971467 19 -39.774148246065337 23 -25.630890987615381 
		30 -48.227224459632737;
createNode animCurveTA -n "animCurveTA872";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -45.895436695401962 6 -2.913287519114713 
		12 -144.40156807522339 15 -228.39098163297678 19 -169.03339264937395 23 -177.75343970687922 
		30 -147.78167708424758;
createNode animCurveTL -n "animCurveTL323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.063331173333856447 6 0.37736680843384973 
		12 0.37736680843384973 15 0.37736680843384973 19 0.047646009069586132 23 
		0.047646009069586132 30 0.047646009069586132;
createNode animCurveTL -n "animCurveTL324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.69960805773293522 6 -0.54343311259648019 
		12 -0.54343311259648019 15 -0.54343311259648019 19 -0.70977769184901862 23 
		-0.70977769184901862 30 -0.70977769184901862;
createNode animCurveTL -n "animCurveTL325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.66762598980258558 6 -0.97043124551903082 
		12 -0.97043124551903082 15 -0.97043124551903082 19 -0.64237249774344829 23 
		-0.64237249774344829 30 -0.64237249774344829;
createNode animCurveTL -n "animCurveTL326";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.31054502397108613 6 -0.31054502397108613 
		12 -0.31054502397108613 15 -0.31054502397108613 19 -0.31054502397108613 23 
		-0.31054502397108613 30 -0.31054502397108613;
createNode animCurveTL -n "animCurveTL327";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.55640530640609931 6 -0.55640530640609931 
		12 -0.55640530640609931 15 -0.55640530640609931 19 -0.55640530640609931 23 
		-0.55640530640609931 30 -0.55640530640609931;
createNode animCurveTL -n "animCurveTL328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.57914122395678103 6 -0.57914122395678103 
		12 -0.57914122395678103 15 -0.57914122395678103 19 -0.57914122395678103 23 
		-0.57914122395678103 30 -0.57914122395678103;
createNode animCurveTA -n "animCurveTA873";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.253734489678925 6 12.253734489678925 
		12 12.253734489678925 15 12.253734489678925 19 12.253734489678925 23 12.253734489678925 
		30 12.253734489678925;
createNode animCurveTA -n "animCurveTA874";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -65.746751280844975 6 -65.746751280844961 
		12 -65.746751280844961 15 -65.746751280844961 19 -65.746751280844961 23 -65.746751280844961 
		30 -65.746751280844975;
createNode animCurveTA -n "animCurveTA875";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA876";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.061808866237340665 6 -0.061808866237337522 
		12 -0.061808866237337522 15 -0.061808866237337522 19 -0.061808866237337522 
		23 -0.061808866237337522 30 -0.061808866237340665;
createNode animCurveTA -n "animCurveTA877";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -59.058178941076754 6 -59.058178941076754 
		12 -59.058178941076754 15 -59.058178941076754 19 -59.058178941076754 23 -59.058178941076754 
		30 -59.058178941076754;
createNode animCurveTA -n "animCurveTA878";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.57914742975785 6 16.579147429757843 
		12 16.579147429757843 15 16.579147429757843 19 16.579147429757843 23 16.579147429757843 
		30 16.57914742975785;
createNode animCurveTA -n "animCurveTA879";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.5572674112203639 6 8.5572674112203622 
		12 8.5572674112203622 15 8.5572674112203622 19 8.5572674112203622 23 8.5572674112203622 
		30 8.5572674112203639;
createNode animCurveTA -n "animCurveTA880";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.711328223519061 6 15.711328223519057 
		12 15.711328223519057 15 15.711328223519057 19 15.711328223519057 23 15.711328223519057 
		30 15.711328223519061;
createNode animCurveTA -n "animCurveTA881";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA882";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA883";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA884";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA885";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA886";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA887";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 10.423754966968488 6 10.423754966968488 
		12 10.423754966968488 15 10.423754966968488 19 10.423754966968488 23 10.423754966968488 
		30 143.71460997127252;
createNode animCurveTA -n "animCurveTA888";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.7228482558439 6 27.722848255843903 
		12 27.722848255843903 15 27.722848255843903 19 27.722848255843903 23 27.722848255843903 
		30 27.804554996454378;
createNode animCurveTA -n "animCurveTA889";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 21.576484776388224 6 21.576484776388227 
		12 21.576484776388227 15 21.576484776388227 19 21.576484776388227 23 21.576484776388227 
		30 29.452980944098744;
createNode animCurveTA -n "animCurveTA890";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA891";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA892";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.080064458283051 6 27.080064458283051 
		12 27.080064458283051 15 27.080064458283051 19 27.080064458283051 23 27.080064458283051 
		30 27.080064458283051;
createNode animCurveTA -n "mlh_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 0;
createNode animCurveTA -n "mlh_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  23 13.994403295754109;
createNode animCurveTA -n "animCurveTA902";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA903";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA904";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.911632519594587 6 27.911632519594587 
		12 27.911632519594587 15 27.911632519594587 19 27.911632519594587 23 27.911632519594587 
		30 27.911632519594587;
createNode animCurveTA -n "animCurveTA905";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA906";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA907";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA908";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.3731006602189262 6 -20.366496729169029 
		12 -25.890727135803381 15 -12.127424507599908 19 -4.673284826683159 23 -1.9577379242441693 
		30 -2.6595410672074675;
createNode animCurveTA -n "animCurveTA909";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.38374158911587314 6 -1.1313888543542436 
		12 -2.3049251976124192 15 -3.546263523020015 19 -4.9375706220930464 23 -5.5934575306199017 
		30 -4.2368721935960938;
createNode animCurveTA -n "animCurveTA910";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.96901743689791253 6 16.15457756926455 
		12 8.347150333684521 15 -8.2411431930903927 19 5.1436031948885814 23 8.1712083063342735 
		30 2.6995264082587447;
	setAttr -s 7 ".kit[2:6]"  1 9 9 9 9;
	setAttr -s 7 ".kot[2:6]"  1 9 9 9 9;
	setAttr -s 7 ".kix[2:6]"  0.48331466317176819 0.97247004508972168 
		0.68138056993484497 0.9933006763458252 0.92548531293869019;
	setAttr -s 7 ".kiy[2:6]"  -0.87544667720794678 -0.23302790522575378 
		0.73192936182022095 -0.11555840075016022 -0.37878343462944031;
	setAttr -s 7 ".kox[2:6]"  0.48331478238105774 0.97247004508972168 
		0.68138056993484497 0.9933006763458252 0.92548531293869019;
	setAttr -s 7 ".koy[2:6]"  -0.875446617603302 -0.23302790522575378 
		0.73192936182022095 -0.11555840075016022 -0.37878343462944031;
createNode animCurveTA -n "animCurveTA911";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.214467445058347 6 7.1097278539792699 
		12 7.1097278539792699 15 7.1097278539792699 19 7.1097278539792699 23 7.1097278539792699 
		30 0;
createNode animCurveTA -n "animCurveTA912";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -5.3642380392152509 6 0 12 0 
		15 0 19 0 23 0 30 0;
createNode animCurveTA -n "animCurveTA913";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -10.22398177073733 6 0 12 0 15 
		0 19 0 23 0 30 0;
createNode animCurveTA -n "animCurveTA914";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 4.9690701715193732 6 8.2366350078582773 
		12 8.4757225690489832 15 7.3518879835207844 19 0.96879310801463325 23 3.9419577869899456 
		30 -1.3135728563434184;
createNode animCurveTA -n "animCurveTA915";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.9904681746768547 6 7.4797257149309191 
		12 1.1477434634438117 15 4.3084796178036697 19 -3.6699062068098405 23 6.189897527785976 
		30 -17.736920898324417;
createNode animCurveTA -n "animCurveTA916";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.853052292944849 6 7.3690439204730236 
		12 14.696180294034731 15 35.05266870362145 19 29.40037223169206 23 35.921830900787498 
		30 5.5539259014248019;
createNode animCurveTA -n "animCurveTA917";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.2118338921357275 6 -1.8903601258661931 
		12 -1.8903601258661931 15 11.450820214559736 19 1.4672032523553795 23 1.4672032523553795 
		30 -1.8903601258661935;
createNode animCurveTA -n "animCurveTA918";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.7086730360615547 6 2.5597289571479034 
		12 2.5597289571479034 15 2.5597289571479047 19 3.0842593602314001 23 3.0842593602314001 
		30 2.5597289571479038;
createNode animCurveTA -n "animCurveTA919";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.7082804953288222 6 2.016811087403604 
		12 2.016811087403604 15 2.0168110874036151 19 -2.0736047826525068 23 -2.0736047826525068 
		30 2.0168110874036049;
createNode animCurveTA -n "animCurveTA920";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA921";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA922";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 33.429092416277157 6 33.429092416277157 
		12 33.429092416277157 15 33.429092416277157 19 33.429092416277157 23 33.429092416277157 
		30 33.429092416277157;
createNode animCurveTA -n "animCurveTA923";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.2533422302317216 6 8.2533422302317216 
		12 8.2533422302317216 15 8.2533422302317216 19 8.2533422302317216 23 8.2533422302317216 
		30 106.91515461315004;
createNode animCurveTA -n "animCurveTA924";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 23.263402056531085 6 23.263402056531085 
		12 23.263402056531085 15 23.263402056531085 19 23.263402056531085 23 23.263402056531085 
		30 28.612774017129322;
createNode animCurveTA -n "animCurveTA925";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 20.166277752815617 6 20.166277752815617 
		12 20.166277752815617 15 20.166277752815617 19 20.166277752815617 23 20.166277752815617 
		30 17.632837226638053;
createNode animCurveTA -n "animCurveTA926";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA927";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA928";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 17.254116939558369 6 17.254116939558369 
		12 17.254116939558369 15 17.254116939558369 19 17.254116939558369 23 17.254116939558369 
		30 17.254116939558369;
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
	setAttr -s 73 ".lnk";
select -ne :time1;
	setAttr ".o" 23;
select -ne :renderPartition;
	setAttr -s 73 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 73 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 37 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 37 ".tx";
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
	setAttr -s 1356 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".top" 478;
	setAttr ".rght" 638;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
select -ne :defaultResolution;
	setAttr ".w" 720;
	setAttr ".h" 486;
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
connectAttr "mlh_get_out_of_car_highSource.st" "clipLibrary1.st[0]";
connectAttr "mlh_get_out_of_car_highSource.du" "clipLibrary1.du[0]";
connectAttr "mlh_Extra_Attributes_translateX.a" "clipLibrary1.cel[0].cev[0].cevr"
		;
connectAttr "mlh_Extra_Attributes_translateY.a" "clipLibrary1.cel[0].cev[1].cevr"
		;
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "mlh_Hoop_Root_IK_FK_RFoot.a" "clipLibrary1.cel[0].cev[6].cevr"
		;
connectAttr "mlh_Hoop_Root_IK_FK_LFoot.a" "clipLibrary1.cel[0].cev[7].cevr"
		;
connectAttr "mlh_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary1.cel[0].cev[8].cevr"
		;
connectAttr "mlh_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary1.cel[0].cev[9].cevr"
		;
connectAttr "mlh_Hoop_Root_IK_FK_RArm.a" "clipLibrary1.cel[0].cev[10].cevr"
		;
connectAttr "mlh_Hoop_Root_IK_FK_LArm.a" "clipLibrary1.cel[0].cev[11].cevr"
		;
connectAttr "mlh_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "mlh_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "mlh_Hoop_Root_rotateX.a" "clipLibrary1.cel[0].cev[14].cevr"
		;
connectAttr "mlh_Hoop_Root_rotateY.a" "clipLibrary1.cel[0].cev[15].cevr"
		;
connectAttr "mlh_Hoop_Root_rotateZ.a" "clipLibrary1.cel[0].cev[16].cevr"
		;
connectAttr "mlh_Hoop_Root_translateX.a" "clipLibrary1.cel[0].cev[17].cevr"
		;
connectAttr "mlh_Hoop_Root_translateY.a" "clipLibrary1.cel[0].cev[18].cevr"
		;
connectAttr "mlh_Hoop_Root_translateZ.a" "clipLibrary1.cel[0].cev[19].cevr"
		;
connectAttr "animCurveTL296.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL297.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL298.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA814.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA815.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA816.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL299.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL300.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL301.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA817.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA818.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA819.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "mlh_Right_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[32].cevr"
		;
connectAttr "mlh_Right_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[33].cevr"
		;
connectAttr "mlh_Right_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[34].cevr"
		;
connectAttr "mlh_Left_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[35].cevr"
		;
connectAttr "mlh_Left_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[36].cevr"
		;
connectAttr "mlh_Left_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[37].cevr"
		;
connectAttr "mlh_Right_Toe_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[38].cevr"
		;
connectAttr "mlh_Right_Toe_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[39].cevr"
		;
connectAttr "mlh_Right_Toe_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[40].cevr"
		;
connectAttr "mlh_Left_Toe_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[41].cevr"
		;
connectAttr "mlh_Left_Toe_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[42].cevr"
		;
connectAttr "mlh_Left_Toe_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[43].cevr"
		;
connectAttr "animCurveTL302.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL303.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL304.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL305.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL306.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL307.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL308.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL309.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL310.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA832.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA833.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA834.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "mlh_R_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "mlh_R_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "mlh_R_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "mlh_R_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[59].cevr"
		;
connectAttr "mlh_R_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[60].cevr"
		;
connectAttr "mlh_R_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[61].cevr"
		;
connectAttr "mlh_R_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[62].cevr"
		;
connectAttr "mlh_R_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[63].cevr"
		;
connectAttr "mlh_R_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[64].cevr"
		;
connectAttr "mlh_R_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[65].cevr"
		;
connectAttr "mlh_L_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "mlh_L_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "mlh_L_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "mlh_L_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[69].cevr"
		;
connectAttr "mlh_L_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[70].cevr"
		;
connectAttr "mlh_L_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[71].cevr"
		;
connectAttr "mlh_L_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[72].cevr"
		;
connectAttr "mlh_L_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[73].cevr"
		;
connectAttr "mlh_L_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[74].cevr"
		;
connectAttr "mlh_L_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[75].cevr"
		;
connectAttr "mlh_R_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[76].cevr"
		;
connectAttr "mlh_R_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[77].cevr"
		;
connectAttr "mlh_R_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[78].cevr"
		;
connectAttr "animCurveTA858.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA859.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA860.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "mlh_Right_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "mlh_Right_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "mlh_Right_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "mlh_Right_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "mlh_Right_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "mlh_Right_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "mlh_Left_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "mlh_Left_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "mlh_Left_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "mlh_Left_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "mlh_Left_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "mlh_Left_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[93].cevr"
		;
connectAttr "animCurveTL317.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL318.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL319.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA867.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA868.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA869.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL320.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL321.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL322.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA870.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA871.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA872.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL323.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL324.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL325.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL326.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL327.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL328.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA873.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA874.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA875.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA876.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA877.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA878.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA879.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA880.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA881.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA882.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA883.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA884.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA885.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA886.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA887.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA888.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA889.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA890.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA891.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA892.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "mlh_Pelvis_rotateX.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "mlh_Pelvis_rotateY.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "mlh_Pelvis_rotateZ.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "mlh_Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "mlh_Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "mlh_Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "mlh_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "mlh_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "mlh_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA902.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA903.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA904.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA905.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA906.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA907.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA908.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA909.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA910.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA911.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA912.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA913.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA914.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA915.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA916.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA917.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA918.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA919.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA920.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA921.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA922.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA923.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA924.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA925.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA926.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA927.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA928.a" "clipLibrary1.cel[0].cev[167].cevr";
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
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[72].olnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of mlh_get_out_of_car_high.ma
