//Maya ASCII 4.0 scene
//Name: hom_idle_chili.ma
//Last modified: Mon, Apr 07, 2003 04:10:45 PM
requires maya "4.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_idle_chiliSource";
	setAttr ".ihi" 0;
	setAttr ".du" 60;
	setAttr ".ci" no;
createNode animCurveTL -n "hom_Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTL -n "hom_Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 -0.051425456377630012 1 -0.024289847048490732 
		2 0.0065886057514022997 3 0.03559563756066212 4 0.057116983917901785 5 0.065538380361734386 
		6 0.055483780173426006 7 0.03372059910838917 8 0.01284976641645625 9 -0.0057892144090886987 
		10 -0.025703318843219733 11 -0.041561336088491566 12 -0.048032055347458899 
		13 -0.035853290169133516 14 -0.010145231265493668 15 0.01284976641645625 
		16 0.030208558520339057 17 0.047306247766813636 18 0.060347849824429048 19 
		0.065538380361734386 20 0.055483780173425964 21 0.033720599108389079 22 0.01284976641645625 
		23 -0.0057892144090885911 24 -0.025703318843219636 25 -0.041561336088491531 
		26 -0.048032055347458899 27 -0.035853290169133481 28 -0.010145231265493587 
		29 0.01284976641645625 30 0.030208558520339057 31 0.047306247766813636 32 
		0.060347849824429048 33 0.065538380361734386 34 0.055483780173426062 35 0.033720599108389253 
		36 0.01284976641645625 37 -0.0057892144090888088 38 -0.025703318843219837 
		39 -0.0415613360884916 40 -0.048032055347458899 41 -0.035853290169133571 
		42 -0.010145231265493763 43 0.01284976641645625 44 0.030208558520339285 45 
		0.047306247766813837 46 0.060347849824429124 47 0.065538380361734386 48 0.042988903655609596 
		49 -0.0042030832975482896 50 -0.045352915749914569 51 -0.074122548582423897 
		52 -0.10120577251678645 53 -0.12146567656634061 54 -0.12976534974442477 55 
		-0.12619752226591852 56 -0.11579774318710442 57 -0.10084332978342544 58 -0.083611599330324721 
		59 -0.066379869103245226 60 -0.051425456377630012;
createNode animCurveTL -n "hom_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 0.020123063915035523 2 0.04217027268167451 
		3 0.063255409003661875 4 0.0804922555847426 5 0.090994595128661621 6 0.095688506164432779 
		7 0.097938809533946805 8 0.0985173823989519 9 0.09734194688796903 10 0.094755988763806767 
		11 0.092170030639644462 12 0.090994595128661621 13 0.092944947383922061 14 
		0.096567030143691446 15 0.0985173823989519 16 0.09734194688796903 17 0.094755988763806767 
		18 0.092170030639644462 19 0.090994595128661621 20 0.092944947383922061 21 
		0.096567030143691446 22 0.0985173823989519 23 0.09734194688796903 24 0.094755988763806767 
		25 0.092170030639644462 26 0.090994595128661621 27 0.092944947383922061 28 
		0.096567030143691446 29 0.0985173823989519 30 0.09734194688796903 31 0.094755988763806767 
		32 0.092170030639644462 33 0.090994595128661621 34 0.092944947383922061 35 
		0.096567030143691446 36 0.0985173823989519 37 0.09734194688796903 38 0.094755988763806767 
		39 0.092170030639644462 40 0.090994595128661621 41 0.092944947383922061 42 
		0.096567030143691446 43 0.0985173823989519 44 0.09734194688796903 45 0.094755988763806767 
		46 0.092170030639644462 47 0.090994595128661621 48 0.092944947383922061 49 
		0.096567030143691446 50 0.0985173823989519 51 0.098165843790897572 52 0.096953047171616194 
		53 0.094641721348430088 54 0.090994595128661621 55 0.083309169940442157 56 
		0.070237899140782364 57 0.053576064738295258 58 0.035118948741593818 59 0.01666183315929106 
		60 0;
createNode animCurveTA -n "hom_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTU -n "animCurveTU21";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 54 1 60 0;
createNode animCurveTU -n "animCurveTU22";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 54 1 60 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 1;
createNode animCurveTU -n "hom_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 1;
createNode animCurveTA -n "hom_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTL -n "hom_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTL -n "hom_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTL -n "hom_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTL -n "animCurveTL91";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.26454016861507795 5 -0.19477615673106027 
		47 -0.19477615673106027 50 -0.28916823781437523 54 -0.28916823781437523 60 
		-0.26454016861507795;
	setAttr -s 6 ".kit[0:5]"  9 3 3 3 3 9;
	setAttr -s 6 ".kot[0:5]"  9 3 3 3 3 9;
createNode animCurveTL -n "animCurveTL92";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.13806192026723146 5 0.50110416025659343 
		8 0.23090255009351274 15 0.23090255009351274 19 0.48568289696500999 22 0.23090255009351274 
		29 0.23090255009351274 33 0.50303181816804143 36 0.23090255009351274 43 0.23090255009351274 
		47 0.48953821278790577 50 0.21927376491454176 54 0.21927376491454176 60 0.13806192026723146;
	setAttr -s 14 ".kit[0:13]"  9 3 3 3 3 3 3 
		3 3 3 3 3 3 9;
	setAttr -s 14 ".kot[0:13]"  9 3 3 3 3 3 3 
		3 3 3 3 3 3 9;
createNode animCurveTL -n "animCurveTL93";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.064904406754016042 5 0.16839005660759443 
		8 0.097236060941077979 15 0.097236060941077979 19 0.18357225555221215 22 
		0.097236060941077979 29 0.097236060941077979 33 0.17238537211933594 36 0.097236060941077979 
		43 0.097236060941077979 47 0.16519380419820121 50 -0.00078655983214336359 
		54 -0.00078655983214336359 60 -0.064904406754016042;
	setAttr -s 14 ".kit[0:13]"  9 3 3 3 3 3 3 
		3 3 3 3 3 3 9;
	setAttr -s 14 ".kot[0:13]"  9 3 3 3 3 3 3 
		3 3 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA231";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 42.689955229633419 8 32.252474429777031 
		15 32.252474429777031 19 42.689955229633419 22 32.252474429777031 29 32.252474429777031 
		33 42.689955229633419 36 32.252474429777031 43 32.252474429777031 47 42.689955229633419 
		50 23.675485160286172 54 23.675485160286172 60 0;
	setAttr -s 14 ".kit[0:13]"  9 3 3 3 3 3 3 
		3 3 3 3 3 3 9;
	setAttr -s 14 ".kot[0:13]"  9 3 3 3 3 3 3 
		3 3 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA232";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -25.948901905116401 5 0.14964634679424985 
		47 0.14964634679424985 50 -25.948901905116461 60 -25.948901905116401;
	setAttr -s 5 ".kit[0:4]"  9 1 1 3 9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 3 9;
	setAttr -s 5 ".kix[1:4]"  0.99756163358688354 0.99936336278915405 
		1 1;
	setAttr -s 5 ".kiy[1:4]"  0.069790966808795929 -0.035677358508110046 
		0 0;
	setAttr -s 5 ".kox[1:4]"  0.99756163358688354 0.99936336278915405 
		1 1;
	setAttr -s 5 ".koy[1:4]"  0.069790996611118317 -0.035677365958690643 
		0 0;
createNode animCurveTA -n "animCurveTA233";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 -1.2542767803227439 47 -1.2542767803227439 
		50 0 60 0;
	setAttr -s 5 ".kit[0:4]"  9 1 1 3 9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 3 9;
	setAttr -s 5 ".kix[1:4]"  0.99999946355819702 0.99999833106994629 
		1 1;
	setAttr -s 5 ".kiy[1:4]"  -0.0010248158359900117 0.0018144705099985003 
		0 0;
	setAttr -s 5 ".kox[1:4]"  0.99999946355819702 0.99999833106994629 
		1 1;
	setAttr -s 5 ".koy[1:4]"  -0.0010248161852359772 0.0018144706264138222 
		0 0;
createNode animCurveTL -n "animCurveTL94";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.21594587158542247 50 0.21594587158542247 
		54 0.071993504186517371 60 0.21594587158542247;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  9 3 3 9;
createNode animCurveTL -n "animCurveTL95";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.1380615615975922 5 0.22095914258029839 
		8 0.22095914258029839 12 0.43731584908888715 15 0.22095914258029839 22 0.22095914258029839 
		26 0.44164247879083163 29 0.22095914258029839 36 0.22095914258029839 40 0.46471783720120202 
		43 0.22095914258029839 50 0.22095914258029839 54 0.4358736391882389 60 0.1380615615975922;
	setAttr -s 14 ".kit[0:13]"  9 3 3 3 3 3 3 
		3 3 3 3 3 3 9;
	setAttr -s 14 ".kot[0:13]"  9 3 3 3 3 3 3 
		3 3 3 3 3 3 9;
createNode animCurveTL -n "animCurveTL96";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.00078430246903575811 5 0.091854884393698544 
		8 0.091854884393698544 12 0.11877997202341842 15 0.091854884393698544 22 
		0.091854884393698544 26 0.11700411746490766 29 0.091854884393698544 36 0.091854884393698544 
		40 0.11700411746490766 43 0.091854884393698544 50 0.091854884393698544 54 
		0.1211477781014328 60 0.00078430246903575811;
	setAttr -s 14 ".kit[0:13]"  9 3 3 3 3 3 3 
		3 3 3 3 3 3 9;
	setAttr -s 14 ".kot[0:13]"  9 3 3 3 3 3 3 
		3 3 3 3 3 3 9;
createNode animCurveTA -n "animCurveTA234";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 31.574261375147721 50 31.574261375147721 
		54 37.64319008145366 60 0;
	setAttr -s 5 ".kit[0:4]"  9 3 3 3 9;
	setAttr -s 5 ".kot[0:4]"  9 3 3 3 9;
createNode animCurveTA -n "animCurveTA235";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 50 0 54 -5.0020015518493297 
		60 0;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  9 3 3 9;
createNode animCurveTA -n "animCurveTA236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 50 0 54 8.1874029775012165 
		60 0;
	setAttr -s 4 ".kit[1:3]"  3 9 9;
	setAttr -s 4 ".kot[1:3]"  3 9 9;
createNode animCurveTA -n "hom_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTL -n "hom_Right_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTL -n "hom_Right_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTL -n "hom_Right_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 1;
createNode animCurveTL -n "hom_Left_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTL -n "hom_Left_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTL -n "hom_Left_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 1;
createNode animCurveTL -n "animCurveTL103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -0.076472881617957691 5 0.097459685452898945 
		8 0.019108409243238575 12 -0.071426681281748047 15 0.019108409243238575 19 
		0.097459685452898945 22 0.019108409243238575 26 -0.071426681281748047 29 
		0.019108409243238575 33 0.097459685452898945 36 0.019108409243238575 40 -0.071426681281748047 
		43 0.019108409243238575 47 0.097459685452898945 50 -0.067442632530162958 
		54 -0.19296922046247492 60 -0.076472881617957691;
	setAttr -s 17 ".kit[1:16]"  3 9 3 9 3 9 3 
		9 3 9 3 9 3 9 9 9;
	setAttr -s 17 ".kot[1:16]"  3 9 3 9 3 9 3 
		9 3 9 3 9 3 9 9 9;
createNode animCurveTL -n "animCurveTL104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.93105416142265018 5 1.0584844729386667 
		8 0.9887147668427424 12 1.0602020600497488 15 0.98662489075958448 19 1.0584844729386667 
		22 0.98819229782195306 26 1.0685615643823791 29 0.9887147668427424 33 1.0584844729386667 
		36 0.98766982880116372 40 1.0685615643823791 43 0.983490076634849 47 1.0584844729386667 
		50 0.9586594333063776 54 1.0352164243459796 60 0.93105416142265018;
	setAttr -s 17 ".kit[1:16]"  3 9 3 9 9 9 9 
		9 9 9 9 9 9 9 3 9;
	setAttr -s 17 ".kot[1:16]"  3 9 3 9 9 9 9 
		9 9 9 9 9 9 9 3 9;
createNode animCurveTL -n "animCurveTL105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 5 0.13531467470214067 8 0.14650153157966633 
		12 0.13531467470214067 15 0.14650153157966633 19 0.13531467470214067 22 0.14650153157966633 
		26 0.13531467470214067 29 0.14650153157966633 33 0.13531467470214067 36 0.14650153157966633 
		40 0.13531467470214067 43 0.14650153157966633 47 0.13531467470214067 50 0.14650153157966633 
		54 0.13531467470214067 60 0;
	setAttr -s 17 ".kit[1:16]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 9;
	setAttr -s 17 ".kot[1:16]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 9;
	setAttr -s 17 ".kix[1:16]"  0.036288253962993622 1 1 1 1 1 
		1 1 1 1 1 1 1 1 0.050946399569511414 0.014778750017285347;
	setAttr -s 17 ".kiy[1:16]"  0.99934136867523193 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.99870139360427856 -0.99989080429077148;
	setAttr -s 17 ".kox[1:16]"  0.036288291215896606 1 1 1 1 1 
		1 1 1 1 1 1 1 1 0.050946883857250214 0.014778750017285347;
	setAttr -s 17 ".koy[1:16]"  0.99934136867523193 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.99870139360427856 -0.99989080429077148;
createNode animCurveTA -n "animCurveTA243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -0.62843630316474508 5 0 8 0.039277269668704928 
		12 0 15 0.039277269668704928 19 0 22 0.039277269668704928 26 0 29 0.039277269668704928 
		33 0 36 0.039277269668704928 40 0 43 0.039277269668704928 47 0 50 0.039277269668704928 
		54 0 60 -0.62843630316474508;
	setAttr -s 17 ".kit[1:16]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 9;
	setAttr -s 17 ".kot[1:16]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 9;
	setAttr -s 17 ".kix[1:16]"  0.99986535310745239 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.9998968243598938 0.99849957227706909;
	setAttr -s 17 ".kiy[1:16]"  0.016410341486334801 0 0 0 0 0 
		0 0 0 0 0 0 0 0 -0.014363896101713181 -0.054759126156568527;
	setAttr -s 17 ".kox[1:16]"  0.99986535310745239 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.9998968243598938 0.99849957227706909;
	setAttr -s 17 ".koy[1:16]"  0.016410337761044502 0 0 0 0 0 
		0 0 0 0 0 0 0 0 -0.014363893307745457 -0.054759126156568527;
createNode animCurveTA -n "animCurveTA244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -5.8284402688137158 5 0 8 0.36427754239241439 
		12 0 15 0.36427754239241439 19 0 22 0.36427754239241439 26 0 29 0.36427754239241439 
		33 0 36 0.36427754239241439 40 0 43 0.36427754239241439 47 0 50 0.36427754239241439 
		54 0 60 -5.8284402688137158;
	setAttr -s 17 ".kit[1:16]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 9;
	setAttr -s 17 ".kot[1:16]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 9;
	setAttr -s 17 ".kix[1:16]"  0.9936751127243042 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.99264305830001831 0.89133012294769287;
	setAttr -s 17 ".kiy[1:16]"  0.11229337006807327 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.12107732146978378 -0.45335486531257629;
	setAttr -s 17 ".kox[1:16]"  0.9936751127243042 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.99264305830001831 0.89133012294769287;
	setAttr -s 17 ".koy[1:16]"  0.11229336261749268 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.12107730656862259 -0.45335486531257629;
createNode animCurveTA -n "animCurveTA245";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -1.2956360193097458 5 0.32793493916161071 
		8 -0.46932596324678522 12 -1.2271697978596448 15 -0.46932596324678522 19 
		0.32793493916161071 22 -0.46932596324678522 26 -1.2271697978596448 29 -0.46932596324678522 
		33 0.32793493916161071 36 -0.46932596324678522 40 -1.2271697978596448 43 
		-0.46932596324678522 47 0.32793493916161071 50 -0.46932596324678522 54 -1.2271697978596448 
		60 -1.2956360193097458;
	setAttr -s 17 ".kit[0:16]"  9 3 1 9 1 3 1 
		9 1 3 1 9 1 3 1 1 9;
	setAttr -s 17 ".kot[0:16]"  9 3 1 9 1 3 1 
		9 1 3 1 9 1 3 1 1 9;
	setAttr -s 17 ".kix[2:16]"  0.9839928150177002 1 0.9827839732170105 
		1 0.99090051651000977 1 0.98785585165023804 1 0.99314987659454346 1 0.98955225944519043 
		1 0.9882398247718811 0.99997270107269287 0.99998217821121216;
	setAttr -s 17 ".kiy[2:16]"  -0.17820809781551361 0 0.18475848436355591 
		0 -0.13459637761116028 0 0.15537300705909729 0 -0.11684742569923401 0 0.14417457580566406 
		0 -0.15291200578212738 -0.0073887137696146965 -0.0059746978804469109;
	setAttr -s 17 ".kox[2:16]"  0.9839928150177002 1 0.9827839732170105 
		1 0.99090051651000977 1 0.98785585165023804 1 0.99314987659454346 1 0.98955225944519043 
		1 0.9882398247718811 0.99997270107269287 0.99998217821121216;
	setAttr -s 17 ".koy[2:16]"  -0.17820805311203003 0 0.18475848436355591 
		0 -0.13459637761116028 0 0.15537300705909729 0 -0.11684741824865341 0 0.14417457580566406 
		0 -0.15291199088096619 -0.0073887133039534092 -0.0059746978804469109;
createNode animCurveTA -n "hom_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA268";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 0 8 -43.227537822822462 15 
		-43.227537822822462 19 0 22 -43.227537822822462 29 -43.227537822822462 33 
		0 36 -43.227537822822462 43 -43.227537822822462 47 0 50 -28.994970859782526 
		54 -28.994970859782526 60 0;
	setAttr -s 14 ".kit[0:13]"  9 3 3 3 3 3 3 
		3 3 3 3 3 3 9;
	setAttr -s 14 ".kot[0:13]"  9 3 3 3 3 3 3 
		3 3 3 3 3 3 9;
createNode animCurveTA -n "hom_L_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_L_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA271";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 5 -44.49853233158526 8 -44.883614802310746 
		12 0 15 -44.883614802310746 22 -44.883614802310746 26 0 29 -44.883614802310746 
		36 -44.883614802310746 40 0 43 -44.883614802310746 50 -44.883614802310746 
		54 0 60 0;
	setAttr -s 14 ".kit[0:13]"  9 3 3 3 3 3 3 
		3 3 3 3 3 3 9;
	setAttr -s 14 ".kot[0:13]"  9 3 3 3 3 3 3 
		3 3 3 3 3 3 9;
createNode animCurveTL -n "hom_Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 -0.43524234076486068;
createNode animCurveTL -n "hom_Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 -0.82665738350180629;
createNode animCurveTL -n "hom_Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0.27773886459742925;
createNode animCurveTA -n "hom_Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 28.652637602052774;
createNode animCurveTA -n "hom_Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 64.676908227303443;
createNode animCurveTL -n "hom_Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0.5198069948790518;
createNode animCurveTL -n "hom_Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 -0.72394202659893114;
createNode animCurveTL -n "hom_Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0.36439499068905612;
createNode animCurveTA -n "hom_Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 7.7976222737965299;
createNode animCurveTA -n "hom_Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 -30.409274105849079;
createNode animCurveTA -n "hom_Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 -64.859940280210878;
createNode animCurveTL -n "hom_Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 -0.98071836797454492;
createNode animCurveTL -n "hom_Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 1.6432964864655397;
createNode animCurveTL -n "hom_Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 -0.097994651149805143;
createNode animCurveTA -n "hom_Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 5.4739599453216474;
createNode animCurveTA -n "hom_Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 8.5874521608419823;
createNode animCurveTA -n "hom_Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 74.754744621954103;
createNode animCurveTL -n "hom_Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0.76309120872911718;
createNode animCurveTL -n "hom_Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 1.6150490657878991;
createNode animCurveTL -n "hom_Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0.14314299916678522;
createNode animCurveTA -n "hom_Left_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 16.226511010665405;
createNode animCurveTA -n "hom_Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 -8.513966085499284;
createNode animCurveTA -n "hom_Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 -68.213989601412422;
createNode animCurveTL -n "hom_Left_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTL -n "hom_Left_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTL -n "hom_Left_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 -1;
createNode animCurveTL -n "hom_Right_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 -0.10167917362943303;
createNode animCurveTL -n "hom_Right_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 -0.40762644910266188;
createNode animCurveTL -n "hom_Right_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 -0.93129112588482243;
createNode animCurveTA -n "animCurveTA284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 12.253734489678925 5 -82.769264533916242 
		8 -87.720468770526367 12 -82.769264533916242 15 -87.720468770526367 19 -82.769264533916242 
		22 -87.720468770526367 26 -82.769264533916242 29 -87.720468770526367 33 -82.769264533916242 
		36 -87.720468770526367 40 -82.769264533916242 43 -87.720468770526367 47 -82.769264533916242 
		50 -87.720468770526367 54 -82.769264533916242 60 12.253734489678925;
	setAttr -s 17 ".kit[1:16]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 9;
	setAttr -s 17 ".kot[1:16]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 9;
	setAttr -s 17 ".kix[1:16]"  0.6318286657333374 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.61055254936218262 0.11972607672214508;
	setAttr -s 17 ".kiy[1:16]"  -0.77510809898376465 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.79197573661804199 0.99280697107315063;
	setAttr -s 17 ".kox[1:16]"  0.6318284273147583 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.61055254936218262 0.11972607672214508;
	setAttr -s 17 ".koy[1:16]"  -0.77510827779769897 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.79197573661804199 0.99280697107315063;
createNode animCurveTA -n "animCurveTA285";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -65.746751280844961 5 -30.683964863105871 
		8 -28.492540693331719 12 -30.683964863105871 15 -28.492540693331719 19 -30.683964863105871 
		22 -28.492540693331719 26 -30.683964863105871 29 -28.492540693331719 33 -30.683964863105871 
		36 -28.492540693331719 40 -30.683964863105871 43 -28.492540693331719 47 -30.683964863105871 
		50 -28.492540693331719 54 -30.683964863105871 60 -65.746751280844961;
	setAttr -s 17 ".kit[1:16]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 9;
	setAttr -s 17 ".kot[1:16]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 9;
	setAttr -s 17 ".kix[1:16]"  0.7616654634475708 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.86004656553268433 0.31064879894256592;
	setAttr -s 17 ".kiy[1:16]"  0.64797043800354004 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.51021552085876465 -0.95052474737167358;
	setAttr -s 17 ".kox[1:16]"  0.7616654634475708 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.8600466251373291 0.31064879894256592;
	setAttr -s 17 ".koy[1:16]"  0.64797043800354004 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.5102154016494751 -0.95052474737167358;
createNode animCurveTA -n "animCurveTA286";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 3.871449260799477e-015 5 45.049278659012636 
		8 47.864858303397838 12 45.049278659012636 15 47.864858303397838 19 45.049278659012636 
		22 47.864858303397838 26 45.049278659012636 29 47.864858303397838 33 45.049278659012636 
		36 47.864858303397838 40 45.049278659012636 43 47.864858303397838 47 45.049278659012636 
		50 47.864858303397838 54 45.049278659012636 60 0;
	setAttr -s 17 ".kit[1:16]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 9;
	setAttr -s 17 ".kot[1:16]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 9;
	setAttr -s 17 ".kix[1:16]"  0.66381925344467163 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.69467592239379883 0.24651902914047241;
	setAttr -s 17 ".kiy[1:16]"  0.74789303541183472 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.71932286024093628 -0.96913796663284302;
	setAttr -s 17 ".kox[1:16]"  0.66381919384002686 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.6946759819984436 0.24651902914047241;
	setAttr -s 17 ".koy[1:16]"  0.74789309501647949 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.7193228006362915 -0.96913796663284302;
createNode animCurveTA -n "animCurveTA287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -0.061808866237337522 5 -89.8741149029197 
		8 -94.175953678011837 12 -89.8741149029197 15 -94.175953678011837 19 -89.8741149029197 
		22 -94.175953678011837 26 -89.8741149029197 29 -94.175953678011837 33 -89.8741149029197 
		36 -94.175953678011837 40 -89.8741149029197 43 -94.175953678011837 47 -89.8741149029197 
		50 -94.175953678011837 54 -89.8741149029197 60 -0.061808866237337522;
	setAttr -s 17 ".kit[1:16]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 9;
	setAttr -s 17 ".kot[1:16]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 9;
	setAttr -s 17 ".kix[1:16]"  0.4091770350933075 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.46318399906158447 0.12656402587890625;
	setAttr -s 17 ".kiy[1:16]"  -0.91245502233505249 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.88626211881637573 0.99195843935012817;
	setAttr -s 17 ".kox[1:16]"  0.40917724370956421 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.46318414807319641 0.12656402587890625;
	setAttr -s 17 ".koy[1:16]"  -0.91245490312576294 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.88626205921173096 0.99195843935012817;
createNode animCurveTA -n "animCurveTA288";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -59.058178941076754 5 -23.592214467650113 
		8 -21.375591695670067 12 -23.592214467650113 15 -21.375591695670067 19 -23.592214467650113 
		22 -21.375591695670067 26 -23.592214467650113 29 -21.375591695670067 33 -23.592214467650113 
		36 -21.375591695670067 40 -23.592214467650113 43 -21.375591695670067 47 -23.592214467650113 
		50 -21.375591695670067 54 -23.592214467650113 60 -59.058178941076754;
	setAttr -s 17 ".kit[1:16]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 9;
	setAttr -s 17 ".kot[1:16]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 9;
	setAttr -s 17 ".kix[1:16]"  0.64141201972961426 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.74541854858398438 0.30745288729667664;
	setAttr -s 17 ".kiy[1:16]"  0.76719659566879272 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.66659677028656006 -0.95156329870223999;
	setAttr -s 17 ".kox[1:16]"  0.64141207933425903 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.74541854858398438 0.30745288729667664;
	setAttr -s 17 ".koy[1:16]"  0.76719653606414795 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.66659677028656006 -0.95156329870223999;
createNode animCurveTA -n "animCurveTA289";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 16.579147429757843 5 53.183318612415121 
		8 55.471079447522996 12 53.183318612415121 15 55.471079447522996 19 53.183318612415121 
		22 55.471079447522996 26 53.183318612415121 29 55.471079447522996 33 53.183318612415121 
		36 55.471079447522996 40 53.183318612415121 43 55.471079447522996 47 53.183318612415121 
		50 55.471079447522996 54 53.183318612415121 60 16.579147429757843;
	setAttr -s 17 ".kit[1:16]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 9;
	setAttr -s 17 ".kot[1:16]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 9;
	setAttr -s 17 ".kix[1:16]"  0.61795753240585327 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.77589106559753418 0.29875838756561279;
	setAttr -s 17 ".kiy[1:16]"  0.78621149063110352 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.63086694478988647 -0.95432877540588379;
	setAttr -s 17 ".kox[1:16]"  0.61795759201049805 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.77589118480682373 0.29875838756561279;
	setAttr -s 17 ".koy[1:16]"  0.78621143102645874 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.63086670637130737 -0.95432877540588379;
createNode animCurveTA -n "animCurveTA290";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 8.5572674112203622 5 71.097557164514441 
		8 75.006325286128643 12 71.097557164514441 15 75.006325286128643 19 71.097557164514441 
		22 75.006325286128643 26 71.097557164514441 29 75.006325286128643 33 71.097557164514441 
		36 75.006325286128643 40 71.097557164514441 43 75.006325286128643 47 71.097557164514441 
		50 75.006325286128643 54 71.097557164514441 60 8.5572674112203622;
	setAttr -s 17 ".kit[1:16]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 9;
	setAttr -s 17 ".kot[1:16]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 9;
	setAttr -s 17 ".kix[1:16]"  0.39825072884559631 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.74854451417922974 0.18022799491882324;
	setAttr -s 17 ".kiy[1:16]"  0.91727662086486816 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.66308450698852539 -0.98362487554550171;
	setAttr -s 17 ".kox[1:16]"  0.39825072884559631 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.74854439496994019 0.18022799491882324;
	setAttr -s 17 ".koy[1:16]"  0.91727662086486816 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.66308468580245972 -0.98362487554550171;
createNode animCurveTA -n "animCurveTA291";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 15.711328223519057 5 69.953557252553381 
		8 73.343696709730835 12 69.953557252553381 15 73.343696709730835 19 69.953557252553381 
		22 73.343696709730835 26 69.953557252553381 29 73.343696709730835 33 69.953557252553381 
		36 73.343696709730835 40 69.953557252553381 43 73.343696709730835 47 69.953557252553381 
		50 73.343696709730835 54 69.953557252553381 60 15.711328223519057;
	setAttr -s 17 ".kit[1:16]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 9;
	setAttr -s 17 ".kot[1:16]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 9;
	setAttr -s 17 ".kix[1:16]"  0.74644219875335693 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.59022116661071777 0.20669683814048767;
	setAttr -s 17 ".kiy[1:16]"  0.66545027494430542 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.80724161863327026 -0.97840505838394165;
	setAttr -s 17 ".kox[1:16]"  0.74644231796264648 1 1 1 1 1 1 
		1 1 1 1 1 1 1 0.59022128582000732 0.20669683814048767;
	setAttr -s 17 ".koy[1:16]"  0.66545015573501587 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.80724149942398071 -0.97840505838394165;
createNode animCurveTA -n "animCurveTA292";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 5 69.491048589263826 8 85.986369325907688 
		12 66.253068154396999 15 80.949510871670441 19 67.33239496601928 22 85.986369325907688 
		26 64.45419013502655 29 83.467940098789072 33 68.771497381515644 36 82.748388891040904 
		40 65.533516946648831 43 86.346144929781815 47 68.771497381515644 50 82.388613287166805 
		54 69.491048589263826 60 0;
	setAttr -s 17 ".kit[0:16]"  9 9 3 3 3 3 3 
		3 3 3 3 3 3 3 3 9 9;
	setAttr -s 17 ".kot[0:16]"  9 9 3 3 3 3 3 
		3 3 3 3 3 3 3 3 9 9;
createNode animCurveTA -n "animCurveTA293";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 5 -98.732029042523536 8 -189.1154341442743 
		12 -29.672012757572766 15 -175.47628175437976 19 -27.85345910558685 22 -180.02266588434463 
		26 -12.395753063706421 29 -186.38760366629535 33 -36.946227365516506 36 -175.47628175437976 
		40 -37.855504191509461 43 -175.47628175437976 47 -29.67201275757278 50 -180.93194271033752 
		54 -98.732029042523536 60 0;
	setAttr -s 17 ".kit[2:16]"  3 9 3 9 3 9 3 
		9 3 9 9 9 3 9 9;
	setAttr -s 17 ".kot[2:16]"  3 9 3 9 3 9 3 
		9 3 9 9 9 3 9 9;
createNode animCurveTA -n "animCurveTA294";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 5 -87.76966728772959 8 -126.55449952752211 
		12 -76.603093800007031 15 -127.61798271682905 19 -84.047476125155399 22 -128.68146590613597 
		26 -79.261801773274328 29 -130.80843228474978 33 -77.666576989313938 36 -127.08624112217559 
		40 -82.452251341195023 43 -127.08624112217559 47 -76.071352205353591 50 -126.02275793286869 
		54 -87.76966728772959 60 0;
	setAttr -s 17 ".kit[14:16]"  3 9 9;
	setAttr -s 17 ".kot[14:16]"  3 9 9;
createNode animCurveTA -n "animCurveTA295";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 5 69.491048589263826 8 87.342446602048511 
		12 66.391443386656263 15 85.40519335041877 19 67.553795337634099 22 89.667150504004184 
		26 66.003992736330332 29 85.017742700092853 33 68.32869663828599 36 90.054601154330115 
		40 69.491048589263826 43 86.954995951722566 47 69.491048589263826 50 88.504798553026347 
		54 69.491048589263826 60 0 240 0;
	setAttr -s 18 ".kit[2:17]"  3 9 3 9 3 9 3 
		9 3 9 3 9 3 9 9 9;
	setAttr -s 18 ".kot[2:17]"  3 9 3 9 3 9 3 
		9 3 9 3 9 3 9 9 9;
createNode animCurveTA -n "animCurveTA296";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 5 -98.732029042523536 8 -164.18650607925454 
		12 -30.896667719573813 15 -162.30487680006698 19 -21.488521323636082 22 -175.47628175437976 
		26 -24.310965242417389 29 -168.8905792772234 33 -21.488521323636082 36 -184.88442815031746 
		40 -23.370150602823646 43 -175.47628175437976 47 -33.71911163835513 50 -160.42324752087941 
		54 -98.732029042523536 60 0 240 0;
	setAttr -s 18 ".kit[0:17]"  9 9 3 3 3 3 3 
		3 3 3 3 3 3 3 3 9 9 9;
	setAttr -s 18 ".kot[0:17]"  9 9 3 3 3 3 3 
		3 3 3 3 3 3 3 3 9 9 9;
createNode animCurveTA -n "animCurveTA297";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 5 -87.76966728772959 8 -131.12064914468101 
		12 -81.952217898919912 15 -124.0104332250247 19 -83.244984429766504 22 -126.59596628671791 
		26 -89.062433818576181 29 -123.3640499596014 33 -80.659451368073306 36 -128.5351160829878 
		40 -87.123284022306279 43 -127.24234955214121 47 -79.3666848372267 50 -125.94958302129459 
		54 -87.76966728772959 60 0 240 0;
	setAttr -s 18 ".kit[0:17]"  9 9 3 3 9 3 3 
		3 9 3 3 3 3 3 3 9 9 9;
	setAttr -s 18 ".kot[0:17]"  9 9 3 3 9 3 3 
		3 9 3 3 3 3 3 3 9 9 9;
createNode animCurveTA -n "hom_Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 10.423754966968488;
createNode animCurveTA -n "hom_Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 27.722848255843903;
createNode animCurveTA -n "hom_Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 21.576484776388227;
createNode animCurveTA -n "hom_Middle_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_Middle_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_Middle_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 27.080064458283051;
createNode animCurveTA -n "hom_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 13.994403295754109;
createNode animCurveTA -n "hom_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 13.994403295754109;
createNode animCurveTA -n "hom_Middle_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_Middle_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_Middle_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 27.911632519594587;
createNode animCurveTA -n "hom_Jaw_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_Jaw_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_Jaw_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -0.65073001024951671 5 -0.33162152832345382 
		8 0.051690285533302897 12 0.49893282729115934 15 0.051690285533302897 19 
		-0.33162152832345382 22 0.051690285533302897 26 0.49893282729115934 29 0.051690285533302897 
		33 -0.33162152832345382 36 0.051690285533302897 40 0.49893282729115934 43 
		0.051690285533302897 47 -0.33162152832345382 50 0.051690285533302897 54 0.49893282729115934 
		60 -0.65073001024951671;
createNode animCurveTA -n "animCurveTA320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -4.2368721935960929 5 -1.5445280558243131 
		8 0.31581046909495947 12 4.1457701087254524 15 0.31581046909495947 19 -3.1647204261679707 
		22 0.31581046909495947 26 4.1457701087254524 29 0.31581046909495947 33 -3.1647204261679707 
		36 0.31581046909495947 40 4.1457701087254524 43 0.31581046909495947 47 -3.1647204261679707 
		50 0.31581046909495947 54 4.1457701087254524 60 -4.2368721935960929;
	setAttr -s 17 ".kit[3:16]"  3 9 9 9 3 9 9 
		9 3 9 9 9 3 9;
	setAttr -s 17 ".kot[3:16]"  3 9 9 9 3 9 9 
		9 3 9 9 9 3 9;
createNode animCurveTA -n "animCurveTA321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 8.7398866450636881 5 16.266608920452114 
		8 15.723115520877869 12 16.27225490935248 15 15.723115520877869 19 16.266608920452114 
		22 15.723115520877869 26 16.27225490935248 29 15.723115520877869 33 16.266608920452114 
		36 15.723115520877869 40 16.27225490935248 43 15.723115520877869 47 16.266608920452114 
		50 15.723115520877869 54 16.27225490935248 60 8.7398866450636881;
	setAttr -s 17 ".kit[1:16]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 9;
	setAttr -s 17 ".kot[1:16]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 1 9;
	setAttr -s 17 ".kix[1:16]"  0.99089729785919189 0.99999994039535522 
		1 0.99999994039535522 1 0.99999994039535522 1 0.99999994039535522 1 0.99999994039535522 
		1 0.99999994039535522 1 0.99999994039535522 0.97804522514343262 0.83563637733459473;
	setAttr -s 17 ".kiy[1:16]"  -0.13462013006210327 0.00042231896077282727 
		0 -0.00042231896077282727 0 0.00042231896077282727 0 -0.00042231896077282727 
		0 0.00042231896077282727 0 -0.00042231896077282727 0 0.00042231896077282727 
		0.2083926796913147 -0.54928308725357056;
	setAttr -s 17 ".kox[1:16]"  0.99089729785919189 0.99999994039535522 
		1 0.99999994039535522 1 0.99999994039535522 1 0.99999994039535522 1 0.99999994039535522 
		1 0.99999994039535522 1 0.99999994039535522 0.97804522514343262 0.83563637733459473;
	setAttr -s 17 ".koy[1:16]"  -0.13462008535861969 0.00042231896077282727 
		0 -0.00042231896077282727 0 0.00042231896077282727 0 -0.00042231896077282727 
		0 0.00042231896077282727 0 -0.00042231896077282727 0 0.00042231896077282727 
		0.2083926796913147 -0.54928308725357056;
createNode animCurveTA -n "hom_Neck_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "animCurveTA323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 5 6.1470843502965984 8 0.98949989595682475 
		12 -11.662368681136662 15 0.98949989595682475 19 6.1470843502965984 22 0.98949989595682475 
		26 -11.662368681136662 29 0.98949989595682475 33 6.1470843502965984 36 0.98949989595682475 
		40 -11.662368681136662 43 0.98949989595682475 47 6.1470843502965984 50 0.98949989595682475 
		54 -11.662368681136662 60 0;
createNode animCurveTA -n "hom_Neck_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 -0.060360780112516395;
createNode animCurveTA -n "hom_Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 -0.14600677092509132;
createNode animCurveTA -n "hom_Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 -0.093455178854166723;
createNode animCurveTA -n "animCurveTA328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -1.8903601258661931 5 0.3916117191960346 
		8 0.20500040392456909 12 -0.36092440037496276 15 0.20500040392456909 19 0.3916117191960346 
		22 0.20500040392456909 26 -0.36092440037496276 29 0.20500040392456909 33 
		0.3916117191960346 36 0.20500040392456909 40 -0.36092440037496276 43 0.20500040392456909 
		47 0.3916117191960346 50 0.20500040392456909 54 -0.36092440037496276 60 -1.8903601258661931;
	setAttr -s 17 ".kit[1:16]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 17 ".kot[1:16]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9;
	setAttr -s 17 ".kix[1:16]"  0.99898040294647217 0.99841952323913574 
		1 0.99841952323913574 1 0.99841952323913574 1 0.99841952323913574 1 0.99841952323913574 
		1 0.99841952323913574 1 0.99841952323913574 0.99403536319732666 0.99121034145355225;
	setAttr -s 17 ".kiy[1:16]"  0.045145284384489059 -0.056200604885816574 
		0 0.056200604885816574 0 -0.056200604885816574 0 0.056200604885816574 0 -0.056200604885816574 
		0 0.056200604885816574 0 -0.056200604885816574 -0.10905842483043671 -0.13229529559612274;
	setAttr -s 17 ".kox[1:16]"  0.99898046255111694 0.99841952323913574 
		1 0.99841952323913574 1 0.99841952323913574 1 0.99841952323913574 1 0.99841952323913574 
		1 0.99841952323913574 1 0.99841952323913574 0.99403536319732666 0.99121034145355225;
	setAttr -s 17 ".koy[1:16]"  0.045145262032747269 -0.056200604885816574 
		0 0.056200604885816574 0 -0.056200604885816574 0 0.056200604885816574 0 -0.056200604885816574 
		0 0.056200604885816574 0 -0.056200604885816574 -0.10905842483043671 -0.13229529559612274;
createNode animCurveTA -n "animCurveTA329";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 2.5597289571479034 5 -4.8224374815354665 
		8 -0.75995699097612845 12 7.2942390275371221 15 -0.75995699097612845 19 -4.8224374815354665 
		22 -0.75995699097612845 26 7.2942390275371221 29 -0.75995699097612845 33 
		-4.8224374815354665 36 -0.75995699097612845 40 7.2942390275371221 43 -0.75995699097612845 
		47 -4.8224374815354665 50 -0.75995699097612845 54 7.5600602890669428 60 2.5597289571479034;
	setAttr -s 17 ".kit[1:16]"  3 9 9 9 3 9 9 
		9 3 9 9 9 3 9 3 9;
	setAttr -s 17 ".kot[1:16]"  3 9 9 9 3 9 9 
		9 3 9 9 9 3 9 3 9;
createNode animCurveTA -n "animCurveTA330";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 2.016811087403604 5 7.1892683816936982 
		8 7.0632486574268185 12 7.1906604043284528 15 7.0632486574268185 19 7.1892683816936982 
		22 7.0632486574268185 26 7.1906604043284528 29 7.0632486574268185 33 7.1892683816936982 
		36 7.0632486574268185 40 7.1906604043284528 43 7.0632486574268185 47 7.1892683816936982 
		50 7.0632486574268185 54 7.1906604043284528 60 2.016811087403604;
	setAttr -s 17 ".kit[0:16]"  9 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 9;
	setAttr -s 17 ".kot[0:16]"  9 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 9;
createNode animCurveTA -n "hom_Middle_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_Middle_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_Middle_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 33.429092416277157;
createNode animCurveTA -n "hom_Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 8.2533422302317216;
createNode animCurveTA -n "hom_Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 23.263402056531085;
createNode animCurveTA -n "hom_Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 20.166277752815617;
createNode animCurveTA -n "hom_Middle_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_Middle_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 0;
createNode animCurveTA -n "hom_Middle_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  45 17.254116939558369;
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
	setAttr ".o" 45;
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
connectAttr "hom_idle_chiliSource.st" "clipLibrary1.st[0]";
connectAttr "hom_idle_chiliSource.du" "clipLibrary1.du[0]";
connectAttr "hom_Extra_Attributes_translateX.a" "clipLibrary1.cel[0].cev[0].cevr"
		;
connectAttr "hom_Extra_Attributes_translateY.a" "clipLibrary1.cel[0].cev[1].cevr"
		;
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "hom_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "hom_Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr"
		;
connectAttr "hom_Hoop_Root_IK_FK_RFoot.a" "clipLibrary1.cel[0].cev[6].cevr"
		;
connectAttr "hom_Hoop_Root_IK_FK_LFoot.a" "clipLibrary1.cel[0].cev[7].cevr"
		;
connectAttr "hom_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary1.cel[0].cev[8].cevr"
		;
connectAttr "hom_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary1.cel[0].cev[9].cevr"
		;
connectAttr "animCurveTU21.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU22.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "hom_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "hom_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "hom_Hoop_Root_rotateX.a" "clipLibrary1.cel[0].cev[14].cevr"
		;
connectAttr "hom_Hoop_Root_rotateY.a" "clipLibrary1.cel[0].cev[15].cevr"
		;
connectAttr "hom_Hoop_Root_rotateZ.a" "clipLibrary1.cel[0].cev[16].cevr"
		;
connectAttr "hom_Hoop_Root_translateX.a" "clipLibrary1.cel[0].cev[17].cevr"
		;
connectAttr "hom_Hoop_Root_translateY.a" "clipLibrary1.cel[0].cev[18].cevr"
		;
connectAttr "hom_Hoop_Root_translateZ.a" "clipLibrary1.cel[0].cev[19].cevr"
		;
connectAttr "animCurveTL91.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL92.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL93.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA231.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA232.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA233.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL94.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL95.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL96.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA234.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA235.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA236.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "hom_Right_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[32].cevr"
		;
connectAttr "hom_Right_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[33].cevr"
		;
connectAttr "hom_Right_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[34].cevr"
		;
connectAttr "hom_Left_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[35].cevr"
		;
connectAttr "hom_Left_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[36].cevr"
		;
connectAttr "hom_Left_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[37].cevr"
		;
connectAttr "hom_Right_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[38].cevr"
		;
connectAttr "hom_Right_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[39].cevr"
		;
connectAttr "hom_Right_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[40].cevr"
		;
connectAttr "hom_Left_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[41].cevr"
		;
connectAttr "hom_Left_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[42].cevr"
		;
connectAttr "hom_Left_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[43].cevr"
		;
connectAttr "animCurveTL103.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL104.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL105.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA243.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA244.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA245.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "hom_R_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "hom_R_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "hom_R_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "hom_R_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[53].cevr"
		;
connectAttr "hom_R_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[54].cevr"
		;
connectAttr "hom_R_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[55].cevr"
		;
connectAttr "hom_R_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[56].cevr"
		;
connectAttr "hom_R_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[57].cevr"
		;
connectAttr "hom_R_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[58].cevr"
		;
connectAttr "hom_R_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[59].cevr"
		;
connectAttr "hom_L_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "hom_L_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "hom_L_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "hom_L_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[63].cevr"
		;
connectAttr "hom_L_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[64].cevr"
		;
connectAttr "hom_L_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[65].cevr"
		;
connectAttr "hom_L_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[66].cevr"
		;
connectAttr "hom_L_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[67].cevr"
		;
connectAttr "hom_L_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[68].cevr"
		;
connectAttr "hom_L_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[69].cevr"
		;
connectAttr "hom_R_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[70].cevr"
		;
connectAttr "hom_R_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[71].cevr"
		;
connectAttr "animCurveTA268.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "hom_L_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[73].cevr"
		;
connectAttr "hom_L_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[74].cevr"
		;
connectAttr "animCurveTA271.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "hom_Right_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[76].cevr"
		;
connectAttr "hom_Right_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[77].cevr"
		;
connectAttr "hom_Right_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[78].cevr"
		;
connectAttr "hom_Right_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[79].cevr"
		;
connectAttr "hom_Right_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[80].cevr"
		;
connectAttr "hom_Right_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[81].cevr"
		;
connectAttr "hom_Left_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "hom_Left_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "hom_Left_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "hom_Left_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "hom_Left_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "hom_Left_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "hom_Right_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "hom_Right_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "hom_Right_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "hom_Right_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "hom_Right_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "hom_Right_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[93].cevr"
		;
connectAttr "hom_Left_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[94].cevr"
		;
connectAttr "hom_Left_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[95].cevr"
		;
connectAttr "hom_Left_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[96].cevr"
		;
connectAttr "hom_Left_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[97].cevr"
		;
connectAttr "hom_Left_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[98].cevr"
		;
connectAttr "hom_Left_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[99].cevr"
		;
connectAttr "hom_Left_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[100].cevr"
		;
connectAttr "hom_Left_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[101].cevr"
		;
connectAttr "hom_Left_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[102].cevr"
		;
connectAttr "hom_Right_Elbow_Hoop_translateX.a" "clipLibrary1.cel[0].cev[103].cevr"
		;
connectAttr "hom_Right_Elbow_Hoop_translateY.a" "clipLibrary1.cel[0].cev[104].cevr"
		;
connectAttr "hom_Right_Elbow_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[105].cevr"
		;
connectAttr "animCurveTA284.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA285.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA286.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA287.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA288.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA289.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA290.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA291.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA292.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA293.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA294.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA295.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA296.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA297.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "hom_Thumb_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[120].cevr"
		;
connectAttr "hom_Thumb_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[121].cevr"
		;
connectAttr "hom_Thumb_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[122].cevr"
		;
connectAttr "hom_Middle_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[123].cevr"
		;
connectAttr "hom_Middle_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[124].cevr"
		;
connectAttr "hom_Middle_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[125].cevr"
		;
connectAttr "hom_Pelvis_rotateX.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "hom_Pelvis_rotateY.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "hom_Pelvis_rotateZ.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "hom_Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "hom_Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "hom_Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "hom_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "hom_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "hom_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "hom_Middle_R_rotateX.a" "clipLibrary1.cel[0].cev[135].cevr"
		;
connectAttr "hom_Middle_R_rotateY.a" "clipLibrary1.cel[0].cev[136].cevr"
		;
connectAttr "hom_Middle_R_rotateZ.a" "clipLibrary1.cel[0].cev[137].cevr"
		;
connectAttr "hom_Jaw_rotateX.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "hom_Jaw_rotateY.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "hom_Jaw_rotateZ.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA319.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA320.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA321.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "hom_Neck_rotateX.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA323.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "hom_Neck_rotateZ.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "hom_Head_rotateX.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "hom_Head_rotateY.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "hom_Head_rotateZ.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA328.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA329.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA330.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "hom_Middle_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[153].cevr"
		;
connectAttr "hom_Middle_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[154].cevr"
		;
connectAttr "hom_Middle_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[155].cevr"
		;
connectAttr "hom_Thumb_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[156].cevr"
		;
connectAttr "hom_Thumb_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[157].cevr"
		;
connectAttr "hom_Thumb_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[158].cevr"
		;
connectAttr "hom_Middle_L_rotateX.a" "clipLibrary1.cel[0].cev[159].cevr"
		;
connectAttr "hom_Middle_L_rotateY.a" "clipLibrary1.cel[0].cev[160].cevr"
		;
connectAttr "hom_Middle_L_rotateZ.a" "clipLibrary1.cel[0].cev[161].cevr"
		;
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[2].olnk";
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
// End of hom_idle_chili.ma
