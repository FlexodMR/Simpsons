//Maya ASCII 4.0 scene
//Name: apu-m_get_into_car_close_door.ma
//Last modified: Tue, Jul 23, 2002 12:36:25 PM
requires maya "4.0";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dSimpleShader" "17.1";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "apu_get_into_car_close_door";
	setAttr ".ihi" 0;
	setAttr ".st" 45;
	setAttr ".du" 11;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 1 56 1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  45 -0.99398213730509188 46 -0.97889902289608477 
		47 -0.95493677741368577 48 -0.93274772543463624 49 -0.92298419153567712 50 
		-0.92567507595795817 51 -0.93291976472245652 52 -0.94347631107565466 53 -0.95610276826403462 
		54 -0.96955718953407921 55 -0.98259762813227103 56 -0.99398213730509188;
	setAttr -s 12 ".kit[11]"  1;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 12 ".kix[11]"  0.029267033562064171;
	setAttr -s 12 ".kiy[11]"  -0.99957162141799927;
	setAttr -s 12 ".kox[0:11]"  0.027453232556581497 0.017071669921278954 
		0.014443735592067242 0.020859707146883011 0.093843840062618256 0.06694842129945755 
		0.037424348294734955 0.028744816780090332 0.025553163141012192 0.025154151022434235 
		0.02728433720767498 0.02926703542470932;
	setAttr -s 12 ".koy[0:11]"  0.99962306022644043 0.99985426664352417 
		0.99989569187164307 0.99978238344192505 0.99558693170547485 -0.99775642156600952 
		-0.99929946660995483 -0.99958676099777222 -0.99967348575592041 -0.99968355894088745 
		-0.99962770938873291 -0.99957162141799927;
createNode animCurveTL -n "animCurveTL168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
createNode animCurveTL -n "animCurveTL169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  45 0.71116663678754255 46 0.71398472334948315 
		47 0.71797258166549283 48 0.72153506841991433 49 0.72307704029708975 50 0.72262562556795007 
		51 0.72141027822703829 52 0.71963934354411596 53 0.71752116678894384 54 0.71526409323128348 
		55 0.71307646814089598 56 0.71116663678754255;
	setAttr -s 12 ".kit[11]"  1;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 12 ".kix[11]"  0.17193645238876343;
	setAttr -s 12 ".kiy[11]"  -0.98510801792144775;
	setAttr -s 12 ".kox[0:11]"  0.28253147006034851 0.097487002611160278 
		0.087953999638557434 0.12950491905212402 0.5215725302696228 0.37137237191200256 
		0.2178797572851181 0.16895441710948944 0.15063360333442688 0.1483321487903595 
		0.16059085726737976 0.17193645238876343;
	setAttr -s 12 ".koy[0:11]"  0.95925807952880859 0.99523681402206421 
		0.99612456560134888 0.99157875776290894 0.85320693254470825 -0.92848402261734009 
		-0.9759756326675415 -0.98562383651733398 -0.98858964443206787 -0.9889376163482666 
		-0.98702108860015869 -0.98510801792144775;
createNode animCurveTA -n "animCurveTA453";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  2 1;
	setAttr -s 2 ".kot[1]"  2;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU33";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU35";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU37";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU38";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU39";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 1 56 1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 1 56 1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA455";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -1.545253516692622 49 -1.545253516692622 
		56 -1.545253516692622;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0.79733745153385938 49 0.79733745153385938 
		56 0.79733745153385938;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 1.6031411449878863 49 1.6031411449878863 
		56 1.6031411449878863;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA457";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0 49 0 56 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -14.260733409455984 49 -14.260733409455984 
		56 -14.260733409455984;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0 49 0 56 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -1.0658215139714076 49 -1.0658215139714076 
		56 -1.0658215139714076;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0.74652177125858954 49 0.74652177125858954 
		56 0.74652177125858954;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 1.549934236693818 49 1.549934236693818 
		56 1.549934236693818;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -22.297768645241412 49 -22.297768645241412 
		56 -22.297768645241412;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -11.632534303065597 49 -11.632534303065597 
		56 -11.632534303065597;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 2.0818063674069247 49 2.0818063674069247 
		56 2.0818063674069247;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA465";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0.097466557943624466 49 0.097466557943624466 
		56 0.097466557943624466;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0.89926276112817349 49 0.89926276112817349 
		56 0.89926276112817349;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0.80168990793572048 49 0.80168990793572048 
		56 0.80168990793572048;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0.011621961304049206 49 0.011621961304049206 
		56 0.011621961304049206;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0.53592894662340362 49 0.53592894662340362 
		56 0.53592894662340362;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 1.1714982742260704 49 1.1714982742260704 
		56 1.1714982742260704;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -1.4056785302309036 49 -1.3052740216256029 
		56 -1.4056785302309036;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  0.023233057931065559;
	setAttr -s 3 ".kiy[2]"  -0.99973005056381226;
	setAttr -s 3 ".kox[0:2]"  0.033213566988706589 1 0.023233057931065559;
	setAttr -s 3 ".koy[0:2]"  0.99944829940795898 0 -0.99973005056381226;
createNode animCurveTL -n "animCurveTL186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0.96452787963755071 49 0.96452787963755071 
		56 0.96452787963755071;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  0.0082621565088629723 1 1;
	setAttr -s 3 ".koy[0:2]"  -0.99996590614318848 0 0;
createNode animCurveTL -n "animCurveTL187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 1.0057239815788857 49 1.0225675423144431 
		56 1.0057239815788857;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  0.13721930980682373;
	setAttr -s 3 ".kiy[2]"  -0.99054074287414551;
	setAttr -s 3 ".kox[0:2]"  0.13721929490566254 1 0.13721930980682373;
	setAttr -s 3 ".koy[0:2]"  0.99054074287414551 0 -0.99054068326950073;
createNode animCurveTA -n "animCurveTA469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -19.688418588621186 49 -3.6819438390622166 
		56 -19.688418588621186;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  0.641041100025177;
	setAttr -s 3 ".kiy[2]"  -0.76750653982162476;
	setAttr -s 3 ".kox[0:2]"  0.65124601125717163 1 0.641041100025177;
	setAttr -s 3 ".koy[0:2]"  0.75886666774749756 0 -0.76750653982162476;
createNode animCurveTA -n "animCurveTA470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 1.6085540494966297 49 -11.476815021979803 
		56 1.6085540494966297;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  0.71464741230010986;
	setAttr -s 3 ".kiy[2]"  0.69948482513427734;
	setAttr -s 3 ".kox[0:2]"  0.64261633157730103 1 0.71464741230010986;
	setAttr -s 3 ".koy[0:2]"  -0.76618808507919312 0 0.69948488473892212;
createNode animCurveTA -n "animCurveTA471";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 4.1348769634669011 49 -11.640125156039268 
		56 4.1348769634669011;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  0.64653211832046509;
	setAttr -s 3 ".kiy[2]"  0.76288676261901855;
	setAttr -s 3 ".kox[0:2]"  0.48905429244041443 1 0.64653217792510986;
	setAttr -s 3 ".koy[0:2]"  -0.87225335836410522 0 0.76288676261901855;
createNode animCurveTA -n "animCurveTA472";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA473";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA474";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA475";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA476";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA477";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA478";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA479";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA480";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA481";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA482";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA483";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA484";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA485";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA486";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA487";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA488";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA489";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA490";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA491";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA492";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0 49 0 56 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA493";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0 49 0 56 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA494";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0 49 0 56 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA495";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0 49 0 56 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA496";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0 49 0 56 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA497";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -37.313732430097119 49 -37.313732430097119 
		56 -37.313732430097119;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -0.5198069948790518 49 -0.5198069948790518 
		56 -0.5198069948790518;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -0.72394202659893114 49 -0.72394202659893114 
		56 -0.72394202659893114;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0.36439499068905612 49 0.36439499068905612 
		56 0.36439499068905612;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA498";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 7.7976222737965299 49 7.7976222737965299 
		56 7.7976222737965299;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA499";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 30.409274105849079 49 30.409274105849079 
		56 30.409274105849079;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA500";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 64.859940280210878 49 64.859940280210878 
		56 64.859940280210878;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0.43524234076486068 49 0.43524234076486068 
		56 0.43524234076486068;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -0.82665738350180629 49 -0.82665738350180629 
		56 -0.82665738350180629;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0.27773886459742925 49 0.27773886459742925 
		56 0.27773886459742925;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA501";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0 49 0 56 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA502";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -28.652637602052774 49 -28.652637602052774 
		56 -28.652637602052774;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA503";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -64.676908227303443 49 -64.676908227303443 
		56 -64.676908227303443;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -2.7598383334303902 49 -2.751482032709831 
		56 -2.7598383334303902;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  0.26894256472587585;
	setAttr -s 3 ".kiy[2]"  -0.96315622329711914;
	setAttr -s 3 ".kox[0:2]"  0.011612717993557453 1 0.26894256472587585;
	setAttr -s 3 ".koy[0:2]"  0.99993258714675903 0 -0.96315622329711914;
createNode animCurveTL -n "animCurveTL195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 1.6505969749795224 49 2.3319064084867733 
		56 1.6505969749795224;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  0.0034247580915689468;
	setAttr -s 3 ".kiy[2]"  -0.99999421834945679;
	setAttr -s 3 ".kox[0:2]"  0.078000977635383606 1 0.0034247580915689468;
	setAttr -s 3 ".koy[0:2]"  0.99695336818695068 0 -0.99999415874481201;
createNode animCurveTL -n "animCurveTL196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 1.6918395574784162 49 1.5168535685613018 
		56 1.6918395574784162;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  0.013333218172192574;
	setAttr -s 3 ".kiy[2]"  0.99991112947463989;
	setAttr -s 3 ".kox[0:2]"  0.018270997330546379 1 0.013333218172192574;
	setAttr -s 3 ".koy[0:2]"  -0.99983310699462891 0 0.99991112947463989;
createNode animCurveTA -n "animCurveTA504";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -2.1628124124086221 49 -13.943651743332239 
		56 -2.1628124124086221;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  0.75026512145996094;
	setAttr -s 3 ".kiy[2]"  0.66113710403442383;
	setAttr -s 3 ".kox[0:2]"  0.099005423486232758 1 0.75026512145996094;
	setAttr -s 3 ".koy[0:2]"  0.9950869083404541 0 0.66113710403442383;
createNode animCurveTA -n "animCurveTA505";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 89.015236610426285 49 3.8803967902227128 
		56 89.015236610426285;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  0.15513235330581665;
	setAttr -s 3 ".kiy[2]"  0.98789370059967041;
	setAttr -s 3 ".kox[0:2]"  0.20560318231582642 1 0.15513235330581665;
	setAttr -s 3 ".koy[0:2]"  -0.97863543033599854 0 0.98789370059967041;
createNode animCurveTA -n "animCurveTA506";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 33.724874337507345 49 27.928973941301635 
		56 33.724874337507345;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  0.91748899221420288;
	setAttr -s 3 ".kiy[2]"  0.39776110649108887;
	setAttr -s 3 ".kox[0:2]"  0.10004527121782303 1 0.91748899221420288;
	setAttr -s 3 ".koy[0:2]"  0.99498289823532104 0 0.39776110649108887;
createNode animCurveTL -n "animCurveTL197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -1.661172442671792 49 -1.0126916376630828 
		56 -1.661172442671792;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  0.0035981305409222841;
	setAttr -s 3 ".kiy[2]"  -0.99999350309371948;
	setAttr -s 3 ".kox[0:2]"  0.0036240029148757458 1 0.0035981303080916405;
	setAttr -s 3 ".koy[0:2]"  0.99999344348907471 0 -0.99999350309371948;
createNode animCurveTL -n "animCurveTL198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 1.800573907881875 49 2.0363461814723141 
		56 1.800573907881875;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  0.0098960725590586662;
	setAttr -s 3 ".kiy[2]"  -0.99995100498199463;
	setAttr -s 3 ".kox[0:2]"  0.0078783454373478889 1 0.0098960725590586662;
	setAttr -s 3 ".koy[0:2]"  -0.99996894598007202 0 -0.99995100498199463;
createNode animCurveTL -n "animCurveTL199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 1.9231679177171495 49 2.439624406534366 
		56 1.9231679177171495;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  0.0045179212465882301;
	setAttr -s 3 ".kiy[2]"  -0.99998980760574341;
	setAttr -s 3 ".kox[0:2]"  0.0042624128982424736 1 0.0045179212465882301;
	setAttr -s 3 ".koy[0:2]"  0.99999094009399414 0 -0.99998980760574341;
createNode animCurveTA -n "animCurveTA507";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 351.55477460486924 49 341.25237745973573 
		56 351.55477460486924;
	setAttr -s 3 ".kit[0:2]"  9 3 1;
	setAttr -s 3 ".kot[0:2]"  1 3 9;
	setAttr -s 3 ".kix[2]"  0.79209291934967041;
	setAttr -s 3 ".kiy[2]"  0.61040055751800537;
	setAttr -s 3 ".kox[0:2]"  0.025214629247784615 1 0.79209291934967041;
	setAttr -s 3 ".koy[0:2]"  0.99968206882476807 0 0.61040055751800537;
createNode animCurveTA -n "animCurveTA508";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -83.443111769650912 49 -54.763820468252135 
		56 -83.443111769650912;
	setAttr -s 3 ".kit[0:2]"  9 3 1;
	setAttr -s 3 ".kot[0:2]"  1 3 9;
	setAttr -s 3 ".kix[2]"  0.42250514030456543;
	setAttr -s 3 ".kiy[2]"  -0.90636050701141357;
	setAttr -s 3 ".kox[0:2]"  0.39791557192802429 1 0.42250517010688782;
	setAttr -s 3 ".koy[0:2]"  0.91742205619812012 0 -0.90636050701141357;
createNode animCurveTA -n "animCurveTA509";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -373.94114519411897 49 -353.08537649880338 
		56 -373.94114519411897;
	setAttr -s 3 ".kit[0:2]"  9 3 1;
	setAttr -s 3 ".kot[0:2]"  1 3 9;
	setAttr -s 3 ".kix[2]"  0.53966420888900757;
	setAttr -s 3 ".kiy[2]"  -0.84188032150268555;
	setAttr -s 3 ".kox[0:2]"  0.026811003684997559 1 0.53966420888900757;
	setAttr -s 3 ".koy[0:2]"  -0.99964052438735962 0 -0.84188032150268555;
createNode animCurveTL -n "animCurveTL200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0.57716755259621588 49 0.77290696453185026 
		56 0.57716755259621588;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  0.011919766664505005;
	setAttr -s 3 ".kiy[2]"  -0.99992895126342773;
	setAttr -s 3 ".kox[0:2]"  1 1 0.01191976573318243;
	setAttr -s 3 ".koy[0:2]"  0 0 -0.99992895126342773;
createNode animCurveTL -n "animCurveTL201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -0.56604158961666384 49 -0.71234308293286885 
		56 -0.56604158961666384;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  0.015946775674819946;
	setAttr -s 3 ".kiy[2]"  0.99987286329269409;
	setAttr -s 3 ".kox[0:2]"  1 1 0.015946775674819946;
	setAttr -s 3 ".koy[0:2]"  0 0 0.99987286329269409;
createNode animCurveTL -n "animCurveTL202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -1.0663528014576997 49 -0.35872267288917942 
		56 -1.0663528014576997;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  0.0032973736524581909;
	setAttr -s 3 ".kiy[2]"  -0.99999457597732544;
	setAttr -s 3 ".kox[0:2]"  1 1 0.0032973736524581909;
	setAttr -s 3 ".koy[0:2]"  0 0 -0.99999457597732544;
createNode animCurveTL -n "animCurveTL203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -0.3861600143950365 49 -0.20338426019301348 
		56 -0.3861600143950365;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  0.012765062041580677;
	setAttr -s 3 ".kiy[2]"  -0.99991852045059204;
	setAttr -s 3 ".kox[0:2]"  1 1 0.012765061110258102;
	setAttr -s 3 ".koy[0:2]"  0 0 -0.99991852045059204;
createNode animCurveTL -n "animCurveTL204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -0.47812789423544078 49 -0.41773512668589569 
		56 -0.47812789423544078;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  0.038607176393270493;
	setAttr -s 3 ".kiy[2]"  -0.99925446510314941;
	setAttr -s 3 ".kox[0:2]"  1 1 0.038607176393270493;
	setAttr -s 3 ".koy[0:2]"  0 0 -0.99925446510314941;
createNode animCurveTL -n "animCurveTL205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -0.91863342471776432 49 -0.84883719224141618 
		56 -0.91863342471776432;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  0.033411987125873566;
	setAttr -s 3 ".kiy[2]"  -0.99944162368774414;
	setAttr -s 3 ".kox[0:2]"  1 1 0.033411987125873566;
	setAttr -s 3 ".koy[0:2]"  0 0 -0.99944168329238892;
createNode animCurveTA -n "animCurveTA510";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -0.061808866237337522 49 -0.061808866237337522 
		56 -0.061808866237337522;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA511";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -59.058178941076754 49 -59.058178941076754 
		56 -59.058178941076754;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA512";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 16.579147429757843 49 16.579147429757843 
		56 16.579147429757843;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA513";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 12.253734489678925 49 12.253734489678925 
		56 12.253734489678925;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA514";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -65.746751280844961 49 -65.746751280844961 
		56 -65.746751280844961;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA515";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0 49 0 56 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA516";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 15.711328223519057 49 15.711328223519057 
		56 15.711328223519057;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA517";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 8.5572674112203622 49 8.5572674112203622 
		56 8.5572674112203622;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA518";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0 49 0 56 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA519";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0 49 0 56 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA520";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0 49 0 56 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA521";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0 49 0 56 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA522";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0 49 0 56 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA523";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0 49 0 56 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 8.2533422302317216 49 8.2533422302317216 
		56 8.2533422302317216;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 23.263402056531085 49 23.263402056531085 
		56 23.263402056531085;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 20.166277752815617 49 20.166277752815617 
		56 20.166277752815617;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0 49 0 56 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0 49 0 56 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 33.429092416277157 49 33.429092416277157 
		56 33.429092416277157;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA532";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA534";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA535";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 13.994403295754109 56 13.994403295754109;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA536";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA537";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 0 56 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA538";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  45 13.994403295754109 56 13.994403295754109;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA539";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0 49 0 56 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA540";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0 49 0 56 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA541";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 17.254116939558369 49 17.254116939558369 
		56 17.254116939558369;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA542";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0 49 0 56 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA543";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0 49 0 56 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA544";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0 49 0 56 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA545";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0.87902215066922906 49 0.43762704278727044 
		56 0.87902215066922906;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  0.99945539236068726;
	setAttr -s 3 ".kiy[2]"  0.03299829363822937;
	setAttr -s 3 ".kox[0:2]"  0.99944251775741577 1 0.99945539236068726;
	setAttr -s 3 ".koy[0:2]"  -0.033385980874300003 0 0.03299829363822937;
createNode animCurveTA -n "animCurveTA546";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 4.7952631452849266 49 -5.6189011081477034 
		56 4.7952631452849266;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  0.78889328241348267;
	setAttr -s 3 ".kiy[2]"  0.61453020572662354;
	setAttr -s 3 ".kox[0:2]"  0.70469599962234497 1 0.78889328241348267;
	setAttr -s 3 ".koy[0:2]"  -0.70950937271118164 0 0.61453020572662354;
createNode animCurveTA -n "animCurveTA547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 7.5470594542643701 49 7.426947650892064 
		56 7.5470594542643701;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  0.99995964765548706;
	setAttr -s 3 ".kiy[2]"  0.0089839780703186989;
	setAttr -s 3 ".kox[0:2]"  0.99992173910140991 1 0.99995964765548706;
	setAttr -s 3 ".koy[0:2]"  -0.012510653585195541 0 0.0089839780703186989;
createNode animCurveTA -n "animCurveTA548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -1.2734920044837068 49 38.658854593423428 
		56 -1.2734920044837068;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  0.31747210025787354;
	setAttr -s 3 ".kiy[2]"  -0.94826763868331909;
	setAttr -s 3 ".kox[0:2]"  0.31747207045555115 1 0.31747210025787354;
	setAttr -s 3 ".koy[0:2]"  0.94826763868331909 0 -0.94826763868331909;
createNode animCurveTA -n "animCurveTA549";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 1.71628531942149 49 15.259155929614078 
		56 1.71628531942149;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  0.70252412557601929;
	setAttr -s 3 ".kiy[2]"  -0.71165990829467773;
	setAttr -s 3 ".kox[0:2]"  0.70252406597137451 1 0.70252412557601929;
	setAttr -s 3 ".koy[0:2]"  0.71165996789932251 0 -0.71165990829467773;
createNode animCurveTA -n "animCurveTA550";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 1.62960137906938 49 4.8584090103236726 
		56 1.62960137906938;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  0.97205227613449097;
	setAttr -s 3 ".kiy[2]"  -0.23476444184780121;
	setAttr -s 3 ".kox[0:2]"  0.97205227613449097 1 0.97205227613449097;
	setAttr -s 3 ".koy[0:2]"  0.2347644716501236 0 -0.23476444184780121;
createNode animCurveTA -n "animCurveTA551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -4.8714700432790456 49 -4.8714700432790456 
		56 -4.8714700432790456;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA552";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -11.783606204137085 49 -11.783606204137085 
		56 -11.783606204137085;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA553";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 7.5423825101935913 49 7.5423825101935913 
		56 7.5423825101935913;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0.62622119873454107 49 -2.6378329456714282 
		56 0.62622119873454107;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  0.97146481275558472;
	setAttr -s 3 ".kiy[2]"  0.23718374967575073;
	setAttr -s 3 ".kox[0:2]"  0.97147494554519653 1 0.97146481275558472;
	setAttr -s 3 ".koy[0:2]"  -0.23714220523834229 0 0.23718376457691193;
createNode animCurveTA -n "animCurveTA555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 -3.8840070108449005 49 -15.373865008987053 
		56 -3.8840070108449005;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  0.75839537382125854;
	setAttr -s 3 ".kiy[2]"  0.65179479122161865;
	setAttr -s 3 ".kox[0:2]"  0.73266148567199707 1 0.75839537382125854;
	setAttr -s 3 ".koy[0:2]"  -0.68059325218200684 0 0.65179479122161865;
createNode animCurveTA -n "animCurveTA556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 1.9840981620606046 49 1.0251622508232507 
		56 1.9840981620606046;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  0.99743741750717163;
	setAttr -s 3 ".kiy[2]"  0.071544423699378967;
	setAttr -s 3 ".kox[0:2]"  0.9973829984664917 1 0.99743741750717163;
	setAttr -s 3 ".koy[0:2]"  -0.072299078106880188 0 0.071544423699378967;
createNode animCurveTA -n "animCurveTA557";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0 49 0 56 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA558";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0 49 0 56 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA559";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 27.080064458283051 49 27.080064458283051 
		56 27.080064458283051;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA560";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 10.423754966968488 49 10.423754966968488 
		56 10.423754966968488;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA561";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 27.722848255843903 49 27.722848255843903 
		56 27.722848255843903;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA562";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 21.576484776388227 49 21.576484776388227 
		56 21.576484776388227;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA563";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0 49 0 56 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA564";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 0 49 0 56 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA565";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  45 27.911632519594587 49 27.911632519594587 
		56 27.911632519594587;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[0:2]"  1 9 9;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode clipLibrary -n "clipLibrary2";
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
select -ne :characterPartition;
select -ne :hyperGraphLayout;
	setAttr ".cch" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".img" -type "string" "";
	setAttr ".ims" 1;
select -ne :ikSystem;
	setAttr -s 3 ".sol";
connectAttr "apu_get_into_car_close_door.st" "clipLibrary2.st[0]";
connectAttr "apu_get_into_car_close_door.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL165.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL166.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL167.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL168.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL169.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA453.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU33.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU34.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU35.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU36.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU37.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU38.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU39.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU40.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA454.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA455.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA456.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL170.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL171.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL172.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL173.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL174.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL175.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA457.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA458.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA459.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL176.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL177.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL178.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA460.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA461.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA462.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA463.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA464.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA465.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA466.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA467.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA468.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTL179.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTL180.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTL181.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTL182.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTL183.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTL184.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL185.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL186.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL187.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTA469.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTA470.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTA471.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTA472.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTA473.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTA474.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA475.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA476.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA477.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA478.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA479.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA480.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA481.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA482.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA483.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA484.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA485.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA486.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA487.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA488.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA489.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA490.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA491.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA492.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA493.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA494.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA495.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA496.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA497.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTL188.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTL189.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTL190.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA498.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA499.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA500.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL191.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL192.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL193.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA501.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA502.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA503.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL194.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL195.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL196.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA504.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA505.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA506.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL197.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL198.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL199.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA507.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA508.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA509.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL200.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL201.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL202.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTL203.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTL204.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTL205.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTA510.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTA511.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTA512.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTA513.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTA514.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTA515.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA516.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA517.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA518.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA519.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA520.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA521.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA522.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA523.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA524.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA525.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA526.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA527.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA528.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA529.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA530.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA531.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA532.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA533.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA534.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA535.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA536.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA537.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA538.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA539.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA540.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA541.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA542.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA543.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA544.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA545.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA546.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA547.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA548.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA549.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA550.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA551.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA552.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA553.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA554.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA555.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA556.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA557.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA558.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA559.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA560.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA561.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA562.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA563.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA564.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA565.a" "clipLibrary2.cel[0].cev[161].cevr";
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
// End of apu-m_get_into_car_close_door.ma
