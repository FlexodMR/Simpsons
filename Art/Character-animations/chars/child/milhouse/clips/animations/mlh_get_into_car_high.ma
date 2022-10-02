//Maya ASCII 4.0 scene
//Name: mlh_get_into_car_high.ma
//Last modified: Wed, Jun 26, 2002 11:14:53 AM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.7";
requires "p3dDeformer" "17.1.0.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mlh_get_into_car_highSource";
	setAttr ".ihi" 0;
	setAttr ".du" 35;
	setAttr ".ci" no;
createNode animCurveTL -n "mlh_Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "mlh_Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 -0.010673788215106695 1 -0.010957637929673143 
		2 -0.014711886404411607 3 -0.018871005267641069 4 -0.020369466147680499 5 
		-0.016141740672848872 6 0.002701009002639049 7 0.031772927519636666 8 0.054227503442427237 
		9 0.06043506656419987 10 0.060025287187272583 11 0.065040664639621978 12 
		0.088403277974458447 13 0.1129381142959807 14 0.12128106317707241 15 0.1252408308235089 
		16 0.13547350358908689 17 0.15416857439800938 18 0.17913654998145376 19 0.21446503740367664 
		20 0.25968809835744849 21 0.31012783295047364 22 0.3635539058694095 23 0.41773598180091315 
		24 0.47044372543164231 25 0.52085696482973076 26 0.57046259017045242 27 0.6204908593011752 
		28 0.6721720300692664 29 0.72673636032209377 30 0.79340152103077355 31 0.87293873160270663 
		32 0.95390857253968853 33 1.0248716243435143 34 1.0743884675159794 35 1.0910196825588789;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 -0.016861687636927507 1 -0.017562937594210366 
		2 -0.018585353110499411 3 -0.017303353851896335 4 -0.011091359484502825 5 
		0.0026762103255793964 6 0.040460838635712884 7 0.094370991362140236 8 0.13050272312707983 
		9 0.12882523928491668 10 0.10936933485594472 11 0.098323448961245591 12 0.11345228030100506 
		13 0.13994573831473875 14 0.1657425224029159 15 0.1932311783939516 16 0.22141273115984159 
		17 0.24835330659870888 18 0.27598677945601385 19 0.30911579787476351 20 0.35085947621818803 
		21 0.3978583572045632 22 0.44519723150946333 23 0.48796088980846314 24 0.5212341227771371 
		25 0.54526573694521052 26 0.56333253946673856 27 0.57506132195379056 28 0.58007887601843577 
		29 0.57801199327274377 30 0.56544903385505041 31 0.54279194139602382 32 0.51538788274623171 
		33 0.48858402475624163 34 0.46772753427662106 35 0.45816557815793757;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0;
createNode animCurveTU -n "mlh_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "mlh_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "mlh_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "mlh_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "mlh_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "mlh_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "mlh_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 1;
createNode animCurveTU -n "mlh_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 1;
createNode animCurveTA -n "mlh_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "mlh_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "mlh_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "mlh_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "animCurveTL296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.26454016861507795 5 -0.26454016861507795 
		8 -0.16631258133769897 11 -0.16631258133769897 13 -0.14825007776311355 16 
		0.40958314235447213 19 0.80997322441092767 24 0.89131982813009758 29 1.1772046590126868 
		35 2.0144086319011758;
	setAttr -s 10 ".kit[2:9]"  3 3 1 9 9 9 9 
		9;
	setAttr -s 10 ".kot[2:9]"  3 3 1 9 9 9 9 
		9;
	setAttr -s 10 ".kix[4:9]"  0.013354344293475151 0.0020871914457529783 
		0.0055354423820972443 0.0090765543282032013 0.0032647883053869009 0.0023888968862593174;
	setAttr -s 10 ".kiy[4:9]"  0.99991083145141602 0.99999779462814331 
		0.99998468160629272 0.99995881319046021 0.99999469518661499 0.99999713897705078;
	setAttr -s 10 ".kox[4:9]"  0.01335437037050724 0.0020871914457529783 
		0.0055354423820972443 0.0090765543282032013 0.0032647883053869009 0.0023888968862593174;
	setAttr -s 10 ".koy[4:9]"  0.99991083145141602 0.99999779462814331 
		0.99998468160629272 0.99995881319046021 0.99999469518661499 0.99999713897705078;
createNode animCurveTL -n "animCurveTL297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.13806192026723146 5 0.21218793707500705 
		8 0.17644263554468151 11 0.17644263554468151 13 0.18378950360069446 16 0.49091209114063172 
		19 1.1920966737244216 24 1.3072599153851976 29 1.6257567972290514 35 2.1198126115895879;
	setAttr -s 10 ".kit[2:9]"  3 3 3 9 9 9 9 
		9;
	setAttr -s 10 ".kot[2:9]"  3 3 3 9 9 9 9 
		9;
createNode animCurveTL -n "animCurveTL298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.064904406754016042 5 -0.064904406754016042 
		8 0.37561660389459262 11 0.37561660389459262 13 0.4108138854281434 16 0.69976304988591365 
		19 1.0282866140391134 24 1.0969571644027023 29 1.299223898138901 35 1.5111386248335259;
	setAttr -s 10 ".kit[1:9]"  3 3 3 1 9 9 9 
		9 9;
	setAttr -s 10 ".kot[1:9]"  3 3 3 1 9 9 9 
		9 9;
	setAttr -s 10 ".kix[4:9]"  0.012363358400762081 0.0032389925327152014 
		0.0067136101424694061 0.012302038259804249 0.0088524557650089264 0.0094373365864157677;
	setAttr -s 10 ".kiy[4:9]"  0.99992358684539795 0.99999475479125977 
		0.9999774694442749 0.99992430210113525 0.99996083974838257 0.99995547533035278;
	setAttr -s 10 ".kox[4:9]"  0.012363358400762081 0.0032389925327152014 
		0.0067136101424694061 0.012302038259804249 0.0088524557650089264 0.0094373365864157677;
	setAttr -s 10 ".koy[4:9]"  0.99992358684539795 0.99999475479125977 
		0.9999774694442749 0.99992430210113525 0.99996083974838257 0.99995547533035278;
createNode animCurveTA -n "animCurveTA814";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 15.829425701546842 8 1.248306076999107 
		11 1.248306076999107 13 6.1588631476282867 16 44.491483723139034 19 -6.4712729195228098 
		24 30.45300710738308 29 72.988016469921533 35 -28.331470732084387;
	setAttr -s 10 ".kit[2:9]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 10 ".kot[2:9]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA815";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -25.948901905116401 5 -25.948901905116429 
		8 61.553423410474444 11 61.553423410474444 13 60.939293012521325 16 60.901424625617686 
		19 52.522527895889915 24 66.370680344634792 29 53.592662493032449 35 -10.113681911874206;
	setAttr -s 10 ".kit[0:9]"  3 3 3 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kot[0:9]"  3 3 3 9 9 9 9 
		9 9 9;
createNode animCurveTA -n "animCurveTA816";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 4.0653566202778446 11 
		4.0653566202778446 13 5.5582644250639097 16 9.4502247766973682 19 26.169168266718742 
		24 11.726845019174959 29 20.866841543492903 35 3.6896128937020123;
	setAttr -s 10 ".kit[1:9]"  3 3 9 9 9 9 9 
		9 9;
	setAttr -s 10 ".kot[1:9]"  3 3 9 9 9 9 9 
		9 9;
createNode animCurveTL -n "animCurveTL299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.21594587158542247 5 0.21594587158542247 
		8 0.21594587158542247 16 0.21594587158542247 19 0.37773575924096564 24 1.1650366835524333 
		29 1.6613877290312453 35 2.4527191723658217;
	setAttr -s 8 ".kit[2:7]"  3 3 9 9 9 9;
	setAttr -s 8 ".kot[2:7]"  3 3 9 9 9 9;
createNode animCurveTL -n "animCurveTL300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.1380615615975922 5 0.1380615615975922 
		8 0.1380615615975922 16 0.19968793908602153 19 0.89698164502465982 24 1.7055983104346861 
		29 1.7236745837384495 35 2.1031892458011163;
	setAttr -s 8 ".kit[2:7]"  3 1 9 9 9 9;
	setAttr -s 8 ".kot[2:7]"  3 1 9 9 9 9;
	setAttr -s 8 ".kix[3:7]"  0.025506738573312759 0.0017707976512610912 
		0.0040320968255400658 0.0092218164354562759 0.0052698147483170033;
	setAttr -s 8 ".kiy[3:7]"  0.99967467784881592 0.99999845027923584 
		0.99999189376831055 0.99995750188827515 0.99998611211776733;
	setAttr -s 8 ".kox[3:7]"  0.025506779551506042 0.0017707976512610912 
		0.0040320968255400658 0.0092218164354562759 0.0052698147483170033;
	setAttr -s 8 ".koy[3:7]"  0.99967467784881592 0.99999845027923584 
		0.99999189376831055 0.99995750188827515 0.99998611211776733;
createNode animCurveTL -n "animCurveTL301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.00078430246903575811 5 0.00078430246903575811 
		8 0.00078430246903575811 16 0.00078430246903575811 19 0.31822463009632762 
		24 1.0890746669629563 29 1.6289704736610506 35 1.4717026627367022;
	setAttr -s 8 ".kit[2:7]"  3 3 9 9 9 9;
	setAttr -s 8 ".kot[2:7]"  3 3 9 9 9 9;
createNode animCurveTA -n "animCurveTA817";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 8 0 16 25.500583501823861 
		19 46.108085431919399 24 3.4936163337581418 29 4.6237364519497488 35 -27.647037481197401;
	setAttr -s 8 ".kit[2:7]"  3 1 9 9 9 9;
	setAttr -s 8 ".kot[2:7]"  3 1 9 9 9 9;
	setAttr -s 8 ".kix[3:7]"  0.17611777782440186 0.5703015923500061 
		0.41819098591804504 0.55926269292831421 0.33462342619895935;
	setAttr -s 8 ".kiy[3:7]"  0.98436909914016724 -0.82143539190292358 
		-0.9083591103553772 -0.82899045944213867 -0.94235193729400635;
	setAttr -s 8 ".kox[3:7]"  0.17611780762672424 0.5703015923500061 
		0.41819098591804504 0.55926269292831421 0.33462342619895935;
	setAttr -s 8 ".koy[3:7]"  0.98436909914016724 -0.82143539190292358 
		-0.9083591103553772 -0.82899045944213867 -0.94235193729400635;
createNode animCurveTA -n "animCurveTA818";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 8 44.707337015817366 16 
		44.707337015817366 19 41.561752269563186 24 31.114331072799949 29 15.713598145141304 
		35 1.6471102606573036;
	setAttr -s 8 ".kit[1:7]"  3 3 3 9 9 9 9;
	setAttr -s 8 ".kot[1:7]"  3 3 3 9 9 9 9;
createNode animCurveTA -n "animCurveTA819";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 8 0 16 0 19 3.0068693545511485 
		24 7.8822915333391075 29 0.30443393062337659 35 7.7922141916432519;
	setAttr -s 8 ".kit[3:7]"  3 9 9 9 9;
	setAttr -s 8 ".kot[3:7]"  3 9 9 9 9;
createNode animCurveTA -n "mlh_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_Right_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_Right_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_Right_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_Left_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_Left_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_Left_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTL -n "animCurveTL302";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 8 0 11 0.034660776702225261 
		13 0.039645834214116132 16 0.037136546583753045 19 0.034660776702225261 24 
		0.034660776702225261 29 0.034660776702225261 34.995 0.034660776702225261 
		35 0;
createNode animCurveTL -n "animCurveTL303";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0.43236842264083392 
		13 0.49455345370157783 16 0.46325188044122045 19 0.43236842264083392 24 0.43236842264083392 
		29 0.43236842264083392 35 0;
createNode animCurveTL -n "animCurveTL304";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 5 1 8 1 11 1.022596790343715 
		13 1.0258467549941159 16 1.024210846778379 19 1.022596790343715 24 1.022596790343715 
		29 1.022596790343715 34.995 1.022596790343715 35 1;
createNode animCurveTL -n "animCurveTL305";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 34.995 0 35 0;
createNode animCurveTL -n "animCurveTL306";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 34.995 0 35 0;
createNode animCurveTL -n "animCurveTL307";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 5 1 8 1 11 1 13 1 16 1 19 1 
		24 1 29 1 34.995 1 35 1;
createNode animCurveTL -n "animCurveTL308";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.021843946869563039 5 -0.033034131700396582 
		8 0.11097678539180074 11 0.13310595958220145 13 0.23112826660158545 16 0.27724702373664167 
		19 0.43890348843481664 24 0.96276481567283712 29 1.487268636320489 35 2.232775796107124;
createNode animCurveTL -n "animCurveTL309";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.95401186124570259 5 0.9224657007074174 
		8 0.89013364363267944 11 0.7219081613832331 13 0.66797672450417989 16 0.8448476521299747 
		19 1.508052198281272 24 2.0686664276101476 29 2.3677091613827397 35 2.5264096741096354;
createNode animCurveTL -n "animCurveTL310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.03450750581231489 5 0.0054768742817095494 
		8 0.26707430322503661 11 0.20121930020139275 13 0.2863994685637829 16 0.45312196927940257 
		19 0.63260661812291974 24 1.0667075507862014 29 1.1829036717395498 35 0.93763754208463834;
createNode animCurveTA -n "animCurveTA832";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -4.0647210446877668 5 -4.0647210446877668 
		8 -1.8959560750666928 11 0.039907503397905005 13 1.6246534025556567 16 4.836747886637859 
		19 -6.2042270125640515 24 13.743731954749155 29 -7.8826714955125015 35 -14.532001338790588;
createNode animCurveTA -n "animCurveTA833";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 6.129632983176454 5 6.129632983176454 
		8 7.5987312358901162 11 10.412976604800045 13 22.545275206268631 16 46.307982231864941 
		19 13.448331038318274 24 35.938490860670051 29 14.052658823380797 35 0;
createNode animCurveTA -n "animCurveTA834";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1.7490863204697844 5 -1.7490863204697844 
		8 -0.01571029292273337 11 2.4280299873568705 13 4.0188984339622564 16 5.4412261522521899 
		19 5.5397258482733402 24 7.309129177534067 29 -1.3148835681179702 35 0;
createNode animCurveTA -n "mlh_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA858";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 0 11 0 19 0;
	setAttr -s 3 ".kit[0:2]"  3 9 1;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA859";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 0 11 0 19 0;
	setAttr -s 3 ".kit[0:2]"  3 9 1;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA860";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  8 0 11 -24.501661700242042 19 0;
	setAttr -s 3 ".kit[0:2]"  3 9 1;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
	setAttr -s 3 ".kix[2]"  0.29765972495079041;
	setAttr -s 3 ".kiy[2]"  0.95467203855514526;
createNode animCurveTL -n "mlh_Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 -0.43524234076486068;
createNode animCurveTL -n "mlh_Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 -0.82665738350180629;
createNode animCurveTL -n "mlh_Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0.27773886459742925;
createNode animCurveTA -n "mlh_Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 1.8121934161072299e-015;
createNode animCurveTA -n "mlh_Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 28.652637602052774;
createNode animCurveTA -n "mlh_Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 64.676908227303443;
createNode animCurveTL -n "mlh_Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0.5198069948790518;
createNode animCurveTL -n "mlh_Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 -0.72394202659893114;
createNode animCurveTL -n "mlh_Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0.36439499068905612;
createNode animCurveTA -n "mlh_Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 7.7976222737965317;
createNode animCurveTA -n "mlh_Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 -30.409274105849079;
createNode animCurveTA -n "mlh_Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 -64.859940280210893;
createNode animCurveTL -n "animCurveTL317";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.74056404395336706 5 -0.91837917750249576 
		8 -0.55248830610092636 11 -0.19914939983053262 19 -0.37597799009681537 24 
		0.85499367162938922 29 1.6392924146531274 35 2.7557418833544358;
createNode animCurveTL -n "animCurveTL318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.334057347012237 5 1.2710208262091869 
		8 1.3998379261856073 11 0.94238234127353337 19 2.3030118558646286 24 3.1672059404565376 
		29 3.783744978396042 35 3.7286474726585705;
	setAttr -s 8 ".kit[0:7]"  1 1 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  1 1 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0.01244123000651598 0.070924125611782074 
		0.0060856016352772713 0.0040597235783934593 0.0019477162277325988 0.00225113146007061 
		0.0065306681208312511 0.036275390535593033;
	setAttr -s 8 ".kiy[0:7]"  -0.99992263317108154 0.99748170375823975 
		-0.99998146295547485 0.999991774559021 0.99999809265136719 0.99999743700027466 
		0.99997866153717041 -0.99934184551239014;
	setAttr -s 8 ".kox[0:7]"  0.012441168539226055 0.070924147963523865 
		0.0060856016352772713 0.0040597235783934593 0.0019477162277325988 0.00225113146007061 
		0.0065306681208312511 0.036275390535593033;
	setAttr -s 8 ".koy[0:7]"  -0.99992263317108154 0.99748170375823975 
		-0.99998146295547485 0.999991774559021 0.99999809265136719 0.99999743700027466 
		0.99997866153717041 -0.99934184551239014;
createNode animCurveTL -n "animCurveTL319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.062566947292654135 5 0.25669475715425083 
		8 1.2299450602520627 11 1.0211962728127559 19 1.1453670506879805 24 2.4267708391848717 
		29 2.3076726251502442 35 1.4816110492099963;
createNode animCurveTA -n "animCurveTA867";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 11.050293046227475 5 -6.8408848116811125 
		8 -178.71153037370181 11 -178.71153037370181 19 -166.81562693844464 24 -166.81562693844464 
		29 -98.681432913820387 35 -33.734888782993906;
createNode animCurveTA -n "animCurveTA868";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 31.161703095141441 5 30.714124774991525 
		8 65.402991895939863 11 65.402991895939863 19 64.640282392072066 24 64.640282392072066 
		29 41.776358727631646 35 14.870586397896902;
createNode animCurveTA -n "animCurveTA869";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 77.659302688227186 5 52.637498007569562 
		8 -97.890271845644079 11 -97.890271845644079 19 -165.05975398489667 24 -165.05975398489667 
		29 -72.78741910630113 35 30.592169336881899;
createNode animCurveTL -n "animCurveTL320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.71994180036140099 5 0.71855072776607709 
		8 1.2255779816172274 11 1.2255779816172274 18 1.2255779816172274 22 1.6063322105982709 
		29 3.1841829250049414 35 4.2602840929099726;
	setAttr -s 8 ".kit[2:7]"  3 9 3 9 9 9;
	setAttr -s 8 ".kot[2:7]"  3 9 3 9 9 9;
createNode animCurveTL -n "animCurveTL321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.2189308639604217 5 1.599106442649618 
		8 2.2457022896772938 11 2.2457022896772938 18 2.2457022896772938 22 2.9261396535163482 
		29 3.7264405448428772 35 3.8208059664542691;
	setAttr -s 8 ".kit[2:7]"  3 9 3 9 9 9;
	setAttr -s 8 ".kot[2:7]"  3 9 3 9 9 9;
createNode animCurveTL -n "animCurveTL322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.25133310845014323 5 0.51002739429578037 
		8 0.45278061540622061 11 0.45278061540622061 18 0.45278061540622061 22 0.79864032246517247 
		29 1.4686835442306267 35 1.5924222907155747;
	setAttr -s 8 ".kit[2:7]"  3 9 3 9 9 9;
	setAttr -s 8 ".kot[2:7]"  3 9 3 9 9 9;
createNode animCurveTA -n "animCurveTA870";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 16.226511010665405 5 55.598837649680043 
		8 17.578216977008857 11 17.578216977008857 18 17.578216977008857 22 16.080200011728628 
		29 4.6613644930380378 35 -26.203413720634714;
	setAttr -s 8 ".kit[2:7]"  3 9 3 9 9 9;
	setAttr -s 8 ".kot[2:7]"  3 9 3 9 9 9;
createNode animCurveTA -n "animCurveTA871";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -8.513966085499284 5 -30.973734338623142 
		8 -37.36166010901858 11 -37.36166010901858 18 -37.36166010901858 22 -38.214040342966832 
		29 -36.108857241373819 35 -14.791961579779635;
	setAttr -s 8 ".kit[2:7]"  3 9 3 9 9 9;
	setAttr -s 8 ".kot[2:7]"  3 9 3 9 9 9;
createNode animCurveTA -n "animCurveTA872";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -68.213989601412422 5 -82.208920420259716 
		8 48.871336699981519 11 48.871336699981519 18 48.871336699981519 22 38.468597814997793 
		29 -2.913287519114713 35 -45.895436695401962;
	setAttr -s 8 ".kit[2:7]"  3 9 3 9 9 9;
	setAttr -s 8 ".kot[2:7]"  3 9 3 9 9 9;
createNode animCurveTL -n "animCurveTL323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.45290160893189962 5 0.17523930523423681 
		8 0.0081422950894450806 11 0.56986698548929338 13 0.43094386535405876 16 
		0.047646009069586132 19 0.063331173333856433 24 0.063331173333856433 29 0.37736680843384973 
		35 0.063331173333856447;
createNode animCurveTL -n "animCurveTL324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.26040014587111876 5 -0.00072435787012014696 
		8 -0.69388626071362391 11 -0.68144477726767505 13 -0.69172518239403591 16 
		-0.70977769184901862 19 -0.69960805773293522 24 -0.69960805773293522 29 -0.54343311259648019 
		35 -0.69960805773293522;
createNode animCurveTL -n "animCurveTL325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.71550242603202041 5 -0.80201435285893019 
		8 -0.75622028871403923 11 -0.54511080870143536 13 -0.55693487641830486 16 
		-0.64237249774344829 19 -0.66762598980258558 24 -0.66762598980258558 29 -0.97043124551903082 
		35 -0.66762598980258558;
createNode animCurveTL -n "animCurveTL326";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.31054502397108613 5 -0.31054502397108613 
		8 -0.31054502397108613 11 -0.31054502397108613 13 -0.57475497769065642 16 
		-0.31054502397108613 19 -0.31054502397108613 24 -0.31054502397108613 29 -0.31054502397108613 
		35 -0.31054502397108613;
createNode animCurveTL -n "animCurveTL327";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.55640530640609931 5 -0.55640530640609931 
		8 -0.55640530640609931 11 -0.55640530640609931 13 -0.46368057267507495 16 
		-0.55640530640609931 19 -0.55640530640609931 24 -0.55640530640609931 29 -0.55640530640609931 
		35 -0.55640530640609931;
createNode animCurveTL -n "animCurveTL328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.57914122395678103 5 -0.57914122395678103 
		8 -0.57914122395678103 11 -0.57914122395678103 13 -0.41090360985775853 16 
		-0.57914122395678103 19 -0.57914122395678103 24 -0.57914122395678103 29 -0.57914122395678103 
		35 -0.57914122395678103;
createNode animCurveTA -n "animCurveTA873";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 12.253734489678925 5 12.253734489678925 
		8 12.253734489678925 11 12.253734489678925 13 12.253734489678925 16 12.253734489678925 
		19 12.253734489678925 24 12.253734489678925 29 12.253734489678925 35 12.253734489678925;
createNode animCurveTA -n "animCurveTA874";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -65.746751280844961 5 -65.746751280844961 
		8 -65.746751280844961 11 -65.746751280844961 13 -65.746751280844961 16 -65.746751280844961 
		19 -65.746751280844961 24 -65.746751280844961 29 -65.746751280844961 35 -65.746751280844975;
createNode animCurveTA -n "animCurveTA875";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA876";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.061808866237337522 5 -0.061808866237337522 
		8 -0.061808866237337522 11 -0.061808866237337522 13 -0.061808866237337522 
		16 -0.061808866237337522 19 -0.061808866237337522 24 -0.061808866237337522 
		29 -0.061808866237337522 35 -0.061808866237340665;
createNode animCurveTA -n "animCurveTA877";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -59.058178941076754 5 -59.058178941076754 
		8 -59.058178941076754 11 -59.058178941076754 13 -59.058178941076754 16 -59.058178941076754 
		19 -59.058178941076754 24 -59.058178941076754 29 -59.058178941076754 35 -59.058178941076754;
createNode animCurveTA -n "animCurveTA878";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 16.579147429757843 5 16.579147429757843 
		8 16.579147429757843 11 16.579147429757843 13 16.579147429757843 16 16.579147429757843 
		19 16.579147429757843 24 16.579147429757843 29 16.579147429757843 35 16.57914742975785;
createNode animCurveTA -n "animCurveTA879";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 8.5572674112203622 5 8.5572674112203622 
		8 8.5572674112203622 11 8.5572674112203622 13 8.5572674112203622 16 8.5572674112203622 
		19 8.5572674112203622 24 8.5572674112203622 29 8.5572674112203622 35 8.5572674112203639;
createNode animCurveTA -n "animCurveTA880";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 15.711328223519057 5 15.711328223519057 
		8 15.711328223519057 11 15.711328223519057 13 15.711328223519057 16 15.711328223519057 
		19 15.711328223519057 24 15.711328223519057 29 15.711328223519057 35 15.711328223519061;
createNode animCurveTA -n "animCurveTA881";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA882";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA883";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA884";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA885";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA886";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA887";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 10.423754966968488 5 10.423754966968488 
		8 10.423754966968488 11 10.423754966968488 13 10.423754966968488 16 10.423754966968488 
		19 10.423754966968488 24 10.423754966968488 29 10.423754966968488 35 10.423754966968488;
createNode animCurveTA -n "animCurveTA888";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 27.722848255843903 5 27.722848255843903 
		8 27.722848255843903 11 27.722848255843903 13 27.722848255843903 16 27.722848255843903 
		19 27.722848255843903 24 27.722848255843903 29 27.722848255843903 35 27.7228482558439;
createNode animCurveTA -n "animCurveTA889";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 21.576484776388227 5 21.576484776388227 
		8 21.576484776388227 11 21.576484776388227 13 21.576484776388227 16 21.576484776388227 
		19 21.576484776388227 24 21.576484776388227 29 21.576484776388227 35 21.576484776388224;
createNode animCurveTA -n "animCurveTA890";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA891";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA892";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 27.080064458283051 5 27.080064458283051 
		8 27.080064458283051 11 27.080064458283051 13 27.080064458283051 16 27.080064458283051 
		19 27.080064458283051 24 27.080064458283051 29 27.080064458283051 35 27.080064458283051;
createNode animCurveTA -n "mlh_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "mlh_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 13.994403295754109;
createNode animCurveTA -n "animCurveTA902";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA903";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA904";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 27.911632519594587 5 27.911632519594587 
		8 27.911632519594587 11 27.911632519594587 13 27.911632519594587 16 27.911632519594587 
		19 27.911632519594587 24 27.911632519594587 29 27.911632519594587 35 27.911632519594587;
createNode animCurveTA -n "animCurveTA905";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA906";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA907";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA908";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 12.830114240355906 5 7.8430056866173823 
		8 7.8430056866173823 11 7.8430056866173823 13 3.1422186943800172 16 -1.6600682412462473 
		19 -3.2428821218103816 24 -7.5359565583949033 29 -25.890727135803381 35 -1.3731006602189262;
createNode animCurveTA -n "animCurveTA909";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -9.8425732209646952 5 -3.8867637360502716 
		8 -2.4212113907903019 11 -2.4212113907903019 13 -3.277217456030439 16 -5.6886338817782773 
		19 -11.812075050518551 24 -14.036813544292096 29 -1.1313888543542436 35 0.38374158911587314;
createNode animCurveTA -n "animCurveTA910";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 11.451721084027948 5 14.868855041301886 
		8 14.868855041301886 11 10.500432497048379 13 5.4073582592798379 16 5.1436031948885814 
		19 12.445502596270925 24 28.799747256025494 29 16.15457756926455 35 0.96901743689791253;
createNode animCurveTA -n "animCurveTA911";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 7.1097278539792699 8 7.1097278539792699 
		11 7.1097278539792699 13 7.1097278539792699 16 7.1097278539792699 19 7.1097278539792699 
		24 7.1097278539792699 29 7.1097278539792699 35 -2.214467445058347;
createNode animCurveTA -n "animCurveTA912";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 -5.3642380392152509;
createNode animCurveTA -n "animCurveTA913";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 -10.22398177073733;
createNode animCurveTA -n "animCurveTA914";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 9.4295423650766867 5 -0.32948933226534777 
		11 -4.936665607567444 19 4.5694554420318401 24 0.12411851461326476 29 -23.846512789232317 
		35 4.9690701715193732;
createNode animCurveTA -n "animCurveTA915";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 11.083405278261043 5 -18.393019233450623 
		11 -9.7792069540852147 19 -16.486420038233504 24 -0.36620260693962053 29 
		-42.637998316794274 35 -2.9904681746768547;
createNode animCurveTA -n "animCurveTA916";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 4.4116705402194372 5 -4.9128688560489149 
		11 -4.5159477481657264 19 3.8471327775177588 24 -15.63197985514657 29 17.099736619293381 
		35 16.853052292944849;
createNode animCurveTA -n "animCurveTA917";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1.8903601258661931 5 -1.8903601258661931 
		8 -1.8903601258661931 11 -1.8903601258661931 13 -1.244781736270514 16 1.4672032523553795 
		19 4.5893511886976759 24 1.0195281352591681 29 -1.8903601258661931 35 2.2118338921357275;
createNode animCurveTA -n "animCurveTA918";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 2.5597289571479034 5 2.5597289571479034 
		8 2.5597289571479034 11 2.5597289571479034 13 2.6724695929758124 16 3.0842593602314001 
		19 4.0062478491451934 24 3.7253520751112297 29 2.5597289571479034 35 1.7086730360615547;
createNode animCurveTA -n "animCurveTA919";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 2.016811087403604 5 2.016811087403604 
		8 2.016811087403604 11 2.016811087403604 13 1.0722090263170199 16 -2.0736047826525068 
		19 -7.2946582505866582 24 0.14944732063885902 29 2.016811087403604 35 2.7082804953288222;
createNode animCurveTA -n "animCurveTA920";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA921";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA922";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 33.429092416277157 5 33.429092416277157 
		8 33.429092416277157 11 33.429092416277157 13 33.429092416277157 16 33.429092416277157 
		19 33.429092416277157 24 33.429092416277157 29 33.429092416277157 35 33.429092416277157;
createNode animCurveTA -n "animCurveTA923";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 8.2533422302317216 5 8.2533422302317216 
		8 8.2533422302317216 11 8.2533422302317216 13 8.2533422302317216 16 8.2533422302317216 
		19 8.2533422302317216 24 8.2533422302317216 29 8.2533422302317216 35 8.2533422302317216;
createNode animCurveTA -n "animCurveTA924";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 23.263402056531085 5 23.263402056531085 
		8 23.263402056531085 11 23.263402056531085 13 23.263402056531085 16 23.263402056531085 
		19 23.263402056531085 24 23.263402056531085 29 23.263402056531085 35 23.263402056531085;
createNode animCurveTA -n "animCurveTA925";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 20.166277752815617 5 20.166277752815617 
		8 20.166277752815617 11 20.166277752815617 13 20.166277752815617 16 20.166277752815617 
		19 20.166277752815617 24 20.166277752815617 29 20.166277752815617 35 20.166277752815617;
createNode animCurveTA -n "animCurveTA926";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA927";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 5 0 8 0 11 0 13 0 16 0 19 0 
		24 0 29 0 35 0;
createNode animCurveTA -n "animCurveTA928";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 17.254116939558369 5 17.254116939558369 
		8 17.254116939558369 11 17.254116939558369 13 17.254116939558369 16 17.254116939558369 
		19 17.254116939558369 24 17.254116939558369 29 17.254116939558369 35 17.254116939558369;
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
	setAttr ".o" 12;
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
connectAttr "mlh_get_into_car_highSource.st" "clipLibrary1.st[0]";
connectAttr "mlh_get_into_car_highSource.du" "clipLibrary1.du[0]";
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
// End of mlh_get_into_car_high.ma
