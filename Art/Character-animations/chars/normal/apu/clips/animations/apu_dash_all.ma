//Maya ASCII 4.0 scene
//Name: apu_dash_all.ma
//Last modified: Wed, Oct 09, 2002 02:40:45 PM
requires maya "4.0";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "apu_dash_allSource";
	setAttr ".ihi" 0;
	setAttr ".du" 33;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL1";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 8 0 16 1 33 1;
	setAttr -s 4 ".kit[1:3]"  9 3 1;
	setAttr -s 4 ".kot[1:3]"  5 3 5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "animCurveTL2";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 8 1 16 0 33 0;
	setAttr -s 4 ".kit[1:3]"  9 3 1;
	setAttr -s 4 ".kot[1:3]"  5 3 5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0.021611233900292327 1 0.013069960149213949 
		2 0.0051655737325431118 3 -0.0025795909393497084 4 -0.0061849903901308838 
		5 9.3392531786557596e-005 6 0.010487472979829673 7 0.021801506533284817 8 
		0.032062489315575794 9 0.03733644808823583 10 0.040310547217095066 11 0.042967651334902053 
		12 0.043486686048157135 13 0.04007063055386597 14 0.034630188342479017 15 
		0.026753495335976037 16 0.021611233900292327 17 0.01964988500348655 18 0.014593323132435967 
		19 0.007682775516190724 20 0.00015946938380095825 21 -0.010504717986507619 
		22 -0.022884424313477748 23 -0.034821871761308319 24 -0.04645933437242375 
		25 -0.054075435230564878 26 -0.056431306348793758 27 -0.055939773496459441 
		28 -0.054357000391733225 29 -0.053439150752786421 30 -0.05176466481308676 
		31 -0.049026878620068867 32 -0.048654299612854363 33 -0.054075435230564878;
createNode animCurveTL -n "apu_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0.71617302458190157 1 0.97700477291586052 
		2 1.2391161706992548 3 1.5015474884179631 4 1.7722965515552769 5 2.0354816469291821 
		6 2.3617816796232072 7 2.8712473003660426 8 3.3998815963976465 9 3.8021135305209954 
		10 4.1427159975315755 11 4.4297968141894568 12 4.6877801952338025 13 4.9231808871536877 
		14 5.197835217021102 15 5.6506702304562779 16 6.0569285095707901 17 6.2562068749104371 
		18 6.3921795835960555 19 6.5194538518577403 20 6.6926368959255944 21 6.9879163567224953 
		22 7.3429674978006556 23 7.7186688889125747 24 8.0982448905974422 25 8.3620528392094009 
		26 8.4728770419201354 27 8.5034756736158492 28 8.4991668722224656 29 8.505268775665904 
		30 8.527573655607787 31 8.5440093607176468 32 8.5580973944332488 33 8.5733592601923636;
createNode animCurveTA -n "apu_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  5 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 33 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTU -n "apu_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 33 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTU -n "apu_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 33 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTU -n "apu_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 33 0;
	setAttr -s 3 ".kit[2]"  3;
	setAttr -s 3 ".kot[2]"  3;
createNode animCurveTU -n "animCurveTU5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 0 20 0 33 0;
	setAttr -s 4 ".kit[2:3]"  2 9;
	setAttr -s 4 ".kot[2:3]"  2 9;
createNode animCurveTU -n "animCurveTU6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 0 20 0 33 0;
	setAttr -s 4 ".kit[2:3]"  2 9;
	setAttr -s 4 ".kot[2:3]"  2 9;
createNode animCurveTU -n "animCurveTU7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 33 0;
createNode animCurveTU -n "animCurveTU8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 16 0 33 0;
createNode animCurveTA -n "apu_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
createNode animCurveTA -n "apu_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
createNode animCurveTA -n "apu_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
createNode animCurveTL -n "apu_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
createNode animCurveTL -n "apu_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 16 0;
createNode animCurveTL -n "apu_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.57060364830165899 16 0.57060364830165899;
createNode animCurveTL -n "animCurveTL9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.13256050696689195 2 -0.14100000039914592 
		4 -0.14917697669711028 6 -0.15591010861924379 8 -0.15914685820972754 10 -0.1543537568115956 
		12 -0.1477922708677146 14 -0.14041871262535602 16 -0.13256050696689195 20 
		-0.17901734786705339 22 -0.22099954969554855 25 -0.26454016861507795 29 -0.26454016861507795 
		33 -0.26454016861507795;
	setAttr -s 14 ".kit[8:13]"  3 9 9 3 3 3;
	setAttr -s 14 ".kot[8:13]"  3 9 9 3 3 3;
createNode animCurveTL -n "animCurveTL10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.51157994556232711 2 0.15818983448090632 
		4 0.13127434763569257 6 0.44077937674789547 8 0.63985583726624518 10 0.6515628445839442 
		12 0.56282608541580048 14 0.53488576867830628 16 0.51157994556232711 20 0.16579088776366616 
		22 0.16187985558034027 25 0.13806192026723146 29 0.13806192026723146 33 0.13806192026723146;
	setAttr -s 14 ".kit[11:13]"  3 3 3;
	setAttr -s 14 ".kot[11:13]"  3 3 3;
createNode animCurveTL -n "animCurveTL11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.5840630460795303 2 1.2738098132188223 
		4 1.542525365411056 6 2.0230801667678207 8 3.3610901802262525 10 4.4078330095760343 
		12 5.4117096677520022 14 6.4925226432081153 16 8.136900304117205 20 9.0788303429014725 
		22 9.8795896890256909 25 11.031101188017518 29 11.252503949113441 33 11.252503949113441;
	setAttr -s 14 ".kit[12:13]"  3 3;
	setAttr -s 14 ".kot[12:13]"  3 3;
createNode animCurveTA -n "animCurveTA5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -30.072192405388275 2 -18.792511343640189 
		4 -0.19523616359940038 6 58.648809347529159 8 108.51405795321143 10 95.434367988131626 
		12 66.560644379683566 14 21.661692652084042 16 -30.072192405388279 20 -21.299208535786594 
		22 -19.930326501480007 25 0 29 0 33 0;
	setAttr -s 14 ".kit[8:13]"  3 9 9 3 3 3;
	setAttr -s 14 ".kot[8:13]"  3 9 9 3 3 3;
createNode animCurveTA -n "animCurveTA6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 2 0 4 0 6 0 8 0 10 0 12 0 14 
		0 16 0 20 -9.1295209113152875 22 -16.019982761961916 25 -25.948901905116401 
		29 -25.948901905116401 33 -25.948901905116401;
	setAttr -s 14 ".kit[8:13]"  3 9 9 3 3 3;
	setAttr -s 14 ".kot[8:13]"  3 9 9 3 3 3;
createNode animCurveTA -n "animCurveTA7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 2 0 4 0 6 0 8 0 10 0 12 0 14 
		0 16 0 20 0.28766566515782255 22 6.0784807872614195 25 0 29 0 33 0;
	setAttr -s 14 ".kit[8:13]"  3 9 9 3 3 3;
	setAttr -s 14 ".kot[8:13]"  3 9 9 3 3 3;
createNode animCurveTL -n "animCurveTL12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.18579966735506592 2 0.19212928751952443 
		4 0.19826201969685592 6 0.20331186850092309 8 0.20573943078719265 10 0.20214460468015497 
		12 0.19722349028745664 14 0.19169332169435932 16 0.18579966735506592 20 0.19641113124415144 
		22 0.20600051834902566 25 0.21594587158542247 29 0.21594587158542247 33 0.21594587158542247;
	setAttr -s 14 ".kit[8:13]"  3 9 9 3 9 3;
	setAttr -s 14 ".kot[8:13]"  3 9 9 3 9 3;
createNode animCurveTL -n "animCurveTL13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.66563734011738351 2 0.57324722196628686 
		4 0.57139045948592959 8 0.50071119364091776 10 0.16866413180877776 12 0.12755811298339428 
		14 0.38172162164343187 16 0.66563734011738351 20 0.42516014773489519 22 0.16275680956152072 
		25 0.1380615615975922 29 0.1380615615975922 33 0.1380615615975922;
	setAttr -s 13 ".kit[10:12]"  3 9 3;
	setAttr -s 13 ".kot[10:12]"  3 9 3;
createNode animCurveTL -n "animCurveTL14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.45404353022539112 2 0.38619657499352983 
		4 1.2949364804720787 6 2.5804253379737809 8 4.4052136976827061 10 5.3666330341207766 
		12 5.720955105456734 14 6.1011493723948007 16 7.0987937278122848 20 8.6398951276095133 
		22 9.9395497740106808 25 11.096789897240569 29 11.318192658336493 33 11.318192658336493;
	setAttr -s 14 ".kit[12:13]"  3 3;
	setAttr -s 14 ".kot[12:13]"  3 3;
createNode animCurveTA -n "animCurveTA8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 99.963052812293768 2 94.817218714969755 
		4 81.934994106577719 6 26.502620586977539 8 -23.71428520057415 10 -21.77545589135385 
		12 -0.018599085919765827 14 68.672656531059985 16 99.963052812293768 20 33.909184023437554 
		22 -20.061495456226126 25 0 29 0 33 0;
	setAttr -s 14 ".kit[8:13]"  3 9 9 3 9 3;
	setAttr -s 14 ".kot[8:13]"  3 9 9 3 9 3;
createNode animCurveTA -n "animCurveTA9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 2 0 4 0 6 0 8 0 10 0 12 0 14 
		0 16 0 20 0 22 0 25 0 29 0 33 0;
	setAttr -s 14 ".kit[8:13]"  3 9 9 3 9 3;
	setAttr -s 14 ".kot[8:13]"  3 9 9 3 9 3;
createNode animCurveTA -n "animCurveTA10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 2 0 4 0 6 0 8 0 10 0 12 0 14 
		0 16 0 20 0 22 0 25 0 29 0 33 0;
	setAttr -s 14 ".kit[8:13]"  3 9 9 3 9 3;
	setAttr -s 14 ".kot[8:13]"  3 9 9 3 9 3;
createNode animCurveTA -n "animCurveTA11";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 16 0 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA12";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 16 0 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA13";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 16 0 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA14";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 16 0 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA15";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 16 0 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA16";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 16 0 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 2 0 4 0 6 0 8 0 10 0 12 0 14 
		0 16 0 20 0 22 0 25 0 29 0 33 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  1;
	setAttr -s 14 ".kiy[13]"  0;
createNode animCurveTL -n "animCurveTL16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.24354617521346231 2 0.24354617521346231 
		4 0.24354617521346231 6 0.24354617521346231 8 0.24354617521346231 10 0.24354617521346231 
		12 0.24354617521346231 14 0.24354617521346231 16 0.24354617521346231 20 0.17451822962363839 
		22 0.10036709856582071 25 0 29 0.002047449652448405 33 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.010948676615953445;
	setAttr -s 14 ".kiy[13]"  -0.99994003772735596;
createNode animCurveTL -n "animCurveTL17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.73266363114951272 2 0.73266363114951272 
		4 0.73266363114951272 6 0.73266363114951272 8 0.73266363114951272 10 0.73266363114951272 
		12 0.73266363114951272 14 0.73266363114951272 16 0.73266363114951272 20 0.80843439598415556 
		22 0.88982879268023662 25 1 29 0.99775255110022654 33 1;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.0099744582548737526;
	setAttr -s 14 ".kiy[13]"  0.99995023012161255;
createNode animCurveTL -n "animCurveTL18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 2 0 4 0 6 0 8 0 10 0 12 0 14 
		0 16 0 20 0 22 0 25 0 29 0 33 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  1;
	setAttr -s 14 ".kiy[13]"  0;
createNode animCurveTL -n "animCurveTL19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.72172207365063845 2 0.62030696556281206 
		4 0.45686103211115531 6 0.34953713451311658 8 0.29794441413090866 10 0.37434486929265776 
		12 0.47893278660163829 14 0.59646486935962717 16 0.72172207365063845 20 0.51716541571428276 
		22 0.29742676542372709 25 0 29 0.006067387126577492 33 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.0036948432680219412;
	setAttr -s 14 ".kiy[13]"  -0.99999314546585083;
createNode animCurveTL -n "animCurveTL20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.39818034372871203 2 0.46411900105272968 
		4 0.57038921548857702 6 0.64016968292620502 8 0.67371453515016544 10 0.62404005065837209 
		12 0.55603847638125081 14 0.47962079313410755 16 0.39818034372871203 20 0.56875323115448029 
		22 0.75198586941222834 25 1 29 0.99494060942248352 33 1;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.0044309650547802448;
	setAttr -s 14 ".kiy[13]"  0.99999016523361206;
createNode animCurveTL -n "animCurveTL21";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.03056236763751306 2 0.0073050971638656701 
		4 -0.0087467449109931879 6 0.01483126813937743 8 0.045342417298218543 10 
		0.057006729435357395 12 0.061498389794527666 14 0.048973628824814402 16 0.03056236763751306 
		20 0.0002255198364488864 22 -0.032362899419264013 25 -0.076472881617957691 
		29 -0.075573055156330018 33 -0.076472881617957691;
	setAttr -s 14 ".kit[8:13]"  3 9 9 9 9 1;
	setAttr -s 14 ".kot[8:13]"  3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.02490619570016861;
	setAttr -s 14 ".kiy[13]"  -0.99968981742858887;
createNode animCurveTL -n "animCurveTL22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1.1465331633204445 2 0.95412560561922888 
		4 0.98370625018085767 8 1.1465331633204445 10 0.97103775017930916 12 0.98688734381384791 
		14 1.1198747890656007 16 1.1465331633204445 20 0.93235617323631403 22 0.93239910646787738 
		25 0.9822822633056657 29 0.84564593930541665 33 0.99296149630440855;
	setAttr -s 13 ".kit[12]"  1;
	setAttr -s 13 ".kot[12]"  5;
	setAttr -s 13 ".kix[12]"  0.080062121152877808;
	setAttr -s 13 ".kiy[12]"  0.99678987264633179;
createNode animCurveTL -n "animCurveTL23";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.20586259975558652 2 0.9454030054026733 
		4 1.6994207950398745 6 2.5330641346094329 8 4.0011335399617574 10 5.0516417231590101 
		12 5.8224654749669167 14 6.5437796379223379 16 7.7586998577932613 20 8.6577116173098219 
		22 9.5774019520741813 25 11.018581155530644 29 11.221115546751831 33 11.317408355867459;
createNode animCurveTA -n "animCurveTA17";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 17.005118065408293 2 14.776490805643173 
		4 21.876150037933844 6 35.116363937651492 8 13.860686894736261 10 16.147624387913094 
		12 23.184123719185436 14 30.425816852427634 16 17.005118065408293 20 -24.615782149807163 
		22 -27.540819482442011 25 -17.228287280513037 29 21.217257796400652 33 -0.62843630316474441;
	setAttr -s 14 ".kit[8:13]"  3 9 9 9 9 1;
	setAttr -s 14 ".kot[8:13]"  3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.67668211460113525;
	setAttr -s 14 ".kiy[13]"  -0.736275315284729;
createNode animCurveTA -n "animCurveTA18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 16.71413050451596 2 6.0235610857262154 
		4 -4.2082341628681164 6 -11.002944803918375 8 -17.463428989421054 10 -11.922292214337055 
		12 -3.814554639071476 14 5.1245664010930074 16 16.714130504515957 20 10.424664510081548 
		22 3.4402462093535386 25 -5.9554677500391122 29 -4.9813112571591649 33 -5.8284402688137158;
	setAttr -s 14 ".kit[8:13]"  3 9 9 9 9 1;
	setAttr -s 14 ".kot[8:13]"  3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.55015897750854492;
	setAttr -s 14 ".kiy[13]"  -0.83505994081497192;
createNode animCurveTA -n "animCurveTA19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 4.545042700459728 2 0.96874240015047786 
		4 -2.2439149090492978 6 -8.1678644161486247 8 -4.2429446273949312 10 -1.3093222901315773 
		12 1.5256468301158517 14 4.8586479287269801 16 4.5450427004597262 20 -2.7699680858558788 
		25 0.42027917654010649 29 -2.7539112528192611 33 -1.295636019309746;
	setAttr -s 13 ".kit[8:12]"  3 9 9 9 1;
	setAttr -s 13 ".kot[8:12]"  3 9 9 9 5;
	setAttr -s 13 ".kix[12]"  0.98398500680923462;
	setAttr -s 13 ".kiy[12]"  -0.17825131118297577;
createNode animCurveTA -n "animCurveTA20";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.040709616517141577 12 0.040709616517141577 
		16 0.040709616517141604 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 0.99998152256011963;
	setAttr -s 4 ".kiy[1:3]"  0 0 -0.0060809371061623096;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA21";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.8313983219776933 12 -1.8313983219776933 
		16 -1.831398321977693 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 0.9929049015045166;
	setAttr -s 4 ".kiy[1:3]"  0 0 0.11891116201877594;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA22";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.7337164321498379 12 3.7337164321498379 
		16 3.7337164321498379 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 0.971413254737854;
	setAttr -s 4 ".kiy[1:3]"  0 0 -0.23739491403102875;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA23";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.5673169553733395 12 -2.5673169553733395 
		16 -2.5673169553733399 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 0.98617494106292725;
	setAttr -s 4 ".kiy[1:3]"  0 0 0.16570737957954407;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA24";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -5.938383166068367 12 -5.938383166068367 
		16 -5.9383831660683679 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 0.93207746744155884;
	setAttr -s 4 ".kiy[1:3]"  0 0 0.36225900053977966;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA25";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.00040252039393782536 12 -0.00040252039393782536 
		16 -0.000402520393937813 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 0.99999421834945679;
	setAttr -s 4 ".kiy[1:3]"  0 0 -0.0034083037171512842;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA26";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.1571952141288733 12 -1.1571952141288733 
		16 -1.1571952141288731 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 0.99714738130569458;
	setAttr -s 4 ".kiy[1:3]"  0 0 0.075478971004486084;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA27";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 16 0 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA28";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 16 0 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA29";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.0034456079181433771 12 0.0034456079181433771 
		16 0.0034456079181433771 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 -0.00022551437723450363;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA30";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.040473860579884585 12 0.040473860579884585 
		16 0.040473860579884571 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 0.9999815821647644;
	setAttr -s 4 ".kiy[1:3]"  0 0 -0.0060655134730041027;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA31";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.8313984519406281 12 -1.8313984519406281 
		16 -1.8313984519406281 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 0.99290484189987183;
	setAttr -s 4 ".kiy[1:3]"  0 0 0.11891160160303116;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA32";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.7337164553688731 12 3.7337164553688731 
		16 3.733716455368874 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 0.971413254737854;
	setAttr -s 4 ".kiy[1:3]"  0 0 -0.23739473521709442;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA33";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.5673170049738836 12 -2.5673170049738836 
		16 -2.5673170049738836 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 0.98617494106292725;
	setAttr -s 4 ".kiy[1:3]"  0 0 0.16570739448070526;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA34";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -5.9383298724540099 12 -5.9383298724540099 
		16 -5.9383298724540099 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 0.93207859992980957;
	setAttr -s 4 ".kiy[1:3]"  0 0 0.36225605010986328;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA35";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.00017158844849065358 12 -0.00017158844849065358 
		16 -0.00017158844849065349 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 0.99999415874481201;
	setAttr -s 4 ".kiy[1:3]"  0 0 -0.0034233778715133667;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA36";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.1571951880326767 12 -1.1571951880326767 
		16 -1.157195188032677 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 0.99714744091033936;
	setAttr -s 4 ".kiy[1:3]"  0 0 0.075478293001651764;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA37";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 16 0 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA38";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 16 0 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA39";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.0034456079182833216 12 0.0034456079182833216 
		16 0.0034456079182833216 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 -0.00022551437723450363;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 2 0 4 0 6 0 8 0 10 0 12 0 14 
		0 16 0 20 0 22 0 25 0 29 0 33 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  1;
	setAttr -s 14 ".kiy[13]"  0;
createNode animCurveTA -n "animCurveTA41";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 2 0 4 0 6 0 8 0 10 0 12 0 14 
		0 16 0 20 0 22 0 25 0 29 0 33 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  1;
	setAttr -s 14 ".kiy[13]"  0;
createNode animCurveTA -n "animCurveTA42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.0034456079181433771 2 0.0034456079181433771 
		4 0.0034456079181433771 6 0.0034456079181433771 8 0.0034456079181433771 10 
		0.0034456079181433771 12 0.0034456079181433771 14 0.0034456079181433771 16 
		0.0034456079181433771 20 0.0024690241790410292 25 0 29 2.8966611846267475e-005 
		33 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 3 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 3 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  -0.00022551437723450363;
createNode animCurveTA -n "animCurveTA43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.15553530681976535 2 -0.028756853607632721 
		4 -0.33313708553105587 6 -0.56499316465366967 8 -0.68868826587206644 10 -0.27619202935664044 
		12 -0.31207279928318976 14 -3.1260299677896581 16 0.15553530681976535 20 
		0.11145215716107797 22 0.064050130286317536 25 0 29 0.0021900993932036541 
		33 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.99993795156478882;
	setAttr -s 14 ".kiy[13]"  -0.011141768656671047;
createNode animCurveTA -n "animCurveTA44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.36354176124207516 2 -0.24241480668548207 
		4 -0.043220669840480376 6 0.10486133380440643 8 0.14826263478027304 10 -0.33260220074482311 
		12 -0.36886191179284084 14 2.3421700339195279 16 -0.36354176124207516 20 
		-0.2605036406499957 22 -0.14983891673171634 25 0 29 -0.0026664350224783234 
		33 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.99972707033157349;
	setAttr -s 14 ".kiy[13]"  0.023362159729003906;
createNode animCurveTA -n "animCurveTA45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 5.3250602596476986 2 2.0970576700105767 
		4 -3.2291208588000058 6 -7.2639957902549508 8 -9.1996690244574566 10 -0.76538399634410326 
		12 -0.96023749938851288 14 -54.670739303955017 16 5.3250602596476986 20 3.8157860196728057 
		25 0 29 0.044791223449058601 33 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 3 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 3 9 9 9 5;
	setAttr -s 13 ".kix[12]"  0.94428426027297974;
	setAttr -s 13 ".kiy[12]"  -0.32913100719451904;
createNode animCurveTL -n "Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -0.4006970407170849 8 -0.34518210787272202 
		16 -0.4006970407170849 20 -0.42860175920002136 21 -0.25839957364113003 22 
		-0.15617835974235633 23 -0.39686520220429972 24 -0.73308795332977839 25 -0.91860194779577842 
		26 -0.87520672288154433 27 -0.72687480406036598 28 -0.54880437821321704 29 
		-0.41620083073968872 30 -0.34934453417541617 31 -0.31390434678679752 32 -0.30444003813670523 
		33 -0.30518757431961752;
createNode animCurveTL -n "Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -0.80963795666013982 8 0.090057486127241154 
		16 -0.80963795666013982 20 -0.76767033591861356 21 -0.3264218156943457 22 
		0.068983715218028069 23 0.14301732706101916 24 0.13860838795153538 25 0.03526706961476344 
		26 -0.1860616669107536 27 -0.42536181545879526 28 -0.5360120092888867 29 
		-0.56687723182177674 30 -0.6548737672104582 31 -0.77384816993034677 32 -0.85572232218046052 
		33 -0.89920030065805223;
createNode animCurveTL -n "Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.068063433011839175 8 0.75709689177775963 
		16 0.068063433011839175 20 0.34605815960077269 21 0.59441199359559838 22 
		0.94728967378188589 23 0.79533845569398665 24 0.43987094599877552 25 0.14411762279505255 
		26 0.055826854039844047 27 0.16351736754572024 28 0.39355940149556978 29 
		0.555784212953362 30 0.56786562785405392 31 0.4674028562934579 32 0.29500022939453763 
		33 0.1271574445384685;
createNode animCurveTA -n "Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 18.528616024219694 8 -136.08267874905474 
		16 18.528616024219694 20 -6.6828121461670769 21 -60.65046819804521 22 34.923139712169807 
		23 -115.38971786120831 24 -57.308143026321034 25 -21.749254073806874 26 -14.898963875332115 
		27 -19.23301393423208 28 -26.29379775965181 29 -23.116655553350441 30 -1.1023717165842351 
		31 7.8050195729711929 32 9.2006411703405568 33 9.2736340776841928;
createNode animCurveTA -n "Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 41.521897543761867 8 45.793020930146298 
		16 41.521897543761867 20 51.668724896585005 21 63.821492342930121 22 109.05332771483468 
		23 65.865290970390646 24 51.761258500153346 25 36.708229180889205 26 32.898821820883811 
		27 42.096886742916496 28 59.141308508029418 29 71.062043626675404 30 66.440355409339958 
		31 49.339002375939451 32 30.686330730889601 33 19.949465928602148;
createNode animCurveTA -n "Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 68.687425652488344 8 -72.343531705923681 
		16 68.687425652488344 20 51.209758485367118 21 -3.2513609289198064 22 91.4181566408067 
		23 -73.659603762206558 24 -36.411771991168308 25 -11.36015936060608 26 5.8353811146958501 
		27 21.294762241871762 28 31.075099167066639 29 43.262592537531404 30 68.173588186966157 
		31 77.544921973817637 32 77.906525820023631 33 77.760647383351511;
createNode animCurveTL -n "Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.47124714773818255 8 0.31411668701654516 
		16 0.47124714773818255 20 0.36064244099398485 21 0.36900338950609013 22 0.39903450574094634 
		23 0.46388654348923836 24 0.51676488919332297 25 0.5460081134986956 26 0.54978308453913927 
		27 0.54170983177639354 28 0.53030683920045318 29 0.52171587434137356 30 0.48963199588510303 
		31 0.4333573830504811 32 0.38512929463344875 33 0.37612987317775493;
createNode animCurveTL -n "Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.12352873058019365 8 -0.78511957248080766 
		16 0.12352873058019365 20 0.2106475228820042 21 0.23285918119683144 22 0.30725810246883534 
		23 0.32679989334924614 24 0.31023419710818073 25 0.30741696284742087 26 0.24575859691552904 
		27 -0.015337403087335071 28 -0.38987206157928611 29 -0.6623811214439087 30 
		-0.77110133163749284 31 -0.82090594624086077 32 -0.8564823732032073 33 -0.8650506897691419;
createNode animCurveTL -n "Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0.67749854722033864 8 0.11456252062495167 
		16 0.67749854722033864 20 0.75394044352465772 21 0.66770276582983012 22 0.56935639038517516 
		23 0.623848531282996 24 0.67658730293564506 25 0.58780161166578471 26 0.26132935021984494 
		27 -0.11096868213732468 28 -0.29029345811799673 29 -0.26482071246476913 30 
		-0.152990782174344 31 -0.019334484039024175 32 0.10676884374373788 33 0.20829714306220432;
createNode animCurveTA -n "Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -138.15762814968784 8 -178.95509439469362 
		16 -138.15762814968784 20 -63.336914831938287 21 -63.67395026318173 22 -58.178677154274283 
		23 -43.528664268172847 24 -27.313528844505626 25 -23.370845745026564 26 -27.274330305540417 
		27 -31.790689871101787 28 -33.828803191479523 29 -26.933048274686485 30 -14.33625001763237 
		31 -3.3991827639989527 32 2.8745846746738763 33 6.1630847679769527;
createNode animCurveTA -n "Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -46.018113673397636 8 -132.84554416218057 
		16 -46.018113673397636 20 -54.835587796960439 21 -65.022814261795105 22 -71.5680637462752 
		23 -75.326705218701377 24 -73.87853545702913 25 -65.68192551328103 26 -47.531893097867858 
		27 -28.92096380761183 28 -25.500151305893279 29 -32.433098200670358 30 -34.361609592800747 
		31 -29.070863607201304 32 -20.991265223536235 33 -15.279474287480198;
createNode animCurveTA -n "Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 75.797879380360385 8 123.19098274835183 
		16 75.797879380360385 20 83.481387884824528 21 84.038530741291211 22 79.819680216797323 
		23 66.106070918348451 24 50.008494946417265 25 43.436939159159728 26 37.210339978804953 
		27 19.60706090424608 28 -4.9563645183181695 29 -26.367881996073631 30 -43.209859726368784 
		31 -55.849219166608925 32 -62.558393254474574 33 -64.066214390617446;
createNode animCurveTL -n "animCurveTL30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.8448236677023373 2 -0.84764178504232934 
		10 -0.8975144611100706 20 -0.92908942941626249 22 -0.82100970934312034 25 
		-1.4318185443678217 29 -0.99750193828141254 33 -0.8448236677023373;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTL -n "animCurveTL31";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.5117481219250299 2 1.5010345533581231 
		10 1.3683261357850791 20 1.4591439897915177 22 2.5248891070347503 25 2.4025752527887509 
		29 1.3694130653827217 33 1.5117481219250299;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTL -n "animCurveTL32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 11.918762336634591 2 11.910410743035504 
		10 11.8773373165547 20 13.958275664730861 22 15.708525812573159 25 17.039695770653402 
		29 18.131630560275106 33 17.724248010153566;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA52";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 5.4739599453216465 2 5.7593191417377119 
		10 2.506091877245801 20 -25.070989654505347 22 -131.59179684075096 25 -38.799148562412896 
		29 3.2857900303221834 33 5.4739599453216465;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 8.5874521608419823 2 9.369732760855296 
		10 26.332993048634933 20 46.658221967313224 22 52.559709462722189 25 25.532801720281071 
		29 39.815352642946401 33 8.5874521608419823;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 74.754744621954103 2 75.058822489334446 
		10 71.506834764596718 20 41.804420471482658 22 -72.686359749811871 25 -20.785184878905465 
		29 63.419176998871237 33 74.754744621954103;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTL -n "animCurveTL33";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.61083301393139333 2 0.60484709294029759 
		10 0.5045204924113057 20 0.45695252066099024 25 0.76751600154977928 29 0.81316137819592782 
		33 0.61083301393139333;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.4644416293758407 2 1.4889244641117629 
		10 2.0088968498880453 20 2.5986197332031806 25 2.8115251257895419 29 1.6172125466714042 
		33 1.4644416293758407;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL35";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 12.159899986951181 2 12.167962672969637 
		10 12.405114916729621 20 14.594872307523781 22 15.482393548514455 25 17.639933671158818 
		29 17.551729093121438 33 17.965385660470158;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.226511010665412 2 13.719840157613627 
		10 -35.767008295872287 20 -82.627011446944778 25 -53.687266890032319 29 7.1745730389416229 
		33 16.226511010665412;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -8.5139660854992858 2 -9.4147422123503262 
		10 -28.360784547110264 20 -49.391617625677945 25 -54.723971268489443 29 -17.724757355679905 
		33 -8.5139660854992858;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -68.213989601412422 2 -63.992079215796416 
		10 20.45737546016619 20 103.34815141583843 25 69.490480972866237 29 -43.833623678431721 
		33 -68.213989601412422;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.30240577921997519 8 0.32306738982144639 
		20 1.0270354026348414 22 0.7202941590408074 25 -0.0036732186015061164 29 
		0.029066010951077605 33 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
createNode animCurveTL -n "animCurveTL37";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.92162242694248253 8 -0.71642352006253229 
		20 -0.98802346602449975 22 -0.69293379059679694 25 -0.4300684211580732 29 
		-0.3431686693037761 33 0;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
createNode animCurveTL -n "animCurveTL38";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.28210741269722123 8 -1.1625402680710695 
		20 -0.55178658243272394 22 -0.68565298933760821 25 -1.1322557157991167 29 
		-0.77445955245170706 33 -1;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[6]"  1;
	setAttr -s 7 ".kiy[6]"  0;
createNode animCurveTL -n "animCurveTL39";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 8 -0.33393968834568855 20 -0.028818782590846453 
		22 -0.059776468142142644 25 -0.10167917362943303 29 -0.10082437502097145 
		33 -0.10167917362943303;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[6]"  0.026217281818389893;
	setAttr -s 7 ".kiy[6]"  -0.99965626001358032;
createNode animCurveTL -n "animCurveTL40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 8 -1.5880729287482944 20 -0.115532981995089 
		22 -0.23964071160869943 25 -0.40762644910266188 29 -0.40419960789170611 33 
		-0.40762644910266188;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[6]"  0.0065418011508882046;
	setAttr -s 7 ".kiy[6]"  -0.99997860193252563;
createNode animCurveTL -n "animCurveTL41";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1 8 -0.26844489144704664 20 
		-0.98052594184727926 22 -0.95960653888610792 25 -0.93129112588482243 29 -0.93186874912146689 
		33 -0.93129112588482243;
	setAttr -s 7 ".kit[6]"  1;
	setAttr -s 7 ".kot[6]"  5;
	setAttr -s 7 ".kix[6]"  0.038781918585300446;
	setAttr -s 7 ".kiy[6]"  0.99924767017364502;
createNode animCurveTA -n "animCurveTA58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 62.63751096393235 2 29.460429439064807 
		4 -21.772822498211003 6 -45.69950069742611 8 -84.140669904867593 10 -55.923282935797701 
		12 -16.079436279279061 14 15.238159962327718 16 62.637510963932357 20 48.357309319850664 
		22 32.712630725868969 25 12.253734489678918 29 18.38881776019425 33 12.253734489678918;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.10438152402639389;
	setAttr -s 14 ".kiy[13]"  -0.994537353515625;
createNode animCurveTA -n "animCurveTA59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -2.607342867407215 2 -21.244409641442136 
		4 -44.392088178622309 6 -29.671013495560256 8 19.519676831452763 10 -13.190698162426974 
		12 -52.091981890544496 14 -40.046745316398891 16 -2.6073428674072119 20 -20.50285509886718 
		22 -39.637107616529569 25 -65.746751280844975 29 -66.893091970787566 33 -65.746751280844975;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.39829152822494507;
	setAttr -s 14 ".kiy[13]"  -0.9172588586807251;
createNode animCurveTA -n "animCurveTA60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -70.410339040713225 2 -32.913880252714698 
		4 25.399171563654527 6 54.489222949191962 8 65.190433294915948 10 45.353958946494387 
		12 16.894658350461803 14 -24.141089779821431 16 -70.410339040713239 20 -50.454037349901526 
		25 0 29 -6.0689435836249741 33 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 3 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 3 9 9 9 5;
	setAttr -s 13 ".kix[12]"  0.094073526561260223;
	setAttr -s 13 ".kiy[12]"  0.99556523561477661;
createNode animCurveTA -n "animCurveTA61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -84.698315806340915 2 -42.261715712765024 
		4 21.822491222771841 6 45.187322486195512 8 64.064192560374138 10 43.657810134393117 
		12 14.985251632019557 14 -15.734941790180978 16 -84.698315806340929 20 -60.709911234003656 
		22 -34.708003417668003 25 -0.061808866237340665 29 -5.1441112306659136 33 
		-0.061808866237340665;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.096565932035446167;
	setAttr -s 14 ".kiy[13]"  0.99532657861709595;
createNode animCurveTA -n "animCurveTA62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 2.526614057559033 2 -20.011426950765948 
		4 -49.359124070644626 6 -38.331322759538871 8 -3.7413367839549805 10 -26.760038473969495 
		12 -53.583968666393417 14 -41.825353725592606 16 2.5266140575590361 20 -14.928276269651757 
		22 -33.573573651214943 25 -59.058178941076754 29 -60.510645498626161 33 -59.058178941076754;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.46930953860282898;
	setAttr -s 14 ".kiy[13]"  -0.88303375244140625;
createNode animCurveTA -n "animCurveTA63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 60.405404367098342 2 30.098452492066869 
		4 -16.823428341647364 6 -39.28416631828982 8 -49.930223807783022 10 -32.901230666524164 
		12 -8.6476115969811982 14 24.054087331385347 16 60.405404367098342 20 47.98379084663771 
		25 16.57914742975785 29 21.842880447574071 33 16.57914742975785;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 3 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 3 9 9 9 5;
	setAttr -s 13 ".kix[12]"  0.120932936668396;
	setAttr -s 13 ".kiy[12]"  -0.99266070127487183;
createNode animCurveTA -n "animCurveTA64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 43.533492033034968 2 36.42389246122891 
		4 26.470453106824781 6 26.470453106824781 8 70.804439613726373 10 52.331945303295853 
		12 26.470453106824781 14 26.470453106824781 16 43.533492033034968 20 33.620230674780025 
		25 8.5572674112203657 29 8.8513062768799831 33 8.5572674112203657;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 3 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 3 9 9 9 5;
	setAttr -s 13 ".kix[12]"  0.40030825138092041;
	setAttr -s 13 ".kiy[12]"  -0.91638052463531494;
createNode animCurveTA -n "animCurveTA65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 73.421813693602928 2 54.211386914341197 
		4 27.316789452391582 6 27.316789452391582 8 36.443064134607873 10 32.640449686016368 
		12 27.316789452391582 14 27.316789452391582 16 73.421813693602928 20 57.065013344720072 
		25 15.711328223519056 29 16.196489824284519 33 15.711328223519056;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 3 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 3 9 9 9 5;
	setAttr -s 13 ".kix[12]"  0.25593292713165283;
	setAttr -s 13 ".kiy[12]"  -0.96669453382492065;
createNode animCurveTA -n "animCurveTA66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 14.849434068729675 2 14.849434068729675 
		4 14.849434068729675 6 14.849434068729675 8 14.849434068729675 10 14.849434068729675 
		12 14.849434068729675 14 14.849434068729675 16 14.849434068729675 20 10.640680178431095 
		22 6.1195615632072071 25 0 29 0.12474370316029942 33 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.71714931726455688;
	setAttr -s 14 ".kiy[13]"  -0.69691950082778931;
createNode animCurveTA -n "animCurveTA67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.051608316401883209 2 0.051608316401883209 
		4 0.051608316401883209 6 0.051608316401883209 8 0.051608316401883209 10 0.051608316401883209 
		12 0.051608316401883209 14 0.051608316401883209 16 0.051608316401883257 20 
		0.036981045031335799 22 0.020607064952221019 25 0 29 0.012829243074481878 
		33 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.99985724687576294;
	setAttr -s 14 ".kiy[13]"  -0.016896605491638184;
createNode animCurveTA -n "animCurveTA68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1.8225462689462448 2 1.8225462689462448 
		4 1.8225462689462448 6 1.8225462689462448 8 1.8225462689462448 10 1.8225462689462448 
		12 1.8225462689462448 14 1.8225462689462448 16 1.8225462689462448 20 1.3059845835765271 
		25 0 29 0.014568156309494158 33 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 3 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 3 9 9 9 5;
	setAttr -s 13 ".kix[12]"  0.99305623769760132;
	setAttr -s 13 ".kiy[12]"  -0.11764059960842133;
createNode animCurveTA -n "animCurveTA69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 14.859570486861982 2 14.859570486861982 
		4 14.859570486861982 6 14.859570486861982 8 14.859570486861982 10 14.859570486861982 
		12 14.859570486861982 14 14.859570486861982 16 14.859570486861989 20 10.647943614674476 
		22 6.1237388930482748 25 0 29 0.12482839328242099 33 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.71691179275512695;
	setAttr -s 14 ".kiy[13]"  -0.69716387987136841;
createNode animCurveTA -n "animCurveTA70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.052172032759606073 2 0.052172032759606073 
		4 0.052172032759606073 6 0.052172032759606073 8 0.052172032759606073 10 0.052172032759606073 
		12 0.052172032759606073 14 0.052172032759606073 16 0.052172032759606073 20 
		0.037384988117220831 22 0.020838927987576323 25 0 29 0.012842382731712714 
		33 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.99985647201538086;
	setAttr -s 14 ".kiy[13]"  -0.016942644491791725;
createNode animCurveTA -n "animCurveTA71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1.8225558374727127 2 1.8225558374727127 
		4 1.8225558374727127 6 1.8225558374727127 8 1.8225558374727127 10 1.8225558374727127 
		12 1.8225558374727127 14 1.8225558374727127 16 1.8225558374727127 20 1.305991441201324 
		25 0 29 0.014563605246215227 33 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 3 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 3 9 9 9 5;
	setAttr -s 13 ".kix[12]"  0.9930567741394043;
	setAttr -s 13 ".kiy[12]"  -0.11763627827167511;
createNode animCurveTA -n "animCurveTA72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -60.679962459776895 2 -60.679962459776895 
		4 -60.679962459776895 6 -60.679962459776895 8 -60.679962459776895 10 -60.679962459776895 
		12 -60.679962459776895 14 -60.679962459776895 16 -60.679962459776895 20 -40.527137367154531 
		22 -18.864120790526556 25 10.423754966968485 29 9.5547047894271699 33 10.423754966968485;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.19803285598754883;
	setAttr -s 14 ".kiy[13]"  0.98019540309906006;
createNode animCurveTA -n "animCurveTA73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 12.355514613247321 2 12.355514613247321 
		4 12.355514613247321 6 12.355514613247321 8 12.355514613247321 10 12.355514613247321 
		12 12.355514613247321 14 12.355514613247321 16 12.355514613247321 20 16.711055981208851 
		22 21.371506353668682 25 27.7228482558439 29 27.937817733212981 33 27.7228482558439;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.84595078229904175;
	setAttr -s 14 ".kiy[13]"  0.5332610011100769;
createNode animCurveTA -n "animCurveTA74";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 13.110465504305042 2 13.110465504305042 
		4 13.110465504305042 6 13.110465504305042 8 13.110465504305042 10 13.110465504305042 
		12 13.110465504305042 14 13.110465504305042 16 13.110465504305042 20 15.509977244243281 
		25 21.576484776388227 29 20.962068752035094 33 21.576484776388227;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 3 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 3 9 9 9 5;
	setAttr -s 13 ".kix[12]"  0.65725648403167725;
	setAttr -s 13 ".kiy[12]"  0.75366699695587158;
createNode animCurveTA -n "animCurveTA75";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -14.767765008454203 20 -14.726359399651709 
		22 -8.4698934339948178 25 0 29 -0.16107654581634911 33 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[5]"  0.60029399394989014;
	setAttr -s 6 ".kiy[5]"  0.79977941513061523;
createNode animCurveTA -n "animCurveTA76";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 14.770468576363214 20 2.2014853928939657 
		22 1.2625440058740507 25 0 29 0.092413712494291214 33 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[5]"  0.96452230215072632;
	setAttr -s 6 ".kiy[5]"  -0.26400130987167358;
createNode animCurveTA -n "animCurveTA77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 55.764926091186325 20 21.904707613222531 
		25 27.080064458283058 29 27.051523423532011 33 27.080064458283058;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[4]"  0.91612201929092407;
	setAttr -s 5 ".kiy[4]"  0.40089958906173706;
createNode animCurveTA -n "animCurveTA78";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 16 0 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA79";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 16 0 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA80";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 16 0 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA81";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 16 0 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA82";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 16 0 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA83";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 12.085861696683486 12 12.085861696683486 
		16 12.085861696683486 33 13.994403295754109;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 0.99228841066360474;
	setAttr -s 4 ".kiy[1:3]"  0 0 0.12395039945840836;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA84";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 16 0 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA85";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 16 0 33 0;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA86";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 12.085861696683486 12 12.085861696683486 
		16 12.085861696683486 33 13.994403295754109;
	setAttr -s 4 ".kit[1:3]"  1 3 1;
	setAttr -s 4 ".kot[1:3]"  1 3 5;
	setAttr -s 4 ".kix[1:3]"  1 1 0.99228841066360474;
	setAttr -s 4 ".kiy[1:3]"  0 0 0.12395039945840836;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "animCurveTA87";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 20 0 22 0 25 0 29 0 33 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA88";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 20 0 22 0 25 0 29 0 33 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA89";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 32.176773213055434 20 7.6023589131640987 
		25 27.911632519594587 29 27.673363947836357 33 27.911632519594587;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[4]"  0.47452476620674133;
	setAttr -s 5 ".kiy[4]"  0.88024216890335083;
createNode animCurveTA -n "animCurveTA90";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 2 0 4 0 6 0 8 0 10 0 12 0 14 
		0 16 0 20 0 22 0 25 0 29 0 33 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  1;
	setAttr -s 14 ".kiy[13]"  0;
createNode animCurveTA -n "animCurveTA91";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 2 0 4 0 6 0 8 0 10 0 12 0 14 
		0 16 0 20 0 22 0 25 0 29 0 33 0;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  1;
	setAttr -s 14 ".kiy[13]"  0;
createNode animCurveTA -n "animCurveTA92";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 2 0 4 0 6 0 8 0 10 0 12 0 14 
		0 16 0 20 0 25 0 29 0 33 0;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 3 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 3 9 9 9 5;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTA -n "animCurveTA93";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -34.203514952378796 2 -19.307067123203154 
		4 4.7000675458301524 6 20.460609921381479 8 27.623461621070241 10 16.694694249076012 
		12 1.7348238526755828 14 -15.288941840177673 16 -34.203514952378811 20 -24.693696948780136 
		22 -14.16534112135915 25 0.060800897707795835 29 -0.89964783013780514 33 
		-0.65073001024951549;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.43006795644760132;
	setAttr -s 14 ".kiy[13]"  0.90279650688171387;
createNode animCurveTA -n "animCurveTA94";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 13.307201605151414 2 8.3772244910578344 
		4 0.076362981403492292 6 -6.9181043872256911 8 -11.835338083628937 10 -7.594554086004667 
		12 -1.2239498986519368 14 6.6377386854906719 16 13.307201605151418 20 8.334709834576234 
		22 3.461581439367067 25 -3.1488143283434962 29 -3.8549216508700064 33 -4.2368721935960947;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.61012774705886841;
	setAttr -s 14 ".kiy[13]"  -0.79230302572250366;
createNode animCurveTA -n "animCurveTA95";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -1.6908370075741825 2 0.36071435766715637 
		4 3.07016972459293 6 2.2565867548534166 8 6.2420730336937442 10 6.3199936391118605 
		12 5.4852535380488607 14 3.9947758605182937 16 -1.6908370075741841 20 1.2655280747293944 
		25 -1.1243375163838882 29 8.6186502613600009 33 8.7398866450636881;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 3 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 3 9 9 9 5;
	setAttr -s 13 ".kix[12]"  0.93661040067672729;
	setAttr -s 13 ".kiy[12]"  0.3503725528717041;
createNode animCurveTA -n "animCurveTA96";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 13.337321651149137 4 -3.2708145241771205 
		8 -12.021314821410337 12 -3.2708145241771205 16 13.337321651149139 20 9.5571436300954975 
		22 5.5056958981534247 25 5.309091298179295 29 -0.062090941483529692 33 0;
	setAttr -s 10 ".kit[4:9]"  3 9 9 9 9 1;
	setAttr -s 10 ".kot[4:9]"  3 9 9 9 9 5;
	setAttr -s 10 ".kix[9]"  0.7575531005859375;
	setAttr -s 10 ".kiy[9]"  -0.65277355909347534;
createNode animCurveTA -n "animCurveTA97";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -12.328479369915591 4 -4.3421337319057454 
		8 -0.31575620013280975 12 -4.3421337319057454 16 -12.328479369915593 20 -8.8342361054847398 
		22 -5.1016544922752294 25 1.4177518310154507 29 0.29012648873306951 33 0;
	setAttr -s 10 ".kit[4:9]"  3 9 9 9 9 1;
	setAttr -s 10 ".kot[4:9]"  3 9 9 9 9 5;
	setAttr -s 10 ".kix[9]"  0.77640241384506226;
	setAttr -s 10 ".kiy[9]"  0.63023746013641357;
createNode animCurveTA -n "animCurveTA98";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -16.552212476757049 4 -8.5097744488978595 
		8 -18.853383095579908 12 -8.5097744488978595 16 -16.552212476757052 20 -16.240654383845413 
		25 -15.3212310903799 29 -19.167140518616414 33 -15.452965173287607;
	setAttr -s 9 ".kit[4:8]"  3 9 9 9 1;
	setAttr -s 9 ".kot[4:8]"  3 9 9 9 5;
	setAttr -s 9 ".kix[8]"  0.99994045495986938;
	setAttr -s 9 ".kiy[8]"  -0.010909996926784515;
createNode animCurveTA -n "animCurveTA99";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 2 0 4 0 6 0 8 0 10 0 12 0 14 
		0 16 0 20 1.3807138078917427 22 2.8663143271473417 25 1.1758758582733844 
		29 4.7853012659871945 33 4.8714700432790456;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.93842291831970215;
	setAttr -s 14 ".kiy[13]"  0.34548875689506531;
createNode animCurveTA -n "animCurveTA100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 2 0 4 0 6 0 8 0 10 0 12 0 14 
		0 16 0 20 3.3398107326703808 22 6.9265530956428911 25 -0.1430186972635312 
		29 11.702276528310778 33 11.783606204137085;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.79927390813827515;
	setAttr -s 14 ".kiy[13]"  0.6009669303894043;
createNode animCurveTA -n "animCurveTA101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 2 0 4 0 6 0 8 0 10 0 12 0 14 
		0 16 0 20 2.1377267410869312 25 20.76246334619308 29 7.446086767005009 33 
		7.5423825101935913;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 3 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 3 9 9 9 5;
	setAttr -s 13 ".kix[12]"  0.88374722003936768;
	setAttr -s 13 ".kiy[12]"  0.4679645299911499;
createNode animCurveTA -n "animCurveTA102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 3.5700221305795101 2 3.3949957703859064 
		4 3.1481608479153116 6 3.1391707736312906 8 2.6508484163488597 10 2.4619500457193797 
		12 2.4373342077204763 14 2.9347070646633306 16 3.5700221305795097 20 2.0223937865862882 
		22 0.34663846711621399 25 -1.9210132834913545 29 -1.8498032323703379 33 -1.8903601258661935;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.95204782485961914;
	setAttr -s 14 ".kiy[13]"  -0.30594930052757263;
createNode animCurveTA -n "animCurveTA103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 6.1183128835401384 2 4.5924945357407871 
		4 2.2661381139645753 6 1.3150843990105936 8 -4.9721377844118901 10 -4.7098703008203895 
		12 -3.0302707684652206 14 -0.81350019248270944 16 6.1183128835401384 20 5.1097085431577476 
		22 4.0694394469314812 25 2.6452252609002476 29 2.4883289471764716 33 2.5597289571479034;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.96238696575164795;
	setAttr -s 14 ".kiy[13]"  -0.27168247103691101;
createNode animCurveTA -n "animCurveTA104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 20.705857363312234 2 18.850581109087102 
		4 14.806520955396516 6 7.5731541910984053 8 21.093121868801813 10 19.971345714074371 
		12 15.190641427322463 14 6.7570418854913683 16 20.705857363312234 20 15.408847735711193 
		25 1.1470265897514806 29 3.6836636762190635 33 2.0168110874036036;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 3 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 3 9 9 9 5;
	setAttr -s 13 ".kix[12]"  0.63682198524475098;
	setAttr -s 13 ".kiy[12]"  -0.7710108757019043;
createNode animCurveTA -n "animCurveTA105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -19.191667725386473 20 -14.726359399651709 
		22 -8.470519205359194 25 0 29 -0.14934341545315019 33 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[5]"  0.60399895906448364;
	setAttr -s 6 ".kiy[5]"  0.79698508977890015;
createNode animCurveTA -n "animCurveTA106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.0951908765906087 20 2.2014853928939657 
		22 1.2593735555525496 25 0 29 0.1518596457121931 33 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[5]"  0.94718837738037109;
	setAttr -s 6 ".kiy[5]"  -0.32067766785621643;
createNode animCurveTA -n "animCurveTA107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 33.748415280541188 20 23.704203560448981 
		25 33.429092416277157 29 33.350050541924823 33 33.429092416277157;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[4]"  0.76193469762802124;
	setAttr -s 5 ".kiy[4]"  0.64765387773513794;
createNode animCurveTA -n "animCurveTA108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -60.679962459776895 2 -60.679962459776895 
		4 -60.679962459776895 6 -60.679962459776895 8 -60.679962459776895 10 -60.679962459776895 
		12 -60.679962459776895 14 -60.679962459776895 16 -60.679962459776895 20 -41.142294198750072 
		22 -20.146332203304969 25 8.2533422302317234 29 7.5195645800273772 33 8.2533422302317234;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.20896030962467194;
	setAttr -s 14 ".kiy[13]"  0.97792410850524902;
createNode animCurveTA -n "animCurveTA109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 12.355514613247321 2 12.355514613247321 
		4 12.355514613247321 6 12.355514613247321 8 12.355514613247321 10 12.355514613247321 
		12 12.355514613247321 14 12.355514613247321 16 12.355514613247319 20 15.447121571006075 
		22 18.753829277302035 25 23.263402056531085 29 23.440863887213645 33 23.263402056531085;
	setAttr -s 14 ".kit[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 1;
	setAttr -s 14 ".kot[0:13]"  3 9 9 9 9 9 9 
		9 3 9 9 9 9 5;
	setAttr -s 14 ".kix[13]"  0.92188054323196411;
	setAttr -s 14 ".kiy[13]"  0.38747414946556091;
createNode animCurveTA -n "animCurveTA110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 13.110465504305042 2 13.110465504305042 
		4 13.110465504305042 6 13.110465504305042 8 13.110465504305042 10 13.110465504305042 
		12 13.110465504305042 14 13.110465504305042 16 13.110465504305045 20 15.110284348234281 
		25 20.166277752815617 29 19.753897638171988 33 20.166277752815617;
	setAttr -s 13 ".kit[0:12]"  3 9 9 9 9 9 9 
		9 3 9 9 9 1;
	setAttr -s 13 ".kot[0:12]"  3 9 9 9 9 9 9 
		9 3 9 9 9 5;
	setAttr -s 13 ".kix[12]"  0.7630927562713623;
	setAttr -s 13 ".kiy[12]"  0.64628899097442627;
createNode animCurveTA -n "animCurveTA111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 20 0 22 0 25 0 29 0 33 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 20 0 22 0 25 0 29 0 33 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[5]"  5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
createNode animCurveTA -n "animCurveTA113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 46.925751880851998 20 4.581714808913234 
		25 17.254116939558365 29 17.105444240167405 33 17.254116939558365;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[4]"  0.65375888347625732;
	setAttr -s 5 ".kiy[4]"  0.7567029595375061;
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
	setAttr -s 40 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 40 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 4 ".tx";
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
connectAttr "apu_dash_allSource.st" "clipLibrary1.st[0]";
connectAttr "apu_dash_allSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL1.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL2.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "apu_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "apu_Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr"
		;
connectAttr "apu_Hoop_Root_IK_FK_RFoot.a" "clipLibrary1.cel[0].cev[6].cevr"
		;
connectAttr "apu_Hoop_Root_IK_FK_LFoot.a" "clipLibrary1.cel[0].cev[7].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary1.cel[0].cev[8].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary1.cel[0].cev[9].cevr"
		;
connectAttr "animCurveTU5.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU6.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU7.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU8.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "apu_Hoop_Root_rotateX.a" "clipLibrary1.cel[0].cev[14].cevr"
		;
connectAttr "apu_Hoop_Root_rotateY.a" "clipLibrary1.cel[0].cev[15].cevr"
		;
connectAttr "apu_Hoop_Root_rotateZ.a" "clipLibrary1.cel[0].cev[16].cevr"
		;
connectAttr "apu_Hoop_Root_translateX.a" "clipLibrary1.cel[0].cev[17].cevr"
		;
connectAttr "apu_Hoop_Root_translateY.a" "clipLibrary1.cel[0].cev[18].cevr"
		;
connectAttr "apu_Hoop_Root_translateZ.a" "clipLibrary1.cel[0].cev[19].cevr"
		;
connectAttr "animCurveTL9.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL10.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL11.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA5.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA6.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA7.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL12.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL13.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL14.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA8.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA9.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA10.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA11.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA12.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA13.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA14.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA15.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA16.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL15.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL16.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL17.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL18.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL19.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL20.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL21.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL22.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL23.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA17.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA18.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA19.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA20.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA21.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA22.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA23.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA24.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA25.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA26.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA27.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA28.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA29.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA30.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA31.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA32.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA33.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA34.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA35.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA36.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA37.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA38.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA39.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA40.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA41.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA42.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA43.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA44.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA45.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "Right_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[76].cevr"
		;
connectAttr "Right_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[77].cevr"
		;
connectAttr "Right_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[78].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[79].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[80].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[81].cevr"
		;
connectAttr "Left_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "Left_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "Left_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "animCurveTL30.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL31.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL32.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA52.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA53.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA54.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL33.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL34.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL35.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA55.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA56.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA57.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL36.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL37.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL38.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL39.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL40.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL41.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA58.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA59.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA60.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA61.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA62.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA63.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA64.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA65.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA66.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA67.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA68.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA69.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA70.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA71.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA72.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA73.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA74.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA75.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA76.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA77.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA78.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA79.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA80.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA81.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA82.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA83.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA84.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA85.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA86.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA87.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA88.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA89.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA90.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA91.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA92.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA93.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA94.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA95.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA96.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA97.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA98.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA99.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA100.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA101.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA102.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA103.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA104.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA105.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA106.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA107.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA108.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA109.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA110.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA111.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA112.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA113.a" "clipLibrary1.cel[0].cev[161].cevr";
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
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of apu_dash_all.ma
