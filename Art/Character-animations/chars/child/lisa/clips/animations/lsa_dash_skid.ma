//Maya ASCII 4.0 scene
//Name: lsa_dash_skid.ma
//Last modified: Fri, Oct 11, 2002 02:54:21 PM
requires maya "4.0";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_dash_skidSource";
	setAttr ".ihi" 0;
	setAttr ".du" 26;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL715";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL716";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 0.0086663411930203438 1;
	setAttr -s 3 ".koy[0:2]"  0 -0.9999624490737915 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0.013223370898418536 1 0.013291804021590295 
		2 0.013428670267933811 3 0.01353131995269145 4 0.01349710339110557 5 0.013223370898418536 
		6 0.012907059958129692 7 0.012676901313599599 8 0.012327935169862428 9 0.011655201731952365 
		10 0.010453741204903593 11 0.0085185937937502874 12 0.0056005633308581926 
		13 0.0018137784073852436 14 -0.0025017336334460794 15 -0.0070059454484133008 
		16 -0.011358829694293932 17 -0.015220359027865487 18 -0.018580755659720335 
		19 -0.021619418824002201 20 -0.024280086712815677 21 -0.026506497518265362 
		22 -0.028469811801841438 23 -0.030272951050162082 24 -0.031757294843023899 
		25 -0.032764222760223491 26 -0.033135114381557439;
createNode animCurveTL -n "animCurveTL718";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 3.592587962848778 1 3.7153816157184156 
		2 3.8406474773623467 3 3.9646772409234008 4 4.0837625995444045 5 4.1941952463681922 
		6 4.2982979726648152 7 4.3997629363537891 8 4.4969358805521322 9 4.5881625483768644 
		10 4.6717886829450048 11 4.7461600273735698 12 4.8127670398089082 13 4.873231217718609 
		14 4.9260948632015555 15 4.9699002783566311 16 5.0031897652827189 17 5.0245056260787031 
		18 5.0366163284428396 19 5.0423643011793926 20 5.0404028434549808 21 5.0293852544362272 
		22 5.0137099974620725 23 4.9985314213015082 24 4.9836366631643614 25 4.9688128602604573 
		26 4.9538471497996257;
createNode animCurveTA -n "animCurveTA2047";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0;
createNode animCurveTU -n "animCurveTU145";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "animCurveTU146";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "animCurveTU147";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "animCurveTU148";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "animCurveTU149";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 11 1 17 0 26 0;
	setAttr -s 4 ".kit[2:3]"  1 3;
	setAttr -s 4 ".kot[0:3]"  1 1 9 3;
	setAttr -s 4 ".kix[2:3]"  0.1961161345243454 1;
	setAttr -s 4 ".kiy[2:3]"  -0.98058068752288818 0;
	setAttr -s 4 ".kox[0:3]"  1 1 0.44721359014511108 1;
	setAttr -s 4 ".koy[0:3]"  0 0 -0.89442718029022217 0;
createNode animCurveTU -n "animCurveTU150";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 11 1 17 0 26 0;
	setAttr -s 4 ".kit[2:3]"  1 3;
	setAttr -s 4 ".kot[0:3]"  1 1 9 3;
	setAttr -s 4 ".kix[2:3]"  0.1961161345243454 1;
	setAttr -s 4 ".kiy[2:3]"  -0.98058068752288818 0;
	setAttr -s 4 ".kox[0:3]"  1 1 0.44721359014511108 1;
	setAttr -s 4 ".koy[0:3]"  0 0 -0.89442718029022217 0;
createNode animCurveTU -n "animCurveTU151";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 11 0 17 1 26 1;
	setAttr -s 4 ".kit[2:3]"  1 3;
	setAttr -s 4 ".kot[0:3]"  1 1 9 3;
	setAttr -s 4 ".kix[2:3]"  0.1961161345243454 1;
	setAttr -s 4 ".kiy[2:3]"  0.98058068752288818 0;
	setAttr -s 4 ".kox[0:3]"  1 1 0.44721359014511108 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0.89442718029022217 0;
createNode animCurveTU -n "animCurveTU152";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 11 0 17 1 26 1;
	setAttr -s 4 ".kit[2:3]"  1 3;
	setAttr -s 4 ".kot[0:3]"  1 1 9 3;
	setAttr -s 4 ".kix[2:3]"  0.1961161345243454 1;
	setAttr -s 4 ".kiy[2:3]"  0.98058068752288818 0;
	setAttr -s 4 ".kox[0:3]"  1 1 0.44721359014511108 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0.89442718029022217 0;
createNode animCurveTA -n "animCurveTA2048";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2049";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2050";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL720";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL721";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL722";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL723";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.19763288944005308 5 -0.19763288944005308 
		11 -0.265 17 -0.265 26 -0.26454016861507795;
	setAttr -s 5 ".kot[0:4]"  1 3 3 3 3;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL724";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.38578974362230084 5 0.13898573436302003 
		11 0.13898573436302003 17 0.13904765463025145 26 0.13806192026723146;
	setAttr -s 5 ".kit[1:4]"  1 3 9 3;
	setAttr -s 5 ".kot[0:4]"  1 1 3 9 3;
	setAttr -s 5 ".kix[1:4]"  0.34121251106262207 1 0.9833562970161438 
		1;
	setAttr -s 5 ".kiy[1:4]"  -0.93998616933822632 0 -0.18168768286705017 
		0;
	setAttr -s 5 ".kox[0:4]"  1 0.34121257066726685 1 0.9833562970161438 
		1;
	setAttr -s 5 ".koy[0:4]"  0 -0.93998616933822632 0 -0.18168768286705017 
		0;
createNode animCurveTL -n "animCurveTL725";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 7.8949240517087116 5 9.5914777493632855 
		11 11.368 17 11.368 26 11.368131926777954;
	setAttr -s 5 ".kit[2:4]"  3 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 3 9 9;
	setAttr -s 5 ".kox[0:4]"  0.00098238326609134674 0.0010557398200035095 
		1 0.99965208768844604 0.99903446435928345;
	setAttr -s 5 ".koy[0:4]"  0.9999995231628418 0.99999946355819702 
		0 0.026376176625490189 0.04393313080072403;
createNode animCurveTA -n "animCurveTA2051";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 68.750149689121017 5 0.30266401925948871 
		11 0.0028357814165884052 17 0 26 0;
	setAttr -s 5 ".kit[3:4]"  9 3;
	setAttr -s 5 ".kot[0:4]"  1 3 3 9 3;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 -9.8987446108367294e-005 
		0;
createNode animCurveTA -n "animCurveTA2052";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 -9.4308912150219033 11 -24.544498931403165 
		17 -25.948901905116401 26 -13.717778871715204;
	setAttr -s 5 ".kit[1:4]"  9 1 3 3;
	setAttr -s 5 ".kot[0:4]"  1 9 1 3 3;
	setAttr -s 5 ".kix[2:4]"  0.9351116418838501 1 1;
	setAttr -s 5 ".kiy[2:4]"  -0.35435321927070618 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.65026146173477173 0.93511158227920532 
		1 1;
	setAttr -s 5 ".koy[0:4]"  0 -0.75971049070358276 -0.35435336828231812 
		0 0;
createNode animCurveTA -n "animCurveTA2053";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL726";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.19697756422115981 5 0.19697756422115981 
		11 0.21391660883027969 17 0.21594587158542247 26 0.21594587158542247;
	setAttr -s 5 ".kit[2:4]"  1 3 3;
	setAttr -s 5 ".kot[0:4]"  1 3 1 3 3;
	setAttr -s 5 ".kix[2:4]"  0.31432661414146423 1 1;
	setAttr -s 5 ".kiy[2:4]"  0.94931489229202271 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 0.31432878971099854 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0.9493141770362854 0 0;
createNode animCurveTL -n "animCurveTL727";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.13365374198757368 5 0.27763271132006667 
		11 0.13963077663286022 17 0.13963077663286022 26 0.1380615615975922;
	setAttr -s 5 ".kit[1:4]"  9 3 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 3 9 3;
	setAttr -s 5 ".kox[0:4]"  1 0.52290648221969604 1 0.95411443710327148 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0.85239005088806152 0 -0.29944214224815369 
		0;
createNode animCurveTL -n "animCurveTL728";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.1482643917438846 5 9.6213166819847995 
		11 11.434 17 11.434 26 11.433820636001006;
	setAttr -s 5 ".kit[2:4]"  3 9 9;
	setAttr -s 5 ".kot[0:4]"  1 9 3 9 9;
	setAttr -s 5 ".kox[0:4]"  0.0011314369039610028 0.0011159341083839536 
		1 0.99935716390609741 0.99821746349334717;
	setAttr -s 5 ".koy[0:4]"  0.99999934434890747 0.99999940395355225 
		0 -0.035849738866090775 -0.059681423008441925;
createNode animCurveTA -n "animCurveTA2054";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 77.194699757699198 11 0 17 
		0 26 0;
	setAttr -s 5 ".kit[1:4]"  9 3 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 3 9 3;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2055";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2056";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2057";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2058";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2059";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2060";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2061";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2062";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2063";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2064";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2065";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2066";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2067";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2068";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL729";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL730";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL731";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 17 1 26 1;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL732";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL733";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL734";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 17 1 26 1;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL735";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.03051835782609956 5 0.03051835782609956 
		11 0.019660152889151288 17 -0.035127227892371694 21 -0.06117462651492199 
		26 -0.076472881617957691;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 3;
	setAttr -s 6 ".kox[0:5]"  1 0.31993705034255981 0.060820464044809341 
		0.041201356798410416 0.072368763387203217 1;
	setAttr -s 6 ".koy[0:5]"  0 -0.94743877649307251 -0.99814873933792114 
		-0.99915087223052979 -0.99737793207168579 0;
createNode animCurveTL -n "animCurveTL736";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.85634497663915499 5 0.87580142571340613 
		11 0.80155073784893016 17 0.77595666885568149 21 0.86311471154718467 26 0.96147551361829786;
	setAttr -s 6 ".kit[0:5]"  3 9 1 9 9 3;
	setAttr -s 6 ".kot[0:5]"  1 9 1 9 9 3;
	setAttr -s 6 ".kix[2:5]"  0.023345001041889191 0.054065030068159103 
		0.016168750822544098 1;
	setAttr -s 6 ".kiy[2:5]"  -0.99972748756408691 0.99853742122650146 
		0.99986928701400757 0;
	setAttr -s 6 ".kox[0:5]"  1 0.066767685115337372 0.023345088586211205 
		0.054065030068159103 0.016168750822544098 1;
	setAttr -s 6 ".koy[0:5]"  0 -0.99776852130889893 -0.99972748756408691 
		0.99853742122650146 0.99986928701400757 0;
createNode animCurveTL -n "animCurveTL737";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.2913718305420581 5 9.6798276554806897 
		11 10.953713022799654 17 11.596109779712759 21 11.607371525709091 26 11.433036333531971;
	setAttr -s 6 ".kit[3:5]"  1 1 9;
	setAttr -s 6 ".kot[0:5]"  1 9 9 1 1 9;
	setAttr -s 6 ".kix[3:5]"  0.0097300074994564056 0.0090296287089586258 
		0.0095596918836236;
	setAttr -s 6 ".kiy[3:5]"  0.99995267391204834 -0.99995923042297363 
		-0.99995428323745728;
	setAttr -s 6 ".kox[0:5]"  0.0012003735173493624 0.0013772326055914164 
		0.0020873707253485918 0.0097299953922629356 0.009029630571603775 0.0095596918836236;
	setAttr -s 6 ".koy[0:5]"  0.9999992847442627 0.99999904632568359 
		0.99999779462814331 0.99995267391204834 -0.99995923042297363 -0.99995428323745728;
createNode animCurveTA -n "animCurveTA2069";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 40.92583813237421 5 -19.052632504459879 
		11 -37.303343321821266 17 27.356941175969908 21 34.542567116508373 26 -0.62843630316474508;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 3;
	setAttr -s 6 ".kox[0:5]"  1 0.25936046242713928 0.44278037548065186 
		0.25690507888793945 0.52336764335632324 1;
	setAttr -s 6 ".koy[0:5]"  0 -0.96578061580657959 0.89663010835647583 
		0.96643662452697754 -0.85210698843002319 0;
createNode animCurveTA -n "animCurveTA2070";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 11 -6.8119923368400155 
		17 -1.3336767971708379 21 -7.1589407526995954 26 -5.8284402688137167;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 3;
	setAttr -s 6 ".kox[0:5]"  1 0.95124351978302002 0.99831110239028931 
		0.99983501434326172 0.96746939420700073 1;
	setAttr -s 6 ".koy[0:5]"  0 -0.30844077467918396 -0.058094348758459091 
		-0.018163179978728294 -0.25298815965652466 0;
createNode animCurveTA -n "animCurveTA2071";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0 11 -1.3708009580244251 
		17 2.397105334169336 21 -0.09307802204366579 26 -1.295636019309746;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 3;
	setAttr -s 6 ".kox[0:5]"  1 0.99787801504135132 0.99457460641860962 
		0.99776959419250488 0.97769224643707275 1;
	setAttr -s 6 ".koy[0:5]"  0 -0.065111510455608368 0.10402598977088928 
		0.066752195358276367 -0.21004250645637512 0;
createNode animCurveTA -n "animCurveTA2072";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2073";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2074";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.0984482521620249 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  0.9921267032623291 1;
	setAttr -s 3 ".kiy[1:2]"  -0.12523804605007172 0;
	setAttr -s 3 ".kox[0:2]"  1 0.99661117792129517 1;
	setAttr -s 3 ".koy[0:2]"  0 -0.08225654810667038 0;
createNode animCurveTA -n "animCurveTA2075";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 18.588300303494186 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  0.86783546209335327 1;
	setAttr -s 3 ".kiy[1:2]"  -0.49685168266296387 0;
	setAttr -s 3 ".kox[0:2]"  1 0.93653255701065063 1;
	setAttr -s 3 ".koy[0:2]"  0 -0.35058057308197021 0;
createNode animCurveTA -n "animCurveTA2076";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2077";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2078";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -22.686733334985114 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  0.81971311569213867 1;
	setAttr -s 3 ".kiy[1:2]"  0.57277435064315796 0;
	setAttr -s 3 ".kox[0:2]"  1 0.90956664085388184 1;
	setAttr -s 3 ".koy[0:2]"  0 0.41555812954902649 0;
createNode animCurveTA -n "animCurveTA2079";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2080";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2081";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.0579251312417479e-005 17 0 
		26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2082";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2083";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2084";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.0984482535121209 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  0.9921267032623291 1;
	setAttr -s 3 ".kiy[1:2]"  -0.12523804605007172 0;
	setAttr -s 3 ".kox[0:2]"  1 0.99661117792129517 1;
	setAttr -s 3 ".koy[0:2]"  0 -0.08225654810667038 0;
createNode animCurveTA -n "animCurveTA2085";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 18.588300300216805 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  0.86783546209335327 1;
	setAttr -s 3 ".kiy[1:2]"  -0.49685168266296387 0;
	setAttr -s 3 ".kox[0:2]"  1 0.93653255701065063 1;
	setAttr -s 3 ".koy[0:2]"  0 -0.35058057308197021 0;
createNode animCurveTA -n "animCurveTA2086";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2087";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2088";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -22.686733333057838 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  0.81971311569213867 1;
	setAttr -s 3 ".kiy[1:2]"  0.57277435064315796 0;
	setAttr -s 3 ".kox[0:2]"  1 0.90956664085388184 1;
	setAttr -s 3 ".koy[0:2]"  0 0.41555812954902649 0;
createNode animCurveTA -n "animCurveTA2089";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2090";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2091";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.0579251312417479e-005 17 0 
		26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2092";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2093";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2094";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2095";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2096";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2097";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL738";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.99632412003841098 26 -0.43524234076486068;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL739";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 -0.82665738350180629;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL740";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.055643269750833751 26 0.27773886459742925;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2098";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2099";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 28.652637602052774;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2100";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 64.676908227303443;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL741";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.99632500444243621 26 0.5198069948790518;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL742";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 -0.72394202659893114;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL743";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.055643118286704089 26 0.36439499068905612;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2101";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 7.7976222737965317;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2102";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 -30.409274105849079;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA2103";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 -64.859940280210893;
	setAttr -s 2 ".kot[0:1]"  1 3;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL744";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.98071836797454492 17 -0.74928297019494983 
		21 -0.87726312271285023 26 -0.97384023505055983;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  1 9 9 3;
	setAttr -s 4 ".kox[0:3]"  1 0.067507751286029816 0.013358429074287415 
		1;
	setAttr -s 4 ".koy[0:3]"  0 0.99771875143051147 -0.99991077184677124 
		0;
createNode animCurveTL -n "animCurveTL745";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.6432964864655397 17 0.95442222204840943 
		21 0.86311242578798575 26 1.2525965505547216;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  1 9 9 3;
	setAttr -s 4 ".kox[0:3]"  1 0.0089718811213970184 0.010060719214379787 
		1;
	setAttr -s 4 ".koy[0:3]"  0 -0.99995976686477661 0.99994939565658569 
		0;
createNode animCurveTL -n "animCurveTL746";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 18.44400685050341 17 17.925024620835774 
		21 17.430079126301631 26 16.644001981927435;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 0.006903680507093668 0.0023418725468218327 
		0.0021202284842729568;
	setAttr -s 4 ".koy[0:3]"  0 -0.99997615814208984 -0.99999725818634033 
		-0.99999773502349854;
createNode animCurveTA -n "animCurveTA2104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 5.4739599453216465 17 -23.215155221440387 
		21 -11.25151871842851 26 -12.222987645962956;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  1 9 9 3;
	setAttr -s 4 ".kox[0:3]"  1 0.92296075820922852 0.84246319532394409 
		1;
	setAttr -s 4 ".koy[0:3]"  0 -0.38489401340484619 0.53875386714935303 
		0;
createNode animCurveTA -n "animCurveTA2105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.587452160841984 17 61.150033373848167 
		21 39.230932291881267 26 -19.681044208515029;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  1 9 9 3;
	setAttr -s 4 ".kox[0:3]"  1 0.79461216926574707 0.20799919962882996 
		1;
	setAttr -s 4 ".koy[0:3]"  0 0.60711735486984253 -0.97812896966934204 
		0;
createNode animCurveTA -n "animCurveTA2106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 74.754744621954103 17 21.965069321055285 
		21 43.978870818275098 26 65.119655550709012;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  1 9 9 3;
	setAttr -s 4 ".kox[0:3]"  1 0.7933470606803894 0.37003365159034729 
		1;
	setAttr -s 4 ".koy[0:3]"  0 -0.60876959562301636 0.92901837825775146 
		0;
createNode animCurveTL -n "animCurveTL747";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.76309120872911718 17 0.71930018060022094 
		21 0.63440820579499735 26 0.75854111686822778;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  1 9 9 3;
	setAttr -s 4 ".kox[0:3]"  1 0.054316937923431396 0.076228335499763489 
		1;
	setAttr -s 4 ".koy[0:3]"  0 -0.9985237717628479 0.99709039926528931 
		0;
createNode animCurveTL -n "animCurveTL748";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.6150490657878991 17 0.88197427905318182 
		21 0.82722211212272101 26 1.1932952672205326;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  1 9 9 3;
	setAttr -s 4 ".kox[0:3]"  1 0.008884849026799202 0.0096359085291624069 
		1;
	setAttr -s 4 ".koy[0:3]"  0 -0.99996054172515869 0.99995356798171997 
		0;
createNode animCurveTL -n "animCurveTL749";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 18.685144500819998 17 17.720206675521805 
		21 17.530404784962919 26 16.885139632244023;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kox[0:3]"  1 0.0060618608258664608 0.0035925027914345264 
		0.0025829093065112829;
	setAttr -s 4 ".koy[0:3]"  0 -0.99998164176940918 -0.99999356269836426 
		-0.99999666213989258;
createNode animCurveTA -n "animCurveTA2107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 16.226511010665419 17 29.692924059912436 
		21 24.077300511255238 26 -5.7993291745893361;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  1 9 9 3;
	setAttr -s 4 ".kox[0:3]"  1 0.98137533664703369 0.43587040901184082 
		1;
	setAttr -s 4 ".koy[0:3]"  0 0.19210019707679749 -0.90000945329666138 
		0;
createNode animCurveTA -n "animCurveTA2108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -8.5139660854992876 17 -43.992679725815719 
		21 -29.197715464284588 26 -1.2282640104712745;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  1 9 9 3;
	setAttr -s 4 ".kox[0:3]"  1 0.88877105712890625 0.3729420006275177 
		1;
	setAttr -s 4 ".koy[0:3]"  0 -0.45835137367248535 0.92785465717315674 
		0;
createNode animCurveTA -n "animCurveTA2109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -68.213989601412422 17 -86.792833269625262 
		21 -79.045277062304677 26 -60.456694896838378;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  1 9 9 3;
	setAttr -s 4 ".kox[0:3]"  1 0.96541464328765869 0.54655754566192627 
		1;
	setAttr -s 4 ".koy[0:3]"  0 -0.26071935892105103 0.83742153644561768 
		0;
createNode animCurveTL -n "animCurveTL750";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0.23460570977805109 26 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL751";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 -1.6762431933535973 26 0;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL752";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 17 -1.0785826799401677 26 
		-1;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL753";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.10167917362943303 17 -0.13039089605054222 
		26 -0.10167917362943303;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL754";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.40762644910266188 17 -1.0837274221759037 
		26 -0.40762644910266188;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "animCurveTL755";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.93129112588482243 17 -0.80618040863792262 
		26 -0.93129112588482243;
	setAttr -s 3 ".kit[1:2]"  9 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -61.548597514581118 5 6.5222453545706891 
		11 -29.318709219068381 17 12.253734489678918 26 12.253734489678925;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 0.54606640338897705 0.97012346982955933 
		0.56742739677429199 1;
	setAttr -s 5 ".koy[0:4]"  0 0.8377419114112854 0.24261176586151123 
		0.82342344522476196 0;
createNode animCurveTA -n "animCurveTA2111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -19.836142380516254 5 -11.270701110865538 
		11 0.2591761412191334 17 -65.746751280844961 26 -65.746751280844975;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 0.7226371169090271 0.38778427243232727 
		0.39813762903213501 1;
	setAttr -s 5 ".koy[0:4]"  0 0.69122761487960815 -0.92175012826919556 
		-0.91732567548751831 0;
createNode animCurveTA -n "animCurveTA2112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 54.297189229305751 5 -43.024026870863949 
		11 -52.267096591786228 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 0.19342058897018433 0.47014358639717102 
		0.48064282536506653 1;
	setAttr -s 5 ".koy[0:4]"  0 -0.98111593723297119 0.88258993625640869 
		0.87691646814346313 0;
createNode animCurveTA -n "animCurveTA2113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 38.697579055586992 5 -26.845686876069546 
		11 -41.702520768547579 17 -0.061808866237340665 26 -0.061808866237340665;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 0.25281074643135071 0.65014845132827759 
		0.56679612398147583 1;
	setAttr -s 5 ".koy[0:4]"  0 -0.96751576662063599 0.75980716943740845 
		0.82385808229446411 0;
createNode animCurveTA -n "animCurveTA2114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -37.496909778286962 5 -2.6900261896817361 
		11 -5.6360269321212852 17 -59.058178941076754 26 -59.058178941076754;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 0.55048203468322754 0.37664151191711426 
		0.47259154915809631 1;
	setAttr -s 5 ".koy[0:4]"  0 0.83484703302383423 -0.92635911703109741 
		-0.88128161430358887 0;
createNode animCurveTA -n "animCurveTA2115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -75.695552325189681 5 45.29300271475654 
		11 21.122073063033287 17 16.57914742975785 26 16.57914742975785;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 0.21205511689186096 0.62381875514984131 
		0.9876587986946106 1;
	setAttr -s 5 ".koy[0:4]"  0 0.97725772857666016 -0.78156900405883789 
		-0.15662097930908203 0;
createNode animCurveTA -n "animCurveTA2116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 72.938873120018542 5 64.703387914621587 
		11 22.807758850356816 17 8.5572674112203657 26 8.5572674112203639;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 0.38650333881378174 0.37791857123374939 
		0.8953436017036438 1;
	setAttr -s 5 ".koy[0:4]"  0 -0.92228800058364868 -0.92583882808685303 
		-0.44537612795829773 0;
createNode animCurveTA -n "animCurveTA2117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 59.305463658789549 5 16.132257338928927 
		11 78.15412211170387 17 15.711328223519065 26 15.711328223519061;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 0.74433177709579468 0.99983137845993042 
		0.41699481010437012 1;
	setAttr -s 5 ".koy[0:4]"  0 0.66781002283096313 -0.018363399431109428 
		-0.90890884399414063 0;
createNode animCurveTA -n "animCurveTA2118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -17.955810303398234 5 -15.503254262547973 
		11 -12.849758238864569 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 0.97171127796173096 0.82828861474990845 
		0.91241896152496338 1;
	setAttr -s 5 ".koy[0:4]"  0 0.23617200553417206 0.56030172109603882 
		0.40925747156143188 0;
createNode animCurveTA -n "animCurveTA2119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.082003051124259 5 8.8433563691173394 
		11 7.3461064996816994 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 0.99162662029266357 0.93295466899871826 
		0.96865987777709961 1;
	setAttr -s 5 ".koy[0:4]"  0 -0.12913791835308075 -0.35999384522438049 
		-0.24839101731777191 0;
createNode animCurveTA -n "animCurveTA2120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.7201893288928654 5 -4.1402801121403421 
		11 -3.439298162041589 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 0.99814647436141968 0.98407095670700073 
		0.99287045001983643 1;
	setAttr -s 5 ".koy[0:4]"  0 0.060857266187667847 0.17777615785598755 
		0.11919822543859482 0;
createNode animCurveTA -n "animCurveTA2121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 20.127263792592359 5 20.531700085875865 
		11 17.390126284086964 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 0.99161911010742188 0.74482381343841553 
		0.85483032464981079 1;
	setAttr -s 5 ".koy[0:4]"  0 -0.12919551134109497 -0.66726118326187134 
		-0.51890760660171509 0;
createNode animCurveTA -n "animCurveTA2122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 11.615881410206432 5 10.18878668450802 
		11 8.4637449952978283 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 0.988930344581604 0.91376906633377075 
		0.95902138948440552 1;
	setAttr -s 5 ".koy[0:4]"  0 -0.14838044345378876 -0.4062340259552002 
		-0.28333368897438049 0;
createNode animCurveTA -n "animCurveTA2123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.3215928107553504 5 0.28208281983201922 
		11 0.23432397832006235 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 0.99999135732650757 0.99992424249649048 
		0.99996656179428101 1;
	setAttr -s 5 ".koy[0:4]"  0 -0.004153951071202755 -0.012307252734899521 
		-0.0081791765987873077 0;
createNode animCurveTA -n "animCurveTA2124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 137.05048270924209 5 138.74506461883382 
		11 138.74506461883382 17 138.20115159981481 26 10.423754966968485;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 0.99676263332366943 0.99971848726272583 
		0.21788738667964935 1;
	setAttr -s 5 ".koy[0:4]"  0 0.080400772392749786 -0.023726001381874084 
		-0.97597390413284302 0;
createNode animCurveTA -n "animCurveTA2125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 53.910048648242871 5 53.910048648242878 
		11 53.910048648242878 17 27.7228482558439 26 27.7228482558439;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 1 0.65857803821563721 0.73809492588043213 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 -0.75251245498657227 -0.67469686269760132 
		0;
createNode animCurveTA -n "animCurveTA2126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 43.127820754253506 5 43.127820754253513 
		11 43.127820754253513 17 21.576484776388227 26 21.576484776388224;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 1 0.72849881649017334 0.79912322759628296 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 -0.68504709005355835 -0.60116726160049438 
		0;
createNode animCurveTA -n "animCurveTA2127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 86.382238158606057 5 79.613939213760304 
		11 70.77971168444968 17 27.080064458283047 26 27.080064458283051;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 0.80281245708465576 0.39986294507980347 
		0.54825502634048462 1;
	setAttr -s 5 ".koy[0:4]"  0 -0.59623157978057861 -0.91657495498657227 
		-0.8363112211227417 0;
createNode animCurveTA -n "animCurveTA2130";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2131";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2132";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "animCurveTA2133";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 26.541511232508348 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  0.77422481775283813 1;
	setAttr -s 3 ".kiy[1:2]"  -0.63291066884994507 0;
	setAttr -s 3 ".kox[0:2]"  1 0.88192391395568848 1;
	setAttr -s 3 ".koy[0:2]"  0 -0.47139179706573486 0;
createNode animCurveTA -n "animCurveTA2134";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 41.530156331423342 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  0.61590522527694702 1;
	setAttr -s 3 ".kiy[1:2]"  -0.78782027959823608 0;
	setAttr -s 3 ".kox[0:2]"  1 0.76708143949508667 1;
	setAttr -s 3 ".koy[0:2]"  0 -0.64154970645904541 0;
createNode animCurveTA -n "animCurveTA2135";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 52.545459146006955 17 13.994403295754111 
		26 13.994403295754109;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  0.64417707920074463 1;
	setAttr -s 3 ".kiy[1:2]"  -0.76487636566162109 0;
	setAttr -s 3 ".kox[0:2]"  1 0.78989571332931519 1;
	setAttr -s 3 ".koy[0:2]"  0 -0.61324119567871094 0;
createNode animCurveTA -n "animCurveTA2136";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 37.39895318822164 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  0.65556657314300537 1;
	setAttr -s 3 ".kiy[1:2]"  -0.75513738393783569 0;
	setAttr -s 3 ".kox[0:2]"  1 0.79878842830657959 1;
	setAttr -s 3 ".koy[0:2]"  0 -0.60161203145980835 0;
createNode animCurveTA -n "animCurveTA2137";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 69.699093005590768 17 0 26 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  0.42225915193557739 1;
	setAttr -s 3 ".kiy[1:2]"  -0.90647518634796143 0;
	setAttr -s 3 ".kox[0:2]"  1 0.58024179935455322 1;
	setAttr -s 3 ".koy[0:2]"  0 -0.81444430351257324 0;
createNode animCurveTA -n "animCurveTA2138";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 37.87925340126155 17 13.994403295754111 
		26 13.994403295754109;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[0:2]"  1 9 3;
	setAttr -s 3 ".kix[1:2]"  0.80551350116729736 1;
	setAttr -s 3 ".kiy[1:2]"  -0.59257739782333374 0;
	setAttr -s 3 ".kox[0:2]"  1 0.90117013454437256 1;
	setAttr -s 3 ".koy[0:2]"  0 -0.43346554040908813 0;
createNode animCurveTA -n "animCurveTA2139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 95.284705327631698 5 90.754620314643489 
		11 80.550585000381275 17 27.91163251959459 26 27.911632519594587;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 0.81871521472930908 0.34261852502822876 
		0.47802543640136719 1;
	setAttr -s 5 ".koy[0:4]"  0 -0.57419979572296143 -0.93947458267211914 
		-0.87834596633911133 0;
createNode animCurveTA -n "animCurveTA2142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 -0.80444315775703867 11 -0.68921145621496227 
		17 -2.0909400436807926 21 -1.5248240557546424 26 -0.65073001024951671;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 3;
	setAttr -s 6 ".kox[0:5]"  1 0.9994623064994812 0.99842822551727295 
		0.99904423952102661 0.99650818109512329 1;
	setAttr -s 6 ".koy[0:5]"  0 -0.032788749784231186 -0.056045785546302795 
		-0.043710757046937943 0.083495445549488068 0;
createNode animCurveTA -n "animCurveTA2146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 -0.60472186283169338 11 -1.3344464943638261 
		17 -4.2319210453524185 21 -3.6133281879584058 26 -4.2368721935960938;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 3;
	setAttr -s 6 ".kox[0:5]"  1 0.99798870086669922 0.98770636320114136 
		0.99295628070831299 0.99999994039535522 1;
	setAttr -s 6 ".koy[0:5]"  0 -0.063391752541065216 -0.15632075071334839 
		-0.11848149448633194 -0.00028804613975808024 0;
createNode animCurveTA -n "animCurveTA2147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.98998735715740716 5 2.2124383659318805 
		11 -5.0186679783197166 17 26.041202151909953 21 39.848957946302498 26 2.6995264082587447;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 3;
	setAttr -s 6 ".kox[0:5]"  1 0.96144849061965942 0.6932036280632019 
		0.39165911078453064 0.59296655654907227 1;
	setAttr -s 6 ".koy[0:5]"  0 -0.27498516440391541 0.72074180841445923 
		0.92011040449142456 -0.80522710084915161 0;
createNode animCurveTA -n "animCurveTA2148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0.50986500056630668 11 0.87215714273867373 
		17 0.51796104952671496 21 2.359880013212853 26 -4.0198472869727979;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 3;
	setAttr -s 6 ".kox[0:5]"  1 0.99913936853408813 0.99999994039535522 
		0.99697977304458618 0.96687406301498413 1;
	setAttr -s 6 ".koy[0:5]"  0 0.041478853672742844 0.00035325676435604692 
		0.077661722898483276 -0.25525379180908203 0;
createNode animCurveTA -n "animCurveTA2152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 5 0.51774709160700405 11 2.477928535257151 
		17 12.727334526427551 21 11.01042138930752 26 -9.1335573833666519;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 3;
	setAttr -s 6 ".kox[0:5]"  1 0.99311572313308716 0.88256889581680298 
		0.91302508115768433 0.61809539794921875 1;
	setAttr -s 6 ".koy[0:5]"  0 0.1171371266245842 0.47018307447433472 
		0.40790337324142456 -0.78610312938690186 0;
createNode animCurveTA -n "animCurveTA2153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -19.490201297085612 5 -18.050704330054927 
		11 -23.781039275327831 17 -12.760842210164803 21 23.025252990452728 26 -2.2752136084709531;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 3;
	setAttr -s 6 ".kox[0:5]"  1 0.97977298498153687 0.97438168525695801 
		0.37779498100280762 0.85369253158569336 1;
	setAttr -s 6 ".koy[0:5]"  0 -0.20011217892169952 0.22490072250366211 
		0.92588925361633301 0.52077734470367432 0;
createNode animCurveTA -n "animCurveTA2154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 -0.28780339846407804 11 -0.32417139403198059 
		17 -1.8903601258661935 26 -1.8903601258661935;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 0.99988096952438354 0.99756419658660889 
		0.99850893020629883 1;
	setAttr -s 5 ".koy[0:4]"  0 -0.015428685583174229 -0.069754406809806824 
		-0.054588783532381058 0;
createNode animCurveTA -n "animCurveTA2155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0.26458471463537331 11 0.79616802841599899 
		17 2.5597289571479038 26 2.5597289571479038;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 0.99928265810012817 0.99502295255661011 
		0.99811053276062012 1;
	setAttr -s 5 ".koy[0:4]"  0 0.037870321422815323 0.099646128714084625 
		0.061443574726581573 0;
createNode animCurveTA -n "animCurveTA2156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.4398976982097267 5 -10.713314820003864 
		11 5.3226666611229376 17 2.0168110874036045 26 2.0168110874036049;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 0.98917019367218018 0.87419402599334717 
		0.99340760707855225 1;
	setAttr -s 5 ".koy[0:4]"  0 -0.14677292108535767 0.48557677865028381 
		-0.11463539302349091 0;
createNode animCurveTA -n "animCurveTA2157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 85.281921116584812 5 79.775929340324637 
		11 72.029582107124057 17 33.429092416277157 26 33.429092416277157;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 0.84578245878219604 0.4432620108127594 
		0.59596520662307739 1;
	setAttr -s 5 ".koy[0:4]"  0 -0.5335279107093811 -0.8963921070098877 
		-0.80301022529602051 0;
createNode animCurveTA -n "animCurveTA2160";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -131.6803432081642 4 -131.06259433908869 
		10 -131.06259433908869 16 -130.92237157864577 25 -139.02414703822734 26 8.2533422302317234;
	setAttr -s 6 ".kit[2:5]"  9 9 1 3;
	setAttr -s 6 ".kot[2:5]"  9 9 3 3;
	setAttr -s 6 ".kix[0:5]"  0.033333335071802139 0.99947905540466309 
		0.99998128414154053 0.96348488330841064 1 1;
	setAttr -s 6 ".kiy[0:5]"  0.0019723586738109589 0.032274302095174789 
		0.0061182575300335884 -0.267762690782547 0 0;
	setAttr -s 6 ".kox[0:5]"  0.13333334028720856 0.99947899580001831 
		0.99998128414154053 0.96348488330841064 1 1;
	setAttr -s 6 ".koy[0:5]"  0.007888156920671463 0.032276757061481476 
		0.0061182575300335884 -0.267762690782547 0 0;
createNode animCurveTA -n "animCurveTA2161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 38.578337509358107 5 38.578337509358107 
		11 38.578337509358107 17 23.263402056531085 26 23.263402056531085;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 1 0.83144599199295044 0.88189160823822021 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 -0.55560559034347534 -0.4714522659778595 
		0;
createNode animCurveTA -n "animCurveTA2162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 45.467643381850564 5 45.467643381850564 
		11 45.467643381850564 17 20.166277752815617 26 20.166277752815617;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 1 0.6713416576385498 0.74952864646911621 
		1;
	setAttr -s 5 ".koy[0:4]"  0 0 -0.74114799499511719 -0.66197192668914795 
		0;
createNode animCurveTA -n "animCurveTA2163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 5 0 11 0 17 0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA2165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 77.470348806333035 5 70.994338622177807 
		11 62.002918112729986 17 17.254116939558365 26 17.254116939558369;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  1 9 9 9 3;
	setAttr -s 5 ".kox[0:4]"  1 0.80528426170349121 0.39228156208992004 
		0.5391693115234375 1;
	setAttr -s 5 ".koy[0:4]"  0 -0.59288895130157471 -0.91984516382217407 
		-0.84219741821289063 0;
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
	setAttr ".o" 26;
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
connectAttr "lsa_dash_skidSource.st" "clipLibrary1.st[0]";
connectAttr "lsa_dash_skidSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL715.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL716.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL718.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA2047.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU145.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU146.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU147.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU148.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU149.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU150.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU151.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU152.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA2048.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA2049.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA2050.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL720.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL721.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL722.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL723.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL724.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL725.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA2051.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA2052.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA2053.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL726.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL727.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL728.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA2054.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA2055.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA2056.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA2057.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA2058.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA2059.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA2060.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA2061.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA2062.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA2063.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA2064.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA2065.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA2066.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA2067.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA2068.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL729.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL730.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL731.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL732.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL733.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL734.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL735.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL736.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL737.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA2069.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA2070.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA2071.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA2072.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA2073.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA2074.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA2075.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA2076.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA2077.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA2078.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA2079.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA2080.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA2081.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA2082.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA2083.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA2084.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA2085.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA2086.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA2087.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA2088.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA2089.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA2090.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA2091.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA2092.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA2093.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA2094.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA2095.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA2096.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA2097.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL738.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL739.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL740.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA2098.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA2099.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA2100.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL741.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL742.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL743.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA2101.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA2102.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA2103.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL744.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL745.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL746.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA2104.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA2105.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA2106.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL747.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL748.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL749.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA2107.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA2108.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA2109.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL750.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL751.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL752.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL753.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL754.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL755.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA2110.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA2111.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA2112.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA2113.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA2114.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA2115.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA2116.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA2117.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA2118.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA2119.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA2120.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA2121.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA2122.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA2123.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA2124.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA2125.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA2126.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA2127.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA2128.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA2129.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA2130.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA2131.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA2132.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA2133.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA2134.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA2135.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA2136.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA2137.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA2138.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA2139.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA2140.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA2141.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA2142.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA2143.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA2144.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA2145.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA2146.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA2147.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA2148.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA2149.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA2150.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA2151.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA2152.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA2153.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA2154.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA2155.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA2156.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA2157.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA2158.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA2159.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA2160.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA2161.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA2162.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA2163.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA2164.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA2165.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of lsa_dash_skid.ma
