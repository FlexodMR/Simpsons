//Maya ASCII 4.0 scene
//Name: brt_get_up.ma
//Last modified: Tue, May 27, 2003 01:45:46 PM
requires maya "4.0";
requires "p3dDeformer" "2.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_get_upSource";
	setAttr ".ihi" 0;
	setAttr ".du" 25;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 -0.00016076677203433288 2 
		-0.00042871139209155445 3 -0.00048230031610299866 4 0 5 0.0016216789461657598 
		6 0.0040386696126343434 7 0.0061511710939120313 8 0.0068593824845051147 9 
		0.0054119199601776807 10 0.0025480452100783029 11 -0.00059607440121001805 
		12 -0.0028842715091042925 13 -0.0038793695183061312 14 -0.0042320572724008181 
		15 -0.0044379655651308461 16 -0.0049927251902387084 17 -0.0060258377679115113 
		18 -0.007276094576762415 19 -0.0086530608981729897 20 -0.010066302013524809 
		21 -0.011425383204199438 22 -0.012639869751578452 23 -0.013619326937043423 
		24 -0.014273320041975922 25 -0.014511414347757514;
createNode animCurveTL -n "animCurveTL115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 -0.00067134698834303249 2 
		-0.0017902586355814198 3 -0.0020140409650290978 4 0 5 0.0015066782114426507 
		6 0.0028243029514085603 7 0.0098908111918431969 8 0.028644139904692022 9 
		0.06677601837913702 10 0.11908345406601172 11 0.1721623011797388 12 0.21260841393474106 
		13 0.23722721762764237 14 0.25304096968891204 15 0.26197077253374074 16 0.26593772857731912 
		17 0.26673636118580363 18 0.26526739060405741 19 0.26211121456533093 20 0.25784823080287489 
		21 0.25305883704993976 22 0.24832343103977628 23 0.24422241050563501 24 0.24133617318076639 
		25 0.24024511679842114;
createNode animCurveTA -n "animCurveTA360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 20 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTU -n "animCurveTU16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 20 1;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  5;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
createNode animCurveTA -n "animCurveTA361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL120";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.34830366363129989 4 -0.34830366363129989 
		8 -0.34830366363129989 12 -0.34830366363129989 16 -0.33963581116494118 20 
		-0.26454016861507795 25 -0.26454016861507795;
	setAttr -s 7 ".kit[1:6]"  9 3 3 1 3 3;
	setAttr -s 7 ".kot[1:6]"  9 3 3 1 3 3;
	setAttr -s 7 ".kix[4:6]"  0.049720399081707001 1 1;
	setAttr -s 7 ".kiy[4:6]"  0.99876320362091064 0 0;
	setAttr -s 7 ".kox[4:6]"  0.049720749258995056 1 1;
	setAttr -s 7 ".koy[4:6]"  0.99876314401626587 0 0;
createNode animCurveTL -n "animCurveTL121";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.19118070920231398 4 0.19118070920231398 
		8 0.19118070920231398 12 0.19118070920231398 16 0.30921459219363578 20 0.20622279350478459 
		25 0.20622279350478459;
	setAttr -s 7 ".kit[1:6]"  9 9 3 9 3 3;
	setAttr -s 7 ".kot[1:6]"  9 9 3 9 3 3;
createNode animCurveTL -n "animCurveTL122";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.61366616620862924 4 0.48411087640663392 
		8 0.28305524394645526 12 0.28305524394645526 16 0.43558947224608441 20 0.44852454216305143 
		25 0.44852454216305143;
	setAttr -s 7 ".kit[1:6]"  1 3 3 1 3 3;
	setAttr -s 7 ".kot[1:6]"  1 3 3 1 3 3;
	setAttr -s 7 ".kix[1:6]"  0.005552009679377079 1 1 0.030785135924816132 
		1 1;
	setAttr -s 7 ".kiy[1:6]"  -0.99998456239700317 0 0 0.99952602386474609 
		0 0;
	setAttr -s 7 ".kox[1:6]"  0.0055520595051348209 1 1 0.030785093083977699 
		1 1;
	setAttr -s 7 ".koy[1:6]"  -0.99998456239700317 0 0 0.99952602386474609 
		0 0;
createNode animCurveTA -n "animCurveTA364";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -3.3595522507325413 4 -3.3595522507325413 
		8 -3.3595522507325413 12 -3.3595522507325413 16 20.564032674941206 20 14.204607168169733 
		25 0;
	setAttr -s 7 ".kit[1:6]"  9 3 3 9 1 3;
	setAttr -s 7 ".kot[1:6]"  9 3 3 9 1 3;
	setAttr -s 7 ".kix[5:6]"  0.36772450804710388 1;
	setAttr -s 7 ".kiy[5:6]"  -0.9299347996711731 0;
	setAttr -s 7 ".kox[5:6]"  0.36772450804710388 1;
	setAttr -s 7 ".koy[5:6]"  -0.9299347996711731 0;
createNode animCurveTA -n "animCurveTA365";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -4.9396511688497009 4 -4.9396511688497009 
		8 -4.9396511688497009 12 -4.9396511688497009 16 -4.9396511688496991 20 -25.948901905116422 
		25 -25.948901905116408;
	setAttr -s 7 ".kit[1:6]"  9 9 3 3 3 3;
	setAttr -s 7 ".kot[1:6]"  9 9 3 3 3 3;
createNode animCurveTA -n "animCurveTA366";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.4972445100027127 4 1.4972445100027127 
		8 1.4972445100027127 12 1.4972445100027127 16 1.4972445100027136 20 0 25 
		0;
	setAttr -s 7 ".kit[1:6]"  9 9 3 3 3 3;
	setAttr -s 7 ".kot[1:6]"  9 9 3 3 3 3;
createNode animCurveTL -n "animCurveTL123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.29827657820566539 4 0.29827657820566539 
		8 0.29827657820566539 12 0.29523899488201499 16 0.28620923302641121 25 0.27111119927531208;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.19600000000000001 4 0.19600000000000001 
		8 0.19600000000000001 12 0.19600000000000001 16 0.19600000000000001 25 0.19600000000000001;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.56908316334555242 4 0.56908316334555242 
		8 0.56908316334555242 12 0.56908316334555242 16 0.569 25 0.569;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.022973885644723264 4 -0.022973885644723264 
		8 -0.022973885644723264 12 -0.022973885644723264 16 -0.022973885644723264 
		25 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -4.6882558815768487 4 -4.6882558815768487 
		8 -4.6882558815768487 12 -4.6882558815768487 16 -4.6882558815768487 25 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.1661347217551114 4 -0.1661347217551114 
		8 -0.1661347217551114 12 -0.1661347217551114 16 -0.1661347217551114 25 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA378";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.22333560679749456 4 -0.22333560679749456 
		8 -0.22333560679749456 12 -0.22333560679749456 16 -0.22333560679749456 25 
		0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.0047180449320975452 4 0.0047180449320975452 
		8 0.0047180449320975452 12 0.0047180449320975452 16 0.0047180449320975452 
		25 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.0196125091168922 4 1.0196125091168922 
		8 1.0196125091168922 12 1.0196125091168922 16 1.0196125091168922 25 1;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.22315575876557764 4 0.22315575876557764 
		8 0.22315575876557764 12 0.22315575876557764 16 0.22315575876557764 25 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.0006565739970363771 4 0.0006565739970363771 
		8 0.0006565739970363771 12 0.0006565739970363771 16 0.0006565739970363771 
		25 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.98169956815627235 4 0.98169956815627235 
		8 0.98169956815627235 12 0.98169956815627235 16 0.98169956815627235 25 1;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 8 0.015482768190602196 
		12 -0.0065102809582489665 16 -0.011269411923662868 25 -0.03275467798619458;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.37858032454604201 4 0.37858032454604201 
		8 0.50817395111050712 12 0.8212173724210371 16 0.94111562983686203 25 0.9436039913481804;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 8 0.064654592328878019 
		12 0.47989258446501182 16 0.60026572566830405 25 0.54227322367816133;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -51.320485913586587 4 -47.084392996658295 
		8 -37.434236146350521 12 5.997296876873583 16 5.997296876873583 25 -0.6284363031647453;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.88499592456957277 4 18.605507114253399 
		8 24.00532755117198 12 6.4232956499095568 16 6.4232956499095568 25 -5.8284402688137167;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.88511203159019147 4 -16.646029342208241 
		8 -24.108400976826566 12 1.1722599684416786 16 1.1722599684416786 25 -1.295636019309746;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 4.0984482521620249 19.995000000000001 
		4.0984482521620249 20 0 21 0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 0.0023303497582674026 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 -0.99999725818634033 0 0;
createNode animCurveTA -n "animCurveTA388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 18.588300303494186 19.995000000000001 
		18.588300303494186 20 0 21 0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 0.0005138093838468194 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 -0.99999988079071045 0 0;
createNode animCurveTA -n "animCurveTA389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -22.686733334985114 19.995000000000001 
		-22.686733334985114 20 0 21 0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 0.00042098804260604084 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0.99999994039535522 0 0;
createNode animCurveTA -n "animCurveTA392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.0579251312417477e-005 19.995000000000001 
		1.0579251312417477e-005 20 0 21 0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 0.99999940395355225 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 -0.0011076764203608036 0 0;
createNode animCurveTA -n "animCurveTA395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA396";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 4.0984482535121209 19.995000000000001 
		4.0984482535121209 20 0 21 0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 0.0023303497582674026 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 -0.99999725818634033 0 0;
createNode animCurveTA -n "animCurveTA398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 18.588300300216801 19.995000000000001 
		18.588300300216801 20 0 21 0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 0.0005138093838468194 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 -0.99999988079071045 0 0;
createNode animCurveTA -n "animCurveTA399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -22.686733333057838 19.995000000000001 
		-22.686733333057838 20 0 21 0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 0.00042098804260604084 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0.99999994039535522 0 0;
createNode animCurveTA -n "animCurveTA402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.0579251312417477e-005 19.995000000000001 
		1.0579251312417477e-005 20 0 21 0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 0.99999940395355225 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 -0.0011076764203608036 0 0;
createNode animCurveTA -n "animCurveTA405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.4782236286598103 19.995000000000001 
		2.4782236286598103 20 0 21 0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 0.0038538787048310041 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 -0.99999254941940308 0 0;
createNode animCurveTA -n "animCurveTA408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL135";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.69163884744780491 19.995000000000001 
		-0.69163884744780491 20 -0.69163884744780491 21 -0.69163884744780491 22 -0.69163884744780491;
	setAttr -s 5 ".kit[3:4]"  9 1;
	setAttr -s 5 ".kot[1:4]"  9 9 9 5;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 0;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL136";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.24376503020897994 19.995000000000001 
		0.24376503020897994 20 0.24376503020897994 21 0.24376503020897994 22 0.24376503020897994;
	setAttr -s 5 ".kit[3:4]"  9 1;
	setAttr -s 5 ".kot[1:4]"  9 9 9 5;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 0;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL137";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.44841910314659961 19.995000000000001 
		0.44841910314659961 20 0.44841910314659961 21 0.44841910314659961 22 0.44841910314659961;
	setAttr -s 5 ".kit[3:4]"  9 1;
	setAttr -s 5 ".kot[1:4]"  9 9 9 5;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 0;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA411";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -70.759742713658724 19.995000000000001 
		-70.759742713658724 20 0 21 0 22 0;
	setAttr -s 5 ".kit[3:4]"  9 1;
	setAttr -s 5 ".kot[1:4]"  9 9 9 5;
	setAttr -s 5 ".kix[0:4]"  1 1 0.00013497567852027714 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 1 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.47502300143241882 0.027115741744637489 
		1 0;
	setAttr -s 5 ".koy[0:4]"  0 0.87997335195541382 0.99963229894638062 
		0 0;
createNode animCurveTA -n "animCurveTA412";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 26.623081280451796 19.995000000000001 
		26.623081280451796 20 0 21 0 22 0;
	setAttr -s 5 ".kit[3:4]"  9 1;
	setAttr -s 5 ".kot[1:4]"  9 9 9 5;
	setAttr -s 5 ".kix[0:4]"  1 1 0.00035874295281246305 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 -0.99999994039535522 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.82039010524749756 0.071909017860889435 
		1 0;
	setAttr -s 5 ".koy[0:4]"  0 -0.5718042254447937 -0.99741119146347046 
		0 0;
createNode animCurveTA -n "animCurveTA413";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -49.096653183739221 19.995000000000001 
		-49.096653183739221 20 0 21 0 22 0;
	setAttr -s 5 ".kit[3:4]"  9 1;
	setAttr -s 5 ".kot[1:4]"  9 9 9 5;
	setAttr -s 5 ".kix[0:4]"  1 1 0.00019453145796433091 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 1 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.61404979228973389 0.039064649492502213 
		1 0;
	setAttr -s 5 ".koy[0:4]"  0 0.78926730155944824 0.99923670291900635 
		0 0;
createNode animCurveTL -n "animCurveTL138";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.71012400136723108 19.995000000000001 
		0.71012400136723108 20 0.71012400136723108 21 0.71012400136723108 22 0.71012400136723108;
	setAttr -s 5 ".kit[3:4]"  9 1;
	setAttr -s 5 ".kot[1:4]"  9 9 9 5;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 0;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL139";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.47076628974155943 19.995000000000001 
		0.47076628974155943 20 0.47076628974155943 21 0.47076628974155943 22 0.47076628974155943;
	setAttr -s 5 ".kit[3:4]"  9 1;
	setAttr -s 5 ".kot[1:4]"  9 9 9 5;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 0;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "animCurveTL140";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.075519476331700308 19.995000000000001 
		0.075519476331700308 20 0.075519476331700308 21 0.075519476331700308 22 0.075519476331700308;
	setAttr -s 5 ".kit[3:4]"  9 1;
	setAttr -s 5 ".kot[1:4]"  9 9 9 5;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 0;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "animCurveTA414";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -78.56043550230747 19.995000000000001 
		-78.56043550230747 20 0 21 0 22 0;
	setAttr -s 5 ".kit[3:4]"  9 1;
	setAttr -s 5 ".kot[1:4]"  9 9 9 5;
	setAttr -s 5 ".kix[0:4]"  1 1 0.00012157321179984137 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 1 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.43726757168769836 0.024424966424703598 
		1 0;
	setAttr -s 5 ".koy[0:4]"  0 0.89933145046234131 0.99970167875289917 
		0 0;
createNode animCurveTA -n "animCurveTA415";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -29.584258420035471 19.995000000000001 
		-29.584258420035471 20 0 21 0 22 0;
	setAttr -s 5 ".kit[3:4]"  9 1;
	setAttr -s 5 ".kot[1:4]"  9 9 9 5;
	setAttr -s 5 ".kix[0:4]"  1 1 0.00032283531618304551 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0.99999994039535522 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.79060101509094238 0.064743265509605408 
		1 0;
	setAttr -s 5 ".koy[0:4]"  0 0.61233162879943848 0.99790197610855103 
		0 0;
createNode animCurveTA -n "animCurveTA416";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 60.925944603873425 19.995000000000001 
		60.925944603873425 20 0 21 0 22 0;
	setAttr -s 5 ".kit[3:4]"  9 1;
	setAttr -s 5 ".kot[1:4]"  9 9 9 5;
	setAttr -s 5 ".kix[0:4]"  1 1 0.0001567615254316479 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 -1 0 0;
	setAttr -s 5 ".kox[0:4]"  1 0.53118312358856201 0.031488336622714996 
		1 0;
	setAttr -s 5 ".koy[0:4]"  0 -0.84725701808929443 -0.99950414896011353 
		0 0;
createNode animCurveTL -n "animCurveTL141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.69415268877966596 4 -0.74125000457812351 
		8 -0.82118920978498255 12 -0.89052255408902525 16 -0.82277864146671942 25 
		-0.8448236677023373;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.25677228768617871 4 0.46671762609042722 
		8 0.8019622710548443 12 0.94215256812709836 16 1.0724436222146039 25 1.0472630586388578;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.48330116611231805 4 -0.28302123618346881 
		8 0.095704966686430637 12 0.73728623921252312 16 0.88792299624988258 25 0.60335240108973542;
	setAttr -s 6 ".kit[0:5]"  3 1 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 1 9 9 9 3;
	setAttr -s 6 ".kix[1:5]"  0.0042539113201200962 0.0026135824155062437 
		0.0033660577610135078 0.032337363809347153 1;
	setAttr -s 6 ".kiy[1:5]"  0.99999094009399414 0.9999966025352478 
		0.99999433755874634 -0.99947702884674072 0;
	setAttr -s 6 ".kox[1:5]"  0.0042539243586361408 0.0026135824155062437 
		0.0033660577610135078 0.032337363809347153 1;
	setAttr -s 6 ".koy[1:5]"  0.99999094009399414 0.9999966025352478 
		0.99999433755874634 -0.99947702884674072 0;
createNode animCurveTA -n "animCurveTA417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -9.8212427008227472 4 -28.483866458076022 
		8 -28.458581089885694 12 4.4195540109747071 16 4.4195540109747071 25 5.4739599453216483;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.8589084522817103 4 -8.8236837048491026 
		8 7.5672582180134444 12 23.284568026430907 16 23.284568026430907 25 8.5874521608419823;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 4.296053949957793 4 36.440181907545266 
		8 16.029264831094771 12 49.263706929168556 16 49.263706929168556 25 74.754744621954117;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.83980188004008882 4 0.83980188004008882 
		8 0.84209370427817709 12 0.94320402038398987 16 0.86815712052135141 25 0.67259028727877612;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.18904845089899242 4 0.18904845089899242 
		8 0.27575824687906592 12 1.040930052638158 16 1.1314781271979257 25 1.0017764759064578;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.59139316849769696 4 -0.59139316849769696 
		8 -0.56527861889078845 12 0.65530135050345584 16 0.89612273203650561 25 0.85405084378292784;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -47.334284439592878 4 -45.75970025673773 
		8 -58.551617424345764 12 -3.1183112600786194 16 20.525887924227419 25 16.226511010665412;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 37.043101738907701 4 44.88918040480366 
		8 18.668585756318439 12 14.388843921184653 16 -13.356807039857225 25 -8.5139660854992858;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -52.740024725895566 4 -51.793825864439455 
		8 -75.217266398404291 12 -80.577686736524583 16 -71.348221520869714 25 -68.213989601412422;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.99925943057965894 4 0.99925943057965894 
		8 0.99925943057965894 12 0.99925943057965894 16 0.99925943057965894 25 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.1241231302067372 4 -1.1241231302067372 
		8 -1.1241231302067372 12 -1.1241231302067372 16 -1.1241231302067372 25 0;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.0075305717115923 4 -2.0075305717115923 
		8 -2.0075305717115923 12 -2.0075305717115923 16 -2.0075305717115923 25 -1;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.59788775323863297 4 -0.59788775323863297 
		8 -0.59788775323863297 12 -0.59788775323863297 16 -0.59788775323863297 25 
		-0.101679173629433;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.6361478719279683 4 -1.6361478719279683 
		8 -1.6361478719279683 12 -1.6361478719279683 16 -1.6361478719279683 25 -0.40762644910266188;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -2.2967427684127548 4 -2.2967427684127548 
		8 -2.2967427684127548 12 -2.2967427684127548 16 -2.2967427684127548 25 -0.93129112588482255;
	setAttr -s 6 ".kit[0:5]"  3 9 9 9 9 3;
	setAttr -s 6 ".kot[0:5]"  3 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 80.425561779386868 4 80.425561779386868 
		8 80.425561779386868 11 80.425561779386868 15 80.425561779386868 20 26.634200838988995;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  0.049620065838098526;
	setAttr -s 6 ".kiy[5]"  -0.998768150806427;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 0.30438211560249329 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 -0.95254999399185181 0;
createNode animCurveTA -n "animCurveTA424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -30.44506412614497 4 -30.44506412614497 
		8 -30.44506412614497 11 -30.44506412614497 15 -30.44506412614497 20 -68.169688810027651;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  0.11748913675546646;
	setAttr -s 6 ".kiy[5]"  -0.99307417869567871;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 0.41462594270706177 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 -0.90999191999435425 0;
createNode animCurveTA -n "animCurveTA425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -71.256105225350495 4 -71.256105225350495 
		8 -71.256105225350495 11 -71.256105225350495 15 -71.256105225350495 20 -25.97049403587981;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  0.055351249873638153;
	setAttr -s 6 ".kiy[5]"  0.99846696853637695;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 0.35486054420471191 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0.93491923809051514 0;
createNode animCurveTA -n "animCurveTA426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 43.141146641774455 4 43.141146641774455 
		8 43.141146641774455 11 43.141146641774455 15 43.141146641774455 20 31.735857389407819;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  0.21770934760570526;
	setAttr -s 6 ".kiy[5]"  -0.9760136604309082;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 0.83325350284576416 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 -0.5528910756111145 0;
createNode animCurveTA -n "animCurveTA427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -34.275123249513896 4 -34.275123249513896 
		8 -34.275123249513896 11 -34.275123249513896 15 -34.275123249513896 20 -63.769642788512684;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  0.13093756139278412;
	setAttr -s 6 ".kiy[5]"  -0.9913906455039978;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 0.50351250171661377 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 -0.86398798227310181 0;
createNode animCurveTA -n "animCurveTA428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -49.798186726856557 4 -49.798186726856557 
		8 -49.798186726856557 11 -49.798186726856557 15 -49.798186726856557 20 -29.585363300515379;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  0.14810818433761597;
	setAttr -s 6 ".kiy[5]"  0.98897117376327515;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 0.64781981706619263 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0.76179361343383789 0;
createNode animCurveTA -n "animCurveTA429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 23.279099769107546 4 23.279099769107546 
		8 23.279099769107546 11 23.279099769107546 15 23.279099769107546 20 12.670039063265145;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  0.33875554800033569;
	setAttr -s 6 ".kiy[5]"  -0.94087439775466919;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 0.85096418857574463 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 -0.52522373199462891 0;
createNode animCurveTA -n "animCurveTA430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 21.701008910528312 4 21.701008910528312 
		8 21.701008910528312 11 21.701008910528312 15 21.701008910528312 20 31.526437289979079;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  0.36234089732170105;
	setAttr -s 6 ".kiy[5]"  0.93204563856124878;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 0.86817145347595215 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0.49626439809799194 0;
createNode animCurveTA -n "animCurveTA431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -11.43150384892092 4 -11.43150384892092 
		8 -11.43150384892092 11 -11.43150384892092 15 -11.43150384892092 20 10.989672158724799;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  0.17584721744060516;
	setAttr -s 6 ".kiy[5]"  0.98441749811172485;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 0.60841292142868042 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0.79362064599990845 0;
createNode animCurveTA -n "animCurveTA432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 56.613259276433958 4 56.613259276433958 
		8 56.613259276433958 11 56.613259276433958 15 56.613259276433958 20 -7.8213229000335227;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  0.059693578630685806;
	setAttr -s 6 ".kiy[5]"  -0.99821674823760986;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 0.25774914026260376 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 -0.96621185541152954 0;
createNode animCurveTA -n "animCurveTA433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 13.131642679464063 4 13.131642679464063 
		8 13.131642679464063 11 13.131642679464063 15 13.131642679464063 20 7.1689180217311153;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  0.29635611176490784;
	setAttr -s 6 ".kiy[5]"  -0.95507752895355225;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 0.94476872682571411 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 -0.3277377188205719 0;
createNode animCurveTA -n "animCurveTA434";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -35.828077252198852 4 -35.828077252198852 
		8 -35.828077252198852 11 -35.828077252198852 15 -35.828077252198852 20 9.5543091941466951;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  0.08426181972026825;
	setAttr -s 6 ".kiy[5]"  0.99644362926483154;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 0.3541988730430603 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0.93517011404037476 0;
createNode animCurveTA -n "animCurveTA435";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 7.8286751959834726 4 7.8286751959834726 
		8 7.8286751959834726 11 7.8286751959834726 15 7.8286751959834726 20 3.1141991673710265;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  0.54735606908798218;
	setAttr -s 6 ".kiy[5]"  -0.83689987659454346;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 0.96438342332839966 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 -0.26450827717781067 0;
createNode animCurveTA -n "animCurveTA436";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -17.722466912710736 4 -17.722466912710736 
		8 -17.722466912710736 11 -17.722466912710736 15 -17.722466912710736 20 -12.079825411483434;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  0.63230282068252563;
	setAttr -s 6 ".kiy[5]"  0.77472132444381714;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 0.95011508464813232 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0.3118995726108551 0;
createNode animCurveTA -n "animCurveTA437";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.245 146.72760480633303 4.245 
		146.72760480633303 8.245 146.72760480633303 11.245 146.72760480633303 15.245 
		146.72760480633303 20.245000000000001 183.35605950725034;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 0.42482179403305054 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0.90527701377868652 0;
createNode animCurveTA -n "animCurveTA438";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 15.180891733866947 4 15.180891733866947 
		8 15.180891733866947 11 15.180891733866947 15 15.180891733866947 20 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 0.74952709674835205 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 -0.66197371482849121 0;
createNode animCurveTA -n "animCurveTA439";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.072787087017036858 4 -0.072787087017036858 
		8 -0.072787087017036858 11 -0.072787087017036858 15 -0.072787087017036858 
		20 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 0.99999105930328369 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0.0042345430701971054 0;
createNode animCurveTA -n "animCurveTA440";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 8 0 11 0 15 0 25 0;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 8 0 11 0 15 0 25 0;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -19.693819774835177 4 -19.693819774835177 
		8 -19.693819774835177 11 5.3447501657365271 15 5.3447501657365271 25 23.563920275823744;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kox[0:5]"  1 1 0.47100266814231873 0.47100266814231873 
		0.82638996839523315 0.72356945276260376;
	setAttr -s 6 ".koy[0:5]"  0 0 0.88213181495666504 0.88213181495666504 
		0.5630982518196106 0.69025158882141113;
createNode animCurveTA -n "animCurveTA443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 19.995000000000001 0 20 0 21 
		0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.705218915343313 19.995000000000001 
		27.705218915343313 20 0 21 0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 0.00034473082632757723 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 -0.99999994039535522 0 0;
createNode animCurveTA -n "animCurveTA447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 43.35103828268312 19.995000000000001 
		43.35103828268312 20 0 21 0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 0.00022031406115274876 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 -1 0 0;
createNode animCurveTA -n "animCurveTA448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 54.23572299800319 19.995000000000001 
		54.23572299800319 20 0 21 0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 0.00017609876522328705 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 -1 0 0;
createNode animCurveTA -n "animCurveTA449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 39.038703285259977 19.995000000000001 
		39.038703285259977 20 0 21 0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 0.0002446506405249238 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 -0.99999994039535522 0 0;
createNode animCurveTA -n "animCurveTA450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 72.755037061650995 19.995000000000001 
		72.755037061650995 20 0 21 0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 0.00013127399142831564 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 -1 0 0;
createNode animCurveTA -n "animCurveTA451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 38.926480273156798 19.995000000000001 
		38.926480273156798 20 0 21 0 22 0;
	setAttr -s 5 ".kit[1:4]"  1 1 9 1;
	setAttr -s 5 ".kot[4]"  5;
	setAttr -s 5 ".kix[1:4]"  1 0.00024535594275221229 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 -0.99999994039535522 0 0;
createNode animCurveTA -n "animCurveTA452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 8 0 11 0 15 0 25 0;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA453";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 8 0 11 0 15 0 25 0;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -14.841309524368913 4 36.345745600030277 
		8 36.345745600030277 11 36.345745600030277 15 36.345745600030277 25 14.280886292709095;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kox[0:5]"  0.14761057496070862 0.28602102398872375 
		1 1 0.77128851413726807 0.65445518493652344;
	setAttr -s 6 ".koy[0:5]"  0.98904556035995483 0.95822334289550781 
		0 0 -0.63648563623428345 -0.75610083341598511;
createNode animCurveTA -n "animCurveTA455";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 3.1198943483277444 4 3.1198943483277444 
		8 3.1198943483277444 12 3.1198943483277444 16 2.6416653373079941 25 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 3;
	setAttr -s 6 ".kox[0:5]"  1 1 1 0.99951052665710449 0.99219715595245361 
		1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 -0.031284693628549576 -0.12467894703149796 
		0;
createNode animCurveTA -n "animCurveTA456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.7238169885910806 4 1.7238169885910806 
		8 1.7238169885910806 12 1.7238169885910806 16 2.3933265768012308 25 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 3;
	setAttr -s 6 ".kox[0:5]"  1 1 1 0.99904131889343262 0.99759840965270996 
		1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0.043777290731668472 -0.069263137876987457 
		0;
createNode animCurveTA -n "animCurveTA457";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 12.268388134198538 4 12.268388134198538 
		8 12.268388134198538 12 12.268388134198538 16 -0.98535169298374803 25 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 3;
	setAttr -s 6 ".kox[0:5]"  1 1 1 0.75539416074752808 0.89652168750762939 
		1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 -0.65527063608169556 -0.44299983978271484 
		0;
createNode animCurveTA -n "animCurveTA458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 4.5487561292321317 4 4.9757570557580184 
		8 5.8323947626939727 12 -12.407055893078351 16 -2.8527177101323056 25 -0.65073001024951671;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 3;
	setAttr -s 6 ".kox[0:5]"  0.99844157695770264 0.99648940563201904 
		0.66018944978713989 0.86936038732528687 0.90379959344863892 1;
	setAttr -s 6 ".koy[0:5]"  0.055807188153266907 0.083719015121459961 
		-0.75109916925430298 -0.49417862296104431 0.42795592546463013 0;
createNode animCurveTA -n "animCurveTA459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.5083553877193401 4 7.0901913119459232 
		8 11.712251430955428 12 11.451538597608915 16 -0.51332548211352269 25 -4.2368721935960938;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 3;
	setAttr -s 6 ".kox[0:5]"  0.66418337821960449 0.75620532035827637 
		0.96159118413925171 0.78080707788467407 0.84537416696548462 1;
	setAttr -s 6 ".koy[0:5]"  0.74756968021392822 0.6543344259262085 
		0.27448573708534241 -0.62477225065231323 -0.53417456150054932 0;
createNode animCurveTA -n "animCurveTA460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.5406155081875577 4 6.3576835589888754 
		8 14.455746713976744 12 -4.6315648553484827 16 5.6202626365524937 25 2.6995264082587442;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 3;
	setAttr -s 6 ".kox[0:5]"  0.89455127716064453 0.7885621190071106 
		0.81182503700256348 0.86567628383636475 0.95906496047973633 1;
	setAttr -s 6 ".koy[0:5]"  0.44696527719497681 0.61495506763458252 
		-0.5839008092880249 -0.50060421228408813 0.28318610787391663 0;
createNode animCurveTA -n "animCurveTA461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 -7.9999370898970845 8 -7.9999370898970845 
		12 0 16 0 25 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 3;
	setAttr -s 6 ".kox[0:5]"  0.690623939037323 0.88590973615646362 
		0.88590973615646362 0.88590973615646362 1 1;
	setAttr -s 6 ".koy[0:5]"  -0.72321403026580811 -0.46385762095451355 
		0.46385762095451355 0.46385762095451355 0 0;
createNode animCurveTA -n "animCurveTA462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 14.913542194108478 8 14.913542194108478 
		12 0 16 0 25 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 3;
	setAttr -s 6 ".kox[0:5]"  0.45591336488723755 0.71561050415039063 
		0.71561050415039063 0.71561050415039063 1 1;
	setAttr -s 6 ".koy[0:5]"  0.89002418518066406 0.69849956035614014 
		-0.69849956035614014 -0.69849956035614014 0 0;
createNode animCurveTA -n "animCurveTA463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 2.2380667495943958 8 2.2380667495943958 
		12 0 16 0 25 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 3;
	setAttr -s 6 ".kox[0:5]"  0.95966511964797974 0.98944127559661865 
		0.98944127559661865 0.98944127559661865 1 1;
	setAttr -s 6 ".koy[0:5]"  0.28114566206932068 0.14493447542190552 
		-0.14493447542190552 -0.14493447542190552 0 0;
createNode animCurveTA -n "animCurveTA464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 3.9837240428089111 4 19.026421602575262 
		8 23.736856011251774 12 -4.5357307848287247 16 1.8874560460271625 25 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 3;
	setAttr -s 6 ".kox[0:5]"  0.45280426740646362 0.61182576417922974 
		0.54407370090484619 0.57306694984436035 0.98371952772140503 1;
	setAttr -s 6 ".koy[0:5]"  0.89160996675491333 0.79099255800247192 
		-0.83903741836547852 -0.81950855255126953 0.17971065640449524 0;
createNode animCurveTA -n "animCurveTA465";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 6.6766338754328363 4 17.49028285320027 
		8 7.6913342755899565 12 0.21471191545541798 16 -0.052779701204625898 25 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 3;
	setAttr -s 6 ".kox[0:5]"  0.57699936628341675 0.9978020191192627 
		0.66249209642410278 0.89196944236755371 0.99996262788772583 1;
	setAttr -s 6 ".koy[0:5]"  0.81674456596374512 0.0662660151720047 
		-0.74906891584396362 -0.45209568738937378 -0.008647591806948185 0;
createNode animCurveTA -n "animCurveTA466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 22.569305093982329 4 14.539097966385265 
		8 12.168842320943345 12 2.4631043335959837 16 -0.90606597821186863 25 0;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 3;
	setAttr -s 6 ".kox[0:5]"  0.6892586350440979 0.82665401697158813 
		0.78453987836837769 0.75977897644042969 0.99511510133743286 1;
	setAttr -s 6 ".koy[0:5]"  -0.72451537847518921 -0.56271058320999146 
		-0.62007832527160645 -0.65018141269683838 -0.098721422255039215 0;
createNode animCurveTA -n "animCurveTA467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 7.1522494975013204 4 6.9273406993857449 
		8 6.9273406993857449 12 7.2628570849641765 16 0 25 -1.8903601258661931;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 3;
	setAttr -s 6 ".kox[0:5]"  0.99956691265106201 0.99989169836044312 
		0.99975895881652832 0.91076129674911499 0.93826961517333984 1;
	setAttr -s 6 ".koy[0:5]"  -0.029427742585539818 -0.01471865177154541 
		0.021954203024506569 -0.41293317079544067 -0.3459048867225647 0;
createNode animCurveTA -n "animCurveTA468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.4349096479040127 4 -2.2892019830000079 
		8 -2.2892019830000079 12 -0.67548933107846165 16 0 25 2.5597289571479034;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 3;
	setAttr -s 6 ".kox[0:5]"  0.99380546808242798 0.99844050407409668 
		0.99446874856948853 0.98896127939224243 0.99161696434020996 1;
	setAttr -s 6 ".koy[0:5]"  -0.11113389581441879 -0.055826105177402496 
		0.10503304749727249 0.14817401766777039 0.12921199202537537 0;
createNode animCurveTA -n "animCurveTA469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 26.122606478441053 4 33.035724993764454 
		8 33.035724993764454 12 20.122058391937074 16 0 25 2.0168110874036045;
	setAttr -s 6 ".kit[5]"  3;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 3;
	setAttr -s 6 ".kox[0:5]"  0.74147558212280273 0.911080002784729 
		0.76374632120132446 0.41977411508560181 0.80798625946044922 1;
	setAttr -s 6 ".koy[0:5]"  0.67097985744476318 0.41222959756851196 
		-0.64551651477813721 -0.90762859582901001 -0.58920133113861084 0;
createNode animCurveTA -n "animCurveTA470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 8 0 11 0 15 0 25 0;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA471";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 8 0 11 0 15 0 25 0;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA472";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 16.736721183175977 4 53.578754763520188 
		8 53.578754763520188 11 53.578754763520188 15 53.578754763520188 25 18.227657692792075;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kox[0:5]"  0.20303751528263092 0.38307726383209229 
		1 1 0.60323965549468994 0.47532233595848083;
	setAttr -s 6 ".koy[0:5]"  0.97917097806930542 0.92371630668640137 
		0 0 -0.79755997657775879 -0.87981170415878296;
createNode animCurveTA -n "animCurveTA473";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0.245 163.43924646410963 4.245 
		167.20869641669501 8.245 167.20869641669501 11.245 167.20869641669501 15.245 
		167.20869641669501 20.245000000000001 183.35605950725034;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  0.89677506685256958 0.97088944911956787 
		1 1 0.72884023189544678 0;
	setAttr -s 6 ".koy[0:5]"  0.44248664379119873 0.23952805995941162 
		0 0 0.68468379974365234 0;
createNode animCurveTA -n "animCurveTA474";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.1381503000571307 4 38.655245743112097 
		8 38.655245743112097 11 38.655245743112097 15 38.655245743112097 20 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  0.20476876199245453 0.38598006963729858 
		1 1 0.40630868077278137 0;
	setAttr -s 6 ".koy[0:5]"  0.97881036996841431 0.92250710725784302 
		0 0 -0.91373586654663086 0;
createNode animCurveTA -n "animCurveTA475";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -6.3333534086058805 4 -12.334147019543275 
		8 -12.334147019543275 11 -12.334147019543275 15 -12.334147019543275 20 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 5;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  0.78639936447143555 0.93078511953353882 
		1 1 0.81246888637542725 0;
	setAttr -s 6 ".koy[0:5]"  -0.6177183985710144 -0.36556681990623474 
		0 0 0.58300459384918213 0;
createNode animCurveTA -n "animCurveTA476";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 8 0 11 0 15 0 25 0;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA477";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 0 8 0 11 0 15 0 25 0;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA478";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 17.545620107018433 4 17.545620107018433 
		8 17.545620107018433 11 32.217762431020311 15 32.217762431020311 25 11.96213740568003;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kox[0:5]"  1 1 0.67351925373077393 0.67351925373077393 
		0.79709875583648682 0.68602108955383301;
	setAttr -s 6 ".koy[0:5]"  0 0 0.7391696572303772 0.7391696572303772 
		-0.60384899377822876 -0.7275816798210144;
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
	setAttr ".o" 21;
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
connectAttr "brt_get_upSource.st" "clipLibrary1.st[0]";
connectAttr "brt_get_upSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL112.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL113.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL115.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA360.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU9.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU15.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU16.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA361.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA362.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA363.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL117.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL118.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL119.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL120.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL121.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL122.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA364.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA365.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA366.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL123.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL124.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL125.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA367.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA368.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA369.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA370.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA371.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA372.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA373.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA374.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA375.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA376.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA377.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA378.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA379.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA380.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA381.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL126.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL127.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL128.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL129.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL130.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL131.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL132.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL133.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL134.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA382.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA383.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA384.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA385.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA386.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA387.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA388.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA389.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA390.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA391.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA392.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA393.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA394.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA395.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA396.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA397.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA398.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA399.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA400.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA401.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA402.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA403.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA404.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA405.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA406.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA407.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA408.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA409.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA410.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL135.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL136.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL137.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA411.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA412.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA413.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL138.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL139.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL140.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA414.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA415.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA416.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL141.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL142.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL143.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA417.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA418.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA419.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL144.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL145.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL146.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA420.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA421.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA422.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL147.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL148.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL149.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL150.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL151.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL152.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA423.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA424.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA425.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA426.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA427.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA428.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA429.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA430.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA431.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA432.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA433.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA434.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA435.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA436.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA437.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA438.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA439.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA440.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA441.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA442.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA443.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA444.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA445.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA446.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA447.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA448.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA449.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA450.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA451.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA452.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA453.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA454.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA455.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA456.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA457.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA458.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA459.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA460.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA461.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA462.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA463.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA464.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA465.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA466.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA467.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA468.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA469.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA470.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA471.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA472.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA473.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA474.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA475.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA476.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA477.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA478.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of brt_get_up.ma
