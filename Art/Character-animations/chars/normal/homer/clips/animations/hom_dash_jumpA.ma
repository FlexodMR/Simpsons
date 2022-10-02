//Maya ASCII 4.0 scene
//Name: hom_dash_jumpA.ma
//Last modified: Thu, Jul 04, 2002 04:02:35 PM
requires maya "4.0";
requires "p3dmayaexp" "17.7";
requires "p3dSimpleShader" "17.1";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "clip1Source";
	setAttr ".ihi" 0;
	setAttr ".du" 50;
	setAttr ".ci" no;
createNode animCurveTL -n "hom_Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTL -n "hom_Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0.020522575400564586 1 0.021659729314473242 
		2 0.021978132410367661 3 0.021750701627585932 4 0.021250353905466125 5 0.020750006183346322 
		6 0.020522575400564586 7 0.020522575400564586 8 0.020522575400564586 9 0.020522575400564586 
		10 0.020522575400564586 11 0.020522575400564586 12 0.020522575400564586 13 
		0.020522575400564586 14 0.020506970123023809 15 0.020469071591853343 16 0.020422255759231008 
		17 0.020379898577334608 18 0.020355375998341953 19 0.020362063974430859 20 
		0.020413338457779134 21 0.020522575400564586;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 4.9187856473878444 1 5.1311201519600447 
		2 5.3363969940674636 3 5.5342113148599479 4 5.724158255487346 5 5.9058329570995092 
		6 6.078830560846284 7 6.2472403141931219 8 6.4134717470347846 9 6.5746004241650899 
		10 6.7277019103778519 11 6.8698517704668847 12 6.9981255692260058 13 7.1095988714490321 
		14 7.209282518921114 15 7.3026945967559325 16 7.3876715347400923 17 7.4620497626602003 
		18 7.5236657103028612 19 7.5703558074546766 20 7.5999564839022575 21 7.6103041694322053;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0;
createNode animCurveTU -n "animCurveTU49";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTU -n "animCurveTU50";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTU -n "animCurveTU51";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTU -n "animCurveTU52";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTU -n "animCurveTU53";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  13 1 21 0;
createNode animCurveTU -n "animCurveTU54";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  13 1 21 0;
createNode animCurveTU -n "animCurveTU55";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  13 0 21 1;
createNode animCurveTU -n "animCurveTU56";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  13 0 21 1;
createNode animCurveTA -n "animCurveTA680";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA681";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTA -n "animCurveTA682";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTL -n "animCurveTL252";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTL -n "animCurveTL253";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTL -n "animCurveTL254";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  21 0;
createNode animCurveTL -n "animCurveTL255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.19763288944005308 6 -0.19763288944005308 
		13 -0.21962871797434472 21 -0.26454016861507795 24 -0.26454016861507795 27 
		-0.26454016861507795 31 -0.26454016861507795 34 -0.26454016861507795 38 -0.26454016861507795 
		42 -0.26454016861507795 46 -0.26454016861507795;
createNode animCurveTL -n "animCurveTL256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.36956228769602462 6 0.14985029217785525 
		13 0.14985029217785525 21 0.13806192026723146 24 0.13806192026723146 27 0.40393989055509982 
		31 1.6605583903941317 34 1.6429722247498533 38 0.90220514955221276 42 0.15135515409434999 
		46 0.15135515409434999;
createNode animCurveTL -n "animCurveTL257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 6.8988342239399323 6 9.2250424584561994 
		13 10.937414386341427 21 11.252549550719216 24 11.252549550719216 27 11.971404803719754 
		31 14.76169155139384 34 16.458756536066652 38 18.05040471115348 42 19.21911905190964 
		46 19.21911905190964;
	setAttr -s 11 ".kit[3:10]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 11 ".kot[3:10]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA683";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 68.750149689121002 6 0.59917317027913031 
		13 0.0028357814165884052 21 0 24 0 27 35.302889577616533 31 -6.2689983876820143 
		34 42.28251743113433 38 95.148328978383631 42 -0.41204283436644451 46 -0.41204283436644451;
	setAttr -s 11 ".kit[1:10]"  1 3 9 9 9 9 9 
		9 9 9;
	setAttr -s 11 ".kot[1:10]"  1 3 9 9 9 9 9 
		9 9 9;
	setAttr -s 11 ".kix[1:10]"  0.99140387773513794 1 1 0.30873799324035645 
		0.90539979934692383 0.8864627480506897 0.13069118559360504 0.33693903684616089 
		0.15788184106349945 1;
	setAttr -s 11 ".kiy[1:10]"  -0.13083696365356445 0 -0.00013498288171831518 
		0.95114713907241821 -0.4245600700378418 0.46279996633529663 0.99142313003540039 
		-0.94152647256851196 -0.9874579906463623 0;
	setAttr -s 11 ".kox[1:10]"  0.99140387773513794 1 1 0.30873799324035645 
		0.90539979934692383 0.8864627480506897 0.13069118559360504 0.33693903684616089 
		0.15788184106349945 1;
	setAttr -s 11 ".koy[1:10]"  -0.130837082862854 0 -0.00013498288171831518 
		0.95114713907241821 -0.4245600700378418 0.46279996633529663 0.99142313003540039 
		-0.94152647256851196 -0.9874579906463623 0;
createNode animCurveTA -n "animCurveTA684";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0 13 0 21 0 24 0 27 0 31 
		0 34 0 38 0 42 0 46 0;
	setAttr -s 11 ".kit[3:10]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 11 ".kot[3:10]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA685";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0 13 0 21 0 24 0 27 0 31 
		0 34 0 38 0 42 0 46 0;
createNode animCurveTL -n "animCurveTL258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.19697756422115981 6 0.19697756422115981 
		13 0.24173183070481385 21 0.21594587158542247 24 0.21594587158542247 27 0.21594587158542247 
		31 0.21594587158542247 34 0.21594587158542247 38 0.21594587158542247 42 0.21594587158542247 
		46 0.21594587158542247;
	setAttr -s 11 ".kit[3:10]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 11 ".kot[3:10]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "animCurveTL259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.11742628606129618 6 0.35700193468720687 
		13 0.14697806042501138 21 0.1380615615975922 24 0.1380615615975922 27 0.3153135417895046 
		31 1.4037232660595331 34 2.362169293672673 38 0.37010648334388202 42 0.15464518029945173 
		46 0.15464518029945173;
createNode animCurveTL -n "animCurveTL260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 7.1529341513685498 6 8.904025838494432 
		13 10.846452284982856 21 11.318238259942266 24 11.318238259942266 27 11.372398587223131 
		31 13.84605705147319 34 17.248980103640953 38 19.080877059872972 42 19.302867493312689 
		46 19.302867493312689;
	setAttr -s 11 ".kit[2:10]"  1 3 9 9 9 9 9 
		9 9;
	setAttr -s 11 ".kot[2:10]"  1 3 9 9 9 9 9 
		9 9;
	setAttr -s 11 ".kix[2:10]"  0.0022448485251516104 1 0.036902245134115219 
		0.00092306151054799557 0.00039705619565211236 0.00044573319610208273 0.0012983499327674508 
		0.012011663056910038 1;
	setAttr -s 11 ".kiy[2:10]"  0.99999749660491943 0 0.99931889772415161 
		0.99999958276748657 0.99999994039535522 0.99999988079071045 0.99999916553497314 
		0.99992787837982178 0;
	setAttr -s 11 ".kox[2:10]"  0.0022448513191193342 1 0.036902245134115219 
		0.00092306151054799557 0.00039705619565211236 0.00044573319610208273 0.0012983499327674508 
		0.012011663056910038 1;
	setAttr -s 11 ".koy[2:10]"  0.99999749660491943 0 0.99931889772415161 
		0.99999958276748657 0.99999994039535522 0.99999988079071045 0.99999916553497314 
		0.99992787837982178 0;
createNode animCurveTA -n "animCurveTA686";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 77.194699757699198 13 0.41517108372992484 
		21 0 24 0 27 65.853249801670088 31 97.269140401248976 34 -52.255426907359578 
		38 14.518834558877312 42 1.451744115254888 46 1.451744115254888;
	setAttr -s 11 ".kit[2:10]"  3 9 9 9 9 9 9 
		9 9;
	setAttr -s 11 ".kot[2:10]"  3 9 9 9 9 9 9 
		9 9;
createNode animCurveTA -n "animCurveTA687";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0 13 0 21 0 24 0 27 0 31 
		0 34 0 38 0 42 0 46 0;
createNode animCurveTA -n "animCurveTA688";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0 13 0 21 0 24 0 27 0 31 
		0 34 0 38 0 42 0 46 0;
createNode animCurveTA -n "hom_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTL -n "Right_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  24 0 27 0 31 0 34 0 38 0 42 0 46 
		0;
createNode animCurveTL -n "Right_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  24 0 27 0 31 0 34 0 38 0 42 0 46 
		0;
createNode animCurveTL -n "Right_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  24 1 27 1 31 1 34 1 38 1 42 1 46 
		1;
createNode animCurveTL -n "Left_Knee_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  24 0 27 0 31 0 34 0 38 0 42 0 46 
		0;
createNode animCurveTL -n "Left_Knee_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  24 0 27 0 31 0 34 0 38 0 42 0 46 
		0;
createNode animCurveTL -n "Left_Knee_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  24 1 27 1 31 1 34 1 38 1 42 1 46 
		1;
createNode animCurveTL -n "animCurveTL267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.03051835782609956 6 0.03051835782609956 
		13 0.03051835782609956 21 0.03051835782609956 24 0.03051835782609956 27 0.03051835782609956 
		31 0.03051835782609956 34 0.03051835782609956 38 0.03051835782609956 42 0.03051835782609956 
		46 0.03939813919472121;
createNode animCurveTL -n "animCurveTL268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.76074829734573723 6 0.87580142571340613 
		13 0.90908887429781016 21 0.82955703169610095 24 0.59726134361187688 27 0.92714697341349073 
		31 1.9363996268275161 34 2.3760537679344607 38 1.1147476669222607 42 0.6772959304381142 
		46 0.61678692073698771;
	setAttr -s 11 ".kit[2:10]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 11 ".kot[2:10]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 11 ".kix[2:10]"  0.08889336884021759 0.011757823638617992 
		0.020489612594246864 0.0017424112884327769 0.0016104073729366064 0.0028397957794368267 
		0.0015697726048529148 0.0053550978191196918 0.022029934450984001;
	setAttr -s 11 ".kiy[2:10]"  0.99604111909866333 -0.99993085861206055 
		0.99979007244110107 0.99999850988388062 0.99999868869781494 -0.99999594688415527 
		-0.99999874830245972 -0.99998563528060913 -0.99975728988647461;
	setAttr -s 11 ".kox[2:10]"  0.088893376290798187 0.011757823638617992 
		0.020489612594246864 0.0017424112884327769 0.0016104073729366064 0.0028397957794368267 
		0.0015697726048529148 0.0053550978191196918 0.022029934450984001;
	setAttr -s 11 ".koy[2:10]"  0.99604111909866333 -0.99993085861206055 
		0.99979007244110107 0.99999850988388062 0.99999868869781494 -0.99999594688415527 
		-0.99999874830245972 -0.99998563528060913 -0.99975728988647461;
createNode animCurveTL -n "animCurveTL269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 7.3145430106562221 6 9.0396026131804454 
		13 10.572419792544464 21 11.317 24 11.44438795798167 27 11.907212572927229 
		31 14.192872993894294 34 16.461488362006126 38 18.713820685242212 42 19.105568508959365 
		46 19.272324483888127;
	setAttr -s 11 ".kit[3:10]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 11 ".kot[3:10]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA695";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 17.097284428219005 6 -19.052632504459879 
		13 -27.904315542353093 21 31.660816129923894 24 31.660816129923894 27 15.777772212346544 
		31 -38.594613221638781 34 -59.936496822743237 38 -11.722674222649985 42 -11.722674222649985 
		46 -11.722674222649985;
	setAttr -s 11 ".kit[2:10]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 11 ".kot[2:10]"  1 9 9 9 9 9 9 
		9 9;
	setAttr -s 11 ".kix[2:10]"  0.91952955722808838 0.33261546492576599 
		0.58509010076522827 0.18693706393241882 0.1738821268081665 0.44542807340621948 
		0.30209231376647949 1 1;
	setAttr -s 11 ".kiy[2:10]"  0.39302083849906921 0.94306254386901855 
		-0.81096827983856201 -0.98237186670303345 -0.98476648330688477 0.89531773328781128 
		0.95327866077423096 0 0;
	setAttr -s 11 ".kox[2:10]"  0.91952943801879883 0.33261546492576599 
		0.58509010076522827 0.18693706393241882 0.1738821268081665 0.44542807340621948 
		0.30209231376647949 1 1;
	setAttr -s 11 ".koy[2:10]"  0.39302107691764832 0.94306254386901855 
		-0.81096827983856201 -0.98237186670303345 -0.98476648330688477 0.89531773328781128 
		0.95327866077423096 0 0;
createNode animCurveTA -n "animCurveTA696";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0 13 0 21 0 24 0 27 0 31 
		0 34 0 38 0 42 0 46 0;
createNode animCurveTA -n "animCurveTA697";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0 13 0 21 0 24 0 27 0 31 
		0 34 0 38 0 42 0 46 0;
createNode animCurveTA -n "hom_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_L_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_L_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_L_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTL -n "animCurveTL276";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  21 -0.6427968646761717 24 -0.80634482260056473 
		27 -1.1139224062888768 31 -1.2000992365315746 34 -1.1439482433566164 38 -1.3094397103573885 
		42 -1.1122111141356177 46 -0.92287094496223643;
createNode animCurveTL -n "animCurveTL277";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  21 1.2583259395626301 24 1.4469710125782096 
		27 1.9375146490462802 31 3.3687243480082532 34 5.1061572973556331 38 3.1156327837882705 
		42 2.5313873929015647 46 1.1108486434876108;
createNode animCurveTL -n "animCurveTL278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  21 18.821166668511264 24 18.694284703673834 
		27 19.324251774083422 31 22.353427508969439 34 26.846160734993202 38 30.846881901905284 
		42 31.72664328488084 46 31.946666328724991;
createNode animCurveTA -n "animCurveTA730";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  21 94.087206947647402 24 7.3566619347615223 
		27 -9.115993314220681 31 -25.091126583761181 34 -101.12578262135072 38 -64.346910816885924 
		42 -90.95452518140749 46 -6.2087112687095152;
	setAttr -s 8 ".kit[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  1 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kix[0:7]"  0.99959522485733032 0.11035669595003128 
		0.38094863295555115 0.14378999173641205 0.32237929105758667 0.83241873979568481 
		0.25417199730873108 0.089781239628791809;
	setAttr -s 8 ".kiy[0:7]"  0.028449054807424545 -0.99389207363128662 
		-0.92459619045257568 -0.98960822820663452 -0.94661056995391846 0.55414718389511108 
		0.96715903282165527 0.99596148729324341;
	setAttr -s 8 ".kox[0:7]"  0.99959522485733032 0.11035669595003128 
		0.38094863295555115 0.14378999173641205 0.32237929105758667 0.83241873979568481 
		0.25417199730873108 0.089781239628791809;
	setAttr -s 8 ".koy[0:7]"  0.028449023142457008 -0.99389207363128662 
		-0.92459619045257568 -0.98960822820663452 -0.94661056995391846 0.55414718389511108 
		0.96715903282165527 0.99596148729324341;
createNode animCurveTA -n "animCurveTA731";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  21 63.822022172532755 24 18.103084532249603 
		27 26.324117884677346 31 -44.605624668790895 34 18.821420098753155 38 9.0530837101803634 
		42 23.547124278953465 46 27.83960258319113;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA732";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  21 107.51387360664586 24 27.384539512019494 
		27 34.555108709452107 31 4.1864986063640526 34 -71.827715309522802 38 -25.543409545283431 
		42 -51.025936626641993 46 45.076686539568037;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "animCurveTL279";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  21 0.5981636641636231 24 1.0024876497696322 
		27 1.0024876497696322 31 1.0024876497696322 34 0.94210577776862836 38 1.377407830677412 
		42 1.2043490865990982 46 0.90494680039618969;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "animCurveTL280";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  21 1.1864821410387538 24 1.3013238452739646 
		27 1.9949033942153824 31 4.3865558470819073 34 3.8223960990253945 38 3.0616538550109569 
		42 2.5951365264242741 46 1.0529223531298446;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "animCurveTL281";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  21 19.062288088416633 24 18.781241298510064 
		27 19.905318498518575 31 23.129852345266244 34 26.139555088764499 38 30.649700256696502 
		42 31.709527089555664 46 32.053226775240574;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA733";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  21 82.549485506635008 24 6.093037536097877 
		27 -9.0703748831085189 31 -122.49030980106608 34 -45.416141913839539 38 -70.00789147894109 
		42 -85.11027458851477 46 -2.1513976318227264;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA734";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  21 -45.861718968877817 24 27.443571845182099 
		27 -40.501771671985914 31 -63.832912229868441 34 17.357751870053225 38 38.972038619136228 
		42 -35.051365535474169 46 -29.430271342549375;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTA -n "animCurveTA735";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  21 -86.765694840867141 24 -26.521276404958893 
		27 -16.843539022083927 31 74.12139720981645 34 -47.202864944960844 38 19.107497473253957 
		42 40.93103573759489 46 -43.400827249869813;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		9;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		9;
createNode animCurveTL -n "animCurveTL282";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  21 0.70463540898725285 24 -0.075007643271199492 
		27 -0.075007643271199492 31 -0.075007643271199492 34 -0.075007643271199492 
		38 0.42754810371064994 42 0.44879925919486569 46 0.44879925919486569;
createNode animCurveTL -n "animCurveTL283";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  21 0.0086237652565301273 24 -0.0015683274246280649 
		27 -0.0015683274246280649 31 -0.0015683274246280649 34 -0.0015683274246280649 
		38 -0.90633634765029925 42 -2.1086769476633807 46 -2.1086769476633807;
createNode animCurveTL -n "animCurveTL284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  21 -1.0073138480383923 24 -0.99523236489475697 
		27 -0.99523236489475697 31 -0.99523236489475697 34 -0.99523236489475697 38 
		-1.1683884895498287 42 -0.18536689079245133 46 -0.18536689079245133;
createNode animCurveTL -n "animCurveTL285";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  21 -0.80347530299327841 24 -0.046699535373194809 
		27 -0.046699535373194809 31 -0.046699535373194809 34 -0.046699535373194809 
		38 -0.52663227176926597 42 -0.5126104209518183 46 -0.5126104209518183;
createNode animCurveTL -n "animCurveTL286";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  21 -0.0098334291948177117 24 5.9724781342803249e-005 
		27 5.9724781342803249e-005 31 5.9724781342803249e-005 34 5.9724781342803249e-005 
		38 -0.54533960262259329 42 -1.3386630780291868 46 -1.3386630780291868;
createNode animCurveTL -n "animCurveTL287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  21 -0.99166023138527937 24 -1.0033873591439757 
		27 -1.0033873591439757 31 -1.0033873591439757 34 -1.0033873591439757 38 -0.69781241262917137 
		42 -0.049199106950677696 46 -0.049199106950677696;
createNode animCurveTA -n "animCurveTA736";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -10.587124207154311 6 6.5222453545706891 
		13 -29.318709219068381 21 -22.78039507191296 24 -22.78039507191296 27 -22.78039507191296 
		31 -22.78039507191296 34 -22.78039507191296 38 -22.78039507191296 42 -22.78039507191296 
		46 -22.78039507191296;
createNode animCurveTA -n "animCurveTA737";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -60.592711499848917 6 -11.270701110865538 
		13 0.2591761412191334 21 -59.78589307060367 24 -59.78589307060367 27 -59.78589307060367 
		31 -59.78589307060367 34 -59.78589307060367 38 -59.78589307060367 42 -59.78589307060367 
		46 -59.78589307060367;
createNode animCurveTA -n "animCurveTA738";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.15003680417244822 6 -43.024026870863949 
		13 -52.267096591786228 21 34.574435665981952 24 34.574435665981952 27 34.574435665981952 
		31 34.574435665981952 34 34.574435665981952 38 34.574435665981952 42 34.574435665981952 
		46 34.574435665981952;
createNode animCurveTA -n "animCurveTA739";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 52.350458715167015 6 -26.845686876069546 
		13 -41.702520768547579 21 -4.3077020824181265 24 -4.3077020824181265 27 -4.3077020824181265 
		31 -4.3077020824181265 34 -4.3077020824181265 38 -4.3077020824181265 42 -4.3077020824181265 
		46 -4.3077020824181265;
createNode animCurveTA -n "animCurveTA740";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -49.562109142955322 6 -2.6900261896817361 
		13 -5.6360269321212852 21 -49.658336589859132 24 -49.658336589859132 27 -49.658336589859132 
		31 -49.658336589859132 34 -49.658336589859132 38 -49.658336589859132 42 -49.658336589859132 
		46 -49.658336589859132;
createNode animCurveTA -n "animCurveTA741";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -64.608787988643826 6 45.29300271475654 
		13 21.122073063033284 21 45.957278122761892 24 45.957278122761892 27 45.957278122761892 
		31 45.957278122761892 34 45.957278122761892 38 45.957278122761892 42 45.957278122761892 
		46 45.957278122761892;
createNode animCurveTA -n "animCurveTA742";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 72.938873120018542 6 64.703387914621587 
		13 22.807758850356816 21 64.255341242982553 24 64.255341242982553 27 64.255341242982553 
		31 64.255341242982553 34 64.255341242982553 38 64.255341242982553 42 64.255341242982553 
		46 64.255341242982553;
createNode animCurveTA -n "animCurveTA743";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 59.305463658789549 6 16.132257338928927 
		13 78.15412211170387 21 72.208811687058059 24 72.208811687058059 27 72.208811687058059 
		31 72.208811687058059 34 72.208811687058059 38 72.208811687058059 42 72.208811687058059 
		46 72.208811687058059;
createNode animCurveTA -n "animCurveTA744";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -17.955810303398234 6 -15.503254262547973 
		13 -12.849758238864569 21 72.79493678537078 24 72.79493678537078 27 72.79493678537078 
		31 72.79493678537078 34 72.79493678537078 38 72.79493678537078 42 72.79493678537078 
		46 72.79493678537078;
createNode animCurveTA -n "animCurveTA745";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 10.082003051124259 6 8.8433563691173394 
		13 7.3461064996816994 21 35.224795679311441 24 35.224795679311441 27 35.224795679311441 
		31 35.224795679311441 34 35.224795679311441 38 35.224795679311441 42 35.224795679311441 
		46 35.224795679311441;
createNode animCurveTA -n "animCurveTA746";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -4.7201893288928654 6 -4.1402801121403421 
		13 -3.439298162041589 21 56.771965155298119 24 56.771965155298119 27 56.771965155298119 
		31 56.771965155298119 34 56.771965155298119 38 56.771965155298119 42 56.771965155298119 
		46 56.771965155298119;
createNode animCurveTA -n "animCurveTA747";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 20.127263792592359 6 20.531700085875865 
		13 17.390126284086964 21 59.556508727470074 24 59.556508727470074 27 59.556508727470074 
		31 59.556508727470074 34 59.556508727470074 38 59.556508727470074 42 59.556508727470074 
		46 59.556508727470074;
createNode animCurveTA -n "animCurveTA748";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 11.615881410206432 6 10.18878668450802 
		13 8.4637449952978265 21 36.028288837490415 24 36.028288837490415 27 36.028288837490415 
		31 36.028288837490415 34 36.028288837490415 38 36.028288837490415 42 36.028288837490415 
		46 36.028288837490415;
createNode animCurveTA -n "animCurveTA749";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.32159281075535023 6 0.28208281983201922 
		13 0.23432397832006235 21 13.094680882304901 24 13.094680882304901 27 13.094680882304901 
		31 13.094680882304901 34 13.094680882304901 38 13.094680882304901 42 13.094680882304901 
		46 13.094680882304901;
createNode animCurveTA -n "Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  6 10.967667985987509 13 10.967667985987509 
		21 10.967667985987509 24 10.967667985987509 27 10.967667985987509 31 10.967667985987509 
		34 10.967667985987509 38 10.967667985987509 42 10.967667985987509 46 10.967667985987509;
createNode animCurveTA -n "Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  6 53.910048648242878 13 53.910048648242878 
		21 53.910048648242878 24 53.910048648242878 27 53.910048648242878 31 53.910048648242878 
		34 53.910048648242878 38 53.910048648242878 42 53.910048648242878 46 53.910048648242878;
createNode animCurveTA -n "Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  6 43.127820754253513 13 43.127820754253513 
		21 43.127820754253513 24 43.127820754253513 27 43.127820754253513 31 43.127820754253513 
		34 43.127820754253513 38 43.127820754253513 42 43.127820754253513 46 43.127820754253513;
createNode animCurveTA -n "animCurveTA753";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0 13 0 21 0 24 0 27 0 31 
		0 34 0 38 0 42 0 46 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA754";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0 13 0 21 0 24 0 27 0 31 
		0 34 0 38 0 42 0 46 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA755";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 86.382238158606057 6 79.613939213760304 
		13 70.77971168444968 21 59.219502482153104 24 59.219502482153104 27 59.219502482153104 
		31 59.219502482153104 34 59.219502482153104 38 59.219502482153104 42 59.219502482153104 
		46 59.219502482153104;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kix[0:10]"  0.80354344844818115 0.84669417142868042 
		0.81465160846710205 0.876118004322052 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0.59524613618850708 -0.53207981586456299 
		-0.57995063066482544 -0.48209676146507263 0 0 0 0 0 0 0;
createNode animCurveTA -n "hom_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 0;
createNode animCurveTA -n "hom_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 26.541511232508363;
createNode animCurveTA -n "hom_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 41.530156331423349;
createNode animCurveTA -n "hom_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 52.545459146006962;
createNode animCurveTA -n "hom_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 37.398953188221654;
createNode animCurveTA -n "hom_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 69.699093005590768;
createNode animCurveTA -n "hom_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  50 37.879253401261558;
createNode animCurveTA -n "animCurveTA765";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0 13 0 21 0 24 0 27 0 31 
		0 34 0 38 0 42 0 46 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA766";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0 13 0 21 0 24 0 27 0 31 
		0 34 0 38 0 42 0 46 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA767";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 95.284705327631698 6 90.754620314643489 
		13 80.550585000381275 21 66.672206829852314 24 66.672206829852314 27 66.672206829852314 
		31 66.672206829852314 34 66.672206829852314 38 66.672206829852314 42 66.672206829852314 
		46 66.672206829852314;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kix[0:10]"  0.18323923647403717 0.85997039079666138 
		0.76546549797058105 0.83437561988830566 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0.98306834697723389 -0.51034396886825562 
		-0.64347696304321289 -0.55119627714157104 0 0 0 0 0 0 0;
createNode animCurveTA -n "Jaw_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  6 0 13 0 21 0 24 0 27 0 31 0 34 
		0 38 0 42 0 46 0;
createNode animCurveTA -n "Jaw_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  6 0 13 0 21 0 24 0 27 0 31 0 34 
		0 38 0 42 0 46 0;
createNode animCurveTA -n "Jaw_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  6 0 13 0 21 0 24 0 27 0 31 0 34 
		0 38 0 42 0 46 0;
createNode animCurveTA -n "animCurveTA771";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 -0.80444315775703867 13 -0.68921145621496227 
		21 -0.93512710454466275 24 -1.3600558986621039 27 -0.16135188088572175 31 
		0.17531458053368568 34 -1.0037602929934266 38 -1.3817457402118334 42 -1.3817457402118334 
		46 -1.7049747317397195;
createNode animCurveTA -n "animCurveTA772";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 -0.60472186283169338 13 -1.3344464943638261 
		21 -1.9961603653245579 24 -1.7348136322083922 27 -2.1983501567531918 31 -2.1972812590348823 
		34 -1.9625555826433296 38 -1.7175900971389688 42 -1.7175900971389688 46 -1.3972839984681547;
createNode animCurveTA -n "animCurveTA773";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 7.1280947740371996 6 2.2124383659318805 
		13 -5.0186679783197166 21 5.0286057118218723 24 18.025996084384893 27 -15.880312516295612 
		31 -24.642075184185245 34 7.0155027336222062 38 18.746020822650696 42 18.746020822650696 
		46 30.596158129545248;
createNode animCurveTA -n "animCurveTA774";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0 13 0 21 0 24 0 27 0 31 
		0 34 0 38 0 42 0 46 0;
createNode animCurveTA -n "animCurveTA775";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0 13 0 21 0 24 0 27 0 31 
		0 34 0 38 0 42 0 46 0;
createNode animCurveTA -n "animCurveTA776";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0 13 0 21 14.508952910281577 
		24 14.508952910281577 27 14.508952910281577 31 14.508952910281577 34 14.508952910281577 
		38 14.508952910281577 42 14.508952910281577 46 14.508952910281577;
createNode animCurveTA -n "animCurveTA777";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0.50986500056630668 13 0.87215714273867373 
		21 3.6522933236182351 24 0.6205628187730865 27 3.5615739804694475 31 1.2859540278637445 
		34 0.56168829250648056 38 3.6375267832064915 42 3.6375267832064915 46 5.3394441416968288;
createNode animCurveTA -n "animCurveTA778";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0.51774709160700405 13 2.4779285352571505 
		21 4.9943351243210214 24 6.1534707642816313 27 5.0593482146838156 31 6.0499001423546632 
		34 6.1591023145083348 38 5.005087459058303 42 5.005087459058303 46 3.1252923706827938;
createNode animCurveTA -n "animCurveTA779";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -8.5537919350489524 6 -18.050704330054927 
		13 -23.781039275327831 21 -2.3311647619493834 24 -32.810404800085166 27 -3.3664805278333754 
		31 -26.556600069591706 34 -33.359394152338098 38 -2.5006014476938456 42 -2.5006014476938456 
		46 21.163097977813688;
createNode animCurveTA -n "animCurveTA780";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 -0.28780339846407804 13 -0.32417139403198053 
		21 -0.70293507907658626 24 -0.70293507907658626 27 -0.70293507907658626 31 
		-0.8369097121653194 34 -0.18869730455872094 38 -0.18869730455872094 42 -0.18869730455872094 
		46 -0.013750268718396658;
createNode animCurveTA -n "animCurveTA781";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0.26458471463537331 13 0.79616802841599899 
		21 1.2717523854678625 24 1.2717523854678625 27 1.2717523854678625 31 1.187886020951028 
		34 1.4407607497566994 38 1.4407607497566994 42 1.4407607497566994 46 1.452997479744611;
createNode animCurveTA -n "animCurveTA782";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 -10.713314820003864 13 5.3226666611229376 
		21 10.789123571196804 24 10.789123571196804 27 10.789123571196804 31 4.553091335708821 
		34 32.260660105234265 38 32.260660105234265 42 32.260660105234265 46 39.180803183306388;
createNode animCurveTA -n "animCurveTA783";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0 13 0 21 0 24 0 27 0 31 
		0 34 0 38 0 42 0 46 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA784";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0 13 0 21 0 24 0 27 0 31 
		0 34 0 38 0 42 0 46 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA785";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 85.281921116584812 6 79.775929340324637 
		13 72.029582107124057 21 61.824373247854581 24 61.824373247854581 27 61.824373247854581 
		31 61.824373247854581 34 61.824373247854581 38 61.824373247854581 42 61.824373247854581 
		46 61.824373247854581;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kix[0:10]"  0.62844902276992798 0.88219577074050903 
		0.84737789630889893 0.89948958158493042 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0.77785080671310425 -0.47088277339935303 
		-0.53099030256271362 -0.43694218993186951 0 0 0 0 0 0 0;
createNode animCurveTA -n "Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  6 22.82773238350271 13 22.82773238350271 
		21 22.82773238350271 24 22.82773238350271 27 22.82773238350271 31 22.82773238350271 
		34 22.82773238350271 38 22.82773238350271 42 22.82773238350271 46 22.82773238350271;
createNode animCurveTA -n "Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  6 38.5783375093581 13 38.5783375093581 
		21 38.5783375093581 24 38.5783375093581 27 38.5783375093581 31 38.5783375093581 
		34 38.5783375093581 38 38.5783375093581 42 38.5783375093581 46 38.5783375093581;
createNode animCurveTA -n "Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  6 45.467643381850564 13 45.467643381850564 
		21 45.467643381850564 24 45.467643381850564 27 45.467643381850564 31 45.467643381850564 
		34 45.467643381850564 38 45.467643381850564 42 45.467643381850564 46 45.467643381850564;
createNode animCurveTA -n "animCurveTA789";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0 13 0 21 0 24 0 27 0 31 
		0 34 0 38 0 42 0 46 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA790";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 6 0 13 0 21 0 24 0 27 0 31 
		0 34 0 38 0 42 0 46 0;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA791";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 77.470348806333021 6 70.994338622177807 
		13 62.002918112729986 21 50.17101925731437 24 50.17101925731437 27 50.17101925731437 
		31 50.17101925731437 34 50.17101925731437 38 50.17101925731437 42 50.17101925731437 
		46 50.17101925731437;
	setAttr -s 11 ".kit[0:10]"  1 9 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 11 ".kix[0:10]"  0.60384750366210938 0.84876835346221924 
		0.80889064073562622 0.87131589651107788 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0.79709988832473755 -0.52876490354537964 
		-0.58795911073684692 -0.49072256684303284 0 0 0 0 0 0 0;
createNode clipLibrary -n "clipLibrary1";
	setAttr -s 150 ".cel[0].cev";
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
	setAttr ".o" 17;
select -ne :renderPartition;
	setAttr -s 40 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 40 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 4 ".tx";
select -ne :initialShadingGroup;
	setAttr -k on ".nds";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
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
connectAttr "clip1Source.st" "clipLibrary1.st[0]";
connectAttr "clip1Source.du" "clipLibrary1.du[0]";
connectAttr "hom_Extra_Attributes_translateX.a" "clipLibrary1.cel[0].cev[0].cevr"
		;
connectAttr "hom_Extra_Attributes_translateY.a" "clipLibrary1.cel[0].cev[1].cevr"
		;
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU49.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU50.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU51.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU52.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU53.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU54.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU55.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU56.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA680.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA681.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA682.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL252.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL253.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL254.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL255.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL256.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL257.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA683.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA684.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA685.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL258.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL259.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL260.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA686.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA687.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA688.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "hom_Right_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[32].cevr"
		;
connectAttr "hom_Right_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[33].cevr"
		;
connectAttr "hom_Right_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[34].cevr"
		;
connectAttr "hom_Left_Ball_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[35].cevr"
		;
connectAttr "hom_Left_Ball_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[36].cevr"
		;
connectAttr "hom_Left_Ball_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[37].cevr"
		;
connectAttr "Right_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[38].cevr"
		;
connectAttr "Right_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[39].cevr"
		;
connectAttr "Right_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[40].cevr"
		;
connectAttr "Left_Knee_Hoop_translateX.a" "clipLibrary1.cel[0].cev[41].cevr"
		;
connectAttr "Left_Knee_Hoop_translateY.a" "clipLibrary1.cel[0].cev[42].cevr"
		;
connectAttr "Left_Knee_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[43].cevr"
		;
connectAttr "animCurveTL267.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL268.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL269.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA695.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA696.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA697.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "hom_R_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "hom_R_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "hom_R_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "hom_R_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[53].cevr"
		;
connectAttr "hom_R_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[54].cevr"
		;
connectAttr "hom_R_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[55].cevr"
		;
connectAttr "hom_R_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[56].cevr"
		;
connectAttr "hom_R_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[57].cevr"
		;
connectAttr "hom_R_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[58].cevr"
		;
connectAttr "hom_R_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[59].cevr"
		;
connectAttr "hom_L_Hip_Fk_rotateX.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "hom_L_Hip_Fk_rotateY.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "hom_L_Hip_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "hom_L_Knee_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[63].cevr"
		;
connectAttr "hom_L_Ankle_Fk_rotateX.a" "clipLibrary1.cel[0].cev[64].cevr"
		;
connectAttr "hom_L_Ankle_Fk_rotateY.a" "clipLibrary1.cel[0].cev[65].cevr"
		;
connectAttr "hom_L_Ankle_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[66].cevr"
		;
connectAttr "hom_L_Ball_Fk_rotateX.a" "clipLibrary1.cel[0].cev[67].cevr"
		;
connectAttr "hom_L_Ball_Fk_rotateY.a" "clipLibrary1.cel[0].cev[68].cevr"
		;
connectAttr "hom_L_Ball_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[69].cevr"
		;
connectAttr "hom_R_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[70].cevr"
		;
connectAttr "hom_R_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[71].cevr"
		;
connectAttr "hom_R_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[72].cevr"
		;
connectAttr "hom_L_Ball_IK_Fk_rotateX.a" "clipLibrary1.cel[0].cev[73].cevr"
		;
connectAttr "hom_L_Ball_IK_Fk_rotateY.a" "clipLibrary1.cel[0].cev[74].cevr"
		;
connectAttr "hom_L_Ball_IK_Fk_rotateZ.a" "clipLibrary1.cel[0].cev[75].cevr"
		;
connectAttr "animCurveTL276.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL277.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL278.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA730.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA731.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA732.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL279.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL280.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL281.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA733.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA734.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA735.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL282.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL283.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL284.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL285.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL286.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL287.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA736.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA737.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA738.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA739.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA740.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA741.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA742.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA743.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA744.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA745.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA746.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA747.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA748.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA749.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "Thumb_Base_L_rotateX.a" "clipLibrary1.cel[0].cev[120].cevr"
		;
connectAttr "Thumb_Base_L_rotateY.a" "clipLibrary1.cel[0].cev[121].cevr"
		;
connectAttr "Thumb_Base_L_rotateZ.a" "clipLibrary1.cel[0].cev[122].cevr"
		;
connectAttr "animCurveTA753.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA754.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA755.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "hom_Pelvis_rotateX.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "hom_Pelvis_rotateY.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "hom_Pelvis_rotateZ.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "hom_Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "hom_Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "hom_Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "hom_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "hom_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "hom_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA765.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA766.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA767.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "Jaw_rotateX.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "Jaw_rotateY.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "Jaw_rotateZ.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA771.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA772.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA773.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA774.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA775.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA776.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA777.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA778.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA779.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA780.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA781.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA782.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA783.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA784.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA785.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "Thumb_Base_R_rotateX.a" "clipLibrary1.cel[0].cev[156].cevr"
		;
connectAttr "Thumb_Base_R_rotateY.a" "clipLibrary1.cel[0].cev[157].cevr"
		;
connectAttr "Thumb_Base_R_rotateZ.a" "clipLibrary1.cel[0].cev[158].cevr"
		;
connectAttr "animCurveTA789.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA790.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA791.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
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
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[21].olnk";
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
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[38].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[39].llnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of hom_dash_jumpA.ma
