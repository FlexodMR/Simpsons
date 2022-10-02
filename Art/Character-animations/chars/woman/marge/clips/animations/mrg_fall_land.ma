//Maya ASCII 4.0 scene
//Name: mrg_fall_land.ma
//Last modified: Tue, Oct 01, 2002 05:14:29 PM
requires maya "4.0";
requires "p3dmayaexp" "18.5";
requires "p3dSimpleShader" "18.5";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_fall_landSource";
	setAttr ".ihi" 0;
	setAttr ".du" 19;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 0 12 0 15 0 19 0;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 0 12 0 15 0 19 0;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0.0084325970069750178 1 0.0084325970069750178 
		2 0.0084325970069750161 3 0.0084325970069750161 4 0.0084325970069750178 5 
		0.0084325970069750178 6 0.0084325970069750178 7 0.0084325970069750178 8 0.0084325970069750178 
		9 0.0084325970069750178 10 0.008744915411096307 11 0.0090572338152175979 
		12 0.0084325970069750178 13 0.0058894328348493641 14 0.0024093134290931319 
		15 0 16 -0.00067761939599832329 17 -0.00060232835199850972 18 -0.00022587313199944094 
		19 0;
createNode animCurveTL -n "animCurveTL382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0;
createNode animCurveTL -n "animCurveTL383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 -3.5584627557947801 1 -3.6721185050692622 
		2 -3.7564078310509159 3 -3.7791882724927817 4 -3.7758652248470344 5 -3.7596612157961902 
		6 -3.7360509416460368 7 -3.7040281102328918 8 -3.6670937665350647 9 -3.6287489555308667 
		10 -3.5774842842930541 11 -3.5216374195835369 12 -3.4944799959143547 13 -3.5200550462237987 
		14 -3.5743195376607213 15 -3.6184160060529997 16 -3.6394714009636706 17 -3.6533774046884373 
		18 -3.664423652154178 19 -3.6768997782877695;
createNode animCurveTA -n "animCurveTA1107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0;
createNode animCurveTU -n "animCurveTU57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 0 12 0 15 0 19 0;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTU -n "animCurveTU58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 0 12 0 15 0 19 0;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTU -n "animCurveTU59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 0 12 0 15 0 19 0;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTU -n "animCurveTU60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 0 12 0 15 0 19 0;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTU -n "animCurveTU61";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 1 15 0 19 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[2]"  9;
createNode animCurveTU -n "animCurveTU62";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 1 15 0 19 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[2]"  9;
createNode animCurveTU -n "animCurveTU63";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 1 19 1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[2]"  9;
createNode animCurveTU -n "animCurveTU64";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 1 19 1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[2]"  9;
createNode animCurveTA -n "animCurveTA1108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 0 12 0 15 0 19 0;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 0 12 0 15 0 19 0;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 0 12 0 15 0 19 0;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 1 1 1;
	setAttr -s 4 ".kiy[0:3]"  0 0 0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.030508388871712495 2 -0.032851228927927155 
		5 -0.032851228927927169 9 -0.032851228927927169 12 -0.032851228927927169 
		15 -0.097869444841495443 19 -0.097869444841495443;
createNode animCurveTL -n "animCurveTL388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.60256003309364281 2 0.11057862151416938 
		5 0.50301156629776511 9 1.0515093056725617 12 0.3266421452194011 15 0.095951083708606652 
		19 0.095951083708606652;
createNode animCurveTL -n "animCurveTL389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -3.5511682850524937 2 -3.885632434961916 
		5 -3.8544787466818287 9 -3.7058302347272161 12 -3.7192764307579935 15 -3.6289227329163514 
		19 -3.700201859504026;
createNode animCurveTA -n "animCurveTA1111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -41.481783679786055 2 -27.595959067019745 
		5 0.21801381617811239 9 -22.535152420394311 12 -22.535152420394311 15 -20.431608270131136 
		19 -3.3595522507325413;
createNode animCurveTA -n "animCurveTA1112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 -4.9396511688497009 
		19 -4.9396511688497009;
createNode animCurveTA -n "animCurveTA1113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 1.4972445100027123 
		19 1.4972445100027125;
createNode animCurveTL -n "animCurveTL390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.15726485462611536 2 0.186268946989182 
		5 0.186268946989182 9 0.186268946989182 12 0.186268946989182 15 0.18647005802231295 
		19 0.18647005802231295;
createNode animCurveTL -n "animCurveTL391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.10998080142545941 2 0.10002752283871692 
		5 0.49759003907481847 9 0.59351586017364899 12 0.25234618968282019 15 0.10138242431350594 
		19 0.10138242431350594;
createNode animCurveTL -n "animCurveTL392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -3.8902245056030518 2 -3.8387693434897603 
		5 -4.059012915863196 9 -3.9594384673360987 12 -3.9286118760635311 15 -3.6791677759950625 
		19 -3.7504469025827367;
createNode animCurveTA -n "animCurveTA1114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -22.179889021755908 2 -8.6693876291809158 
		5 5.6175156500276104 9 25.211350838126936 12 1.4415482405103193 15 -17.095029905043305 
		19 -0.022973885644723264;
createNode animCurveTA -n "animCurveTA1115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 -4.688255881576846 
		19 -4.6882558815768478;
createNode animCurveTA -n "animCurveTA1116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 -0.16613472175511146 
		19 -0.16613472175511138;
createNode animCurveTA -n "animCurveTA1117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 0.097525253246257507 
		19 0.07853697459455973;
createNode animCurveTL -n "animCurveTL394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 0.0053172365169878253 
		19 -0.0016591218045410986;
createNode animCurveTL -n "animCurveTL395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.1269999742507935 2 1.1269999742507935 
		5 1.1269999742507935 9 1.1269999742507935 12 1.1269999742507935 15 1.1491032715205272 
		19 1.1201031468602305;
createNode animCurveTL -n "animCurveTL396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 0.25149653438272224 
		19 0.25149653438272224;
createNode animCurveTL -n "animCurveTL397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 0.00073995887775373751 
		19 0.00073995887775373751;
createNode animCurveTL -n "animCurveTL398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.1269999742507935 2 1.1269999742507935 
		5 1.1269999742507935 9 1.1269999742507935 12 1.1269999742507935 15 1.106375388034134 
		19 1.106375388034134;
createNode animCurveTL -n "animCurveTL399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.010277520183037809 2 0.010277520183037809 
		5 0.010277520183037809 9 0.010277520183037809 12 0.010277520183037809 15 
		0 19 0;
createNode animCurveTL -n "animCurveTL400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.85696015408523407 2 0.22874949097165659 
		5 0.93248242697857475 9 1.0851572909752862 12 0.82562077342814222 15 0.17444545339612874 
		19 0.19391502175755118;
createNode animCurveTL -n "animCurveTL401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -4.3369999494839542 2 -4.5782523779345414 
		5 -4.5822175534735941 9 -4.4226636940906454 12 -4.2590187409080418 15 -4.4100700533983126 
		19 -4.4813491799859877;
createNode animCurveTA -n "animCurveTA1129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -43.966459848205403 2 -108.75867886019972 
		5 -99.171606951449704 9 -68.522598721536568 12 -55.788555672989702 15 -77.924338556956229 
		19 -94.463031014815542;
createNode animCurveTA -n "animCurveTA1130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 11.948637237068008 2 5.4757457660807027 
		5 5.7219641580000298 9 5.7219641580000413 12 5.721964158000044 15 10.339902534407132 
		19 21.641902216209711;
createNode animCurveTA -n "animCurveTA1131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.4726187357019771 2 1.2278616602168184 
		5 -0.44683864569923853 9 -0.44683864569924076 12 -0.4468386456992412 15 -1.2601559128696818 
		19 -3.6044218574730369;
createNode animCurveTA -n "animCurveTA1132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 4.0984482521620249 19 4.0984482521620249;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  0.81333768367767334 1;
	setAttr -s 3 ".kiy[1:2]"  0.58179193735122681 0;
createNode animCurveTA -n "animCurveTA1135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 18.588300303494186 19 18.588300303494186;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  0.29456019401550293 1;
	setAttr -s 3 ".kiy[1:2]"  0.95563292503356934 0;
createNode animCurveTA -n "animCurveTA1136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 -22.686733334985114 19 
		-22.686733334985114;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  0.24486361443996429 1;
	setAttr -s 3 ".kiy[1:2]"  -0.96955752372741699 0;
createNode animCurveTA -n "animCurveTA1139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 1.0579251312417479e-005 
		19 1.0579251312417479e-005;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 4.0984482535121209 19 4.0984482535121209;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  0.81333768367767334 1;
	setAttr -s 3 ".kiy[1:2]"  0.58179193735122681 0;
createNode animCurveTA -n "animCurveTA1145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 18.588300300216805 19 18.588300300216805;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  0.29456019401550293 1;
	setAttr -s 3 ".kiy[1:2]"  0.95563292503356934 0;
createNode animCurveTA -n "animCurveTA1146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 -22.686733333057838 19 
		-22.686733333057838;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  0.24486361443996429 1;
	setAttr -s 3 ".kiy[1:2]"  -0.96955752372741699 0;
createNode animCurveTA -n "animCurveTA1149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 1.0579251312417479e-005 
		19 1.0579251312417479e-005;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 2.4782236286598103 19 2.4782236286598103;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  0.91782385110855103 1;
	setAttr -s 3 ".kiy[1:2]"  0.39698782563209534 0;
createNode animCurveTA -n "animCurveTA1155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 -0.99214331096561381 12 0.098477282776761876 
		15 -0.69163884744780491 19 -0.69163884744780491;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 0.0055461442098021507 0.0033277194015681744 
		1;
	setAttr -s 4 ".kiy[0:3]"  0 0.99998462200164795 0.99999445676803589 
		0;
	setAttr -s 4 ".kox[0:3]"  1 0.0055461442098021507 0.002953139366582036 
		1;
	setAttr -s 4 ".koy[0:3]"  0 0.99998462200164795 -0.9999956488609314 
		0;
createNode animCurveTL -n "animCurveTL403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 -0.033841737269357866 12 -1.2301080708866399 
		15 0.24376503020897994 19 0.24376503020897994;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 0.0060035879723727703 0.0036021943669766188 
		1;
	setAttr -s 4 ".kiy[0:3]"  0 0.99998199939727783 0.99999350309371948 
		0;
	setAttr -s 4 ".kox[0:3]"  1 0.0060035879723727703 0.0015831283526495099 
		1;
	setAttr -s 4 ".koy[0:3]"  0 0.99998199939727783 0.99999874830245972 
		0;
createNode animCurveTL -n "animCurveTL404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 -0.027201153963313806 12 1.3078563829518688 
		15 0.44841910314659961 19 0.44841910314659961;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 0.0035041745286434889 0.0021025130990892649 
		1;
	setAttr -s 4 ".kiy[0:3]"  0 0.99999386072158813 0.99999779462814331 
		0;
	setAttr -s 4 ".kox[0:3]"  1 0.0035041745286434889 0.0027149447705596685 
		1;
	setAttr -s 4 ".koy[0:3]"  0 0.99999386072158813 -0.99999630451202393 
		0;
createNode animCurveTA -n "animCurveTA1158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 61.901589883246402 15 -70.759742713658738 
		19 -70.759742713658738;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  0.080708138644695282 1;
	setAttr -s 3 ".kiy[1:2]"  -0.9967377781867981 0;
createNode animCurveTA -n "animCurveTA1159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 25.199323443309421 15 26.623081280451803 
		19 26.623081280451803;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  0.21039380133152008 1;
	setAttr -s 3 ".kiy[1:2]"  0.97761672735214233 0;
createNode animCurveTA -n "animCurveTA1160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 84.048696033159729 15 -49.096653183739235 
		19 -49.096653183739235;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  0.11591333895921707 1;
	setAttr -s 3 ".kiy[1:2]"  -0.99325931072235107 0;
createNode animCurveTL -n "animCurveTL405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 0.99214413619678865 12 0.99214413619678865 
		15 0.71012400136723108 19 0.71012400136723108;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 0.0059096403419971466 0.003545823972672224 
		1;
	setAttr -s 4 ".kiy[0:3]"  0 -0.99998253583908081 -0.99999374151229858 
		0;
	setAttr -s 4 ".kox[0:3]"  1 0.0059096403419971466 0.0082733575254678726 
		1;
	setAttr -s 4 ".koy[0:3]"  0 -0.99998253583908081 -0.99996578693389893 
		0;
createNode animCurveTL -n "animCurveTL406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 -0.033851474715545553 12 -0.033851474715545553 
		15 0.47076628974155943 19 0.47076628974155943;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 0.0033028118778020144 0.0019816940184682608 
		1;
	setAttr -s 4 ".kiy[0:3]"  0 0.99999451637268066 0.99999803304672241 
		0;
	setAttr -s 4 ".kox[0:3]"  1 0.0033028118778020144 0.0046239127404987812 
		1;
	setAttr -s 4 ".koy[0:3]"  0 0.99999451637268066 0.99998933076858521 
		0;
createNode animCurveTL -n "animCurveTL407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 -0.0272011762672867 12 -0.0272011762672867 
		15 0.075519476331700294 19 0.075519476331700294;
	setAttr -s 4 ".kit[0:3]"  1 9 1 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 0.016223099082708359 0.0097346799448132515 
		1;
	setAttr -s 4 ".kiy[0:3]"  0 0.99986839294433594 0.99995261430740356 
		0;
	setAttr -s 4 ".kox[0:3]"  1 0.016223099082708359 0.022709470242261887 
		1;
	setAttr -s 4 ".koy[0:3]"  0 0.99986839294433594 0.99974209070205688 
		0;
createNode animCurveTA -n "animCurveTA1161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 -78.560435502307485 19 
		-78.560435502307485;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  0.072738915681838989 1;
	setAttr -s 3 ".kiy[1:2]"  -0.99735099077224731 0;
createNode animCurveTA -n "animCurveTA1162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 -29.584258420035471 19 
		-29.584258420035471;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  0.19013682007789612 1;
	setAttr -s 3 ".kiy[1:2]"  -0.98175758123397827 0;
createNode animCurveTA -n "animCurveTA1163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 60.92594460387344 19 60.92594460387344;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  0.093628570437431335 1;
	setAttr -s 3 ".kiy[1:2]"  0.99560719728469849 0;
createNode animCurveTL -n "animCurveTL408";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 -0.77018858354478514 15 -0.77018858354478514 
		19 -0.80521726511750047;
createNode animCurveTL -n "animCurveTL409";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0.31414400201799764 15 0.31414400201799764 
		19 0.16011791453845547;
createNode animCurveTL -n "animCurveTL410";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 -9.7517367136746103 15 -9.7517367136746103 
		19 -9.7415521961848022;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[2]"  9;
createNode animCurveTA -n "animCurveTA1164";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 -179.55392776172391 15 -179.55392776172391 
		19 -120.6667236884293;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[2]"  9;
createNode animCurveTA -n "animCurveTA1165";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 116.96279219127334 15 116.96279219127334 
		19 102.95625951926647;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[2]"  9;
createNode animCurveTA -n "animCurveTA1166";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 -167.34049544866542 15 -167.34049544866542 
		19 -117.50644899099053;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[2]"  9;
createNode animCurveTL -n "animCurveTL411";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0.40893690716992881 15 0.40893690716992881 
		19 0.40893690716992881;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[2]"  9;
createNode animCurveTL -n "animCurveTL412";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0.18904845089899255 15 0.18904845089899255 
		19 0.18904845089899255;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[2]"  9;
createNode animCurveTL -n "animCurveTL413";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 -10.640686052139051 15 -10.640686052139051 
		19 -10.793020446863613;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[2]"  9;
createNode animCurveTA -n "animCurveTA1167";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 -0.02189863644478723 15 -0.02189863644478723 
		19 -2.8422370910314818;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[2]"  9;
createNode animCurveTA -n "animCurveTA1168";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 -14.523429621939927 15 -14.523429621939927 
		19 -16.304666702394485;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[2]"  9;
createNode animCurveTA -n "animCurveTA1169";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 -21.724284074410608 15 -21.724284074410608 
		19 -12.124449607019613;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[2]"  9;
createNode animCurveTL -n "animCurveTL414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 0 12 0 15 0.20583112500852868 
		19 1.5351542341385696;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 0.0080969873815774918 0.0015199322951957583 
		0.0010030161356553435;
	setAttr -s 4 ".kiy[0:3]"  0 0.99996721744537354 0.99999886751174927 
		0.9999995231628418;
	setAttr -s 4 ".kox[0:3]"  1 0.0080969873815774918 0.0015199322951957583 
		0.0010030161356553435;
	setAttr -s 4 ".koy[0:3]"  0 0.99996721744537354 0.99999886751174927 
		0.9999995231628418;
createNode animCurveTL -n "animCurveTL415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 0 12 0 15 1.0559234230556687 
		19 -0.86667752871238668;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 0.0015783952549099922 0.0026922642719000578 
		0.00069350475678220391;
	setAttr -s 4 ".kiy[0:3]"  0 0.99999874830245972 -0.9999963641166687 
		-0.9999997615814209;
	setAttr -s 4 ".kox[0:3]"  1 0.0015783952549099922 0.0026922642719000578 
		0.00069350475678220391;
	setAttr -s 4 ".koy[0:3]"  0 0.99999874830245972 -0.9999963641166687 
		-0.9999997615814209;
createNode animCurveTL -n "animCurveTL416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 -1 12 -1 15 -2.7266002347845419 
		19 -1.1105508292219248;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 0.00096528761787340045 0.021101729944348335 
		0.00082505698082968593;
	setAttr -s 4 ".kiy[0:3]"  0 -0.9999995231628418 -0.99977731704711914 
		0.99999964237213135;
	setAttr -s 4 ".kox[0:3]"  1 0.00096528761787340045 0.021101729944348335 
		0.00082505698082968593;
	setAttr -s 4 ".koy[0:3]"  0 -0.9999995231628418 -0.99977731704711914 
		0.99999964237213135;
createNode animCurveTL -n "animCurveTL417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 0 12 0 15 -0.59788775323863297 
		19 0.61323488484053001;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 0.0027875802479684353 0.0038049311842769384 
		0.0011009061709046364;
	setAttr -s 4 ".kiy[0:3]"  0 -0.9999961256980896 0.99999278783798218 
		0.99999940395355225;
	setAttr -s 4 ".kox[0:3]"  1 0.0027875802479684353 0.0038049311842769384 
		0.0011009061709046364;
	setAttr -s 4 ".koy[0:3]"  0 -0.9999961256980896 0.99999278783798218 
		0.99999940395355225;
createNode animCurveTL -n "animCurveTL418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 0 12 0 15 -1.6361478719279683 
		19 0.30801779867030882;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 0.0010186523431912065 0.0075751026161015034 
		0.00068581243976950645;
	setAttr -s 4 ".kiy[0:3]"  0 -0.99999946355819702 0.99997133016586304 
		0.9999997615814209;
	setAttr -s 4 ".kox[0:3]"  1 0.0010186523431912065 0.0075751026161015034 
		0.00068581243976950645;
	setAttr -s 4 ".koy[0:3]"  0 -0.99999946355819702 0.99997133016586304 
		0.9999997615814209;
createNode animCurveTL -n "animCurveTL419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  10 -1 12 -1 15 -2.2967427684127548 
		19 -2.1649829693683946;
	setAttr -s 4 ".kit[0:3]"  1 9 9 9;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[0:3]"  1 0.0012852705549448729 0.0020028864964842796 
		0.010118906386196613;
	setAttr -s 4 ".kiy[0:3]"  0 -0.99999916553497314 -0.99999797344207764 
		0.99994879961013794;
	setAttr -s 4 ".kox[0:3]"  1 0.0012852705549448729 0.0020028864964842796 
		0.010118906386196613;
	setAttr -s 4 ".koy[0:3]"  0 -0.99999916553497314 -0.99999797344207764 
		0.99994879961013794;
createNode animCurveTA -n "animCurveTA1170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -6.8572687528825451 2 6.8619270713577576 
		5 11.910122171492144 9 8.719760997765631 12 -0.86682362046053785 15 80.425561779386882 
		19 80.425561779386882;
createNode animCurveTA -n "animCurveTA1171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -35.989153960244828 2 26.271568733472723 
		5 34.847436509543812 9 -19.172371927598537 12 -36.420165432649057 15 -30.44506412614497 
		19 -30.44506412614497;
createNode animCurveTA -n "animCurveTA1172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -8.2228640017029822 2 -28.478653283920352 
		5 -57.340025714492775 9 -15.284065710194218 12 -37.142136265893669 15 -71.256105225350495 
		19 -71.256105225350495;
createNode animCurveTA -n "animCurveTA1173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.1000103109752657 2 35.50840155485146 
		5 26.194228625572833 9 30.531553251488187 12 -13.873454918735659 15 43.141146641774462 
		19 43.141146641774462;
createNode animCurveTA -n "animCurveTA1174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -40.987493369248604 2 18.534260088769848 
		5 1.6125065100282923 9 -38.582935464452937 12 -57.65471620728129 15 -34.275123249513904 
		19 -34.275123249513904;
createNode animCurveTA -n "animCurveTA1175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -25.63260543524105 2 2.2170566423766038 
		5 -44.957460230307618 9 -32.931696609933702 12 5.2163725894863555 15 -49.798186726856571 
		19 -49.798186726856571;
createNode animCurveTA -n "animCurveTA1176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 39.038962484432531 2 12.874514918270977 
		5 12.874514918270977 9 60.256622455879089 12 79.642588495982807 15 23.279099769107543 
		19 23.279099769107543;
createNode animCurveTA -n "animCurveTA1177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 63.89762232629036 2 18.197981956320611 
		5 45.248375301206067 9 45.248375301206067 12 87.940749370014572 15 21.701008910528319 
		19 21.701008910528319;
createNode animCurveTA -n "animCurveTA1178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 11.473575540500992 2 -54.236822617544803 
		5 23.823134639673615 9 23.823134639673615 12 23.823134639673619 15 -11.431503848920924 
		19 -11.431503848920924;
createNode animCurveTA -n "animCurveTA1179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 28.077649579570863 2 -21.870691107419802 
		5 -6.0806429538034328 9 -6.0806429538034328 12 -6.0806429538034346 15 56.613259276433965 
		19 56.613259276433965;
createNode animCurveTA -n "animCurveTA1180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 10.782899883269589 2 15.410846653408855 
		5 10.96112701689211 9 10.96112701689211 12 10.961127016892112 15 13.131642679464067 
		19 13.131642679464067;
createNode animCurveTA -n "animCurveTA1181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.0447427744579891 2 75.75473903343277 
		5 24.991091773627126 9 24.991091773627126 12 24.991091773627126 15 -35.828077252198852 
		19 -35.828077252198852;
createNode animCurveTA -n "animCurveTA1182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 5.5429207840541244 2 -8.1079546283831778 
		5 -8.107954628383192 9 -8.107954628383192 12 -8.1079546283831938 15 7.8286751959834691 
		19 7.8286751959834691;
createNode animCurveTA -n "animCurveTA1183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 34.868956102818473 2 -15.142398251678113 
		5 -15.142398251678118 9 -15.142398251678118 12 -15.142398251678118 15 -17.722466912710736 
		19 -17.722466912710736;
createNode animCurveTA -n "animCurveTA1184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -32.123718040735945 2 -32.123718040735945 
		5 -32.123718040735945 9 -32.123718040735945 12 -32.123718040735959 15 -36.628454700917274 
		19 -36.628454700917274;
createNode animCurveTA -n "animCurveTA1185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 19.407819173437478 2 19.407819173437478 
		5 19.407819173437478 9 19.407819173437478 12 19.407819173437481 15 15.180891733866945 
		19 15.180891733866945;
createNode animCurveTA -n "animCurveTA1186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 4.4751336445171193 2 4.4751336445171193 
		5 4.4751336445171193 9 4.4751336445171193 12 4.4751336445171193 15 -0.072787087017037025 
		19 -0.072787087017037025;
createNode animCurveTA -n "animCurveTA1187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 0 19 0;
createNode animCurveTA -n "animCurveTA1188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 0 19 0;
createNode animCurveTA -n "animCurveTA1189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -11.433734901667266 2 -11.433734901667266 
		5 -11.433734901667266 9 -11.433734901667266 12 -11.43373490166727 15 -19.69381977483518 
		19 16.091928124335652;
createNode animCurveTA -n "animCurveTA1190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  12 0 15 0 19 0;
	setAttr -s 3 ".kit[1:2]"  1 9;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "animCurveTA1194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "animCurveTA1195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "animCurveTA1196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "animCurveTA1197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "animCurveTA1198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  19 0;
createNode animCurveTA -n "animCurveTA1199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 0 19 0;
createNode animCurveTA -n "animCurveTA1200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 0 19 0;
createNode animCurveTA -n "animCurveTA1201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -9.6043099083038648 2 -9.6043099083038648 
		5 -9.6043099083038648 9 -9.6043099083038648 12 -9.6043099083038648 15 -14.841309524368915 
		19 14.532113898241397;
createNode animCurveTA -n "animCurveTA1202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 3.1198943483277444 2 3.1198943483277444 
		5 3.1198943483277444 9 3.1198943483277444 12 3.1198943483277444 15 3.1198943483277448 
		19 0;
createNode animCurveTA -n "animCurveTA1203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.7238169885910806 2 1.7238169885910806 
		5 1.7238169885910806 9 1.7238169885910806 12 1.723816988591081 15 1.7238169885910808 
		19 0;
createNode animCurveTA -n "animCurveTA1204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.268388134198538 2 12.268388134198538 
		5 12.268388134198538 9 12.268388134198538 12 12.268388134198538 15 12.268388134198538 
		19 0;
createNode animCurveTA -n "animCurveTA1205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 6.2649641345144982 2 4.3792227256952083 
		5 -6.174601823043262 9 5.5003912180703773 12 0.41771815725513101 15 4.3455899438596957 
		19 21.857236856166011;
createNode animCurveTA -n "animCurveTA1206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 5.780294047116163 2 7.3112839305619053 
		5 5.3349485649520059 9 7.3427228592247538 12 1.4517181918272679 15 -2.0211929929175145 
		19 2.424565788311519;
createNode animCurveTA -n "animCurveTA1207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 21.274336518663382 2 4.8458125891459387 
		5 -18.053793752528659 9 5.3515714667445593 12 16.50991249947349 15 9.1303904739519428 
		19 22.217726072149194;
createNode animCurveTA -n "animCurveTA1208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 0 19 -11.623795089125478;
createNode animCurveTA -n "animCurveTA1209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 0 19 -5.1801351848586021;
createNode animCurveTA -n "animCurveTA1210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 14.898647627575579 5 14.898647627575579 
		9 14.898647627575579 12 14.898647627575579 15 0 19 27.974704293083807;
createNode animCurveTA -n "animCurveTA1211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 22.334659718447345 2 22.338466481041845 
		5 11.456752355681559 9 3.5955899922493053 12 3.5955899922493062 15 4.5948127575308497 
		19 23.086919043348587;
createNode animCurveTA -n "animCurveTA1212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 14.88860504567513 2 14.882720778967039 
		5 24.202881440026243 9 4.6959726176734558 12 4.6959726176734575 15 6.2727765341536816 
		19 8.6912145029969565;
createNode animCurveTA -n "animCurveTA1213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 28.394145862336995 2 28.408964454747306 
		5 -3.2783717394768646 9 10.032621196260985 12 10.032621196260987 15 27.984443909870059 
		19 22.489414651394924;
createNode animCurveTA -n "animCurveTA1214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 10.848910062280096 2 11.98685505624049 
		5 13.464379261934385 9 0.82664351209015052 12 0.8266435120901503 15 7.1522494975013187 
		19 7.2864915402669999;
createNode animCurveTA -n "animCurveTA1215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -9.6857689857774592 2 -8.2276460027505074 
		5 -5.4447707464457205 9 -5.4419935515154378 12 -5.4419935515154378 15 -1.4349096479040127 
		19 -0.33252079700716181;
createNode animCurveTA -n "animCurveTA1216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 7.31134628381818 2 0.012452880661499691 
		5 -12.349286551846278 9 5.8122340998814881 12 5.8122340998814881 15 26.122606478441046 
		19 17.435740369561156;
createNode animCurveTA -n "animCurveTA1217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 0 19 0;
createNode animCurveTA -n "animCurveTA1218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 0 19 0;
createNode animCurveTA -n "animCurveTA1219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 21.472939016776969 2 21.472939016776969 
		5 21.472939016776969 9 21.472939016776969 12 21.472939016776973 15 16.736721183175977 
		19 30.900736939420714;
createNode animCurveTA -n "animCurveTA1220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -15.564086868905925 2 -15.564086868905925 
		5 -15.564086868905925 9 -15.564086868905925 12 -15.564086868905928 15 -19.916813043140671 
		19 -19.916813043140671;
createNode animCurveTA -n "animCurveTA1221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 5.9119201843313247 2 5.9119201843313247 
		5 5.9119201843313247 9 5.9119201843313247 12 5.9119201843313265 15 2.1381503000571311 
		19 2.1381503000571311;
createNode animCurveTA -n "animCurveTA1222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.89181587725581968 2 -0.89181587725581968 
		5 -0.89181587725581968 9 -0.89181587725581968 12 -0.89181587725581979 15 
		-6.3333534086058831 19 -6.3333534086058831;
createNode animCurveTA -n "animCurveTA1223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 0 19 0;
createNode animCurveTA -n "animCurveTA1224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 2 0 5 0 9 0 12 0 15 0 19 0;
createNode animCurveTA -n "animCurveTA1225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 21.151890972437133 2 21.151890972437133 
		5 21.151890972437133 9 21.151890972437133 12 21.151890972437133 15 17.545620107018433 
		19 -15.187381016197607;
createNode animCurveTA -n "animCurveTA1226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  2 0 5 0 8 0 12 0 16 0 19 0;
createNode animCurveTA -n "animCurveTA1227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  2 0 5 0 8 0 12 0 16 0 19 0;
createNode animCurveTA -n "animCurveTA1228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  2 -27.360968628294891 5 10.020533298880299 
		8 42.391082593190262 12 -36.930976757745015 16 34.968252954323141 19 0;
createNode animCurveTA -n "animCurveTA1229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  2 0 5 0 8 0 12 0 16 0 19 0;
createNode animCurveTA -n "animCurveTA1230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  2 0 5 0 8 0 12 0 16 0 19 0;
createNode animCurveTA -n "animCurveTA1231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  2 -27.360968628294891 5 -29.429620409523597 
		8 26.243444896791985 12 -56.722093780820728 16 1.2370729222053105 19 0;
createNode animCurveTA -n "animCurveTA1232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  2 0 5 0 8 0 12 0 16 0 19 0;
createNode animCurveTA -n "animCurveTA1233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  2 0 5 0 8 0 12 0 16 0 19 0;
createNode animCurveTA -n "animCurveTA1234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  2 -27.360968628294891 5 -30.990532155374183 
		8 24.682533150941371 12 -39.426886877104849 16 -0.32383882364527411 19 0;
createNode clipLibrary -n "clipLibrary1";
	setAttr -s 177 ".cel[0].cev";
	setAttr ".cd[0].cm" -type "characterMapping" 177 "Extra_Attributes.translateX" 
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
		2 118 "Middle_L.rotateZ" 2 119 "hair_1.rotateX" 2 120 "hair_1.rotateY" 
		2 121 "hair_1.rotateZ" 2 122 "hair_2.rotateX" 2 123 "hair_2.rotateY" 
		2 124 "hair_2.rotateZ" 2 125 "hair_3.rotateX" 2 126 "hair_3.rotateY" 
		2 127 "hair_3.rotateZ" 2 128  ;
	setAttr ".cd[0].cim" -type "Int32Array" 177 0 1 2 3
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
		 158 159 160 161 162 163 164 165 166 167 168
		 169 170 171 172 173 174 175 176 ;
createNode lightLinker -n "lightLinker1";
	setAttr ".ihi" 0;
	setAttr -s 21 ".lnk";
select -ne :time1;
	setAttr ".o" 13;
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
	setAttr ".outf" 23;
	setAttr ".an" yes;
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
connectAttr "mrg_fall_landSource.st" "clipLibrary1.st[0]";
connectAttr "mrg_fall_landSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL379.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL380.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL381.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL382.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL383.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA1107.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU57.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU58.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU59.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU60.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU61.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU62.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU63.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU64.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA1108.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1109.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1110.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL384.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL385.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL386.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL387.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL388.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL389.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1111.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1112.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1113.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL390.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL391.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL392.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1114.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1115.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1116.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1117.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1118.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1119.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1120.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1121.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1122.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA1123.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA1124.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA1125.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA1126.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA1127.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA1128.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL393.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL394.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL395.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL396.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL397.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL398.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL399.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL400.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL401.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1129.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1130.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1131.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1132.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1133.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1134.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1135.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1136.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1137.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1138.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1139.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1140.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1141.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1142.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1143.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1144.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1145.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1146.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1147.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1148.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1149.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1150.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1151.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA1152.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA1153.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA1154.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1155.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1156.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1157.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL402.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL403.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL404.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA1158.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA1159.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1160.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL405.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL406.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL407.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1161.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1162.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1163.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL408.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL409.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL410.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1164.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1165.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1166.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL411.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL412.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL413.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1167.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1168.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1169.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL414.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL415.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL416.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL417.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL418.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL419.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1170.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1171.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1172.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1173.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1174.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1175.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1176.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1177.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1178.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1179.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1180.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1181.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1182.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1183.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1184.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1185.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1186.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1187.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1188.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1189.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1190.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1191.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1192.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1193.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1194.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1195.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1196.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1197.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1198.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1199.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1200.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1201.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1202.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1203.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1204.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1205.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1206.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1207.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1208.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1209.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1210.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1211.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1212.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1213.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1214.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1215.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1216.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1217.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1218.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1219.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1220.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1221.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1222.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1223.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1224.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1225.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr "animCurveTA1226.a" "clipLibrary1.cel[0].cev[168].cevr";
connectAttr "animCurveTA1227.a" "clipLibrary1.cel[0].cev[169].cevr";
connectAttr "animCurveTA1228.a" "clipLibrary1.cel[0].cev[170].cevr";
connectAttr "animCurveTA1229.a" "clipLibrary1.cel[0].cev[171].cevr";
connectAttr "animCurveTA1230.a" "clipLibrary1.cel[0].cev[172].cevr";
connectAttr "animCurveTA1231.a" "clipLibrary1.cel[0].cev[173].cevr";
connectAttr "animCurveTA1232.a" "clipLibrary1.cel[0].cev[174].cevr";
connectAttr "animCurveTA1233.a" "clipLibrary1.cel[0].cev[175].cevr";
connectAttr "animCurveTA1234.a" "clipLibrary1.cel[0].cev[176].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[8].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[13].llnk";
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
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of mrg_fall_land.ma
