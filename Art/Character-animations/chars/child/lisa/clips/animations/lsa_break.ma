//Maya ASCII 4.0 scene
//Name: lsa_break.ma
//Last modified: Fri, Oct 11, 2002 02:54:15 PM
requires maya "4.0";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_breakSource";
	setAttr ".ihi" 0;
	setAttr ".du" 15;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL452";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL453";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL454";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.033135114381557439;
createNode animCurveTL -n "animCurveTL455";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL456";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1292";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU89";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU90";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU91";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU92";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU93";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU94";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU95";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU96";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1293";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1294";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1295";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL457";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL458";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL459";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.26454016861507795 5 -0.232659124423784 
		7 -0.13347915012579425 8 -0.099659378116865302 10 -0.099659378116865302 14 
		-0.26454016861507795;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.13806192026723146 5 0.60555372981845923 
		7 0.50538777402936386 8 0.94672284798425144 10 0.94672284798425144 12 0.63783157005054958 
		14 0.13806192026723146;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.064904406754016042 5 -0.43611810888721581 
		7 0.2948880084625245 8 1.0711924875837506 10 1.0711924875837506 12 0.55886360564827697 
		14 -0.064904406754016042;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 113.19946627597103 6 119.91817392804197 
		7 85.024114245883425 8 -98.190192789988899 10 -98.190192789988899 12 -23.652760991747673 
		14 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA1297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -13.717778871715204 5 14.851866103409362 
		6 -0.6603897939131721 7 29.846665505394288 8 -13.717778871715204 14 -13.717778871715204;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 17.738975868276061 6 17.221601873745598 
		7 3.2430112049949669 8 0 14 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL463";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.21594587158542247 9 0.21594587158542247;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTL -n "animCurveTL464";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.1380615615975922 9 0.1380615615975922;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTL -n "animCurveTL465";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.00078430246903575811 9 0.00078430246903575811;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTA -n "animCurveTA1299";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 9 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTA -n "animCurveTA1300";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 9 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTA -n "animCurveTA1301";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 9 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
createNode animCurveTA -n "animCurveTA1302";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1303";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1304";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1305";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1306";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1307";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1308";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1309";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1310";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1311";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1312";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1313";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 -0.23286453566895407 5 -0.67425101394889952 
		6 -0.53342061229152915 7 -0.11402696924263619 9 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 -0.040807054176530778 5 -0.11297135879335878 
		6 -0.077142622481739448 7 -0.094382013826921851 9 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 3 1.0452298829624542 5 0.80076026327099836 
		6 0.85361584835090298 7 1.0004377958846988 9 1;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 9;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL469";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL470";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL471";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "animCurveTL472";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.076472881617957691 2 0.20083763039044253 
		7 0.12900271075333919 12 0.12118593863322805 15 -0.076472881617957691;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "animCurveTL473";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.96147551361829786 2 0.74747738565255595 
		7 0.83530076149203847 12 0.86224163067863735 15 0.96147551361829786;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTL -n "animCurveTL474";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2 0.013325142488086868 7 0.3222699108401218 
		15 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA1314";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.62843630316474508 2 7.5556502142694777 
		7 -25.531808788931958 12 -9.7854174871437642 15 -0.62843630316474508;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA1315";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -5.8284402688137167 7 -9.7249813032949994 
		12 -5.8436849708768301 15 -5.8284402688137167;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA1316";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.295636019309746 7 -9.3172421739797588 
		12 3.5835588799276414 15 -1.295636019309746;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA1317";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1318";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1319";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1320";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1321";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1322";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1323";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1324";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1325";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1326";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1327";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1328";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1329";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1330";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1331";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1332";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1333";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1334";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1335";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1336";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1337";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1338";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1339";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1340";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1341";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1342";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL475";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL476";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL477";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.27773886459742925;
createNode animCurveTA -n "animCurveTA1343";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1344";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 28.652637602052774;
createNode animCurveTA -n "animCurveTA1345";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 64.676908227303443;
createNode animCurveTL -n "animCurveTL478";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.5198069948790518;
createNode animCurveTL -n "animCurveTL479";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL480";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.36439499068905612;
createNode animCurveTA -n "animCurveTA1346";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 7.7976222737965317;
createNode animCurveTA -n "animCurveTA1347";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -30.409274105849079;
createNode animCurveTA -n "animCurveTA1348";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -64.859940280210893;
createNode animCurveTL -n "animCurveTL481";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.97384023505055983;
createNode animCurveTL -n "animCurveTL482";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.2525965505547216;
createNode animCurveTL -n "animCurveTL483";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.097994651149805143;
createNode animCurveTA -n "animCurveTA1349";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -12.222987645962959;
createNode animCurveTA -n "animCurveTA1350";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -19.681044208515029;
createNode animCurveTA -n "animCurveTA1351";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 65.119655550709027;
createNode animCurveTL -n "animCurveTL484";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.75854111686822778;
createNode animCurveTL -n "animCurveTL485";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.1932952672205326;
createNode animCurveTL -n "animCurveTL486";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.14314299916678522;
createNode animCurveTA -n "animCurveTA1352";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.7993291745893352;
createNode animCurveTA -n "animCurveTA1353";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.228264010471275;
createNode animCurveTA -n "animCurveTA1354";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -60.456694896838378;
createNode animCurveTL -n "animCurveTL487";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL488";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL489";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1;
createNode animCurveTL -n "animCurveTL490";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.10167917362943303;
createNode animCurveTL -n "animCurveTL491";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.40762644910266188;
createNode animCurveTL -n "animCurveTL492";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.93129112588482243;
createNode animCurveTA -n "animCurveTA1355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 12.253734489678925 3 22.203207716379925 
		8 5.0025161977866608 12 13.64607111822375 15 12.253734489678925;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -65.746751280844975 8 1.1310099916588554 
		12 -7.627576070121159 15 -65.746751280844975;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 8 11.299809242450019 12 -21.27516036070778 
		15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.061808866237340665 3 -11.076108830468899 
		8 -0.037088549084784719 12 7.6897266703779703 15 -0.061808866237340665;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -59.058178941076754 3 -17.07212699853568 
		8 31.032947006494535 12 -18.417058360155917 15 -59.058178941076754;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.57914742975785 3 50.935503535085672 
		8 16.507014293324172 12 -27.375720868681967 15 16.57914742975785;
	setAttr -s 5 ".kit[4]"  3;
	setAttr -s 5 ".kot[4]"  3;
createNode animCurveTA -n "animCurveTA1361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.5572674112203639 3 71.310600534463575 
		8 22.257080508153546 15 8.5572674112203639;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 15.711328223519061 3 96.911662841634353 
		8 6.512503960167118 15 15.711328223519061;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 -47.706544833984317 12 -59.16011545906904 
		15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 -37.315682505206993 5 -41.394721296346091 
		8 38.686537824997664 12 41.664997468281811 15 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 38.054715543452929 12 -55.895948293958888 
		15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 -46.719172151758869 12 -50.341490871008745 
		15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 -49.84629126647333 5 -48.431537372358797 
		8 63.371229505150801 12 53.169989030778709 15 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[5]"  3;
createNode animCurveTA -n "animCurveTA1368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 11.165616434923288 12 -36.231988834912187 
		15 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1369";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 10.423754966968488;
createNode animCurveTA -n "animCurveTA1370";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 27.7228482558439;
createNode animCurveTA -n "animCurveTA1371";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 21.576484776388224;
createNode animCurveTA -n "animCurveTA1372";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1373";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1374";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 27.080064458283051;
createNode animCurveTA -n "animCurveTA1375";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1376";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1377";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1378";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1379";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1380";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA1381";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1382";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1383";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA1384";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1385";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1386";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 27.911632519594587;
createNode animCurveTA -n "animCurveTA1387";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1388";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1389";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.65073001024951671 2 -11.900783568016301 
		7 8.3492318522688258 15 -0.65073001024951671;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA1391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -4.2368721935960938 2 -3.620834636542082 
		7 -8.7729208057484733 15 -4.2368721935960938;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA1392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.6995264082587447 2 13.300102660906735 
		7 -20.660354157040238 15 2.6995264082587447;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA1393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 14.224852252343918 5 8.1545157104858088 
		7 -0.92271786811386303 11 -1.3470538794077112 15 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 0 5 8.8134484426881539 7 
		26.103081273769941 11 1.668231296542769 15 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3 41.375708657384521 5 69.113782398558982 
		7 71.256215190289254 11 25.644114793643624 15 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1396";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.0198472869727979;
createNode animCurveTA -n "animCurveTA1397";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -9.1335573833666519;
createNode animCurveTA -n "animCurveTA1398";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.2752136084709536;
createNode animCurveTA -n "animCurveTA1399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.8903601258661935 2 -11.870698402275927 
		7 4.5161105377100279 15 -1.8903601258661935;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA1400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.5597289571479038 2 3.2876698109148097 
		7 -3.0107125413181701 15 2.5597289571479038;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA1401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.0168110874036049 2 12.599124669144862 
		7 -20.967129394737931 15 2.0168110874036049;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA1402";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1403";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1404";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 33.429092416277157;
createNode animCurveTA -n "animCurveTA1405";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 8.2533422302317216;
createNode animCurveTA -n "animCurveTA1406";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 23.263402056531085;
createNode animCurveTA -n "animCurveTA1407";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 20.166277752815617;
createNode animCurveTA -n "animCurveTA1408";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1409";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1410";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 17.254116939558369;
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
	setAttr -s 102 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".top" 479;
	setAttr ".rght" 639;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
select -ne :defaultRenderQuality;
	setAttr ".eaa" 1;
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
connectAttr "lsa_breakSource.st" "clipLibrary1.st[0]";
connectAttr "lsa_breakSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL452.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL453.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL454.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL455.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL456.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA1292.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU89.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU90.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU91.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU92.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU93.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU94.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU95.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU96.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA1293.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1294.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1295.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL457.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL458.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL459.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL460.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL461.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL462.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1296.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1297.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1298.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL463.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL464.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL465.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1299.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1300.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1301.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1302.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1303.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1304.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1305.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1306.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1307.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA1308.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA1309.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA1310.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA1311.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA1312.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA1313.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL466.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL467.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL468.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL469.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL470.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL471.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL472.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL473.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL474.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1314.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1315.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1316.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1317.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1318.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1319.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1320.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1321.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1322.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1323.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1324.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1325.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1326.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1327.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1328.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1329.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1330.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1331.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1332.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1333.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1334.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1335.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1336.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA1337.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA1338.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA1339.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1340.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1341.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1342.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL475.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL476.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL477.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA1343.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA1344.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1345.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL478.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL479.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL480.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1346.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1347.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1348.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL481.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL482.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL483.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1349.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1350.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1351.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL484.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL485.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL486.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1352.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1353.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1354.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL487.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL488.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL489.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL490.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL491.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL492.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1355.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1356.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1357.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1358.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1359.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1360.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1361.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1362.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1363.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1364.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1365.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1366.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1367.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1368.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1369.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1370.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1371.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1372.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1373.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1374.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1375.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1376.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1377.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1378.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1379.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1380.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1381.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1382.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1383.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1384.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1385.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1386.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1387.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1388.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1389.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1390.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1391.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1392.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1393.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1394.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1395.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1396.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1397.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1398.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1399.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1400.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1401.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1402.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1403.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1404.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1405.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1406.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1407.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1408.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1409.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1410.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[4].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[5].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[5].olnk";
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
// End of lsa_break.ma
