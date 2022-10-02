//Maya ASCII 4.0 scene
//Name: mrg_get_out_of_car_high.ma
//Last modified: Tue, Oct 01, 2002 05:18:02 PM
requires maya "4.0";
requires "p3dmayaexp" "18.5";
requires "p3dDeformer" "18.3";
requires "p3dSimpleShader" "18.5";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_get_out_of_car_highSource";
	setAttr ".ihi" 0;
	setAttr ".du" 30;
	setAttr ".ci" no;
createNode animCurveTL -n "mrg_Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTL -n "mrg_Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 1.0931321889110071 1 1.080541464453832 
		2 1.0593647417583663 3 1.0305211348025021 4 0.99492975756413093 5 0.95350972402114442 
		6 0.90718014815143433 7 0.85443022108419697 8 0.79422248925138905 9 0.72818609958504454 
		10 0.65795019901719687 11 0.58514393447987956 12 0.51139645290512648 13 0.42318516806266382 
		14 0.3246924282403833 15 0.2441047821475667 16 0.18680363045491205 17 0.13950917523516179 
		18 0.10241616730067836 19 0.075719357463824188 20 0.062583606412595152 21 
		0.061867404068506673 22 0.06730594509420057 23 0.072634424152318633 24 0.077561191125744375 
		25 0.085025389557218584 26 0.093608404599169137 27 0.10189162140402391 28 
		0.1084564251242108 29 0.11188420091215764 30 0.1107563339202923;
createNode animCurveTL -n "animCurveTL578";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0.50990367929941149 1 0.50413383534290479 
		2 0.50176747387113507 3 0.50191428636634372 4 0.50368396431077278 5 0.50618619918666374 
		6 0.50853068247625854 7 0.51402207822653223 8 0.52403356604404461 9 0.53477761075041441 
		10 0.54246667716726027 11 0.54331323011620147 12 0.53352973441885632 13 0.49215013947885861 
		14 0.42340048953596665 15 0.36128139166598711 16 0.31401672180537621 17 0.26937558413402624 
		18 0.23067642809289776 19 0.20123770312295133 20 0.18395700907309401 21 0.17639361226073036 
		22 0.17385846182956718 23 0.17166250692331114 24 0.1677905749868786 25 0.16374894278947158 
		26 0.16013073346122564 27 0.15752907013227638 28 0.15653707593275928 29 0.15774787399280993 
		30 0.16175458744256382;
createNode animCurveTA -n "animCurveTA1688";
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
createNode animCurveTU -n "mrg_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 1;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 1;
createNode animCurveTA -n "mrg_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTL -n "mrg_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTL -n "mrg_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTL -n "mrg_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTL -n "animCurveTL583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.1468862801970878 6 0.60238222946220488 
		12 0.60238222946220488 15 0.56657059087225126 19 0.26314392545677373 23 0.26314392545677373 
		30 0.26314392545677373;
createNode animCurveTL -n "animCurveTL584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.2464696855624631 6 0.92040295007758943 
		12 0.92040295007758943 15 0.87428516625483244 19 0.17835202884694412 23 0.10074079658300666 
		30 0.10074079658300666;
createNode animCurveTL -n "animCurveTL585";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.3883743416871892 6 0.50721591034116531 
		12 0.50721591034116531 15 0.45596310793574701 19 0.10232611142150212 23 0.10232611142150212 
		30 0.10232611142150212;
createNode animCurveTA -n "animCurveTA1692";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -36.819011955683756 6 -14.868773507399556 
		12 -129.95294279235549 15 -111.04442304619364 19 20.42261469956993 23 -1.2411000500939884 
		30 -1.2411000500939884;
createNode animCurveTA -n "animCurveTA1693";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 -78.632110970251233 12 -77.167965108756619 
		15 -63.356438976243041 19 -120.91731311278465 23 -120.91731311278465 30 -120.91731311278465;
createNode animCurveTA -n "animCurveTA1694";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 45.811993104511636 12 160.88172185248797 
		15 169.21070321642827 19 1.2347523458486165 23 1.2347523458486165 30 1.2347523458486165;
createNode animCurveTL -n "animCurveTL586";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.4496212507996262 6 0.75662610987177448 
		12 0.75662610987177448 15 0.025535954827770047 19 0.089432696636962142 23 
		0.089432696636962142 30 0.089432696636962142;
createNode animCurveTL -n "animCurveTL587";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.2279490663618713 6 0.90425894272881668 
		12 0.90425894272881668 15 0.4605489501004143 19 0.15901539290164871 23 0.090739826238255855 
		30 0.090739826238255855;
createNode animCurveTL -n "animCurveTL588";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.4274355819015074 6 0.93682015547869968 
		12 0.93682015547869968 15 0.44068478113505544 19 0.37820686953638194 23 0.37820686953638194 
		30 0.37820686953638194;
createNode animCurveTA -n "animCurveTA1695";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -24.204848230542304 6 -4.2432371070307617 
		12 -98.648923617843252 15 -144.57627051479582 19 -160.52632885597114 23 -178.44479555013268 
		30 -178.44479555013268;
createNode animCurveTA -n "animCurveTA1696";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 -71.40228518438056 12 -69.202813513275643 
		15 -65.395562839128075 19 -64.348645467164118 23 -64.348645467164133 30 -64.348645467164133;
createNode animCurveTA -n "animCurveTA1697";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 -3.694980397967055 12 123.36829379451167 
		15 185.97661956872068 19 177.06797680878609 23 177.06797680878609 30 177.06797680878609;
createNode animCurveTA -n "mrg_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_Right_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_Right_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_Right_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_Left_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_Left_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_Left_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTL -n "animCurveTL589";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0.034660776702225261 12 0.034660776702225261 
		15 0.034660776702225261 19 0.037136546583753045 23 0 30 0;
createNode animCurveTL -n "animCurveTL590";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0.43236842264083392 12 0.43236842264083392 
		15 0.43236842264083392 19 0.46325188044122045 23 0 30 0;
createNode animCurveTL -n "animCurveTL591";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 6 1.022596790343715 12 1.022596790343715 
		15 1.022596790343715 19 1.024210846778379 23 1 30 1;
createNode animCurveTL -n "animCurveTL592";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTL -n "animCurveTL593";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTL -n "animCurveTL594";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 6 1 12 1 15 1 19 1 23 1 30 
		1;
createNode animCurveTL -n "animCurveTL595";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.3318677670487873 6 1.1053045647051232 
		12 0.62308333677920003 15 0.29741626348840255 19 0.092256153986443989 23 
		0.088497483916374534 30 0.134945062126369;
createNode animCurveTL -n "animCurveTL596";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.4718651042148105 6 1.4156349662069949 
		12 1.6431944548966531 15 1.3215637109676022 19 1.0042914624088184 23 0.78136680815198978 
		30 0.98054198902067657;
createNode animCurveTL -n "animCurveTL597";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.62126454755213167 6 0.61959169386474788 
		12 0.65005043602501089 15 0.44018376302120749 19 0.24518719055505914 23 0.20915289303639795 
		30 0.19708112465487385;
createNode animCurveTA -n "animCurveTA1710";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -47.088616656908457 6 -8.5215539741489525 
		15 -173.50714453433415 19 -178.32017754444556 23 -166.43086150798464 30 -181.75712390568867;
createNode animCurveTA -n "animCurveTA1711";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.0975263990809516 6 -64.297551090209751 
		15 -70.802999435899054 19 -66.138701672266848 23 -62.337764729766747 30 -64.721581426356707;
createNode animCurveTA -n "animCurveTA1712";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.53932213336905688 6 -7.2379445755754626 
		15 169.76006021004261 19 184.39403302728573 23 184.42544963716392 30 177.47049933450054;
createNode animCurveTA -n "mrg_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "animCurveTA1736";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1737";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  1;
	setAttr ".kiy[0]"  0;
createNode animCurveTA -n "animCurveTA1738";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
	setAttr ".kot[0]"  9;
	setAttr ".kix[0]"  0.29765972495079041;
	setAttr ".kiy[0]"  0.95467203855514526;
createNode animCurveTL -n "mrg_Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 -0.43524234076486068;
createNode animCurveTL -n "mrg_Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 -0.82665738350180629;
createNode animCurveTL -n "mrg_Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0.27773886459742925;
createNode animCurveTA -n "mrg_Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 28.652637602052774;
createNode animCurveTA -n "mrg_Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 64.676908227303443;
createNode animCurveTL -n "mrg_Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0.5198069948790518;
createNode animCurveTL -n "mrg_Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 -0.72394202659893114;
createNode animCurveTL -n "mrg_Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0.36439499068905612;
createNode animCurveTA -n "mrg_Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 7.7976222737965317;
createNode animCurveTA -n "mrg_Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 -30.409274105849079;
createNode animCurveTA -n "mrg_Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 -64.859940280210893;
createNode animCurveTL -n "animCurveTL604";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.1478091564096489 6 1.8272835982773392 
		12 1.5789447819403624 19 0.64049215874667531 23 0.10793197317211226 30 0.5502285468745024;
createNode animCurveTL -n "animCurveTL605";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 3.2428528854844094 6 3.6623579277286518 
		12 3.9320850284055178 19 2.5422114258273414 23 1.9213561063299229 30 2.2040502209682593;
createNode animCurveTL -n "animCurveTL606";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.2087400184371315 6 0.58555684336640568 
		12 0.82369496811445486 19 -0.19481803584731275 23 -0.27712113122985266 30 
		-0.0047861638845576957;
createNode animCurveTA -n "animCurveTA1745";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 59.007910131897091 6 28.288672191279669 
		12 83.227159798924291 19 -69.811818503132187 23 -65.210455689578708 30 -72.079170570901539;
createNode animCurveTA -n "animCurveTA1746";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 71.601588453715067 6 4.9966382067771757 
		12 -63.127065524947852 19 -64.373524147310476 23 -46.734600736444989 30 -25.431493559211866;
createNode animCurveTA -n "animCurveTA1747";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 90.779043014820601 6 -17.196389197003594 
		12 -43.378083526117628 19 64.412062541150092 23 70.638430011880061 30 92.331283509628591;
createNode animCurveTL -n "animCurveTL607";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 3.3854287601577617 6 2.4349248254141824 
		12 0.56755409218319386 15 -0.35397463560481596 19 -0.098360475681949555 23 
		-0.29595672445326199 30 0.050511575999421014;
createNode animCurveTL -n "animCurveTL608";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 3.2951827277525036 6 3.2093367745582122 
		12 3.4122146419506736 15 3.2564957716833374 19 2.4111560171549664 23 1.8829969684963612 
		30 2.2282359333804407;
createNode animCurveTL -n "animCurveTL609";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.1357561097544726 6 1.9552649608274724 
		12 2.3812097276119903 15 1.5194852025327452 19 1.0699235023236144 23 1.0054687400889841 
		30 0.90766395158927293;
createNode animCurveTA -n "animCurveTA1748";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 26.279373069154861 6 94.50353046674239 
		12 135.05490232368319 15 166.51822196318827 19 162.32893465452503 23 148.03334928765904 
		30 134.17061414787904;
createNode animCurveTA -n "animCurveTA1749";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -55.316964386970021 6 -47.821496893446991 
		12 -37.198790080116289 15 -15.597091313553811 19 -31.247716093360385 23 -26.000739835660212 
		30 -26.248045553149087;
createNode animCurveTA -n "animCurveTA1750";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -77.201572122121533 6 -127.18655955196871 
		12 -144.40156807522339 15 -176.64231459831987 19 -151.48901628428615 23 -133.7501270587309 
		30 -107.36817778262002;
createNode animCurveTL -n "animCurveTL610";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.22996541113775407 6 0.37736680843384973 
		12 0.37736680843384973 15 0.37736680843384973 19 0.047646009069586132 23 
		0.047646009069586132 30 0.047646009069586132;
createNode animCurveTL -n "animCurveTL611";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.71572892866406468 6 -0.54343311259648019 
		12 -0.54343311259648019 15 -0.54343311259648019 19 -0.70977769184901862 23 
		-0.70977769184901862 30 -0.70977769184901862;
createNode animCurveTL -n "animCurveTL612";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.86045149817799893 6 -0.97043124551903082 
		12 -0.97043124551903082 15 -0.97043124551903082 19 -0.64237249774344829 23 
		-0.64237249774344829 30 -0.64237249774344829;
createNode animCurveTL -n "animCurveTL613";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.017571725225418895 6 -0.31054502397108613 
		12 -0.31054502397108613 15 -0.31054502397108613 19 -0.31054502397108613 23 
		-0.31054502397108613 30 -0.31054502397108613;
createNode animCurveTL -n "animCurveTL614";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.54560785950824164 6 -0.55640530640609931 
		12 -0.55640530640609931 15 -0.55640530640609931 19 -0.55640530640609931 23 
		-0.55640530640609931 30 -0.55640530640609931;
createNode animCurveTL -n "animCurveTL615";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.64724218630287966 6 -0.57914122395678103 
		12 -0.57914122395678103 15 -0.57914122395678103 19 -0.57914122395678103 23 
		-0.57914122395678103 30 -0.57914122395678103;
createNode animCurveTA -n "animCurveTA1751";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.253734489678925 6 12.253734489678925 
		12 12.253734489678925 15 12.253734489678925 19 12.253734489678925 23 12.253734489678925 
		30 12.253734489678925;
createNode animCurveTA -n "animCurveTA1752";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -65.746751280844975 6 -65.746751280844961 
		12 -65.746751280844961 15 -65.746751280844961 19 -65.746751280844961 23 -65.746751280844961 
		30 -65.746751280844975;
createNode animCurveTA -n "animCurveTA1753";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1754";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.061808866237340665 6 -0.061808866237337522 
		12 -0.061808866237337522 15 -0.061808866237337522 19 -0.061808866237337522 
		23 -0.061808866237337522 30 -0.061808866237340665;
createNode animCurveTA -n "animCurveTA1755";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -59.058178941076754 6 -59.058178941076754 
		12 -59.058178941076754 15 -59.058178941076754 19 -59.058178941076754 23 -59.058178941076754 
		30 -59.058178941076754;
createNode animCurveTA -n "animCurveTA1756";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.579147429757857 6 16.579147429757843 
		12 16.579147429757843 15 16.579147429757843 19 16.579147429757843 23 16.579147429757843 
		30 16.57914742975785;
createNode animCurveTA -n "animCurveTA1757";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.5572674112203657 6 8.5572674112203622 
		12 8.5572674112203622 15 8.5572674112203622 19 8.5572674112203622 23 8.5572674112203622 
		30 8.5572674112203639;
createNode animCurveTA -n "animCurveTA1758";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.711328223519065 6 15.711328223519057 
		12 15.711328223519057 15 15.711328223519057 19 15.711328223519057 23 15.711328223519057 
		30 15.711328223519061;
createNode animCurveTA -n "animCurveTA1759";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1760";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1761";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1762";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1763";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1764";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1765";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 10.42375496696849;
createNode animCurveTA -n "animCurveTA1766";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 27.7228482558439;
createNode animCurveTA -n "animCurveTA1767";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 21.576484776388231;
createNode animCurveTA -n "animCurveTA1768";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1769";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1770";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.080064458283051 6 27.080064458283051 
		12 27.080064458283051 15 27.080064458283051 19 27.080064458283051 23 27.080064458283051 
		30 27.080064458283051;
createNode animCurveTA -n "mrg_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 13.994403295754109;
createNode animCurveTA -n "mrg_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "mrg_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 13.994403295754109;
createNode animCurveTA -n "animCurveTA1780";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1781";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1782";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.911632519594587 6 27.911632519594587 
		12 27.911632519594587 15 27.911632519594587 19 27.911632519594587 23 27.911632519594587 
		30 27.911632519594587;
createNode animCurveTA -n "animCurveTA1783";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1784";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1785";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1786";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.3937906322123035 6 -19.510072961584843 
		12 -25.890727135803381 15 -18.627666657111309 19 -4.673284826683159 23 5.1244257875627879 
		30 0.71009266045615982;
createNode animCurveTA -n "animCurveTA1787";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.7843868968348546 6 9.3825260607702123 
		12 -2.3049251976124192 15 -3.546263523020015 19 -4.9375706220930464 23 -9.141120159675431 
		30 0.39065484564574859;
createNode animCurveTA -n "animCurveTA1788";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 13.23227595374661 6 20.30642936059165 
		12 8.347150333684521 15 3.2185257670674128 19 5.1436031948885814 23 11.9633245790804 
		30 8.1445984161934568;
	setAttr -s 7 ".kit[2:6]"  1 9 9 9 9;
	setAttr -s 7 ".kot[2:6]"  1 9 9 9 9;
	setAttr -s 7 ".kix[2:6]"  0.48331466317176819 0.97247004508972168 
		0.86790001392364502 0.98995089530944824 0.96154278516769409;
	setAttr -s 7 ".kiy[2:6]"  -0.87544667720794678 -0.23302790522575378 
		0.49673888087272644 0.14141155779361725 -0.27465513348579407;
	setAttr -s 7 ".kox[2:6]"  0.48331478238105774 0.97247004508972168 
		0.86790001392364502 0.98995089530944824 0.96154278516769409;
	setAttr -s 7 ".koy[2:6]"  -0.875446617603302 -0.23302790522575378 
		0.49673888087272644 0.14141155779361725 -0.27465513348579407;
createNode animCurveTA -n "animCurveTA1789";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 7.1097278539792699 12 7.1097278539792699 
		15 7.1097278539792699 19 7.1097278539792699 23 9.4930924441262015 30 0;
createNode animCurveTA -n "animCurveTA1790";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 4.3462802692132101 
		30 0;
createNode animCurveTA -n "animCurveTA1791";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 -24.059161620117205 
		30 0;
createNode animCurveTA -n "animCurveTA1792";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.7103260003138816 6 5.9862614705266992 
		12 8.4757225690489832 15 11.543926798884067 19 0.96879310801463325 23 4.0292350178916774 
		30 -2.0270270270270276;
createNode animCurveTA -n "animCurveTA1793";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 3.6938159239902002 6 2.7936151489449426 
		12 1.1477434634438117 15 4.0406450302336587 19 -3.6699062068098405 23 4.6007755972558266 
		30 -2.4108692476260059;
createNode animCurveTA -n "animCurveTA1794";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 14.572231982957494 6 12.739831483800881 
		12 14.696180294034731 15 17.382604922704356 19 29.40037223169206 23 24.721147746370409 
		30 13.0432985235726;
createNode animCurveTA -n "animCurveTA1795";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.2796212519697256 6 -1.8903601258661931 
		12 -1.8903601258661931 15 -0.18300343148149126 19 1.4672032523553795 23 1.4672032523553795 
		30 0;
createNode animCurveTA -n "animCurveTA1796";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.2209313171847875 6 2.5597289571479034 
		12 2.5597289571479034 15 2.5597289571479047 19 3.0842593602314001 23 3.0842593602314001 
		30 0;
createNode animCurveTA -n "animCurveTA1797";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.0401232256568242 6 2.016811087403604 
		12 2.016811087403604 15 0.71813315916180298 19 -2.0736047826525068 23 -2.0736047826525068 
		30 -10.382821061592265;
createNode animCurveTA -n "animCurveTA1798";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1799";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1800";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 33.429092416277157 6 33.429092416277157 
		12 33.429092416277157 15 33.429092416277157 19 33.429092416277157 23 33.429092416277157 
		30 33.429092416277157;
createNode animCurveTA -n "animCurveTA1801";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 8.2533422302317216;
createNode animCurveTA -n "animCurveTA1802";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 23.263402056531085;
createNode animCurveTA -n "animCurveTA1803";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 20.166277752815617;
createNode animCurveTA -n "animCurveTA1804";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1805";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 6 0 12 0 15 0 19 0 23 0 30 
		0;
createNode animCurveTA -n "animCurveTA1806";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 17.254116939558369 6 17.254116939558369 
		12 17.254116939558369 15 17.254116939558369 19 17.254116939558369 23 17.254116939558369 
		30 17.254116939558369;
createNode animCurveTA -n "animCurveTA1807";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  5 0 11 0 19 0 26 0 30 0;
createNode animCurveTA -n "animCurveTA1808";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  5 0 11 0 19 0 26 0 30 0;
createNode animCurveTA -n "animCurveTA1809";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  5 24.358684443344277 11 35.177881291721548 
		19 7.3629024675517076 26 17.874564710049984 30 0;
createNode animCurveTA -n "animCurveTA1810";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  5 0 11 0 19 0 26 0 30 0;
createNode animCurveTA -n "animCurveTA1811";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  5 0 11 0 19 0 26 0 30 0;
createNode animCurveTA -n "animCurveTA1812";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  5 24.358684443344277 11 35.177881291721548 
		19 7.3629024675517076 26 17.874564710049984 30 0;
createNode animCurveTA -n "animCurveTA1813";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  5 0 11 0 19 0 26 0 30 0;
createNode animCurveTA -n "animCurveTA1814";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  5 0 11 0 19 0 26 0 30 0;
createNode animCurveTA -n "animCurveTA1815";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  5 24.358684443344277 11 35.177881291721548 
		19 7.3629024675517076 26 17.874564710049984 30 0;
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
	setAttr -s 286 ".lnk";
select -ne :time1;
	setAttr ".o" 30;
select -ne :renderPartition;
	setAttr -s 286 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 286 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 132 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 132 ".tx";
select -ne :initialShadingGroup;
	setAttr -k on ".nds";
	setAttr ".ro" yes;
	setAttr -s 4068 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".outf" 23;
	setAttr ".an" yes;
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
connectAttr "mrg_get_out_of_car_highSource.st" "clipLibrary1.st[0]";
connectAttr "mrg_get_out_of_car_highSource.du" "clipLibrary1.du[0]";
connectAttr "mrg_Extra_Attributes_translateX.a" "clipLibrary1.cel[0].cev[0].cevr"
		;
connectAttr "mrg_Extra_Attributes_translateY.a" "clipLibrary1.cel[0].cev[1].cevr"
		;
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL578.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA1688.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "mrg_Hoop_Root_IK_FK_RFoot.a" "clipLibrary1.cel[0].cev[6].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_FK_LFoot.a" "clipLibrary1.cel[0].cev[7].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary1.cel[0].cev[8].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary1.cel[0].cev[9].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_FK_RArm.a" "clipLibrary1.cel[0].cev[10].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_FK_LArm.a" "clipLibrary1.cel[0].cev[11].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
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
connectAttr "animCurveTL583.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL584.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL585.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1692.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1693.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1694.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL586.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL587.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL588.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1695.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1696.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1697.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "mrg_Right_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[32].cevr"
		;
connectAttr "mrg_Right_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[33].cevr"
		;
connectAttr "mrg_Right_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[34].cevr"
		;
connectAttr "mrg_Left_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[35].cevr"
		;
connectAttr "mrg_Left_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[36].cevr"
		;
connectAttr "mrg_Left_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[37].cevr"
		;
connectAttr "mrg_Right_Toe_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[38].cevr"
		;
connectAttr "mrg_Right_Toe_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[39].cevr"
		;
connectAttr "mrg_Right_Toe_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[40].cevr"
		;
connectAttr "mrg_Left_Toe_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[41].cevr"
		;
connectAttr "mrg_Left_Toe_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[42].cevr"
		;
connectAttr "mrg_Left_Toe_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[43].cevr"
		;
connectAttr "animCurveTL589.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL590.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL591.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL592.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL593.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL594.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL595.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL596.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL597.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1710.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1711.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1712.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "mrg_R_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "mrg_R_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "mrg_R_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "mrg_R_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[59].cevr"
		;
connectAttr "mrg_R_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[60].cevr"
		;
connectAttr "mrg_R_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[61].cevr"
		;
connectAttr "mrg_R_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[62].cevr"
		;
connectAttr "mrg_R_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[63].cevr"
		;
connectAttr "mrg_R_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[64].cevr"
		;
connectAttr "mrg_R_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[65].cevr"
		;
connectAttr "mrg_L_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "mrg_L_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "mrg_L_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "mrg_L_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[69].cevr"
		;
connectAttr "mrg_L_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[70].cevr"
		;
connectAttr "mrg_L_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[71].cevr"
		;
connectAttr "mrg_L_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[72].cevr"
		;
connectAttr "mrg_L_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[73].cevr"
		;
connectAttr "mrg_L_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[74].cevr"
		;
connectAttr "mrg_L_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[75].cevr"
		;
connectAttr "mrg_R_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[76].cevr"
		;
connectAttr "mrg_R_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[77].cevr"
		;
connectAttr "mrg_R_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[78].cevr"
		;
connectAttr "animCurveTA1736.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1737.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1738.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "mrg_Right_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "mrg_Right_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "mrg_Right_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "mrg_Right_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "mrg_Right_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "mrg_Right_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "mrg_Left_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "mrg_Left_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "mrg_Left_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "mrg_Left_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "mrg_Left_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "mrg_Left_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[93].cevr"
		;
connectAttr "animCurveTL604.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL605.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL606.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1745.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1746.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1747.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL607.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL608.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL609.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1748.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1749.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1750.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL610.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL611.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL612.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL613.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL614.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL615.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1751.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1752.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1753.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1754.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1755.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1756.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1757.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1758.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1759.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1760.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1761.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1762.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1763.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1764.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1765.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1766.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1767.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1768.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1769.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1770.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "mrg_Pelvis_rotateX.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "mrg_Pelvis_rotateY.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "mrg_Pelvis_rotateZ.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "mrg_Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "mrg_Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "mrg_Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "mrg_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "mrg_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "mrg_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1780.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1781.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1782.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1783.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1784.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1785.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1786.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1787.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1788.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1789.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1790.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1791.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1792.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1793.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1794.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1795.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1796.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1797.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1798.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1799.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1800.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1801.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1802.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1803.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1804.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1805.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1806.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr "animCurveTA1807.a" "clipLibrary1.cel[0].cev[168].cevr";
connectAttr "animCurveTA1808.a" "clipLibrary1.cel[0].cev[169].cevr";
connectAttr "animCurveTA1809.a" "clipLibrary1.cel[0].cev[170].cevr";
connectAttr "animCurveTA1810.a" "clipLibrary1.cel[0].cev[171].cevr";
connectAttr "animCurveTA1811.a" "clipLibrary1.cel[0].cev[172].cevr";
connectAttr "animCurveTA1812.a" "clipLibrary1.cel[0].cev[173].cevr";
connectAttr "animCurveTA1813.a" "clipLibrary1.cel[0].cev[174].cevr";
connectAttr "animCurveTA1814.a" "clipLibrary1.cel[0].cev[175].cevr";
connectAttr "animCurveTA1815.a" "clipLibrary1.cel[0].cev[176].cevr";
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
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[86].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[87].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[88].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[89].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[90].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[91].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[92].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[93].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[94].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[95].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[96].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[97].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[98].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[99].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[100].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[101].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[102].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[103].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[104].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[105].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[106].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[107].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[108].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[109].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[110].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[111].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[112].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[113].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[114].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[115].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[116].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[117].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[118].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[119].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[120].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[121].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[122].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[123].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[124].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[125].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[126].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[127].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[128].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[129].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[130].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[131].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[132].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[133].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[134].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[135].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[136].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[137].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[138].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[139].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[140].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[141].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[142].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[143].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[144].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[145].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[146].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[147].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[148].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[149].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[150].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[151].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[152].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[153].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[154].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[155].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[156].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[157].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[158].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[159].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[160].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[161].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[162].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[163].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[164].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[165].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[166].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[167].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[168].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[169].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[170].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[171].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[172].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[173].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[174].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[175].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[176].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[177].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[178].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[179].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[180].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[181].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[182].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[183].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[184].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[185].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[186].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[187].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[188].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[189].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[190].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[191].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[192].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[193].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[194].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[195].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[196].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[197].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[198].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[199].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[200].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[201].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[202].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[203].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[204].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[205].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[206].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[207].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[208].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[209].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[210].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[211].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[212].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[213].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[214].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[215].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[216].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[217].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[218].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[219].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[220].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[221].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[222].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[223].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[224].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[225].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[226].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[227].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[228].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[229].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[230].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[231].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[232].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[233].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[234].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[235].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[236].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[237].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[238].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[239].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[240].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[241].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[242].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[243].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[244].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[245].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[246].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[247].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[248].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[249].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[250].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[251].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[252].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[253].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[254].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[255].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[256].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[257].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[258].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[259].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[260].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[261].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[262].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[263].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[264].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[265].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[266].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[267].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[268].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[269].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[270].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[271].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[272].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[273].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[274].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[275].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[276].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[277].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[278].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[279].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[280].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[281].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[282].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[283].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[284].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[285].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[285].olnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of mrg_get_out_of_car_high.ma
