//Maya ASCII 4.0 scene
//Name: npd_fall_land.ma
//Last modified: Wed, Oct 09, 2002 11:01:21 AM
requires maya "4.0";
requires "p3dmayaexp" "18.5";
requires "p3dSimpleShader" "18.5";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "npd_fall_landSource";
	setAttr ".ihi" 0;
	setAttr ".du" 22;
	setAttr ".ci" no;
createNode animCurveTL -n "npd_Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "npd_Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 -0.00025346232244501809 1 -0.00025346232244501809 
		2 -0.00025346232244501809 3 -0.00025346232244501809 4 -0.00025346232244501809 
		5 -0.00025346232244501809 6 -0.00025346232244501809 7 -0.00025346232244501809 
		8 -0.00025346232244501809 9 -0.00025346232244501809 10 -0.00025346232244501809 
		11 -0.00025346232244501809 12 -0.00025346232244501809 13 -0.00025346232244501809 
		14 -0.00025346232244501809 15 -0.00025346232244501809 16 -0.00025346232244501809 
		17 -0.00025346232244501809 18 -0.00025346232244501809 19 -0.00025346232244501809 
		20 -0.00025346232244501809 21 -0.00025346232244501809 22 -0.00025346232244501809;
createNode animCurveTL -n "apu_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 -0.037440149138872753 1 0.048864085323770942 
		2 0.13516832235528753 3 0.22284656405654585 4 0.30598675292611199 5 0.39050095303925603 
		6 0.49549934886190244 7 0.65457422921138764 8 0.83089934704866741 9 0.98176660119622949 
		10 1.1199434820343119 11 1.2341809016112866 12 1.3538204508980247 13 1.5293845012811034 
		14 1.6860816368449616 15 1.7483187879661162 16 1.7690232891645452 17 1.774207142529121 
		18 1.7690232891645452 19 1.7690232891645452 20 1.7690232891645452 21 1.7690232891645452 
		22 1.7690232891645452;
createNode animCurveTA -n "apu_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0;
createNode animCurveTU -n "npd_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "npd_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "npd_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "npd_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  3 1 6 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTU -n "apu_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  3 1 6 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
createNode animCurveTU -n "apu_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "apu_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "npd_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "npd_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "npd_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "npd_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "apu_Right_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.19572374722086516 3 -0.19572374722086516 
		6 -0.19572374722086516 8 -0.19572374722086516 10 -0.19572374722086516 12 
		-0.19572374722086516 14 -0.19572374722086516 16 -0.24100084097528005 18 -0.26364600624376133 
		20 -0.26364600624376133 22 -0.24100084097528005;
createNode animCurveTL -n "apu_Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.61194445537726849 3 0.53359502859131724 
		6 0.95560952081606587 8 1.2942635910999472 10 0.62395672418793391 12 1.1491971031788946 
		14 0.79496596715555767 16 0.26626747622056834 18 0.26626747622056834 20 0.26626747622056834 
		22 0.26626747622056834;
createNode animCurveTL -n "apu_Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.66407074883320671 3 -0.25491263117323931 
		6 0.082698962606559942 8 0.94038532978893274 10 0.80685797570285755 12 1.2508343106036792 
		14 1.7207143999792798 16 1.7206899827818294 18 1.7206899827818294 20 1.7206899827818294 
		22 1.7206899827818294;
createNode animCurveTA -n "apu_Right_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 107.12974160247622 3 107.12974160247622 
		6 160.90459513373824 8 213.71719035993513 10 135.24274127611599 12 167.44236808264051 
		14 167.44236808264051 16 128.77843937405063 18 128.86701076447611 20 128.86701076447611 
		22 128.77843937405063;
createNode animCurveTA -n "apu_Right_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 3.1945677128450436 3 3.1945677128450436 
		6 10.152315094558432 8 10.488754176269788 10 4.3798931149194757 12 8.9323147665470994 
		14 8.9323147665470994 16 3.2390234466546288 18 1.5262774348198223 20 1.5262774348198223 
		22 3.2390234466546288;
createNode animCurveTA -n "apu_Right_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -10.24886043367729 3 -10.24886043367729 
		6 -3.4919499729727246 8 2.275814378233326 10 -9.8050775496177121 12 -5.969795223085316 
		14 -5.969795223085316 16 -10.235032258828131 18 -8.1050180746134153 20 -8.1050180746134153 
		22 -10.235032258828131;
createNode animCurveTL -n "apu_Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.2313632684111056 3 0.2313632684111056 
		6 0.2313632684111056 8 0.2313632684111056 10 0.2313632684111056 12 0.2313632684111056 
		14 0.2313632684111056 16 0.25794208000127716 18 0.22370520524125515 20 0.22370520524125515 
		22 0.25794208000127716;
	setAttr -s 11 ".kit[1:10]"  3 3 9 9 9 9 9 
		9 9 9;
	setAttr -s 11 ".kot[1:10]"  3 3 9 9 9 9 9 
		9 9 9;
createNode animCurveTL -n "apu_Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.24199824563570918 3 0.13408247481367705 
		6 0.13408247481367705 8 0.47814477400233513 10 0.59344430864693143 12 1.0721944733566871 
		14 0.71796333733335016 16 0.3056450173588931 18 0.3056450173588931 20 0.3056450173588931 
		22 0.3056450173588931;
	setAttr -s 11 ".kit[1:10]"  3 3 9 9 9 9 9 
		9 9 9;
	setAttr -s 11 ".kot[1:10]"  3 3 9 9 9 9 9 
		9 9 9;
createNode animCurveTL -n "apu_Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.37050541807239606 3 0.42918539010690382 
		6 0.42918539010690382 8 0.3704301846114707 10 0.81602011198523572 12 1.1720643748212758 
		14 1.6419444641968768 16 1.7084230018340163 18 1.7084230018340163 20 1.7084230018340163 
		22 1.7084230018340163;
	setAttr -s 11 ".kit[1:10]"  3 3 9 9 9 9 9 
		9 9 9;
	setAttr -s 11 ".kot[1:10]"  3 3 9 9 9 9 9 
		9 9 9;
createNode animCurveTA -n "apu_Left_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -29.346680766477817 3 -1.8119753930768279 
		6 -1.8119753930768279 8 116.09376588747672 10 115.73947967632282 12 115.73947967632282 
		14 115.73947967632282 16 122.11299572646904 18 121.43298298745084 20 121.43298298745084 
		22 122.11299572646904;
	setAttr -s 11 ".kit[1:10]"  3 3 9 9 9 9 9 
		9 9 9;
	setAttr -s 11 ".kot[1:10]"  3 3 9 9 9 9 9 
		9 9 9;
createNode animCurveTA -n "apu_Left_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 14 0 
		16 -7.9780894831315399 18 -10.558625867857002 20 -10.558625867857002 22 -7.9780894831315399;
	setAttr -s 11 ".kit[1:10]"  3 3 9 9 9 9 9 
		9 9 9;
	setAttr -s 11 ".kot[1:10]"  3 3 9 9 9 9 9 
		9 9 9;
createNode animCurveTA -n "apu_Left_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 14 0 
		16 12.470021766950317 18 16.689232915271042 20 16.689232915271042 22 12.470021766950317;
	setAttr -s 11 ".kit[1:10]"  3 3 9 9 9 9 9 
		9 9 9;
	setAttr -s 11 ".kot[1:10]"  3 3 9 9 9 9 9 
		9 9 9;
createNode animCurveTA -n "npd_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "apu_Right_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0.033436724819201062 
		10 0.033436724819201062 12 0.033436724819201062 14 0.033436724819201062 16 
		0.033436724819201062 18 0.033436724819201062 20 0.033436724819201062 22 0.033436724819201062;
createNode animCurveTL -n "apu_Right_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0.69212454532728063 
		10 0.69212454532728063 12 0.69212454532728063 14 0.69212454532728063 16 0.69212454532728063 
		18 0.69212454532728063 20 0.69212454532728063 22 0.69212454532728063;
createNode animCurveTL -n "apu_Right_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 3 1 6 1 8 0.59301586675974893 
		10 0.59301586675974893 12 0.59301586675974893 14 0.59301586675974893 16 0.59301586675974893 
		18 0.59301586675974893 20 0.59301586675974893 22 0.59301586675974893;
createNode animCurveTL -n "apu_Left_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 14 0 
		16 0 18 0 20 0 22 0;
createNode animCurveTL -n "apu_Left_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 14 0 
		16 0 18 0 20 0 22 0;
createNode animCurveTL -n "apu_Left_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 3 1 6 1 8 1 10 1 12 1 14 1 
		16 1 18 1 20 1 22 1;
createNode animCurveTL -n "apu_Character_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.00035844360930810788 3 -0.00035844360930810788 
		6 -0.00035844360930810788 8 -0.00035844360930810788 10 -0.00035844360930810788 
		12 -0.00035844360930810788 14 -0.00035844360930810788 16 -0.00035844360930810788 
		18 -0.00035844360930810788 20 -0.00035844360930810788 22 -0.00035844360930810788;
createNode animCurveTL -n "apu_Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.0000000000000002 3 0.9942467123443629 
		6 0.62268534728756375 8 0.54930229605356851 10 0.90525796959709159 12 0.72330354556082666 
		14 0.36907240953749054 16 0.36907240953749054 18 0.36907240953749054 20 0.36907240953749054 
		22 0.36907240953749054;
createNode animCurveTL -n "apu_Character_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.052947444262776172 3 0.31514714286446321 
		6 0.7007296915083111 8 1.1750486543911509 10 1.5838116689258612 12 1.9145578881069556 
		14 2.3844379774825564 16 2.5017331436146306 18 2.5017331436146306 20 2.5017331436146306 
		22 2.5017331436146306;
createNode animCurveTA -n "apu_Character_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.49960331058396229 3 -0.49960331058396229 
		6 89.364200320487726 8 122.40463738529523 10 100.63021874483925 12 90.92859614299033 
		14 90.92859614299033 16 86.032562901840834 18 84.232473282583342 20 84.232473282583342 
		22 86.032562901840834;
createNode animCurveTA -n "apu_Character_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -10.327222484787018 3 -10.327222484787018 
		6 -0.45764635856058727 8 0.68722436105614759 10 -2.4047736508293345 12 1.4046185839792587 
		14 1.4046185839792587 16 1.3120905939844227 18 1.275625121518428 20 1.275625121518428 
		22 1.3120905939844227;
createNode animCurveTA -n "apu_Character_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.23015485897115476 3 0.23015485897115476 
		6 0.78398210080890263 8 -8.1509629560333252 10 -7.8205057152534829 12 -1.0242573179516135 
		14 -1.0242573179516135 16 -1.1403911002177161 18 -1.1810407566496326 20 -1.1810407566496326 
		22 -1.1403911002177161;
createNode animCurveTA -n "npd_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.040709616517141577;
createNode animCurveTA -n "npd_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.8313983219776933;
createNode animCurveTA -n "npd_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.7337164321498379;
createNode animCurveTA -n "npd_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.5673169553733395;
createNode animCurveTA -n "npd_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.938383166068367;
createNode animCurveTA -n "npd_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00040252039393782536;
createNode animCurveTA -n "npd_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.1571952141288733;
createNode animCurveTA -n "npd_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.0034456079181433771;
createNode animCurveTA -n "npd_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.040473860579884585;
createNode animCurveTA -n "npd_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.8313984519406281;
createNode animCurveTA -n "npd_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.7337164553688731;
createNode animCurveTA -n "npd_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.5673170049738836;
createNode animCurveTA -n "npd_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.9383298724540099;
createNode animCurveTA -n "npd_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00017158844849065358;
createNode animCurveTA -n "npd_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.1571951880326767;
createNode animCurveTA -n "npd_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.0034456079182833216;
createNode animCurveTA -n "apu_R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 14 0 
		16 0 18 0 20 0 22 0;
createNode animCurveTA -n "apu_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 14 0 
		16 0 18 0 20 0 22 0;
createNode animCurveTA -n "apu_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.0034456079181433771 3 0.0034456079181433771 
		6 0.0034456079181433771 8 0.0034456079181433771 10 0.0034456079181433771 
		12 0.0034456079181433771 14 0.0034456079181433771 16 0.0034456079181433771 
		18 0.0034456079181433771 20 0.0034456079181433771 22 0.0034456079181433771;
createNode animCurveTA -n "apu_L_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 -0.427884996617722 
		10 -0.427884996617722 12 -0.427884996617722 14 -0.427884996617722 16 -0.427884996617722 
		18 -0.427884996617722 20 -0.427884996617722 22 -0.427884996617722;
createNode animCurveTA -n "apu_L_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0.70197054877592258 
		10 0.70197054877592258 12 0.70197054877592258 14 0.70197054877592258 16 0.70197054877592258 
		18 0.70197054877592258 20 0.70197054877592258 22 0.70197054877592258;
createNode animCurveTA -n "apu_L_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.0034456079182833216 3 0.0034456079182833216 
		6 0.0034456079182833216 8 -11.077595512125122 10 -11.077595512125122 12 -11.077595512125122 
		14 -11.077595512125122 16 -11.077595512125122 18 -11.077595512125122 20 -11.077595512125122 
		22 -11.077595512125122;
createNode animCurveTL -n "apu_Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.98872819052200589 3 -0.98872819052200589 
		6 -0.98872819052200589 8 -0.98872819052200589 10 -0.98872819052200589 12 
		-0.98872819052200589 14 -0.98872819052200589 16 -0.98872819052200589 18 -0.98872819052200589 
		20 -0.98872819052200589 22 -0.98872819052200589;
createNode animCurveTL -n "apu_Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.019519870042852914 3 -0.019519870042852914 
		6 -0.019519870042852914 8 -0.019519870042852914 10 -0.019519870042852914 
		12 -0.019519870042852914 14 -0.019519870042852914 16 -0.019519870042852914 
		18 -0.019519870042852914 20 -0.019519870042852914 22 -0.019519870042852914;
createNode animCurveTL -n "apu_Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.020013375596438072 3 -0.020013375596438072 
		6 -0.020013375596438072 8 -0.020013375596438072 10 -0.020013375596438072 
		12 -0.020013375596438072 14 -0.020013375596438072 16 -0.020013375596438072 
		18 -0.020013375596438072 20 -0.020013375596438072 22 -0.020013375596438072;
createNode animCurveTA -n "apu_Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 9.541664044390555e-015 3 0 6 
		0 8 0 10 0 12 0 14 0 16 0 18 0 20 0 22 0;
createNode animCurveTA -n "apu_Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 6.6324864122366681e-015 3 0 6 
		0 8 0 10 0 12 0 14 0 16 0 18 0 20 0 22 0;
createNode animCurveTA -n "apu_Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.4064602393618892e-014 3 0 6 
		0 8 0 10 0 12 0 14 0 16 0 18 0 20 0 22 0;
createNode animCurveTL -n "apu_Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.98872754407817198 3 0.98872754407817198 
		6 0.98872754407817198 8 0.98872754407817198 10 0.98872754407817198 12 0.98872754407817198 
		14 0.98872754407817198 16 0.98872754407817198 18 0.98872754407817198 20 0.98872754407817198 
		22 0.98872754407817198;
createNode animCurveTL -n "apu_Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.019514335421655121 3 -0.019514335421655121 
		6 -0.019514335421655121 8 -0.019514335421655121 10 -0.019514335421655121 
		12 -0.019514335421655121 14 -0.019514335421655121 16 -0.019514335421655121 
		18 -0.019514335421655121 20 -0.019514335421655121 22 -0.019514335421655121;
createNode animCurveTL -n "apu_Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.020013361448308328 3 -0.020013361448308328 
		6 -0.020013361448308328 8 -0.020013361448308328 10 -0.020013361448308328 
		12 -0.020013361448308328 14 -0.020013361448308328 16 -0.020013361448308328 
		18 -0.020013361448308328 20 -0.020013361448308328 22 -0.020013361448308328;
createNode animCurveTA -n "apu_Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 9.541664044390555e-015 3 0 6 
		0 8 0 10 0 12 0 14 0 16 0 18 0 20 0 22 0;
createNode animCurveTA -n "apu_Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 6.6324864122366681e-015 3 0 6 
		0 8 0 10 0 12 0 14 0 16 0 18 0 20 0 22 0;
createNode animCurveTA -n "apu_Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.4064602393618892e-014 3 0 6 
		0 8 0 10 0 12 0 14 0 16 0 18 0 20 0 22 0;
createNode animCurveTL -n "apu_Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.3848817703086196 3 -1.3848817703086196 
		6 -0.45030538417470517 8 -0.45030538417470517 10 -0.45030538417470517 12 
		-0.45030538417470517 14 -0.45030538417470517 16 -0.45030538417470517 18 -0.45030538417470517 
		20 -0.45030538417470517 22 -0.45030538417470517;
	setAttr -s 11 ".kit[2:10]"  3 3 9 9 3 3 9 
		9 9;
	setAttr -s 11 ".kot[2:10]"  3 3 9 9 3 3 9 
		9 9;
createNode animCurveTL -n "apu_Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.3971606112795563 3 2.3971606112795563 
		6 0.13264282672770519 8 0.13264282672770519 10 0.38349921274584681 12 0.54819492015189841 
		14 0.099427606601853943 16 0.099427606601853943 18 0.099427606601853943 20 
		0.099427606601853943 22 0.099427606601853943;
	setAttr -s 11 ".kit[2:10]"  3 3 9 9 3 3 9 
		9 9;
	setAttr -s 11 ".kot[2:10]"  3 3 9 9 3 3 9 
		9 9;
createNode animCurveTL -n "apu_Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.14844372651139698 3 -0.14844372651139698 
		6 2.4394257130231578 8 2.4394257130231578 10 3.2962059499015322 12 4.146024340205547 
		14 4.8917368480195096 16 4.8917368480195096 18 4.8917368480195096 20 4.8917368480195096 
		22 4.8917368480195096;
	setAttr -s 11 ".kit[2:10]"  3 3 9 9 3 3 9 
		9 9;
	setAttr -s 11 ".kot[2:10]"  3 3 9 9 3 3 9 
		9 9;
createNode animCurveTA -n "apu_Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 77.178230437415891 
		12 88.039352249224265 14 -70.783621423279357 16 -70.783621423279357 18 -70.783621423279357 
		20 -70.783621423279357 22 -70.783621423279357;
	setAttr -s 11 ".kit[2:10]"  3 3 9 9 3 3 9 
		9 9;
	setAttr -s 11 ".kot[2:10]"  3 3 9 9 3 3 9 
		9 9;
createNode animCurveTA -n "apu_Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 81.775384615384979 8 
		81.775384615384979 10 56.922907948326632 12 13.316926744271768 14 84.194436613987094 
		16 84.194436613987094 18 84.194436613987094 20 84.194436613987094 22 84.194436613987094;
	setAttr -s 11 ".kit[2:10]"  3 3 9 9 3 3 9 
		9 9;
	setAttr -s 11 ".kot[2:10]"  3 3 9 9 3 3 9 
		9 9;
createNode animCurveTA -n "apu_Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 74.804356788835676 
		12 81.54648027207439 14 -78.876750796688597 16 -78.876750796688597 18 -78.876750796688597 
		20 -78.876750796688597 22 -78.876750796688597;
	setAttr -s 11 ".kit[2:10]"  3 3 9 9 3 3 9 
		9 9;
	setAttr -s 11 ".kot[2:10]"  3 3 9 9 3 3 9 
		9 9;
createNode animCurveTL -n "apu_Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.3848820121487373 3 1.3848820121487373 
		6 0.39365278874185144 8 0.39365278874185144 10 0.39365278874185144 12 0.69861604017574352 
		14 0.69861604017574352 16 0.69861604017574352 18 0.69861604017574352 20 0.69861604017574352 
		22 0.69861604017574352;
	setAttr -s 11 ".kit[2:10]"  3 3 9 9 3 3 9 
		9 9;
	setAttr -s 11 ".kot[2:10]"  3 3 9 9 3 3 9 
		9 9;
createNode animCurveTL -n "apu_Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.397161655727015 3 2.397161655727015 
		6 0.13350895320867573 8 0.13350895320867573 10 0.49662823743932727 12 0.56959712038651222 
		14 0.10813515757608523 16 0.10813515757608523 18 0.10813515757608523 20 0.10813515757608523 
		22 0.10813515757608523;
	setAttr -s 11 ".kit[2:10]"  3 3 9 1 1 3 9 
		9 9;
	setAttr -s 11 ".kot[2:10]"  3 3 9 1 3 3 9 
		9 9;
	setAttr -s 11 ".ktl[6:10]" no yes yes yes yes;
	setAttr -s 11 ".kix[5:10]"  0.0035038075875490904 0.0010229046456515789 
		1 1 1 1;
	setAttr -s 11 ".kiy[5:10]"  -0.99999386072158813 -0.99999946355819702 
		0 0 0 0;
	setAttr -s 11 ".kox[5:10]"  0.0035038127098232508 1 1 1 1 1;
	setAttr -s 11 ".koy[5:10]"  -0.99999386072158813 0 0 0 0 0;
createNode animCurveTL -n "apu_Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.14844368205557412 3 -0.14844368205557412 
		6 2.2268574653685151 8 2.2268574653685151 10 3.0836377022468908 12 3.9639082236923588 
		14 4.7730939778082346 16 4.7730939778082346 18 4.7730939778082346 20 4.7730939778082346 
		22 4.7730939778082346;
	setAttr -s 11 ".kit[2:10]"  3 3 9 9 3 3 9 
		9 9;
	setAttr -s 11 ".kot[2:10]"  3 3 9 9 3 3 9 
		9 9;
createNode animCurveTA -n "apu_Left_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 93.493138847058461 
		12 69.452856996844133 14 -26.351189861019243 16 -26.351189861019243 18 -26.351189861019243 
		20 -26.351189861019243 22 -26.351189861019243;
	setAttr -s 11 ".kit[2:10]"  3 3 9 9 3 3 9 
		9 9;
	setAttr -s 11 ".kot[2:10]"  3 3 9 9 3 3 9 
		9 9;
createNode animCurveTA -n "apu_Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 -78.662193540591403 8 
		-78.662193540591403 10 16.902781275562816 12 -29.157707084619545 14 -69.998515910532149 
		16 -69.998515910532149 18 -69.998515910532149 20 -69.998515910532149 22 -69.998515910532149;
	setAttr -s 11 ".kit[2:10]"  3 3 9 9 3 3 9 
		9 9;
	setAttr -s 11 ".kot[2:10]"  3 3 9 9 3 3 9 
		9 9;
createNode animCurveTA -n "apu_Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 -78.143012534867722 
		12 -74.553114672830588 14 32.893025019222677 16 32.893025019222677 18 32.893025019222677 
		20 32.893025019222677 22 32.893025019222677;
	setAttr -s 11 ".kit[2:10]"  3 3 9 9 3 3 9 
		9 9;
	setAttr -s 11 ".kot[2:10]"  3 3 9 9 3 3 9 
		9 9;
createNode animCurveTL -n "apu_Left_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0.20787205427495387 8 
		0.83298740762731838 10 0.83298740762731838 12 0.83298740762731838 14 0.83298740762731838 
		16 0.83298740762731838 18 0.83298740762731838 20 0.83298740762731838 22 0.83298740762731838;
createNode animCurveTL -n "apu_Left_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 -0.33917848290241071 
		8 -0.54147697394788863 10 -0.54147697394788863 12 -0.54147697394788863 14 
		-0.54147697394788863 16 -0.54147697394788863 18 -0.54147697394788863 20 -0.54147697394788863 
		22 -0.54147697394788863;
createNode animCurveTL -n "apu_Left_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1 3 -1 6 -1.0529302635632898 
		8 -0.75652079452235588 10 -0.75652079452235588 12 -0.75652079452235588 14 
		-0.75652079452235588 16 -0.75652079452235588 18 -0.75652079452235588 20 -0.75652079452235588 
		22 -0.75652079452235588;
createNode animCurveTL -n "apu_Right_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 -0.38426530261735509 
		8 -0.37614701574565501 10 -0.37614701574565501 12 -0.37614701574565501 14 
		-0.37614701574565501 16 -0.37614701574565501 18 -0.37614701574565501 20 -0.37614701574565501 
		22 -0.37614701574565501;
createNode animCurveTL -n "apu_Right_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 -0.2705222794022541 8 
		-0.62666725356135078 10 -0.62666725356135078 12 -0.62666725356135078 14 -0.62666725356135078 
		16 -0.62666725356135078 18 -0.62666725356135078 20 -0.62666725356135078 22 
		-0.62666725356135078;
createNode animCurveTL -n "apu_Right_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1 3 -1 6 -1.0178329259097998 
		8 -0.89635474299822127 10 -0.89635474299822127 12 -0.89635474299822127 14 
		-0.89635474299822127 16 -0.89635474299822127 18 -0.89635474299822127 20 -0.89635474299822127 
		22 -0.89635474299822127;
createNode animCurveTA -n "apu_R_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -35.478222810903326 3 -6.1302873830943945 
		6 -35.478222810903326 8 -35.478222810903326 10 -35.478222810903326 12 -35.478222810903326 
		14 -35.478222810903326 16 -35.478222810903326 18 -35.478222810903326 20 -35.478222810903326 
		22 -35.478222810903326;
createNode animCurveTA -n "apu_R_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 26.964888378996474 3 9.9859061019184558 
		6 26.964888378996474 8 26.964888378996474 10 26.964888378996474 12 26.964888378996474 
		14 26.964888378996474 16 26.964888378996474 18 26.964888378996474 20 26.964888378996474 
		22 26.964888378996474;
createNode animCurveTA -n "apu_R_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 26.685913698832319 3 32.983621253499486 
		6 26.685913698832319 8 26.685913698832319 10 26.685913698832319 12 26.685913698832319 
		14 26.685913698832319 16 26.685913698832319 18 26.685913698832319 20 26.685913698832319 
		22 26.685913698832319;
createNode animCurveTA -n "apu_L_FK_Shoulder_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -24.594516470061343 3 -16.787220939551521 
		6 -24.594516470061343 8 -24.594516470061343 10 -24.594516470061343 12 -24.594516470061343 
		14 -24.594516470061343 16 -24.594516470061343 18 -24.594516470061343 20 -24.594516470061343 
		22 -24.594516470061343;
createNode animCurveTA -n "apu_L_FK_Shoulder_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 31.280345257908134 3 -19.948847547151178 
		6 31.280345257908134 8 31.280345257908134 10 31.280345257908134 12 31.280345257908134 
		14 31.280345257908134 16 31.280345257908134 18 31.280345257908134 20 31.280345257908134 
		22 31.280345257908134;
createNode animCurveTA -n "apu_L_FK_Shoulder_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -23.937351641633775 3 -2.6284189582643425 
		6 -23.937351641633775 8 -23.937351641633775 10 -23.937351641633775 12 -23.937351641633775 
		14 -23.937351641633775 16 -23.937351641633775 18 -23.937351641633775 20 -23.937351641633775 
		22 -23.937351641633775;
createNode animCurveTA -n "apu_R_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 29.252933647125161 3 29.252933647125161 
		6 29.252933647125161 8 29.252933647125161 10 29.252933647125161 12 29.252933647125161 
		14 29.252933647125161 16 29.252933647125161 18 29.252933647125161 20 29.252933647125161 
		22 29.252933647125161;
createNode animCurveTA -n "apu_L_FK_Elbow_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 28.461377899600361 3 28.461377899600361 
		6 28.461377899600361 8 28.461377899600361 10 28.461377899600361 12 28.461377899600361 
		14 28.461377899600361 16 28.461377899600361 18 28.461377899600361 20 28.461377899600361 
		22 28.461377899600361;
createNode animCurveTA -n "apu_R_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 15.611172536639883 3 14.464268902451213 
		6 15.611172536639883 8 15.611172536639883 10 15.611172536639883 12 15.611172536639883 
		14 15.611172536639883 16 15.611172536639883 18 15.611172536639883 20 15.611172536639883 
		22 15.611172536639883;
createNode animCurveTA -n "apu_R_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 23.077534563546791 3 7.6167765162120222 
		6 23.077534563546791 8 23.077534563546791 10 23.077534563546791 12 23.077534563546791 
		14 23.077534563546791 16 23.077534563546791 18 23.077534563546791 20 23.077534563546791 
		22 23.077534563546791;
createNode animCurveTA -n "apu_R_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -3.0632333899936963 3 -7.3553733919159896 
		6 -3.0632333899936963 8 -3.0632333899936963 10 -3.0632333899936963 12 -3.0632333899936963 
		14 -3.0632333899936963 16 -3.0632333899936963 18 -3.0632333899936963 20 -3.0632333899936963 
		22 -3.0632333899936963;
createNode animCurveTA -n "apu_L_FK_Wrist_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 17.164209345616278 3 22.003802298816932 
		6 17.164209345616278 8 17.164209345616278 10 17.164209345616278 12 17.164209345616278 
		14 17.164209345616278 16 17.164209345616278 18 17.164209345616278 20 17.164209345616278 
		22 17.164209345616278;
createNode animCurveTA -n "apu_L_FK_Wrist_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 29.657739378084262 3 13.195980812094083 
		6 29.657739378084262 8 29.657739378084262 10 29.657739378084262 12 29.657739378084262 
		14 29.657739378084262 16 29.657739378084262 18 29.657739378084262 20 29.657739378084262 
		22 29.657739378084262;
createNode animCurveTA -n "apu_L_FK_Wrist_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 10.498163151148212 3 5.3754738599334404 
		6 10.498163151148212 8 10.498163151148212 10 10.498163151148212 12 10.498163151148212 
		14 10.498163151148212 16 10.498163151148212 18 10.498163151148212 20 10.498163151148212 
		22 10.498163151148212;
createNode animCurveTA -n "apu_Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -60.679962459776895 3 -60.679962459776895 
		6 -60.679962459776895 8 -60.679962459776895 10 -60.679962459776895 12 -60.679962459776895 
		14 -60.679962459776895 16 -60.679962459776895 18 -60.679962459776895 20 -60.679962459776895 
		22 -60.679962459776895;
createNode animCurveTA -n "apu_Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 12.355514613247321 3 12.355514613247321 
		6 12.355514613247321 8 12.355514613247321 10 12.355514613247321 12 12.355514613247321 
		14 12.355514613247321 16 12.355514613247321 18 12.355514613247321 20 12.355514613247321 
		22 12.355514613247321;
createNode animCurveTA -n "apu_Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 13.110465504305042 3 13.110465504305042 
		6 13.110465504305042 8 13.110465504305042 10 13.110465504305042 12 13.110465504305042 
		14 13.110465504305042 16 13.110465504305042 18 13.110465504305042 20 13.110465504305042 
		22 13.110465504305042;
createNode animCurveTA -n "apu_Middle_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -20.551139383726671 3 -20.551139383726671 
		6 -20.551139383726671 8 -20.551139383726671 10 -20.551139383726671 12 -20.551139383726671 
		14 -20.551139383726671 16 -20.551139383726671 18 -20.551139383726671 20 -20.551139383726671 
		22 -20.551139383726671;
createNode animCurveTA -n "apu_Middle_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 3.0722483700821352 3 3.0722483700821352 
		6 3.0722483700821352 8 3.0722483700821352 10 3.0722483700821352 12 3.0722483700821352 
		14 3.0722483700821352 16 3.0722483700821352 18 3.0722483700821352 20 3.0722483700821352 
		22 3.0722483700821352;
createNode animCurveTA -n "apu_Middle_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 19.857676546395723 3 19.857676546395723 
		6 19.857676546395723 8 19.857676546395723 10 19.857676546395723 12 19.857676546395723 
		14 19.857676546395723 16 19.857676546395723 18 19.857676546395723 20 19.857676546395723 
		22 19.857676546395723;
createNode animCurveTA -n "npd_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 12.085861696683486;
createNode animCurveTA -n "npd_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "npd_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 12.085861696683486;
createNode animCurveTA -n "apu_Middle_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 14 0 
		16 0 18 0 20 0 22 0;
createNode animCurveTA -n "apu_Middle_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 14 0 
		16 0 18 0 20 0 22 0;
createNode animCurveTA -n "apu_Middle_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.43065494947832267 3 -0.43065494947832267 
		6 -0.43065494947832267 8 -0.43065494947832267 10 -0.43065494947832267 12 
		-0.43065494947832267 14 -0.43065494947832267 16 -0.43065494947832267 18 -0.43065494947832267 
		20 -0.43065494947832267 22 -0.43065494947832267;
createNode animCurveTA -n "apu_Jaw_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 14 0 
		16 0 18 0 20 0 22 0;
createNode animCurveTA -n "apu_Jaw_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 14 0 
		16 0 18 0 20 0 22 0;
createNode animCurveTA -n "apu_Jaw_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 14 0 
		16 0 18 0 20 0 22 0;
createNode animCurveTA -n "apu_Spine_2_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 7.7969752586095185 3 7.7969752586095185 
		6 7.7969752586095185 8 9.0656703047854883 10 7.388773737473759 12 8.8728393468927891 
		14 8.8728393468927891 16 0.82467661114228774 18 0.79661939345454391 20 0.79661939345454391 
		22 0.82467661114228774;
createNode animCurveTA -n "apu_Spine_2_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 5.2413980566337077 3 5.2413980566337077 
		6 5.2413980566337077 8 -8.4317637141822281 10 -9.9221336659145489 12 -8.4158183983804093 
		14 -8.4158183983804093 16 0.8628848903578672 18 0.85389652078670863 20 0.85389652078670863 
		22 0.8628848903578672;
createNode animCurveTA -n "apu_Spine_2_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.77489921247364857 3 -0.77489921247364857 
		6 -0.77489921247364857 8 -6.2664112219514294 10 3.865407680909279 12 -19.988180090005702 
		14 -19.988180090005702 16 -16.928226010526323 18 -18.412672023577056 20 -18.412672023577056 
		22 -16.928226010526323;
createNode animCurveTA -n "apu_Neck_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -13.212690011012903 3 12.731197442332789 
		6 -0.91110027725755405 8 71.662803488040893 10 -0.28996087387294628 12 0.20936047538742272 
		14 -7.7560292610695436 16 -9.6881682231021777 18 -9.6396874834772479 20 -9.6396874834772479 
		22 -9.7218872422679929;
createNode animCurveTA -n "apu_Neck_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -2.9842200848599729 3 -10.485267136979891 
		6 -13.509538523236897 8 6.3427261560397934 10 7.3907391084339773 12 5.1257346885456396 
		14 5.1257346885456396 16 -2.8087899822799955 18 -3.530998630018908 20 -3.530998630018908 
		22 -3.0344034256627963;
createNode animCurveTA -n "apu_Neck_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 31.743010845542475 3 26.815138117294612 
		6 -41.859949702420778 8 -15.115641547871947 10 31.224468731696458 12 -0.35196501973942018 
		14 -0.35196501973942018 16 19.856630417446357 18 -15.889320962024954 20 -15.889320962024954 
		22 8.7585083127490631;
createNode animCurveTA -n "apu_Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 14 0 
		16 0 18 0 20 0 22 0;
createNode animCurveTA -n "apu_Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 14 0 
		16 0 18 0 20 0 22 0;
createNode animCurveTA -n "apu_Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 14 0 
		16 0 18 0 20 0 22 0;
createNode animCurveTA -n "apu_Spine_1_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.0234458388975831 3 1.0234458388975831 
		6 1.0234458388975831 8 1.2060529596685943 10 1.1458153737982351 12 0.93930200614891513 
		14 0.93930200614891513 16 1.6293668825729426 18 1.5962210664926977 20 1.5962210664926977 
		22 1.6293668825729426;
createNode animCurveTA -n "apu_Spine_1_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.11067472891396538 3 0.11067472891396538 
		6 0.11067472891396538 8 0.85667503180777649 10 0.57530429268640093 12 0.64600673781639739 
		14 0.64600673781639739 16 0.27396735443985731 18 0.30241836611509842 20 0.30241836611509842 
		22 0.27396735443985731;
createNode animCurveTA -n "apu_Spine_1_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -3.0886493310740302 3 -3.0886493310740302 
		6 -3.0886493310740302 8 -8.4322522199395369 10 -6.4310563254005597 12 -13.629952432610652 
		14 -13.629952432610652 16 12.43078492144652 18 10.991280846012664 20 10.991280846012664 
		22 12.43078492144652;
createNode animCurveTA -n "apu_Middle_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -20.551139383726671 3 -20.551139383726671 
		6 -20.551139383726671 8 -20.551139383726671 10 -20.551139383726671 12 -20.551139383726671 
		14 -20.551139383726671 16 -20.551139383726671 18 -20.551139383726671 20 -20.551139383726671 
		22 -20.551139383726671;
createNode animCurveTA -n "apu_Middle_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 3.0722483700821352 3 3.0722483700821352 
		6 3.0722483700821352 8 3.0722483700821352 10 3.0722483700821352 12 3.0722483700821352 
		14 3.0722483700821352 16 3.0722483700821352 18 3.0722483700821352 20 3.0722483700821352 
		22 3.0722483700821352;
createNode animCurveTA -n "apu_Middle_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 19.857676546395723 3 19.857676546395723 
		6 19.857676546395723 8 19.857676546395723 10 19.857676546395723 12 19.857676546395723 
		14 19.857676546395723 16 19.857676546395723 18 19.857676546395723 20 19.857676546395723 
		22 19.857676546395723;
createNode animCurveTA -n "apu_Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -60.679962459776895 3 -60.679962459776895 
		6 -60.679962459776895 8 -60.679962459776895 10 -60.679962459776895 12 -60.679962459776895 
		14 -60.679962459776895 16 -60.679962459776895 18 -60.679962459776895 20 -60.679962459776895 
		22 -60.679962459776895;
createNode animCurveTA -n "apu_Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 12.355514613247321 3 12.355514613247321 
		6 12.355514613247321 8 12.355514613247321 10 12.355514613247321 12 12.355514613247321 
		14 12.355514613247321 16 12.355514613247321 18 12.355514613247321 20 12.355514613247321 
		22 12.355514613247321;
createNode animCurveTA -n "apu_Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 13.110465504305042 3 13.110465504305042 
		6 13.110465504305042 8 13.110465504305042 10 13.110465504305042 12 13.110465504305042 
		14 13.110465504305042 16 13.110465504305042 18 13.110465504305042 20 13.110465504305042 
		22 13.110465504305042;
createNode animCurveTA -n "apu_Middle_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 14 0 
		16 0 18 0 20 0 22 0;
createNode animCurveTA -n "apu_Middle_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 14 0 
		16 0 18 0 20 0 22 0;
createNode animCurveTA -n "apu_Middle_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.43065494947832267 3 -0.43065494947832267 
		6 -0.43065494947832267 8 -0.43065494947832267 10 -0.43065494947832267 12 
		-0.43065494947832267 14 -0.43065494947832267 16 -0.43065494947832267 18 -0.43065494947832267 
		20 -0.43065494947832267 22 -0.43065494947832267;
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
connectAttr "npd_fall_landSource.st" "clipLibrary1.st[0]";
connectAttr "npd_fall_landSource.du" "clipLibrary1.du[0]";
connectAttr "npd_Extra_Attributes_translateX.a" "clipLibrary1.cel[0].cev[0].cevr"
		;
connectAttr "npd_Extra_Attributes_translateY.a" "clipLibrary1.cel[0].cev[1].cevr"
		;
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "apu_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "apu_Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr"
		;
connectAttr "npd_Hoop_Root_IK_FK_RFoot.a" "clipLibrary1.cel[0].cev[6].cevr"
		;
connectAttr "npd_Hoop_Root_IK_FK_LFoot.a" "clipLibrary1.cel[0].cev[7].cevr"
		;
connectAttr "npd_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary1.cel[0].cev[8].cevr"
		;
connectAttr "npd_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary1.cel[0].cev[9].cevr"
		;
connectAttr "apu_Hoop_Root_IK_FK_RArm.a" "clipLibrary1.cel[0].cev[10].cevr"
		;
connectAttr "apu_Hoop_Root_IK_FK_LArm.a" "clipLibrary1.cel[0].cev[11].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "npd_Hoop_Root_rotateX.a" "clipLibrary1.cel[0].cev[14].cevr"
		;
connectAttr "npd_Hoop_Root_rotateY.a" "clipLibrary1.cel[0].cev[15].cevr"
		;
connectAttr "npd_Hoop_Root_rotateZ.a" "clipLibrary1.cel[0].cev[16].cevr"
		;
connectAttr "npd_Hoop_Root_translateX.a" "clipLibrary1.cel[0].cev[17].cevr"
		;
connectAttr "npd_Hoop_Root_translateY.a" "clipLibrary1.cel[0].cev[18].cevr"
		;
connectAttr "npd_Hoop_Root_translateZ.a" "clipLibrary1.cel[0].cev[19].cevr"
		;
connectAttr "apu_Right_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[20].cevr"
		;
connectAttr "apu_Right_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[21].cevr"
		;
connectAttr "apu_Right_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[22].cevr"
		;
connectAttr "apu_Right_Foot_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[23].cevr"
		;
connectAttr "apu_Right_Foot_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[24].cevr"
		;
connectAttr "apu_Right_Foot_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[25].cevr"
		;
connectAttr "apu_Left_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[26].cevr"
		;
connectAttr "apu_Left_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[27].cevr"
		;
connectAttr "apu_Left_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[28].cevr"
		;
connectAttr "apu_Left_Foot_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[29].cevr"
		;
connectAttr "apu_Left_Foot_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[30].cevr"
		;
connectAttr "apu_Left_Foot_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[31].cevr"
		;
connectAttr "npd_Right_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[32].cevr"
		;
connectAttr "npd_Right_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[33].cevr"
		;
connectAttr "npd_Right_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[34].cevr"
		;
connectAttr "npd_Left_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[35].cevr"
		;
connectAttr "npd_Left_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[36].cevr"
		;
connectAttr "npd_Left_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[37].cevr"
		;
connectAttr "apu_Right_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[38].cevr"
		;
connectAttr "apu_Right_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[39].cevr"
		;
connectAttr "apu_Right_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[40].cevr"
		;
connectAttr "apu_Left_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[41].cevr"
		;
connectAttr "apu_Left_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[42].cevr"
		;
connectAttr "apu_Left_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[43].cevr"
		;
connectAttr "apu_Character_Hoop_translateX.a" "clipLibrary1.cel[0].cev[44].cevr"
		;
connectAttr "apu_Character_Hoop_translateY.a" "clipLibrary1.cel[0].cev[45].cevr"
		;
connectAttr "apu_Character_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[46].cevr"
		;
connectAttr "apu_Character_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[47].cevr"
		;
connectAttr "apu_Character_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[48].cevr"
		;
connectAttr "apu_Character_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[49].cevr"
		;
connectAttr "npd_R_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "npd_R_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "npd_R_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "npd_R_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[53].cevr"
		;
connectAttr "npd_R_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[54].cevr"
		;
connectAttr "npd_R_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[55].cevr"
		;
connectAttr "npd_R_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[56].cevr"
		;
connectAttr "npd_R_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[57].cevr"
		;
connectAttr "npd_R_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[58].cevr"
		;
connectAttr "npd_R_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[59].cevr"
		;
connectAttr "npd_L_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "npd_L_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "npd_L_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "npd_L_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[63].cevr"
		;
connectAttr "npd_L_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[64].cevr"
		;
connectAttr "npd_L_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[65].cevr"
		;
connectAttr "npd_L_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[66].cevr"
		;
connectAttr "npd_L_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[67].cevr"
		;
connectAttr "npd_L_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[68].cevr"
		;
connectAttr "npd_L_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[69].cevr"
		;
connectAttr "apu_R_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[70].cevr"
		;
connectAttr "apu_R_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[71].cevr"
		;
connectAttr "apu_R_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[72].cevr"
		;
connectAttr "apu_L_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[73].cevr"
		;
connectAttr "apu_L_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[74].cevr"
		;
connectAttr "apu_L_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[75].cevr"
		;
connectAttr "apu_Right_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[76].cevr"
		;
connectAttr "apu_Right_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[77].cevr"
		;
connectAttr "apu_Right_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[78].cevr"
		;
connectAttr "apu_Right_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[79].cevr"
		;
connectAttr "apu_Right_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[80].cevr"
		;
connectAttr "apu_Right_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[81].cevr"
		;
connectAttr "apu_Left_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "apu_Left_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "apu_Left_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "apu_Left_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "apu_Left_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "apu_Left_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "apu_Right_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "apu_Right_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "apu_Right_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "apu_Right_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "apu_Right_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "apu_Right_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[93].cevr"
		;
connectAttr "apu_Left_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[94].cevr"
		;
connectAttr "apu_Left_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[95].cevr"
		;
connectAttr "apu_Left_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[96].cevr"
		;
connectAttr "apu_Left_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[97].cevr"
		;
connectAttr "apu_Left_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[98].cevr"
		;
connectAttr "apu_Left_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[99].cevr"
		;
connectAttr "apu_Left_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[100].cevr"
		;
connectAttr "apu_Left_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[101].cevr"
		;
connectAttr "apu_Left_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[102].cevr"
		;
connectAttr "apu_Right_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[103].cevr"
		;
connectAttr "apu_Right_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[104].cevr"
		;
connectAttr "apu_Right_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[105].cevr"
		;
connectAttr "apu_R_FK_Shoulder_rotateX.a" "clipLibrary1.cel[0].cev[106].cevr"
		;
connectAttr "apu_R_FK_Shoulder_rotateY.a" "clipLibrary1.cel[0].cev[107].cevr"
		;
connectAttr "apu_R_FK_Shoulder_rotateZ.a" "clipLibrary1.cel[0].cev[108].cevr"
		;
connectAttr "apu_L_FK_Shoulder_rotateX.a" "clipLibrary1.cel[0].cev[109].cevr"
		;
connectAttr "apu_L_FK_Shoulder_rotateY.a" "clipLibrary1.cel[0].cev[110].cevr"
		;
connectAttr "apu_L_FK_Shoulder_rotateZ.a" "clipLibrary1.cel[0].cev[111].cevr"
		;
connectAttr "apu_R_FK_Elbow_rotateZ.a" "clipLibrary1.cel[0].cev[112].cevr"
		;
connectAttr "apu_L_FK_Elbow_rotateZ.a" "clipLibrary1.cel[0].cev[113].cevr"
		;
connectAttr "apu_R_FK_Wrist_rotateX.a" "clipLibrary1.cel[0].cev[114].cevr"
		;
connectAttr "apu_R_FK_Wrist_rotateY.a" "clipLibrary1.cel[0].cev[115].cevr"
		;
connectAttr "apu_R_FK_Wrist_rotateZ.a" "clipLibrary1.cel[0].cev[116].cevr"
		;
connectAttr "apu_L_FK_Wrist_rotateX.a" "clipLibrary1.cel[0].cev[117].cevr"
		;
connectAttr "apu_L_FK_Wrist_rotateY.a" "clipLibrary1.cel[0].cev[118].cevr"
		;
connectAttr "apu_L_FK_Wrist_rotateZ.a" "clipLibrary1.cel[0].cev[119].cevr"
		;
connectAttr "apu_Thumb_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[120].cevr"
		;
connectAttr "apu_Thumb_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[121].cevr"
		;
connectAttr "apu_Thumb_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[122].cevr"
		;
connectAttr "apu_Middle_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[123].cevr"
		;
connectAttr "apu_Middle_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[124].cevr"
		;
connectAttr "apu_Middle_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[125].cevr"
		;
connectAttr "npd_Pelvis_rotateX.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "npd_Pelvis_rotateY.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "npd_Pelvis_rotateZ.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "npd_Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "npd_Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "npd_Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "npd_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "npd_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "npd_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "apu_Middle_R_rotateX.a" "clipLibrary1.cel[0].cev[135].cevr"
		;
connectAttr "apu_Middle_R_rotateY.a" "clipLibrary1.cel[0].cev[136].cevr"
		;
connectAttr "apu_Middle_R_rotateZ.a" "clipLibrary1.cel[0].cev[137].cevr"
		;
connectAttr "apu_Jaw_rotateX.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "apu_Jaw_rotateY.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "apu_Jaw_rotateZ.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "apu_Spine_2_rotateX.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "apu_Spine_2_rotateY.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "apu_Spine_2_rotateZ.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "apu_Neck_rotateX.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "apu_Neck_rotateY.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "apu_Neck_rotateZ.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "apu_Head_rotateX.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "apu_Head_rotateY.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "apu_Head_rotateZ.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "apu_Spine_1_rotateX.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "apu_Spine_1_rotateY.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "apu_Spine_1_rotateZ.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "apu_Middle_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[153].cevr"
		;
connectAttr "apu_Middle_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[154].cevr"
		;
connectAttr "apu_Middle_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[155].cevr"
		;
connectAttr "apu_Thumb_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[156].cevr"
		;
connectAttr "apu_Thumb_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[157].cevr"
		;
connectAttr "apu_Thumb_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[158].cevr"
		;
connectAttr "apu_Middle_L_rotateX.a" "clipLibrary1.cel[0].cev[159].cevr"
		;
connectAttr "apu_Middle_L_rotateY.a" "clipLibrary1.cel[0].cev[160].cevr"
		;
connectAttr "apu_Middle_L_rotateZ.a" "clipLibrary1.cel[0].cev[161].cevr"
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
// End of npd_fall_land.ma
