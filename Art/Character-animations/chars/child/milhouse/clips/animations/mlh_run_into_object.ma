//Maya ASCII 4.0 scene
//Name: mlh_run_into_object.ma
//Last modified: Tue, Jun 25, 2002 01:44:59 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.7";
requires "p3dDeformer" "17.1.0.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mlh_run_into_objectSource";
	setAttr ".ihi" 0;
	setAttr ".du" 25;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL426";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL427";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -0.016145200947834018 1 -0.01791550866375733 
		2 -0.021385311799089656 3 -0.023792930335174548 4 -0.024404748722529665 5 
		-0.024481226020949053 6 -0.024251794125690881 7 -0.023945884932013325 8 -0.023792930335174548 
		9 -0.023792930335174548 10 -0.023792930335174548 11 -0.023792930335174548 
		12 -0.023792930335174548 13 -0.023632761468353108 14 -0.023312423734710232 
		15 -0.023072170434478068 16 -0.023152254867888789 17 -0.023792930335174548 
		18 -0.025237107534998922 19 -0.027393805683751982 20 -0.0300024408582556 
		21 -0.03280242913533167 22 -0.03509567279238554 23 -0.036489393161929173 
		24 -0.037180918209169946 25 -0.037367575899315227;
createNode animCurveTL -n "animCurveTL429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0.35618776700137117 1 0.44512648830493662 
		2 0.62167777484543574 3 0.75044431056757288 4 0.79827177282833828 5 0.82558371983400758 
		6 0.83734965680321327 7 0.83853908895458784 8 0.83412152150676333 9 0.818422763347467 
		10 0.78667620702255148 11 0.74521273323783799 12 0.70036322269914775 13 0.65157454064797427 
		14 0.59667058624967362 15 0.53954779109586204 16 0.48410258677815515 17 0.43423140488816908 
		18 0.39245696201266939 19 0.35645688031300021 20 0.32285994974264492 21 0.28829496025508716 
		22 0.26010000484731877 23 0.24509575821395169 24 0.23913471451591597 25 0.23806936791414182;
createNode animCurveTA -n "animCurveTA1181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0;
createNode animCurveTU -n "animCurveTU81";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kit[0:1]"  3 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU82";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kit[0:1]"  3 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU83";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kit[0:1]"  3 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU84";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kit[0:1]"  3 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU85";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 11 1 12 1 24 1 25 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 3 1;
	setAttr -s 5 ".kot[0:4]"  1 9 9 3 5;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 0;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTU -n "animCurveTU86";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 11 1 12 0 25 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 3 3 5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTU -n "animCurveTU87";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 0 25 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 3 5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 0;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "animCurveTU88";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 11 0 12 1 25 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 3 3 5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1182";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[0:3]"  3 1 1 1;
	setAttr -s 4 ".kot[1:3]"  5 1 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 0 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1183";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[0:3]"  3 1 1 1;
	setAttr -s 4 ".kot[1:3]"  5 1 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 0 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1184";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[0:3]"  3 1 1 1;
	setAttr -s 4 ".kot[1:3]"  5 1 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 0 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL431";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[0:3]"  3 1 1 1;
	setAttr -s 4 ".kot[1:3]"  5 1 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 0 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL432";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[0:3]"  3 1 1 1;
	setAttr -s 4 ".kot[1:3]"  5 1 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 0 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL433";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 0;
	setAttr -s 4 ".kit[0:3]"  3 1 1 1;
	setAttr -s 4 ".kot[1:3]"  5 1 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 0 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL434";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.19763288944005308 3 -0.19763288944005308 
		6 -0.19763288944005308 8 -0.19763288944005308 10 -0.19763288944005308 12 
		-0.19763288944005308 15 -0.19763288944005308 17 -0.20394489686739534 19 -0.21215675690025479 
		21 -0.21665362935167334 25 -0.21764441145149604;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 1 9 3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 1 9 3;
	setAttr -s 11 ".kix[8:10]"  0.13114763796329498 0.34242179989814758 
		1;
	setAttr -s 11 ".kiy[8:10]"  -0.99136286973953247 -0.93954634666442871 
		0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 0.25529718399047852 
		0.091418497264385223 0.13114596903324127 0.34242179989814758 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 -0.96686261892318726 
		-0.99581253528594971 -0.9913630485534668 -0.93954634666442871 0;
createNode animCurveTL -n "animCurveTL435";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.18919812301601746 3 0.14552605892239473 
		6 0.14552605892239473 8 0.1730601152643288 10 0.1179920025804608 12 0.15653968145916874 
		15 0.28319634063206595 17 0.26667590682690551 19 0.15222006737001662 21 0.15222006737001662 
		25 0.1521050350093231;
	setAttr -s 11 ".kit[0:10]"  3 9 3 9 9 9 9 
		9 3 3 3;
	setAttr -s 11 ".kot[0:10]"  1 9 3 9 9 9 9 
		9 3 3 3;
	setAttr -s 11 ".kox[0:10]"  1 0.045747917145490646 1 0.048368196934461594 
		0.080446548759937286 0.010088003240525723 0.015131042338907719 0.010179433040320873 
		1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 -0.99895304441452026 0 -0.99882960319519043 
		-0.99675893783569336 0.99994909763336182 0.99988549947738647 -0.99994820356369019 
		0 0 0;
createNode animCurveTL -n "animCurveTL436";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.99077043779297014 3 1.1961929756633671 
		6 1.1961929756633671 8 1.8184626489910816 10 1.9341056856272059 12 1.8404898940646288 
		15 1.1851793531265946 17 0.47095520171281613 19 0.42690071156572085 21 0.42690071156572085 
		25 0.42230543095166762;
	setAttr -s 11 ".kit[0:10]"  3 9 3 9 9 9 9 
		1 3 9 9;
	setAttr -s 11 ".kot[0:10]"  1 9 3 9 9 9 9 
		1 3 9 9;
	setAttr -s 11 ".kix[7:10]"  0.0028174612671136856 1 0.39907041192054749 
		0.27865976095199585;
	setAttr -s 11 ".kiy[7:10]"  -0.99999600648880005 0 -0.91692030429840088 
		-0.96038991212844849;
	setAttr -s 11 ".kox[0:10]"  1 0.0097355684265494347 1 0.0018068955978378654 
		0.060420509427785873 0.0022254025097936392 0.0012169574620202184 0.0028174591716378927 
		1 0.39907041192054749 0.27865976095199585;
	setAttr -s 11 ".koy[0:10]"  0 0.99995261430740356 0 0.99999839067459106 
		0.99817299842834473 -0.99999749660491943 -0.9999992847442627 -0.99999600648880005 
		0 -0.91692030429840088 -0.96038991212844849;
createNode animCurveTA -n "animCurveTA1185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -31.548014841396498 3 0.46104444544296308 
		6 0.46104444544296308 8 7.7551081793330283 10 -0.58279095637978728 12 -41.889616153138562 
		15 15.034008524188943 17 34.646432388829645 19 0 21 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 3 3 9 9 9 9 
		9 3 3 1;
	setAttr -s 11 ".kot[0:10]"  1 3 3 9 9 9 9 
		9 3 3 5;
	setAttr -s 11 ".kix[10]"  0.99443626403808594;
	setAttr -s 11 ".kiy[10]"  -0.10534016788005829;
	setAttr -s 11 ".kox[0:10]"  1 1 1 0.99079376459121704 0.15209193527698517 
		0.52167659997940063 0.12380865216255188 0.45301231741905212 1 1 0;
	setAttr -s 11 ".koy[0:10]"  0 0 0 -0.13537982106208801 -0.98836636543273926 
		0.85314333438873291 0.99230611324310303 -0.89150428771972656 0 0 0;
createNode animCurveTA -n "animCurveTA1186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 18.587332873603795 3 18.587332873603795 
		6 18.587332873603795 8 18.587332873603795 10 18.587332873603795 12 18.587332873603795 
		15 18.587332873603795 17 18.587332873603795 19 -3.6869279317052679 21 -17.37040169464111 
		25 -25.948901905116404;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 0.32442113757133484 
		0.20781758427619934 0.45766827464103699 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 -0.94591277837753296 
		-0.97816759347915649 -0.88912302255630493 0;
createNode animCurveTA -n "animCurveTA1187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -9.3021556723038969 3 -9.3021556723038969 
		6 -9.3021556723038969 8 -9.3021556723038969 10 -9.3021556723038969 12 -9.3021556723038969 
		15 -9.3021556723038969 17 -8.4234095336953185 19 -6.6031496751489787 21 -4.0296788406524229 
		25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 0.9957926869392395 
		0.94288438558578491 0.86685460805892944 0.86644411087036133 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0.09163491427898407 
		0.33312016725540161 0.49856105446815491 0.49927410483360291 0;
createNode animCurveTL -n "animCurveTL437";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.19697756422115981 3 0.19697756422115981 
		6 0.19697756422115981 8 0.19697756422115981 10 0.19697756422115981 12 0.19697756422115981 
		15 0.19697756422115981 17 0.19169558073676446 19 0.17803039985953364 21 0.16056570971109144 
		25 0.1393832443869546;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 0.30091330409049988 
		0.070197530090808868 0.042792081832885742 0.051681093871593475 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 -0.95365148782730103 
		-0.99753308296203613 -0.9990839958190918 -0.99866366386413574 0;
createNode animCurveTL -n "animCurveTL438";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.49095526767731257 3 0.29214779491922199 
		6 0.13800000000000001 8 0.13800000000000001 10 0.25360011604051408 12 0.19302519208825888 
		15 0.13800000000000001 17 0.13800000000000001 19 0.21505243716180653 21 0.15300417129802341 
		25 0.1521046763396838;
	setAttr -s 11 ".kit[1:10]"  9 3 3 9 9 3 3 
		9 3 3;
	setAttr -s 11 ".kot[0:10]"  1 9 3 3 9 9 3 
		3 9 3 3;
	setAttr -s 11 ".kox[0:10]"  1 0.0056663495488464832 1 1 0.024224214255809784 
		0.014416019432246685 1 1 0.08851536363363266 1 1;
	setAttr -s 11 ".koy[0:10]"  0 -0.99998396635055542 0 0 0.99970656633377075 
		-0.99989610910415649 0 0 0.99607479572296143 0 0;
createNode animCurveTL -n "animCurveTL439";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.092819338422239051 3 1.2445014095487996 
		6 2.0209617983913453 8 2.0209617983913453 10 1.6189645757991042 12 1.2885558996958926 
		15 1.1322779502939688 17 1.1322779502939688 19 0.87003824329849266 21 0.47541873433160847 
		25 0.48799414017471932;
	setAttr -s 11 ".kit[1:10]"  9 3 3 9 9 3 3 
		1 3 3;
	setAttr -s 11 ".kot[0:10]"  1 9 3 3 9 9 3 
		3 1 3 3;
	setAttr -s 11 ".kix[8:10]"  0.0013807605719193816 1 1;
	setAttr -s 11 ".kiy[8:10]"  -0.99999904632568359 0 0;
	setAttr -s 11 ".kox[0:10]"  1 0.0010372671531513333 1 1 0.001820481033064425 
		0.0034244968555867672 1 1 0.0013807645300403237 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0.99999946355819702 0 0 -0.99999833106994629 
		-0.99999415874481201 0 0 -0.99999904632568359 0 0;
createNode animCurveTA -n "animCurveTA1188";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 72.51831712904297 3 66.596702656887672 
		6 3.1599555742657675 8 3.1599555742657675 10 36.25972385798908 12 45.393511271088919 
		15 -0.52437167089126113 17 -0.52437167089126113 19 -19.066508418398907 21 
		-0.47275281820892018 25 0;
	setAttr -s 11 ".kit[1:10]"  9 3 3 9 9 3 3 
		9 3 1;
	setAttr -s 11 ".kot[0:10]"  1 9 3 3 9 9 3 
		3 9 3 5;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
	setAttr -s 11 ".kox[0:10]"  1 0.16300685703754425 1 1 0.1779969334602356 
		0.25127476453781128 1 1 0.99997717142105103 1 0;
	setAttr -s 11 ".koy[0:10]"  0 -0.98662495613098145 0 0 0.98403102159500122 
		-0.96791577339172363 0 0 0.0067567378282546997 0 0;
createNode animCurveTA -n "animCurveTA1189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 15 0 
		17 0 19 0 21 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 0;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 15 0 
		17 0 19 0 21 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 0;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1191";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1192";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1193";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1194";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1195";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1196";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1197";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 24 0 25 0;
	setAttr -s 4 ".kit[0:3]"  3 1 1 1;
	setAttr -s 4 ".kot[1:3]"  5 9 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 0 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1198";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 24 0 25 0;
	setAttr -s 4 ".kit[0:3]"  3 1 1 1;
	setAttr -s 4 ".kot[1:3]"  5 9 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 0 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1199";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 24 0 25 0;
	setAttr -s 4 ".kit[0:3]"  3 1 1 1;
	setAttr -s 4 ".kot[1:3]"  5 9 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 0 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1200";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 24 0 25 0;
	setAttr -s 4 ".kit[0:3]"  3 1 1 1;
	setAttr -s 4 ".kot[1:3]"  5 9 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 0 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1201";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 24 0 25 0;
	setAttr -s 4 ".kit[0:3]"  3 1 1 1;
	setAttr -s 4 ".kot[1:3]"  5 9 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 0 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1202";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 24 0 25 0;
	setAttr -s 4 ".kit[0:3]"  3 1 1 1;
	setAttr -s 4 ".kot[1:3]"  5 9 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 0 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL440";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.38111313624121829 3 -0.50297720131863477 
		6 -0.29136955967996292 8 -0.26908889351490567 10 0 12 0 15 -0.33954846911579156 
		17 -0.50361155183900197 19 -0.43021727334645249 21 -0.35560414503462617 25 
		0;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  0.0045397649519145489;
	setAttr -s 11 ".kiy[10]"  0.99998968839645386;
	setAttr -s 11 ".kox[0:10]"  0.0082055889070034027 0.022280186414718628 
		0.0071257269009947777 0.004576041828840971 0.0049549313262104988 0.0049084201455116272 
		0.0033094107639044523 0.014703946188092232 0.0090081924572587013 0.004648763220757246 
		0;
	setAttr -s 11 ".koy[0:10]"  -0.9999663233757019 0.9997517466545105 
		0.99997460842132568 0.99998950958251953 0.99998772144317627 -0.99998795986175537 
		-0.99999451637268066 -0.99989187717437744 0.99995940923690796 0.99998921155929565 
		0;
createNode animCurveTL -n "animCurveTL441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.012561822354600946 3 0 6 -1.4573362559424926e-016 
		8 6.4522317234688427e-017 10 0 12 0 15 -6.2172489379008772e-017 17 -1.9820079751521437e-016 
		19 -1.7763568394002496e-017 21 -5.5900390703249465e-017 25 0;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
	setAttr -s 11 ".kox[0:10]"  0.079355239868164063 0.15723222494125366 
		1 1 1 1 1 1 1 1 0;
	setAttr -s 11 ".koy[0:10]"  -0.99684637784957886 -0.98756164312362671 
		0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.98780004389601173 3 1.0000000000000002 
		6 1 8 1.0000000000000002 10 1 12 1 15 1 17 0.99999999999999978 19 1 21 1 
		25 1;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
	setAttr -s 11 ".kox[0:10]"  0.081693530082702637 0.16177558898925781 
		1 1 1 1 1 1 1 1 0;
	setAttr -s 11 ".koy[0:10]"  0.99665749073028564 0.986827552318573 
		0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 15 0 
		17 0 19 0 21 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 0;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 8 0 10 0 12 0 15 0 
		17 0 19 0 21 0 25 0;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 0;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 3 1 6 1 8 1 10 1 12 1 15 1 
		17 1 19 1 21 1 25 1;
	setAttr -s 11 ".kit[0:10]"  3 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  1;
	setAttr -s 11 ".kiy[10]"  0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 0;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.033041213165890024 3 -0.048692319506319935 
		8 -0.048692319506319935 12 -0.048692319506319935 17 -0.048692319506319935 
		21 -0.067130291962386401 25 -0.076472881617957691;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 1 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 1 5;
	setAttr -s 7 ".kix[5:6]"  0.057891640812158585 1;
	setAttr -s 7 ".kiy[5:6]"  -0.99832284450531006 0;
	setAttr -s 7 ".kox[0:6]"  1 0.16796146333217621 1 1 0.16059578955173492 
		0.057892099022865295 0;
	setAttr -s 7 ".koy[0:6]"  0 -0.9857935905456543 0 0 -0.98702025413513184 
		-0.99832284450531006 0;
createNode animCurveTL -n "animCurveTL447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.86191433053168653 3 0.66484072301048547 
		8 0.84402298820174126 12 0.77055978282362581 17 0.86605023327528874 21 0.93480438293157264 
		25 0.96474337111153452;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 1 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 1 5;
	setAttr -s 7 ".kix[5:6]"  0.024099605157971382 0.3777787983417511;
	setAttr -s 7 ".kiy[5:6]"  0.99970954656600952 0.92589586973190308;
	setAttr -s 7 ".kox[0:6]"  1 0.14741939306259155 0.02836567722260952 
		0.13494913280010223 0.018262395635247231 0.02409985288977623 0;
	setAttr -s 7 ".koy[0:6]"  0 -0.98907405138015747 0.99959760904312134 
		0.99085253477096558 0.99983322620391846 0.99970954656600952 0;
createNode animCurveTL -n "animCurveTL448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.72893957619979599 3 1.5357870437604584 
		8 1.7070327639408474 12 1.4332959131026948 17 0.88865616839279471 21 0.58999669729834181 
		25 0.48720983770568355;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 1 3;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 1 3;
	setAttr -s 7 ".kix[5:6]"  0.0045027746818959713 1;
	setAttr -s 7 ".kiy[5:6]"  -0.99998986721038818 0;
	setAttr -s 7 ".kox[0:6]"  1 0.0027263830415904522 0.02925829216837883 
		0.0036657692398875952 0.0035574338398873806 0.0045027676969766617 1;
	setAttr -s 7 ".koy[0:6]"  0 0.99999630451202393 -0.99957185983657837 
		-0.99999326467514038 -0.99999368190765381 -0.99998986721038818 0;
createNode animCurveTA -n "animCurveTA1203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 20.950825280283915 3 31.893921676442705 
		8 -31.271343244801049 12 -21.037172085493172 17 22.959085278590301 21 4.802459265983229 
		25 -0.62843630316474508;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 1 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 1 5;
	setAttr -s 7 ".kix[5:6]"  0.47925189137458801 1;
	setAttr -s 7 ".kiy[5:6]"  -0.87767738103866577 0;
	setAttr -s 7 ".kox[0:6]"  1 0.28080287575721741 0.30886062979698181 
		0.30214354395866394 0.5538591742515564 0.47925195097923279 0;
	setAttr -s 7 ".koy[0:6]"  0 -0.95976543426513672 -0.95110732316970825 
		0.95326244831085205 0.8326103687286377 -0.87767738103866577 0;
createNode animCurveTA -n "animCurveTA1204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -7.5734518508549122 3 -6.8139232258102789 
		8 -6.8139232258102771 12 -6.8139232258102789 17 -6.813923225810278 21 -6.0137976276814351 
		25 -5.8284402688137167;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
	setAttr -s 7 ".kox[0:6]"  1 0.99876672029495239 1 1 0.99891835451126099 
		0.99792635440826416 0;
	setAttr -s 7 ".koy[0:6]"  0 0.049649722874164581 0 0 0.046499069780111313 
		0.064365960657596588 0;
createNode animCurveTA -n "animCurveTA1205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0.045251426940717335 8 0.045251426940718535 
		12 0.045251426940725155 17 -0.15826523916939986 21 -0.93973001154335611 25 
		-1.295636019309746;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 1 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 1 5;
	setAttr -s 7 ".kix[5:6]"  0.99269592761993408 1;
	setAttr -s 7 ".kiy[5:6]"  -0.12064303457736969 0;
	setAttr -s 7 ".kox[0:6]"  1 0.99999558925628662 1 0.99992990493774414 
		0.99836218357086182 0.99269592761993408 0;
	setAttr -s 7 ".koy[0:6]"  0 0.0029616858810186386 0 -0.011839290149509907 
		-0.0572100430727005 -0.1206430196762085 0;
createNode animCurveTA -n "animCurveTA1206";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1207";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1208";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 4.0984482521620249 1 4.0984482521620249 
		1.005 4.0984482521620249 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1209";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 18.588300303494186 1 18.588300303494186 
		1.005 18.588300303494186 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1210";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1211";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1212";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -22.686733334985114 1 -22.686733334985114 
		1.005 -22.686733334985114 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1213";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1214";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1215";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.0579251312417479e-005 1 1.0579251312417479e-005 
		1.005 1.0579251312417477e-005 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1216";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1217";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1218";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 4.0984482535121209 1 4.0984482535121209 
		1.005 4.0984482535121209 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1219";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 18.588300300216805 1 18.588300300216805 
		1.005 18.588300300216801 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1220";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1221";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1222";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -22.686733333057838 1 -22.686733333057838 
		1.005 -22.686733333057838 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1223";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1224";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1225";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.0579251312417479e-005 1 1.0579251312417479e-005 
		1.005 1.0579251312417477e-005 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1226";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1227";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1228";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.4782236286598098 1 2.4782236286598098 
		1.005 2.4782236286598103 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1229";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1230";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1231";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -39.488235982334174 1 -1.4877789965049075e-015 
		1.005 0 23.995000000000001 0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  0.048308800905942917 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0.99883246421813965 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL449";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.45372869842366848 25 -0.43524234076486068;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.071938350796699524;
	setAttr -s 2 ".kiy[0:1]"  0 0.99740910530090332;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL450";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.48341034420929002 25 -0.82665738350180629;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.0038844402879476547;
	setAttr -s 2 ".kiy[0:1]"  0 -0.99999243021011353;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL451";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.25229533142903854 25 0.27773886459742925;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.052331786602735519;
	setAttr -s 2 ".kiy[0:1]"  0 0.99862974882125854;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1232";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -3.9557054376145322 25 0;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.73313558101654053;
	setAttr -s 2 ".kiy[0:1]"  0 0.68008249998092651;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1233";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 15.314756789856879 25 28.652637602052774;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.5224158763885498;
	setAttr -s 2 ".kiy[0:1]"  0 0.85269081592559814;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1234";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 33.672123365389041 25 64.676908227303443;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.22811245918273926;
	setAttr -s 2 ".kiy[0:1]"  0 0.97363477945327759;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL452";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.50653448759043651 25 0.5198069948790518;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.099955134093761444;
	setAttr -s 2 ".kiy[0:1]"  0 0.9949919581413269;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL453";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.38121536569622144 25 -0.72394202659893114;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.0038903378881514072;
	setAttr -s 2 ".kiy[0:1]"  0 -0.99999243021011353;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL454";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.33851248019721064 25 0.36439499068905612;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.051446590572595596;
	setAttr -s 2 ".kiy[0:1]"  0 0.99867576360702515;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1235";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.19812796569989924 25 7.7976222737965335;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.55837279558181763;
	setAttr -s 2 ".kiy[0:1]"  0 0.82959014177322388;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1236";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -17.228339209596228 25 -30.409274105849086;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.55266350507736206;
	setAttr -s 2 ".kiy[0:1]"  0 -0.83340448141098022;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1237";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -33.102165847832048 25 -64.859940280210878;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[0:1]"  0 0.22016367316246033;
	setAttr -s 2 ".kiy[0:1]"  0 -0.97546297311782837;
	setAttr -s 2 ".kox[0:1]"  0 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL455";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.3705977767760478 1 -1.3705977767760478 
		1.005 -1.3705977767760478 25 -0.84654347043021561;
	setAttr -s 4 ".kit[0:3]"  3 1 3 1;
	setAttr -s 4 ".kot[1:3]"  5 1 5;
	setAttr -s 4 ".kix[1:3]"  1 1 0.010473632253706455;
	setAttr -s 4 ".kiy[1:3]"  0 0 0.99994516372680664;
	setAttr -s 4 ".kox[0:3]"  1 0 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL456";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.1618658070195953 1 2.1618658070195953 
		1.005 2.1618658070195953 25 1.2151450287453427;
	setAttr -s 4 ".kit[0:3]"  3 1 3 1;
	setAttr -s 4 ".kot[1:3]"  5 1 5;
	setAttr -s 4 ".kix[1:3]"  1 1 0.035579022020101547;
	setAttr -s 4 ".kiy[1:3]"  0 0 -0.9993668794631958;
	setAttr -s 4 ".kox[0:3]"  1 0 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL457";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.12044246479037771 1 -0.12044246479037771 
		1.005 -0.12044246479037771 25 0.67223770648177095;
	setAttr -s 4 ".kit[0:3]"  3 1 3 9;
	setAttr -s 4 ".kot[1:3]"  5 1 9;
	setAttr -s 4 ".kix[1:3]"  1 1 0.010089725255966187;
	setAttr -s 4 ".kiy[1:3]"  0 0 0.99994909763336182;
	setAttr -s 4 ".kox[0:3]"  1 0 1 0.010089725255966187;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0.99994909763336182;
createNode animCurveTA -n "animCurveTA1238";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 -13.607468531903837;
	setAttr -s 4 ".kit[0:3]"  3 1 3 1;
	setAttr -s 4 ".kot[1:3]"  5 1 5;
	setAttr -s 4 ".kix[1:3]"  1 1 0.94210636615753174;
	setAttr -s 4 ".kiy[1:3]"  0 0 -0.33531421422958374;
	setAttr -s 4 ".kox[0:3]"  1 0 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1239";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 5.3248413331634143;
	setAttr -s 4 ".kit[0:3]"  3 1 3 1;
	setAttr -s 4 ".kot[1:3]"  5 1 5;
	setAttr -s 4 ".kix[1:3]"  1 1 0.29313716292381287;
	setAttr -s 4 ".kiy[1:3]"  0 0 0.95607036352157593;
	setAttr -s 4 ".kox[0:3]"  1 0 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA1240";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1 0 1.005 0 25 56.915544200805968;
	setAttr -s 4 ".kit[0:3]"  3 1 3 1;
	setAttr -s 4 ".kot[1:3]"  5 1 5;
	setAttr -s 4 ".kix[1:3]"  1 1 0.67454975843429565;
	setAttr -s 4 ".kiy[1:3]"  0 0 -0.73822939395904541;
	setAttr -s 4 ".kox[0:3]"  1 0 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL458";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.3705978542308779 1 1.3705978542308779 
		1.005 1.3705978542308779 8 0.054439614637118668 12 0.75441556817266364 14 
		1.0112402113389882 16 0.97305833251232088 20 0.7405749887246742 25 0.61083301393139333;
	setAttr -s 9 ".kit[0:8]"  3 1 3 9 1 9 1 
		9 1;
	setAttr -s 9 ".kot[1:8]"  5 1 9 1 9 1 9 
		5;
	setAttr -s 9 ".kix[1:8]"  1 1 0.0059478096663951874 0.00086798635311424732 
		0.0060981144197285175 0.0034522369969636202 0.0082818539813160896 0.0090264398604631424;
	setAttr -s 9 ".kiy[1:8]"  0 0 -0.99998229742050171 0.99999964237213135 
		0.99998140335083008 -0.99999403953552246 -0.99996572732925415 -0.99995929002761841;
	setAttr -s 9 ".kox[0:8]"  1 0 1 0.0059478096663951874 0.00086800451390445232 
		0.0060981144197285175 0.0034522539936006069 0.0082818539813160896 0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 -0.99998229742050171 0.99999964237213135 
		0.99998140335083008 -0.99999403953552246 -0.99996572732925415 0;
createNode animCurveTL -n "animCurveTL459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.1618621235956237 1 2.1618621235956237 
		1.005 2.1618621235956237 8 2.5150843299746244 12 2.0696426189907959 14 1.8375495972010314 
		16 1.5861600162680833 20 1.2520657725152782 25 1.205921556906836;
	setAttr -s 9 ".kit[0:8]"  3 1 3 9 9 9 9 
		9 1;
	setAttr -s 9 ".kot[0:8]"  1 5 1 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[1:8]"  1 1 0.039710786193609238 0.002951865317299962 
		0.002757758367806673 0.0034159582573920488 0.007889539934694767 0.10501580685377121;
	setAttr -s 9 ".kiy[1:8]"  0 0 -0.99921119213104248 -0.9999956488609314 
		-0.99999618530273438 -0.99999415874481201 -0.99996888637542725 0.99447053670883179;
	setAttr -s 9 ".kox[0:8]"  1 0 1 0.039710786193609238 0.002951865317299962 
		0.002757758367806673 0.0034159582573920488 0.007889539934694767 0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 -0.99921119213104248 -0.9999956488609314 
		-0.99999618530273438 -0.99999415874481201 -0.99996888637542725 0;
createNode animCurveTL -n "animCurveTL460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.12044250833667494 1 -0.12044250833667494 
		1.005 -0.12044250833667494 8 2.6160120919800871 12 2.2465840456105499 14 
		1.9566828169050599 16 1.6843078002053604 20 1.2285854074025808 25 0.91337535679836157;
	setAttr -s 9 ".kit[0:8]"  3 1 3 9 1 9 9 
		9 9;
	setAttr -s 9 ".kot[0:8]"  1 5 1 9 1 9 9 
		9 9;
	setAttr -s 9 ".kix[1:8]"  1 1 0.0015483542811125517 0.002061791718006134 
		0.0023713069967925549 0.0027468749321997166 0.0038913621101528406 0.0052874051034450531;
	setAttr -s 9 ".kiy[1:8]"  0 0 0.99999880790710449 -0.99999785423278809 
		-0.99999719858169556 -0.99999624490737915 -0.99999243021011353 -0.99998599290847778;
	setAttr -s 9 ".kox[0:8]"  1 0 1 0.0015483542811125517 0.0020617854315787554 
		0.0023713069967925549 0.0027468749321997166 0.0038913621101528406 0.0052874051034450531;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0.99999880790710449 -0.99999785423278809 
		-0.99999719858169556 -0.99999624490737915 -0.99999243021011353 -0.99998599290847778;
createNode animCurveTA -n "animCurveTA1241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 1.005 0 8 -111.14388941028382 
		12 -156.49726023348501 14 -160.17131382515208 16 -93.045751855746659 20 -5.7993291745893361 
		25 -0.14751373646059371;
	setAttr -s 9 ".kit[0:8]"  3 1 3 9 9 9 9 
		9 1;
	setAttr -s 9 ".kot[0:8]"  1 5 1 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[1:8]"  1 1 0.13298879563808441 0.22759544849395752 
		0.11953478306531906 0.074027121067047119 0.18193939328193665 0.80770587921142578;
	setAttr -s 9 ".kiy[1:8]"  0 0 -0.99111753702163696 -0.97375577688217163 
		0.99283003807067871 0.99725621938705444 0.98330974578857422 0.58958560228347778;
	setAttr -s 9 ".kox[0:8]"  1 0 1 0.13298879563808441 0.22759544849395752 
		0.11953478306531906 0.074027121067047119 0.18193939328193665 0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 -0.99111753702163696 -0.97375577688217163 
		0.99283003807067871 0.99725621938705444 0.98330974578857422 0;
createNode animCurveTA -n "animCurveTA1242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 1.005 0 8 2.8912640841071311 
		12 4.0258011009841459 14 10.326189661946705 16 1.7382649191003765 20 -1.2282640104712745 
		25 -8.5139660854992858;
	setAttr -s 9 ".kit[0:8]"  3 1 3 9 9 9 9 
		9 1;
	setAttr -s 9 ".kot[0:8]"  1 5 1 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[1:8]"  1 1 0.98211425542831421 0.83889579772949219 
		0.95797437429428101 0.70417267084121704 0.85883486270904541 0.72001343965530396;
	setAttr -s 9 ".kiy[1:8]"  0 0 0.18828585743904114 0.54429209232330322 
		-0.28685373067855835 -0.71002876758575439 -0.5122525691986084 -0.69396013021469116;
	setAttr -s 9 ".kox[0:8]"  1 0 1 0.98211425542831421 0.83889579772949219 
		0.95797437429428101 0.70417267084121704 0.85883486270904541 0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0.18828585743904114 0.54429209232330322 
		-0.28685373067855835 -0.71002876758575439 -0.5122525691986084 0;
createNode animCurveTA -n "animCurveTA1243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 1.005 0 8 56.466906259853914 
		12 77.427481472745598 14 -14.680788158512053 16 15.909099546827095 20 -60.456694896838378 
		25 -58.291954750297876;
	setAttr -s 9 ".kit[0:8]"  3 1 3 9 9 9 9 
		9 1;
	setAttr -s 9 ".kot[0:8]"  1 5 1 9 9 9 9 
		9 5;
	setAttr -s 9 ".kix[1:8]"  1 1 0.26175177097320557 0.15901227295398712 
		0.12323480844497681 0.24283836781978607 0.2256748229265213 0.97032767534255981;
	setAttr -s 9 ".kiy[1:8]"  0 0 0.96513521671295166 -0.98727661371231079 
		-0.99237751960754395 -0.97006678581237793 -0.97420269250869751 0.24179364740848541;
	setAttr -s 9 ".kox[0:8]"  1 0 1 0.26175177097320557 0.15901227295398712 
		0.12323480844497681 0.24283836781978607 0.2256748229265213 0;
	setAttr -s 9 ".koy[0:8]"  0 0 0 0.96513521671295166 -0.98727661371231079 
		-0.99237751960754395 -0.97006678581237793 -0.97420269250869751 0;
createNode animCurveTL -n "animCurveTL461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 0 1.005 0 10 0.36127343874005552 
		12 0.68466843614559081 16 0.0995558171966726 20 -0.14106199365794422 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 10 ".kit[0:9]"  3 1 3 9 9 9 9 
		1 1 1;
	setAttr -s 10 ".kot[0:9]"  1 5 1 9 9 9 9 
		3 9 5;
	setAttr -s 10 ".kix[1:9]"  1 1 0.0053528794087469578 0.0076416009105741978 
		0.00322944694198668 0.0267593152821064 1 1 1;
	setAttr -s 10 ".kiy[1:9]"  0 0 0.99998569488525391 -0.99997079372406006 
		-0.99999481439590454 -0.99964189529418945 0 0 0;
	setAttr -s 10 ".kox[0:9]"  1 0 1 0.0053528794087469578 0.0076416009105741978 
		0.00322944694198668 0.0267593152821064 1 1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0.99998569488525391 -0.99997079372406006 
		-0.99999481439590454 -0.99964189529418945 0 0 0;
createNode animCurveTL -n "animCurveTL462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 0 1.005 0 10 0.73510214909421823 
		12 -0.0014042657486442007 16 -0.53289187953887951 20 0.1339038227003827 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 10 ".kit[0:9]"  3 1 3 9 9 9 9 
		1 1 1;
	setAttr -s 10 ".kot[0:9]"  1 5 1 9 9 9 9 
		3 9 5;
	setAttr -s 10 ".kix[1:9]"  1 1 0.93380153179168701 0.0015772925689816475 
		0.019704284146428108 0.0050009521655738354 1 1 1;
	setAttr -s 10 ".kiy[1:9]"  0 0 -0.35779142379760742 -0.99999874830245972 
		0.99980586767196655 0.99998748302459717 0 0 0;
	setAttr -s 10 ".kox[0:9]"  1 0 1 0.93380153179168701 0.0015772925689816475 
		0.019704284146428108 0.0050009521655738354 1 1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 -0.35779142379760742 -0.99999874830245972 
		0.99980586767196655 0.99998748302459717 0 0 0;
createNode animCurveTL -n "animCurveTL463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1 1 -1 1.005 -1 10 -0.68827745690884712 
		12 -0.69106058523459002 16 -1.2496039000308468 20 -1.0362942021667274 23.995000000000001 
		-1 24 -1 25 -1;
	setAttr -s 10 ".kit[0:9]"  3 1 3 9 9 9 9 
		1 1 1;
	setAttr -s 10 ".kot[0:9]"  1 5 1 9 9 9 9 
		3 9 5;
	setAttr -s 10 ".kix[1:9]"  1 1 0.011862332932651043 0.0035629663616418839 
		0.0077240080572664738 0.01067630760371685 1 1 1;
	setAttr -s 10 ".kiy[1:9]"  0 0 0.99992966651916504 -0.99999368190765381 
		-0.9999701976776123 0.99994301795959473 0 0 0;
	setAttr -s 10 ".kox[0:9]"  1 0 1 0.011862332932651043 0.0035629663616418839 
		0.0077240080572664738 0.01067630760371685 1 1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0.99992966651916504 -0.99999368190765381 
		-0.9999701976776123 0.99994301795959473 0 0 0;
createNode animCurveTL -n "animCurveTL464";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		-0.10167917362943303 24 -0.10167917362943303 25 -0.10167917362943303;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL465";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		-0.40762644910266188 24 -0.40762644910266188 25 -0.40762644910266188;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL466";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1 1 -1 1.005 -1 23.995000000000001 
		-0.93129112588482243 24 -0.93129112588482243 25 -0.93129112588482243;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 52.637219839343977 3 40.514666031468188 
		5 -12.12068893647646 9 -22.484748608262592 11 -1.15702634084568 16 36.805984486121304 
		24 20.890931893188814 25 12.253734489678925;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  0.42731356620788574 0.14588388800621033 
		0.17895674705505371 0.72255581617355347 0.2199600487947464 0.74773114919662476 
		0.57351064682006836 0;
	setAttr -s 8 ".koy[0:7]"  -0.90410351753234863 -0.98930174112319946 
		-0.9838569164276123 0.69131255149841309 0.97550886869430542 0.66400158405303955 
		-0.81919807195663452 0;
createNode animCurveTA -n "animCurveTA1245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -24.480967171432493 3 -39.445176802283065 
		5 -60.603169510443095 9 5.6265907546054388 11 12.095375960115796 16 -50.247647853403471 
		24 -62.496730759470097 25 -65.746751280844975;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  0.35757127404212952 0.2555808424949646 
		0.24640345573425293 0.15570323169231415 0.232701376080513 0.31581714749336243 
		0.74266558885574341 0;
	setAttr -s 8 ".koy[0:7]"  -0.93388587236404419 -0.96678769588470459 
		0.96916735172271729 0.9878038763999939 -0.97254824638366699 -0.94882005453109741 
		-0.6696624755859375 0;
createNode animCurveTA -n "animCurveTA1246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -64.344364641857084 3 -77.735295169850247 
		5 41.134358798747748 9 36.089274316164669 11 10.002481206322999 16 -40.143944731837173 
		24 -24.062374163749261 25 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  0.39337444305419922 0.090164169669151306 
		0.10016750544309616 0.34542712569236755 0.17273387312889099 0.58900505304336548 
		0.39361333847045898 0;
	setAttr -s 8 ".koy[0:7]"  -0.91937834024429321 0.99592691659927368 
		0.99497056007385254 -0.9384455680847168 -0.98496854305267334 -0.80812931060791016 
		0.91927611827850342 0;
createNode animCurveTA -n "animCurveTA1247";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -53.609443747430014 3 -15.356018695340643 
		8 46.951131076089766 12 -20.325523643013643 14 -48.15707672335008 19 30.692598087052819 
		23 -2.1372745396580126 24 13.713489202151292 25 -0.061808866237340665;
	setAttr -s 9 ".kit[6:8]"  1 9 1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 1 
		9 5;
	setAttr -s 9 ".kix[6:8]"  0.9948461651802063 0.87866967916488647 
		1;
	setAttr -s 9 ".kiy[6:8]"  0.1013958603143692 0.47743013501167297 
		0;
	setAttr -s 9 ".kox[0:8]"  0.14812716841697693 0.1502130925655365 
		0.96065646409988403 0.11962033808231354 0.25348582863807678 0.34989723563194275 
		0.99484622478485107 0.87866967916488647 0;
	setAttr -s 9 ".koy[0:8]"  0.98896831274032593 0.98865365982055664 
		-0.27773931622505188 -0.99281972646713257 0.96733909845352173 0.93678808212280273 
		0.101395383477211 0.47743013501167297 0;
createNode animCurveTA -n "animCurveTA1248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -25.27913794042524 3 -1.6370789986654639 
		8 -14.847487642604962 12 16.379606594594193 14 -8.7267754572389062 19 -56.622047694613521 
		23 -57.498708118646476 24 -56.347109118618718 25 -59.058178941076754;
	setAttr -s 9 ".kit[6:8]"  1 9 1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 1 
		9 5;
	setAttr -s 9 ".kix[6:8]"  0.77861714363098145 0.92581355571746826 
		1;
	setAttr -s 9 ".kiy[6:8]"  -0.62749922275543213 -0.37798053026199341 
		0;
	setAttr -s 9 ".kox[0:8]"  0.23552896082401276 0.82586902379989624 
		0.69028633832931519 0.88205993175506592 0.18013724684715271 0.33239209651947021 
		0.77861720323562622 0.92581355571746826 0;
	setAttr -s 9 ".koy[0:8]"  0.97186732292175293 0.56386202573776245 
		0.72353625297546387 0.47113722562789917 -0.98364150524139404 -0.94314128160476685 
		-0.62749922275543213 -0.37798053026199341 0;
createNode animCurveTA -n "animCurveTA1249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 57.594080128123679 3 69.61309617468136 
		8 -28.281304440154805 12 -2.8136538146327483 14 13.470421274351699 19 -61.732873572711554 
		23 6.2662653992304707 24 -11.338636201043343 25 16.57914742975785;
	setAttr -s 9 ".kit[6:8]"  1 9 1;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 1 
		9 5;
	setAttr -s 9 ".kix[6:8]"  0.58263218402862549 0.34732493758201599 
		1;
	setAttr -s 9 ".kiy[6:8]"  0.81273597478866577 0.9377448558807373 
		0;
	setAttr -s 9 ".kox[0:8]"  0.43031537532806396 0.1751682460308075 
		0.2309119701385498 0.26467183232307434 0.22127929329872131 0.92227131128311157 
		0.58263218402862549 0.34732493758201599 0;
	setAttr -s 9 ".koy[0:8]"  0.90267860889434814 -0.9845384955406189 
		-0.97297465801239014 0.96433854103088379 -0.97521048784255981 -0.38654312491416931 
		0.81273597478866577 0.9377448558807373 0;
createNode animCurveTA -n "animCurveTA1250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 59.468287502559065 3 48.559360783080216 
		5 48.559360783080216 9 57.53252201816786 24 34.901023597936927 25 8.5572674112203639;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  0.46498602628707886 0.65866029262542725 
		0.78733402490615845 0.93589949607849121 0.52935367822647095 0;
	setAttr -s 6 ".koy[0:5]"  -0.88531804084777832 -0.75244045257568359 
		0.61652666330337524 -0.35226711630821228 -0.84840124845504761 0;
createNode animCurveTA -n "animCurveTA1251";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 59.305463658789549 3 60.185649943194235 
		7 83.949023721627441 8 87.164117758844171 12 82.407513699470059 14 72.333484709476977 
		16 20.889584475977955 19 47.222214558237944 23 21.464222889398297 24 36.801935025584562 
		25 15.711328223519061;
	setAttr -s 11 ".kit[8:10]"  1 9 1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 1 9 5;
	setAttr -s 11 ".kix[8:10]"  0.90959548950195313 0.55314081907272339 
		1;
	setAttr -s 11 ".kiy[8:10]"  -0.4154948890209198 -0.83308780193328857 
		0;
	setAttr -s 11 ".kox[0:10]"  0.98840504884719849 0.47684618830680847 
		0.33367395401000977 0.98721998929977417 0.61141812801361084 0.12323570251464844 
		0.35544589161872864 0.99907749891281128 0.90959548950195313 0.55314081907272339 
		0;
	setAttr -s 11 ".koy[0:10]"  0.15184025466442108 0.87898677587509155 
		0.94268852472305298 -0.1593635231256485 -0.79130768775939941 -0.99237740039825439 
		-0.93469685316085815 0.042943201959133148 -0.41549494862556458 -0.83308780193328857 
		0;
createNode animCurveTA -n "animCurveTA1252";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 18.476235154862632 3 18.476235154862632 
		5 18.476235154862632 9 18.476235154862632 24 -5.9963999487806694 25 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 0.82907438278198242 0.85573869943618774 
		0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 -0.55913829803466797 -0.51740819215774536 
		0;
createNode animCurveTA -n "animCurveTA1253";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 10.082003051124275 3 10.082003051124275 
		5 10.082003051124275 9 10.082003051124275 24 -22.447886231826732 25 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 0.7446058988571167 0.94964766502380371 
		0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 -0.66750437021255493 -0.31331989169120789 
		0;
createNode animCurveTA -n "animCurveTA1254";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -4.720189328892868 3 -4.720189328892868 
		5 -4.720189328892868 9 -4.720189328892868 24 -8.1447921548231719 25 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 0.99557626247406006 0.98827916383743286 
		0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 -0.093957133591175079 0.15265734493732452 
		0;
createNode animCurveTA -n "animCurveTA1255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -11.342548829337773 3 -13.555270109330269 
		7 -13.555270109330269 8 -13.555255561099774 12 -46.53583678089764 14 -13.555270109330269 
		16 -13.555270109330269 19 -14.317753995053931 24 -9.4492766501386658 25 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[0:9]"  0.93285173177719116 0.98657816648483276 
		1 0.27811962366104126 1 0.22565975785255432 0.99682736396789551 0.96573543548583984 
		0.62485969066619873 0;
	setAttr -s 10 ".koy[0:9]"  -0.36026054620742798 -0.16328969597816467 
		0 -0.96054643392562866 0 0.97420614957809448 -0.079593800008296967 0.2595285177230835 
		0.78073704242706299 0;
createNode animCurveTA -n "animCurveTA1256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 11.615881410206434 3 11.615881410206432 
		7 11.615881410206432 8 11.615618382644996 12 -16.118633615267186 14 11.615881410206432 
		16 11.615881410206432 19 12.269274762865578 24 -22.644300384551897 25 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[0:9]"  1 1 1 0.32555404305458069 1 0.26555866003036499 
		0.99766731262207031 0.4072985053062439 0.6825675368309021 0;
	setAttr -s 10 ".koy[0:9]"  0 0 -2.7544181648408994e-005 -0.94552344083786011 
		2.2953485313337296e-005 0.96409469842910767 0.06826358288526535 -0.91329509019851685 
		-0.73082250356674194 0;
createNode animCurveTA -n "animCurveTA1257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.32159281075535046 3 0.32159281075535068 
		7 0.32159281075535068 8 0.32165602451652187 12 8.3960686820077903 14 0.32159281075535068 
		16 0.32159281075535068 19 0.33968240652337872 24 -16.704650023565591 25 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[0:9]"  1 1 1 0.76361089944839478 1 0.6872672438621521 
		0.99999821186065674 0.66788339614868164 0.99956095218658447 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0.64567667245864868 0 -0.72640466690063477 
		0.0018943346804007888 -0.74426591396331787 -0.029629867523908615 0;
createNode animCurveTA -n "animCurveTA1258";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -7.522363616771214 25 143.71460997127252;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  0.054200179874897003;
	setAttr -s 2 ".kiy[1]"  0.99853008985519409;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1259";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 34.775203966600493 25 27.804554996454382;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  0.27903684973716736;
	setAttr -s 2 ".kiy[1]"  -0.96028041839599609;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1260";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 5.9122680009038078 25 29.452980944098744;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  0.72995835542678833;
	setAttr -s 2 ".kiy[1]"  0.68349158763885498;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 5 0 9 0 11 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 5 0 9 0 11 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 66.96626063800467 3 67.810939637714412 
		5 67.810939637714412 9 67.810939637714412 11 67.810939637714412 14 67.810939637714412 
		17 70.102051514685854 25 27.080064458283051;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1264";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1265";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1266";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 1 0 1.005 0 23.995000000000001 
		0 24 0 25 0;
	setAttr -s 6 ".kit[0:5]"  3 1 3 1 1 1;
	setAttr -s 6 ".kot[1:5]"  5 1 3 9 5;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 1 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1267";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1268";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1269";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 25 0;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  0.47914806008338928;
	setAttr -s 2 ".kiy[1]"  -0.87773412466049194;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1270";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -5.3348815651839461 25 0;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  0.49186438322067261;
	setAttr -s 2 ".kiy[1]"  -0.87067180871963501;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1271";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -51.001000873543312 25 0;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  0.14840459823608398;
	setAttr -s 2 ".kiy[1]"  0.98892670869827271;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1272";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 65.97430555355777 25 13.994403295754109;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  0.16840985417366028;
	setAttr -s 2 ".kiy[1]"  -0.9857170581817627;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1273";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 5 0 9 0 11 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1274";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 5 0 9 0 11 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1275";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 81.622987204614233 3 40.637834425062678 
		5 40.637834425062678 9 40.637834425062678 11 40.637834425062678 14 40.637834425062678 
		17 41.353683247109352 25 27.911632519594587;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  0.13845011591911316 0.22691623866558075 
		1 1 1 0.99805444478988647 0.85530954599380493 0;
	setAttr -s 8 ".koy[0:7]"  -0.99036937952041626 -0.97391426563262939 
		0 0 0 0.062348056584596634 -0.51811730861663818 0;
createNode animCurveTA -n "animCurveTA1276";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.2945941069882385 3 1.2945941069882381 
		5 1.2945941069882381 9 1.2945941069882381 11 1.2945941069882381 14 1.2945941069882381 
		17 1.3674150174168214 25 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 0.99997979402542114 0.99810671806335449 
		0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0.0063546947203576565 
		-0.061505869030952454 0;
createNode animCurveTA -n "animCurveTA1277";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 3.3208811165553156 3 3.3208811165553147 
		5 3.3208811165553147 9 3.3208811165553147 11 3.3208811165553147 14 3.3208811165553147 
		17 3.5076806841266883 25 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 0.99986714124679565 0.98773574829101563 
		0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0.0162991713732481 -0.15613491833209991 
		0;
createNode animCurveTA -n "animCurveTA1278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -27.52582447785997 3 -27.525824477859967 
		5 -27.525824477859967 9 -27.525824477859967 11 -27.525824477859967 14 -27.525824477859967 
		17 -29.074152125383112 25 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 0.99099481105804443 0.60670804977416992 
		0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 -0.13390032947063446 
		0.79492473602294922 0;
createNode animCurveTA -n "animCurveTA1279";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -8.7597363552835983 3 -21.897916030805764 
		5 -27.026607495669865 9 -40.914114579678262 11 -23.574906326282566 14 -35.256501266650531 
		17 -22.727369139989882 25 -0.65073001024951671;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  0.3997424840927124 0.4632810652256012 
		0.51613205671310425 0.9575047492980957 0.86034005880355835 0.99727600812911987 
		0.51893854141235352 0;
	setAttr -s 8 ".koy[0:7]"  -0.91662746667861938 -0.88621139526367188 
		-0.85650902986526489 0.28841745853424072 0.50972044467926025 0.073760099709033966 
		0.85481154918670654 0;
createNode animCurveTA -n "animCurveTA1280";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 5 -1.8399336948780474 9 
		-9.3943148150948126 11 -22.218801665874683 14 -16.192242159245939 17 4.6258648471344355 
		25 -4.2368721935960938;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 0.98193907737731934 0.77334034442901611 
		0.4901326596736908 0.81466042995452881 0.39259609580039978 0.86912322044372559 
		0;
	setAttr -s 8 ".koy[0:7]"  0 -0.18919746577739716 -0.6339910626411438 
		-0.87164783477783203 -0.57993823289871216 0.91971099376678467 0.49459564685821533 
		0;
createNode animCurveTA -n "animCurveTA1281";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -8.9349579591731985 3 0.5940776450337566 
		5 -17.070349988841748 9 -37.878455967579129 11 -46.515803561087004 14 -41.530905272769182 
		17 -43.871813625785762 25 2.6995264082587447;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  0.51529943943023682 0.76121151447296143 
		0.28545945882797241 0.36267021298408508 0.93401110172271729 0.97439920902252197 
		0.42904010415077209 0;
	setAttr -s 8 ".koy[0:7]"  0.85701018571853638 -0.64850372076034546 
		-0.95839077234268188 -0.93191754817962646 -0.35724392533302307 0.22482474148273468 
		0.9032854437828064 0;
createNode animCurveTA -n "animCurveTA1282";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 5 0 9 0 11 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1283";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 5 0 9 0 11 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 5 0 9 -8.7299801591531629 
		11 -3.7713514762097855 14 0 17 0.11785472970351051 25 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 0.79545867443084717 0.9498792290687561 
		0.73805981874465942 0.94694656133651733 1 0;
	setAttr -s 8 ".koy[0:7]"  0 0 -0.60600787401199341 -0.31261712312698364 
		0.67473530769348145 0.32139107584953308 0 0;
createNode animCurveTA -n "animCurveTA1285";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 1.6804018684285151 5 -22.700037150197865 
		9 -9.0824594233362035 11 -1.8970992170587739 14 -3.8819790806033372 17 -6.2893151825303244 
		25 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.87472742795944214;
	setAttr -s 8 ".kiy[7]"  0.48461520671844482;
	setAttr -s 8 ".kox[0:7]"  0.95958137512207031 0.38775986433029175 
		0.72890520095825195 0.48248565196990967 0.87821346521377563 0.93375867605209351 
		0.98335295915603638 0;
	setAttr -s 8 ".koy[0:7]"  0.28143125772476196 -0.9217604398727417 
		-0.68461459875106812 0.8759039044380188 0.47826892137527466 -0.35790330171585083 
		0.18170569837093353 0;
createNode animCurveTA -n "animCurveTA1286";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -9.2427148064678804 3 4.0964050967290131 
		5 -22.180583921737327 9 -6.263830548737908 11 6.4741437499609811 14 0.99161045495694855 
		17 -6.5290168112633511 25 -5.2836650271627628;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.904011070728302;
	setAttr -s 8 ".kiy[7]"  0.42750906944274902;
	setAttr -s 8 ".kox[0:7]"  0.39466476440429688 0.59384894371032715 
		0.74177956581115723 0.37131425738334656 0.79624348878860474 0.6611601710319519 
		0.95816779136657715 0;
	setAttr -s 8 ".koy[0:7]"  0.91882520914077759 -0.804576575756073 
		-0.67064374685287476 0.92850726842880249 0.60497629642486572 -0.75024479627609253 
		-0.28620705008506775 0;
createNode animCurveTA -n "animCurveTA1287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -10.062830706779264 3 -26.805484402997095 
		5 19.871662933460563 9 15.915457627956584 11 -10.763226058396723 14 -13.343741657485509 
		17 -3.0221762348442591 25 6.6786334979782902;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  0.64592403173446655;
	setAttr -s 8 ".kiy[7]"  0.76340168714523315;
	setAttr -s 8 ".kox[0:7]"  0.32378017902374268 0.30391696095466614 
		0.25907456874847412 0.35034793615341187 0.31026297807693481 0.82864338159561157 
		0.72389137744903564 0;
	setAttr -s 8 ".koy[0:7]"  -0.9461323618888855 0.95269852876663208 
		0.96585732698440552 -0.93661963939666748 -0.95065075159072876 0.55977684259414673 
		0.68991398811340332 0;
createNode animCurveTA -n "animCurveTA1288";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 5 0 9 0 11 0 14 0 17 -0.17211839227867792 
		25 -1.8903601258661935;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 0.99988722801208496 0.99597615003585815 
		0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 -0.015018469654023647 
		-0.089618861675262451 0;
createNode animCurveTA -n "animCurveTA1289";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 5 0 9 0 11 0 14 0 17 0.26734204925965083 
		25 2.5597289571479038;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 0.99972796440124512 0.99265879392623901 
		0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0.023323649540543556 
		0.12094834446907043 0;
createNode animCurveTA -n "animCurveTA1290";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 5.671986885245901 3 6.8868861649534203 
		5 9.3704316855793106 9 -1.5776608261944634 11 -6.7624243401974296 14 -5.9778860978860333 
		17 25.41983677020237 25 2.0168110874036049;
	setAttr -s 8 ".kit[4:7]"  1 1 9 1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 1 1 9 
		5;
	setAttr -s 8 ".kix[4:7]"  0.76894372701644897 0.45467066764831543 
		0.93461382389068604 1;
	setAttr -s 8 ".kiy[4:7]"  -0.63931649923324585 0.8906596302986145 
		0.35566419363021851 0;
	setAttr -s 8 ".kox[0:7]"  0.97825026512145996 0.93250423669815063 
		0.80435270071029663 0.57908409833908081 0.7689436674118042 0.45467069745063782 
		0.93461382389068604 0;
	setAttr -s 8 ".koy[0:7]"  0.20742811262607574 0.36115908622741699 
		-0.59415209293365479 -0.81526780128479004 -0.63931649923324585 0.8906596302986145 
		0.35566419363021851 0;
createNode animCurveTA -n "animCurveTA1291";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 5 0 9 0 11 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1292";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 5 0 9 0 11 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1293";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 65.19723564040558 3 66.910735171519136 
		5 66.910735171519136 9 66.910735171519136 11 66.910735171519136 14 66.910735171519136 
		17 68.794077659127268 25 33.429092416277157;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[7]"  5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
createNode animCurveTA -n "animCurveTA1294";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.2533422302317216 25 106.91515461315004;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  0.07579357922077179;
	setAttr -s 2 ".kiy[1]"  0.99712353944778442;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1295";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 23.263402056531085 25 28.612774017129336;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  0.76755315065383911;
	setAttr -s 2 ".kiy[1]"  0.64098531007766724;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1296";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 20.166277752815617 25 17.632837226638056;
	setAttr -s 2 ".kit[0:1]"  9 1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  0.97456318140029907;
	setAttr -s 2 ".kiy[1]"  0.22411303222179413;
	setAttr -s 2 ".kox[0:1]"  1 0;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 5 0 9 0 11 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 3 0 5 0 9 0 11 0 14 0 17 0 
		25 0;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 86.611733534295581 3 55.749331591600708 
		5 55.749331591600708 9 55.749331591600708 11 55.749331591600708 14 55.749331591600708 
		17 57.914687334191584 25 17.254116939558369;
	setAttr -s 8 ".kit[7]"  1;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		5;
	setAttr -s 8 ".kix[7]"  1;
	setAttr -s 8 ".kiy[7]"  0;
	setAttr -s 8 ".kox[0:7]"  0.18253026902675629 0.29558902978897095 
		1 1 1 0.98261082172393799 0.47904655337333679 0;
	setAttr -s 8 ".koy[0:7]"  -0.98320025205612183 -0.95531517267227173 
		0 0 0 0.18567702174186707 -0.87778949737548828 0;
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
	setAttr -s 24 ".lnk";
select -ne :time1;
	setAttr ".o" 25;
select -ne :renderPartition;
	setAttr -s 24 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 24 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 4 ".tx";
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
connectAttr "mlh_run_into_objectSource.st" "clipLibrary1.st[0]";
connectAttr "mlh_run_into_objectSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL426.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL427.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL429.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA1181.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU81.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU82.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU83.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU84.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU85.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU86.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU87.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU88.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA1182.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1183.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1184.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL431.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL432.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL433.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL434.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL435.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL436.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1185.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1186.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1187.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL437.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL438.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL439.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1188.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1189.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1190.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1191.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1192.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1193.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1194.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1195.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1196.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA1197.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA1198.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA1199.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA1200.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA1201.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA1202.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL440.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL441.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL442.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL443.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL444.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL445.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL446.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL447.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL448.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1203.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1204.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1205.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1206.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1207.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1208.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1209.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1210.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1211.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1212.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1213.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1214.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1215.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1216.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1217.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1218.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1219.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1220.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1221.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1222.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1223.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1224.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1225.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA1226.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA1227.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA1228.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1229.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1230.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1231.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL449.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL450.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL451.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA1232.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA1233.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1234.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL452.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL453.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL454.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1235.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1236.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1237.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL455.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL456.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL457.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1238.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1239.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1240.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL458.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL459.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL460.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1241.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1242.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1243.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL461.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL462.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL463.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL464.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL465.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL466.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1244.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1245.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1246.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1247.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1248.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1249.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1250.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1251.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1252.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1253.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1254.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1255.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1256.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1257.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1258.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1259.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1260.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1261.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1262.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1263.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1264.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1265.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1266.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1267.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1268.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1269.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1270.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1271.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1272.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1273.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1274.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1275.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1276.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1277.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1278.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1279.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1280.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1281.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1282.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1283.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1284.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1285.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1286.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1287.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1288.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1289.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1290.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1291.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1292.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1293.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1294.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1295.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1296.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1297.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1298.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1299.a" "clipLibrary1.cel[0].cev[167].cevr";
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
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of mlh_run_into_object.ma
