//Maya ASCII 4.0 scene
//Name: frk_turn_45_CW.ma
//Last modified: Tue, Jun 18, 2002 03:20:03 PM
requires maya "4.0";
requires "p3dmayaexp" "17.6";
requires "p3dSimpleShader" "17.1";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "frk_turn_45_CWSource";
	setAttr ".ihi" 0;
	setAttr ".du" 44;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL575";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 27 0 33 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "animCurveTL576";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 15 0 22 1 33 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "animCurveTL577";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0.054075435230564878 1 0.052977115873232776 
		2 0.05000670828388859 3 0.045651038186510451 4 0.040396931305076489 5 0.034731213363564842 
		6 0.029140710085953651 7 0.02411224719622105 8 0.01977651118777914 9 0.015604887237104246 
		10 0.011095249092770888 11 0.0057454705033535679 12 -0.00094657478257320485 
		13 -0.011179995877293203 14 -0.024620041921803029 15 -0.037968049210597418 
		16 -0.047925354038171081 17 -0.05119329269901874 18 -0.045563587467836994 
		19 -0.033235347459426128 20 -0.017520989228436479 21 -0.0017329293295183564 
		22 0.010816415682677914 23 0.020529959617640339 24 0.029615980346922154 25 
		0.037470107408970853 26 0.04348797034223395 27 0.047065198685158925 28 0.047923492602668212 
		29 0.046659160578488963 30 0.04397974462927573 31 0.040592786771683091 32 
		0.037205829022365598 33 0.034526413397977809 34 0.034526413397977809 35 0.034526413397977809 
		36 0.034526413397977809 37 0.034526413397977809 38 0.034526413397977809 39 
		0.034526413397977809 40 0.034526413397977809 41 0.034526413397977809 42 0.034526413397977809 
		43 0.034526413397977809 44 0.034526413397977809 45 0.034526413397977809 46 
		0.034526413397977809 47 0.034526413397977809 48 0.034526413397977809 49 0.034526413397977809 
		50 0.034526413397977809 51 0.034526413397977809 52 0.034526413397977809 53 
		0.034526413397977809 54 0.034526413397977809 55 0.034526413397977809 56 0.034526413397977809 
		57 0.034526413397977809 58 0.034526413397977809 59 0.034526413397977809 60 
		0.034526413397977809;
createNode animCurveTL -n "animCurveTL578";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 
		0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0;
createNode animCurveTL -n "animCurveTL579";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 0.0039346854871376048 2 0.0076273634267357204 
		3 0.011259539451013531 4 0.015012719192190225 5 0.019068408282484985 6 0.023608112354116997 
		7 0.028813337039305439 8 0.035795011705112185 9 0.044574916979635754 10 0.053700835386650325 
		11 0.061720549449930086 12 0.0671818416932492 13 0.069042349984687348 14 
		0.06827021929151994 15 0.066428992786314631 16 0.065082213641639172 17 0.065793425030061276 
		18 0.069562622969200266 19 0.075347445311983577 20 0.081647897983941051 21 
		0.086963986910602545 22 0.089795718017497847 23 0.090129827622780379 24 0.088966311797434083 
		25 0.086325066096234693 26 0.082225986073957924 27 0.076688967285379453 28 
		0.069515812562437246 29 0.060830987831201083 30 0.051138383287644446 31 0.040941889127740744 
		32 0.030745395547463434 33 0.021052792742785976 34 0.021052792742785976 35 
		0.021052792742785976 36 0.021052792742785976 37 0.021052792742785976 38 0.021052792742785976 
		39 0.021052792742785976 40 0.021052792742785976 41 0.021052792742785976 42 
		0.021052792742785976 43 0.021052792742785976 44 0.021052792742785976 45 0.021052792742785976 
		46 0.021052792742785976 47 0.021052792742785976 48 0.021052792742785976 49 
		0.021052792742785976 50 0.021052792742785976 51 0.021052792742785976 52 0.021052792742785976 
		53 0.021052792742785976 54 0.021052792742785976 55 0.021052792742785976 56 
		0.021052792742785976 57 0.021052792742785976 58 0.021052792742785976 59 0.021052792742785976 
		60 0.021052792742785976;
createNode animCurveTA -n "animCurveTA1583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 -2.1428572178307483 14 -4.2857144294638232 15 -6.4285716346940092 
		16 -8.5714288333160944 17 -10.714286025124865 18 -12.857143209915106 19 -15.000000387481608 
		20 -17.142857557619152 21 -19.285714720122527 22 -21.428571874786517 23 -23.571429021405912 
		24 -25.714286159775494 25 -27.85714328969005 26 -30.000000410944374 27 -32.142857523333241 
		28 -34.285714626651448 29 -36.428571720693768 30 -38.571428805254996 31 -40.714285880129928 
		32 -42.857142945113324 33 -45 34 -45 35 -45 36 -45 37 -45 38 -45 39 -45 40 
		-45 41 -45 42 -45 43 -45 44 -45 45 -45 46 -45 47 -45 48 -45 49 -45 50 -45 
		51 -45 52 -45 53 -45 54 -45 55 -45 56 -45 57 -45 58 -45 59 -45 60 -45;
createNode animCurveTU -n "animCurveTU109";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU110";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU111";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU112";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 1;
createNode animCurveTU -n "animCurveTU116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  33 1;
createNode animCurveTA -n "animCurveTA1584";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1585";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1586";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL580";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL581";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL582";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.21594587158542247 7 -0.21594587158542247 
		12 -0.21594587158542247 17 -0.21594587158542247 22 -0.21594587158542247 27 
		-0.076757396077472576 33 -0.13995906975362418;
	setAttr -s 7 ".kit[0:6]"  3 9 9 3 3 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 3 3 9 9;
createNode animCurveTL -n "animCurveTL584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.1380615615975922 7 0.1380615615975922 
		12 0.1380615615975922 17 0.1380615615975922 22 0.1380615615975922 27 0.26633453734111123 
		33 0.1380615615975922;
	setAttr -s 7 ".kit[0:6]"  3 9 9 3 3 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 3 3 9 9;
createNode animCurveTL -n "animCurveTL585";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.00078430246903575811 7 0.00078430246903575811 
		12 0.00078430246903575811 17 0.00078430246903575811 22 0.00078430246903575811 
		27 -0.0044711366676245005 33 -0.14760932921049846;
	setAttr -s 7 ".kit[0:6]"  3 9 9 3 3 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 3 3 9 9;
createNode animCurveTA -n "animCurveTA1587";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 22.45510652348095 
		33 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 3 3 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 3 3 9 9;
createNode animCurveTA -n "animCurveTA1588";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 -32.440799701823529 
		33 -41.208715838439467;
	setAttr -s 7 ".kit[0:6]"  3 9 9 3 3 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 3 3 9 9;
createNode animCurveTA -n "animCurveTA1589";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 -10.990714959757717 
		33 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 3 3 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 3 3 9 9;
createNode animCurveTL -n "animCurveTL586";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.26454016861507795 7 0.26454016861507795 
		12 0.26454016861507795 17 0.068457858697119053 22 0.25905360304427449 27 
		0.25905360304427449 33 0.25905360304427449;
	setAttr -s 7 ".kit[3:6]"  9 3 3 3;
	setAttr -s 7 ".kot[3:6]"  9 3 3 3;
createNode animCurveTL -n "animCurveTL587";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.13806192026723146 7 0.13806192026723146 
		12 0.13806192026723146 17 0.24905013308532861 22 0.13806192026723146 27 0.13806192026723146 
		33 0.13806192026723146;
	setAttr -s 7 ".kit[3:6]"  9 3 3 3;
	setAttr -s 7 ".kot[3:6]"  9 3 3 3;
createNode animCurveTL -n "animCurveTL588";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.064904406754016042 7 -0.064904406754016042 
		12 -0.064904406754016042 17 0.021118131587288681 22 0.1194296036490157 27 
		0.1194296036490157 33 0.1194296036490157;
	setAttr -s 7 ".kit[3:6]"  9 3 3 3;
	setAttr -s 7 ".kot[3:6]"  9 3 3 3;
createNode animCurveTA -n "animCurveTA1590";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 13.062534861897403 
		22 0 27 0 33 0;
	setAttr -s 7 ".kit[3:6]"  9 3 3 3;
	setAttr -s 7 ".kot[3:6]"  9 3 3 3;
createNode animCurveTA -n "animCurveTA1591";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 25.948901905116401 7 25.948901905116401 
		12 25.948901905116401 17 2.8987226020928318 22 -23.444339537523195 27 -23.444339537523195 
		33 -23.444339537523195;
	setAttr -s 7 ".kit[3:6]"  9 3 3 3;
	setAttr -s 7 ".kot[3:6]"  9 3 3 3;
createNode animCurveTA -n "animCurveTA1592";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 0 33 
		0;
	setAttr -s 7 ".kit[3:6]"  9 3 3 3;
	setAttr -s 7 ".kot[3:6]"  9 3 3 3;
createNode animCurveTA -n "animCurveTA1593";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1594";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1595";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1596";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1597";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1598";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL589";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 0 33 
		0;
createNode animCurveTL -n "animCurveTL590";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 0 33 
		0;
createNode animCurveTL -n "animCurveTL591";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 7 1 12 1 17 1 22 1 27 1 33 
		1;
createNode animCurveTL -n "animCurveTL592";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 0 33 
		0;
createNode animCurveTL -n "animCurveTL593";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 0 33 
		0;
createNode animCurveTL -n "animCurveTL594";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 7 1 12 1 17 1 22 1 27 1 33 
		1;
createNode animCurveTL -n "animCurveTL595";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.076472881617957691 7 0.034099272941908836 
		12 -0.0013386355742052265 17 -0.072396987569555676 22 0.015296455266707034 
		27 0.066559082733770522 33 0.04882687144760766;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL596";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.99296149630440855 7 0.98816204637547023 
		12 0.9788356924096111 17 0.98936080802923843 22 0.9885401281921874 27 0.99863938316882628 
		33 0.99296149630440855;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL597";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0.040747502133458159 12 0.095007816484116214 
		17 0.093044333015741734 22 0.12698810993332973 27 0.1084526882051503 33 0.029772626337299903;
createNode animCurveTA -n "animCurveTA1599";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.62843630316474508 7 -0.80401768175003108 
		12 -0.98811707318879605 17 -0.018125414050491784 22 0.49727795068347308 27 
		2.5612596613117233 33 0.74245473351676017;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1600";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 5.8284402688137158 7 6.5227402248163537 
		12 0.6539628716460103 17 -9.0280584261351322 22 -17.203025268598491 27 -29.33338191602822 
		33 -38.657223769549979;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1601";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.2956360193097458 7 0.14654391665952299 
		12 -1.2423852143720067 17 -0.31298616138531216 22 0.87783189111952786 27 
		0.80699029304123093 33 -0.61045786973520555;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1602";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1603";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1604";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1605";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1606";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1607";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1608";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1609";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1610";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1611";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1612";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1613";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1614";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1615";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1616";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1617";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1618";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1619";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1620";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1621";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 0 33 
		0;
createNode animCurveTA -n "animCurveTA1623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 0 33 
		0;
createNode animCurveTA -n "animCurveTA1624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 0 33 
		0;
createNode animCurveTA -n "animCurveTA1625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 0 33 
		0;
createNode animCurveTA -n "animCurveTA1626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 0 33 
		0;
createNode animCurveTA -n "animCurveTA1627";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 0 33 
		0;
createNode animCurveTL -n "animCurveTL598";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.5198069948790518 33 -0.5198069948790518;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL599";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 33 -0.72394202659893114;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL600";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 33 0.36439499068905612;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1628";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965299 33 7.7976222737965299;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1629";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 30.409274105849079 33 30.409274105849079;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1630";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.859940280210878 33 64.859940280210878;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL601";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.43524234076486068 33 0.43524234076486068;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL602";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 33 -0.82665738350180629;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL603";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 33 0.27773886459742925;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1631";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1632";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -28.652637602052774 33 -28.652637602052774;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1633";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.676908227303443 33 -64.676908227303443;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL604";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.61083301393139333 33 -0.61083301393139333;
createNode animCurveTL -n "animCurveTL605";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.4644416293758407 33 1.4644416293758407;
createNode animCurveTL -n "animCurveTL606";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.14314299916678522 33 0.14314299916678522;
createNode animCurveTA -n "animCurveTA1634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 16.226511010665405 33 16.226511010665405;
createNode animCurveTA -n "animCurveTA1635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.513966085499284 33 8.513966085499284;
createNode animCurveTA -n "animCurveTA1636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 68.213989601412422 33 68.213989601412422;
createNode animCurveTL -n "animCurveTL607";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.8448236677023373 33 0.8448236677023373;
createNode animCurveTL -n "animCurveTL608";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.5117481219250299 33 1.5117481219250299;
createNode animCurveTL -n "animCurveTL609";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.097994651149805143 33 -0.097994651149805143;
createNode animCurveTA -n "animCurveTA1637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 5.4739599453216474 33 5.4739599453216474;
createNode animCurveTA -n "animCurveTA1638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -8.5874521608419823 33 -8.5874521608419823;
createNode animCurveTA -n "animCurveTA1639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -74.754744621954103 33 -74.754744621954103;
createNode animCurveTL -n "animCurveTL610";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.10167917362943303 33 0.10167917362943303;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL611";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.40762644910266188 33 -0.40762644910266188;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL612";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.93129112588482243 33 -0.93129112588482243;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL613";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL614";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL615";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1 33 -1;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.061808866237337522 7 5.8341974762039541 
		12 17.829952867873324 17 15.24361451439788 22 9.8828304549509145 27 4.738864060561423 
		33 -0.061808866237337522;
	setAttr -s 7 ".kit[0:6]"  3 9 9 1 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 1 9 9 3;
	setAttr -s 7 ".kix[3:6]"  0.86689049005508423 0.87620574235916138 
		0.90384989976882935 1;
	setAttr -s 7 ".kiy[3:6]"  -0.4984985888004303 -0.48193719983100891 
		-0.42784973978996277 0;
	setAttr -s 7 ".kox[3:6]"  0.86689049005508423 0.87620574235916138 
		0.90384989976882935 1;
	setAttr -s 7 ".koy[3:6]"  -0.49849861860275269 -0.48193719983100891 
		-0.42784973978996277 0;
createNode animCurveTA -n "animCurveTA1641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -59.058178941076754 7 -58.374405784372158 
		12 -57.175468426826122 17 -57.258462435137353 22 -57.733617897504224 27 -58.345620780354608 
		33 -59.058178941076754;
	setAttr -s 7 ".kit[0:6]"  3 9 9 1 9 1 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 1 9 1 3;
	setAttr -s 7 ".kix[3:6]"  0.99921858310699463 0.99838376045227051 
		0.99736416339874268 1;
	setAttr -s 7 ".kiy[3:6]"  -0.039524994790554047 -0.056831479072570801 
		-0.07255881279706955 0;
	setAttr -s 7 ".kox[3:6]"  0.99921858310699463 0.99838376045227051 
		0.99736416339874268 1;
	setAttr -s 7 ".koy[3:6]"  -0.039524998515844345 -0.056831479072570801 
		-0.07255881279706955 0;
createNode animCurveTA -n "animCurveTA1642";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.579147429757843 7 0.81780639081829676 
		12 -14.41423678745211 17 -10.079068450002135 22 -1.4305182076102507 27 7.8363889049558564 
		33 16.579147429757843;
	setAttr -s 7 ".kit[0:6]"  3 1 9 1 9 1 3;
	setAttr -s 7 ".kot[0:6]"  3 1 9 1 9 1 3;
	setAttr -s 7 ".kix[1:6]"  0.50839865207672119 0.8685683012008667 
		0.78586500883102417 0.72933661937713623 0.71866863965988159 1;
	setAttr -s 7 ".kiy[1:6]"  -0.86112183332443237 -0.49556946754455566 
		0.61839807033538818 0.68415504693984985 0.69535273313522339 0;
	setAttr -s 7 ".kox[1:6]"  0.50839865207672119 0.8685683012008667 
		0.78586506843566895 0.72933661937713623 0.71866863965988159 1;
	setAttr -s 7 ".koy[1:6]"  -0.86112183332443237 -0.49556946754455566 
		0.61839801073074341 0.68415504693984985 0.69535273313522339 0;
createNode animCurveTA -n "animCurveTA1643";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.253734489678925 7 4.1910195347258217 
		12 -14.873412364899384 17 -9.1030506071652741 22 -1.0968816511069543 27 6.6563162457624729 
		33 12.253734489678925;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1644";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -65.746751280844961 7 -63.921465855635041 
		12 -60.500958537051247 17 -61.389618495381612 22 -62.754549199646277 27 -64.108795781949922 
		33 -65.746751280844961;
	setAttr -s 7 ".kit[0:6]"  3 9 9 1 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 1 9 9 3;
	setAttr -s 7 ".kix[3:6]"  0.98790663480758667 0.99001610279083252 
		0.99000883102416992 1;
	setAttr -s 7 ".kiy[3:6]"  -0.15504983067512512 -0.14095433056354523 
		-0.14100545644760132 0;
	setAttr -s 7 ".kox[3:6]"  0.98790663480758667 0.99001610279083252 
		0.99000883102416992 1;
	setAttr -s 7 ".koy[3:6]"  -0.15504986047744751 -0.14095433056354523 
		-0.14100545644760132 0;
createNode animCurveTA -n "animCurveTA1645";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 14.49282068133167 12 35.442426279394809 
		17 30.100943778263389 22 20.10749314011785 27 11.004612562033744 33 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1646";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.711328223519057 7 15.711328223519057 
		12 15.711328223519057 17 15.711328223519057 22 15.711328223519057 27 15.711328223519057 
		33 15.711328223519057;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.5572674112203622 7 17.328557938081794 
		12 34.573140871698058 17 30.162838506961393 22 23.674596238802856 27 16.838717683829582 
		33 8.5572674112203622;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 0 33 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 0 33 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1650";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 0 33 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 0 33 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 0 33 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1653";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 0 33 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA1654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.2533422302317216 7 8.2533422302317216 
		12 8.2533422302317216 17 8.2533422302317216 22 8.2533422302317216 27 8.2533422302317216 
		33 8.2533422302317216;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 23.263402056531085 7 23.263402056531085 
		12 23.263402056531085 17 23.263402056531085 22 23.263402056531085 27 23.263402056531085 
		33 23.263402056531085;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 20.166277752815617 7 20.166277752815617 
		12 20.166277752815617 17 20.166277752815617 22 20.166277752815617 27 20.166277752815617 
		33 20.166277752815617;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1657";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 0 33 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1658";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 0 33 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1659";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 33.429092416277157 7 33.429092416277157 
		12 33.429092416277157 17 33.429092416277157 22 33.429092416277157 27 33.429092416277157 
		33 33.429092416277157;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1660";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1661";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1662";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1663";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1664";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1665";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 33 13.994403295754109;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1666";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1667";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 33 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1668";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 33 13.994403295754109;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1669";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 0 33 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1670";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 0 33 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1671";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 17.254116939558369 7 17.254116939558369 
		12 17.254116939558369 17 17.254116939558369 22 17.254116939558369 27 17.254116939558369 
		33 17.254116939558369;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1672";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 0 33 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1673";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 0 33 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1674";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 0 33 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1675";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.65073001024951671 7 1.0593201235634588 
		12 -9.8172336888698375 17 -7.8429286802650653 22 0.08162253268562164 27 1.354737083378718 
		33 0.65073001024951671;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 1 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 1 9;
	setAttr -s 7 ".kix[5:6]"  0.9999803900718689 0.99811810255050659;
	setAttr -s 7 ".kiy[5:6]"  0.006266589742153883 -0.061320580542087555;
	setAttr -s 7 ".kox[5:6]"  0.9999803900718689 0.99811810255050659;
	setAttr -s 7 ".koy[5:6]"  0.0062665981240570545 -0.061320580542087555;
createNode animCurveTA -n "animCurveTA1676";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 4.2368721935960929 7 4.973805947385892 
		12 7.1779475578588698 17 6.1576500625613857 22 3.3511964906301883 27 4.1217267722213702 
		33 4.2368721935960929;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1677";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.7398866450636881 7 8.7668285275210849 
		12 8.4558406749941959 17 8.3760385473666847 22 8.9191645128868391 27 7.6068308822973876 
		33 8.7398866450636881;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1678";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 -47.041318710658999 12 -32.956916165576182 
		17 -6.2161495814689349 22 -12.356832687406447 27 -1.9349435640606907 33 0;
createNode animCurveTA -n "animCurveTA1679";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 -3.7503993778893756 12 -1.8471649030324664 
		17 -1.8104690349205437 22 -0.71499019372629069 27 -3.587601983341699 33 0;
createNode animCurveTA -n "animCurveTA1680";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -15.452965173287611 7 -9.1204176540333819 
		12 -8.2857581304604242 17 -10.410465029814713 22 -8.6759333281665914 27 -11.368540275785753 
		33 -15.452965173287611;
createNode animCurveTA -n "animCurveTA1681";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -4.8714700432790456 7 -5.1101264993840472 
		12 -4.8714700432790456 17 0.10053936332564917 22 -0.9183082720320509 27 -3.0666307010895077 
		33 -4.8714700432790456;
createNode animCurveTA -n "animCurveTA1682";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -11.783606204137085 7 -12.510509691305652 
		12 -11.783606204137085 17 3.3602166523779173 22 0.25699495210834755 27 -6.286398707015608 
		33 -11.783606204137085;
createNode animCurveTA -n "animCurveTA1683";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 7.5423825101935913 7 7.5036552948427344 
		12 7.5423825101935913 17 8.3491994832711676 22 8.1838692361051955 27 7.8352570629222917 
		33 7.5423825101935913;
createNode animCurveTA -n "animCurveTA1684";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.8903601258661931 7 2.1666398242985996 
		12 1.2950699405915513 17 -3.8775728620386896 22 8.3730872957635452 27 1.8896927013173834 
		33 1.8903601258661931;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1685";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.5597289571479034 7 -1.696889452823841 
		12 0.44912801563451638 17 -0.36425950372566995 22 -2.2988603015029558 27 
		-0.60710147823010796 33 -2.5597289571479034;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1686";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.016811087403604 7 2.0452772705405695 
		12 2.1160757006878375 17 2.2800805627142631 22 1.9737048173776433 27 2.0812304416040823 
		33 2.016811087403604;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1687";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 0 33 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1688";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 0 33 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1689";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.080064458283051 7 27.080064458283051 
		12 27.080064458283051 17 27.080064458283051 22 27.080064458283051 27 27.080064458283051 
		33 27.080064458283051;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1690";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 10.423754966968488 7 10.423754966968488 
		12 10.423754966968488 17 10.423754966968488 22 10.423754966968488 27 10.423754966968488 
		33 10.423754966968488;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1691";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.722848255843903 7 27.722848255843903 
		12 27.722848255843903 17 27.722848255843903 22 27.722848255843903 27 27.722848255843903 
		33 27.722848255843903;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1692";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 21.576484776388227 7 21.576484776388227 
		12 21.576484776388227 17 21.576484776388227 22 21.576484776388227 27 21.576484776388227 
		33 21.576484776388227;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1693";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 0 33 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1694";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 7 0 12 0 17 0 22 0 27 0 33 
		0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA1695";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 27.911632519594587 7 27.911632519594587 
		12 27.911632519594587 17 27.911632519594587 22 27.911632519594587 27 27.911632519594587 
		33 27.911632519594587;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
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
	setAttr ".ihi" 0;
	setAttr -s 20 ".lnk";
select -ne :time1;
	setAttr ".o" 17;
select -ne :renderPartition;
	setAttr -s 20 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 20 ".s";
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
	setAttr -s 108 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".top" 478;
	setAttr ".rght" 638;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
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
connectAttr "frk_turn_45_CWSource.st" "clipLibrary1.st[0]";
connectAttr "frk_turn_45_CWSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL575.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL576.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL577.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL578.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL579.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA1583.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU109.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU110.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU111.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU112.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU113.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU114.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU115.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU116.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA1584.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1585.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1586.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL580.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL581.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL582.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL583.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL584.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL585.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1587.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1588.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1589.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL586.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL587.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL588.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1590.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1591.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1592.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1593.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1594.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1595.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1596.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1597.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1598.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL589.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL590.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL591.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL592.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL593.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL594.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL595.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL596.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL597.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA1599.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA1600.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA1601.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA1602.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA1603.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA1604.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1605.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1606.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1607.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1608.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1609.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1610.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1611.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1612.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1613.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1614.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1615.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1616.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1617.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1618.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1619.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1620.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1621.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1622.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1623.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1624.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1625.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1626.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1627.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTL598.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTL599.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTL600.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1628.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1629.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1630.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL601.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL602.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL603.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA1631.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA1632.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1633.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL604.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL605.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL606.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1634.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1635.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1636.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL607.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL608.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL609.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1637.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1638.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1639.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL610.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL611.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL612.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL613.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL614.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL615.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA1640.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA1641.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA1642.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA1643.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA1644.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA1645.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1646.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1647.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1648.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1649.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1650.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1651.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1652.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1653.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1654.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1655.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1656.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1657.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1658.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1659.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1660.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1661.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1662.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1663.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1664.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1665.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1666.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1667.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1668.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1669.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1670.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1671.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1672.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1673.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1674.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1675.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1676.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1677.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1678.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1679.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1680.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1681.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1682.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1683.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1684.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1685.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1686.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1687.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1688.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1689.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1690.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1691.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1692.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1693.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1694.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1695.a" "clipLibrary1.cel[0].cev[161].cevr";
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
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of frk_turn_45_CW.ma
