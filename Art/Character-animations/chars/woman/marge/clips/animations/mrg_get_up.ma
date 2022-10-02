//Maya ASCII 4.0 scene
//Name: mrg_get_up.ma
//Last modified: Tue, Oct 01, 2002 05:19:22 PM
requires maya "4.0";
requires "p3dmayaexp" "18.5";
requires "p3dSimpleShader" "18.5";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_get_upSource";
	setAttr ".ihi" 0;
	setAttr ".du" 35;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL461";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL462";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0 1 6.3293045658137419e-005 2 
		0.00018987913697441226 3 0.00028481870546161843 4 0.00025317218263254978 
		5 0 6 -0.0013250814596597969 7 -0.0030896979541401096 8 -0.0031646522627823974 
		9 -0.00063347044378683065 10 0.0032534232041499249 11 0.0073748785409416704 
		12 0.010609745426502193 13 0.011836873720745305 14 0.010882412672315914 15 
		0.0086416095657727305 16 0.0055969613149002354 17 0.0022309648334829044 18 
		-0.00097388296469478274 19 -0.003535085165848348 20 -0.0049701448561933195 
		21 -0.0051281727486992288 22 -0.0043904020389970442 23 -0.0030725195372944261 
		24 -0.0014902120537990361 25 4.0833601281468951e-005 26 0.0012049306177394211 
		27 0.0016863921853671657 28 0.0011695314939570408 29 -0.00086763995746781176 
		30 -0.0047745653842598051 31 -0.01060811366818994 32 -0.018425153691029206 
		33 -0.033289209344888299 34 -0.051645773268874956 35 -0.06062466746525573;
createNode animCurveTL -n "animCurveTL464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0;
createNode animCurveTL -n "animCurveTL465";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 -3.7811401532789568 1 -3.7809186662761793 
		2 -3.780475692270624 3 -3.7801434617664573 4 -3.7802542052678461 5 -3.7811401532789568 
		6 -3.7844916732211016 7 -3.7893812974957637 8 -3.792214504077366 9 -3.795340153353044 
		10 -3.8006144730021232 11 -3.8037039919373132 12 -3.800275239071325 13 -3.7859947433168668 
		14 -3.7577332469617386 15 -3.7186366877536643 16 -3.6737843877952425 17 -3.6282556691890706 
		18 -3.5871298540377485 19 -3.5554862644438709 20 -3.5384042225100401 21 -3.5352322558865534 
		22 -3.5408158647433532 23 -3.5534798299624972 24 -3.5715489324260417 25 -3.5933479530160457 
		26 -3.6172016726145664 27 -3.641434872103662 28 -3.6643723323653901 29 -3.6946854874622161 
		30 -3.734710070597584 31 -3.7732673113650197 32 -3.7991784393580468 33 -3.800064662195437 
		34 -3.7850933652896077 35 -3.7754050449245544;
createNode animCurveTA -n "animCurveTA1345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0;
createNode animCurveTU -n "animCurveTU73";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU74";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU75";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU76";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU77";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU78";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU79";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 35 1;
createNode animCurveTU -n "animCurveTU80";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 35 1;
createNode animCurveTA -n "animCurveTA1346";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1347";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1348";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL466";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL467";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL468";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL469";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.097869444841495443 5 -0.14743735211770487 
		8 -0.17693899595737456 13 -0.17693899595737456 20 -0.17693899595737456 28 
		-0.17693899595737456 32 -0.17693899595737456 35 -0.17693899595737456;
	setAttr -s 8 ".kit[0:7]"  9 1 3 3 3 3 3 
		3;
	setAttr -s 8 ".kot[0:7]"  1 1 3 3 3 3 3 
		3;
	setAttr -s 8 ".kix[1:7]"  0.013565401546657085 1 1 1 1 1 
		1;
	setAttr -s 8 ".kiy[1:7]"  -0.9999079704284668 0 0 0 0 0 0;
	setAttr -s 8 ".kox[0:7]"  1 0.013565108180046082 1 1 1 1 
		1 1;
	setAttr -s 8 ".koy[0:7]"  0 -0.9999079704284668 0 0 0 0 0 
		0;
createNode animCurveTL -n "animCurveTL470";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.095951083708606652 5 0.095951083708606652 
		8 0.10672689756155014 13 0.10672689756155014 20 0.10672689756155014 28 0.10672689756155014 
		32 0.10672689756155014 35 0.10672689756155014;
	setAttr -s 8 ".kit[0:7]"  9 9 3 3 3 3 3 
		3;
	setAttr -s 8 ".kot[0:7]"  1 9 3 3 3 3 3 
		3;
	setAttr -s 8 ".kox[0:7]"  1 0.24022144079208374 1 1 1 1 1 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0.97071808576583862 0 0 0 0 0 
		0;
createNode animCurveTL -n "animCurveTL471";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -3.8272484332906358 5 -4.0991745549920307 
		8 -4.3241781574148304 13 -4.6747958931922913 20 -4.6747958931922913 28 -4.6747958931922913 
		32 -4.6747958931922913 35 -4.6747958931922913;
	setAttr -s 8 ".kit[0:7]"  9 9 9 3 3 3 3 
		3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 3 3 3 3 
		3;
	setAttr -s 8 ".kox[0:7]"  0.006129000335931778 0.0053662080317735672 
		0.004632625263184309 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  -0.99998122453689575 -0.99998557567596436 
		-0.99998927116394043 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1349";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -3.3595522507325413 5 -3.3595522507325413 
		8 -8.4476653665867829 13 0 20 0 28 0 32 0 35 0;
	setAttr -s 8 ".kit[0:7]"  9 9 9 3 3 3 3 
		3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 3 3 3 3 
		3;
	setAttr -s 8 ".kox[0:7]"  1 0.94877350330352783 0.9766685962677002 
		1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 -0.31595697999000549 0.21475203335285187 
		0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1350";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -4.9396511688497009 5 -4.9396511688497009 
		8 -1.196555460366135 13 -1.196555460366135 20 -25.949000000000002 28 -25.949000000000002 
		32 -25.949000000000002 35 -25.949000000000002;
	setAttr -s 8 ".kit[0:7]"  9 9 3 3 3 3 3 
		3;
	setAttr -s 8 ".kot[0:7]"  1 9 3 3 3 3 3 
		3;
	setAttr -s 8 ".kox[0:7]"  1 0.97127777338027954 1 1 1 1 1 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0.23794852197170258 0 0 0 0 0 
		0;
createNode animCurveTA -n "animCurveTA1351";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.4972445100027125 5 1.4972445100027125 
		8 -19.43581094433652 13 0 20 0 28 0 32 0 35 0;
	setAttr -s 8 ".kit[2:7]"  9 3 3 3 3 3;
	setAttr -s 8 ".kot[2:7]"  9 3 3 3 3 3;
createNode animCurveTL -n "animCurveTL472";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.18647005802231295 4 0.18647005802231295 
		8 0.18647005802231295 13 0.18647005802231295 20 0.18647005802231295 28 0.16421286688501266 
		32 0.11057431867798995 35 0.072059567379697237;
	setAttr -s 8 ".kit[5:7]"  1 1 3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 1 1 
		3;
	setAttr -s 8 ".kix[5:7]"  0.034540228545665741 0.018215041607618332 
		1;
	setAttr -s 8 ".kiy[5:7]"  -0.99940329790115356 -0.99983412027359009 
		0;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 0.21918389201164246 0.034540094435214996 
		0.018215049058198929 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 -0.97568356990814209 -0.99940329790115356 
		-0.99983412027359009 0;
createNode animCurveTL -n "animCurveTL473";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.10138242431350594 4 0.10138242431350594 
		8 0.10138242431350591 13 0.10138242431350591 20 0.10138242431350591 28 0.11647518945730102 
		32 0.18445456407927463 35 0.10860528941614173;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 0.31447687745094299 0.048095196485519409 
		0.28425756096839905 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0.94926512241363525 0.99884277582168579 
		-0.9587479829788208 0;
createNode animCurveTL -n "animCurveTL474";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -3.8774934763693465 4 -3.9491382256496794 
		8 -4.1729980834144627 13 -4.1729980834144627 20 -4.1729980834144627 28 -4.1729980834144627 
		32 -4.5221083546371759 35 -4.600413894891739;
	setAttr -s 8 ".kit[1:7]"  1 3 3 3 3 1 3;
	setAttr -s 8 ".kot[1:7]"  1 3 3 3 3 1 3;
	setAttr -s 8 ".kix[1:7]"  0.0061625903472304344 1 1 1 1 0.0051340092904865742 
		1;
	setAttr -s 8 ".kiy[1:7]"  -0.99998098611831665 0 0 0 0 -0.99998682737350464 
		0;
	setAttr -s 8 ".kox[1:7]"  0.0061625856906175613 1 1 1 1 0.0051340470090508461 
		1;
	setAttr -s 8 ".koy[1:7]"  -0.99998098611831665 0 0 0 0 -0.99998682737350464 
		0;
createNode animCurveTA -n "animCurveTA1352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.022973885644723264 4 -0.022973885644723264 
		8 -0.022973885644723264 13 -0.022973885644723264 20 -0.022973885644723264 
		28 13.727847710679249 32 13.727847710679249 35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 0.90152508020401001 0.85749566555023193 
		0.697681725025177 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0.43272686004638672 0.51449120044708252 
		-0.7164078950881958 0;
createNode animCurveTA -n "animCurveTA1353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -4.6882558815768478 4 -4.6882558815768478 
		8 -4.6882558815768478 13 -4.6882558815768478 20 -4.6882558815768478 28 -4.6882558815768443 
		32 -4.6882558815768443 35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.94365787506103516 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0.33092263340950012 
		0;
createNode animCurveTA -n "animCurveTA1354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.16613472175511138 4 -0.16613472175511138 
		8 -0.16613472175511138 13 -0.16613472175511138 20 -0.16613472175511138 28 
		-0.16613472175511146 32 -0.16613472175511146 35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.99992281198501587 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0.012425889261066914 
		0;
createNode animCurveTA -n "animCurveTA1355";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1356";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1357";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1358";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1359";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1360";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1361";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1362";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1363";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1364";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1365";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1366";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL475";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.07853697459455973 5 0.36843947232888397 
		8 -0.088188696555352539 13 -0.088188696555352539 20 0.28498525446731898 28 
		-0.088188696555352539 32 -0.088188696555352539 35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.0057489639148116112 0.015992291271686554 
		0.0058398088440299034 0.01071824599057436 1 0.01071824599057436 0.026449162513017654 
		1;
	setAttr -s 8 ".koy[0:7]"  0.99998348951339722 -0.99987208843231201 
		-0.99998295307159424 0.99994254112243652 0 -0.99994254112243652 0.99965018033981323 
		0;
createNode animCurveTL -n "animCurveTL476";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.0016591218045410986 5 -0.0077834162233797301 
		8 -0.16077700230473549 13 -0.16077700230473549 20 -0.16077700230473549 28 
		-0.16077700230473549 32 -0.16077700230473549 35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.26259011030197144 0.016756711527705193 
		0.017427276819944382 1 1 1 0.014511327259242535 1;
	setAttr -s 8 ".koy[0:7]"  -0.96490746736526489 -0.99985957145690918 
		-0.9998481273651123 0 0 0 0.99989467859268188 0;
createNode animCurveTL -n "animCurveTL477";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.1201031468602305 5 1.0946449789426538 
		8 1.0214614093318408 13 1.0214614093318408 20 0.83986332004996411 28 1.0214614093318408 
		32 1.0214614093318408 35 1.1269999742507935;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.065327033400535583 0.027023985981941223 
		0.036413885653018951 0.022021321579813957 1 0.022021321579813957 0.022103419527411461 
		1;
	setAttr -s 8 ".koy[0:7]"  -0.99786388874053955 -0.99963480234146118 
		-0.99933677911758423 -0.99975752830505371 0 0.99975752830505371 0.99975568056106567 
		0;
createNode animCurveTL -n "animCurveTL478";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.25149653438272224 5 0.53598192076763806 
		8 0.53598192076763806 13 0.53598192076763806 20 0.19937455608261956 28 0.10676225594509613 
		32 0.05742666228733273 35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.0058584315702319145 0.009373239241540432 
		1 0.01188244204968214 0.011648256331682205 0.028168173506855965 0.021850196644663811 
		1;
	setAttr -s 8 ".koy[0:7]"  0.99998283386230469 0.99995607137680054 
		0 -0.99992942810058594 -0.99993216991424561 -0.99960321187973022 -0.99976128339767456 
		0;
createNode animCurveTL -n "animCurveTL479";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.00073995887775373751 5 0.0015769783132835117 
		8 0.0015769783132835117 13 0.0015769783132835117 20 0.00036886992190479184 
		28 0.0015769783132835117 32 0.0015769783132835117 35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.89363521337509155 0.95410376787185669 
		1 0.95729053020477295 1 0.95729053020477295 0.82852280139923096 1;
	setAttr -s 8 ".koy[0:7]"  0.44879406690597534 0.2994762659072876 
		0 -0.28912767767906189 0 0.28912767767906189 -0.55995535850524902 0;
createNode animCurveTL -n "animCurveTL480";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.106375388034134 5 1.0830454706128991 
		8 1.0830454706128991 13 1.0830454706128991 20 1.1167186062778165 28 1.0830454706128991 
		32 1.0830454706128991 35 1.1269999742507935;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.071257434785366058 0.11356300115585327 
		1 0.11795970797538757 1 0.11795970797538757 0.053010553121566772 1;
	setAttr -s 8 ".koy[0:7]"  -0.99745798110961914 -0.99353080987930298 
		0 0.99301838874816895 0 -0.99301838874816895 0.99859392642974854 0;
createNode animCurveTL -n "animCurveTL481";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 8 -0.003857029747317406 
		13 0.014426600544103307 20 -0.0060575364896362262 28 0.0014254070867965834 
		32 -0.10161980778495512 35 -0.073888416931195494;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 0.56869304180145264 0.18176461756229401 
		0.87616902589797974 0.35895034670829773 0.04182090237736702 0.030966615304350853 
		1;
	setAttr -s 8 ".koy[0:7]"  0 -0.82254981994628906 0.98334205150604248 
		-0.48200395703315735 -0.9333566427230835 -0.99912512302398682 -0.99952042102813721 
		0;
createNode animCurveTL -n "animCurveTL482";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.19391502175755118 5 0.19391502175755118 
		8 0.32521308858844789 13 0.58526028001178909 20 0.68027960689775702 28 0.91235188567328951 
		32 0.97825208329609203 35 0.9885925041129735;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 0.020305834710597992 0.0068139443174004555 
		0.011264779604971409 0.015284452587366104 0.013422849588096142 0.030590534210205078 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0.99979382753372192 0.99997681379318237 
		0.99993652105331421 0.99988317489624023 0.99990993738174438 0.99953198432922363 
		0;
createNode animCurveTL -n "animCurveTL483";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -4.6083957537725944 5 -4.6083957537725944 
		8 -4.6218930030482976 13 -4.6143124538181111 20 -4.4330568861986306 28 -4.4660809206107714 
		32 -4.6303805407951346 35 -4.6014058914780342;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 0.19382442533969879 0.41089656949043274 
		0.021177638322114944 0.033711839467287064 0.020267101004719734 0.017239881679415703 
		1;
	setAttr -s 8 ".koy[0:7]"  0 -0.98103624582290649 -0.91168195009231567 
		0.99977570772171021 0.99943161010742188 -0.999794602394104 -0.99985140562057495 
		0;
createNode animCurveTA -n "animCurveTA1367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -94.463031014815542 5 -80.439212902794139 
		8 -87.031292872778835 13 -48.940976726124944 20 -10.841815893584219 28 3.1216994599215337 
		32 0.35373895944519868 35 -0.62843630316474508;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.56283789873123169 0.89926350116729736 
		0.43643546104431152 0.28805661201477051 0.48209208250045776 0.89852279424667358 
		0.96283656358718872 1;
	setAttr -s 8 ".koy[0:7]"  0.82656729221343994 0.43740728497505188 
		0.89973556995391846 0.95761340856552124 0.87612056732177734 0.4389268159866333 
		-0.27008479833602905 0;
createNode animCurveTA -n "animCurveTA1368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 21.641902216209711 5 39.404626458779369 
		8 52.443337582989514 13 45.401435974432943 20 18.307015656759383 28 -0.019720655888451413 
		32 2.6171066625313157 35 -5.8284402688137167;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.47351360321044922 0.44437634944915771 
		0.93086767196655273 0.55740416049957275 0.53347164392471313 0.82515692710876465 
		0.9171677827835083 1;
	setAttr -s 8 ".koy[0:7]"  0.8807864785194397 0.89584016799926758 
		0.36535650491714478 -0.83024126291275024 -0.8458179235458374 -0.5649036169052124 
		-0.39850133657455444 0;
createNode animCurveTA -n "animCurveTA1369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -3.6044218574730369 5 -26.803617734067554 
		8 -66.099401471844246 13 -31.710485999790286 20 -5.4876577333252463 28 -0.19094605388053168 
		32 -0.28415282259920965 35 -1.295636019309746;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.38063690066337585 0.23748718202114105 
		0.95210474729537964 0.35367795825004578 0.67259258031845093 0.97518068552017212 
		0.99660348892211914 1;
	setAttr -s 8 ".koy[0:7]"  -0.92472457885742188 -0.97139066457748413 
		-0.30577203631401062 0.93536722660064697 0.74001294374465942 0.2214106023311615 
		-0.082349963486194611 0;
createNode animCurveTA -n "animCurveTA1370";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1371";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1372";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.0984482521620249 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1373";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.588300303494186 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1374";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1375";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1376";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -22.686733334985114 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1377";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1378";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1379";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0579251312417479e-005 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1380";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1381";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1382";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.0984482535121209 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1383";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.588300300216805 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1384";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1385";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1386";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -22.686733333057838 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1387";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1388";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1389";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0579251312417479e-005 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1390";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1391";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
createNode animCurveTA -n "animCurveTA1393";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1394";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1395";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL484";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.69163884744780491 35 -0.43524234076486068;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL485";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.24376503020897994 35 -0.82665738350180651;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL486";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.44841910314659961 35 0.27773886459742925;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1396";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -70.759742713658738 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1397";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 26.623081280451803 35 28.652637602052774;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1398";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -49.096653183739235 35 64.676908227303443;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL487";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.71012400136723108 35 0.5198069948790518;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL488";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.47076628974155943 35 -0.72394202659893125;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL489";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.075519476331700294 35 0.36439499068905612;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1399";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -78.560435502307485 35 7.7976222737965317;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1400";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -29.584258420035471 35 -30.409274105849079;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1401";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 60.92594460387344 35 -64.859940280210893;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL490";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.80521726511750047 5 -0.51934632442963857 
		8 -0.16596571630212389 13 0.096378741239831728 20 -0.34862114012680395 28 
		-0.51294072556078507 32 -0.69303271169134539 35 -0.65311611999272123;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 0.0041715088300406933 0.0043308967724442482 
		0.021893909201025963 0.0082056000828742981 0.011613229289650917 0.016643507406115532 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0.99999129772186279 0.99999064207077026 
		-0.99976027011871338 -0.9999663233757019 -0.99993258714675903 -0.99986147880554199 
		0;
createNode animCurveTL -n "animCurveTL491";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.16011791453845547 5 0.68103287445173377 
		8 1.1017062875007821 13 1.5965860096781277 20 1.6904124901847823 28 2.0958366601808804 
		32 2.2550260057687792 35 2.2462096125327005;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 0.0028320825658738613 0.0029126165900379419 
		0.0067944033071398735 0.010014507919549942 0.0070843142457306385 0.015515107661485672 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0.99999600648880005 0.99999576807022095 
		0.99997693300247192 0.9999498724937439 0.99997490644454956 0.99987965822219849 
		0;
createNode animCurveTL -n "animCurveTL492";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -10.013070154472475 5 -9.6862111986108381 
		8 -9.5807043650824912 13 -9.414435545528212 20 -8.7856623462783929 28 -9.5620592544938763 
		32 -10.000685910678053 35 -9.9319027658653791;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.0050989734008908272 0.0061674998141825199 
		0.0098115419968962669 0.0050311167724430561 0.033850487321615219 0.0032920993398874998 
		0.0063088489696383476 1;
	setAttr -s 8 ".koy[0:7]"  0.99998700618743896 0.99998098611831665 
		0.99995183944702148 0.99998736381530762 -0.99942690134048462 -0.99999457597732544 
		-0.99998009204864502 0;
createNode animCurveTA -n "animCurveTA1402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -120.6667236884293 5 -62.846598112772234 
		8 127.72156892038981 13 103.49359288274906 20 66.583869874004989 28 1.2804732692020886 
		32 1.2804732692020886 35 5.4739599453216474;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.1629478931427002 0.06139601394534111 
		0.091468125581741333 0.35101163387298584 0.2698763906955719 0.33114996552467346 
		0.95416104793548584 1;
	setAttr -s 8 ".koy[0:7]"  0.98663467168807983 0.99811351299285889 
		0.99580800533294678 -0.9363710880279541 -0.9628949761390686 -0.94357812404632568 
		0.29929366707801819 0;
createNode animCurveTA -n "animCurveTA1403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 102.95625951926647 5 105.95957893526717 
		8 64.683281231875426 13 38.902368184353904 20 46.028215497313965 28 13.971792327333231 
		32 13.971792327333231 35 8.5874521608419823;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.95393335819244385 0.37075638771057129 
		0.22215475142002106 0.77555161714553833 0.75435292720794678 0.5815887451171875 
		0.92759519815444946 1;
	setAttr -s 8 ".koy[0:7]"  0.30001857876777649 -0.92873013019561768 
		-0.97501140832901001 -0.63128411769866943 -0.65646904706954956 -0.81348294019699097 
		-0.37358686327934265 0;
createNode animCurveTA -n "animCurveTA1404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -117.50644899099053 5 -45.174218798558734 
		8 170.70529422282297 13 131.24767742134949 20 104.87204031107714 28 71.940124467203233 
		32 71.940124467203233 35 74.754744621954103;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.13088425993919373 0.05293833464384079 
		0.086281217634677887 0.3287738561630249 0.43495416641235352 0.57121819257736206 
		0.97854846715927124 1;
	setAttr -s 8 ".koy[0:7]"  0.9913976788520813 0.99859780073165894 
		0.99627083539962769 -0.94440865516662598 -0.90045261383056641 -0.82079821825027466 
		0.20601683855056763 0;
createNode animCurveTL -n "animCurveTL493";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.40893690716992881 5 0.40893690716992881 
		8 0.40832159183657263 13 0.41417634720942104 20 0.5784251870279965 28 0.54109241508440653 
		32 0.25672752771884622 35 0.31432036959158904;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 0.97439676523208618 0.45359057188034058 
		0.023508584126830101 0.039365578442811966 0.012433074414730072 0.010288789868354797 
		1;
	setAttr -s 8 ".koy[0:7]"  0 -0.22483548521995544 0.89121019840240479 
		0.99972361326217651 0.99922490119934082 -0.99992269277572632 -0.99994707107543945 
		0;
createNode animCurveTL -n "animCurveTL494";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.12719406676039863 5 0.12719406676039863 
		8 0.34148676540210121 13 1.2714863696182488 20 1.5757994787235023 24 1.852856300794276 
		28 2.0840853642745696 32 2.2599680717446877 35 2.2297686973003263;
	setAttr -s 9 ".kit[8]"  3;
	setAttr -s 9 ".kot[0:8]"  1 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kox[0:8]"  1 0.012443074956536293 0.0023304005153477192 
		0.0032406528480350971 0.0063068168237805367 0.0052463188767433167 0.0065500671043992043 
		0.016014419496059418 1;
	setAttr -s 9 ".koy[0:8]"  0 0.99992257356643677 0.99999725818634033 
		0.99999475479125977 0.99998009204864502 0.99998623132705688 0.99997854232788086 
		0.99987179040908813 0;
createNode animCurveTL -n "animCurveTL495";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -11.064538405151298 5 -11.064538405151298 
		8 -10.952171991835485 13 -10.663511799015557 20 -9.2598278139023602 28 -9.7828201376687467 
		32 -9.9684581272311092 35 -9.8173840400777301;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 0.023725204169750214 0.006649453192949295 
		0.002363578649237752 0.0056772641837596893 0.0056446022354066372 0.067354507744312286 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0.99971854686737061 0.99997788667678833 
		0.99999719858169556 0.99998390674591064 -0.99998408555984497 -0.99772912263870239 
		0;
createNode animCurveTA -n "animCurveTA1405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 6.2222396109735723 5 -6.5372440822527151 
		8 -13.415923298477477 13 -7.1745273171864916 20 -7.1745273171864916 28 -7.1745273171864916 
		32 -7.1745273171864916 35 16.226511010665412;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.59918385744094849 0.61405950784683228 
		0.99913126230239868 0.96486049890518188 1 1 0.49605482816696167 1;
	setAttr -s 8 ".koy[0:7]"  -0.80061149597167969 -0.78925973176956177 
		-0.041673853993415833 0.26276266574859619 0 0 0.86829119920730591 0;
createNode animCurveTA -n "animCurveTA1406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -16.600812933991165 5 33.540904637481454 
		8 16.2106257941441 13 -0.19171330230928069 20 -0.19171330230928069 28 -0.19171330230928069 
		32 -0.19171330230928069 35 -8.5139660854992858;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.18708363175392151 0.4221336841583252 
		0.41259106993675232 0.8131941556930542 1 1 0.84894967079162598 1;
	setAttr -s 8 ".koy[0:7]"  0.98234397172927856 0.90653359889984131 
		-0.91091632843017578 -0.581992506980896 0 0 -0.52847373485565186 0;
createNode animCurveTA -n "animCurveTA1407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -6.3965619146530344 5 -7.7131787541797099 
		8 -43.174913719412601 13 -84.135194758089753 20 -84.135194758089753 28 -84.135194758089753 
		32 -84.135194758089753 35 -68.213989601412422;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.99062854051589966 0.38364300131797791 
		0.19604793190956116 0.48828795552253723 1 1 0.64305675029754639 1;
	setAttr -s 8 ".koy[0:7]"  -0.13658368587493896 -0.92348146438598633 
		-0.98059433698654175 -0.87268257141113281 0 0 0.76581853628158569 0;
createNode animCurveTL -n "animCurveTL496";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.5351542341385696 5 1.5351542341385696 
		8 1.5351542341385696 13 1.5351542341385696 20 0.76335666271654945 28 0.84283887938673385 
		32 0.41075968401850405 35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 0.0051826364360749722 0.0072219539433717728 
		0.011343666352331638 0.0027684108354151249 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 -0.99998658895492554 -0.99997389316558838 
		-0.99993568658828735 -0.99999618530273438 0;
createNode animCurveTL -n "animCurveTL497";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.86667752871238668 5 -0.86667752871238668 
		8 -0.86667752871238668 13 -0.86667752871238668 20 -0.98971354823322388 28 
		-0.40898250074975151 32 -0.090837417432437742 35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 0.032493636012077332 0.010923652909696102 
		0.004449957050383091 0.0057051228359341621 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 -0.99947196245193481 0.99994033575057983 
		0.99999010562896729 0.99998372793197632 0;
createNode animCurveTL -n "animCurveTL498";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.1105508292219248 5 -1.1105508292219248 
		8 -1.1105508292219248 13 -1.1105508292219248 20 -1.3853793701552066 28 -1.7364290914334353 
		32 -2.074885275243552 35 -1;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 0.014552987180650234 0.0079885190352797508 
		0.0058011580258607864 0.0031684269197285175 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 -0.99989408254623413 -0.99996811151504517 
		-0.99998319149017334 0.99999499320983887 0;
createNode animCurveTL -n "animCurveTL499";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.61323488484053001 5 0.61323488484053001 
		8 0.61323488484053001 13 -0.94112536864419616 20 0.059297739431967304 28 
		-0.1054256201180812 32 -0.1054256201180812 35 -0.10167917362943303;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 0.0017156015383079648 0.0072208479978144169 
		0.0059829028323292732 0.024275980889797211 0.52866297960281372 1;
	setAttr -s 8 ".koy[0:7]"  0 0 -0.99999850988388062 -0.99997395277023315 
		0.99998211860656738 -0.99970531463623047 0.84883183240890503 0;
createNode animCurveTL -n "animCurveTL500";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.30801779867030882 5 0.30801779867030882 
		8 0.30801779867030882 13 -1.7164090297265964 20 -1.6344060470959079 28 0.16100782585718404 
		32 0.16100782585718404 35 -0.40762644910266188;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 0.0013172440230846405 0.0020592785440385342 
		0.0026632244698703289 0.002227892866358161 0.004103364422917366 1;
	setAttr -s 8 ".koy[0:7]"  0 0 -0.99999910593032837 -0.99999785423278809 
		0.99999648332595825 0.99999749660491943 -0.99999159574508667 0;
createNode animCurveTL -n "animCurveTL501";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.1649829693683946 5 -2.1649829693683946 
		8 -2.1649829693683946 13 -1.3358595042788244 20 -1.3374988005315946 28 -2.4330111785409452 
		32 -2.4330111785409452 35 -0.93129112588482255;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 0.0032162314746528864 0.0048338728956878185 
		0.0045572076924145222 0.0036512352526187897 0.0015537720173597336 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0.99999481439590454 0.99998831748962402 
		-0.99998962879180908 -0.99999332427978516 0.99999880790710449 0;
createNode animCurveTA -n "animCurveTA1408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 80.425561779386882 5 80.425561779386882 
		8 80.425561779386882 13 80.425561779386882 20 80.425561779386882 28 80.425561779386882 
		32 80.425561779386882 35 12.25373448967893;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.19244204461574554 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 -0.98130834102630615 
		0;
createNode animCurveTA -n "animCurveTA1409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -30.44506412614497 5 -30.44506412614497 
		8 -30.44506412614497 13 -30.44506412614497 20 -30.44506412614497 28 -30.44506412614497 
		32 -30.44506412614497 35 -65.746751280844975;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.35416135191917419 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 -0.93518435955047607 
		0;
createNode animCurveTA -n "animCurveTA1410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -71.256105225350495 5 -71.256105225350495 
		8 -71.256105225350495 13 -71.256105225350495 20 -71.256105225350495 28 -71.256105225350495 
		32 -71.256105225350495 35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.184401735663414 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0.98285096883773804 
		0;
createNode animCurveTA -n "animCurveTA1411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 43.141146641774462 5 43.141146641774462 
		8 43.141146641774462 13 43.141146641774462 20 43.141146641774462 28 43.141146641774462 
		32 43.141146641774462 35 -0.061808866237337577;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.29561656713485718 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 -0.95530664920806885 
		0;
createNode animCurveTA -n "animCurveTA1412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -34.275123249513904 5 -34.275123249513904 
		8 -34.275123249513904 13 -34.275123249513904 20 -34.275123249513904 28 -34.275123249513904 
		32 -34.275123249513904 35 -59.058178941076754;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.47476848959922791 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 -0.88011074066162109 
		0;
createNode animCurveTA -n "animCurveTA1413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -49.798186726856571 5 -49.798186726856571 
		8 -49.798186726856571 13 -49.798186726856571 20 -49.798186726856571 28 -49.798186726856571 
		32 -49.798186726856571 35 16.57914742975785;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.19744440913200378 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0.98031407594680786 
		0;
createNode animCurveTA -n "animCurveTA1414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 23.279099769107543 5 23.279099769107543 
		8 23.279099769107543 13 23.279099769107543 20 23.279099769107543 28 23.279099769107543 
		32 23.279099769107543 35 8.5572674112203604;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.67227435111999512 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 -0.74030208587646484 
		0;
createNode animCurveTA -n "animCurveTA1415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 21.701008910528319 5 21.701008910528319 
		8 21.701008910528319 13 21.701008910528319 20 21.701008910528319 28 21.701008910528319 
		32 21.701008910528319 35 15.711328223519061;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.91259407997131348 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 -0.40886685252189636 
		0;
createNode animCurveTA -n "animCurveTA1416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -11.431503848920924 5 -11.431503848920924 
		8 -11.431503848920924 13 -11.431503848920924 20 -11.431503848920924 28 -11.431503848920924 
		32 -11.431503848920924 35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.76003283262252808 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0.64988470077514648 
		0;
createNode animCurveTA -n "animCurveTA1417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 56.613259276433965 5 56.613259276433965 
		8 56.613259276433965 13 56.613259276433965 20 56.613259276433965 28 56.613259276433965 
		32 56.613259276433965 35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.22982516884803772 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 -0.97323191165924072 
		0;
createNode animCurveTA -n "animCurveTA1418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 13.131642679464067 5 13.131642679464067 
		8 13.131642679464067 13 13.131642679464067 20 13.131642679464067 28 13.131642679464067 
		32 13.131642679464067 35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.71341186761856079 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 -0.70074498653411865 
		0;
createNode animCurveTA -n "animCurveTA1419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -35.828077252198852 5 -35.828077252198852 
		8 -35.828077252198852 13 -35.828077252198852 20 -35.828077252198852 28 -35.828077252198852 
		32 -35.828077252198852 35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.34959807991981506 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0.93689978122711182 
		0;
createNode animCurveTA -n "animCurveTA1420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 7.8286751959834691 5 7.8286751959834691 
		8 7.8286751959834691 13 7.8286751959834691 20 7.8286751959834691 28 7.8286751959834691 
		32 7.8286751959834691 35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.86293256282806396 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 -0.50531911849975586 
		0;
createNode animCurveTA -n "animCurveTA1421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -17.722466912710736 5 -17.722466912710736 
		8 -17.722466912710736 13 -17.722466912710736 20 -17.722466912710736 28 -17.722466912710736 
		32 -17.722466912710736 35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.60222232341766357 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0.7983284592628479 
		0;
createNode animCurveTA -n "animCurveTA1422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -36.628454700917274 5 -36.628454700917274 
		8 -36.628454700917274 13 -36.628454700917274 20 -36.628454700917274 28 -36.628454700917274 
		32 -36.628454700917274 35 10.423754966968488;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.27331322431564331 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0.96192508935928345 
		0;
createNode animCurveTA -n "animCurveTA1423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 15.180891733866945 5 15.180891733866945 
		8 15.180891733866945 13 15.180891733866945 20 15.180891733866945 28 15.180891733866945 
		32 15.180891733866945 35 27.7228482558439;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.7293056845664978 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0.68418800830841064 
		0;
createNode animCurveTA -n "animCurveTA1424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.072787087017037025 5 -0.072787087017037025 
		8 -0.072787087017037025 13 -0.072787087017037025 20 -0.072787087017037025 
		28 -0.072787087017037025 32 -0.072787087017037025 35 21.576484776388224;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.52541905641555786 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0.85084354877471924 
		0;
createNode animCurveTA -n "animCurveTA1425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 8 0 13 0 20 0 28 0 32 0 
		35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 8 0 13 0 20 0 28 0 32 0 
		35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 16.091928124335652 5 16.091928124335652 
		8 16.091928124335652 13 16.091928124335652 20 16.091928124335652 28 16.091928124335652 
		32 16.091928124335652 35 27.080064458283051;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.77254354953765869 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0.63496178388595581 
		0;
createNode animCurveTA -n "animCurveTA1428";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1429";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1430";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  3;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA1431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 35 13.994403295754109;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1434";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1435";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 35 0;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1436";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 9 0 35 13.994403295754109;
	setAttr -s 3 ".kit[1:2]"  1 3;
	setAttr -s 3 ".kot[1:2]"  1 3;
	setAttr -s 3 ".kix[1:2]"  1 1;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA1437";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 8 0 13 0 20 0 28 0 32 0 
		35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1438";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 8 0 13 0 20 0 28 0 32 0 
		35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1439";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 14.532113898241397 5 14.532113898241397 
		8 14.532113898241397 13 14.532113898241397 20 14.532113898241397 28 14.532113898241397 
		32 14.532113898241397 35 27.911632519594587;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.70682907104492188 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0.70738440752029419 
		0;
createNode animCurveTA -n "animCurveTA1440";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 8 0 13 0 20 0 28 0 32 0 
		35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 8 0 13 0 20 0 28 0 32 0 
		35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 8 0 13 0 20 0 28 0 32 0 
		35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 21.857236856166011 5 25.182403057136021 
		8 10.353988397454893 13 -1.7276226073468004 20 6.7455489639733548 28 20.277075600184013 
		32 3.4078489201288638 35 -0.65073001024951671;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.94438409805297852 0.79889202117919922 
		0.49374279379844666 0.98783087730407715 0.79305374622344971 0.98956102132797241 
		0.53834563493728638 1;
	setAttr -s 8 ".koy[0:7]"  0.32884451746940613 -0.60147452354431152 
		-0.86960798501968384 -0.1555318683385849 0.60915166139602661 -0.14411436021327972 
		-0.84272414445877075 0;
createNode animCurveTA -n "animCurveTA1444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.424565788311519 5 -2.7986050620696732 
		8 13.636796759724684 13 29.186347646377193 20 7.1131132412255109 28 -3.0222931473002332 
		32 0.55199244044544371 35 -4.2368721935960938;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.87733638286590576 0.80621063709259033 
		0.43103581666946411 0.96179401874542236 0.66459691524505615 0.96137940883636475 
		0.99589848518371582 1;
	setAttr -s 8 ".koy[0:7]"  -0.47987592220306396 0.59162861108779907 
		0.90233480930328369 -0.27377408742904663 -0.74720209836959839 -0.27522647380828857 
		-0.090477675199508667 0;
createNode animCurveTA -n "animCurveTA1445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 22.217726072149194 5 30.050270735230335 
		8 29.927438562629995 13 23.078163197910449 20 16.960049618279136 28 -1.1628621353162956 
		32 -3.0598335407821926 35 9.4592235793901782;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.77318358421325684 0.89277863502502441 
		0.90975618362426758 0.87034213542938232 0.76337963342666626 0.75312429666519165 
		0.78295356035232544 1;
	setAttr -s 8 ".koy[0:7]"  0.63418227434158325 0.45049566030502319 
		-0.41514301300048828 -0.49244749546051025 -0.6459500789642334 -0.65787827968597412 
		0.62208020687103271 0;
createNode animCurveTA -n "animCurveTA1446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -11.623795089125478 5 26.113934241252228 
		8 26.113934241252228 13 -1.9746929119720531 20 -6.8143661471538488 28 0 32 
		0 35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.24531179666519165 0.37527883052825928 
		0.4778347909450531 0.57126045227050781 0.99763280153274536 0.95852702856063843 
		1 1;
	setAttr -s 8 ".koy[0:7]"  0.96944421529769897 0.92691195011138916 
		-0.87844973802566528 -0.82076883316040039 0.068766608834266663 0.28500154614448547 
		0 0;
createNode animCurveTA -n "animCurveTA1447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -5.1801351848586021 5 8.7826801139279418 
		8 8.7826801139279418 13 18.812029296779027 20 9.3700603770199677 28 0 32 
		0 35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.56451445817947388 0.73818379640579224 
		0.83598291873931885 0.99967175722122192 0.83588922023773193 0.92562639713287354 
		1 1;
	setAttr -s 8 ".koy[0:7]"  0.82542318105697632 0.67459964752197266 
		0.54875540733337402 0.025620885193347931 -0.54889816045761108 -0.37843865156173706 
		0 0;
createNode animCurveTA -n "animCurveTA1448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 27.974704293083807 5 8.293034631871997 
		8 8.293034631871997 13 13.264070726725393 20 6.0213474136075966 28 0 32 0 
		35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.43652030825614929 0.61321288347244263 
		0.95093518495559692 0.99512338638305664 0.90745288133621216 0.96717613935470581 
		1 1;
	setAttr -s 8 ".koy[0:7]"  -0.89969438314437866 -0.7899177074432373 
		0.30939015746116638 -0.098637685179710388 -0.42015379667282104 -0.25410699844360352 
		0 0;
createNode animCurveTA -n "animCurveTA1449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 23.086919043348587 5 23.086919043348587 
		8 14.149171459883778 13 14.149171459883778 20 -5.682735448218609 28 9.4009536519901662 
		32 -1.5519492870758493 35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 0.86316180229187012 0.86316180229187012 
		0.75618904829025269 0.98654115200042725 0.98414218425750732 0.81800425052642822 
		1;
	setAttr -s 8 ".koy[0:7]"  0 -0.50492739677429199 -0.50492739677429199 
		-0.65435320138931274 -0.16351333260536194 0.17738133668899536 -0.57521218061447144 
		0;
createNode animCurveTA -n "animCurveTA1450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 8.6912145029969565 5 8.6912145029969565 
		8 21.509008369055529 13 21.509008369055529 20 10.732867158473676 28 9.8989377842253461 
		32 0.65263455103174239 35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 0.76611119508743286 0.76611119508743286 
		0.90495479106903076 0.92678362131118774 0.9153713583946228 0.80367320775985718 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0.64270806312561035 0.64270806312561035 
		-0.42550778388977051 -0.37559568881988525 -0.40261062979698181 -0.59507083892822266 
		0;
createNode animCurveTA -n "animCurveTA1451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 22.489414651394924 5 22.489414651394924 
		8 -13.533960150931035 13 -13.533960150931035 20 -4.6923413503263918 28 24.924096060835971 
		32 22.25497385635019 35 13.828138835879257;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 0.39046820998191833 0.39046820998191833 
		0.93297845125198364 0.5973857045173645 0.64786326885223389 0.76949042081832886 
		1;
	setAttr -s 8 ".koy[0:7]"  0 -0.92061638832092285 -0.92061638832092285 
		0.35993227362632751 0.80195409059524536 0.76175659894943237 -0.63865834474563599 
		0;
createNode animCurveTA -n "animCurveTA1452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 7.2864915402669999 5 15.200251842079796 
		8 15.200251842079796 13 15.200251842079796 20 -6.8946695777939304 28 -5.9024034959756859 
		32 -2.1697270203627177 35 -1.890577912487224;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.76996272802352905 0.88795912265777588 
		1 0.71992087364196777 0.80514061450958252 0.97940242290496826 0.95780420303344727 
		1;
	setAttr -s 8 ".koy[0:7]"  0.6380888819694519 0.45992234349250793 
		0 -0.69405615329742432 -0.59308397769927979 0.20191802084445953 0.28742155432701111 
		0;
createNode animCurveTA -n "animCurveTA1453";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.33252079700716181 5 -6.9262136976339779 
		8 -6.9262136976339779 13 -6.9262136976339779 20 -0.49927989082254393 28 -3.6044668838783798 
		32 -0.62114087205603097 35 2.5602510346124587;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.82289165258407593 0.91814988851547241 
		1 0.9628569483757019 0.99334472417831421 0.99998587369918823 0.90810400247573853 
		1;
	setAttr -s 8 ".koy[0:7]"  -0.56819838285446167 -0.39623326063156128 
		0 0.27001196146011353 0.1151791512966156 -0.0053171133622527122 0.41874474287033081 
		0;
createNode animCurveTA -n "animCurveTA1454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 17.435740369561156 5 26.248069352363252 
		8 26.248069352363252 13 26.248069352363252 20 15.192539086914786 28 -11.989991991927884 
		32 -5.3188554028224182 35 -12.605441061780656;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  0.73489576578140259 0.8662446141242981 
		1 0.90068209171295166 0.59958928823471069 0.74515187740325928 0.99894207715988159 
		1;
	setAttr -s 8 ".koy[0:7]"  0.67818009853363037 0.49962010979652405 
		0 -0.43447870016098022 -0.80030786991119385 -0.66689479351043701 -0.045986779034137726 
		0;
createNode animCurveTA -n "animCurveTA1455";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 8 0 13 0 20 0 28 0 32 0 
		35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 8 0 13 0 20 0 28 0 32 0 
		35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1457";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 30.900736939420714 5 30.900736939420714 
		8 30.900736939420714 13 30.900736939420714 20 30.900736939420714 28 30.900736939420714 
		32 30.900736939420714 35 33.429092416277157;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.98258256912231445 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0.18582655489444733 
		0;
createNode animCurveTA -n "animCurveTA1458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -19.916813043140671 5 -19.916813043140671 
		8 -19.916813043140671 13 -19.916813043140671 20 -19.916813043140671 28 -19.916813043140671 
		32 -19.916813043140671 35 8.2533422302317216;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.42874780297279358 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0.90342420339584351 
		0;
createNode animCurveTA -n "animCurveTA1459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.1381503000571311 5 2.1381503000571311 
		8 2.1381503000571311 13 2.1381503000571311 20 2.1381503000571311 28 2.1381503000571311 
		32 2.1381503000571311 35 23.263402056531085;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.53475767374038696 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0.84500545263290405 
		0;
createNode animCurveTA -n "animCurveTA1460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -6.3333534086058831 5 -6.3333534086058831 
		8 -6.3333534086058831 13 -6.3333534086058831 20 -6.3333534086058831 28 -6.3333534086058831 
		32 -6.3333534086058831 35 20.166277752815617;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 0.45042350888252258 
		1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0.8928149938583374 
		0;
createNode animCurveTA -n "animCurveTA1461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 8 0 13 0 20 0 28 0 32 0 
		35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 5 0 8 0 13 0 20 0 28 0 32 0 
		35 0;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA1463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -15.187381016197607 5 -15.187381016197607 
		8 -15.187381016197607 13 11.134655404486939 20 18.672122128948278 28 18.492117092440775 
		32 10.378026720255692 35 17.254116939558369;
	setAttr -s 8 ".kit[7]"  3;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kox[0:7]"  1 1 0.50201535224914551 0.56053340435028076 
		0.96856743097305298 0.94031727313995361 0.99573981761932373 1;
	setAttr -s 8 ".koy[0:7]"  0 0 0.86485868692398071 0.82813179492950439 
		0.24875122308731079 -0.3402990996837616 -0.092207692563533783 0;
createNode animCurveTA -n "animCurveTA1464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 8.333784099691627 10 9.1688015513944343 
		18 9.0344679315770247 26 3.5378204314546844 35 0;
createNode animCurveTA -n "animCurveTA1465";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 15.119759976809316 10 15.976140201054479 
		18 6.5744482821499712 26 1.4994669188313912 35 0;
createNode animCurveTA -n "animCurveTA1466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 8.911332733543377 10 12.669135922923344 
		18 15.650919463749666 26 -2.7135081695766092 35 0;
createNode animCurveTA -n "animCurveTA1467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 8.333784099691627 10 9.1688015513944343 
		18 9.0344679315770247 26 3.5378204314546844 35 0;
createNode animCurveTA -n "animCurveTA1468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 15.119759976809316 10 15.976140201054479 
		18 6.5744482821499712 26 1.4994669188313912 35 0;
createNode animCurveTA -n "animCurveTA1469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 8.911332733543377 10 12.669135922923344 
		18 15.650919463749666 26 -2.7135081695766092 35 0;
createNode animCurveTA -n "animCurveTA1470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 8.333784099691627 10 9.1688015513944343 
		18 9.0344679315770247 26 3.5378204314546844 35 0;
createNode animCurveTA -n "animCurveTA1471";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 15.119759976809316 10 15.976140201054479 
		18 6.5744482821499712 26 1.4994669188313912 35 0;
createNode animCurveTA -n "animCurveTA1472";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 8.911332733543377 10 12.669135922923344 
		18 15.650919463749666 26 -2.7135081695766092 35 0;
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
	setAttr ".o" 35;
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
connectAttr "mrg_get_upSource.st" "clipLibrary1.st[0]";
connectAttr "mrg_get_upSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL461.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL462.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL463.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL464.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL465.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA1345.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU73.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU74.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU75.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU76.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU77.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU78.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU79.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU80.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA1346.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1347.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1348.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL466.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL467.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL468.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL469.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL470.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL471.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1349.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1350.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1351.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL472.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL473.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL474.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1352.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1353.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1354.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1355.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1356.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1357.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1358.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1359.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1360.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA1361.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA1362.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA1363.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA1364.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA1365.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA1366.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL475.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL476.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL477.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL478.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL479.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL480.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL481.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL482.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL483.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1367.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1368.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1369.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1370.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1371.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1372.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1373.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1374.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1375.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1376.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1377.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1378.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1379.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1380.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1381.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1382.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1383.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1384.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1385.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1386.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1387.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1388.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1389.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA1390.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA1391.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA1392.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1393.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1394.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1395.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL484.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL485.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL486.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA1396.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA1397.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1398.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL487.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL488.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL489.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1399.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1400.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1401.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL490.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL491.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL492.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1402.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1403.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1404.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL493.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL494.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL495.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1405.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1406.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1407.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL496.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL497.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL498.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL499.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL500.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL501.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1408.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1409.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1410.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1411.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1412.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1413.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1414.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1415.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1416.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1417.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1418.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1419.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1420.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1421.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1422.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1423.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1424.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1425.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1426.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1427.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1428.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1429.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1430.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1431.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1432.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1433.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1434.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1435.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1436.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1437.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1438.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1439.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1440.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1441.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1442.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1443.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1444.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1445.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1446.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1447.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1448.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1449.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1450.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1451.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1452.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1453.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1454.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1455.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1456.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1457.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1458.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1459.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1460.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1461.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1462.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1463.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr "animCurveTA1464.a" "clipLibrary1.cel[0].cev[168].cevr";
connectAttr "animCurveTA1465.a" "clipLibrary1.cel[0].cev[169].cevr";
connectAttr "animCurveTA1466.a" "clipLibrary1.cel[0].cev[170].cevr";
connectAttr "animCurveTA1467.a" "clipLibrary1.cel[0].cev[171].cevr";
connectAttr "animCurveTA1468.a" "clipLibrary1.cel[0].cev[172].cevr";
connectAttr "animCurveTA1469.a" "clipLibrary1.cel[0].cev[173].cevr";
connectAttr "animCurveTA1470.a" "clipLibrary1.cel[0].cev[174].cevr";
connectAttr "animCurveTA1471.a" "clipLibrary1.cel[0].cev[175].cevr";
connectAttr "animCurveTA1472.a" "clipLibrary1.cel[0].cev[176].cevr";
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
// End of mrg_get_up.ma
