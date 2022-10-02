//Maya ASCII 4.0 scene
//Name: hom_shaking_fist.ma
//Last modified: Tue, Feb 18, 2003 12:17:14 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_shaking_fistSource";
	setAttr ".ihi" 0;
	setAttr ".du" 60;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 -0.051425456377630012 1 -0.052985441833563129 
		2 -0.054703714473648683 3 -0.056512436940000667 4 -0.058343771874733087 5 
		-0.060129881919959952 6 -0.061802929717795288 7 -0.063295077910353076 8 -0.064538489139747329 
		9 -0.065465326048092076 10 -0.066007751277501317 11 -0.066329606651755954 
		12 -0.066639824045835613 13 -0.066938201178652304 14 -0.067224535769118021 
		15 -0.067498625536144816 16 -0.067760268198644683 17 -0.068009261475529631 
		18 -0.068245403085711698 19 -0.06846849074810292 20 -0.068678322181615264 
		21 -0.068874695105160783 22 -0.069057407237651469 23 -0.069226256297999375 
		24 -0.069381040005116482 25 -0.069521556077914826 26 -0.069647602235306416 
		27 -0.06975897619620329 28 -0.069855475679517429 29 -0.069936898404160855 
		30 -0.070003042089045633 31 -0.070053704453083732 32 -0.070088683215187186 
		33 -0.070107776094267993 34 -0.070110780809238216 35 -0.070097495079009836 
		36 -0.070067716622494863 37 -0.070021243158605334 38 -0.069957872406253258 
		39 -0.069877402084350657 40 -0.069779629911809554 41 -0.069664353607541959 
		42 -0.069531370890459882 43 -0.069380479479475343 44 -0.069211477093500354 
		45 -0.06902416145144695 46 -0.068818330272227154 47 -0.068593781274752949 
		48 -0.068350312177936384 49 -0.068087720700689441 50 -0.067805804561924185 
		51 -0.067258344772900408 52 -0.066253112754617718 53 -0.064870891840597716 
		54 -0.063192465364362044 55 -0.061298616659432315 56 -0.059270129059330177 
		57 -0.057187785897577247 58 -0.055132370507695157 59 -0.053184666223205543 
		60 -0.051425456377630012;
createNode animCurveTL -n "animCurveTL209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 0.00092063151676456917 2 
		0.0019600746161039383 3 0.0030674100517662957 4 0.0041917185774998323 5 0.0052820809470527372 
		6 0.0062875779141732006 7 0.0071572902326094111 8 0.0078402986561095598 9 
		0.0082856839384218353 10 0.0084425268332944288 11 0.0084354810149570025 12 
		0.0084231862412074282 13 0.0084057023923990101 14 0.0083830893488850474 15 
		0.0083554069910188496 16 0.0083227151991537157 17 0.0082850738536429519 18 
		0.0082425428348398607 19 0.0081951820230977447 20 0.00814305129876991 21 
		0.008086210542209659 22 0.0080247196337702928 23 0.0079586384538051207 24 
		0.0078880268826674402 25 0.0078129448007105591 26 0.007733452088287779 27 
		0.0076496086257524043 28 0.0075614742934577385 29 0.0074691089717570849 30 
		0.007372572541003747 31 0.0072719248815510274 32 0.0071672258737522322 33 
		0.0070585353979606639 34 0.0069459133345296268 35 0.006829419563812421 36 
		0.0067091139661623533 37 0.0065850564219327281 38 0.0064573068114768461 39 
		0.0063259250151480127 40 0.006190970913299532 41 0.006052504386284705 42 
		0.0059105853144568385 43 0.0057652735781692352 44 0.0056166290577751967 45 
		0.0054647116336280291 46 0.0053095811860810324 47 0.0051512975954875161 48 
		0.0049899207422007784 49 0.0048255105065741254 50 0.0046581267689608588 51 
		0.0044328534323825339 52 0.0041066129655135172 53 0.0036972230971863401 54 
		0.0032225015562335293 55 0.0027002660714876155 56 0.0021483343717811263 57 
		0.0015845241859465914 58 0.0010266532428165401 59 0.0004925392712235001 60 
		0;
createNode animCurveTA -n "animCurveTA566";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
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
createNode animCurveTU -n "animCurveTU45";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 1 50 1 60 0;
	setAttr -s 4 ".kit[0:3]"  1 2 2 1;
	setAttr -s 4 ".kot[0:3]"  9 2 2 5;
	setAttr -s 4 ".kix[0:3]"  0 0.31622776389122009 1 0.31622779369354248;
	setAttr -s 4 ".kiy[0:3]"  0 0.94868332147598267 0 -0.94868326187133789;
createNode animCurveTU -n "animCurveTU46";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 1 50 1 60 0;
	setAttr -s 4 ".kit[0:3]"  1 2 2 1;
	setAttr -s 4 ".kot[0:3]"  9 2 2 5;
	setAttr -s 4 ".kix[0:3]"  0 0.31622776389122009 1 0.31622779369354248;
	setAttr -s 4 ".kiy[0:3]"  0 0.94868332147598267 0 -0.94868326187133789;
createNode animCurveTU -n "animCurveTU47";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU48";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA567";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA568";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA569";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.26454016861507795 60 -0.26454016861507795;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.13806192026723146 60 0.13806192026723146;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.064904406754016042 60 -0.064904406754016042;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA570";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA571";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -25.948901905116401 60 -25.948901905116401;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA572";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.21594587158542247 60 0.21594587158542247;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.1380615615975922 60 0.1380615615975922;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.00078430246903575811 60 0.00078430246903575811;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA573";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA574";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA575";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA576";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA577";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA578";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA579";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA580";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA581";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.076472881617957691 10 -0.098157669467134556 
		50 -0.1008314875651741 60 -0.076472881617957691;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.5646897554397583 0.6093904972076416 
		0.13558059930801392;
	setAttr -s 4 ".kiy[0:3]"  0 -0.82530325651168823 0.79287022352218628 
		0.99076634645462036;
createNode animCurveTL -n "animCurveTL227";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.93105416142265018 10 0.96376438900734485 
		50 0.96376438900734485 60 0.93105416142265018;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.81775623559951782 0.83172661066055298 
		0.10137989372014999;
	setAttr -s 4 ".kiy[0:3]"  0 0.5755646824836731 -0.55518543720245361 
		-0.99484777450561523;
	setAttr -s 4 ".kox[1:3]"  0.81775611639022827 0.83172571659088135 
		0.10137989372014999;
	setAttr -s 4 ".koy[1:3]"  0.57556486129760742 -0.55518674850463867 
		-0.99484777450561523;
createNode animCurveTL -n "animCurveTL228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 0.012554567339917699 50 
		0.0069269268968342847 60 0;
	setAttr -s 4 ".kit[0:3]"  1 1 9 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99980729818344116 0.79874300956726074 
		0.43361985683441162;
	setAttr -s 4 ".kiy[0:3]"  0 -0.019631605595350266 -0.60167235136032104 
		-0.9010959267616272;
	setAttr -s 4 ".kox[1:3]"  0.99980729818344116 0.79874300956726074 
		0.43361985683441162;
	setAttr -s 4 ".koy[1:3]"  -0.019631603732705116 -0.60167235136032104 
		-0.9010959267616272;
createNode animCurveTA -n "animCurveTA582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.62843630316474508 10 2.8798183916023534 
		50 4.2946925490903149 60 -0.62843630316474508;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99867367744445801 0.99932581186294556 
		0.96834522485733032;
	setAttr -s 4 ".kiy[0:3]"  0 0.051486507058143616 -0.036713588982820511 
		-0.24961464107036591;
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -5.8284402688137167 10 0.032356037197084186 
		50 0.032356037197084173 60 -5.8284402688137167;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99812191724777222 0.99812191724777222 
		0.95599955320358276;
	setAttr -s 4 ".kiy[0:3]"  0 0.061258852481842041 -0.061258852481842041 
		-0.2933681309223175;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.295636019309746 10 -0.64317426163671099 
		50 -0.64317426163671065 60 -1.295636019309746;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99997663497924805 0.99997663497924805 
		0.99941694736480713;
	setAttr -s 4 ".kiy[0:3]"  0 0.0068324045278131962 -0.0068324045278131962 
		-0.034142900258302689;
createNode animCurveTA -n "animCurveTA585";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA586";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA587";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA588";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA589";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA590";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA591";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA592";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA593";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA594";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA595";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA596";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA597";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA598";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA599";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA600";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA601";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA602";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA603";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA604";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA605";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA606";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA607";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA608";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA609";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA610";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.43524234076486068 60 -0.43524234076486068;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 60 -0.82665738350180629;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 60 0.27773886459742925;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA611";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.8121934161072299e-015 60 1.8121934161072299e-015;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA612";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 28.652637602052774 60 28.652637602052774;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA613";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.676908227303443 60 64.676908227303443;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.5198069948790518 60 0.5198069948790518;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 60 -0.72394202659893114;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 60 0.36439499068905612;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA614";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965317 60 7.7976222737965317;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA615";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -30.409274105849079 60 -30.409274105849079;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA616";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.859940280210893 60 -64.859940280210893;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.98071836797454492 60 -0.98071836797454492;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.6432964864655397 60 1.6432964864655397;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.097994651149805143 60 -0.097994651149805143;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA617";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 5.4739599453216465 60 5.4739599453216465;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA618";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.5874521608419823 60 8.5874521608419823;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 74.754744621954103 60 74.754744621954103;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.76309120872911718 60 0.76309120872911718;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.6150490657878991 60 1.6150490657878991;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.14314299916678522 60 0.14314299916678522;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 16.226511010665412 60 16.226511010665412;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -8.5139660854992858 60 -8.5139660854992858;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -68.213989601412422 60 -68.213989601412422;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1 60 -1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.10167917362943303 60 -0.10167917362943303;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.40762644910266188 60 -0.40762644910266188;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.93129112588482243 60 -0.93129112588482243;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA623";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 12.253734489678925 10 -67.023443446392847 
		50 -67.023443446392847 60 12.253734489678925;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99438655376434326 0.97092688083648682 
		0.23420853912830353;
	setAttr -s 4 ".kiy[0:3]"  0 -0.10580802708864212 0.23937629163265228 
		0.9721863865852356;
	setAttr -s 4 ".kox[1:3]"  0.99438655376434326 0.97092688083648682 
		0.23420853912830353;
	setAttr -s 4 ".koy[1:3]"  -0.10580804944038391 0.23937623202800751 
		0.9721863865852356;
createNode animCurveTA -n "animCurveTA624";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -65.746751280844975 10 -11.674435651078507 
		50 -11.674435651078507 60 -65.746751280844975;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.98572587966918945 0.99898278713226318 
		0.33304101228713989;
	setAttr -s 4 ".kiy[0:3]"  0 0.16835823655128479 -0.045093424618244171 
		-0.94291234016418457;
	setAttr -s 4 ".kox[1:3]"  0.98572587966918945 0.99898278713226318 
		0.33304101228713989;
	setAttr -s 4 ".koy[1:3]"  0.1683582067489624 -0.045093409717082977 
		-0.94291234016418457;
createNode animCurveTA -n "animCurveTA625";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 73.209880528654736 50 73.209880528654736 
		60 0;
	setAttr -s 4 ".kit[3]"  9;
	setAttr -s 4 ".kot[0:3]"  9 1 1 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99779433012008667 0.99568289518356323 
		0.2524263858795166;
	setAttr -s 4 ".kiy[0:3]"  0 0.066381484270095825 -0.092819929122924805 
		-0.96761608123779297;
	setAttr -s 4 ".kox[1:3]"  0.99779433012008667 0.99568289518356323 
		0.2524263858795166;
	setAttr -s 4 ".koy[1:3]"  0.066381439566612244 -0.092819914221763611 
		-0.96761608123779297;
createNode animCurveTA -n "animCurveTA626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.061808866237340665 10 46.211399949024518 
		50 46.211399949024518 60 -0.061808866237340665;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.89991182088851929 0.89991182088851929 
		0.38151690363883972;
	setAttr -s 4 ".kiy[0:3]"  0 0.4360719621181488 -0.4360719621181488 
		-0.92436188459396362;
createNode animCurveTA -n "animCurveTA627";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -59.058178941076754 10 -31.253419128209984 
		50 -31.253419128209984 60 -59.058178941076754;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.96012789011001587 0.96012789011001587 
		0.56618297100067139;
	setAttr -s 4 ".kiy[0:3]"  0 0.27956119179725647 -0.27956119179725647 
		-0.82427960634231567;
createNode animCurveTA -n "animCurveTA628";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 16.57914742975785 10 -53.488362918341828 
		50 -53.488362918341828 60 16.57914742975785;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.80624657869338989 0.80624657869338989 
		0.26297992467880249;
	setAttr -s 4 ".kiy[0:3]"  0 -0.5915796160697937 0.5915796160697937 
		0.96480131149291992;
createNode animCurveTA -n "animCurveTA629";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 8.5572674112203639 10 58.18498084109217 
		12 63.906122114553988 14 55.46201856474346 16 69.955479566884932 18 53.899675724094713 
		20 68.868987069778143 23 54.735696694276058 26 63.340599085373547 29 53.194059493785232 
		32 61.373811912588913 36 54.378362965883163 40 58.18498084109217 50 58.18498084109217 
		60 8.5572674112203639;
	setAttr -s 15 ".kit[0:14]"  1 9 3 3 3 3 3 
		3 3 3 3 3 9 1 9;
	setAttr -s 15 ".kot[0:14]"  9 9 3 3 3 3 3 
		3 3 3 3 3 9 1 9;
	setAttr -s 15 ".kix[0:14]"  0 0.38257038593292236 1 1 1 1 1 
		1 1 1 1 1 0.99001729488372803 0.99849766492843628 0.35915946960449219;
	setAttr -s 15 ".kiy[0:14]"  0 0.92392635345458984 0 0 0 0 0 
		0 0 0 0 0 0.14094597101211548 -0.054794751107692719 -0.93327623605728149;
	setAttr -s 15 ".kox[13:14]"  0.99849766492843628 0.35915946960449219;
	setAttr -s 15 ".koy[13:14]"  -0.054794769734144211 -0.93327623605728149;
createNode animCurveTA -n "animCurveTA630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 15.711328223519061 10 43.274961386243781 
		50 43.274961386243781 60 15.711328223519061;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.96077644824981689 0.96077644824981689 
		0.5695340633392334;
	setAttr -s 4 ".kiy[0:3]"  0 0.27732399106025696 -0.27732399106025696 
		-0.8219677209854126;
createNode animCurveTA -n "animCurveTA631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 -56.06501192956862 50 -56.06501192956862 
		60 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.86235743761062622 0.86235743761062622 
		0.32245489954948425;
	setAttr -s 4 ".kiy[0:3]"  0 -0.50629991292953491 0.50629991292953491 
		0.94658482074737549;
createNode animCurveTA -n "animCurveTA632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 -10.471413205801918 50 -10.471413205801918 
		60 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99404144287109375 0.99404144287109375 
		0.87685132026672363;
	setAttr -s 4 ".kiy[0:3]"  0 -0.10900299251079559 0.10900299251079559 
		0.48076170682907104;
createNode animCurveTA -n "animCurveTA633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 15.115370958430159 50 15.115370958430159 
		60 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.98770308494567871 0.98770308494567871 
		0.78413271903991699;
	setAttr -s 4 ".kiy[0:3]"  0 0.15634134411811829 -0.15634134411811829 
		-0.62059319019317627;
createNode animCurveTA -n "animCurveTA634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 10.423754966968488 60 10.423754966968488;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 27.7228482558439 60 27.7228482558439;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 21.576484776388224 60 21.576484776388224;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.080064458283051 10 67.192248785462226 
		50 67.192248785462226 60 27.080064458283051;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.92196440696716309 0.92196440696716309 
		0.42988869547843933;
	setAttr -s 4 ".kiy[0:3]"  0 0.38727465271949768 -0.38727465271949768 
		-0.902881920337677;
createNode animCurveTA -n "animCurveTA643";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA644";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA645";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA646";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 60 13.994403295754109;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA650";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 60 13.994403295754109;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA653";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.911632519594587 10 55.279018713593231 
		50 55.279018713593231 60 27.911632519594587;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.96130108833312988 0.96130108833312988 
		0.57228374481201172;
	setAttr -s 4 ".kiy[0:3]"  0 0.27549988031387329 -0.27549988031387329 
		-0.82005566358566284;
createNode animCurveTA -n "animCurveTA655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA657";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA658";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.6507300102495166 10 6.3236536703965802 
		50 7.0214176866588671 60 -0.6507300102495166;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99678808450698853 0.99734354019165039 
		0.92792767286300659;
	setAttr -s 4 ".kiy[0:3]"  0 0.08008449524641037 -0.072841554880142212 
		-0.37276032567024231;
createNode animCurveTA -n "animCurveTA659";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -4.2368721935960929 10 6.9342283547515615 
		50 6.8621161012451184 60 -4.2368721935960929;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99331313371658325 0.99322688579559326 
		0.86460250616073608;
	setAttr -s 4 ".kiy[0:3]"  0 0.1154511347413063 -0.11619114875793457 
		-0.50245648622512817;
createNode animCurveTA -n "animCurveTA660";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 8.7398866450636863 10 0.1044908688053426 
		12 1.3217209690329967 14 0.1044908688053426 16 1.3217209690329967 18 0.1044908688053426 
		20 1.3217209690329967 23 0.1044908688053426 26 1.3217209690329967 29 0.1044908688053426 
		32 1.3217209690329967 36 0.1044908688053426 40 1.3217209690329967 50 0.72027540605350671 
		60 8.7398866450636863;
	setAttr -s 15 ".kit[0:14]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9;
	setAttr -s 15 ".kix[0:14]"  0 0.95140296220779419 1 1 1 1 1 
		1 1 1 1 1 0.99973493814468384 0.98165899515151978 0.92201310396194458;
	setAttr -s 15 ".kiy[0:14]"  0 -0.30794873833656311 0 0 0 0 
		0 0 0 0 0 0 0.023024182766675949 0.19064518809318542 0.38715869188308716;
createNode animCurveTA -n "animCurveTA661";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 -9.570709688671819 50 -9.570709688671819 
		60 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99501508474349976 0.99501508474349976 
		0.89402586221694946;
	setAttr -s 4 ".kiy[0:3]"  0 -0.099724628031253815 0.099724628031253815 
		0.44801530241966248;
createNode animCurveTA -n "animCurveTA662";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 10 -6.3361945571336244 50 -6.3361945571336244 
		60 0;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.9978058934211731 0.9978058934211731 
		0.94912964105606079;
	setAttr -s 4 ".kiy[0:3]"  0 -0.066206887364387512 0.066206887364387512 
		0.31488549709320068;
createNode animCurveTA -n "animCurveTA663";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA664";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.8714700432790465 60 4.8714700432790465;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA665";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 11.783606204137087 60 11.783606204137087;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA666";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.5423825101935931 60 7.5423825101935931;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA667";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.8903601258661931 10 -0.64722709656317345 
		50 1.0527259485707507 60 -1.8903601258661931;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99952542781829834 0.99991530179977417 
		0.98833400011062622;
	setAttr -s 4 ".kiy[0:3]"  0 0.030805299058556557 -0.013016955927014351 
		-0.15230189263820648;
createNode animCurveTA -n "animCurveTA668";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.5597289571479034 10 4.5362068636446526 
		50 4.5111806380491659 60 2.5597289571479034;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99979126453399658 0.9997859001159668 
		0.99482035636901855;
	setAttr -s 4 ".kiy[0:3]"  0 0.020431289449334145 -0.020693197846412659 
		-0.10164852440357208;
createNode animCurveTA -n "animCurveTA669";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.0168110874036045 10 -0.02563471306874987 
		50 1.4186355726303357 60 2.0168110874036045;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.9999803900718689 0.9997713565826416 
		0.99950987100601196;
	setAttr -s 4 ".kiy[0:3]"  0 -0.0062639564275741577 0.021383551880717278 
		0.031305044889450073;
createNode animCurveTA -n "animCurveTA670";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA671";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA672";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 33.429092416277157 10 84.356784919957406 
		50 84.356784919957406 60 33.429092416277157;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.88236016035079956 0.88236016035079956 
		0.35113486647605896;
	setAttr -s 4 ".kiy[0:3]"  0 0.47057464718818665 -0.47057464718818665 
		-0.93632489442825317;
createNode animCurveTA -n "animCurveTA673";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.2533422302317216 10 6.8355305161438329 
		50 6.8355305161438329 60 8.2533422302317216;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.9998897910118103 0.9998897910118103 
		0.99725580215454102;
	setAttr -s 4 ".kiy[0:3]"  0 -0.014845653437077999 0.014845653437077999 
		0.074032731354236603;
createNode animCurveTA -n "animCurveTA674";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 23.263402056531085 10 35.29420794367595 
		50 35.29420794367595 60 23.263402056531085;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.992156982421875 0.992156982421875 
		0.84611767530441284;
	setAttr -s 4 ".kiy[0:3]"  0 0.12499819695949554 -0.12499819695949554 
		-0.53299617767333984;
createNode animCurveTA -n "animCurveTA675";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 20.166277752815617 10 18.034481280099516 
		50 18.034481280099516 60 20.166277752815617;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.99975091218948364 0.99975091218948364 
		0.99382805824279785;
	setAttr -s 4 ".kiy[0:3]"  0 -0.022318560630083084 0.022318560630083084 
		0.11093167215585709;
createNode animCurveTA -n "animCurveTA676";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA677";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA678";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 17.254116939558369 10 53.374751096036299 
		50 53.374751096036299 60 17.254116939558369;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  0 0.93532460927963257 0.93532460927963257 
		0.46742701530456543;
	setAttr -s 4 ".kiy[0:3]"  0 0.35379067063331604 -0.35379067063331604 
		-0.88403165340423584;
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
connectAttr "hom_shaking_fistSource.st" "clipLibrary2.st[0]";
connectAttr "hom_shaking_fistSource.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL206.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL207.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary2.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL209.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary2.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA566.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "hom_Hoop_Root_IK_FK_RFoot.a" "clipLibrary2.cel[0].cev[6].cevr"
		;
connectAttr "hom_Hoop_Root_IK_FK_LFoot.a" "clipLibrary2.cel[0].cev[7].cevr"
		;
connectAttr "hom_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary2.cel[0].cev[8].cevr"
		;
connectAttr "hom_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary2.cel[0].cev[9].cevr"
		;
connectAttr "animCurveTU45.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU46.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU47.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU48.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA567.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA568.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA569.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL211.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL212.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL213.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL214.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL215.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL216.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA570.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA571.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA572.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL217.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL218.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL219.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA573.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA574.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA575.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA576.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA577.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA578.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA579.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA580.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA581.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTL220.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTL221.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTL222.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTL223.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTL224.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTL225.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL226.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL227.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL228.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTA582.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTA583.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTA584.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTA585.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTA586.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTA587.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA588.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA589.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA590.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA591.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA592.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA593.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA594.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA595.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA596.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA597.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA598.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA599.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA600.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA601.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA602.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA603.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA604.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA605.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA606.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA607.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA608.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA609.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA610.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTL229.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTL230.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTL231.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA611.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA612.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA613.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL232.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL233.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL234.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA614.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA615.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA616.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL235.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL236.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL237.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA617.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA618.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA619.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL238.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL239.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL240.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA620.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA621.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA622.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL241.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL242.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL243.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTL244.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTL245.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTL246.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTA623.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTA624.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTA625.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTA626.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTA627.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTA628.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA629.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA630.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA631.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA632.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA633.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA634.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA635.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA636.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA637.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA638.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA639.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA640.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA641.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA642.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA643.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA644.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA645.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA646.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA647.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA648.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA649.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA650.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA651.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA652.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA653.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA654.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA655.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA656.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA657.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA658.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA659.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA660.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA661.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA662.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA663.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA664.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA665.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA666.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA667.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA668.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA669.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA670.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA671.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA672.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA673.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA674.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA675.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA676.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA677.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA678.a" "clipLibrary2.cel[0].cev[161].cevr";
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
// End of hom_shaking_fist.ma
