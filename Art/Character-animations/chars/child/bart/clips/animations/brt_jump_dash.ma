//Maya ASCII 4.0 scene
//Name: brt_jump_dash.ma
//Last modified: Tue, May 27, 2003 01:49:48 PM
requires maya "4.0";
requires "p3dDeformer" "2.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_jump_dashSource";
	setAttr ".ihi" 0;
	setAttr ".du" 60;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL639";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL640";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "brt_Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.11878055339284124;
createNode animCurveTL -n "brt_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "brt_Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.186426707422662;
createNode animCurveTA -n "brt_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU129";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU130";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU131";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU132";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU133";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 2 0 60 0;
	setAttr -s 3 ".kit[0:2]"  9 3 3;
	setAttr -s 3 ".kot[0:2]"  1 3 3;
	setAttr -s 3 ".kox[0:2]"  0.066519007086753845 1 1;
	setAttr -s 3 ".koy[0:2]"  -0.99778515100479126 0 0;
createNode animCurveTU -n "animCurveTU134";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 2 0 60 0;
	setAttr -s 3 ".kit[0:2]"  9 3 3;
	setAttr -s 3 ".kot[0:2]"  1 3 3;
	setAttr -s 3 ".kox[0:2]"  0.066519007086753845 1 1;
	setAttr -s 3 ".koy[0:2]"  -0.99778515100479126 0 0;
createNode animCurveTU -n "animCurveTU135";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 1 60 1;
	setAttr -s 3 ".kit[0:2]"  9 3 3;
	setAttr -s 3 ".kot[0:2]"  1 3 3;
	setAttr -s 3 ".kox[0:2]"  0.066519007086753845 1 1;
	setAttr -s 3 ".koy[0:2]"  0.99778515100479126 0 0;
createNode animCurveTU -n "animCurveTU136";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 1 60 1;
	setAttr -s 3 ".kit[0:2]"  9 3 3;
	setAttr -s 3 ".kot[0:2]"  1 3 3;
	setAttr -s 3 ".kox[0:2]"  0.066519007086753845 1 1;
	setAttr -s 3 ".koy[0:2]"  0.99778515100479126 0 0;
createNode animCurveTA -n "animCurveTA1804";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1805";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1806";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL644";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL645";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL646";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.19763288944005308 3 -0.22809301424382589 
		6 -0.26454016861507795 10 -0.26454016861507795 14 -0.26454016861507795 18 
		-0.26454016861507795 20 -0.26454016861507795 23 -0.1858650952155331 30 -0.1858650952155331 
		50 -0.26454016861507795 55 -0.26454016861507795 60 -0.26454016861507795;
	setAttr -s 12 ".kit[9:11]"  3 9 3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 3 9 3;
	setAttr -s 12 ".kox[0:11]"  0.032812129706144333 0.0298787672072649 
		0.06388884037733078 1 1 1 0.021179424598813057 0.042330376803874969 0.11365332454442978 
		1 1 1;
	setAttr -s 12 ".koy[0:11]"  -0.99946153163909912 -0.99955350160598755 
		-0.99795705080032349 0 0 0 0.99977570772171021 0.99910366535186768 -0.99352049827575684 
		0 0 0;
createNode animCurveTL -n "animCurveTL648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.36956228769602462 3 0.2034451973527025 
		6 0.40393989055509982 10 1.6605583903941317 14 1.6429722247498533 18 0.90220514955221276 
		20 0.37996726295771049 23 0.1127369626012335 30 0.1127369626012335 50 0.1347866815895771 
		55 0.1347866815895771 60 0.21854541072049752;
	setAttr -s 12 ".kit[9:11]"  3 3 3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 3 3 3;
	setAttr -s 12 ".kox[0:11]"  0.0060197408311069012 0.058079209178686142 
		0.0016013376880437136 0.0021522121969610453 0.003516369266435504 0.0015835230005905032 
		0.0021111210808157921 0.012472664937376976 0.3779011070728302 1 1 1;
	setAttr -s 12 ".koy[0:11]"  -0.99998188018798828 0.99831199645996094 
		0.99999868869781494 0.99999767541885376 -0.99999380111694336 -0.99999874830245972 
		-0.99999779462814331 -0.99992221593856812 0.92584598064422607 0 0 0;
createNode animCurveTL -n "animCurveTL649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 11.083276311928465 3 11.391786216253763 
		6 11.971404803719754 10 14.76169155139384 14 16.458756536066652 18 18.05040471115348 
		20 18.769988625381181 23 19.773027880366119 30 19.773027880366119 50 19.789173901382764 
		55 19.789173901382764 60 19.626815306968577;
	setAttr -s 12 ".kit[9:11]"  3 3 9;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 3 3 9;
	setAttr -s 12 ".kox[0:11]"  0.003241369966417551 0.0022519207559525967 
		0.00069240306038409472 0.00059426279040053487 0.00081085384590551257 0.000865338952280581 
		0.00096751627279445529 0.0033232148271054029 0.48688212037086487 1 1 0.010264803655445576;
	setAttr -s 12 ".koy[0:11]"  0.99999475479125977 0.99999743700027466 
		0.9999997615814209 0.99999982118606567 0.99999964237213135 0.99999964237213135 
		0.9999995231628418 0.99999445676803589 0.87346768379211426 0 0 -0.99994730949401855;
createNode animCurveTA -n "animCurveTA1807";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 68.750149689121002 3 66.753537441737635 
		6 35.302889577616533 10 -6.2689983876820143 14 42.28251743113433 18 95.148328978383631 
		20 26.647606176945249 23 0.75691661221243089 30 0.75691661221243089 50 0.046970470069375145 
		55 0.046970470069375145 60 0;
	setAttr -s 12 ".kit[9:11]"  3 3 3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 3 3 3;
	setAttr -s 12 ".kox[0:11]"  0.94430661201477051 0.32410979270935059 
		0.18008741736412048 0.90958702564239502 0.14897240698337555 0.59114742279052734 
		0.10065323859453201 0.59362685680389404 0.99990522861480713 1 1 1;
	setAttr -s 12 ".koy[0:11]"  -0.32906684279441833 -0.94601947069168091 
		-0.98365062475204468 0.41551351547241211 0.98884135484695435 -0.80656355619430542 
		-0.99492156505584717 -0.80474042892456055 -0.01376635953783989 0 0 0;
createNode animCurveTA -n "animCurveTA1808";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 -3.5256945963156894 6 0 10 
		0 14 0 18 0 20 -0.43608925488945727 23 1.0991915803026484 30 1.0991915803026484 
		50 -25.808720031699725 55 -25.953723348439205 60 -25.948901905116401;
	setAttr -s 12 ".kit[9:11]"  1 3 3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 1 3 3;
	setAttr -s 12 ".kix[9:11]"  0.99784153699874878 1 1;
	setAttr -s 12 ".kiy[9:11]"  -0.065667755901813507 0 0;
	setAttr -s 12 ".kox[0:11]"  0.85167157649993896 1 0.96694034337997437 
		1 1 0.99927663803100586 0.99344027042388916 0.996784508228302 0.88655799627304077 
		0.99784153699874878 1 1;
	setAttr -s 12 ".koy[0:11]"  -0.52407592535018921 0 0.25500279664993286 
		0 0 -0.038028441369533539 0.11435200273990631 0.080128632485866547 -0.46261745691299438 
		-0.065667763352394104 0 0;
createNode animCurveTA -n "animCurveTA1809";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 4.8238895241523405 6 0 10 
		0 14 0 18 0 20 -3.0130697931149304 23 -1.5855234045840427 30 -1.5855234045840427 
		50 -5.3565685210931813 55 0 60 0;
	setAttr -s 12 ".kit[10:11]"  3 3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 3 3;
	setAttr -s 12 ".kox[0:11]"  0.76497817039489746 1 0.94063949584960938 
		1 1 0.96712636947631836 0.98649466037750244 0.99721813201904297 0.99733668565750122 
		0.99944907426834106 1 1;
	setAttr -s 12 ".koy[0:11]"  0.64405620098114014 0 -0.3394072949886322 
		0 0 -0.25429618358612061 -0.16379326581954956 0.074538223445415497 -0.072935394942760468 
		0.033188831061124802 0 0;
createNode animCurveTL -n "animCurveTL650";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.19697756422115981 3 0.21594587158542247 
		6 0.21594587158542247 10 0.21594587158542247 14 0.21594587158542247 18 0.21594587158542247 
		20 0.21594587158542247 23 0.21594587158542247 30 0.21594587158542247 50 0.21594587158542247 
		55 0.21594587158542247 60 0.21594587158542247;
	setAttr -s 12 ".kit[11]"  3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kox[0:11]"  0.052646409720182419 0.10485777258872986 
		1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[0:11]"  0.99861323833465576 0.9944872260093689 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.11742628606129618 3 0.1380615615975922 
		6 0.46102228363598591 10 1.3361788814061144 14 2.362169293672673 18 0.45624689164370613 
		20 0.14145923910657562 23 0.14145923910657562 30 0.14145923910657562 50 0.141 
		55 0.25169841101885376 60 0.21854505205085809;
	setAttr -s 12 ".kit[5:11]"  1 3 9 9 9 9 3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 1 3 
		9 9 9 9 3;
	setAttr -s 12 ".kix[5:11]"  0.0014392643934115767 1 1 0.99870067834854126 
		0.075378149747848511 0.04294610396027565 1;
	setAttr -s 12 ".kiy[5:11]"  -0.99999898672103882 0 0 -0.050960268825292587 
		0.99715501070022583 0.99907737970352173 0;
	setAttr -s 12 ".kox[0:11]"  0.048403900116682053 0.0058206906542181969 
		0.001947496086359024 0.0014026606222614646 0.0030305234249681234 0.0014392755692824721 
		1 1 0.99870067834854126 0.075378149747848511 0.04294610396027565 1;
	setAttr -s 12 ".koy[0:11]"  0.99882781505584717 0.99998307228088379 
		0.99999809265136719 0.99999898672103882 -0.99999541044235229 -0.99999898672103882 
		0 0 -0.050960268825292587 0.99715501070022583 0.99907737970352173 0;
createNode animCurveTL -n "animCurveTL652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 11.336616651963634 3 11.318238259942266 
		6 11.683779731012811 10 13.912424243224914 14 17.248980103640953 18 19.080877059872972 
		20 19.311788436853856 23 19.311788436853856 30 19.311788436853856 50 19.312000000000001 
		55 19.485954645886778 60 19.692504016191631;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 12 ".kox[0:11]"  0.054331354796886444 0.0057608857750892639 
		0.00089944689534604549 0.00047916805488057435 0.00051595061086118221 0.00096955156186595559 
		0.0072175883688032627 1 0.99972385168075562 0.047792337834835052 0.0087599745020270348 
		0.0080688335001468658;
	setAttr -s 12 ".koy[0:11]"  -0.99852293729782104 0.99998342990875244 
		0.99999958276748657 0.99999988079071045 0.99999988079071045 0.9999995231628418 
		0.99997395277023315 0 0.023500524461269379 0.99885731935501099 0.99996161460876465 
		0.99996745586395264;
createNode animCurveTA -n "animCurveTA1810";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 86.108267527194343 10 
		97.269140401248976 14 -52.255426907359578 18 14.518834558877312 20 -1.1333774065517455 
		23 -1.1333774065517455 30 -1.1333774065517455 50 10.966182593879669 55 25.84923898235408 
		60 0;
	setAttr -s 12 ".kit[11]"  3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kox[0:11]"  1 0.13191549479961395 0.13616344332695007 
		0.10975830256938934 0.18156924843788147 0.21872536838054657 0.52081674337387085 
		1 0.97355866432189941 0.8705981969833374 0.86721044778823853 1;
	setAttr -s 12 ".koy[0:11]"  0 0.99126094579696655 0.99068635702133179 
		-0.99395829439163208 -0.98337817192077637 0.97578644752502441 -0.85366851091384888 
		0 0.22843706607818604 0.491994708776474 -0.49794182181358337 0;
createNode animCurveTA -n "animCurveTA1811";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 30 0 50 0 55 0 60 0;
	setAttr -s 12 ".kit[11]"  3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kox[0:11]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1812";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 30 0 50 0 55 0 60 0;
	setAttr -s 12 ".kit[11]"  3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kox[0:11]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1813";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1814";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1815";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1816";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1817";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1818";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1819";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA1820";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA1821";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA1822";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA1823";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTA -n "animCurveTA1824";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  60 0;
createNode animCurveTL -n "animCurveTL653";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 50 0 55 0 60 0;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 1 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 50 0 55 0 60 0;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 1 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 3 1 6 1 10 1 14 1 18 1 20 1 
		23 1 50 1 55 1 60 1;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 1 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 50 0 55 0 60 0;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 1 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL657";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 50 0 55 0 60 0;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 1 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL658";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 3 1 6 1 10 1 14 1 18 1 20 1 
		23 1 50 1 55 1 60 1;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 1 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL659";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.03051835782609956 3 0.03051835782609956 
		6 0.03051835782609956 10 0.03051835782609956 14 0.03051835782609956 18 0.03051835782609956 
		20 0.030237240874615875 23 0.045293663343896437 30 0.027432533010636119 50 
		0.029865029815350771 55 0.03051835782609956 60 -0.076472881617957691;
	setAttr -s 12 ".kit[11]"  3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kox[0:11]"  1 1 1 1 1 0.99026566743850708 0.11208995431661606 
		0.76517236232757568 0.50386953353881836 0.9377705454826355 0.031331222504377365 
		1;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 -0.13919024169445038 
		0.99369806051254272 -0.6438254714012146 -0.86377978324890137 0.34725549817085266 
		-0.99950903654098511 0;
createNode animCurveTL -n "animCurveTL660";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.76074829734573723 3 0.59726134361187688 
		6 0.92714697341349084 10 1.9363996268275161 14 2.3760537679344607 18 1.1147476669222607 
		20 0.79050576642503834 23 0.65728420096061013 30 0.62861763194354026 50 0.89592840623552406 
		55 0.76455922107961938 60 0.95473100313980441;
	setAttr -s 12 ".kit[11]"  3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kox[0:11]"  0.0061165816150605679 0.012018457986414433 
		0.0017424112884327769 0.0018404650036245584 0.0032454770989716053 0.0012613926082849503 
		0.003643253818154335 0.020585985854268074 0.03768625482916832 0.061185985803604126 
		0.056595977395772934 1;
	setAttr -s 12 ".koy[0:11]"  -0.99998128414154053 0.99992775917053223 
		0.99999850988388062 0.99999833106994629 -0.99999475479125977 -0.99999922513961792 
		-0.99999338388442993 -0.99978810548782349 0.99928963184356689 0.99812638759613037 
		0.99839717149734497 0;
createNode animCurveTL -n "animCurveTL661";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 11.479724090761808 3 11.625152402116516 
		6 12.319514918004916 10 14.330307108920188 14 16.461488362006126 18 18.576386570216318 
		20 18.899890748441354 23 19.6090442281279 30 19.773131774447485 50 19.631496722160247 
		55 19.815057002435953 60 19.691719713722595;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 12 ".kox[0:11]"  0.0068760775029659271 0.0023815387394279242 
		0.00086255045607686043 0.00064381532138213515 0.00062803021864965558 0.00082020892295986414 
		0.0016139564104378223 0.0038171694613993168 0.37206777930259705 0.19495275616645813 
		0.05526525154709816 0.013511848635971546;
	setAttr -s 12 ".koy[0:11]"  0.99997633695602417 0.99999713897705078 
		0.99999964237213135 0.99999982118606567 0.99999982118606567 0.99999964237213135 
		0.99999868869781494 0.9999927282333374 0.92820554971694946 0.98081260919570923 
		0.99847173690795898 -0.9999086856842041;
createNode animCurveTA -n "animCurveTA1825";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 40.92583813237421 3 31.660816129923894 
		6 15.777772212346544 10 -38.594613221638781 14 -59.936496822743237 18 -11.722674222649985 
		20 6.9324094719112672 23 42.833149971977917 30 16.134307530096347 50 6.2086773277084095 
		55 -11.722674222649985 60 -0.62843630316474508;
	setAttr -s 12 ".kit[11]"  3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kox[0:11]"  0.525962233543396 0.41464897990226746 
		0.18693706393241882 0.19780911505222321 0.49427172541618347 0.16890531778335571 
		0.1724158376455307 0.90088587999343872 0.81528991460800171 0.86374056339263916 
		0.94148886203765869 1;
	setAttr -s 12 ".koy[0:11]"  -0.85050791501998901 -0.90998142957687378 
		-0.98237186670303345 -0.9802405834197998 0.86930745840072632 0.98563230037689209 
		0.98502427339553833 0.43405607342720032 -0.57905298471450806 -0.50393670797348022 
		-0.33704403042793274 0;
createNode animCurveTA -n "animCurveTA1826";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 30 0 50 0 55 0 60 -5.8284402688137167;
	setAttr -s 12 ".kit[11]"  3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kox[0:11]"  1 1 1 1 1 1 1 1 1 1 0.95645284652709961 
		1;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 -0.29188686609268188 
		0;
createNode animCurveTA -n "animCurveTA1827";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 30 0 50 0 55 0 60 -1.295636019309746;
	setAttr -s 12 ".kit[11]"  3;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 9 3;
	setAttr -s 12 ".kox[0:11]"  1 1 1 1 1 1 1 1 1 1 0.9977068305015564 
		1;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 -0.067683778703212738 
		0;
createNode animCurveTA -n "animCurveTA1828";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1829";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1830";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.0984482521620249 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  0.99936103820800781 1;
	setAttr -s 2 ".koy[0:1]"  -0.035742852836847305 0;
createNode animCurveTA -n "animCurveTA1831";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.588300303494186 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  0.98709744215011597 1;
	setAttr -s 2 ".koy[0:1]"  -0.16012054681777954 0;
createNode animCurveTA -n "animCurveTA1832";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1833";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1834";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -22.686733334985114 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  0.98096007108688354 1;
	setAttr -s 2 ".koy[0:1]"  0.19420957565307617 0;
createNode animCurveTA -n "animCurveTA1835";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1836";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1837";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0579251312417479e-005 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1838";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1839";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1840";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.0984482535121209 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  0.99936103820800781 1;
	setAttr -s 2 ".koy[0:1]"  -0.035742852836847305 0;
createNode animCurveTA -n "animCurveTA1841";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.588300300216805 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  0.98709744215011597 1;
	setAttr -s 2 ".koy[0:1]"  -0.16012054681777954 0;
createNode animCurveTA -n "animCurveTA1842";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1843";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1844";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -22.686733333057838 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  0.98096007108688354 1;
	setAttr -s 2 ".koy[0:1]"  0.19420957565307617 0;
createNode animCurveTA -n "animCurveTA1845";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1846";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1847";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0579251312417479e-005 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1848";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1849";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1850";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1851";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1852";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1853";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL662";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.43524234076486068 60 -0.43524234076486068;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL663";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 60 -0.82665738350180629;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL664";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 60 0.27773886459742925;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1854";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1855";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 28.652637602052774;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1856";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 64.676908227303443;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL665";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.5198069948790518 60 0.5198069948790518;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL666";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 60 -0.72394202659893114;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL667";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 60 0.36439499068905612;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1857";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 7.7976222737965317;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1858";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 -30.409274105849079;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1859";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 -64.859940280210893;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL668";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.98071836797454492 3 -0.80634482260056473 
		6 -1.0809274673815583 10 -1.2578403796193822 14 -1.3171716726200386 18 -1.2805691388134848 
		20 -0.86844902114963562 23 -1.1050046625684347 50 -0.77747979061591921 55 
		-0.92351070311151673 60 -0.8448236677023373;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.005734720267355442 0.019954293966293335 
		0.0051679406315088272 0.01128703635185957 0.11652638763189316 0.0044570518657565117 
		0.0094927605241537094 0.10926906019449234 0.058670230209827423 0.049436677247285843 
		1;
	setAttr -s 11 ".koy[0:10]"  0.99998354911804199 -0.9998009204864502 
		-0.99998664855957031 -0.99993628263473511 -0.99318760633468628 0.99999004602432251 
		0.9999549388885498 0.99401223659515381 0.99827742576599121 -0.99877727031707764 
		0;
createNode animCurveTL -n "animCurveTL669";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.6432964864655397 3 1.4469710125782096 
		6 1.9375146490462802 10 3.3687243480082532 14 4.4522932358526441 18 2.6629576642862016 
		20 1.4484882764219043 23 1.4484882764219043 50 1.0861263400865289 55 0.92870271224729128 
		60 1.0304014029588007;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.0050935163162648678 0.0067975195124745369 
		0.001214168150909245 0.0010603975970298052 0.003778369864448905 0.00066582206636667252 
		0.0013723401352763176 0.027586214244365692 0.020516963675618172 0.059710890054702759 
		1;
	setAttr -s 11 ".koy[0:10]"  -0.99998700618743896 0.99997687339782715 
		0.9999992847442627 0.99999946355819702 -0.99999284744262695 -0.9999997615814209 
		-0.99999904632568359 -0.99961942434310913 -0.99978947639465332 -0.99821573495864868 
		0;
createNode animCurveTL -n "animCurveTL670";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 15.83776782731808 3 16.088045680488502 
		6 16.254681368998476 10 17.604280844498366 14 19.606607892811663 18 23.223503797097045 
		20 24.791137552211872 23 25.459877395613422 50 26.344926639781878 55 26.412175336509787 
		60 25.370214488125772;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kox[0:10]"  0.0039955275133252144 0.0047971024177968502 
		0.0015388975152745843 0.00079556216951459646 0.00047456138418056071 0.00038576300721615553 
		0.00074525387026369572 0.006435746792703867 0.011200273409485817 0.0034197932109236717 
		0.0015995464054867625;
	setAttr -s 11 ".koy[0:10]"  0.9999920129776001 0.99998849630355835 
		0.99999880790710449 0.99999970197677612 0.99999988079071045 0.99999994039535522 
		0.99999970197677612 0.99997931718826294 0.99993729591369629 -0.99999415874481201 
		-0.99999874830245972;
createNode animCurveTA -n "animCurveTA1860";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 5.4739599453216465 3 7.3566619347615223 
		6 -9.115993314220681 10 -25.091126583761181 14 -101.12578262135072 18 -116.33993858710583 
		20 50.79177939302059 23 -21.751106559113143 50 -3.0287076910635311 55 -15.275628486635982 
		60 5.4739599453216465;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.95002555847167969 0.61767560243606567 
		0.38094863295555115 0.16381382942199707 0.16514286398887634 0.075216419994831085 
		0.10044528543949127 0.72886598110198975 0.99443364143371582 0.91355562210083008 
		1;
	setAttr -s 11 ".koy[0:10]"  0.31217220425605774 -0.78643298149108887 
		-0.92459619045257568 -0.98649126291275024 -0.98626965284347534 0.99716722965240479 
		0.99494260549545288 -0.68465638160705566 0.10536497831344604 0.40671375393867493 
		0;
createNode animCurveTA -n "animCurveTA1861";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 8.587452160841984 3 18.103084532249603 
		6 26.324117884677346 10 -44.605624668790895 14 -26.389398230303268 18 5.9134435484403394 
		20 55.228058117531276 23 13.775487161741532 50 22.908592233274504 55 10.573544209344728 
		60 8.5874521608419823;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.51583224534988403 0.54266667366027832 
		0.20850656926631927 0.27838921546936035 0.28948789834976196 0.1390371173620224 
		0.77201288938522339 0.8709864616394043 0.99863040447235107 0.80005639791488647 
		1;
	setAttr -s 11 ".koy[0:10]"  0.85668963193893433 0.83994817733764648 
		-0.97802096605300903 -0.9604683518409729 0.95718169212341309 0.990287184715271 
		0.63560688495635986 -0.49130699038505554 -0.052319914102554321 -0.59992480278015137 
		0;
createNode animCurveTA -n "animCurveTA1862";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 74.754744621954103 3 27.384539512019494 
		6 34.555108709452107 10 4.1864986063640526 14 -21.181329035599028 18 4.0003157811721044 
		20 82.33092823712218 23 1.3875007624878635 50 42.498478212366322 55 46.811115809066436 
		60 74.754744621954103;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.12007803469896317 0.27413597702980042 
		0.49931690096855164 0.26437383890151978 0.99992579221725464 0.11003119498491287 
		0.9645465612411499 0.82107633352279663 0.80259591341018677 0.50948190689086914 
		1;
	setAttr -s 11 ".koy[0:10]"  -0.99276447296142578 -0.96169096231460571 
		-0.86641943454742432 -0.96442025899887085 -0.012184733524918556 0.99392813444137573 
		-0.26391282677650452 -0.57081836462020874 0.59652310609817505 0.8604813814163208 
		0;
createNode animCurveTL -n "animCurveTL671";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.76309120872911718 3 1.0024876497696322 
		6 1.0024876497696322 10 0.99473998535432284 14 0.61449363956886172 18 0.86041006479214754 
		20 0.89366815413889344 23 1.38753459181969 50 0.90458947228580255 55 0.92344538534275189 
		60 0.61083301393139333;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.0041771354153752327 0.0083540519699454308 
		0.28837200999259949 0.0068727959878742695 0.019847709685564041 0.0071637933142483234 
		0.0031617924105376005 0.67531323432922363 0.022978018969297409 0.011346537619829178 
		1;
	setAttr -s 11 ".koy[0:10]"  0.99999129772186279 0.9999651312828064 
		-0.95751845836639404 -0.99997639656066895 -0.99980300664901733 0.99997431039810181 
		0.99999499320983887 0.73753106594085693 -0.99973595142364502 -0.99993562698364258 
		0;
createNode animCurveTL -n "animCurveTL672";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.6150490657878991 3 1.3013238452739646 
		6 1.9949033942153824 10 4.519287068933469 14 4.9223083920879454 18 2.4869884512553302 
		20 1.3799114485904729 23 1.0408724282870976 50 1.0391548535552471 55 0.83884137621208588 
		60 1.0211562878106184;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.003187486669048667 0.0052651031874120235 
		0.00072509614983573556 0.00091093155788257718 0.0013121420051902533 0.00056458939798176289 
		0.0011525116860866547 0.029333831742405891 0.052723731845617294 0.18210327625274658 
		1;
	setAttr -s 11 ".koy[0:10]"  -0.99999493360519409 0.99998611211776733 
		0.9999997615814209 0.99999958276748657 -0.99999916553497314 -0.99999982118606567 
		-0.99999934434890747 -0.99956965446472168 -0.99860912561416626 -0.98327940702438354 
		0;
createNode animCurveTL -n "animCurveTL673";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 16.078905477634667 3 16.175002275324733 
		6 16.835748093433626 10 17.749828905602151 14 19.775783240110705 18 24.153619045610814 
		20 24.835260103537713 23 26.111666899801044 50 26.384773167633153 55 26.376593156092557 
		60 25.611352138442363;
	setAttr -s 11 ".kit[5:10]"  1 9 9 9 9 9;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 1 9 
		9 9 9 9;
	setAttr -s 11 ".kix[5:10]"  0.00067567435326054692 0.00085118756396695971 
		0.0064535057172179222 0.040230181068181992 0.0043098162859678268 0.0021779581438750029;
	setAttr -s 11 ".kiy[5:10]"  0.9999997615814209 0.99999964237213135 
		0.99997919797897339 0.99919044971466064 -0.99999070167541504 -0.99999761581420898;
	setAttr -s 11 ".kox[0:10]"  0.01040561031550169 0.002642547944560647 
		0.001481642946600914 0.00090701825683936477 0.00041642002179287374 0.00067566637881100178 
		0.00085118756396695971 0.0064535057172179222 0.040230181068181992 0.0043098162859678268 
		0.0021779581438750029;
	setAttr -s 11 ".koy[0:10]"  0.99994587898254395 0.99999648332595825 
		0.99999892711639404 0.99999958276748657 0.99999994039535522 0.9999997615814209 
		0.99999964237213135 0.99997919797897339 0.99919044971466064 -0.99999070167541504 
		-0.99999761581420898;
createNode animCurveTA -n "animCurveTA1863";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 16.226511010665419 3 6.093037536097877 
		6 -9.0703748831085189 10 -90.107119238195125 14 -93.639550207845957 18 -42.111366262800331 
		20 15.571416082904319 23 -5.5487073485730951 50 10.87315618106248 55 -11.3299909772138 
		60 16.226511010665412;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.49218502640724182 0.41262593865394592 
		0.13764798641204834 0.17778891324996948 0.30333882570266724 0.10435391217470169 
		0.25269967317581177 0.99665486812591553 0.995555579662323 0.96288871765136719 
		1;
	setAttr -s 11 ".koy[0:10]"  -0.87049061059951782 -0.91090059280395508 
		-0.99048119783401489 -0.98406863212585449 0.95288276672363281 0.99454021453857422 
		0.9675447940826416 -0.081725805997848511 -0.094175614416599274 0.2698986828327179 
		0;
createNode animCurveTA -n "animCurveTA1864";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -8.5139660854992876 3 27.443571845182099 
		6 -40.501771671985914 10 -8.2000151923474469 14 -26.039923715564179 18 -60.001824694137696 
		20 -62.182869075925943 23 -52.547691382474362 50 -12.988841042314068 55 -36.60764546449181 
		60 -8.5139660854992858;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.15735773742198944 0.33724820613861084 
		0.35118493437767029 0.72625815868377686 0.28289985656738281 0.30222463607788086 
		0.78827482461929321 0.75871092081069946 0.96762937307357788 0.97363168001174927 
		1;
	setAttr -s 11 ".koy[0:10]"  0.98754167556762695 -0.94141578674316406 
		-0.93630611896514893 0.68742203712463379 -0.95914947986602783 -0.95323675870895386 
		0.61532336473464966 0.6514275074005127 0.25237554311752319 0.22812570631504059 
		0;
createNode animCurveTA -n "animCurveTA1865";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -68.213989601412422 3 -26.521276404958893 
		6 -16.843539022083927 10 61.376263996514069 14 64.419404354410148 18 4.7498895095808065 
		20 -60.86370447129287 23 -10.613780393059233 50 -60.973102305894095 55 -35.601526191623421 
		60 -68.213989601412422;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.13614441454410553 0.21771796047687531 
		0.15036836266517639 0.18478004634380341 0.26050302386283875 0.091085866093635559 
		0.52789056301116943 0.99999815225601196 0.92562150955200195 0.93505281209945679 
		1;
	setAttr -s 11 ".koy[0:10]"  0.9906889796257019 0.97601175308227539 
		0.98863005638122559 0.98277992010116577 -0.96547305583953857 -0.99584305286407471 
		-0.849312424659729 -0.0019093488808721304 -0.37845057249069214 -0.35450842976570129 
		0;
createNode animCurveTL -n "animCurveTL674";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 -0.075007643271199492 6 -0.075007643271199492 
		10 -0.075007643271199492 14 -0.075007643271199492 18 0.42754810371064994 
		20 0.48608220680805114 23 0.48608220680805114 50 0.48366398332572585 55 0.44879925919486569 
		60 0;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.013330790214240551 0.026654474437236786 
		1 1 0.0053061358630657196 0.0035644688177853823 0.028461895883083344 0.97198390960693359 
		0.27506431937217712 0.0068916734308004379 1;
	setAttr -s 11 ".koy[0:10]"  -0.99991112947463989 -0.9996446967124939 
		0 0 0.99998593330383301 0.99999362230300903 0.99959486722946167 -0.23504742980003357 
		-0.96142584085464478 -0.99997627735137939 0;
createNode animCurveTL -n "animCurveTL675";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 -0.0015683274246280649 6 
		-0.0015683274246280649 10 -0.0015683274246280649 14 -0.0015683274246280649 
		18 -0.90633634765029925 20 -1.2341020444288966 23 -1.2341020444288966 50 
		-1.4833917316357403 55 -2.1086769476633807 60 0;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.53763043880462646 0.78691071271896362 
		1 1 0.002947335597127676 0.0016226716106757522 0.0050848671235144138 0.04008173942565918 
		0.012195494025945663 0.0022470969706773758 1;
	setAttr -s 11 ".koy[0:10]"  -0.84318059682846069 -0.61706686019897461 
		0 0 -0.9999956488609314 -0.99999868869781494 -0.99998706579208374 -0.99919641017913818 
		-0.99992561340332031 0.99999749660491943 0;
createNode animCurveTL -n "animCurveTL676";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1 3 -0.99523236489475697 6 -0.99523236489475697 
		10 -0.99523236489475697 14 -0.99523236489475697 18 -1.1683884895498287 20 
		-0.9993623657977142 23 -0.9993623657977142 50 -0.78274181248683317 55 -0.18536689079245133 
		60 -1;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.20528063178062439 0.38683673739433289 
		1 1 0.015398534014821053 0.43584561347961426 0.0098599297925829887 0.046114560216665268 
		0.013102959841489792 0.015340921469032764 1;
	setAttr -s 11 ".koy[0:10]"  0.97870314121246338 0.92214822769165039 
		0 0 -0.99988144636154175 -0.90002143383026123 0.99995136260986328 0.99893617630004883 
		0.99991416931152344 -0.99988234043121338 0;
createNode animCurveTL -n "animCurveTL677";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.10167917362943303 3 -0.046699535373194809 
		6 -0.046699535373194809 10 -0.046699535373194809 14 -0.046699535373194809 
		18 -0.52663227176926597 20 -0.57597564774320764 23 -0.57597564774320764 50 
		-0.56618904341516374 55 -0.5126104209518183 60 -0.10167917362943303;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.01818554475903511 0.036353059113025665 
		1 1 0.0055562485940754414 0.0037787188775837421 0.033757656812667847 0.71469128131866455 
		0.16600070893764496 0.0071758376434445381 1;
	setAttr -s 11 ".koy[0:10]"  0.99983465671539307 0.99933898448944092 
		0 0 -0.99998456239700317 -0.99999284744262695 -0.99943006038665771 0.69944006204605103 
		0.986125648021698 0.99997425079345703 0;
createNode animCurveTL -n "animCurveTL678";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.40762644910266188 3 5.9724781342803249e-005 
		6 5.9724781342803249e-005 10 5.9724781342803249e-005 14 5.9724781342803249e-005 
		18 -0.54533960262259329 20 -0.75601350916139098 23 -0.75601350916139098 50 
		-0.92122226625675641 55 -1.3386630780291868 60 -0.40762644910266188;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.0024528598878532648 0.0049056750722229481 
		1 1 0.004889325238764286 0.0026452371384948492 0.0079108728095889091 0.060418896377086639 
		0.018304105848073959 0.0064900508150458336 1;
	setAttr -s 11 ".koy[0:10]"  0.99999701976776123 0.99998795986175537 
		0 0 -0.99998801946640015 -0.99999648332595825 -0.99996870756149292 -0.99817311763763428 
		-0.99983245134353638 0.99997895956039429 0;
createNode animCurveTL -n "animCurveTL679";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.93129112588482243 3 -1.0033873591439757 
		6 -1.0033873591439757 10 -1.0033873591439757 14 -1.0033873591439757 18 -0.69781241262917137 
		20 -0.54077942611803975 23 -0.54077942611803975 50 -0.40373806915834437 55 
		-0.049199106950677696 60 -0.93129112588482243;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.01386901643127203 0.027730030938982964 
		1 1 0.0087263863533735275 0.0043232748284935951 0.010612883605062962 0.072777166962623596 
		0.021693618968129158 0.0063183535821735859 1;
	setAttr -s 11 ".koy[0:10]"  -0.99990379810333252 -0.99961543083190918 
		0 0 0.99996191263198853 0.99999064207077026 0.99994367361068726 0.99734824895858765 
		0.99976468086242676 -0.99998003244400024 0;
createNode animCurveTA -n "animCurveTA1866";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -10.587124207154311 3 -22.78039507191296 
		6 -22.78039507191296 10 -22.78039507191296 14 -22.78039507191296 18 -22.78039507191296 
		20 -22.78039507191296 23 -22.78039507191296 50 -22.78039507191296 55 -22.78039507191296 
		60 12.253734489678925;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.42528459429740906 0.68483006954193115 
		1 1 1 1 1 1 1 0.47864094376564026 1;
	setAttr -s 11 ".koy[0:10]"  -0.90505969524383545 -0.72870278358459473 
		0 0 0 0 0 0 0 0.87801074981689453 0;
createNode animCurveTA -n "animCurveTA1867";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -60.592711499848903 3 -59.78589307060367 
		6 -59.78589307060367 10 -59.78589307060367 14 -59.78589307060367 18 -59.78589307060367 
		20 -59.78589307060367 23 -59.78589307060367 50 -59.78589307060367 55 -59.78589307060367 
		60 -65.746751280844975;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.99023044109344482 0.99753051996231079 
		1 1 1 1 1 1 1 0.9545859694480896 1;
	setAttr -s 11 ".koy[0:10]"  0.13944067060947418 0.070234313607215881 
		0 0 0 0 0 0 0 -0.29793563485145569 0;
createNode animCurveTA -n "animCurveTA1868";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.15003680417244974 3 34.574435665981952 
		6 34.574435665981952 10 34.574435665981952 14 34.574435665981952 18 34.574435665981952 
		20 34.574435665981952 23 34.574435665981952 50 34.574435665981952 55 34.574435665981952 
		60 0;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.16279987990856171 0.31337940692901611 
		1 1 1 1 1 1 1 0.48352450132369995 1;
	setAttr -s 11 ".koy[0:10]"  0.98665910959243774 0.94962799549102783 
		0 0 0 0 0 0 0 -0.87533080577850342 0;
createNode animCurveTA -n "animCurveTA1869";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 52.350458715167015 3 -4.3077020824181265 
		6 -4.3077020824181265 10 -4.3077020824181265 14 -4.3077020824181265 18 -4.3077020824181265 
		20 -4.3077020824181265 23 -4.3077020824181265 50 -4.3077020824181265 55 -4.3077020824181265 
		60 -0.061808866237340665;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.10061223804950714 0.19823691248893738 
		1 1 1 1 1 1 1 0.97616797685623169 1;
	setAttr -s 11 ".koy[0:10]"  -0.99492573738098145 -0.98015415668487549 
		0 0 0 0 0 0 0 0.21701624989509583 0;
createNode animCurveTA -n "animCurveTA1870";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -49.562109142955329 3 -49.658336589859132 
		6 -49.658336589859132 10 -49.658336589859132 14 -49.658336589859132 18 -49.658336589859132 
		20 -49.658336589859132 23 -49.658336589859132 50 -49.658336589859132 55 -49.658336589859132 
		60 -59.058178941076754;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.99985897541046143 0.99996471405029297 
		1 1 1 1 1 1 1 0.89721798896789551 1;
	setAttr -s 11 ".koy[0:10]"  -0.016792489215731621 -0.0083971330896019936 
		0 0 0 0 0 0 0 -0.441587895154953 0;
createNode animCurveTA -n "animCurveTA1871";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -64.60878798864384 3 45.957278122761899 
		6 45.957278122761899 10 45.957278122761899 14 45.957278122761899 18 45.957278122761899 
		20 45.957278122761899 23 45.957278122761899 50 45.957278122761899 55 45.957278122761899 
		60 16.57914742975785;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.051750965416431427 0.1030886247754097 
		1 1 1 1 1 1 1 0.54504472017288208 1;
	setAttr -s 11 ".koy[0:10]"  0.99866002798080444 0.99467217922210693 
		0 0 0 0 0 0 0 -0.83840698003768921 0;
createNode animCurveTA -n "animCurveTA1872";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 72.938873120018542 3 64.255341242982553 
		6 64.255341242982553 10 64.255341242982553 14 64.255341242982553 18 64.255341242982553 
		20 64.255341242982553 23 64.255341242982553 50 64.255341242982553 55 64.255341242982553 
		60 8.5572674112203639;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.55073821544647217 0.79701334238052368 
		1 1 1 1 1 1 1 0.32435640692710876 1;
	setAttr -s 11 ".koy[0:10]"  -0.834678053855896 -0.60396164655685425 
		0 0 0 0 0 0 0 -0.9459349513053894 0;
createNode animCurveTA -n "animCurveTA1873";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 59.305463658789549 3 72.208811687058059 
		6 72.208811687058059 10 72.208811687058059 14 72.208811687058059 18 72.208811687058059 
		20 72.208811687058059 23 72.208811687058059 50 72.208811687058059 55 72.208811687058059 
		60 15.711328223519061;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.40582829713821411 0.66402435302734375 
		1 1 1 1 1 1 1 0.32024061679840088 1;
	setAttr -s 11 ".koy[0:10]"  0.91394931077957153 0.7477109432220459 
		0 0 0 0 0 0 0 -0.94733625650405884 0;
createNode animCurveTA -n "animCurveTA1874";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -17.955810303398234 3 72.79493678537078 
		6 72.79493678537078 10 72.79493678537078 14 72.79493678537078 18 72.79493678537078 
		20 72.79493678537078 23 72.79493678537078 50 72.79493678537078 55 72.79493678537078 
		60 0;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.063009865581989288 0.1252758800983429 
		1 1 1 1 1 1 1 0.25377285480499268 1;
	setAttr -s 11 ".koy[0:10]"  0.99801290035247803 0.99212193489074707 
		0 0 0 0 0 0 0 -0.96726381778717041 0;
createNode animCurveTA -n "animCurveTA1875";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 10.082003051124259 3 35.224795679311441 
		6 35.224795679311441 10 35.224795679311441 14 35.224795679311441 18 35.224795679311441 
		20 35.224795679311441 23 35.224795679311441 50 35.224795679311441 55 35.224795679311441 
		60 0;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.22218550741672516 0.41472098231315613 
		1 1 1 1 1 1 1 0.47663998603820801 1;
	setAttr -s 11 ".koy[0:10]"  0.97500443458557129 0.90994864702224731 
		0 0 0 0 0 0 0 -0.87909859418869019 0;
createNode animCurveTA -n "animCurveTA1876";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -4.7201893288928654 3 56.771965155298119 
		6 56.771965155298119 10 56.771965155298119 14 56.771965155298119 18 56.771965155298119 
		20 56.771965155298119 23 56.771965155298119 50 56.771965155298119 55 56.771965155298119 
		60 0;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.092773914337158203 0.18319770693778992 
		1 1 1 1 1 1 1 0.3188500702381134 1;
	setAttr -s 11 ".koy[0:10]"  0.99568718671798706 0.98307609558105469 
		0 0 0 0 0 0 0 -0.94780516624450684 0;
createNode animCurveTA -n "animCurveTA1877";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 20.127263792592359 3 59.556508727470074 
		6 59.556508727470074 10 59.556508727470074 14 59.556508727470074 18 59.556508727470074 
		20 59.556508727470074 23 59.556508727470074 50 59.556508727470074 55 59.556508727470074 
		60 0;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.14380258321762085 0.27907872200012207 
		1 1 1 1 1 1 1 0.30536320805549622 1;
	setAttr -s 11 ".koy[0:10]"  0.98960638046264648 0.96026819944381714 
		0 0 0 0 0 0 0 -0.95223593711853027 0;
createNode animCurveTA -n "animCurveTA1878";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 11.615881410206432 3 36.028288837490415 
		6 36.028288837490415 10 36.028288837490415 14 36.028288837490415 18 36.028288837490415 
		20 36.028288837490415 23 36.028288837490415 50 36.028288837490415 55 36.028288837490415 
		60 0;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.22849071025848389 0.4249153733253479 
		1 1 1 1 1 1 1 0.46836256980895996 1;
	setAttr -s 11 ".koy[0:10]"  0.97354608774185181 0.90523308515548706 
		0 0 0 0 0 0 0 -0.88353639841079712 0;
createNode animCurveTA -n "animCurveTA1879";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.3215928107553504 3 13.094680882304901 
		6 13.094680882304901 10 13.094680882304901 14 13.094680882304901 18 13.094680882304901 
		20 13.094680882304901 23 13.094680882304901 50 13.094680882304901 55 13.094680882304901 
		60 0;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.40927660465240479 0.66778475046157837 
		1 1 1 1 1 1 1 0.82475900650024414 1;
	setAttr -s 11 ".koy[0:10]"  0.91241037845611572 0.74435442686080933 
		0 0 0 0 0 0 0 -0.56548440456390381 0;
createNode animCurveTA -n "animCurveTA1880";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 10.967667985987504 3 10.967667985987509 
		6 10.967667985987509 10 10.967667985987509 14 10.967667985987509 18 10.967667985987509 
		20 10.967667985987509 23 10.967667985987509 50 10.967667985987509 55 10.967667985987509 
		60 143.71460997127255;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 0.14240589737892151 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0.98980832099914551 
		0;
createNode animCurveTA -n "animCurveTA1881";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 53.910048648242871 3 53.910048648242878 
		6 53.910048648242878 10 53.910048648242878 14 53.910048648242878 18 53.910048648242878 
		20 53.910048648242878 23 53.910048648242878 50 53.910048648242878 55 53.910048648242878 
		60 27.804554996454375;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 0.59044986963272095 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 -0.80707430839538574 
		0;
createNode animCurveTA -n "animCurveTA1882";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 43.127820754253491 3 43.127820754253513 
		6 43.127820754253513 10 43.127820754253513 14 43.127820754253513 18 43.127820754253513 
		20 43.127820754253513 23 43.127820754253513 50 43.127820754253513 55 43.127820754253513 
		60 29.452980944098755;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 0.813068687915802 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 -0.58216774463653564 
		0;
createNode animCurveTA -n "animCurveTA1883";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 50 0 55 0 60 0;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1884";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 50 0 55 0 60 0;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1885";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 86.382238158606057 3 59.219502482153104 
		6 59.219502482153104 10 59.219502482153104 14 59.219502482153104 18 59.219502482153104 
		20 59.219502482153104 23 59.219502482153104 50 59.219502482153104 55 59.219502482153104 
		60 27.080064458283051;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.20639359951019287 0.38869693875312805 
		1 1 1 1 1 1 1 0.51085120439529419 1;
	setAttr -s 11 ".koy[0:10]"  -0.97846907377243042 -0.92136567831039429 
		0 0 0 0 0 0 0 -0.85966914892196655 0;
createNode animCurveTA -n "animCurveTA1886";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1887";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1888";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1889";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 26.541511232508352 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  0.97420960664749146 1;
	setAttr -s 2 ".koy[0:1]"  -0.22564485669136047 0;
createNode animCurveTA -n "animCurveTA1890";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 41.530156331423342 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  0.94016045331954956 1;
	setAttr -s 2 ".koy[0:1]"  -0.34073200821876526 0;
createNode animCurveTA -n "animCurveTA1891";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 52.545459146006969 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  0.94780158996582031 1;
	setAttr -s 2 ".koy[0:1]"  -0.31886076927185059 0;
createNode animCurveTA -n "animCurveTA1892";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 37.39895318822164 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  0.95065122842788696 1;
	setAttr -s 2 ".koy[0:1]"  -0.31026160717010498 0;
createNode animCurveTA -n "animCurveTA1893";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 69.699093005590768 60 0;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  0.85437166690826416 1;
	setAttr -s 2 ".koy[0:1]"  -0.51966243982315063 0;
createNode animCurveTA -n "animCurveTA1894";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 37.87925340126155 60 13.994403295754109;
	setAttr -s 2 ".kit[0:1]"  9 3;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  0.97896063327789307 1;
	setAttr -s 2 ".koy[0:1]"  -0.20404930412769318 0;
createNode animCurveTA -n "animCurveTA1895";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 50 0 55 0 60 0;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1896";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 50 0 55 0 60 0;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1897";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 95.284705327631698 3 66.672206829852314 
		6 66.672206829852314 10 66.672206829852314 14 66.672206829852314 18 66.672206829852314 
		20 66.672206829852314 23 66.672206829852314 50 66.672206829852314 55 66.672206829852314 
		60 27.911632519594587;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.1963493674993515 0.37178659439086914 
		1 1 1 1 1 1 1 0.44199067354202271 1;
	setAttr -s 11 ".koy[0:10]"  -0.98053401708602905 -0.92831820249557495 
		0 0 0 0 0 0 0 -0.89701962471008301 0;
createNode animCurveTA -n "animCurveTA1898";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 50 0 55 0 60 0;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1899";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 50 0 55 0 60 0;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1900";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 50 0 55 0 60 0;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1901";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 -1.3600558986621039 6 -0.16135188088572175 
		10 0.17531458053368568 14 -1.0037602929934266 18 -1.3817457402118334 20 -1.8954871397363262 
		23 -1.7222213883462014 50 -1.4907363756876946 55 -1.2770765886392135 60 -0.65073001024951671;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.97296398878097534 0.99990087747573853 
		0.99346977472305298 0.99848347902297974 0.99484735727310181 0.99698585271835327 
		0.99936497211456299 0.99997502565383911 0.99997347593307495 0.99903416633605957 
		1;
	setAttr -s 11 ".koy[0:10]"  -0.23095686733722687 -0.014079212211072445 
		0.11409547924995422 -0.055051889270544052 -0.10138425976037979 -0.077583298087120056 
		-0.035631883889436722 0.0070640570484101772 0.0072834715247154236 0.04394015297293663 
		0;
createNode animCurveTA -n "animCurveTA1902";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 -1.7348136322083922 6 -2.1983501567531918 
		10 -2.1972812590348823 14 -1.9625555826433296 18 -1.7175900971389688 20 -1.1936314277721638 
		23 -1.4323683570519787 50 -1.7180394229632663 55 -1.9557443220068702 60 -4.2368721935960938;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.95709031820297241 0.98209112882614136 
		0.99940222501754761 0.99988090991973877 0.99950754642486572 0.99775630235671997 
		0.99955421686172485 0.9999580979347229 0.99996334314346313 0.99141490459442139 
		1;
	setAttr -s 11 ".koy[0:10]"  -0.28978979587554932 -0.1884065568447113 
		-0.034571819007396698 0.015430881641805172 0.031380254775285721 0.066950738430023193 
		0.029855037108063698 -0.0091522624716162682 -0.0085634058341383934 -0.1307535320520401 
		0;
createNode animCurveTA -n "animCurveTA1903";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 7.1280947740371978 3 18.025996084384893 
		6 -15.880312516295612 10 -24.642075184185245 14 -5.5759421823152344 18 13.709442856275722 
		20 35.217716341489989 23 27.667160626694486 50 20.203568568015044 55 16.778061502440014 
		60 2.6995264082587442;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.46535462141036987 0.44581100344657898 
		0.29899296164512634 0.82907181978225708 0.3701012134552002 0.27043804526329041 
		0.5646548867225647 0.9673386812210083 0.98449546098709106 0.73721182346343994 
		1;
	setAttr -s 11 ".koy[0:10]"  0.8851243257522583 -0.89512711763381958 
		-0.95425528287887573 0.55914217233657837 0.92899143695831299 0.96273738145828247 
		0.82532715797424316 -0.25348752737045288 -0.17540998756885529 -0.67566168308258057 
		0;
createNode animCurveTA -n "animCurveTA1904";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 50 0 55 0 60 0;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1905";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 50 0 55 0 60 0;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1906";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 14.508952910281577 6 14.508952910281577 
		10 14.508952910281577 14 14.508952910281577 18 14.508952910281577 20 14.508952910281577 
		23 14.508952910281577 50 14.508952910281577 55 14.508952910281577 60 0;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.36729741096496582 0.61980152130126953 
		1 1 1 1 1 1 1 0.79628223180770874 1;
	setAttr -s 11 ".koy[0:10]"  0.93010354042053223 0.78475862741470337 
		0 0 0 0 0 0 0 -0.60492527484893799 0;
createNode animCurveTA -n "animCurveTA1907";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0.6205628187730865 6 3.5615739804694475 
		10 1.2859540278637445 14 0.56168829250648056 18 3.6375267832064915 20 2.2239744454617516 
		23 2.2239744454617516 50 2.2123094486367405 55 2.8063039406664108 60 0;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.99418574571609497 0.95493936538696289 
		0.99876374006271362 0.98126488924026489 0.98836219310760498 0.98964172601699829 
		0.98922085762023926 1 0.99995458126068115 0.99335777759552002 1;
	setAttr -s 11 ".koy[0:10]"  0.10767890512943268 0.2968008816242218 
		0.049709614366292953 -0.19266356527805328 0.15211890637874603 0.14355924725532532 
		-0.14643125236034393 -0.0002035926008829847 0.009527912363409996 -0.11506684124469757 
		0;
createNode animCurveTA -n "animCurveTA1908";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 6.1534707642816313 6 5.0593482146838156 
		10 6.0499001423546632 14 6.1591023145083348 18 5.005087459058303 20 5.8970685922674964 
		23 5.8970685922674964 50 5.9103704342454613 55 5.5134203307745242 60 0;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.68144941329956055 0.91480457782745361 
		0.99997001886367798 0.99741953611373901 0.99767005443572998 0.99973863363265991 
		0.9956657886505127 1 0.99998027086257935 0.95530140399932861 1;
	setAttr -s 11 ".koy[0:10]"  0.73186522722244263 0.40389668941497803 
		-0.0077468319796025753 0.071793004870414734 -0.0682234987616539 -0.022860780358314514 
		0.093003198504447937 0.00023216093541122973 -0.006277306005358696 -0.29563355445861816 
		0;
createNode animCurveTA -n "animCurveTA1909";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -18.722937869975638 3 -32.810404800085166 
		6 -3.3664805278333754 10 -26.556600069591706 14 -33.359394152338098 18 -2.5006014476938456 
		20 -17.691452850314786 23 -17.691452850314786 50 -17.941595194752669 55 -11.550114226736859 
		60 6.6786334979782902;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.37674638628959656 0.59805464744567871 
		0.90579509735107422 0.45391318202018738 0.53613877296447754 0.59033578634262085 
		0.53220194578170776 0.99999046325683594 0.99498903751373291 0.61293083429336548 
		1;
	setAttr -s 11 ".koy[0:10]"  -0.92631644010543823 0.80145531892776489 
		0.42371600866317749 -0.89104592800140381 0.84412986040115356 0.80715775489807129 
		-0.84661746025085449 -0.004365765955299139 0.099983878433704376 0.79013657569885254 
		0;
createNode animCurveTA -n "animCurveTA1910";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 -0.70293507907658626 6 -0.70293507907658626 
		10 -0.83690971216531951 14 -0.54643102570254642 18 -0.31205376012555708 20 
		-0.26862115475572979 23 -0.26862115475572979 50 -0.25236334058040388 55 -0.18869730455872094 
		60 -1.8903601258661935;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.9925580620765686 0.99812382459640503 
		0.99994981288909912 0.99994754791259766 0.99941051006317139 0.99970626831054688 
		0.99998962879180908 0.99999994039535522 0.99999916553497314 0.99634230136871338 
		1;
	setAttr -s 11 ".koy[0:10]"  -0.12177229672670364 -0.061227567493915558 
		-0.010020776651799679 0.010242628864943981 0.034331493079662323 0.024236364290118217 
		0.0045482045970857143 0.00028375239344313741 0.0013077497715130448 -0.085451610386371613 
		0;
createNode animCurveTA -n "animCurveTA1911";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 1.2717523854678625 6 1.2717523854678625 
		10 1.187886020951028 14 1.264901508425927 18 1.4407607497566994 20 1.4594355426723329 
		23 1.4594355426723329 50 1.4564560807154638 55 1.4407607497566994 60 2.5597289571479038;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.97624069452285767 0.99389785528182983 
		0.99998033046722412 0.99999988079071045 0.99986308813095093 0.99985593557357788 
		0.99999809265136719 1 0.99999994039535522 0.99833565950393677 1;
	setAttr -s 11 ".koy[0:10]"  0.21668899059295654 0.11030410975217819 
		-0.006273066159337759 -0.00044838880421593785 0.016548344865441322 0.016973851248621941 
		0.0019556160550564528 -5.2001421863678843e-005 -0.00030556559795513749 0.057671088725328445 
		0;
createNode animCurveTA -n "animCurveTA1912";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 10.789123571196804 6 10.789123571196804 
		10 4.553091335708821 14 14.236323059983325 18 26.145260036309839 20 28.928530085622626 
		23 28.928530085622626 50 30.421612357009703 55 35.157428558935315 60 2.0168110874036049;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.46901834011077881 0.72807198762893677 
		0.90625691413879395 0.97548031806945801 0.5776250958442688 0.61500626802444458 
		0.96005243062973022 0.99966061115264893 0.99484628438949585 0.55797368288040161 
		1;
	setAttr -s 11 ".koy[0:10]"  0.88318842649459839 0.68550068140029907 
		-0.42272728681564331 0.22008658945560455 0.81630218029022217 0.78852224349975586 
		0.27982011437416077 0.026050357148051262 0.10139484703540802 -0.82985860109329224 
		0;
createNode animCurveTA -n "animCurveTA1913";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 50 0 55 0 60 0;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1914";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 50 0 55 0 60 0;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1915";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 85.281921116584812 3 61.824373247854581 
		6 61.824373247854581 10 61.824373247854581 14 61.824373247854581 18 61.824373247854581 
		20 61.824373247854581 23 61.824373247854581 50 61.824373247854581 55 61.824373247854581 
		60 33.429092416277157;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.23727767169475555 0.43893253803253174 
		1 1 1 1 1 1 1 0.55810248851776123 1;
	setAttr -s 11 ".koy[0:10]"  -0.97144186496734619 -0.89851999282836914 
		0 0 0 0 0 0 0 -0.82977199554443359 0;
createNode animCurveTA -n "animCurveTA1916";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 22.827732383502713 3 22.82773238350271 
		6 22.82773238350271 10 22.82773238350271 14 22.82773238350271 18 22.82773238350271 
		20 22.82773238350271 23 22.82773238350271 50 22.82773238350271 55 22.82773238350271 
		60 -121.24398976748977;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 0.13141345977783203 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 -0.99132764339447021 
		0;
createNode animCurveTA -n "animCurveTA1917";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 38.578337509358107 3 38.578337509358107 
		6 38.578337509358107 10 38.578337509358107 14 38.578337509358107 18 38.578337509358107 
		20 38.578337509358107 23 38.578337509358107 50 38.578337509358107 55 38.578337509358107 
		60 28.612774017129329;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 0.88656425476074219 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 -0.46260541677474976 
		0;
createNode animCurveTA -n "animCurveTA1918";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 45.467643381850571 3 45.467643381850564 
		6 45.467643381850564 10 45.467643381850564 14 45.467643381850564 18 45.467643381850564 
		20 45.467643381850564 23 45.467643381850564 50 45.467643381850564 55 45.467643381850564 
		60 17.632837226638049;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 0.56576746702194214 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 -0.82456481456756592 
		0;
createNode animCurveTA -n "animCurveTA1919";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 50 0 55 0 60 0;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1920";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 3 0 6 0 10 0 14 0 18 0 20 0 
		23 0 50 0 55 0 60 0;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1921";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 77.470348806333035 3 50.17101925731437 
		6 50.17101925731437 10 50.17101925731437 14 50.17101925731437 18 50.17101925731437 
		20 50.17101925731437 23 50.17101925731437 50 50.17101925731437 55 50.17101925731437 
		60 17.254116939558369;
	setAttr -s 11 ".kit[10]"  3;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 3;
	setAttr -s 11 ".kox[0:10]"  0.20540456473827362 0.38704407215118408 
		1 1 1 1 1 1 1 0.50185155868530273 1;
	setAttr -s 11 ".koy[0:10]"  -0.97867715358734131 -0.92206120491027832 
		0 0 0 0 0 0 0 -0.86495375633239746 0;
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
	setAttr ".top" 478;
	setAttr -k on ".left";
	setAttr -k on ".bot";
	setAttr ".rght" 638;
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
connectAttr "brt_jump_dashSource.st" "clipLibrary1.st[0]";
connectAttr "brt_jump_dashSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL639.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL640.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "brt_Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "brt_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "brt_Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "brt_Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr"
		;
connectAttr "animCurveTU129.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU130.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU131.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU132.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU133.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU134.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU135.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU136.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA1804.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1805.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1806.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL644.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL645.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL646.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL647.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL648.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL649.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1807.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1808.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1809.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL650.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL651.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL652.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1810.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1811.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1812.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1813.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1814.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1815.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1816.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1817.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1818.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA1819.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA1820.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA1821.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA1822.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA1823.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA1824.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL653.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL654.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL655.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL656.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL657.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL658.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL659.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL660.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL661.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1825.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1826.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1827.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1828.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1829.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1830.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1831.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1832.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1833.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1834.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1835.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1836.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1837.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1838.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1839.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1840.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1841.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1842.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1843.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1844.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1845.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1846.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1847.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA1848.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA1849.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA1850.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1851.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1852.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1853.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL662.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL663.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL664.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA1854.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA1855.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1856.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL665.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL666.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL667.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1857.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1858.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1859.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL668.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL669.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL670.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1860.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1861.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1862.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL671.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL672.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL673.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1863.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1864.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1865.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL674.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL675.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL676.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL677.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL678.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL679.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1866.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1867.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1868.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1869.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1870.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1871.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1872.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1873.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1874.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1875.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1876.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1877.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1878.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1879.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1880.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1881.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1882.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1883.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1884.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1885.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1886.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1887.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1888.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1889.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1890.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1891.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1892.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1893.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1894.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1895.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1896.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1897.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1898.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1899.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1900.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1901.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1902.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1903.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1904.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1905.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1906.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1907.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1908.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1909.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1910.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1911.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1912.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1913.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1914.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1915.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1916.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1917.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1918.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1919.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1920.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1921.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of brt_jump_dash.ma
