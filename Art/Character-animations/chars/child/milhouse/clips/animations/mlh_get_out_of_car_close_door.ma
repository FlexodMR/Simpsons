//Maya ASCII 4.0 scene
//Name: mlh_get_out_of_car_close_door.ma
//Last modified: Tue, Jun 25, 2002 02:25:27 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.7";
requires "p3dDeformer" "17.1.0.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mlh_get_out_of_car_close_doorSource";
	setAttr ".ihi" 0;
	setAttr ".du" 16;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "animCurveTL125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -0.1243181374463436 1 -0.13469662151595851 
		2 -0.14672954273724612 3 -0.15545359005401543 4 -0.15590545241007539 5 -0.14033057255829307 
		6 -0.11299080770365551 7 -0.086947468468152045 8 -0.066871302498217697 9 
		-0.048091562269853137 10 -0.029657315649396186 11 -0.0070677983784004049 
		12 0.015176225510610018 13 0.024523395714841301 14 0.012490975452772763 15 
		-0.012438298453048642 16 -0.037367575899315227;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.44494196949031628 1 0.47293760972901716 
		2 0.50437831540809319 3 0.52892888914328884 4 0.53625413355034923 5 0.51855874103130395 
		6 0.47636510202111526 7 0.41181456618492662 8 0.30772414026383021 9 0.18127681808955332 
		10 0.086162929963192081 11 0.050681558179781108 12 0.046533616419408431 13 
		0.042512182060749984 14 0.028257117363489421 15 0.014128559896001749 16 0;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -89.724000000000004 1 -83.480017518837954 
		2 -77.314298272806838 3 -71.148578899468191 4 -64.90459603638358 5 -58.504086321114535 
		6 -51.868786391222628 7 -44.66020372427775 8 -36.873250625431638 9 -28.92977097361862 
		10 -21.251608647773022 11 -14.260607526829176 12 -8.3786114897213668 13 -4.5445815523040416 
		14 -2.6431929013433684 15 -1.5148606721413549 16 0;
createNode animCurveTU -n "animCurveTU25";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTU -n "animCurveTU26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTU -n "animCurveTU27";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTU -n "animCurveTU28";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTU -n "animCurveTU29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTU -n "animCurveTU30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTU -n "animCurveTU31";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 1;
createNode animCurveTU -n "animCurveTU32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 1;
createNode animCurveTA -n "animCurveTA353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "animCurveTL129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "animCurveTL130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "animCurveTL131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "animCurveTL132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.12723102470459602 4 -0.12723102470459602 
		7 -0.31717312130189224 10 -0.21764441145149604 13 -0.218 16 -0.21764441145149604;
createNode animCurveTL -n "animCurveTL133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.15873888513822235 4 0.33660930972180708 
		7 0.30589918304475761 10 0.1521050350093231 13 0.152 16 0.1521050350093231;
	setAttr -s 6 ".kit[4:5]"  3 3;
	setAttr -s 6 ".kot[4:5]"  3 3;
createNode animCurveTL -n "animCurveTL134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.72810231057739006 4 0.72810231057739006 
		7 0.31612415574650882 10 -0.064904406754016042 13 -0.0649 16 -0.064904406754016042;
createNode animCurveTA -n "animCurveTA356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 174.08624265487845 4 27.91988412504498 
		7 35.946713855059755 10 0 13 -0.16069276704424185 16 0;
	setAttr -s 6 ".kit[4:5]"  3 9;
	setAttr -s 6 ".kot[4:5]"  3 9;
createNode animCurveTA -n "animCurveTA357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -77.361573251038095 4 -58.491392042885806 
		7 -25.948901905116429 10 -25.948901905116401 13 -25.948901905116401 16 -25.948901905116401;
createNode animCurveTA -n "animCurveTA358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -172.73088895567136 4 0.46945470598764205 
		7 0 10 0 13 0 16 0;
	setAttr -s 6 ".kit[1:5]"  3 9 9 9 9;
	setAttr -s 6 ".kot[1:5]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.16956905984264883 4 -0.16956905984264883 
		7 -0.16956905984264883 10 0.021785915323025682 13 0.1393832443869546 16 0.1393832443869546;
createNode animCurveTL -n "animCurveTL136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.1717678717874474 4 0.1717678717874474 
		7 0.1717678717874474 10 0.23261088124052329 13 0.1521046763396838 16 0.1521046763396838;
createNode animCurveTL -n "animCurveTL137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.097427438237216 4 1.097427438237216 
		7 1.097427438237216 10 0.53447966462689123 13 0.00078430246903575811 16 0.00078430246903575811;
createNode animCurveTA -n "animCurveTA359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -375.98082634113621 4 -358.98230662052481 
		7 -359.71051472936074 10 -343.78760382719003 13 -356.30510582348501 16 -356.30510582348501;
createNode animCurveTA -n "animCurveTA360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -91.029007103502892 4 -73.836695331369143 
		7 -11.877126668562742 10 -13.190848725189511 13 -5.066135686458634 16 -5.066135686458634;
createNode animCurveTA -n "animCurveTA361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 374.00706426405969 4 357.05120942584182 
		7 357.96910308770822 10 365.87510879708043 13 359.77428349194275 16 359.77428349194275;
createNode animCurveTA -n "animCurveTA362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "animCurveTL138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 16 0;
createNode animCurveTL -n "animCurveTL139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 16 0;
createNode animCurveTL -n "animCurveTL140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 4 1 7 1 10 1 13 1 16 1;
createNode animCurveTL -n "animCurveTL141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 16 0;
createNode animCurveTL -n "animCurveTL142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 16 0;
createNode animCurveTL -n "animCurveTL143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 4 1 7 1 10 1 13 1 16 1;
createNode animCurveTL -n "animCurveTL144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.25441752586561134 4 -0.31906108220330981 
		7 -0.17793831425034851 10 -0.060693805637101549 13 0.050187219594454789 16 
		-0.076472881617957691;
createNode animCurveTL -n "animCurveTL145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.9131651970449548 4 0.94398942485075565 
		7 0.92500695028803281 10 0.86345686750096806 13 0.89728606343677331 16 0.96474337111153452;
createNode animCurveTL -n "animCurveTL146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.91057537827380008 4 1.0974460581182048 
		7 0.84278002547624742 10 0.17633275331227244 13 0.087001337063247239 16 0;
createNode animCurveTA -n "animCurveTA374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 6.4770403396181893 4 14.115305953338238 
		7 6.4405715946507076 10 5.4190830080024321 13 5.0053970193082282 16 -0.62843630316474508;
createNode animCurveTA -n "animCurveTA375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -78.954529439779762 4 -43.290879102686773 
		7 -18.743373542065957 10 5.0982101752959457 13 29.750727835533947 16 -5.8284402688137167;
createNode animCurveTA -n "animCurveTA376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 3.0300237053302275 4 0.95679763148460284 
		7 -5.1634214270386511 10 -0.54358275456367999 13 -2.9563955936336086 16 -1.295636019309746;
createNode animCurveTA -n "animCurveTA377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "animCurveTL147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0.27773886459742925;
createNode animCurveTA -n "animCurveTA403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 28.652637602052774;
createNode animCurveTA -n "animCurveTA405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 64.676908227303443;
createNode animCurveTL -n "animCurveTL150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0.5198069948790518;
createNode animCurveTL -n "animCurveTL151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0.36439499068905612;
createNode animCurveTA -n "animCurveTA406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 7.7976222737965317;
createNode animCurveTA -n "animCurveTA407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 -30.409274105849079;
createNode animCurveTA -n "animCurveTA408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 -64.859940280210893;
createNode animCurveTL -n "animCurveTL153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.24094058915794578 4 -1.7221422667524373 
		5 -1.660829365309769 7 -1.3323014620167721 10 -0.43660350743874704 13 0.52518242666326953 
		15 -0.37243238315162608 16 -0.84654347043021561;
createNode animCurveTL -n "animCurveTL154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.1298889145633915 4 2.0187044911569156 
		5 2.0816419488310229 7 2.000722860929494 10 1.6863799048594967 13 1.7036999239077311 
		15 1.253450943065554 16 1.2151450287453427;
createNode animCurveTL -n "animCurveTL155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.73232309345356994 4 1.9169558243672975 
		5 1.9732248663590162 7 1.7626452836903677 10 1.0837845319729029 13 1.0130435086491647 
		15 0.62057618753547905 16 -0.097994651149805143;
createNode animCurveTA -n "animCurveTA409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 261.7260243159331 4 300.71329345569615 
		5 302.06607460281714 7 300.71329345569615 10 331.0235222266287 13 443.72550828566489 
		15 332.7484343274316 16 326.42958752792225;
createNode animCurveTA -n "animCurveTA410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -45.008042607101586 4 12.133442627944801 
		5 13.547236098302841 7 12.133442627944801 10 71.917845588531208 13 56.700050392933925 
		15 37.954865401716468 16 7.3355208476241458;
createNode animCurveTA -n "animCurveTA411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -265.6340570691703 4 -351.40187982778605 
		5 -357.83767025541971 7 -351.40187982778605 10 -324.66609436312882 13 -216.84978862256523 
		15 -324.44998118340629 16 -295.49324013188908;
createNode animCurveTL -n "animCurveTL156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.30749701812507962 4 -0.041499285372137956 
		7 0.82415140002192244 10 0.58561458123811561 13 0.7246466247099308 16 0.61083301393139333;
createNode animCurveTL -n "animCurveTL157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.1104776614679435 4 1.1669775377221685 
		7 1.2110162669307252 10 1.293863975935112 13 1.0846904346086543 16 1.205921556906836;
createNode animCurveTL -n "animCurveTL158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.227748899304375 4 2.1841601514734879 
		7 1.1962120303937906 10 -0.12606182003911534 13 -0.22551934719481975 16 0.14314299916678522;
createNode animCurveTA -n "animCurveTA412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -273.44301664312098 4 -331.05077504175671 
		7 -36.342371142933764 10 -6.2714407155542409 13 -0.9587298046746926 16 -0.14751373646059329;
createNode animCurveTA -n "animCurveTA413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -27.753397523637741 4 -21.279751825887256 
		7 11.969566747283142 10 27.494238340091222 13 12.284199328541114 16 -8.513966085499284;
createNode animCurveTA -n "animCurveTA414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 266.95918275971843 4 292.70861874789227 
		7 -58.343731855318346 10 -49.013009148959625 13 -52.488299386351187 16 -58.29195475029789;
createNode animCurveTL -n "animCurveTL159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.66768647579175422 4 0.66768647579175422 
		7 0.17523930523423681 10 0.145692475481941 13 0.076454516312516679 16 0;
createNode animCurveTL -n "animCurveTL160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.67301253925255977 4 -0.67301253925255977 
		7 -0.00072435787012014696 10 0.039612935291223068 13 0.024818445825645647 
		16 0;
createNode animCurveTL -n "animCurveTL161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.49850301940481012 4 -0.49850301940481012 
		7 -0.80201435285893019 10 -0.82022503115751455 13 -0.90413945525160533 16 
		-1;
createNode animCurveTL -n "animCurveTL162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.31054502397108613 4 -0.31054502397108613 
		7 -0.679929438736388 10 -0.50398116548755967 13 -0.30493038065203715 16 -0.10167917362943303;
createNode animCurveTL -n "animCurveTL163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.55640530640609931 4 -0.55640530640609931 
		7 -0.58260810733110913 10 -0.39863743916248945 13 -0.3874265124899427 16 
		-0.40762644910266188;
createNode animCurveTL -n "animCurveTL164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.57914122395678103 4 -0.57914122395678103 
		7 -0.66309486839399645 10 -0.7761129410128248 13 -0.85665445141535856 16 
		-0.93129112588482243;
createNode animCurveTA -n "animCurveTA415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 12.253734489678925 4 12.253734489678925 
		7 12.253734489678925 10 12.253734489678925 13 12.253734489678925 16 12.253734489678925;
createNode animCurveTA -n "animCurveTA416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -65.746751280844975 4 -65.746751280844961 
		7 -65.746751280844961 10 -65.746751280844961 13 -65.746751280844975 16 -65.746751280844975;
createNode animCurveTA -n "animCurveTA417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.061808866237340665 4 -0.061808866237337522 
		7 -0.061808866237337522 10 -0.061808866237337522 13 -0.061808866237339083 
		16 -0.061808866237340665;
createNode animCurveTA -n "animCurveTA419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -59.058178941076754 4 -59.058178941076754 
		7 -59.058178941076754 10 -59.058178941076754 13 -59.058178941076754 16 -59.058178941076754;
createNode animCurveTA -n "animCurveTA420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 16.57914742975785 4 16.579147429757843 
		7 16.579147429757843 10 16.579147429757843 13 16.579147429757846 16 16.57914742975785;
createNode animCurveTA -n "animCurveTA421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.5572674112203639 4 8.5572674112203622 
		7 8.5572674112203622 10 8.5572674112203622 13 8.5572674112203622 16 8.5572674112203639;
createNode animCurveTA -n "animCurveTA422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 15.711328223519061 4 15.711328223519057 
		7 15.711328223519057 10 15.711328223519057 13 15.711328223519057 16 15.711328223519061;
createNode animCurveTA -n "animCurveTA423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 16 0;
createNode animCurveTA -n "mlh_Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 143.71460997127252;
createNode animCurveTA -n "mlh_Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 27.804554996454378;
createNode animCurveTA -n "mlh_Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 29.452980944098744;
createNode animCurveTA -n "animCurveTA432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA434";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.080064458283051 4 27.080064458283051 
		7 27.080064458283051 10 27.080064458283051 13 27.080064458283051 16 27.080064458283051;
createNode animCurveTA -n "animCurveTA435";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA436";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA437";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA438";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA439";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA440";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 13.994403295754109;
createNode animCurveTA -n "animCurveTA444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.911632519594587 4 27.911632519594587 
		7 27.911632519594587 10 27.911632519594587 13 27.911632519594587 16 27.911632519594587;
createNode animCurveTA -n "animCurveTA447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.65073001024951671 4 29.379259171673748 
		7 36.515129098508311 10 24.809666427741885 13 12.942987686442743 16 -0.65073001024951671;
createNode animCurveTA -n "animCurveTA451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -4.2368721935960938 4 -0.29710718013218351 
		7 -8.0193793976003658 10 -15.976289169045954 13 -11.835960743668345 16 -4.2368721935960938;
createNode animCurveTA -n "animCurveTA452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.6995264082587447 4 0.96586030651003341 
		7 6.365537851650819 10 -3.7088419425485806 13 0.78667949609524512 16 2.6995264082587447;
createNode animCurveTA -n "animCurveTA453";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 3.9388735369945089 7 0 10 
		-0.23633240840109546 13 -0.14770774612807708 16 0;
createNode animCurveTA -n "animCurveTA454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 -1.8242021628094227 7 0 10 
		0.10945212443573141 13 0.068407573498613802 16 0;
createNode animCurveTA -n "animCurveTA455";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 -3.4768422591718746 7 0 10 
		0.20861051990451415 13 0.13038156631091305 16 0;
createNode animCurveTA -n "animCurveTA456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 -0.16788504588939113 7 1.2821508722957302 
		10 9.3414390941578826 13 -1.0260892085911693 16 0;
createNode animCurveTA -n "animCurveTA457";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -5.2836650271627628 4 28.177964601171336 
		7 34.592236725841374 10 16.101570746525564 13 6.794023840529448 16 -5.2836650271627628;
createNode animCurveTA -n "animCurveTA458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 6.6786334979782911 4 -11.997228454314529 
		7 -9.0177477062694198 10 10.782989100949166 13 -6.5386371988712124 16 6.6786334979782911;
createNode animCurveTA -n "animCurveTA459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.8903601258661935 4 -0.26401146988271113 
		7 -10.620934651579155 10 0.63894688216937967 13 -3.5810552572110996 16 -1.8903601258661935;
createNode animCurveTA -n "animCurveTA460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.5597289571479038 4 -12.173202612054125 
		7 -4.2675310995034259 10 5.1850848311064954 13 1.8377920809524408 16 2.5597289571479038;
createNode animCurveTA -n "animCurveTA461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.0168110874036049 4 5.8044567186189209 
		7 -2.5690730322880704 10 -14.743474393487343 13 1.018742769217841 16 2.0168110874036049;
createNode animCurveTA -n "animCurveTA462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 33.429092416277157 4 33.429092416277157 
		7 33.429092416277157 10 33.429092416277157 13 33.429092416277157 16 33.429092416277157;
createNode animCurveTA -n "mlh_Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 106.91515461315004;
createNode animCurveTA -n "mlh_Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 28.612774017129322;
createNode animCurveTA -n "mlh_Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 17.632837226638053;
createNode animCurveTA -n "animCurveTA468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 7 0 10 0 13 0 16 0;
createNode animCurveTA -n "animCurveTA470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 17.254116939558369 4 17.254116939558369 
		7 17.254116939558369 10 17.254116939558369 13 17.254116939558369 16 17.254116939558369;
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
	setAttr -s 51 ".lnk";
select -ne :time1;
	setAttr ".o" 0;
select -ne :renderPartition;
	setAttr -s 51 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 51 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 14 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 14 ".tx";
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
	setAttr -s 678 ".gn";
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
connectAttr "mlh_get_out_of_car_close_doorSource.st" "clipLibrary1.st[0]"
		;
connectAttr "mlh_get_out_of_car_close_doorSource.du" "clipLibrary1.du[0]"
		;
connectAttr "animCurveTL124.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL125.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU25.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU26.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU27.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU28.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU29.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU30.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU31.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU32.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA353.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA354.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA355.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL129.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL130.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL131.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL132.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL133.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL134.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA356.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA357.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA358.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL135.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL136.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL137.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA359.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA360.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA361.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA362.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA363.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA364.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA365.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA366.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA367.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA368.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA369.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA370.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA371.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA372.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA373.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL138.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL139.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL140.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL141.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL142.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL143.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL144.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL145.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL146.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA374.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA375.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA376.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA377.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA378.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA379.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA380.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA381.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA382.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA383.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA384.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA385.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA386.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA387.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA388.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA389.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA390.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA391.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA392.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA393.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA394.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA395.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA396.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA397.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA398.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA399.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA400.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA401.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA402.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL147.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL148.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL149.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA403.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA404.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA405.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL150.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL151.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL152.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA406.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA407.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA408.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL153.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL154.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL155.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA409.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA410.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA411.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL156.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL157.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL158.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA412.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA413.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA414.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL159.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL160.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL161.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL162.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL163.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL164.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA415.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA416.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA417.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA418.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA419.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA420.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA421.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA422.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA423.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA424.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA425.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA426.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA427.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA428.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "mlh_Thumb_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[126].cevr"
		;
connectAttr "mlh_Thumb_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[127].cevr"
		;
connectAttr "mlh_Thumb_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[128].cevr"
		;
connectAttr "animCurveTA432.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA433.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA434.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA435.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA436.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA437.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA438.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA439.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA440.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA441.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA442.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA443.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA444.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA445.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA446.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA447.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA448.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA449.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA450.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA451.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA452.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA453.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA454.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA455.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA456.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA457.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA458.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA459.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA460.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA461.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA462.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA463.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA464.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "mlh_Thumb_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[162].cevr"
		;
connectAttr "mlh_Thumb_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[163].cevr"
		;
connectAttr "mlh_Thumb_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[164].cevr"
		;
connectAttr "animCurveTA468.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA469.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA470.a" "clipLibrary1.cel[0].cev[167].cevr";
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
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[32].olnk";
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
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of mlh_get_out_of_car_close_door.ma
