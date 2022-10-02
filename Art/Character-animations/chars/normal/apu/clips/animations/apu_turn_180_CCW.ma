//Maya ASCII 4.0 scene
//Name: apu_turn_180_CCW.ma
//Last modified: Thu, Jun 13, 2002 12:20:45 PM
requires maya "4.0";
requires "p3dmayaexp" "17.3";
requires "p3dSimpleShader" "17.1";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "apu_turn_180_CCWSource";
	setAttr ".ihi" 0;
	setAttr ".du" 35;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kot[0:1]"  5 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 35 1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kot[0:1]"  5 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 -0.021611233900292327 1 0.0071023745764177424 
		2 0.036251991686183864 3 0.064529587201119454 4 0.090627130893337904 5 0.11084337512361092 
		6 0.12581781099730951 7 0.13903852293245555 8 0.14697869647280515 9 0.14896252946151786 
		10 0.14874210357388312 11 0.14763997413570937 12 0.14697869647280515 13 0.14697869647280515 
		14 0.14697869647280515 15 0.14697869647280515 16 0.14697869647280515 17 0.14697869647280515 
		18 0.14697869647280515 19 0.14697869647280515 20 0.14697869647280515 21 0.14697869647280515 
		22 0.14697869647280515 23 0.14697869647280515 24 0.14697869647280515 25 0.14697869647280515 
		26 0.14697869647280515 27 0.14697869647280515 28 0.14449976152386443 29 0.14036820327562988 
		30 0.13954189162598296 31 0.14697869647280515 32 0.18163096230757575 33 0.22630461933335952 
		34 0.25476899157758071 35 0.28003377327665219;
createNode animCurveTL -n "animCurveTL127";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0.14556937628024244 1 0.39202787510061643 
		2 0.64261219819385296 3 0.88494483575895633 4 1.10664827799493 5 1.2645535940584036 
		6 1.3891474719331183 7 1.5134366139146087 8 1.669208797621464 9 1.9273554142406517 
		10 2.2324582247580773 11 2.4913303152964059 12 2.6107847719783037 13 2.6270599559013061 
		14 2.6388511605802161 15 2.6466566059310441 16 2.6509745118698 17 2.6523030983124936 
		18 2.6511405851751371 19 2.6479851923737381 20 2.6433351398243086 21 2.6376886474428591 
		22 2.6315439351453991 23 2.6253992228479381 24 2.6197527304664887 25 2.6151026779170592 
		26 2.6119472851156607 27 2.6107847719783037 28 2.6107847719783037 29 2.6107847719783037 
		30 2.6107847719783037 31 2.6107847719783037 32 2.4214711423588482 33 2.1404695572104737 
		34 1.9959299377210458 35 1.8772811446467534;
createNode animCurveTA -n "animCurveTA340";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12 0 27 -180 35 -180;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[1:3]"  1 9 9;
	setAttr -s 4 ".kix[2:3]"  0.15717671811580658 1;
	setAttr -s 4 ".kiy[2:3]"  -0.98757046461105347 0;
	setAttr -s 4 ".kox[1:3]"  0.15717671811580658 0.23708008229732513 
		1;
	setAttr -s 4 ".koy[1:3]"  -0.98757046461105347 -0.97149008512496948 
		0;
createNode animCurveTU -n "animCurveTU17";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU18";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU19";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU20";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "apu_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "apu_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12 0;
createNode animCurveTA -n "animCurveTA341";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA342";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA343";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL129";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL130";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL131";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.18579966735506592 4 -0.24845707114529361 
		6 0.17124968813950189 8 0.52218257780004185 10 0.57034755526043646 12 0.52218257780004185 
		27 0.52218257780004185 31 0.52218257780004185 33 0.52218257780004185 35 0.52218257780004185;
createNode animCurveTL -n "animCurveTL133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.4788651046679378 4 0.42197097610017603 
		6 0.35842491389222625 8 0.32025482972599251 10 0.53440512422122299 12 1.0583661498942625 
		27 1.0583661498942625 31 1.0583661498942625 33 0.13878777953536228 35 0.13878777953536228;
	setAttr -s 10 ".kit[8:9]"  3 3;
	setAttr -s 10 ".kot[8:9]"  3 3;
createNode animCurveTL -n "animCurveTL134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.45404353022539112 4 1.8768668213662716 
		6 2.4378118735968908 8 2.397218311707785 10 2.4762332418791684 12 2.9369863678108592 
		27 2.9369863678108592 31 2.9369863678108592 33 2.7051693422782432 35 2.6980553048980949;
	setAttr -s 10 ".kit[3:9]"  1 1 9 9 9 3 3;
	setAttr -s 10 ".kot[3:9]"  1 1 9 9 9 3 3;
	setAttr -s 10 ".kix[3:9]"  0.0062423446215689182 0.0015246900729835033 
		0.012297773733735085 1 0.0086271725594997406 1 1;
	setAttr -s 10 ".kiy[3:9]"  -0.99998050928115845 0.99999874830245972 
		0.99992436170578003 0 -0.99996280670166016 0 0;
	setAttr -s 10 ".kox[3:9]"  0.0062423320487141609 0.0015247386181727052 
		0.012297773733735085 1 0.0086271725594997406 1 1;
	setAttr -s 10 ".koy[3:9]"  -0.99998050928115845 0.99999874830245972 
		0.99992436170578003 0 -0.99996280670166016 0 0;
createNode animCurveTA -n "animCurveTA344";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 99.963052812293768 4 7.3239546607787167 
		6 80.282754897531504 8 20.151919822041258 10 -29.847868409398956 12 -102.35399190609105 
		27 -102.35399190609105 31 -102.35399190609105 33 -0.49025257937406358 35 
		-0.49025257937406358;
	setAttr -s 10 ".kit[8:9]"  3 3;
	setAttr -s 10 ".kot[8:9]"  3 3;
createNode animCurveTA -n "animCurveTA345";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 55.107617038344522 6 112.648290810227 
		8 175.8831736946828 10 181.95805230971865 12 172.31233669091114 27 172.31233669091114 
		31 172.31233669091114 33 180.29378889287207 35 180.29378889287207;
	setAttr -s 10 ".kit[8:9]"  3 3;
	setAttr -s 10 ".kot[8:9]"  3 3;
createNode animCurveTA -n "animCurveTA346";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 -43.838512779873525 6 54.171680053735514 
		8 11.606839940899354 10 3.0435800865867311 12 -9.6381244438909057 27 -9.6381244438909057 
		31 -9.6381244438909057 33 -0.89565710079923078 35 -0.89565710079923078;
	setAttr -s 10 ".kit[8:9]"  3 3;
	setAttr -s 10 ".kot[8:9]"  3 3;
createNode animCurveTL -n "animCurveTL135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.13256050696689195 4 0.13256050696689195 
		6 0.13256050696689195 8 0.13256050696689195 12 0.13256050696689195 27 0.13256050696689195 
		31 0.13256050696689195 33 0.13256050696689195 35 0.13256050696689195;
	setAttr -s 9 ".kit[4:8]"  3 3 9 9 9;
	setAttr -s 9 ".kot[4:8]"  3 3 9 9 9;
createNode animCurveTL -n "animCurveTL136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.16494285180908641 4 0.13206815975229005 
		6 0.130013491586007 8 0.13206815975229005 12 0.13206815975229005 27 0.13206815975229005 
		31 0.13206815975229005 33 0.29821956295138347 35 0.52726443481578411;
	setAttr -s 9 ".kit[4:8]"  3 3 3 9 9;
	setAttr -s 9 ".kot[4:8]"  3 3 3 9 9;
createNode animCurveTL -n "animCurveTL137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.5840630460795303 4 1.6349127720763768 
		6 2.0638849284530822 8 2.504435128984928 12 3.6479091412400488 27 3.6479091412400488 
		31 3.6479091412400488 33 3.5297242505441004 35 3.0334271877153847;
	setAttr -s 9 ".kit[4:8]"  3 3 3 9 9;
	setAttr -s 9 ".kot[4:8]"  3 3 3 9 9;
createNode animCurveTA -n "animCurveTA347";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -30.072192405388275 4 -0.40531241076473123 
		6 1.4488675957661177 8 -0.40531241076473123 12 -0.40531241076473123 27 -0.40531241076473123 
		31 -0.40531241076473123 33 33.829127685300541 35 71.620218588856034;
	setAttr -s 9 ".kit[4:8]"  3 3 3 9 9;
	setAttr -s 9 ".kot[4:8]"  3 3 3 9 9;
createNode animCurveTA -n "animCurveTA348";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 89.90525235120468 6 139.35158516901186 
		8 177.55976113252368 12 177.55976113252368 27 177.55976113252368 31 177.55976113252368 
		33 177.98216460415625 35 179.24654672876324;
	setAttr -s 9 ".kit[4:8]"  3 3 3 9 9;
	setAttr -s 9 ".kot[4:8]"  3 3 3 9 9;
createNode animCurveTA -n "animCurveTA349";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 12 0 27 0 31 0 
		33 1.3725469025558819 35 2.3210739929278006;
	setAttr -s 9 ".kit[4:8]"  3 3 3 9 9;
	setAttr -s 9 ".kot[4:8]"  3 3 3 9 9;
createNode animCurveTA -n "animCurveTA350";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA351";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA352";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA353";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA354";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA355";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 12 0 27 0 31 0 
		33 0 35 0;
createNode animCurveTL -n "animCurveTL139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.72172207365063845 4 0.72172207365063845 
		6 0.72172207365063845 8 0.72172207365063845 12 0.72172207365063845 27 0.72172207365063845 
		31 0.72172207365063845 33 0.72172207365063845 35 0.72172207365063845;
createNode animCurveTL -n "animCurveTL140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.39818034372871203 4 0.39818034372871203 
		6 0.39818034372871203 8 0.39818034372871203 12 0.39818034372871203 27 0.39818034372871203 
		31 0.39818034372871203 33 0.39818034372871203 35 0.39818034372871203;
createNode animCurveTL -n "animCurveTL141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 12 0 27 0 31 0 
		33 0 35 0;
createNode animCurveTL -n "animCurveTL142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.24354617521346231 4 0.24354617521346231 
		6 0.24354617521346231 8 0.24354617521346231 12 0.24354617521346231 27 0.24354617521346231 
		31 0.24354617521346231 33 0.24354617521346231 35 0.24354617521346231;
createNode animCurveTL -n "animCurveTL143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.73266363114951272 4 0.73266363114951272 
		6 0.73266363114951272 8 0.73266363114951272 12 0.73266363114951272 27 0.73266363114951272 
		31 0.73266363114951272 33 0.73266363114951272 35 0.73266363114951272;
createNode animCurveTL -n "animCurveTL144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.03056236763751306 4 0.12816388481445035 
		6 0.17793015488092484 8 0.20785564476369636 12 0.20785564476369636 27 0.20785564476369636 
		31 0.20785564476369636 33 0.32003748633899259 35 0.39602066079555298;
createNode animCurveTL -n "animCurveTL145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.95976092787099887 4 0.94516162831462058 
		6 0.95188516948555746 8 0.96278190393741836 12 0.98156815078568371 27 0.98156815078568371 
		31 0.98156815078568371 33 0.87281604008533142 35 1.0010271246611782;
	setAttr -s 9 ".kit[5:8]"  3 3 9 9;
	setAttr -s 9 ".kot[5:8]"  3 3 9 9;
createNode animCurveTL -n "animCurveTL146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.20586259975558652 4 1.5650097386176691 
		6 1.9645169700082479 8 2.3605765951192752 12 3.6921429101066874 27 3.6921429101066874 
		31 3.6921429101066874 33 3.0270283421200861 35 2.6548302038824967;
	setAttr -s 9 ".kit[4:8]"  1 3 3 9 9;
	setAttr -s 9 ".kot[4:8]"  1 3 3 9 9;
	setAttr -s 9 ".kix[4:8]"  0.012614857405424118 1 1 0.0012853714870288968 
		0.0017911570612341166;
	setAttr -s 9 ".kiy[4:8]"  0.99992042779922485 0 0 -0.99999916553497314 
		-0.99999839067459106;
	setAttr -s 9 ".kox[4:8]"  0.012614917010068893 1 1 0.0012853714870288968 
		0.0017911570612341166;
	setAttr -s 9 ".koy[4:8]"  0.99992042779922485 0 0 -0.99999916553497314 
		-0.99999839067459106;
createNode animCurveTA -n "animCurveTA356";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 10.244833886622574 4 25.830531440809363 
		6 18.46438489041708 8 6.6271967526040267 12 -13.555438057352168 27 -13.555438057352168 
		31 -13.555438057352168 33 19.933722979617375 35 7.0356032757209297;
createNode animCurveTA -n "animCurveTA357";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -17.11704137357674 4 83.236084772104718 
		6 137.38886618024523 8 179.10994166966711 12 180.00942398623167 27 180.00942398623167 
		31 180.00942398623167 33 178.5704283774671 35 179.75814196100347;
createNode animCurveTA -n "animCurveTA358";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -2.5759503100798002 4 21.252260527807081 
		6 10.901640554224159 8 -2.4470971583407568 12 -2.6038275329342602 27 -2.6038275329342602 
		31 -2.6038275329342602 33 -2.1765373273788833 35 2.9503807356929799;
createNode animCurveTA -n "animCurveTA359";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.040473860579884585 35 0.040473860579884585;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA360";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.8313984519406281 35 -1.8313984519406281;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA361";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 3.7337164553688731 35 3.7337164553688731;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA362";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -2.5673170049738836 35 -2.5673170049738836;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA363";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -5.9383298724540099 35 -5.9383298724540099;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA364";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.00017158844849065358 35 -0.00017158844849065358;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA365";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.1571951880326767 35 -1.1571951880326767;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA366";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA367";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA368";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.0034456079182833216 35 0.0034456079182833216;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA369";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.040709616517141577 35 0.040709616517141577;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA370";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.8313983219776933 35 -1.8313983219776933;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA371";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 3.7337164321498379 35 3.7337164321498379;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA372";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -2.5673169553733395 35 -2.5673169553733395;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA373";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -5.938383166068367 35 -5.938383166068367;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA374";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.00040252039393782536 35 -0.00040252039393782536;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA375";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.1571952141288733 35 -1.1571952141288733;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA376";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA377";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA378";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.0034456079181433771 35 0.0034456079181433771;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.15553530681976535 4 0.15553530681976535 
		6 0.15553530681976535 8 0.15553530681976535 12 0.15553530681976535 27 0.15553530681976535 
		31 0.15553530681976535 33 0.15553530681976535 35 0.15553530681976535;
createNode animCurveTA -n "animCurveTA380";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.36354176124207516 4 -0.36354176124207516 
		6 -0.36354176124207516 8 -0.36354176124207516 12 -0.36354176124207516 27 
		-0.36354176124207516 31 -0.36354176124207516 33 -0.36354176124207516 35 -0.36354176124207516;
createNode animCurveTA -n "animCurveTA381";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 5.3250602596476986 4 5.3250602596476986 
		6 5.3250602596476986 8 5.3250602596476986 12 5.3250602596476986 27 5.3250602596476986 
		31 5.3250602596476986 33 5.3250602596476986 35 5.3250602596476986;
createNode animCurveTA -n "animCurveTA382";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 12 0 27 0 31 0 
		33 -0.14833997848505565 35 -0.14833997848505565;
	setAttr -s 9 ".kit[5:8]"  3 3 9 9;
	setAttr -s 9 ".kot[5:8]"  3 3 9 9;
createNode animCurveTA -n "animCurveTA383";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 12 0 27 0 31 0 
		33 1.7949179366673285 35 1.7949179366673285;
createNode animCurveTA -n "animCurveTA384";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.0034456079181433771 4 0.0034456079181433771 
		6 0.0034456079181433771 8 0.0034456079181433771 12 0.0034456079181433771 
		27 0.0034456079181433771 31 0.0034456079181433771 33 -27.186769571036272 
		35 -27.186769571036272;
createNode animCurveTL -n "animCurveTL147";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.98872754407817198 35 -0.98872754407817198;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL148";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.019514335421655121 35 -0.019514335421655121;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL149";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.020013361448308328 35 -0.020013361448308328;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA385";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA386";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA387";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL150";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.98872819052200589 35 0.98872819052200589;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL151";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.019519870042852914 35 -0.019519870042852914;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL152";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.020013375596438072 35 -0.020013375596438072;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA388";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA389";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA390";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL153";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.3848820121487373 35 -1.3848820121487373;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL154";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.397161655727015 35 2.397161655727015;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL155";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.14844368205557412 35 -0.14844368205557412;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA391";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA392";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA393";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL156";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.3848817703086196 35 1.3848817703086196;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL157";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.3971606112795563 35 2.3971606112795563;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL158";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.14844372651139698 35 -0.14844372651139698;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA394";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA395";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA396";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL159";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL160";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL161";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1 35 -1;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL162";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL163";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL164";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1 35 -1;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA397";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -56.725330507545323 4 -56.725330507545323 
		6 -12.697756382341614 8 24.098952590035253 12 -33.747967063882278 14 -26.247973355004287 
		16 61.925985558075958 18 -7.3860799425205377 20 -2.8715410996435016 22 -31.314933785581943 
		25 16.622320310673047 27 -33.747967063882278 31 19.818983105096201 33 2.6733024553372262 
		35 34.010312105635244;
createNode animCurveTA -n "animCurveTA398";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -22.950753025535782 4 -22.950753025535782 
		6 -26.522733614135308 8 -28.429293650339915 12 -15.105929597418479 14 9.0072602897992073 
		16 -9.0379973200184995 18 -66.925261982810355 20 21.996449233666144 22 8.5261166147945122 
		25 -73.162007738298996 27 -15.105929597418479 31 -21.776923468594415 33 -5.1251280295618722 
		35 -41.827526840791819;
createNode animCurveTA -n "animCurveTA399";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 60.585329838143075 4 60.585329838143075 
		6 6.4966574377957027 8 -33.603671519386587 12 78.303080769694063 14 -28.893959051664304 
		16 -43.674682310454642 18 29.284068499817948 20 53.489694886273071 22 -15.719086348395356 
		25 -1.9487303755803724 27 78.303080769694063 31 50.919741285508259 33 -47.970197667441489 
		35 -27.076826704491992;
createNode animCurveTA -n "animCurveTA400";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 62.960170940606567 4 62.960170940606567 
		6 38.770196707882292 8 9.3019362980754607 12 -32.924356194216735 14 -38.201809968654693 
		16 52.028105958996434 18 -5.8230507633714641 20 -30.075633708536667 22 -37.852398770741651 
		25 15.799936435215679 27 -32.924356194216735 31 7.2632134271412658 33 -2.1094404947949306 
		35 -3.3242708491645709;
createNode animCurveTA -n "animCurveTA401";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -19.447616965174127 4 -19.447616965174127 
		6 -28.375603105799893 8 -34.853337593000262 12 -15.251324462137292 14 11.485952347916472 
		16 -14.64592009984961 18 -61.125692707034752 20 5.0299714641142508 22 3.7000801951023625 
		25 -62.657781298398838 27 -15.251324462137292 31 -25.125933860370605 33 -0.54336660349016597 
		35 -50.940854841934808;
createNode animCurveTA -n "animCurveTA402";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -69.946882873152816 4 -69.946882873152816 
		6 -43.076533636406239 8 -5.7207021385019061 12 78.163146615560279 14 -23.529360148786367 
		16 -31.63925012879119 18 33.189375421467709 20 56.788038891715956 22 -10.467911603746069 
		25 5.3788186601111896 27 78.163146615560279 31 73.816628541979384 33 -29.813841034391537 
		35 12.834818361389406;
createNode animCurveTA -n "animCurveTA403";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 90.634950435315986 4 90.634950435315986 
		6 96.244329662608322 8 90.634950435315986 12 0.88489223803603145 14 71.046436545074869 
		16 16.010525063638273 18 2.9089141230746134 20 31.473486067686345 22 48.824295872483681 
		25 -0.56206119080308559 27 0.88489223803603145 31 24.110836256827266 33 75.113138389512514 
		35 31.772147556851937;
createNode animCurveTA -n "animCurveTA404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 26.470453106824781 4 26.470453106824781 
		6 53.184415670486601 8 71.246014703908557 12 2.027108271335087 14 69.80675944607151 
		16 19.583045056398156 18 18.334442069637742 20 36.754503227764097 22 40.616843886889683 
		25 -1.3291078495599431 27 2.027108271335087 31 9.9322244695604507 33 83.376836351727334 
		35 31.217086715774858;
createNode animCurveTA -n "animCurveTA405";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 14.859570486861982 4 14.859570486861982 
		6 14.859570486861982 8 14.859570486861982 12 14.859570486861982 14 14.859570486861982 
		16 14.859570486861982 18 14.859570486861982 20 14.859570486861982 22 14.149265144144735 
		25 14.661905651112248 27 14.859570486861982 31 14.859570486861982 33 14.859570486861982 
		35 14.859570486861982;
createNode animCurveTA -n "animCurveTA406";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0.052172032759606073 4 0.052172032759606073 
		6 0.052172032759606073 8 0.052172032759606073 12 0.052172032759606073 14 
		0.052172032759606073 16 0.052172032759606073 18 0.052172032759606073 20 0.052172032759606073 
		22 4.5866518648247956 25 -0.86635952424040363 27 0.052172032759606073 31 
		0.052172032759606073 33 0.052172032759606073 35 0.052172032759606073;
createNode animCurveTA -n "animCurveTA407";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1.8225558374727127 4 1.8225558374727127 
		6 1.8225558374727127 8 1.8225558374727127 12 1.8225558374727127 14 1.8225558374727127 
		16 1.8225558374727127 18 1.8225558374727127 20 1.8225558374727127 22 -15.580159003297357 
		25 5.3276228408830297 27 1.8225558374727127 31 1.8225558374727127 33 1.8225558374727127 
		35 1.8225558374727127;
createNode animCurveTA -n "animCurveTA408";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 14.849434068729675 4 14.849434068729675 
		6 14.849434068729675 8 14.849434068729675 12 14.849434068729675 14 14.849434068729675 
		16 14.849434068729675 18 14.849434068729675 20 14.849434068729675 22 14.975154515223073 
		25 13.187844291919252 27 14.849434068729675 31 14.849434068729675 33 14.849434068729675 
		35 14.849434068729675;
createNode animCurveTA -n "animCurveTA409";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0.051608316401883209 4 0.051608316401883209 
		6 0.051608316401883209 8 0.051608316401883209 12 0.051608316401883209 14 
		0.051608316401883209 16 0.051608316401883209 18 0.051608316401883209 20 0.051608316401883209 
		22 1.3262967120827556 25 1.9487148352515238 27 0.051608316401883209 31 0.051608316401883209 
		33 0.051608316401883209 35 0.051608316401883209;
createNode animCurveTA -n "animCurveTA410";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1.8225462689462448 4 1.8225462689462448 
		6 1.8225462689462448 8 1.8225462689462448 12 1.8225462689462448 14 1.8225462689462448 
		16 1.8225462689462448 18 1.8225462689462448 20 1.8225462689462448 22 6.0189010700327295 
		25 1.2787333593279648 27 1.8225462689462448 31 1.8225462689462448 33 1.8225462689462448 
		35 1.8225462689462448;
createNode animCurveTA -n "animCurveTA411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -60.679962459776895 4 -60.679962459776895 
		6 -60.679962459776895 8 -60.679962459776895 12 -60.679962459776895 27 -60.679962459776895 
		31 -60.679962459776895 33 -60.679962459776895 35 -60.679962459776895;
createNode animCurveTA -n "animCurveTA412";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 12.355514613247321 4 12.355514613247321 
		6 12.355514613247321 8 12.355514613247321 12 12.355514613247321 27 12.355514613247321 
		31 12.355514613247321 33 12.355514613247321 35 12.355514613247321;
createNode animCurveTA -n "animCurveTA413";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 13.110465504305042 4 13.110465504305042 
		6 13.110465504305042 8 13.110465504305042 12 13.110465504305042 27 13.110465504305042 
		31 13.110465504305042 33 13.110465504305042 35 13.110465504305042;
createNode animCurveTA -n "animCurveTA414";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -20.551139383726671 4 -20.551139383726671 
		6 -20.551139383726671 8 -20.551139383726671 12 -20.551139383726671 27 -20.551139383726671 
		31 -20.551139383726671 33 -20.551139383726671 35 -20.551139383726671;
createNode animCurveTA -n "animCurveTA415";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 3.0722483700821352 4 3.0722483700821352 
		6 3.0722483700821352 8 3.0722483700821352 12 3.0722483700821352 27 3.0722483700821352 
		31 3.0722483700821352 33 3.0722483700821352 35 3.0722483700821352;
createNode animCurveTA -n "animCurveTA416";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 19.857676546395723 4 19.857676546395723 
		6 19.857676546395723 8 19.857676546395723 12 19.857676546395723 27 19.857676546395723 
		31 19.857676546395723 33 19.857676546395723 35 19.857676546395723;
createNode animCurveTA -n "animCurveTA417";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA418";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA419";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA420";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA421";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA422";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 12.085861696683486 35 12.085861696683486;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA423";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA424";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA425";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 12.085861696683486 35 12.085861696683486;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
	setAttr -s 2 ".kox[0:1]"  0 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA426";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 12 0 27 0 31 0 
		33 0 35 0;
createNode animCurveTA -n "animCurveTA427";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 12 0 27 0 31 0 
		33 0 35 0;
createNode animCurveTA -n "animCurveTA428";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.43065494947832267 4 -0.43065494947832267 
		6 -0.43065494947832267 8 -0.43065494947832267 12 -0.43065494947832267 27 
		-0.43065494947832267 31 -0.43065494947832267 33 -0.43065494947832267 35 -0.43065494947832267;
createNode animCurveTA -n "animCurveTA429";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 12 0 27 0 31 0 
		33 0 35 0;
createNode animCurveTA -n "animCurveTA430";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 12 0 27 0 31 0 
		33 0 35 0;
createNode animCurveTA -n "animCurveTA431";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 12 0 27 0 31 0 
		33 0 35 0;
createNode animCurveTA -n "animCurveTA432";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 34.436570627353341 4 34.436570627353341 
		6 20.034518106915417 8 5.8062103752962031 12 7.1961677057309039 27 7.1961677057309039 
		31 7.0745706926666809 33 6.7539986710673556 35 6.7142752926084732;
createNode animCurveTA -n "animCurveTA433";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -12.578671015845821 4 -12.578671015845821 
		6 -9.0306418112105646 8 -5.3177849864371431 12 -3.9991640813105711 27 -3.9991640813105711 
		31 -4.1738497404797901 33 -4.5600579053402148 35 -0.36047962116776733;
createNode animCurveTA -n "animCurveTA434";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -3.7943623819848562 4 -3.7943623819848562 
		6 0.89925221205531647 8 2.3220265089855134 12 -23.844696446857313 27 -23.844696446857313 
		31 -20.963891908114029 33 -14.16553842020148 35 -13.307238947269525;
createNode animCurveTA -n "animCurveTA435";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -13.44722672283352 4 -13.44722672283352 
		6 -7.4412765706768225 8 -1.4437386573020361 12 -1.511036401087982 27 -1.511036401087982 
		31 -0.70014306617707267 33 -0.83808310269376274 35 -1.3247898271573977;
createNode animCurveTA -n "animCurveTA436";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 2.3998587564717182 4 2.3998587564717182 
		6 1.6934676833787039 8 0.84819942876019017 12 -0.26281804566783518 27 -0.26281804566783518 
		31 2.7042880112410566 33 2.2973805885096663 35 4.7093205363309236;
createNode animCurveTA -n "animCurveTA437";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1.1510007110886771 4 1.1510007110886771 
		6 3.4197243341126642 8 3.7013832833638367 12 -12.195133845419608 27 -12.195133845419608 
		31 29.878404267877841 33 26.221238048852484 35 10.46961743833864;
createNode animCurveTA -n "animCurveTA438";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 12 0 27 0 31 0 
		33 0 35 0;
createNode animCurveTA -n "animCurveTA439";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 12 0 27 0 31 0 
		33 0 35 0;
createNode animCurveTA -n "animCurveTA440";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 12 0 27 0 31 0 
		33 0 35 0;
createNode animCurveTA -n "animCurveTA441";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -3.0573637994901306 4 -3.0701159580853066 
		6 -3.1927292020775928 8 -3.1333207555380378 12 -1.6898993192373002 27 -1.6898993192373002 
		31 -1.8678797260643598 33 -2.5858912014906519 35 -2.8437132457909442;
createNode animCurveTA -n "animCurveTA442";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.75065117256362812 4 -0.69661193959181655 
		6 -0.54574349945300804 8 -0.30464609522926667 12 0.4712248827597334 27 0.4712248827597334 
		31 0.30012712205039138 33 -0.14548957527696421 35 2.71755856003259;
createNode animCurveTA -n "animCurveTA443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 3.2883345540401034 4 4.2980269842767287 
		6 10.264215348862134 8 11.522128031251736 12 -25.134386054034703 27 -25.134386054034703 
		31 -19.704849310316192 33 -1.0411084183390373 35 4.7566492066938126;
createNode animCurveTA -n "animCurveTA444";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -20.551139383726671 4 -20.551139383726671 
		6 -20.551139383726671 8 -20.551139383726671 12 -20.551139383726671 27 -20.551139383726671 
		31 -20.551139383726671 33 -20.551139383726671 35 -20.551139383726671;
createNode animCurveTA -n "animCurveTA445";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 3.0722483700821352 4 3.0722483700821352 
		6 3.0722483700821352 8 3.0722483700821352 12 3.0722483700821352 27 3.0722483700821352 
		31 3.0722483700821352 33 3.0722483700821352 35 3.0722483700821352;
createNode animCurveTA -n "animCurveTA446";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 19.857676546395723 4 19.857676546395723 
		6 19.857676546395723 8 19.857676546395723 12 19.857676546395723 27 19.857676546395723 
		31 19.857676546395723 33 19.857676546395723 35 19.857676546395723;
createNode animCurveTA -n "animCurveTA447";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -60.679962459776895 4 -60.679962459776895 
		6 -60.679962459776895 8 -60.679962459776895 12 -60.679962459776895 27 -60.679962459776895 
		31 -60.679962459776895 33 -60.679962459776895 35 -60.679962459776895;
createNode animCurveTA -n "animCurveTA448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 12.355514613247321 4 12.355514613247321 
		6 12.355514613247321 8 12.355514613247321 12 12.355514613247321 27 12.355514613247321 
		31 12.355514613247321 33 12.355514613247321 35 12.355514613247321;
createNode animCurveTA -n "animCurveTA449";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 13.110465504305042 4 13.110465504305042 
		6 13.110465504305042 8 13.110465504305042 12 13.110465504305042 27 13.110465504305042 
		31 13.110465504305042 33 13.110465504305042 35 13.110465504305042;
createNode animCurveTA -n "animCurveTA450";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 12 0 27 0 31 0 
		33 0 35 0;
createNode animCurveTA -n "animCurveTA451";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 4 0 6 0 8 0 12 0 27 0 31 0 
		33 0 35 0;
createNode animCurveTA -n "animCurveTA452";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -0.43065494947832267 4 -0.43065494947832267 
		6 -0.43065494947832267 8 -0.43065494947832267 12 -0.43065494947832267 27 
		-0.43065494947832267 31 -0.43065494947832267 33 -0.43065494947832267 35 -0.43065494947832267;
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
	setAttr ".o" 12;
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
connectAttr "apu_turn_180_CCWSource.st" "clipLibrary1.st[0]";
connectAttr "apu_turn_180_CCWSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL124.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL125.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL126.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL127.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL128.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA340.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU17.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU18.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU19.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU20.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "apu_Hoop_Root_IK_FK_RArm.a" "clipLibrary1.cel[0].cev[10].cevr"
		;
connectAttr "apu_Hoop_Root_IK_FK_LArm.a" "clipLibrary1.cel[0].cev[11].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "animCurveTA341.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA342.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA343.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL129.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL130.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL131.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL132.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL133.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL134.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA344.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA345.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA346.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL135.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL136.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL137.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA347.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA348.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA349.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA350.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA351.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA352.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA353.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA354.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA355.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL138.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL139.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL140.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL141.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL142.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL143.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL144.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL145.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL146.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA356.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA357.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA358.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA359.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA360.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA361.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA362.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA363.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA364.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA365.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA366.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA367.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA368.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA369.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA370.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA371.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA372.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA373.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA374.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA375.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA376.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA377.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA378.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA379.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA380.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA381.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA382.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA383.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA384.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTL147.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTL148.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTL149.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA385.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA386.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA387.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL150.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL151.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL152.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA388.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA389.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA390.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL153.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL154.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL155.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA391.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA392.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA393.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL156.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL157.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL158.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA394.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA395.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA396.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL159.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL160.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL161.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL162.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL163.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL164.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA397.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA398.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA399.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA400.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA401.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA402.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA403.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA404.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA405.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA406.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA407.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA408.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA409.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA410.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA411.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA412.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA413.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA414.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA415.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA416.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA417.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA418.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA419.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA420.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA421.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA422.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA423.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA424.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA425.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA426.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA427.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA428.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA429.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA430.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA431.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA432.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA433.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA434.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA435.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA436.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA437.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA438.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA439.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA440.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA441.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA442.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA443.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA444.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA445.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA446.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA447.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA448.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA449.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA450.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA451.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA452.a" "clipLibrary1.cel[0].cev[161].cevr";
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
// End of apu_turn_180_CCW.ma
