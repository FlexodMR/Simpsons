//Maya ASCII 4.0 scene
//Name: cpd_hit_by_car_front.ma
//Last modified: Thu, Aug 01, 2002 01:57:37 PM
requires maya "4.0";
requires "p3dDeformer" "17.1.1.0";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dSimpleShader" "17.1";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "cpd_hit_by_car_frontSource";
	setAttr ".ihi" 0;
	setAttr ".du" 30;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL311";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 22 0 25 0 29 0;
	setAttr -s 5 ".kit[1:4]"  1 9 1 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL312";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 22 0 25 0 29 0;
	setAttr -s 5 ".kit[1:4]"  1 9 1 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.014638358985086029 1 -0.0085218328270189898 
		2 -0.0034436192607441391 3 -0.00042513872510895816 4 0.0016703972452707283 
		5 0.0029653646221064443 6 0.0036512823531685695 7 0.0039435403926660036 8 
		0.004000321221968044 9 0.0039798073224439918 10 0.0040401811754631435 11 
		0.0040785674812332737 12 0.0040401811754631435 13 0.0040401811754631435 14 
		0.0040401811754631435 15 0.0040401811754631435 16 0.0040401811754631435 17 
		0.0040401811754631435 18 0.0040401811754631435 19 0.0040401811754631435 20 
		0.0041898175135969126 21 0.0043394538517306826 22 0.0040401811754631435 23 
		0.0028217138390262729 24 0.0011543374779989016 25 0 26 -0.00032465741284406694 
		27 -0.00028858436697250397 28 -0.00010821913761468887 29 0 30 0;
createNode animCurveTL -n "animCurveTL314";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 -0.79247329504823771 1 -0.70116040591487006 
		2 -0.64150780421902287 3 -0.64199840212209891 4 -0.67063147481980689 5 -0.7316624091038918 
		6 -0.82573593722328886 7 -0.94106628168763662 8 -1.0632630646797359 9 -1.1779359083823868 
		10 -1.2706944349783902 11 -1.2828625330953596 12 -1.2706944349783902 13 -1.3120458324361328 
		14 -1.3659893121500164 15 -1.412355354038227 16 -1.4428430800796741 17 -1.4669116512622753 
		18 -1.4910316060177291 19 -1.5216734827777336 20 -1.5627546735922406 21 -1.6115959978079863 
		22 -1.6647731348018453 23 -1.7302987829760443 24 -1.8001602453940879 25 -1.8468951084247687 
		26 -1.8615299102459795 27 -1.8599038211547338 28 -1.8517733756985055 29 -1.8468951084247687 
		30 -1.8468951084247687;
createNode animCurveTA -n "animCurveTA926";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0;
createNode animCurveTU -n "animCurveTU49";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 22 0 25 0 29 0;
	setAttr -s 5 ".kit[0:4]"  9 3 3 3 9;
	setAttr -s 5 ".kot[0:4]"  9 3 3 3 9;
createNode animCurveTU -n "animCurveTU50";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 22 0 25 0 29 0;
	setAttr -s 5 ".kit[0:4]"  9 3 3 3 9;
	setAttr -s 5 ".kot[0:4]"  9 3 3 3 9;
createNode animCurveTU -n "animCurveTU51";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 22 0 25 0 29 0;
	setAttr -s 5 ".kit[0:4]"  9 3 3 3 9;
	setAttr -s 5 ".kot[0:4]"  9 3 3 3 9;
createNode animCurveTU -n "animCurveTU52";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 22 0 25 0 29 0;
	setAttr -s 5 ".kit[0:4]"  9 3 3 3 9;
	setAttr -s 5 ".kot[0:4]"  9 3 3 3 9;
createNode animCurveTU -n "animCurveTU53";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 20 1 22 1 25 0 29 0;
	setAttr -s 5 ".kit[0:4]"  9 3 3 3 9;
	setAttr -s 5 ".kot[0:4]"  9 3 3 3 9;
createNode animCurveTU -n "animCurveTU54";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 20 1 22 1 25 0 29 0;
	setAttr -s 5 ".kit[0:4]"  9 3 3 3 9;
	setAttr -s 5 ".kot[0:4]"  9 3 3 3 9;
createNode animCurveTU -n "animCurveTU55";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 22 0 25 1 29 1;
	setAttr -s 5 ".kit[0:4]"  9 3 3 3 9;
	setAttr -s 5 ".kot[0:4]"  9 3 3 3 9;
createNode animCurveTU -n "animCurveTU56";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 22 0 25 1 29 1;
	setAttr -s 5 ".kit[0:4]"  9 3 3 3 9;
	setAttr -s 5 ".kot[0:4]"  9 3 3 3 9;
createNode animCurveTA -n "animCurveTA927";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  9 3 3 9;
createNode animCurveTA -n "animCurveTA928";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  9 3 3 9;
createNode animCurveTA -n "animCurveTA929";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[0:3]"  9 3 3 9;
	setAttr -s 4 ".kot[0:3]"  9 3 3 9;
createNode animCurveTL -n "animCurveTL316";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 22 0 25 0 29 0;
	setAttr -s 5 ".kit[0:4]"  9 3 3 3 9;
	setAttr -s 5 ".kot[0:4]"  9 3 3 3 9;
createNode animCurveTL -n "animCurveTL317";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 22 0 25 0 29 0;
	setAttr -s 5 ".kit[0:4]"  9 3 3 3 9;
	setAttr -s 5 ".kot[0:4]"  9 3 3 3 9;
createNode animCurveTL -n "animCurveTL318";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 20 0 22 0 25 0 29 0;
	setAttr -s 5 ".kit[0:4]"  9 3 3 3 9;
	setAttr -s 5 ".kot[0:4]"  9 3 3 3 9;
createNode animCurveTL -n "animCurveTL319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.19763288944005308 2 -0.19763288944005308 
		5 -0.19763288944005308 10 -0.17437811750381982 12 -0.17645694635008677 15 
		-0.17645694635008677 19 -0.17645694635008677 22 -0.17645694635008677 25 -0.34830366363129989 
		29 -0.34830366363129989;
	setAttr -s 10 ".kit[1:9]"  3 3 9 9 9 9 9 
		9 9;
	setAttr -s 10 ".kot[1:9]"  3 3 9 9 9 9 9 
		9 9;
createNode animCurveTL -n "animCurveTL320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.189 2 0.21195678752765937 5 
		0.21195678752765937 10 1.1428006031135964 12 0.73730070866316066 15 0.89717684739909342 
		19 1.1584407225476501 22 0.28983332092491493 25 0.19118070920231398 29 0.19118070920231398;
	setAttr -s 10 ".kit[1:9]"  3 3 9 9 9 9 9 
		9 9;
	setAttr -s 10 ".kot[1:9]"  3 3 9 9 9 9 9 
		9 9;
createNode animCurveTL -n "animCurveTL321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1.5269132931745397 2 -1.3214907553041428 
		5 -1.3214907553041428 10 -2.3849574794155526 12 -2.3594745823643239 15 -2.5421901694911035 
		19 -2.798615824729505 22 -3.2787505693450867 25 -3.5550835573549859 29 -3.5550835573549859;
	setAttr -s 10 ".kit[1:9]"  3 3 9 9 9 9 9 
		9 9;
	setAttr -s 10 ".kot[1:9]"  3 3 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA930";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -31.548014841396498 2 0 5 0 10 
		-89.675227039431803 12 -27.595959067019745 15 0.21801381617811239 19 -22.535152420394311 
		22 -22.535152420394311 25 -3.3595522507325413 29 -3.3595522507325413;
	setAttr -s 10 ".kit[1:9]"  3 3 9 9 9 9 9 
		9 9;
	setAttr -s 10 ".kot[1:9]"  3 3 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA931";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 5 0 10 0 12 0 15 0 19 0 
		22 0 25 -4.9396511688497009 29 -4.9396511688497009;
createNode animCurveTA -n "animCurveTA932";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 5 0 10 0 12 0 15 0 19 0 
		22 0 25 1.4972445100027125 29 1.4972445100027125;
createNode animCurveTL -n "animCurveTL322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.19697756422115981 2 0.16123877199057202 
		5 0.25300619704434296 10 0.29185150429015561 12 0.31758716802195641 15 0.31758716802195641 
		19 0.31758716802195641 22 0.31758716802195641 25 0.29827657820566539 29 0.29827657820566539;
createNode animCurveTL -n "animCurveTL323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.49095526767731257 2 0.30624379531570617 
		5 0.61089537625919721 10 0.55491014289282381 12 0.41273784791994272 15 0.89236626412774001 
		19 0.75205788673314433 22 0.22390966765600395 25 0.19600000000000001 29 0.19600000000000001;
createNode animCurveTL -n "animCurveTL324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -2.4248643925452704 2 -1.6701411952172727 
		5 -1.1936943268501192 10 -2.2722692717494399 12 -2.4210529919365769 15 -2.7236756831153053 
		19 -3.0236453175451334 22 -3.4644963103285322 25 -3.5996665602180626 29 -3.5996665602180626;
createNode animCurveTA -n "animCurveTA933";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 72.51831712904297 2 48.955541083724086 
		5 -3.9320360584068554 10 -39.225251334374214 12 5.4760876434928472 15 5.6175156500276104 
		19 25.211350838126936 22 1.4415482405103193 25 -0.022973885644723264 29 -0.022973885644723264;
createNode animCurveTA -n "animCurveTA934";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 5 0 10 0 12 0 15 0 19 0 
		22 0 25 -4.6882558815768478 29 -4.6882558815768478;
createNode animCurveTA -n "animCurveTA935";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 5 0 10 0 12 0 15 0 19 0 
		22 0 25 -0.16613472175511138 29 -0.16613472175511138;
createNode animCurveTA -n "animCurveTA936";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA937";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA938";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA939";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA940";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA941";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA942";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA943";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA944";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA945";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA946";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA947";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 5 0 10 0 12 0 15 0 19 0 
		22 0 25 -0.22333560679749456 29 -0.22333560679749456;
createNode animCurveTL -n "animCurveTL326";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 5 0 10 0 12 0 15 0 19 0 
		22 0 25 0.0047180449320975452 29 0.0047180449320975452;
createNode animCurveTL -n "animCurveTL327";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 2 1 5 1 10 1 12 1 15 1 19 1 
		22 1 25 1.0196125091168922 29 1.0196125091168922;
createNode animCurveTL -n "animCurveTL328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 5 0 10 0 12 0 15 0 19 0 
		22 0 25 0.22315575876557764 29 0.22315575876557764;
createNode animCurveTL -n "animCurveTL329";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 5 0 10 0 12 0 15 0 19 0 
		22 0 25 0.0006565739970363771 29 0.0006565739970363771;
createNode animCurveTL -n "animCurveTL330";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 2 1 5 1 10 1 12 1 15 1 19 1 
		22 1 25 0.98169956815627235 29 0.98169956815627235;
createNode animCurveTL -n "animCurveTL331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.033041213165890024 2 -0.0077728219517184515 
		5 0.0066933216143579997 10 0.0091193615065254061 12 0.0091193615065254061 
		15 0.0091193615065254061 19 0.0091193615065254061 22 0.0091193615065254061 
		25 0 29 0;
createNode animCurveTL -n "animCurveTL332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.86191433053168653 2 0.68531953232099319 
		5 0.84649195757100448 10 0.52907504014839246 12 0.52907504014839257 15 1.1514500087989867 
		19 1.2869201662834238 22 0.73258277931816107 25 0.33680928523177694 29 0.37858032454604201;
createNode animCurveTL -n "animCurveTL333";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1.7887441547677139 2 -1.4479899098237758 
		5 -1.6514838616337053 10 -2.8681688799685099 12 -2.8681688799685099 15 -3.1879211574403725 
		19 -3.4346703728584571 22 -3.7576701101453058 25 -4.1687497235636153 29 -4.1687497235636153;
createNode animCurveTA -n "animCurveTA948";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 20.950825280283915 2 23.686988860744673 
		5 -20.451217483196501 10 -117.84381686362197 12 -122.35138681083153 15 -99.171606951449704 
		19 -68.522598721536568 22 -55.788555672989702 25 -46.5808052095866 29 -51.320485913586595;
createNode animCurveTA -n "animCurveTA949";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -7.5734518508549122 2 9.3491547302982809 
		5 11.948637237067912 10 11.948637237067988 12 11.948637237067981 15 5.7219641580000298 
		19 5.7219641580000413 22 5.721964158000044 25 0.8849959245695731 29 0.8849959245695731;
createNode animCurveTA -n "animCurveTA950";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 -1.4726187357019898 5 -1.4726187357019873 
		10 -1.4726187357019895 12 -1.47261873570199 15 -0.44683864569923853 19 -0.44683864569924076 
		22 -0.4468386456992412 25 0.88511203159019169 29 0.88511203159019147;
createNode animCurveTA -n "animCurveTA951";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA952";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA953";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 4.0984482521620249 
		29 4.0984482521620249;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  0.81333768367767334 1;
	setAttr -s 4 ".kiy[2:3]"  0.58179193735122681 0;
	setAttr -s 4 ".kox[1:3]"  0.81333768367767334 0.95608192682266235 
		1;
	setAttr -s 4 ".koy[1:3]"  0.58179193735122681 0.29309955239295959 
		0;
createNode animCurveTA -n "animCurveTA954";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 18.588300303494186 
		29 18.588300303494186;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  0.29456019401550293 1;
	setAttr -s 4 ".kiy[2:3]"  0.95563292503356934 0;
	setAttr -s 4 ".kox[1:3]"  0.29456019401550293 0.58388584852218628 
		1;
	setAttr -s 4 ".koy[1:3]"  0.95563292503356934 0.81183576583862305 
		0;
createNode animCurveTA -n "animCurveTA955";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA956";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA957";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 -22.686733334985114 
		29 -22.686733334985114;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  0.24486361443996429 1;
	setAttr -s 4 ".kiy[2:3]"  -0.96955752372741699 0;
	setAttr -s 4 ".kox[1:3]"  0.24486361443996429 0.50769364833831787 
		1;
	setAttr -s 4 ".koy[1:3]"  -0.96955752372741699 -0.86153769493103027 
		0;
createNode animCurveTA -n "animCurveTA958";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA959";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA960";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 1.0579251312417479e-005 
		29 1.0579251312417479e-005;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA961";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA962";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA963";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 4.0984482535121209 
		29 4.0984482535121209;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  0.81333768367767334 1;
	setAttr -s 4 ".kiy[2:3]"  0.58179193735122681 0;
	setAttr -s 4 ".kox[1:3]"  0.81333768367767334 0.95608192682266235 
		1;
	setAttr -s 4 ".koy[1:3]"  0.58179193735122681 0.29309955239295959 
		0;
createNode animCurveTA -n "animCurveTA964";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 18.588300300216805 
		29 18.588300300216805;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  0.29456019401550293 1;
	setAttr -s 4 ".kiy[2:3]"  0.95563292503356934 0;
	setAttr -s 4 ".kox[1:3]"  0.29456019401550293 0.58388584852218628 
		1;
	setAttr -s 4 ".koy[1:3]"  0.95563292503356934 0.81183576583862305 
		0;
createNode animCurveTA -n "animCurveTA965";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA966";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA967";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 -22.686733333057838 
		29 -22.686733333057838;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  0.24486361443996429 1;
	setAttr -s 4 ".kiy[2:3]"  -0.96955752372741699 0;
	setAttr -s 4 ".kox[1:3]"  0.24486361443996429 0.50769364833831787 
		1;
	setAttr -s 4 ".koy[1:3]"  -0.96955752372741699 -0.86153769493103027 
		0;
createNode animCurveTA -n "animCurveTA968";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA969";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA970";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 1.0579251312417479e-005 
		29 1.0579251312417479e-005;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA971";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA972";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA973";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 2.4782236286598103 
		29 2.4782236286598103;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  0.91782385110855103 1;
	setAttr -s 4 ".kiy[2:3]"  0.39698782563209534 0;
	setAttr -s 4 ".kox[1:3]"  0.91782385110855103 0.98324930667877197 
		1;
	setAttr -s 4 ".koy[1:3]"  0.39698782563209534 0.18226560950279236 
		0;
createNode animCurveTA -n "animCurveTA974";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA975";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA976";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL334";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.99214331096561381 20 -0.99214331096561381 
		22 -0.99214331096561381 25 -0.69163884744780491 29 -0.69163884744780491;
	setAttr -s 5 ".kit[1:4]"  1 9 1 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 0.0055461442098021507 0.0033277194015681744 
		1;
	setAttr -s 5 ".kiy[1:4]"  0 0.99998462200164795 0.99999445676803589 
		0;
	setAttr -s 5 ".kox[1:4]"  1 0.0055461442098021507 0.0077644870616495609 
		1;
	setAttr -s 5 ".koy[1:4]"  0 0.99998462200164795 0.99996984004974365 
		0;
createNode animCurveTL -n "animCurveTL335";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.033841737269357866 20 -0.033841737269357866 
		22 -0.033841737269357866 25 0.24376503020897994 29 0.24376503020897994;
	setAttr -s 5 ".kit[1:4]"  1 9 1 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 0.0060035879723727703 0.0036021943669766188 
		1;
	setAttr -s 5 ".kiy[1:4]"  0 0.99998199939727783 0.99999350309371948 
		0;
	setAttr -s 5 ".kox[1:4]"  1 0.0060035879723727703 0.0084048779681324959 
		1;
	setAttr -s 5 ".koy[1:4]"  0 0.99998199939727783 0.99996465444564819 
		0;
createNode animCurveTL -n "animCurveTL336";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.027201153963313806 20 -0.027201153963313806 
		22 -0.027201153963313806 25 0.44841910314659961 29 0.44841910314659961;
	setAttr -s 5 ".kit[1:4]"  1 9 1 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 0.0035041745286434889 0.0021025130990892649 
		1;
	setAttr -s 5 ".kiy[1:4]"  0 0.99999386072158813 0.99999779462814331 
		0;
	setAttr -s 5 ".kox[1:4]"  1 0.0035041745286434889 0.004905815701931715 
		1;
	setAttr -s 5 ".koy[1:4]"  0 0.99999386072158813 0.99998795986175537 
		0;
createNode animCurveTA -n "animCurveTA977";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 -70.759742713658738 
		29 -70.759742713658738;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  0.080708138644695282 1;
	setAttr -s 4 ".kiy[2:3]"  -0.9967377781867981 0;
	setAttr -s 4 ".kox[1:3]"  0.080708138644695282 0.18565082550048828 
		1;
	setAttr -s 4 ".koy[1:3]"  -0.9967377781867981 -0.98261576890945435 
		0;
createNode animCurveTA -n "animCurveTA978";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 26.623081280451803 
		29 26.623081280451803;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  0.21039380133152008 1;
	setAttr -s 4 ".kiy[2:3]"  0.97761672735214233 0;
	setAttr -s 4 ".kox[1:3]"  0.21039380133152008 0.44875633716583252 
		1;
	setAttr -s 4 ".koy[1:3]"  0.97761672735214233 0.89365416765213013 
		0;
createNode animCurveTA -n "animCurveTA979";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 -49.096653183739235 
		29 -49.096653183739235;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  0.11591333895921707 1;
	setAttr -s 4 ".kiy[2:3]"  -0.99325931072235107 0;
	setAttr -s 4 ".kox[1:3]"  0.11591333895921707 0.2627335786819458 
		1;
	setAttr -s 4 ".koy[1:3]"  -0.99325931072235107 -0.96486842632293701 
		0;
createNode animCurveTL -n "animCurveTL337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.99214413619678865 20 0.99214413619678865 
		22 0.99214413619678865 25 0.71012400136723108 29 0.71012400136723108;
	setAttr -s 5 ".kit[1:4]"  1 9 1 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 0.0059096403419971466 0.003545823972672224 
		1;
	setAttr -s 5 ".kiy[1:4]"  0 -0.99998253583908081 -0.99999374151229858 
		0;
	setAttr -s 5 ".kox[1:4]"  1 0.0059096403419971466 0.0082733575254678726 
		1;
	setAttr -s 5 ".koy[1:4]"  0 -0.99998253583908081 -0.99996578693389893 
		0;
createNode animCurveTL -n "animCurveTL338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.033851474715545553 20 -0.033851474715545553 
		22 -0.033851474715545553 25 0.47076628974155943 29 0.47076628974155943;
	setAttr -s 5 ".kit[1:4]"  1 9 1 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 0.0033028118778020144 0.0019816940184682608 
		1;
	setAttr -s 5 ".kiy[1:4]"  0 0.99999451637268066 0.99999803304672241 
		0;
	setAttr -s 5 ".kox[1:4]"  1 0.0033028118778020144 0.0046239127404987812 
		1;
	setAttr -s 5 ".koy[1:4]"  0 0.99999451637268066 0.99998933076858521 
		0;
createNode animCurveTL -n "animCurveTL339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.0272011762672867 20 -0.0272011762672867 
		22 -0.0272011762672867 25 0.075519476331700294 29 0.075519476331700294;
	setAttr -s 5 ".kit[1:4]"  1 9 1 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 0.016223099082708359 0.0097346799448132515 
		1;
	setAttr -s 5 ".kiy[1:4]"  0 0.99986839294433594 0.99995261430740356 
		0;
	setAttr -s 5 ".kox[1:4]"  1 0.016223099082708359 0.022709470242261887 
		1;
	setAttr -s 5 ".koy[1:4]"  0 0.99986839294433594 0.99974209070205688 
		0;
createNode animCurveTA -n "animCurveTA980";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 -78.560435502307485 
		29 -78.560435502307485;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  0.072738915681838989 1;
	setAttr -s 4 ".kiy[2:3]"  -0.99735099077224731 0;
	setAttr -s 4 ".kox[1:3]"  0.072738915681838989 0.16776306927204132 
		1;
	setAttr -s 4 ".koy[1:3]"  -0.99735099077224731 -0.98582732677459717 
		0;
createNode animCurveTA -n "animCurveTA981";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 -29.584258420035471 
		29 -29.584258420035471;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  0.19013682007789612 1;
	setAttr -s 4 ".kiy[2:3]"  -0.98175758123397827 0;
	setAttr -s 4 ".kox[1:3]"  0.19013682007789612 0.41180118918418884 
		1;
	setAttr -s 4 ".koy[1:3]"  -0.98175758123397827 -0.91127371788024902 
		0;
createNode animCurveTA -n "animCurveTA982";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 60.92594460387344 29 
		60.92594460387344;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  0.093628570437431335 1;
	setAttr -s 4 ".kiy[2:3]"  0.99560719728469849 0;
	setAttr -s 4 ".kox[1:3]"  0.093628570437431335 0.2143312394618988 
		1;
	setAttr -s 4 ".koy[1:3]"  0.99560719728469849 0.97676104307174683 
		0;
createNode animCurveTL -n "animCurveTL340";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.3705977767760478 10 -1.3705977767760478 
		20 -1.3705977767760478 22 -1.6965247282561242 25 -1.0734194700796693 29 -0.69415268877966596;
	setAttr -s 6 ".kit[2:5]"  1 9 9 9;
	setAttr -s 6 ".kot[2:5]"  1 9 9 9;
	setAttr -s 6 ".kix[2:5]"  1 0.0056082168594002724 0.0023278053849935532 
		0.0035155329387634993;
	setAttr -s 6 ".kiy[2:5]"  0 0.9999842643737793 0.99999731779098511 
		0.99999380111694336;
	setAttr -s 6 ".kox[2:5]"  1 0.0056082168594002724 0.0023278053849935532 
		0.0035155329387634993;
	setAttr -s 6 ".koy[2:5]"  0 0.9999842643737793 0.99999731779098511 
		0.99999380111694336;
createNode animCurveTL -n "animCurveTL341";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.1618658070195953 10 2.1618658070195953 
		20 2.1618658070195953 22 1.4709436604587629 25 0.5669314000074378 29 0.25677228768617882;
	setAttr -s 6 ".kit[2:5]"  1 9 9 9;
	setAttr -s 6 ".kot[2:5]"  1 9 9 9;
	setAttr -s 6 ".kix[2:5]"  1 0.0010449745459482074 0.0019217459484934807 
		0.0042988285422325134;
	setAttr -s 6 ".kiy[2:5]"  0 -0.99999946355819702 -0.99999815225601196 
		-0.99999076128005981;
	setAttr -s 6 ".kox[2:5]"  1 0.0010449745459482074 0.0019217459484934807 
		0.0042988285422325134;
	setAttr -s 6 ".koy[2:5]"  0 -0.99999946355819702 -0.99999815225601196 
		-0.99999076128005981;
createNode animCurveTL -n "animCurveTL342";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.12044246479037771 10 -0.12044246479037771 
		20 -0.12044246479037771 22 -4.8858104665343749 25 -5.513803357309877 29 -5.8749380799072348;
	setAttr -s 6 ".kit[2:5]"  1 9 9 9;
	setAttr -s 6 ".kot[2:5]"  1 9 9 9;
	setAttr -s 6 ".kix[2:5]"  1 0.00030902188154868782 0.0023589744232594967 
		0.0036920404527336359;
	setAttr -s 6 ".kiy[2:5]"  0 -0.99999994039535522 -0.99999719858169556 
		-0.99999320507049561;
	setAttr -s 6 ".kox[2:5]"  1 0.00030902188154868782 0.0023589744232594967 
		0.0036920404527336359;
	setAttr -s 6 ".koy[2:5]"  0 -0.99999994039535522 -0.99999719858169556 
		-0.99999320507049561;
createNode animCurveTA -n "animCurveTA983";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 22 0 25 -9.8212427008227507 
		29 -9.8212427008227507;
	setAttr -s 5 ".kit[3:4]"  3 9;
	setAttr -s 5 ".kot[2:4]"  1 3 9;
	setAttr -s 5 ".kox[2:4]"  0.50390511751174927 1 1;
	setAttr -s 5 ".koy[2:4]"  -0.86375898122787476 0 0;
createNode animCurveTA -n "animCurveTA984";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 22 0 25 8.8589084522817085 
		29 8.8589084522817085;
	setAttr -s 5 ".kit[3:4]"  3 9;
	setAttr -s 5 ".kot[2:4]"  1 3 9;
	setAttr -s 5 ".kox[2:4]"  0.54307377338409424 1 1;
	setAttr -s 5 ".koy[2:4]"  0.83968496322631836 0 0;
createNode animCurveTA -n "animCurveTA985";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 22 0 25 4.296053949957793 
		29 4.296053949957793;
	setAttr -s 5 ".kit[3:4]"  3 9;
	setAttr -s 5 ".kot[2:4]"  1 3 9;
	setAttr -s 5 ".kox[2:4]"  0.8000757098197937 1 1;
	setAttr -s 5 ".koy[2:4]"  0.5998990535736084 0 0;
createNode animCurveTL -n "animCurveTL343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.3705978542308779 10 1.3705978542308779 
		20 1.3705978542308779 22 1.3705978542308779 25 0.83980188004008882 29 0.83980188004008882;
	setAttr -s 6 ".kit[2:5]"  1 9 3 9;
	setAttr -s 6 ".kot[2:5]"  1 9 3 9;
	setAttr -s 6 ".kix[2:5]"  1 0.0031399228610098362 1 1;
	setAttr -s 6 ".kiy[2:5]"  0 -0.99999505281448364 0 0;
	setAttr -s 6 ".kox[2:5]"  1 0.0031399228610098362 1 1;
	setAttr -s 6 ".koy[2:5]"  0 -0.99999505281448364 0 0;
createNode animCurveTL -n "animCurveTL344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.1618621235956237 10 2.1618621235956237 
		20 2.1618621235956237 22 2.1618621235956237 25 0.18904845089899255 29 0.18904845089899255;
	setAttr -s 6 ".kit[2:5]"  1 9 3 9;
	setAttr -s 6 ".kot[2:5]"  1 9 3 9;
	setAttr -s 6 ".kix[2:5]"  1 0.00084481673547998071 1 1;
	setAttr -s 6 ".kiy[2:5]"  0 -0.99999964237213135 0 0;
	setAttr -s 6 ".kox[2:5]"  1 0.00084481673547998071 1 1;
	setAttr -s 6 ".koy[2:5]"  0 -0.99999964237213135 0 0;
createNode animCurveTL -n "animCurveTL345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.12044250833667494 10 -0.12044250833667494 
		20 -0.12044250833667494 22 -0.12044250833667494 25 -5.983030082292613 29 
		-5.983030082292613;
	setAttr -s 6 ".kit[2:5]"  1 9 3 9;
	setAttr -s 6 ".kot[2:5]"  1 9 3 9;
	setAttr -s 6 ".kix[2:5]"  1 0.00028428857331164181 1 1;
	setAttr -s 6 ".kiy[2:5]"  0 -0.99999994039535522 0 0;
	setAttr -s 6 ".kox[2:5]"  1 0.00028428857331164181 1 1;
	setAttr -s 6 ".koy[2:5]"  0 -0.99999994039535522 0 0;
createNode animCurveTA -n "animCurveTA986";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 22 0 25 -47.334284439592878 
		29 -47.334284439592878;
	setAttr -s 5 ".kit[3:4]"  3 9;
	setAttr -s 5 ".kot[2:4]"  1 3 9;
	setAttr -s 5 ".kox[2:4]"  0.12016785144805908 1 1;
	setAttr -s 5 ".koy[2:4]"  -0.99275356531143188 0 0;
createNode animCurveTA -n "animCurveTA987";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 22 0 25 37.043101738907701 
		29 37.043101738907701;
	setAttr -s 5 ".kit[3:4]"  3 9;
	setAttr -s 5 ".kot[2:4]"  1 3 9;
	setAttr -s 5 ".kox[2:4]"  0.15285564959049225 1 1;
	setAttr -s 5 ".koy[2:4]"  0.98824852705001831 0 0;
createNode animCurveTA -n "animCurveTA988";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 10 0 22 0 25 -52.740024725895566 
		29 -52.740024725895566;
	setAttr -s 5 ".kit[3:4]"  3 9;
	setAttr -s 5 ".kot[2:4]"  1 3 9;
	setAttr -s 5 ".kox[2:4]"  0.108002670109272 1 1;
	setAttr -s 5 ".koy[2:4]"  -0.99415057897567749 0 0;
createNode animCurveTL -n "animCurveTL346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 0 20 0 22 0 25 0.99925943057965894 
		29 0.99925943057965894;
	setAttr -s 6 ".kit[2:5]"  1 9 9 9;
	setAttr -s 6 ".kot[2:5]"  1 9 9 9;
	setAttr -s 6 ".kix[2:5]"  1 0.0016678995452821255 0.002335056196898222 
		1;
	setAttr -s 6 ".kiy[2:5]"  0 0.99999862909317017 0.99999725818634033 
		0;
	setAttr -s 6 ".kox[2:5]"  1 0.0016678995452821255 0.002335056196898222 
		1;
	setAttr -s 6 ".koy[2:5]"  0 0.99999862909317017 0.99999725818634033 
		0;
createNode animCurveTL -n "animCurveTL347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 0 20 0 22 0 25 -1.1241231302067372 
		29 -1.1241231302067372;
	setAttr -s 6 ".kit[2:5]"  1 9 9 9;
	setAttr -s 6 ".kot[2:5]"  1 9 9 9;
	setAttr -s 6 ".kix[2:5]"  1 0.0014826355036348104 0.0020756875164806843 
		1;
	setAttr -s 6 ".kiy[2:5]"  0 -0.99999892711639404 -0.99999785423278809 
		0;
	setAttr -s 6 ".kox[2:5]"  1 0.0014826355036348104 0.0020756875164806843 
		1;
	setAttr -s 6 ".koy[2:5]"  0 -0.99999892711639404 -0.99999785423278809 
		0;
createNode animCurveTL -n "animCurveTL348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1 10 -1 20 -1 22 -1 25 -2.0075305717115923 
		29 -2.0075305717115923;
	setAttr -s 6 ".kit[2:5]"  1 9 9 9;
	setAttr -s 6 ".kot[2:5]"  1 9 9 9;
	setAttr -s 6 ".kix[2:5]"  1 0.0016542071243748069 0.0023158870171755552 
		1;
	setAttr -s 6 ".kiy[2:5]"  0 -0.99999862909317017 -0.99999731779098511 
		0;
	setAttr -s 6 ".kox[2:5]"  1 0.0016542071243748069 0.0023158870171755552 
		1;
	setAttr -s 6 ".koy[2:5]"  0 -0.99999862909317017 -0.99999731779098511 
		0;
createNode animCurveTL -n "animCurveTL349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 0 20 0 22 0 25 -0.59788775323863297 
		29 -0.59788775323863297;
	setAttr -s 6 ".kit[2:5]"  1 9 9 9;
	setAttr -s 6 ".kot[2:5]"  1 9 9 9;
	setAttr -s 6 ".kix[2:5]"  1 0.0027875802479684353 0.0039025980513542891 
		1;
	setAttr -s 6 ".kiy[2:5]"  0 -0.9999961256980896 -0.99999237060546875 
		0;
	setAttr -s 6 ".kox[2:5]"  1 0.0027875802479684353 0.0039025980513542891 
		1;
	setAttr -s 6 ".koy[2:5]"  0 -0.9999961256980896 -0.99999237060546875 
		0;
createNode animCurveTL -n "animCurveTL350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 10 0 20 0 22 0 25 -1.6361478719279683 
		29 -1.6361478719279683;
	setAttr -s 6 ".kit[2:5]"  1 9 9 9;
	setAttr -s 6 ".kot[2:5]"  1 9 9 9;
	setAttr -s 6 ".kix[2:5]"  1 0.0010186523431912065 0.0014261124888435006 
		1;
	setAttr -s 6 ".kiy[2:5]"  0 -0.99999946355819702 -0.99999898672103882 
		0;
	setAttr -s 6 ".kox[2:5]"  1 0.0010186523431912065 0.0014261124888435006 
		1;
	setAttr -s 6 ".koy[2:5]"  0 -0.99999946355819702 -0.99999898672103882 
		0;
createNode animCurveTL -n "animCurveTL351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1 10 -1 20 -1 22 -1 25 -2.2967427684127548 
		29 -2.2967427684127548;
	setAttr -s 6 ".kit[2:5]"  1 9 9 9;
	setAttr -s 6 ".kot[2:5]"  1 9 9 9;
	setAttr -s 6 ".kix[2:5]"  1 0.0012852705549448729 0.0017993773799389601 
		1;
	setAttr -s 6 ".kiy[2:5]"  0 -0.99999916553497314 -0.99999839067459106 
		0;
	setAttr -s 6 ".kox[2:5]"  1 0.0012852705549448729 0.0017993773799389601 
		1;
	setAttr -s 6 ".koy[2:5]"  0 -0.99999916553497314 -0.99999839067459106 
		0;
createNode animCurveTA -n "animCurveTA989";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 52.637219839343977 2 -35.280552173416005 
		5 -55.670009807431882 10 -8.3722158444725974 12 6.8619270713577576 15 11.910122171492144 
		19 8.719760997765631 22 -0.86682362046053785 25 80.425561779386882 29 80.425561779386882;
createNode animCurveTA -n "animCurveTA990";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -24.480967171432493 2 2.5816969024663949 
		5 -13.611207391781139 10 -23.977773843939502 12 26.271568733472723 15 34.847436509543812 
		19 -19.172371927598537 22 -36.420165432649057 25 -30.44506412614497 29 -30.44506412614497;
createNode animCurveTA -n "animCurveTA991";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -64.344364641857084 2 53.251722291748415 
		5 27.497501682495685 10 33.682233492227084 12 -28.478653283920352 15 -57.340025714492775 
		19 -15.284065710194218 22 -37.142136265893669 25 -71.256105225350495 29 -71.256105225350495;
createNode animCurveTA -n "animCurveTA992";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -53.609443747430014 2 -29.573411147573808 
		5 -8.563012295375076 10 -25.419177015304644 12 35.50840155485146 15 26.194228625572833 
		19 30.531553251488187 22 -13.873454918735659 25 43.141146641774462 29 43.141146641774462;
createNode animCurveTA -n "animCurveTA993";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -25.27913794042524 2 2.3677661369630982 
		5 20.507370224920166 10 -41.133378951685579 12 18.534260088769848 15 1.6125065100282923 
		19 -38.582935464452937 22 -57.65471620728129 25 -34.275123249513904 29 -34.275123249513904;
createNode animCurveTA -n "animCurveTA994";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 57.594080128123679 2 84.877951062747869 
		5 107.09766021769482 10 27.16586626679436 12 2.2170566423766038 15 -44.957460230307618 
		19 -32.931696609933702 22 5.2163725894863555 25 -49.798186726856571 29 -49.798186726856571;
createNode animCurveTA -n "animCurveTA995";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 59.468287502559065 2 89.911651693682515 
		5 32.789921414575325 10 39.038962484432531 12 12.874514918270977 15 12.874514918270977 
		19 60.256622455879089 22 79.642588495982807 25 23.279099769107543 29 23.279099769107543;
createNode animCurveTA -n "animCurveTA996";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 59.305463658789549 2 60.185649943194235 
		5 3.2573665005240873 10 63.89762232629036 12 18.197981956320611 15 45.248375301206067 
		19 45.248375301206067 22 87.940749370014572 25 21.701008910528319 29 21.701008910528319;
createNode animCurveTA -n "animCurveTA997";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 18.476235154862632 2 -25.061733991251923 
		5 22.425089944480888 10 -54.236822617544803 12 -54.236822617544803 15 23.823134639673615 
		19 23.823134639673615 22 23.823134639673619 25 -11.431503848920924 29 -11.431503848920924;
createNode animCurveTA -n "animCurveTA998";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 10.082003051124275 2 10.082003051124259 
		5 28.721836935985287 10 -21.870691107419798 12 -21.870691107419802 15 -6.0806429538034328 
		19 -6.0806429538034328 22 -6.0806429538034346 25 56.613259276433965 29 56.613259276433965;
createNode animCurveTA -n "animCurveTA999";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -4.720189328892868 2 -4.7201893288928662 
		5 7.6266657808874898 10 15.410846653408852 12 15.410846653408855 15 10.96112701689211 
		19 10.96112701689211 22 10.961127016892112 25 13.131642679464067 29 13.131642679464067;
createNode animCurveTA -n "animCurveTA1000";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -11.342548829337773 2 -13.555270109330269 
		5 -18.847227132200882 10 2.0447427744579891 12 75.75473903343277 15 24.991091773627126 
		19 24.991091773627126 22 24.991091773627126 25 -35.828077252198852 29 -35.828077252198852;
createNode animCurveTA -n "animCurveTA1001";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 11.615881410206434 2 11.615881410206432 
		5 44.709551992010134 10 5.5429207840541235 12 -8.1079546283831778 15 -8.107954628383192 
		19 -8.107954628383192 22 -8.1079546283831938 25 7.8286751959834691 29 7.8286751959834691;
createNode animCurveTA -n "animCurveTA1002";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.32159281075535046 2 0.32159281075535068 
		5 -10.402617814119608 10 34.868956102818473 12 -15.142398251678113 15 -15.142398251678118 
		19 -15.142398251678118 22 -15.142398251678118 25 -17.722466912710736 29 -17.722466912710736;
createNode animCurveTA -n "animCurveTA1003";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 211.08602992604591 2 211.08602992604591 
		5 167.86899266541437 10 167.86899266541437 12 167.86899266541437 15 167.86899266541437 
		19 167.86899266541437 22 167.86899266541437 25 163.36425600523307 29 163.36425600523307;
createNode animCurveTA -n "animCurveTA1004";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 59.959644693642325 2 59.959644693642325 
		5 19.407819173437478 10 19.407819173437481 12 19.407819173437478 15 19.407819173437478 
		19 19.407819173437478 22 19.407819173437481 25 15.180891733866945 29 15.180891733866945;
createNode animCurveTA -n "animCurveTA1005";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 48.10646961869692 2 48.106469618696913 
		5 4.4751336445171193 10 4.4751336445171193 12 4.4751336445171193 15 4.4751336445171193 
		19 4.4751336445171193 22 4.4751336445171193 25 -0.072787087017037025 29 -0.072787087017037025;
createNode animCurveTA -n "animCurveTA1006";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 5 0 10 0 12 0 15 0 19 0 
		22 0 25 0 29 0;
createNode animCurveTA -n "animCurveTA1007";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 5 0 10 0 12 0 15 0 19 0 
		22 0 25 0 29 0;
createNode animCurveTA -n "animCurveTA1008";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 101.15442879205187 2 67.810939637714412 
		5 -11.433734901667266 10 -11.43373490166727 12 -11.433734901667266 15 -11.433734901667266 
		19 -11.433734901667266 22 -11.43373490166727 25 -19.69381977483518 29 -19.69381977483518;
createNode animCurveTA -n "animCurveTA1009";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1010";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1011";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 22 0 25 0 29 0;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA1012";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 27.705218915343313 22 27.70521891534332 
		25 27.70521891534332 29 27.70521891534332;
	setAttr -s 5 ".kit[3:4]"  1 9;
	setAttr -s 5 ".kot[2:4]"  1 9 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "animCurveTA1013";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 43.35103828268312 22 43.35103828268312 
		25 43.35103828268312 29 43.35103828268312;
	setAttr -s 5 ".kit[3:4]"  1 9;
	setAttr -s 5 ".kot[2:4]"  1 9 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "animCurveTA1014";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 54.23572299800319 22 54.235722998003197 
		25 54.235722998003197 29 54.235722998003197;
	setAttr -s 5 ".kit[3:4]"  1 9;
	setAttr -s 5 ".kot[2:4]"  1 9 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "animCurveTA1015";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 39.038703285259977 22 39.038703285259977 
		25 39.038703285259977 29 39.038703285259977;
	setAttr -s 5 ".kit[3:4]"  1 9;
	setAttr -s 5 ".kot[2:4]"  1 9 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "animCurveTA1016";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 72.755037061650995 22 72.755037061650995 
		25 72.755037061650995 29 72.755037061650995;
	setAttr -s 5 ".kit[3:4]"  1 9;
	setAttr -s 5 ".kot[2:4]"  1 9 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "animCurveTA1017";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2 38.926480273156798 22 38.926480273156798 
		25 38.926480273156798 29 38.926480273156798;
	setAttr -s 5 ".kit[3:4]"  1 9;
	setAttr -s 5 ".kot[2:4]"  1 9 9;
	setAttr -s 5 ".kix[3:4]"  1 1;
	setAttr -s 5 ".kiy[3:4]"  0 0;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTA -n "animCurveTA1018";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 5 0 10 0 12 0 15 0 19 0 
		22 0 25 0 29 0;
createNode animCurveTA -n "animCurveTA1019";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 5 0 10 0 12 0 15 0 19 0 
		22 0 25 0 29 0;
createNode animCurveTA -n "animCurveTA1020";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 81.622987204614233 2 -9.6043099083038648 
		5 -9.6043099083038648 10 -9.6043099083038648 12 -9.6043099083038648 15 -9.6043099083038648 
		19 -9.6043099083038648 22 -9.6043099083038648 25 -14.841309524368915 29 -14.841309524368915;
createNode animCurveTA -n "animCurveTA1021";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.2945941069882385 2 1.2945941069882381 
		5 3.1198943483277444 10 3.1198943483277448 12 3.1198943483277444 15 3.1198943483277444 
		19 3.1198943483277444 22 3.1198943483277444 25 3.1198943483277448 29 3.1198943483277448;
createNode animCurveTA -n "animCurveTA1022";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 3.3208811165553156 2 3.3208811165553147 
		5 1.7238169885910806 10 1.7238169885910808 12 1.7238169885910806 15 1.7238169885910806 
		19 1.7238169885910806 22 1.723816988591081 25 1.7238169885910808 29 1.7238169885910808;
createNode animCurveTA -n "animCurveTA1023";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -27.52582447785997 2 -27.525824477859967 
		5 12.268388134198538 10 12.268388134198538 12 12.268388134198538 15 12.268388134198538 
		19 12.268388134198538 22 12.268388134198538 25 12.268388134198538 29 12.268388134198538;
createNode animCurveTA -n "animCurveTA1024";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -8.7597363552835983 2 6.308963718970988 
		5 6.9103069920743438 10 6.2649641345144991 12 4.3792227256952083 15 -6.174601823043262 
		19 5.5003912180703773 22 0.41771815725513101 25 4.3455899438596957 29 4.5487561292321317;
createNode animCurveTA -n "animCurveTA1025";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 5.7322064377030788 5 4.9896665793491746 
		10 5.7802940471161621 12 7.3112839305619053 15 5.3349485649520059 19 7.3427228592247538 
		22 1.4517181918272679 25 -2.0211929929175145 29 -1.5083553877193399;
createNode animCurveTA -n "animCurveTA1026";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -8.9349579591731985 2 21.713029036968567 
		5 28.142527379210097 10 21.274336518663386 12 4.8458125891459387 15 -18.053793752528659 
		19 5.3515714667445593 22 16.50991249947349 25 9.1303904739519428 29 2.540615508187559;
createNode animCurveTA -n "animCurveTA1027";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 5 0 10 0 12 0 15 0 19 0 
		22 0 25 0 29 0;
createNode animCurveTA -n "animCurveTA1028";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 5 0 10 0 12 0 15 0 19 0 
		22 0 25 0 29 0;
createNode animCurveTA -n "animCurveTA1029";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 5 0 10 0 12 14.898647627575579 
		15 14.898647627575579 19 14.898647627575579 22 14.898647627575579 25 0 29 
		0;
createNode animCurveTA -n "animCurveTA1030";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 14.794623739018833 5 14.794623739018833 
		10 22.334659718447345 12 22.338466481041845 15 11.456752355681559 19 3.5955899922493053 
		22 3.5955899922493062 25 4.5948127575308497 29 3.9837240428089111;
createNode animCurveTA -n "animCurveTA1031";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -9.2427148064678804 2 22.395186436807986 
		5 22.395186436807986 10 14.888605045675133 12 14.882720778967039 15 24.202881440026243 
		19 4.6959726176734558 22 4.6959726176734575 25 6.2727765341536816 29 6.676633875432838;
createNode animCurveTA -n "animCurveTA1032";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -10.062830706779264 2 -0.5621560964572182 
		5 -0.5621560964572182 10 28.394145862336995 12 28.408964454747306 15 -3.2783717394768646 
		19 10.032621196260985 22 10.032621196260987 25 27.984443909870059 29 22.569305093982329;
createNode animCurveTA -n "animCurveTA1033";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 22.078247600383854 5 18.977509968842877 
		10 10.848910062280098 12 11.98685505624049 15 13.464379261934385 19 0.82664351209015052 
		22 0.8266435120901503 25 7.1522494975013187 29 7.1522494975013187;
createNode animCurveTA -n "animCurveTA1034";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 -9.6389434643346714 5 -14.961349670392833 
		10 -9.6857689857774609 12 -8.2276460027505074 15 -5.4447707464457205 19 -5.4419935515154378 
		22 -5.4419935515154378 25 -1.4349096479040127 29 -1.4349096479040127;
createNode animCurveTA -n "animCurveTA1035";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 5.671986885245901 2 7.1941842949003796 
		5 21.659909015129006 10 7.3113462838181782 12 0.012452880661499691 15 -12.349286551846278 
		19 5.8122340998814881 22 5.8122340998814881 25 26.122606478441046 29 26.122606478441046;
createNode animCurveTA -n "animCurveTA1036";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 5 0 10 0 12 0 15 0 19 0 
		22 0 25 0 29 0;
createNode animCurveTA -n "animCurveTA1037";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 5 0 10 0 12 0 15 0 19 0 
		22 0 25 0 29 0;
createNode animCurveTA -n "animCurveTA1038";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 90.838361755940937 2 21.472939016776969 
		5 21.472939016776969 10 21.472939016776973 12 21.472939016776969 15 21.472939016776969 
		19 21.472939016776969 22 21.472939016776973 25 16.736721183175977 29 16.736721183175977;
createNode animCurveTA -n "animCurveTA1039";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 226.18732352518956 2 226.18732352518956 
		5 184.42862383724446 10 184.42862383724446 12 184.42862383724446 15 184.42862383724446 
		19 184.42862383724446 22 184.42862383724446 25 180.07589766300973 29 180.07589766300973;
createNode animCurveTA -n "animCurveTA1040";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 42.116293762219598 2 42.116293762219605 
		5 5.9119201843313247 10 5.9119201843313265 12 5.9119201843313247 15 5.9119201843313247 
		19 5.9119201843313247 22 5.9119201843313265 25 2.1381503000571311 29 2.1381503000571311;
createNode animCurveTA -n "animCurveTA1041";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 51.312599966148298 2 51.312599966148291 
		5 -0.89181587725581968 10 -0.89181587725581979 12 -0.89181587725581968 15 
		-0.89181587725581968 19 -0.89181587725581968 22 -0.89181587725581979 25 -6.3333534086058831 
		29 -6.3333534086058831;
createNode animCurveTA -n "animCurveTA1042";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 5 0 10 0 12 0 15 0 19 0 
		22 0 25 0 29 0;
createNode animCurveTA -n "animCurveTA1043";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 5 0 10 0 12 0 15 0 19 0 
		22 0 25 0 29 0;
createNode animCurveTA -n "animCurveTA1044";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 86.611733534295581 2 55.749331591600708 
		5 21.151890972437133 10 21.151890972437133 12 21.151890972437133 15 21.151890972437133 
		19 21.151890972437133 22 21.151890972437133 25 17.545620107018433 29 17.545620107018433;
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
	setAttr ".o" 30;
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
	setAttr -s 654 ".gn";
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
connectAttr "cpd_hit_by_car_frontSource.st" "clipLibrary1.st[0]";
connectAttr "cpd_hit_by_car_frontSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL311.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL312.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL314.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA926.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU49.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU50.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU51.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU52.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU53.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU54.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU55.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU56.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA927.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA928.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA929.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL316.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL317.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL318.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL319.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL320.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL321.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA930.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA931.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA932.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL322.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL323.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL324.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA933.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA934.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA935.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA936.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA937.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA938.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA939.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA940.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA941.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA942.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA943.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA944.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA945.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA946.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA947.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL325.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL326.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL327.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL328.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL329.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL330.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL331.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL332.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL333.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA948.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA949.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA950.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA951.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA952.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA953.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA954.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA955.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA956.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA957.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA958.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA959.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA960.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA961.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA962.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA963.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA964.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA965.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA966.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA967.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA968.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA969.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA970.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA971.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA972.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA973.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA974.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA975.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA976.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL334.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL335.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL336.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA977.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA978.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA979.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL337.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL338.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL339.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA980.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA981.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA982.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL340.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL341.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL342.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA983.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA984.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA985.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL343.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL344.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL345.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA986.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA987.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA988.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL346.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL347.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL348.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL349.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL350.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL351.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA989.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA990.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA991.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA992.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA993.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA994.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA995.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA996.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA997.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA998.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA999.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1000.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1001.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1002.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1003.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1004.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1005.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1006.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1007.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1008.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1009.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1010.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1011.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1012.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1013.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1014.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1015.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1016.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1017.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1018.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1019.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1020.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1021.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1022.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1023.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1024.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1025.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1026.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1027.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1028.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1029.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1030.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1031.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1032.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1033.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1034.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1035.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1036.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1037.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1038.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1039.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1040.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1041.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1042.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1043.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1044.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of cpd_hit_by_car_front.ma
