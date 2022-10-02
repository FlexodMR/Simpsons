//Maya ASCII 4.0 scene
//Name: mlh_loco_walk.ma
//Last modified: Tue, Jun 25, 2002 01:44:46 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dDeformer" "17.1.0.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mlh_loco_walkSource";
	setAttr ".ihi" 0;
	setAttr ".du" 25;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 4 0 12 1 25 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 9;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 1 4 1 16 0 25 0;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
	setAttr ".pst" 4;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -0.0025325231536907902 1 -0.0025325231536907902 
		2 -0.0025325231536907902 3 -0.0025325231536907902 4 -0.0025325231536907902 
		5 -0.0025325231536907902 6 -0.0025325231536907902 7 -0.0025325231536907902 
		8 -0.0025325231536907902 9 -0.0025325231536907902 10 -0.0025325231536907902 
		11 -0.0025325231536907902 12 -0.0025325231536907902 13 -0.0025325231536907902 
		14 -0.0025325231536907902 15 -0.0025325231536907902 16 -0.0025325231536907902 
		17 -0.0025325231536907902 18 -0.0025325231536907902 19 -0.0025325231536907902 
		20 -0.0025325231536907902 21 -0.0025325231536907902 22 -0.0025325231536907902 
		23 -0.0025325231536907902 24 -0.0025325231536907902 25 -0.0025325231536907902;
createNode animCurveTL -n "animCurveTL127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -0.016197518978927721 1 0.0092111085148246907 
		2 0.03438533004679184 3 0.060028362775419578 4 0.086843423859153668 5 0.11611598007761095 
		6 0.14710500085016193 7 0.17747395729488283 8 0.20488632052985004 9 0.22768954503374716 
		10 0.2474729379623955 11 0.26676274944957756 12 0.28808522962907596 13 0.31170534923119986 
		14 0.33614567814116131 15 0.3613188652250971 16 0.38713755934914412 17 0.41351440937943923 
		18 0.44112641271120712 19 0.47003728420259672 20 0.49923974891413109 21 0.52772653190633356 
		22 0.55518728260848715 23 0.58217312905811025 24 0.60896901422807792 25 0.63585988109126557;
createNode animCurveTA -n "animCurveTA310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0;
createNode animCurveTU -n "animCurveTU25";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTU -n "animCurveTU26";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTU -n "animCurveTU27";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTU -n "animCurveTU28";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTU -n "animCurveTU29";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".pst" 4;
createNode animCurveTU -n "animCurveTU30";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".pst" 4;
createNode animCurveTU -n "animCurveTU31";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTU -n "animCurveTU32";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA311";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA312";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA313";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL132";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.13939493011907414 4 -0.13939493011907414 
		8 -0.13939493011907414 12 -0.13939493011907414 17 -0.13939493011907414 21 
		-0.13939493011907414 25 -0.13939493011907414;
	setAttr -s 7 ".kit[0:6]"  9 3 3 9 3 3 9;
	setAttr -s 7 ".kot[0:6]"  9 3 3 9 3 3 9;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL133";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.14547371358512443 4 0.27719934016757547 
		8 0.29438094363485162 12 0.20274572514271166 17 0.14547371358512443 21 0.14547371358512443 
		25 0.14547371358512443;
	setAttr -s 7 ".kit[0:6]"  9 1 1 1 3 3 9;
	setAttr -s 7 ".kot[0:6]"  9 1 1 1 3 3 9;
	setAttr -s 7 ".kix[1:6]"  0.021233890205621719 0.044602829962968826 
		0.016313714906573296 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0.9997745156288147 -0.9990047812461853 
		-0.99986690282821655 0 0 0;
	setAttr -s 7 ".kox[1:6]"  0.02123415470123291 0.044602643698453903 
		0.016313841566443443 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0.9997745156288147 -0.9990047812461853 
		-0.99986690282821655 0 0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL134";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.2791985960448875 4 -0.17038177408547142 
		8 0.45388315189222972 12 0.97505845706627359 17 1.0609664744026548 21 1.0609664744026548 
		25 1.0552392732468963;
	setAttr -s 7 ".kit[3:6]"  9 3 3 9;
	setAttr -s 7 ".kot[3:6]"  9 3 3 9;
	setAttr -s 7 ".kix[0:6]"  0.13243955373764038 0.0030499065760523081 
		0.0015163011848926544 0.0049416003748774529 1 1 0.22674354910850525;
	setAttr -s 7 ".kiy[0:6]"  -0.99119108915328979 0.99999535083770752 
		0.99999886751174927 0.99998778104782104 0 0 -0.97395449876785278;
	setAttr -s 7 ".kox[0:6]"  0.13243961334228516 0.0030499384738504887 
		0.0015163333155214787 0.0049416003748774529 1 1 0.22674354910850525;
	setAttr -s 7 ".koy[0:6]"  -0.99119108915328979 0.99999535083770752 
		0.99999886751174927 0.99998778104782104 0 0 -0.97395449876785278;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA314";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 26.806670006734183 8 26.806670006734183 
		12 -23.266155566386423 17 -0.44600127297453168 21 -0.44600127297453168 25 
		0;
	setAttr -s 7 ".kit[0:6]"  9 3 3 9 3 3 9;
	setAttr -s 7 ".kot[0:6]"  9 3 3 9 3 3 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA315";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 7.8098943176643969 4 7.8098943176643969 
		8 7.8098943176643969 12 7.8098943176643836 17 7.8098943176643836 21 7.8098943176643836 
		25 7.8098943176643969;
	setAttr -s 7 ".kit[0:6]"  9 3 3 9 3 3 9;
	setAttr -s 7 ".kot[0:6]"  9 3 3 9 3 3 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA316";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 0 8 0 12 2.0013528718349399e-016 
		17 -1.2508455448968377e-017 21 -1.2508455448968377e-017 25 0;
	setAttr -s 7 ".kit[0:6]"  9 3 3 9 3 3 9;
	setAttr -s 7 ".kot[0:6]"  9 3 3 9 3 3 9;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.17113167764383544 4 0.17113167764383544 
		8 0.17113167764383544 12 0.17113167764383544 17 0.17113167764383544 21 0.17113167764383544 
		25 0.17113167764383544;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.19587370996100542 4 0.14432889955917674 
		8 0.14432889955917674 12 0.14432889955917674 17 0.26460012383010995 21 0.28178172729738593 
		25 0.19587370996100542;
	setAttr -s 7 ".kit[1:6]"  3 3 3 9 9 9;
	setAttr -s 7 ".kot[1:6]"  3 3 3 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL137";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.32938223676987038 4 0.35229104139290529 
		8 0.35229104139290529 12 0.35229104139290529 17 0.40383585179473386 21 0.97082876621484815 
		25 1.6638201060616526;
	setAttr -s 7 ".kit[0:6]"  9 3 3 3 1 9 9;
	setAttr -s 7 ".kot[0:6]"  9 3 3 3 1 9 9;
	setAttr -s 7 ".kix[4:6]"  0.0089550549164414406 0.002116423798725009 
		0.0019240223336964846;
	setAttr -s 7 ".kiy[4:6]"  0.99995988607406616 0.99999773502349854 
		0.99999815225601196;
	setAttr -s 7 ".kox[4:6]"  0.0089550679549574852 0.002116423798725009 
		0.0019240223336964846;
	setAttr -s 7 ".koy[4:6]"  0.99995988607406616 0.99999773502349854 
		0.99999815225601196;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA317";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -21.346586890289334 4 0.071605597996866902 
		8 0.071605597996866902 12 0.071605597996866902 17 36.383495096781608 21 35.197104894046767 
		25 -21.346586890289334;
	setAttr -s 7 ".kit[4:6]"  9 9 3;
	setAttr -s 7 ".kot[4:6]"  9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA318";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -8.357398850817777 4 -10.338140474697433 
		8 -10.338140474697433 12 -10.338140474697433 17 0.45324785783970978 21 8.4509775835176413 
		25 -8.357398850817777;
	setAttr -s 7 ".kit[4:6]"  9 9 3;
	setAttr -s 7 ".kot[4:6]"  9 9 3;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.6437643349617042 4 2.6997484666798663 
		8 2.6997484666798663 12 2.6997484666798663 17 -15.609684396600677 21 -13.820238014462543 
		25 1.6437643349617042;
	setAttr -s 7 ".kit[1:6]"  3 3 3 9 9 9;
	setAttr -s 7 ".kot[1:6]"  3 3 3 9 9 9;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA326";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA327";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA329";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA330";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTL -n "animCurveTL138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.19765625000000056 8 -0.19765625000000056 
		12 -0.19765625000000056 17 -0.19765625000000056 21 -0.19765625000000056 25 
		-0.19765625000000056;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 8 0 12 0 17 0 21 0 25 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 8 1 12 1 17 1 21 1 25 1;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.17453154015380057 8 0.17453154015380057 
		12 0.17453154015380057 17 0.17453154015380057 21 0.17528797949075758 25 0.17453154015380057;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 8 0 12 0 17 0 21 0.01188285397096478 
		25 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 8 1 12 1 17 1 21 0.96262695638445739 
		25 1;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.0051828179555656355 4 -0.0051828179555656355 
		8 -0.0051828179555656355 12 -0.0051828179555656355 17 -0.0051828179555656355 
		21 -0.0051828179555656355 25 -0.0051828179555656355;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL145";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.89480529440006795 4 0.89506113572963797 
		8 0.92531834954852676 12 0.89696725266852928 17 0.85629004133155895 21 0.9348382398266476 
		25 0.89480529440006795;
	setAttr -s 7 ".kit[1:6]"  9 1 1 9 1 1;
	setAttr -s 7 ".kot[1:6]"  9 1 1 9 1 1;
	setAttr -s 7 ".kix[0:6]"  0.078944846987724304 0.087062433362007141 
		0.11154475808143616 0.023593686521053314 0.078968927264213562 0.03238648921251297 
		0.032289847731590271;
	setAttr -s 7 ".kiy[0:6]"  -0.996878981590271 0.99620288610458374 
		0.9937593936920166 -0.99972164630889893 0.99687707424163818 0.99947541952133179 
		-0.99947851896286011;
	setAttr -s 7 ".kox[0:6]"  0.078944757580757141 0.087062433362007141 
		0.1115449070930481 0.023593809455633163 0.078968927264213562 0.032386120408773422 
		0.032290056347846985;
	setAttr -s 7 ".koy[0:6]"  -0.996878981590271 0.99620288610458374 
		0.9937593936920166 -0.99972164630889893 0.99687707424163818 0.99947541952133179 
		-0.99947851896286011;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.033148282209091912 4 0.177725386575073 
		8 0.41930060909584671 12 0.58956748280024773 17 0.84625876083048357 21 1.0799942899659158 
		25 1.3012895870826904;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.0449999999999995 4 -1.0449999999999995 
		8 -1.0449999999999995 12 -1.0449999999999995 17 -1.0449999999999995 21 -1.0449999999999995 
		25 -1.0449999999999995;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA333";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.62803185506048198 4 -0.62803185506048309 
		8 -0.62803185506048309 12 -0.62803185506048309 17 -0.62803185506048309 21 
		-0.62803185506048309 25 -0.62803185506048198;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA334";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.5944511152083107 4 -1.5944511152083107 
		8 -1.5944511152083107 12 -1.5944511152083107 17 -1.5944511152083107 21 -1.5944511152083107 
		25 -1.5944511152083107;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA335";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA336";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0984482521620249;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300303494186;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA340";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA341";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.686733334985114;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA342";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA343";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417477e-005;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0984482535121209;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300300216801;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA351";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.686733333057838;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA352";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA353";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA354";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417477e-005;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA355";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 1.0579251312417477e-005;
createNode animCurveTA -n "animCurveTA358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA359";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 0;
createNode animCurveTA -n "animCurveTA360";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  13 1.0579251312417477e-005;
createNode animCurveTL -n "animCurveTL147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.99214331096561381;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.033841737269357866;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.027201153963313806;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA361";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.1805546814635164e-015;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.016273151455886e-014;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA363";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5.3764496942944332e-016;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.99214413619678865;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.033851474715545553;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.0272011762672867;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA364";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.3611093629270264e-015;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA365";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.5281705937149269e-014;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA366";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.5365128437888133e-014;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.3705977767760478;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.1618658070195953;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.12044246479037771;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA367";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA368";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA369";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.3705978542308779;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.1618621235956237;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.12044250833667494;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA370";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA371";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA372";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA373";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -16.52954276994431 4 -1.1534230713933573 
		8 20.948251842550778 13 32.570214618694962 19 16.105396090074521 25 -16.52954276994431;
	setAttr -s 6 ".kit[2:5]"  1 9 1 9;
	setAttr -s 6 ".kot[2:5]"  1 9 1 9;
	setAttr -s 6 ".kix[2:5]"  0.30349326133728027 0.97444450855255127 
		0.25321635603904724 0.33130136132240295;
	setAttr -s 6 ".kiy[2:5]"  0.95283359289169312 -0.22462835907936096 
		-0.96740967035293579 -0.94352501630783081;
	setAttr -s 6 ".kox[2:5]"  0.30349326133728027 0.97444450855255127 
		0.25321635603904724 0.33130136132240295;
	setAttr -s 6 ".koy[2:5]"  0.95283359289169312 -0.22462835907936096 
		-0.96740967035293579 -0.94352501630783081;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA374";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -67.653067887905706 4 -66.618829114427896 
		8 -63.849006296420427 13 -62.537074126065242 19 -64.504409813287069 25 -67.653067887905706;
	setAttr -s 6 ".kit[3:5]"  1 1 9;
	setAttr -s 6 ".kot[3:5]"  1 1 9;
	setAttr -s 6 ".kix[3:5]"  0.99995630979537964 0.89448058605194092 
		0.96426153182983398;
	setAttr -s 6 ".kiy[3:5]"  -0.0093493564054369926 -0.44710671901702881 
		-0.26495233178138733;
	setAttr -s 6 ".kox[3:5]"  0.99995630979537964 0.89448064565658569 
		0.96426153182983398;
	setAttr -s 6 ".koy[3:5]"  -0.0093493610620498657 -0.44710665941238403 
		-0.26495233178138733;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA375";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.043537438804616 4 14.672003975850425 
		8 -12.85148885626835 13 -28.099141669428061 19 -3.6428019088085897 25 27.043537438804616;
	setAttr -s 6 ".kit[2:5]"  1 9 1 9;
	setAttr -s 6 ".kot[2:5]"  1 9 1 9;
	setAttr -s 6 ".kix[2:5]"  0.3022773265838623 0.91587716341018677 
		0.26790100336074829 0.3498324453830719;
	setAttr -s 6 ".kiy[2:5]"  -0.95322000980377197 0.40145868062973022 
		0.96344643831253052 0.93681228160858154;
	setAttr -s 6 ".kox[2:5]"  0.30227714776992798 0.91587716341018677 
		0.26790112257003784 0.3498324453830719;
	setAttr -s 6 ".koy[2:5]"  -0.95322006940841675 0.40145868062973022 
		0.96344643831253052 0.93681228160858154;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA376";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 35.139693875492739 4 23.656138979991038 
		8 5.3553892827669811 13 -0.50383223898862761 25 35.139693875492739;
	setAttr -s 5 ".kit[2:4]"  1 9 9;
	setAttr -s 5 ".kot[2:4]"  1 9 9;
	setAttr -s 5 ".kix[2:4]"  0.59130054712295532 0.73690164089202881 
		0.54083466529846191;
	setAttr -s 5 ".kiy[2:4]"  -0.80645126104354858 0.67599999904632568 
		0.84112894535064697;
	setAttr -s 5 ".kox[2:4]"  0.59130030870437622 0.73690164089202881 
		0.54083466529846191;
	setAttr -s 5 ".koy[2:4]"  -0.80645143985748291 0.67599999904632568 
		0.84112894535064697;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA377";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -57.72802362651467 4 -59.294428582217151 
		8 -60.741090802988317 13 -60.013001434177511 25 -57.72802362651467;
	setAttr -s 5 ".kit[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[1:4]"  0.95001488924026489 0.99704676866531372 
		0.98028528690338135 0.99506658315658569;
	setAttr -s 5 ".kiy[1:4]"  -0.31220462918281555 -0.07679709792137146 
		0.19758731126785278 0.099209107458591461;
	setAttr -s 5 ".kox[1:4]"  0.95001488924026489 0.99704676866531372 
		0.98028528690338135 0.99506658315658569;
	setAttr -s 5 ".koy[1:4]"  -0.31220459938049316 -0.076796986162662506 
		0.19758737087249756 0.099209107458591461;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA378";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -39.316058395421855 4 -27.663597113026423 
		8 -10.327366335125609 13 -7.6869239873650228 25 -39.316058395421855;
	setAttr -s 5 ".kit[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kot[0:4]"  9 1 1 1 9;
	setAttr -s 5 ".kix[1:4]"  0.42772921919822693 0.50645476579666138 
		0.55597877502441406 0.58675253391265869;
	setAttr -s 5 ".kiy[1:4]"  0.90390694141387939 0.86226654052734375 
		-0.83119648694992065 -0.80976629257202148;
	setAttr -s 5 ".kox[1:4]"  0.42772912979125977 0.50645464658737183 
		0.55597883462905884 0.58675253391265869;
	setAttr -s 5 ".koy[1:4]"  0.90390694141387939 0.86226660013198853 
		-0.83119642734527588 -0.80976629257202148;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 23.227906019181638 4 35.826908106204037 
		13 9.7196681956472037 17 10.212911120827139 25 23.227906019181638;
	setAttr -s 5 ".kit[1:4]"  1 9 9 9;
	setAttr -s 5 ".kot[1:4]"  1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  0.88056486845016479 0.69600647687911987 
		0.8614923357963562 0.76125162839889526;
	setAttr -s 5 ".kiy[1:4]"  0.47392559051513672 -0.71803545951843262 
		0.50777053833007813 0.64845657348632813;
	setAttr -s 5 ".kox[1:4]"  0.88056486845016479 0.69600647687911987 
		0.8614923357963562 0.76125162839889526;
	setAttr -s 5 ".koy[1:4]"  0.47392567992210388 -0.71803545951843262 
		0.50777053833007813 0.64845657348632813;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 11.919434481921025 4 11.919434481921025 
		8 18.492481886989701 13 32.150679280273302 25 11.919434481921025;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -3.5678365513752466 4 -3.5678365513752466 
		13 -3.7367369042103142 25 -3.5678365513752466;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.1122577728711633 4 1.1122577728711633 
		13 0.042135046293656692 25 1.1122577728711633;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -8.9383319261341718 4 2.0122658861677842 
		13 -14.635189420707091 25 -8.9383319261341718;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.317816178207873 4 3.7854487639118912 
		13 3.4178475952222676 25 3.317816178207873;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA385";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.9149992340738797 4 -0.58472330047072818 
		13 -1.7299985409740424 25 -1.9149992340738797;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA386";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 15.87512600911526 4 -5.3173623297779189 
		13 12.730597517563929 25 15.87512600911526;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 59.537811625969326 25 59.537811625969326;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA388";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 19.121175982408229 25 19.121175982408229;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA389";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.989800450806971 25 18.989800450806971;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA390";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -7.6785820447977198 25 -7.6785820447977198;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.7605391839518916 25 2.7605391839518916;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 28.344788980746365 25 28.344788980746365;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA393";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA394";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA395";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "mlh_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  10 0;
createNode animCurveTA -n "mlh_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  10 0;
createNode animCurveTA -n "mlh_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  10 0;
createNode animCurveTA -n "mlh_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  10 0;
createNode animCurveTA -n "mlh_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  10 0;
createNode animCurveTA -n "mlh_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  10 0;
createNode animCurveTA -n "animCurveTA402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 26.049252495284946 25 26.049252495284946;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 13 0 25 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 13 0 25 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -26.770100963031059 4 -26.770100963031059 
		13 -26.770100963031059 25 -26.770100963031059;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -5.0665631006766301 4 -4.4485514571531786 
		13 -3.8396511808571554 25 -5.0665631006766301;
	setAttr -s 4 ".kit[1:3]"  1 9 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[1:3]"  0.99732226133346558 0.9998813271522522 
		0.99857014417648315;
	setAttr -s 4 ".kiy[1:3]"  0.07313179224729538 -0.015407225117087364 
		-0.053457587957382202;
	setAttr -s 4 ".kox[1:3]"  0.99732226133346558 0.9998813271522522 
		0.99857014417648315;
	setAttr -s 4 ".koy[1:3]"  0.073131769895553589 -0.015407225117087364 
		-0.053457587957382202;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.3369237227327559 4 -1.679347981053712 
		13 -1.0443349954978318 25 -2.3369237227327559;
	setAttr -s 4 ".kit[1:3]"  1 9 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[1:3]"  0.9937821626663208 0.99986559152603149 
		0.9984133243560791;
	setAttr -s 4 ".kiy[1:3]"  0.11134196072816849 -0.016393313184380531 
		-0.056310337036848068;
	setAttr -s 4 ".kox[1:3]"  0.9937821626663208 0.99986559152603149 
		0.9984133243560791;
	setAttr -s 4 ".koy[1:3]"  0.11134195327758789 -0.016393313184380531 
		-0.056310337036848068;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.7020325654793798 4 2.6485813315951714 
		13 2.5793685121245775 25 2.7020325654793798;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 13 0 25 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 13 0 25 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 4 0 13 0 25 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.8488144000148217 25 2.8488144000148217;
createNode animCurveTA -n "animCurveTA415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.3382754936875829 25 -1.3382754936875829;
createNode animCurveTA -n "animCurveTA416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.7091142700237443 25 4.7091142700237443;
createNode animCurveTA -n "animCurveTA417";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.10227272727272714 4 -0.10227272727272714 
		13 -0.10227272727272714 25 -0.10227272727272714;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA418";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.4707291345066356 4 1.4707291345066356 
		13 1.4707291345066356 25 1.4707291345066356;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.8797837837837832 4 -1.8797837837837832 
		13 -1.8797837837837832 25 -1.8797837837837832;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA420";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -7.2356183565074765 25 -7.2356183565074765;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA421";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 3.775875410252576 25 3.775875410252576;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA422";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 36.102571754571038 25 36.102571754571038;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA423";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 61.657392491992383 25 61.657392491992383;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA424";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 20.563693271869273 25 20.563693271869273;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA425";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 22.57991983767285 25 22.57991983767285;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 25 0;
	setAttr ".pst" 4;
createNode animCurveTA -n "animCurveTA428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 21.110481929355618 25 21.110481929355618;
	setAttr ".pst" 4;
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
	setAttr -s 24 ".lnk";
select -ne :time1;
	setAttr ".o" 10;
select -ne :renderPartition;
	setAttr -s 24 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 24 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 4 ".tx";
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
	setAttr -s 678 ".gn";
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
connectAttr "mlh_loco_walkSource.st" "clipLibrary1.st[0]";
connectAttr "mlh_loco_walkSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL124.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL125.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL127.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA310.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU25.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU26.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU27.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU28.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU29.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU30.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU31.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU32.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA311.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA312.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA313.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL129.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL130.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL131.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL132.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL133.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL134.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA314.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA315.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA316.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL135.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL136.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL137.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA317.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA318.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA319.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA320.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA321.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA322.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA323.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA324.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA325.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA326.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA327.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA328.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA329.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA330.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA331.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL138.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL139.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL140.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL141.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL142.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL143.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL144.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL145.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL146.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA332.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA333.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA334.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA335.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA336.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA337.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA338.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA339.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA340.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA341.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA342.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA343.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA344.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA345.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA346.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA347.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA348.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA349.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA350.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA351.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA352.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA353.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA354.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA355.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA356.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA357.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA358.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA359.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA360.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL147.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL148.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL149.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA361.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA362.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA363.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL150.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL151.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL152.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA364.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA365.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA366.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL153.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL154.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL155.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA367.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA368.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA369.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL156.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL157.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL158.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA370.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA371.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA372.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL159.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL160.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL161.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL162.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL163.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL164.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA373.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA374.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA375.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA376.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA377.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA378.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA379.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA380.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA381.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA382.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA383.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA384.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA385.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA386.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA387.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA388.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA389.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA390.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA391.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA392.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA393.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA394.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA395.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "mlh_Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "mlh_Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "mlh_Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "mlh_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "mlh_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "mlh_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA402.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA403.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA404.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA405.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA406.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA407.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA408.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA409.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA410.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA411.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA412.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA413.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA414.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA415.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA416.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA417.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA418.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA419.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA420.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA421.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA422.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA423.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA424.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA425.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA426.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA427.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA428.a" "clipLibrary1.cel[0].cev[167].cevr";
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
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of mlh_loco_walk.ma
