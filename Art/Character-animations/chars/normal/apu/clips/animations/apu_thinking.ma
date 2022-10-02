//Maya ASCII 4.0 scene
//Name: apu_thinking.ma
//Last modified: Wed, Feb 19, 2003 02:06:43 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "apu_thinkingSource";
	setAttr ".ihi" 0;
	setAttr ".du" 100;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL122";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 88 1 100 1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL123";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  0 -0.054075435230564878 1 -0.051969508627497669 
		2 -0.049715400857470497 3 -0.047347307576706667 4 -0.04489942444142949 5 
		-0.042405947107862288 6 -0.039901071232228365 7 -0.037418992470751034 8 -0.034993906479653621 
		9 -0.032660008915159418 10 -0.030451495433491758 11 -0.028402561690873945 
		12 -0.026547403343529289 13 -0.024920216047681097 14 -0.023555195459552706 
		15 -0.022486537235367393 16 -0.021748437031348513 17 -0.021204043399142093 
		18 -0.020694091418461253 19 -0.020219156537629894 20 -0.019779814204971914 
		21 -0.019376639868811208 22 -0.019010208977471677 23 -0.01868109697927722 
		24 -0.01838987932255173 25 -0.018137131455619106 26 -0.017923428826803253 
		27 -0.017749346884428054 28 -0.017615461076817419 29 -0.017522346852295242 
		30 -0.017470579659185425 31 -0.017460734945811858 32 -0.017493388160498443 
		33 -0.017569114751569078 34 -0.017688490167347661 35 -0.01785208985615809 
		36 -0.01806048926632426 37 -0.018314263846170069 38 -0.018613989044019424 
		39 -0.018960240308196211 40 -0.019353593087024328 41 -0.019794622828827685 
		42 -0.020283904981930164 43 -0.020822014994655677 44 -0.021409528315328104 
		45 -0.022047020392271369 46 -0.022735066673809347 47 -0.023474242608265944 
		48 -0.024265123643965061 49 -0.02510828522923059 50 -0.026004302812386425 
		51 -0.02815919353025496 52 -0.03247731472576082 53 -0.038506748320181444 
		54 -0.04579557623479423 55 -0.053891880390876612 56 -0.062343742709705996 
		57 -0.07069924511255983 58 -0.078506469520715494 59 -0.085313497855450407 
		60 -0.090668412038042046 61 -0.094119293989767761 62 -0.095214225631904986 
		63 -0.0947005429370774 64 -0.093654615807356761 65 -0.092118077058192652 
		66 -0.09013255950503464 67 -0.087739695963332295 68 -0.0849811192485352 69 
		-0.081898462176092937 70 -0.078533357561455089 71 -0.074927438220071224 72 
		-0.071122336967390912 73 -0.067159686618863748 74 -0.063081119989939302 75 
		-0.058928269896067129 76 -0.054742769152696831 77 -0.050566250575277971 78 
		-0.046440346979260153 79 -0.042406691180092916 80 -0.038506915993225858 81 
		-0.034782654234108576 82 -0.031275538718190596 83 -0.028027202260921539 84 
		-0.025079277677750957 85 -0.022473397784128445 86 -0.020251195395503567 87 
		-0.01845430332732589 88 -0.017124354395045022 89 -0.01670649559615341 90 
		-0.017502511595782713 91 -0.019338991710841295 92 -0.022042525258237508 93 
		-0.025439701554879707 94 -0.029357109917676261 95 -0.033621339663535525 96 
		-0.038058980109365835 97 -0.04249662057207558 98 -0.046760850368573081 99 
		-0.050678258815766743 100 -0.054075435230564878;
createNode animCurveTL -n "animCurveTL125";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  0 0 1 0.00035274900139628626 2 
		0.00072117367500583256 3 0.0011016565571066099 4 0.0014905801839765888 5 
		0.0018843270918937403 6 0.0022792798171360346 7 0.0026718208959814428 8 0.0030583328647079354 
		9 0.0034351982595934843 10 0.0037987996169160593 11 0.0041455194729536305 
		12 0.0044717403639841693 13 0.0047738448262856477 14 0.0050482153961360346 
		15 0.0052912346098133002 16 0.0054992850035954187 17 0.0056859877800222456 
		18 0.0058671132084087644 19 0.0060422678692513996 20 0.0062110583430465835 
		21 0.0063730912102907449 22 0.006527973051480309 23 0.0066753104471117073 
		24 0.0068147099776813694 25 0.0069457782236857224 26 0.0070681217656211959 
		27 0.0071813471839842179 28 0.0072850610592712188 29 0.0073788699719786258 
		30 0.0074623805026028693 31 0.0075351992316403764 32 0.007596932739587575 
		33 0.0076471876069408983 34 0.0076855704141967716 35 0.0077116877418516253 
		36 0.0077251461704018858 37 0.0077255522803439834 38 0.0077125126521743496 
		39 0.0076856338663894089 40 0.0076445225034855917 41 0.0075887851439593269 
		42 0.0075180283683070441 43 0.0074318587570251712 44 0.007329882890610138 
		45 0.0072117073495583696 46 0.007076938714366301 47 0.0069251835655303566 
		48 0.0067560484835469661 49 0.0065691400489125583 50 0.0063640648421235627 
		51 0.0056551144023669489 52 0.0040746035324705221 53 0.0017991701093263302 
		54 -0.00099454799017358172 55 -0.0041299128891371679 56 -0.0074302867106723807 
		57 -0.010719031577887173 58 -0.013819509613889501 59 -0.016555082941787317 
		60 -0.018749113684688571 61 -0.020224963965701229 62 -0.020805995907933219 
		63 -0.020774046156328347 64 -0.020539562363079737 65 -0.020118823162169369 
		66 -0.019528107187579226 67 -0.018783693073291294 68 -0.017901859453287549 
		69 -0.016898884961549978 70 -0.015791048232060557 71 -0.014594627898801272 
		72 -0.01332590259575411 73 -0.012001150956901041 74 -0.010636651616224055 
		75 -0.0092486832077051332 76 -0.007853524365326256 77 -0.0064674537230694079 
		78 -0.0051067499149165729 79 -0.0037876915748497209 80 -0.0025265573368508515 
		81 -0.0013396258349019326 82 -0.00024317570298495046 83 0.00074651442491810969 
		84 0.0016131659148252669 85 0.0023405001327545453 86 0.0029122384447239531 
		87 0.0033121022167515121 88 0.0035238128148552556 89 0.0035711956960797321 
		90 0.0035002031596416665 91 0.0033277459790691456 92 0.0030707349278902524 
		93 0.0027460807796330748 94 0.0023706943078256968 95 0.0019614862859962034 
		96 0.001535367487672681 97 0.0011092486863832135 98 0.00070004065565588806 
		99 0.00032465416901878791 100 0;
createNode animCurveTA -n "animCurveTA340";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "animCurveTU29";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 95 1 100 0;
	setAttr -s 4 ".kit[0:3]"  1 2 2 1;
	setAttr -s 4 ".kot[0:3]"  9 2 2 5;
	setAttr -s 4 ".kix[0:3]"  0 0.16439899802207947 1 0.16439883410930634;
	setAttr -s 4 ".kiy[0:3]"  0 0.98639392852783203 0 -0.98639392852783203;
createNode animCurveTU -n "animCurveTU30";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 95 1 100 0;
	setAttr -s 4 ".kit[0:3]"  1 2 2 1;
	setAttr -s 4 ".kot[0:3]"  9 2 2 5;
	setAttr -s 4 ".kix[0:3]"  0 0.16439899802207947 1 0.16439883410930634;
	setAttr -s 4 ".kiy[0:3]"  0 0.98639392852783203 0 -0.98639392852783203;
createNode animCurveTU -n "animCurveTU31";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 100 1;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU32";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 100 1;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA341";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA342";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA343";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL127";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL128";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL129";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.26454016861507795 100 -0.26454016861507795;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL131";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.13806192026723146 16 0.13964711708164665 
		22 0.18434154906913075 25 0.13964711708164665 29 0.13964711708164665 34 0.15202747474217984 
		37 0.13964711708164665 50 0.13964711708164665 62 0.1378963593953989 88 0.1378963593953989 
		100 0.13806192026723146;
	setAttr -s 11 ".kit[0:10]"  1 3 9 3 3 9 3 
		3 3 3 9;
	setAttr -s 11 ".kot[0:10]"  9 3 9 3 3 9 3 
		3 3 3 9;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 1 1 0.99914449453353882;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0.041354816406965256;
createNode animCurveTL -n "animCurveTL132";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.064904406754016042 88 -0.064904406754016042 
		100 -0.064904406754016042;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA344";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 16 0 22 -18.917444470195793 
		25 0 29 0 34 -5.6024739392502898 37 0 50 0 62 0.79226904145708898 88 0.79226904145708898 
		100 0;
	setAttr -s 11 ".kit[0:10]"  1 3 3 3 3 9 9 
		3 3 3 9;
	setAttr -s 11 ".kot[0:10]"  9 1 3 3 3 9 3 
		3 3 3 9;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 0.98360532522201538 
		1 1 1 0.99940299987792969;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0.18033471703529358 
		0 0 0 -0.034548625349998474;
	setAttr -s 11 ".kox[1:10]"  0.99449610710144043 1 1 1 1 1 1 
		1 1 0.99940299987792969;
	setAttr -s 11 ".koy[1:10]"  -0.10477379709482193 0 0 0 0 0 
		0 0 0 -0.034548625349998474;
createNode animCurveTA -n "animCurveTA345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -25.948901905116401 100 -25.948901905116401;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA346";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.21594587158542247 100 0.21594587158542247;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.1380615615975922 100 0.1380615615975922;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.00078430246903575811 100 0.00078430246903575811;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA350";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA351";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA352";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA353";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA354";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA355";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL136";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL137";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL138";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 88 1 100 1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL139";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL140";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL141";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 88 1 100 1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.076472881617957691 16 -0.030756398785928899 
		50 -0.036774997039785789 62 -0.13465090339168634 88 -0.024217072333354791 
		100 -0.076472881617957691;
	setAttr -s 6 ".kit[0:5]"  1 9 1 9 9 9;
	setAttr -s 6 ".kot[2:5]"  1 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.38710522651672363 0.24752064049243927 
		0.71014845371246338 0.21273867785930634 0.076323233544826508;
	setAttr -s 6 ".kiy[0:5]"  0 0.92203551530838013 -0.96888262033462524 
		0.70405197143554688 0.97710913419723511 -0.99708312749862671;
	setAttr -s 6 ".kox[2:5]"  0.24752096831798553 0.71014845371246338 
		0.21273867785930634 0.076323233544826508;
	setAttr -s 6 ".koy[2:5]"  -0.96888256072998047 0.70405197143554688 
		0.97710913419723511 -0.99708312749862671;
createNode animCurveTL -n "animCurveTL143";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.99296149630440855 16 0.9912550528809112 
		50 0.99120412684100945 62 0.99499028485781749 88 0.99499028485781749 100 
		0.99296149630440855;
	setAttr -s 6 ".kit[1:5]"  9 1 1 9 9;
	setAttr -s 6 ".kot[0:5]"  9 1 1 1 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99448692798614502 0.99544626474380493 
		0.98842084407806396 0.98741483688354492 0.89184492826461792;
	setAttr -s 6 ".kiy[0:5]"  0 -0.10486085712909698 0.095324315130710602 
		0.15173758566379547 -0.158151775598526 -0.45234125852584839;
	setAttr -s 6 ".kox[1:5]"  0.99998992681503296 0.99544626474380493 
		0.98842066526412964 0.98741483688354492 0.89184492826461792;
	setAttr -s 6 ".koy[1:5]"  -0.004493428859859705 0.09532427042722702 
		0.15173843502998352 -0.158151775598526 -0.45234125852584839;
createNode animCurveTL -n "animCurveTL144";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 16 0.0077770279475376028 50 
		0.0089999900177527969 62 -0.029423608986724536 88 0.004983337056563405 100 
		0;
	setAttr -s 6 ".kit[3:5]"  9 1 9;
	setAttr -s 6 ".kot[0:5]"  9 1 1 9 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.77958440780639648 0.73992252349853516 
		0.95322209596633911 0.90291005373001099 0.62596619129180908;
	setAttr -s 6 ".kiy[0:5]"  0 0.62629717588424683 -0.67269206047058105 
		-0.30227074027061462 0.42982950806617737 -0.77985018491744995;
	setAttr -s 6 ".kox[1:5]"  0.77958416938781738 0.73992067575454712 
		0.95322209596633911 0.90291047096252441 0.62596619129180908;
	setAttr -s 6 ".koy[1:5]"  0.6262974739074707 -0.67269414663314819 
		-0.30227074027061462 0.42982861399650574 -0.77985018491744995;
createNode animCurveTA -n "animCurveTA356";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.62843630316474508 88 0 100 
		-0.62843630316474508;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99962425231933594;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.027410408481955528;
	setAttr -s 3 ".kox[1:2]"  1 0.99962425231933594;
	setAttr -s 3 ".koy[1:2]"  0 -0.027410408481955528;
createNode animCurveTA -n "animCurveTA357";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -5.8284402688137167 88 0 100 
		-5.8284402688137167;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.9691508412361145;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.24646835029125214;
	setAttr -s 3 ".kox[1:2]"  1 0.9691508412361145;
	setAttr -s 3 ".koy[1:2]"  0 -0.24646835029125214;
createNode animCurveTA -n "animCurveTA358";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.295636019309746 16 1.5273506473629141 
		50 1.2953906634023735 62 -2.2701334503400394 88 0 100 -1.295636019309746;
	setAttr -s 6 ".kit[1:5]"  9 1 3 1 9;
	setAttr -s 6 ".kot[0:5]"  9 1 1 3 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99963212013244629 0.999611496925354 
		1 0.99831700325012207 0.9984058141708374;
	setAttr -s 6 ".kiy[0:5]"  0 0.027123186737298965 -0.027871806174516678 
		0 0.057992585003376007 -0.056442670524120331;
	setAttr -s 6 ".kox[1:5]"  0.99999362230300903 0.999611496925354 
		1 0.99831700325012207 0.9984058141708374;
	setAttr -s 6 ".koy[1:5]"  -0.0035721524618566036 -0.027871806174516678 
		0 0.057992588728666306 -0.056442670524120331;
createNode animCurveTA -n "animCurveTA359";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA360";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA361";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA362";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA363";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA364";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA365";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA366";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA367";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA368";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA369";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA370";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA371";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA372";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA373";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA374";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA375";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA376";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA377";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA378";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA379";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA380";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA381";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA382";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA383";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA384";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.43524234076486068 16 0.52588537528673795 
		50 0.36732259274780832 62 0.062074125016377303 88 0.062074125016377303 100 
		-0.43524234076486068;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.020762275904417038 0.033041372895240784 
		0.041460566222667694 0.025461776182055473 0.0080429064109921455;
	setAttr -s 6 ".kiy[0:5]"  0 0.99978446960449219 -0.99945396184921265 
		-0.99914014339447021 -0.99967581033706665 -0.99996763467788696;
createNode animCurveTL -n "animCurveTL146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.82665738350180629 16 0.24261047541359035 
		50 0.0045135107202548853 62 -0.46942381579058678 88 -0.46942381579058678 
		100 -0.82665738350180629;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.020048003643751144 0.021529551595449448 
		0.026716919615864754 0.035435393452644348 0.01119645219296217;
	setAttr -s 6 ".kiy[0:5]"  0 0.99979901313781738 -0.99976819753646851 
		-0.99964302778244019 -0.99937194585800171 -0.99993729591369629;
createNode animCurveTL -n "animCurveTL147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.27773886459742925 16 0.45535171955418435 
		50 0.38285941913512583 62 0.22696860849171466 88 0.22696860849171466 100 
		0.27773886459742925;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.15659217536449432 0.066987834870815277 
		0.080986551940441132 0.2420697808265686 0.078542888164520264;
	setAttr -s 6 ".kiy[0:5]"  0 0.98766332864761353 -0.9977537989616394 
		-0.99671518802642822 0.97025883197784424 0.99691075086593628;
createNode animCurveTA -n "animCurveTA385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.8121934161072299e-015 16 4.4197345729753632 
		50 4.8201520000774494 62 5.6812282590278436 88 5.6812282590278436 100 1.8121934161072299e-015;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99872851371765137 0.99989694356918335 
		0.99992960691452026 0.99695003032684326 0.97062236070632935;
	setAttr -s 6 ".kiy[0:5]"  0 0.050412330776453018 0.01435757614672184 
		0.011863861232995987 -0.078042410314083099 -0.24060796201229095;
createNode animCurveTA -n "animCurveTA386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 28.652637602052774 16 22.646910800576748 
		50 22.158853296581952 62 21.109311747439843 88 21.109311747439843 100 28.652637602052774;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99769580364227295 0.99984687566757202 
		0.99989545345306396 0.99464172124862671 0.94987154006958008;
	setAttr -s 6 ".kiy[0:5]"  0 -0.067846059799194336 -0.0174991674721241 
		-0.014460032805800438 0.1033819168806076 0.31264045834541321;
createNode animCurveTA -n "animCurveTA387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 64.676908227303443 16 76.603079733540241 
		50 76.655991791448727 62 76.769776342877606 88 76.769776342877606 100 64.676908227303443;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99222350120544434 0.99999821186065674 
		0.99999874830245972 0.986400306224823 0.88443106412887573;
	setAttr -s 6 ".kiy[0:5]"  0 0.12446914613246918 0.0018974344711750746 
		0.0015678256750106812 -0.16436053812503815 -0.46667090058326721;
createNode animCurveTL -n "animCurveTL148";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.5198069948790518 88 0.20623790699604494 
		100 0.5198069948790518;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.012755320407450199;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99991863965988159;
	setAttr -s 3 ".kox[1:2]"  1 0.012755320407450199;
	setAttr -s 3 ".koy[1:2]"  0 0.99991863965988159;
createNode animCurveTL -n "animCurveTL149";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.72394202659893114 88 -0.94615818397708606 
		100 -0.72394202659893114;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.017997574061155319;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99983805418014526;
	setAttr -s 3 ".kox[1:2]"  1 0.017997574061155319;
	setAttr -s 3 ".koy[1:2]"  0 0.99983805418014526;
createNode animCurveTL -n "animCurveTL150";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.36439499068905612 88 0.023808763748733922 
		100 0.36439499068905612;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.011743644252419472;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99993103742599487;
	setAttr -s 3 ".kox[1:2]"  1 0.011743644252419472;
	setAttr -s 3 ".koy[1:2]"  0 0.99993103742599487;
createNode animCurveTA -n "animCurveTA388";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.7976222737965317 88 8.1910546202722809 
		100 7.7976222737965317;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99985265731811523;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.017164198681712151;
	setAttr -s 3 ".kox[1:2]"  1 0.99985265731811523;
	setAttr -s 3 ".koy[1:2]"  0 -0.017164198681712151;
createNode animCurveTA -n "animCurveTA389";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -30.409274105849079 88 -16.680769289981995 
		100 -30.409274105849079;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.85786396265029907;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.51387691497802734;
	setAttr -s 3 ".kox[1:2]"  1 0.85786396265029907;
	setAttr -s 3 ".koy[1:2]"  0 -0.51387691497802734;
createNode animCurveTA -n "animCurveTA390";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -64.859940280210893 88 -64.609749241846473 
		100 -64.859940280210893;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99994039535522461;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.010915993712842464;
	setAttr -s 3 ".kox[1:2]"  1 0.99994039535522461;
	setAttr -s 3 ".koy[1:2]"  0 -0.010915993712842464;
createNode animCurveTL -n "animCurveTL151";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.8448236677023373 88 -0.8448236677023373 
		100 -0.8448236677023373;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL152";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.5117481219250299 88 1.5117481219250299 
		100 1.5117481219250299;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL153";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.097994651149805143 88 -0.097994651149805143 
		100 -0.097994651149805143;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA391";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5.4739599453216465 88 5.4739599453216474 
		100 5.4739599453216465;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA392";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.5874521608419823 88 8.5874521608419823 
		100 8.5874521608419823;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA393";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 74.754744621954103 88 74.754744621954103 
		100 74.754744621954103;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL154";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.61083301393139333 88 0.61083301393139333 
		100 0.61083301393139333;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL155";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.4644416293758407 88 1.4644416293758407 
		100 1.4644416293758407;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL156";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.14314299916678522 88 0.14314299916678522 
		100 0.14314299916678522;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA394";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.226511010665412 88 16.226511010665405 
		100 16.226511010665412;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA395";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -8.5139660854992858 88 -8.513966085499284 
		100 -8.5139660854992858;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA396";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -68.213989601412422 88 -68.213989601412422 
		100 -68.213989601412422;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL157";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL158";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL159";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 88 -1 100 -1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.10167917362943303 16 -0.73810969304757312 
		50 -0.62746827761432478 62 -0.38953982331974019 88 -0.38953982331974019 100 
		-0.10167917362943303;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.031682472676038742 0.0439467653632164 
		0.053162012249231339 0.04396023228764534 0.013894269242882729;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99949800968170166 0.99903386831283569 
		0.99858587980270386 0.99903327226638794 0.99990344047546387;
createNode animCurveTL -n "animCurveTL161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.40762644910266188 16 -0.36008784014046685 
		50 -0.36835227560145628 62 -0.3861245027015201 88 -0.3861245027015201 100 
		-0.40762644910266188;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.39064711332321167 0.5074540376663208 
		0.58039498329162598 0.50756967067718506 0.18289189040660858;
	setAttr -s 6 ".kiy[0:5]"  0 0.92054051160812378 -0.8616788387298584 
		-0.81433510780334473 -0.86161071062088013 -0.98313301801681519;
createNode animCurveTL -n "animCurveTL162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.93129112588482243 16 -0.26526062035167752 
		50 -0.38104789696603014 62 -0.6300422506279183 88 -0.6300422506279183 100 
		-0.93129112588482243;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.030275749042630196 0.041997194290161133 
		0.050805602222681046 0.04201006144285202 0.013276886194944382;
	setAttr -s 6 ".kiy[0:5]"  0 0.99954158067703247 -0.99911773204803467 
		-0.99870854616165161 -0.99911719560623169 -0.9999118447303772;
createNode animCurveTA -n "animCurveTA397";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.253734489678925 16 -37.366494547638922 
		50 -37.993501838790245 56 -4.5572205384299966 62 -6.1909837740625866 88 -6.1909837740625866 
		100 12.253734489678925;
	setAttr -s 7 ".kit[4:6]"  9 1 9;
	setAttr -s 7 ".kot[0:6]"  9 1 1 1 9 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99971431493759155 0.99974626302719116 
		0.99891889095306396 0.99964290857315063 0.99916380643844604 0.77904033660888672;
	setAttr -s 7 ".kiy[0:6]"  0 -0.023900974541902542 0.022525284439325333 
		0.046487588435411453 -0.026722842827439308 0.040886238217353821 0.62697380781173706;
	setAttr -s 7 ".kox[1:6]"  0.99971431493759155 0.99974626302719116 
		0.99891889095306396 0.99964290857315063 0.99916380643844604 0.77904033660888672;
	setAttr -s 7 ".koy[1:6]"  -0.023900998756289482 0.02252531424164772 
		0.046487588435411453 -0.026722842827439308 0.040886260569095612 0.62697380781173706;
createNode animCurveTA -n "animCurveTA398";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -65.746751280844975 16 -5.9039825360424478 
		50 -4.4192090043709999 56 -2.731134681043403 62 -20.279827517874502 88 -20.279827517874502 
		100 -65.746751280844975;
	setAttr -s 7 ".kit[2:6]"  9 1 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 1 9 1 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99848842620849609 0.99913865327835083 
		0.99815982580184937 0.99914556741714478 0.99954098463058472 0.45011556148529053;
	setAttr -s 7 ".kiy[0:6]"  0 0.054961852729320526 0.041496708989143372 
		-0.060637757182121277 -0.041329190135002136 -0.030295988544821739 -0.89297032356262207;
	setAttr -s 7 ".kox[1:6]"  0.99848848581314087 0.99913865327835083 
		0.99815982580184937 0.99914556741714478 0.99954098463058472 0.45011556148529053;
	setAttr -s 7 ".koy[1:6]"  0.054961703717708588 0.041496708989143372 
		-0.060637742280960083 -0.041329149156808853 -0.030295960605144501 -0.89297032356262207;
createNode animCurveTA -n "animCurveTA399";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 16 109.67972007935933 50 111.48053898332854 
		56 79.462118288292316 62 96.414413390666056 88 96.414413390666056 100 0;
	setAttr -s 7 ".kit[6]"  9;
	setAttr -s 7 ".kot[0:6]"  9 1 1 1 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99860656261444092 0.99955946207046509 
		0.99857199192047119 0.99883198738098145 0.99735945463180542 0.23126237094402313;
	setAttr -s 7 ".kiy[0:6]"  0 0.052772019058465958 -0.029678817838430405 
		-0.053422417491674423 0.048318751156330109 -0.072622932493686676 -0.97289139032363892;
	setAttr -s 7 ".kox[1:6]"  0.99860662221908569 0.99955946207046509 
		0.99857199192047119 0.99883198738098145 0.99735945463180542 0.23126237094402313;
	setAttr -s 7 ".koy[1:6]"  0.052771836519241333 -0.029678825289011002 
		-0.053422540426254272 0.048318739980459213 -0.072622872889041901 -0.97289139032363892;
createNode animCurveTA -n "animCurveTA400";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.061808866237340665 18 -4.996588609324399 
		52 -5.0816921502730095 58 12.77993589815498 64 -6.0188443996937568 90 -6.0188443996937568 
		100 -0.061808866237340665;
	setAttr -s 7 ".kit[3:6]"  9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 1 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99998968839645386 0.99995028972625732 
		0.99916499853134155 0.99996465444564819 0.99996930360794067 0.95464026927947998;
	setAttr -s 7 ".kiy[0:6]"  0 -0.0045390785671770573 0.0099690761417150497 
		-0.040856838226318359 -0.0084087355062365532 0.0078332005068659782 0.29776155948638916;
	setAttr -s 7 ".kox[1:6]"  0.99998968839645386 0.99995028972625732 
		0.99916499853134155 0.99996465444564819 0.99996930360794067 0.95464026927947998;
	setAttr -s 7 ".koy[1:6]"  -0.0045390771701931953 0.0099690798670053482 
		-0.040856838226318359 -0.0084087401628494263 0.0078332051634788513 0.29776155948638916;
createNode animCurveTA -n "animCurveTA401";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -59.058178941076754 18 -33.725591023005073 
		52 -33.272731146510637 58 -26.216607353903047 64 -33.144840286769899 90 -33.144840286769899 
		100 -59.058178941076754;
	setAttr -s 7 ".kit[3:6]"  9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 1 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99987536668777466 0.99987351894378662 
		0.99998444318771362 0.99996083974838257 0.99989789724349976 0.59329068660736084;
	setAttr -s 7 ".kiy[0:6]"  0 0.015786044299602509 0.015904413536190987 
		0.005580204539000988 -0.0088467095047235489 -0.014289409853518009 -0.8049883246421814;
	setAttr -s 7 ".kox[1:6]"  0.99987536668777466 0.99987351894378662 
		0.99998444318771362 0.99996083974838257 0.99989789724349976 0.59329068660736084;
	setAttr -s 7 ".koy[1:6]"  0.015786055475473404 0.015904413536190987 
		0.005580204539000988 -0.0088467104360461235 -0.01428942009806633 -0.8049883246421814;
createNode animCurveTA -n "animCurveTA402";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.57914742975785 18 79.577639961991196 
		52 81.140704012364225 58 64.872217245627695 64 82.787625339019158 90 82.787625339019158 
		100 16.57914742975785;
	setAttr -s 7 ".kit[3:6]"  9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 1 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99832528829574585 0.9999161958694458 
		0.99742799997329712 0.99989610910415649 0.99917292594909668 0.27716052532196045;
	setAttr -s 7 ".kiy[0:6]"  0 0.057850152254104614 -0.012946427799761295 
		0.071675673127174377 0.014412504620850086 -0.040663447231054306 -0.960823655128479;
	setAttr -s 7 ".kox[1:6]"  0.99832528829574585 0.9999161958694458 
		0.99742799997329712 0.99989610910415649 0.99917292594909668 0.27716052532196045;
	setAttr -s 7 ".koy[1:6]"  0.057850092649459839 -0.01294642873108387 
		0.071675673127174377 0.014412523247301579 -0.040663488209247589 -0.960823655128479;
createNode animCurveTA -n "animCurveTA403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.5572674112203639 16 86.590712866087742 
		50 88.426065638738976 56 86.242130081646962 62 81.24741764161665 88 81.24741764161665 
		100 8.5572674112203639;
	setAttr -s 7 ".kit[0:6]"  1 1 9 9 9 1 9;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99654418230056763 0.99998956918716431 
		0.95428210496902466 0.99667710065841675 0.9999350905418396 0.30069616436958313;
	setAttr -s 7 ".kiy[0:6]"  0 0.083064667880535126 -0.0045628906227648258 
		-0.29890751838684082 -0.08145422488451004 -0.011393418535590172 -0.95371997356414795;
	setAttr -s 7 ".kox[1:6]"  0.99654418230056763 0.99998956918716431 
		0.95428210496902466 0.99667710065841675 0.9999350905418396 0.30069616436958313;
	setAttr -s 7 ".koy[1:6]"  0.083064645528793335 -0.0045628906227648258 
		-0.29890751838684082 -0.08145422488451004 -0.011393411085009575 -0.95371997356414795;
createNode animCurveTA -n "animCurveTA404";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.711328223519061 18 84.274604912846527 
		52 85.418312544754272 58 78.490824231517294 64 62.647493819837592 90 62.647493819837592 
		100 15.711328223519061;
	setAttr -s 7 ".kit[2:6]"  9 9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 1 9 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99941897392272949 0.99714630842208862 
		0.70938575267791748 0.99988210201263428 0.99978160858154297 0.37689825892448425;
	setAttr -s 7 ".kiy[0:6]"  0 0.034084673970937729 -0.075493462383747101 
		-0.70482045412063599 0.01535438559949398 -0.020897040143609047 -0.92625468969345093;
	setAttr -s 7 ".kox[1:6]"  0.99941897392272949 0.99714630842208862 
		0.70938575267791748 0.99988210201263428 0.99978160858154297 0.37689825892448425;
	setAttr -s 7 ".koy[1:6]"  0.034084685146808624 -0.075493462383747101 
		-0.70482045412063599 0.015354398638010025 -0.020897040143609047 -0.92625468969345093;
createNode animCurveTA -n "animCurveTA405";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 16 -89.23469156075106 50 -88.965806790659968 
		56 -64.64067100094897 62 -9.0085064870862368 88 -9.0085064870862368 100 0;
	setAttr -s 7 ".kit[3:6]"  9 1 9 9;
	setAttr -s 7 ".kot[0:6]"  9 1 1 9 1 9 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99967694282531738 0.99958634376525879 
		0.27553653717041016 0.99947476387023926 0.99238407611846924 0.93068397045135498;
	setAttr -s 7 ".kiy[0:6]"  0 0.025417767465114594 0.0287591852247715 
		0.96129059791564941 0.03240605816245079 0.12318210303783417 0.36582422256469727;
	setAttr -s 7 ".kox[1:6]"  0.99967688322067261 0.99958634376525879 
		0.27553653717041016 0.99947476387023926 0.99238407611846924 0.93068397045135498;
	setAttr -s 7 ".koy[1:6]"  0.025417953729629517 0.028759192675352097 
		0.96129059791564941 0.032406099140644073 0.12318210303783417 0.36582422256469727;
createNode animCurveTA -n "animCurveTA406";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 16 -2.1568690181753367 50 -2.2223131615750473 
		56 -13.123813205420968 62 -38.055803341427172 88 -38.055803341427172 100 
		0;
	setAttr -s 7 ".kit[3:6]"  9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 1 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99999529123306274 0.99975574016571045 
		0.53880143165588379 0.99973618984222412 0.99967706203460693 0.51589912176132202;
	setAttr -s 7 ".kiy[0:6]"  0 -0.0030718571506440639 -0.022099953144788742 
		-0.84243279695510864 -0.02296898327767849 0.025413116440176964 0.85664933919906616;
	setAttr -s 7 ".kox[1:6]"  0.99999529123306274 0.99975574016571045 
		0.53880143165588379 0.99973618984222412 0.99967706203460693 0.51589912176132202;
	setAttr -s 7 ".koy[1:6]"  -0.0030718552879989147 -0.022099947556853294 
		-0.84243279695510864 -0.022969018667936325 0.02541310153901577 0.85664933919906616;
createNode animCurveTA -n "animCurveTA407";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 16 28.853948340524877 50 29.708827906094765 
		56 31.498616005606685 62 35.59190400300028 88 35.59190400300028 100 0;
	setAttr -s 7 ".kit[2:6]"  9 9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 1 9 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99952536821365356 0.99940133094787598 
		0.96859687566757202 0.99999994039535522 0.99989539384841919 0.54138922691345215;
	setAttr -s 7 ".kiy[0:6]"  0 0.030806178227066994 0.034597892314195633 
		0.24863651394844055 0.00035231371293775737 -0.014465834945440292 -0.84077209234237671;
	setAttr -s 7 ".kox[1:6]"  0.99952536821365356 0.99940133094787598 
		0.96859687566757202 0.99999994039535522 0.99989533424377441 0.54138922691345215;
	setAttr -s 7 ".koy[1:6]"  0.030806183815002441 0.034597892314195633 
		0.24863651394844055 0.00035231508081778884 -0.014465860091149807 -0.84077209234237671;
createNode animCurveTA -n "animCurveTA408";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 18 -90.159059577282719 52 -92.054964512871436 
		58 -67.570210237516164 64 -11.572994187279695 90 -11.572994187279695 100 
		0;
	setAttr -s 7 ".kit[3:6]"  9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 1 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99916243553161621 0.99874043464660645 
		0.27387541532516479 0.99987447261810303 0.99982792139053345 0.85523569583892822;
	setAttr -s 7 ".kiy[0:6]"  0 -0.040919065475463867 0.050174850970506668 
		0.96176517009735107 0.015845602378249168 -0.018552215769886971 0.51823920011520386;
	setAttr -s 7 ".kox[1:6]"  0.99916249513626099 0.99874043464660645 
		0.27387541532516479 0.99987447261810303 0.99982792139053345 0.85523569583892822;
	setAttr -s 7 ".koy[1:6]"  -0.040918923914432526 0.050174843519926071 
		0.96176517009735107 0.015845628455281258 -0.018552215769886971 0.51823920011520386;
createNode animCurveTA -n "animCurveTA409";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 18 -2.3150038642762212 52 -2.3160709707928526 
		58 -7.5569242983181137 64 -19.54288064138245 90 -19.54288064138245 100 0;
	setAttr -s 7 ".kit[3:6]"  9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 1 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 1 0.99999737739562988 0.79936212301254272 
		0.99999642372131348 0.99998503923416138 0.69893044233322144;
	setAttr -s 7 ".kiy[0:6]"  0 -0.00010139827645616606 0.0022807205095887184 
		-0.60084962844848633 -0.0026723137125372887 0.0054732109420001507 0.71518963575363159;
	setAttr -s 7 ".kox[1:6]"  1 0.99999737739562988 0.79936212301254272 
		0.99999642372131348 0.99998503923416138 0.69893044233322144;
	setAttr -s 7 ".koy[1:6]"  -0.00010139831283595413 0.0022807242348790169 
		-0.60084962844848633 -0.0026722992770373821 0.0054732211865484715 0.71518963575363159;
createNode animCurveTA -n "animCurveTA410";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 18 6.8249366417476303 52 6.8538995884988392 
		58 18.212366746087035 64 44.189450628586677 90 44.189450628586677 100 0;
	setAttr -s 7 ".kit[3:6]"  9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 1 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99999994039535522 0.99989539384841919 
		0.52314656972885132 0.99972045421600342 0.99932420253753662 0.39672982692718506;
	setAttr -s 7 ".kiy[0:6]"  0 0.00029891706071794033 0.014464305713772774 
		0.85224276781082153 0.023644682019948959 -0.036757130175828934 -0.91793543100357056;
	setAttr -s 7 ".kox[1:6]"  0.99999994039535522 0.99989539384841919 
		0.52314656972885132 0.99972045421600342 0.99932420253753662 0.39672982692718506;
	setAttr -s 7 ".koy[1:6]"  0.00029892023303546011 0.014464297331869602 
		0.85224276781082153 0.023644696921110153 -0.036757122725248337 -0.91793543100357056;
createNode animCurveTA -n "animCurveTA411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.423754966968488 50 10.423754966968488 
		62 7.7345395887176229 88 7.7345395887176229 100 10.423754966968488;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99974220991134644 0.99931418895721436 
		0.99931418895721436 0.99318605661392212;
	setAttr -s 5 ".kiy[0:4]"  0 -0.022704949602484703 -0.037029057741165161 
		0.037029057741165161 0.11653962731361389;
	setAttr -s 5 ".kox[1:4]"  0.99318605661392212 0.99931418895721436 
		0.99931418895721436 0.99318605661392212;
	setAttr -s 5 ".koy[1:4]"  -0.11653962731361389 -0.037029057741165161 
		0.037029057741165161 0.11653962731361389;
createNode animCurveTA -n "animCurveTA412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.7228482558439 50 27.722848255843903 
		62 39.353337765044174 88 39.353337765044174 100 27.7228482558439;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99521094560623169 0.98740124702453613 
		0.98740124702453613 0.89174467325210571;
	setAttr -s 5 ".kiy[0:4]"  0 0.097750745713710785 0.15823651850223541 
		-0.15823651850223541 -0.45253893733024597;
	setAttr -s 5 ".kox[1:4]"  0.89174467325210571 0.98740124702453613 
		0.98740124702453613 0.89174467325210571;
	setAttr -s 5 ".koy[1:4]"  0.45253893733024597 0.15823651850223541 
		-0.15823651850223541 -0.45253893733024597;
createNode animCurveTA -n "animCurveTA413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 21.576484776388224 50 21.576484776388227 
		62 20.998878908074921 88 20.998878908074921 100 21.576484776388224;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99998807907104492 0.99996834993362427 
		0.99996834993362427 0.99968254566192627;
	setAttr -s 5 ".kiy[0:4]"  0 -0.004877905361354351 -0.0079585295170545578 
		0.0079585295170545578 0.025194814428687096;
	setAttr -s 5 ".kox[1:4]"  0.99968254566192627 0.99996834993362427 
		0.99996834993362427 0.99968254566192627;
	setAttr -s 5 ".koy[1:4]"  -0.025194814428687096 -0.0079585295170545578 
		0.0079585295170545578 0.025194814428687096;
createNode animCurveTA -n "animCurveTA414";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA415";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.080064458283051 50 27.080064458283051 
		62 84.997397908619021 88 84.997397908619021 100 27.080064458283051;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.89830237627029419 0.78161633014678955 
		0.78161633014678955 0.36794710159301758;
	setAttr -s 5 ".kiy[0:4]"  0 0.43937775492668152 0.62375950813293457 
		-0.62375950813293457 -0.92984670400619507;
	setAttr -s 5 ".kox[1:4]"  0.36794710159301758 0.78161633014678955 
		0.78161633014678955 0.36794710159301758;
	setAttr -s 5 ".koy[1:4]"  0.92984670400619507 0.62375950813293457 
		-0.62375950813293457 -0.92984670400619507;
createNode animCurveTA -n "animCurveTA417";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA418";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA419";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA420";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA421";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA422";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 88 13.994403295754109 
		100 13.994403295754109;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA423";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA424";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA425";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.994403295754109 88 13.994403295754109 
		100 13.994403295754109;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA426";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA427";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.911632519594587 50 27.911632519594587 
		62 68.872546074178004 88 68.872546074178004 100 27.911632519594587;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.94505417346954346 0.8708687424659729 
		0.8708687424659729 0.48828214406967163;
	setAttr -s 5 ".kiy[0:4]"  0 0.32691380381584167 0.49151566624641418 
		-0.49151566624641418 -0.87268584966659546;
	setAttr -s 5 ".kox[1:4]"  0.48828214406967163 0.8708687424659729 
		0.8708687424659729 0.48828214406967163;
	setAttr -s 5 ".koy[1:4]"  0.87268584966659546 0.49151566624641418 
		-0.49151566624641418 -0.87268584966659546;
createNode animCurveTA -n "animCurveTA429";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA430";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA431";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.6507300102495166 50 0 62 -0.66805894317438608 
		88 -0.66805894317438608 100 -0.6507300102495166;
	setAttr -s 5 ".kit[0:4]"  1 9 1 9 9;
	setAttr -s 5 ".kot[1:4]"  1 1 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 0.99998956918716431 1 0.99999970197677612;
	setAttr -s 5 ".kiy[0:4]"  0 -0.00014634529361501336 -0.0045666135847568512 
		0.00023877389321569353 0.00075611728243529797;
	setAttr -s 5 ".kox[1:4]"  0.99957543611526489 0.99998956918716431 
		1 0.99999970197677612;
	setAttr -s 5 ".koy[1:4]"  -0.029137197881937027 -0.0045666112564504147 
		0.00023877389321569353 0.00075611728243529797;
createNode animCurveTA -n "animCurveTA433";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -4.2368721935960929 88 0 100 
		-4.2368721935960929;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.98333770036697388;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.1817881166934967;
	setAttr -s 3 ".kox[1:2]"  1 0.98333770036697388;
	setAttr -s 3 ".koy[1:2]"  0 -0.1817881166934967;
createNode animCurveTA -n "animCurveTA434";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.7398866450636863 16 2.1311620370562814 
		50 2.4994142951933482 62 4.6654369392297834 88 4.6654369392297834 100 8.7398866450636863;
	setAttr -s 6 ".kit[3:5]"  9 1 9;
	setAttr -s 6 ".kot[0:5]"  9 1 1 9 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.9997633695602417 0.99981456995010376 
		0.99955493211746216 0.99969220161437988 0.98456186056137085;
	setAttr -s 6 ".kiy[0:5]"  0 0.021754279732704163 0.019255299121141434 
		0.029832158237695694 -0.024809474125504494 0.17503683269023895;
	setAttr -s 6 ".kox[1:5]"  0.9997633695602417 0.99981456995010376 
		0.99955493211746216 0.99969220161437988 0.98456186056137085;
	setAttr -s 6 ".koy[1:5]"  0.021754277870059013 0.019255297258496284 
		0.029832158237695694 -0.024809474125504494 0.17503683269023895;
createNode animCurveTA -n "animCurveTA435";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 14 26.948460617942192 48 34.835161049291642 
		60 -41.237003248289064 86 -41.237003248289064 100 0;
	setAttr -s 6 ".kit[5]"  9;
	setAttr -s 6 ".kot[0:5]"  9 1 1 1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.95619958639144897 0.99783271551132202 
		0.97779703140258789 0.99753439426422119 0.54404360055923462;
	setAttr -s 6 ".kiy[0:5]"  0 0.29271557927131653 -0.065801560878753662 
		-0.20955421030521393 0.070179015398025513 0.83905696868896484;
	setAttr -s 6 ".kox[1:5]"  0.9561995267868042 0.99783271551132202 
		0.97779703140258789 0.99753439426422119 0.54404360055923462;
	setAttr -s 6 ".koy[1:5]"  0.29271560907363892 -0.065801441669464111 
		-0.20955425500869751 0.070178993046283722 0.83905696868896484;
createNode animCurveTA -n "animCurveTA436";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 14 10.80960725653264 48 13.19123114343345 
		60 4.3085339042094519 86 4.3085339042094519 100 0;
	setAttr -s 6 ".kit[5]"  9;
	setAttr -s 6 ".kot[0:5]"  9 1 1 1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99780464172363281 0.99998325109481812 
		0.99988639354705811 0.99988764524459839 0.98726463317871094;
	setAttr -s 6 ".kiy[0:5]"  0 0.06622622162103653 0.0057839700020849705 
		-0.015072593465447426 -0.014991767704486847 -0.15908664464950562;
	setAttr -s 6 ".kox[1:5]"  0.99780464172363281 0.99998325109481812 
		0.99988639354705811 0.99988764524459839 0.98726463317871094;
	setAttr -s 6 ".koy[1:5]"  0.066226236522197723 0.0057839672081172466 
		-0.015072592534124851 -0.014991769567131996 -0.15908664464950562;
createNode animCurveTA -n "animCurveTA437";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -15.452965173287607 14 -21.546896188311798 
		48 -25.240571274691039 60 18.604454091883497 86 18.604454091883497 100 -15.452965173287607;
	setAttr -s 6 ".kit[5]"  9;
	setAttr -s 6 ".kot[0:5]"  9 1 1 1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.98883485794067383 0.99998337030410767 
		0.99904483556747437 0.99857568740844727 0.61751627922058105;
	setAttr -s 6 ".kiy[0:5]"  0 -0.14901542663574219 0.005766499787569046 
		0.043697115033864975 -0.053353570401668549 -0.78655809164047241;
	setAttr -s 6 ".kox[1:5]"  0.98883485794067383 0.99998337030410767 
		0.99904483556747437 0.99857568740844727 0.61751627922058105;
	setAttr -s 6 ".koy[1:5]"  -0.14901545643806458 0.0057665100321173668 
		0.043697100132703781 -0.053353574126958847 -0.78655809164047241;
createNode animCurveTA -n "animCurveTA438";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.8714700432790465 88 4.3285464911508695 
		100 4.8714700432790465;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99971950054168701;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.023682868108153343;
	setAttr -s 3 ".kox[1:2]"  1 0.99971950054168701;
	setAttr -s 3 ".koy[1:2]"  0 0.023682868108153343;
createNode animCurveTA -n "animCurveTA439";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 11.783606204137087 88 9.4788899331975607 
		100 11.783606204137087;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99498164653778076;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.10005757212638855;
	setAttr -s 3 ".kox[1:2]"  1 0.99498164653778076;
	setAttr -s 3 ".koy[1:2]"  0 0.10005757212638855;
createNode animCurveTA -n "animCurveTA440";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.5423825101935931 88 8.9234404188265088 
		100 7.5423825101935931;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99818927049636841;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.060150917619466782;
	setAttr -s 3 ".kox[1:2]"  1 0.99818927049636841;
	setAttr -s 3 ".koy[1:2]"  0 -0.060150917619466782;
createNode animCurveTA -n "animCurveTA441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.8903601258661931 50 0 62 -1.2564524909752091 
		88 -1.2564524909752091 100 -1.8903601258661931;
	setAttr -s 5 ".kit[0:4]"  1 9 1 9 9;
	setAttr -s 5 ".kot[1:4]"  1 1 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99998569488525391 0.99999898672103882 
		0.99996185302734375 0.99961769580841064;
	setAttr -s 5 ".kiy[0:4]"  0 0.0053533627651631832 -0.0014268377562984824 
		-0.0087342262268066406 -0.027648866176605225;
	setAttr -s 5 ".kox[1:4]"  0.99850058555603027 0.99999898672103882 
		0.99996185302734375 0.99961769580841064;
	setAttr -s 5 ".koy[1:4]"  -0.054740887135267258 -0.0014268415980041027 
		-0.0087342262268066406 -0.027648866176605225;
createNode animCurveTA -n "animCurveTA442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.5597289571479034 50 0 62 0.014135747974148143 
		88 0.014135747974148143 100 2.5597289571479034;
	setAttr -s 5 ".kit[0:4]"  1 9 1 9 9;
	setAttr -s 5 ".kot[1:4]"  1 1 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99976897239685059 1 0.99938541650772095 
		0.99388796091079712;
	setAttr -s 5 ".kiy[0:4]"  0 -0.021492930129170418 9.6627896709833294e-005 
		0.035053953528404236 0.11039359122514725;
	setAttr -s 5 ".kox[1:4]"  0.99999982118606567 1 0.99938541650772095 
		0.99388796091079712;
	setAttr -s 5 ".koy[1:4]"  0.00061678834026679397 9.6627860330045223e-005 
		0.035053953528404236 0.11039359122514725;
createNode animCurveTA -n "animCurveTA443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.0168110874036045 16 1.9514592358355098 
		50 2.2886599125868741 62 2.9799025690958914 88 2.9799025690958914 100 2.0168110874036045;
	setAttr -s 6 ".kit[0:5]"  1 1 9 9 1 9;
	setAttr -s 6 ".kot[1:5]"  1 9 9 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99979007244110107 0.99993151426315308 
		0.99995464086532593 0.99997270107269287 0.99911820888519287;
	setAttr -s 6 ".kiy[0:5]"  0 0.020490268245339394 0.011705539189279079 
		0.009524141438305378 -0.0073889940977096558 -0.041985742747783661;
	setAttr -s 6 ".kox[1:5]"  0.99979007244110107 0.99993151426315308 
		0.99995464086532593 0.99997270107269287 0.99911820888519287;
	setAttr -s 6 ".koy[1:5]"  0.020490264520049095 0.011705539189279079 
		0.009524141438305378 -0.0073889852501451969 -0.041985742747783661;
createNode animCurveTA -n "animCurveTA444";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA445";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 33.429092416277157 50 33.429092416277157 
		62 81.243579340495145 88 81.243579340495145 100 33.429092416277157;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.92725664377212524 0.83505761623382568 
		0.83505761623382568 0.4322306215763092;
	setAttr -s 5 ".kiy[0:4]"  0 0.37442633509635925 0.55016249418258667 
		-0.55016249418258667 -0.90176308155059814;
	setAttr -s 5 ".kox[1:4]"  0.4322306215763092 0.83505761623382568 
		0.83505761623382568 0.4322306215763092;
	setAttr -s 5 ".koy[1:4]"  0.90176308155059814 0.55016249418258667 
		-0.55016249418258667 -0.90176308155059814;
createNode animCurveTA -n "animCurveTA447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.2533422302317216 16 -17.674937457033032 
		50 -17.833301096478056 56 -3.1684042036287252 62 -16.194123631755591 88 -16.194123631755591 
		100 8.2533422302317216;
	setAttr -s 7 ".kit[0:6]"  1 1 9 9 9 9 9;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 1 0.98244422674179077 0.9974520206451416 
		0.97803282737731934 0.94767600297927856 0.68392223119735718;
	setAttr -s 7 ".kiy[0:6]"  0 0 0.18655641376972198 0.071340367197990417 
		-0.20845091342926025 0.31923371553421021 0.72955489158630371;
	setAttr -s 7 ".kox[1:6]"  1 0.98244422674179077 0.9974520206451416 
		0.97803282737731934 0.94767600297927856 0.68392223119735718;
	setAttr -s 7 ".koy[1:6]"  0 0.18655641376972198 0.071340367197990417 
		-0.20845091342926025 0.31923371553421021 0.72955489158630371;
createNode animCurveTA -n "animCurveTA448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 23.263402056531085 16 17.664712222410962 
		50 17.481736682944508 56 25.523866905864168 62 21.688734331238155 88 21.688734331238155 
		100 23.263402056531085;
	setAttr -s 7 ".kit[0:6]"  1 1 9 9 9 9 9;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99998211860656738 0.99474990367889404 
		0.98356610536575317 0.99803686141967773 0.99976468086242676 0.99764794111251831;
	setAttr -s 7 ".kiy[0:6]"  0 -0.0059803090989589691 0.10233598947525024 
		0.18054822087287903 -0.06262902170419693 0.021692108362913132 0.068546250462532043;
	setAttr -s 7 ".kox[1:6]"  0.99998211860656738 0.99474990367889404 
		0.98356610536575317 0.99803686141967773 0.99976468086242676 0.99764794111251831;
	setAttr -s 7 ".koy[1:6]"  -0.0059803086332976818 0.10233598947525024 
		0.18054822087287903 -0.06262902170419693 0.021692108362913132 0.068546250462532043;
createNode animCurveTA -n "animCurveTA449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 20.166277752815617 16 -46.519150406160207 
		50 -48.949826619877371 56 21.836260885383837 62 23.47825627143548 88 23.47825627143548 
		100 20.166277752815617;
	setAttr -s 7 ".kit[0:6]"  1 1 9 9 9 9 9;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99552017450332642 0.74522894620895386 
		0.30168533325195313 0.99963927268981934 0.99896031618118286 0.98971885442733765;
	setAttr -s 7 ".kiy[0:6]"  0 -0.094549313187599182 0.66680866479873657 
		0.95340752601623535 0.026857394725084305 -0.045588027685880661 -0.14302659034729004;
	setAttr -s 7 ".kox[1:6]"  0.99552017450332642 0.74522894620895386 
		0.30168533325195313 0.99963927268981934 0.99896031618118286 0.98971885442733765;
	setAttr -s 7 ".koy[1:6]"  -0.09454934298992157 0.66680866479873657 
		0.95340752601623535 0.026857394725084305 -0.045588027685880661 -0.14302659034729004;
createNode animCurveTA -n "animCurveTA450";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA451";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.254116939558369 50 17.254116939558369 
		62 68.118796800669443 88 68.118796800669443 100 17.254116939558369;
	setAttr -s 5 ".kit[0:4]"  1 9 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.91881603002548218 0.81890088319778442 
		0.81890088319778442 0.41079995036125183;
	setAttr -s 5 ".kiy[0:4]"  0 0.39468610286712646 0.57393497228622437 
		-0.57393497228622437 -0.91172552108764648;
	setAttr -s 5 ".kox[1:4]"  0.41079995036125183 0.81890088319778442 
		0.81890088319778442 0.41079995036125183;
	setAttr -s 5 ".koy[1:4]"  0.91172552108764648 0.57393497228622437 
		-0.57393497228622437 -0.91172552108764648;
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
	setAttr ".o" 1;
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
connectAttr "apu_thinkingSource.st" "clipLibrary2.st[0]";
connectAttr "apu_thinkingSource.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL122.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL123.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary2.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL125.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary2.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA340.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "apu_Hoop_Root_IK_FK_RFoot.a" "clipLibrary2.cel[0].cev[6].cevr"
		;
connectAttr "apu_Hoop_Root_IK_FK_LFoot.a" "clipLibrary2.cel[0].cev[7].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary2.cel[0].cev[8].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary2.cel[0].cev[9].cevr"
		;
connectAttr "animCurveTU29.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU30.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU31.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU32.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA341.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA342.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA343.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL127.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL128.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL129.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL130.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL131.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL132.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA344.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA345.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA346.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL133.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL134.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL135.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA347.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA348.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA349.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA350.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA351.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA352.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA353.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA354.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA355.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTL136.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTL137.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTL138.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTL139.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTL140.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTL141.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL142.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL143.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL144.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTA356.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTA357.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTA358.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTA359.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTA360.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTA361.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA362.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA363.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA364.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA365.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA366.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA367.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA368.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA369.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA370.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA371.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA372.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA373.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA374.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA375.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA376.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA377.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA378.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA379.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA380.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA381.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA382.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA383.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA384.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTL145.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTL146.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTL147.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA385.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA386.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA387.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL148.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL149.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL150.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA388.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA389.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA390.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL151.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL152.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL153.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA391.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA392.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA393.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL154.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL155.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL156.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA394.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA395.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA396.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL157.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL158.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL159.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTL160.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTL161.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTL162.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTA397.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTA398.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTA399.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTA400.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTA401.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTA402.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA403.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA404.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA405.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA406.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA407.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA408.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA409.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA410.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA411.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA412.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA413.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA414.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA415.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA416.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA417.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA418.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA419.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA420.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA421.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA422.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA423.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA424.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA425.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA426.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA427.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA428.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA429.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA430.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA431.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA432.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA433.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA434.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA435.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA436.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA437.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA438.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA439.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA440.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA441.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA442.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA443.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA444.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA445.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA446.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA447.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA448.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA449.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA450.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA451.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA452.a" "clipLibrary2.cel[0].cev[161].cevr";
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
// End of apu_thinking.ma
