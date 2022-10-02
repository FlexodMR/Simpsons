//Maya ASCII 4.0 scene
//Name: hom_jump_dash_in_air.ma
//Last modified: Thu, Oct 10, 2002 10:45:53 AM
requires maya "4.0";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_jump_dash_in_airSource";
	setAttr ".ihi" 0;
	setAttr ".du" 21;
	setAttr ".ci" no;
createNode animCurveTL -n "hom_Extra_Attributes_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "hom_Extra_Attributes_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0.020522575400564586 1 0.020522575400564586 
		2 0.020522575400564586 3 0.020522575400564586 4 0.020522575400564586 5 0.020522575400564586 
		6 0.020522575400564586 7 0.020522575400564586 8 0.020522575400564586 9 0.020522575400564586 
		10 0.020522575400564586 11 0.020522575400564586 12 0.020578883286855913 13 
		0.020672729764008132 14 0.020691499059438571 15 0.020522575400564586 16 0.020194494732316472 
		17 0.018720723109887771 18 0.015759177957715972 19 0.012269269174840598 20 
		0.0085680148659768602 21 0.0049724331358399713;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0;
createNode animCurveTA -n "Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "hom_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "hom_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "hom_Hoop_Root_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Hoop_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Hoop_Root_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "hom_Hoop_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "hom_Hoop_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "hom_Hoop_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Right_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 -0.22809301424382589 1 -0.24294185514783984 
		2 -0.2577906957004869 3 -0.26454016861507795 4 -0.26454016861507795 5 -0.26454016861507795 
		6 -0.26454016861507795 7 -0.26454016861507795 8 -0.26454016861507795 9 -0.26454016861507795 
		10 -0.26454016861507795 11 -0.26454016861507795 12 -0.26454016861507795 13 
		-0.26454016861507795 14 -0.26454016861507795 15 -0.26454016861507795 16 -0.26454016861507795 
		17 -0.26454016861507795 18 -0.26454016861507795 19 -0.26454016861507795 20 
		-0.26454016861507795 21 -0.26454016861507795;
createNode animCurveTL -n "Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0.20398308734746706 1 0.14433646614866436 
		2 0.084689845516404058 3 0.06503246139762911 4 0.11489586206504876 5 0.20388618323436056 
		6 0.28210454201698842 7 0.2996520555243567 8 0.20655171388449398 9 0.041639801331590294 
		10 -0.1117626238636945 11 -0.17033450343069917 12 -0.079265907940147179 13 
		0.10614160740991981 14 0.30404187394918752 15 0.43258872300734219 16 0.35459258324990173 
		17 0.22919406865572614 18 0.19157460266417037 19 0.14927887675014462 20 0.12350119055798764 
		21 0.13543584373203815;
createNode animCurveTL -n "Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 -0.23336618586275359 1 -0.30121690395087186 
		2 -0.36906762263990855 3 -0.34811011428516225 4 -0.18099143122675598 5 0.067533222508957338 
		6 0.3031098470373137 7 0.43138444247365249 8 0.41027643643274148 9 0.29574782306802561 
		10 0.14050845230284015 11 -0.0027318259394742846 12 -0.13674576490903009 
		13 -0.28403571727879567 14 -0.4214862322597468 15 -0.52598185906283557 16 
		-0.5537191514534594 17 -0.48461015791796946 18 -0.29289656177588785 19 -0.033511314244332693 
		20 0.16005089153756738 21 0.15429536243068373;
createNode animCurveTA -n "animCurveTA1462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 66.753537441737635 1 56.258486405932402 
		2 45.763435211813452 3 35.302889577616533 4 22.77581465039049 5 8.8648233893961823 
		6 -2.2201067688125842 7 -6.2689983876820143 8 -0.56903749453351238 9 12.104403515963861 
		10 27.72902252934238 11 42.28251743113433 12 58.162297038501613 13 76.356915205208438 
		14 90.730787371690539 15 95.148328978383631 16 64.209069508775258 17 26.647606176945249 
		18 13.575504581652428 19 5.4221751980908994 20 1.2314023772375755 21 0.046970470069375145;
createNode animCurveTA -n "animCurveTA1463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 -3.5256945963156894 1 -2.201227317525305 
		2 -0.87676002815089704 3 0 4 0.28331473515185451 5 0.25183532013498172 6 
		0.094438245050617819 7 0 8 0 9 0 10 0 11 0 12 0.013627790128843303 13 0.036340773676915468 
		14 0.040883370386529908 15 0 16 0.83914823663577376 17 -0.43608925488945727 
		18 -6.8201301283337239 19 -15.273131145132513 20 -22.650768911012346 21 -25.808720031699725;
createNode animCurveTA -n "animCurveTA1464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 4.8238895241523405 1 2.8586012020832396 
		2 0.89331287613580346 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 
		0 15 0 16 -1.2833445370835765 17 -3.01306979311493 18 -3.8814197781777811 
		19 -4.6311998760518325 20 -5.1577896144519961 21 -5.3565685210931813;
createNode animCurveTL -n "Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0.21594587158542247 1 0.21594587158542247 
		2 0.21594587158542247 3 0.21594587158542247 4 0.21594587158542247 5 0.21594587158542247 
		6 0.21594587158542247 7 0.21594587158542247 8 0.21594587158542247 9 0.21594587158542247 
		10 0.21594587158542247 11 0.21594587158542247 12 0.21594587158542247 13 0.21594587158542247 
		14 0.21594587158542247 15 0.21594587158542247 16 0.21594587158542247 17 0.21594587158542247 
		18 0.21594587158542247 19 0.21594587158542247 20 0.21594587158542247 21 0.21594587158542247;
createNode animCurveTL -n "Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0.13859945159235679 1 0.13706849207447883 
		2 0.13553752606311187 3 0.12211485447851519 4 0.076044356941940644 5 0.010355759450260798 
		6 -0.036163867512835866 7 -0.024727453463660735 8 0.094635480343949224 9 
		0.28802941355307438 10 0.4684424179927778 11 0.54886256549212109 12 0.45328314948276299 
		13 0.24571170479554158 14 0.049157665358288145 15 -0.013369534901164423 16 
		-0.024890557884305484 17 -0.0093139551954087227 18 0.062469671338880851 19 
		0.094392036165943799 20 0.11036989642309454 21 0.13432000924764734;
createNode animCurveTL -n "Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 -0.30691414217425128 1 -0.43735544739189758 
		2 -0.56779675101087868 3 -0.63573518699210629 4 -0.64396979112427988 5 -0.62368705775383493 
		6 -0.55496530867832206 7 -0.417882865695273 8 -0.15109057364758458 9 0.21610778103844616 
		10 0.56765446419013654 11 0.78749174163482949 12 0.83094910947918632 13 0.7644979550213078 
		14 0.6387933808756453 15 0.504490489656654 16 0.30365509501062038 17 0.057189653554705969 
		18 -0.12942192522069479 19 -0.2783684626925742 20 -0.41224898809176774 21 
		-0.55366253064910753;
createNode animCurveTA -n "animCurveTA1465";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 1 31.993237903862862 2 63.986474252801941 
		3 86.108267527194343 4 98.911322999625014 5 107.28423029593591 6 107.85937442638969 
		7 97.269140401248976 8 66.116690088169108 9 19.031020390169036 10 -26.316731129443173 
		11 -52.255426907359578 12 -49.237893726285471 13 -28.300361249676499 14 -2.6467962353498349 
		15 14.518834558877312 16 8.9554591724833461 17 -1.1333774065517455 18 -0.068062279278545537 
		19 3.2771044266760936 20 7.5342118363830695 21 11.335349074913273;
createNode animCurveTA -n "animCurveTA1466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0;
createNode animCurveTA -n "animCurveTA1467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0;
createNode animCurveTA -n "hom_Right_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Right_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Right_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Left_Ball_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Left_Ball_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Left_Ball_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 7 0 11 0 15 0 17 0 21 0;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 7 0 11 0 15 0 17 0 21 0;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL532";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 3 1 7 1 11 1 15 1 17 1 21 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 7 0 11 0 15 0 17 0 21 0;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL534";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 7 0 11 0 15 0 17 0 21 0;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL535";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 3 1 7 1 11 1 15 1 17 1 21 1;
	setAttr -s 7 ".kot[0:6]"  1 9 9 9 9 9 9;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "Character_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0.03051835782609956 1 0.03051835782609956 
		2 0.03051835782609956 3 0.03051835782609956 4 0.03051835782609956 5 0.03051835782609956 
		6 0.03051835782609956 7 0.03051835782609956 8 0.03051835782609956 9 0.03051835782609956 
		10 0.03051835782609956 11 0.03051835782609956 12 0.030602091187470124 13 
		0.030741646789754395 14 0.030769557910211246 15 0.03051835782609956 16 0.030030481278736677 
		17 0.027838890367296143 18 0.023434886829336532 19 0.01824517340704801 20 
		0.012741175921421091 21 0.0073943201934462775;
createNode animCurveTL -n "Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0.59779923360664156 1 0.59461267047430766 
		2 0.59142610735799606 3 0.5882395442560201 4 0.58505298116669302 5 0.58186641808832873 
		6 0.57867985501924024 7 0.57549329195774113 8 0.5723067289021444 9 0.56912016585076519 
		10 0.56593360280191518 11 0.5627470397539085 12 0.55956047670505826 13 0.55637391365367839 
		14 0.55318735059808211 15 0.55000078753658299 16 0.5468142244674945 17 0.54362766138912999 
		18 0.54044109829980314 19 0.53725453519782707 20 0.53406797208151535 21 0.53088140894918168;
createNode animCurveTL -n "Character_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 1 0 2 -1.6905946383369324e-015 
		3 0 4 -1.6905946383369324e-015 5 0 6 -1.6905946383369324e-015 7 0 8 -1.6905946383369324e-015 
		9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0;
createNode animCurveTA -n "animCurveTA1474";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 31.660816129923894 1 27.420277607982328 
		2 23.179739043430072 3 15.777772212346544 4 3.4111143550888725 5 -11.694523820849989 
		6 -26.65711033868692 7 -38.594613221638781 8 -47.263730807037852 9 -54.026466676213403 
		10 -58.408746718377763 11 -59.936496822743237 12 -57.275061781588342 13 -51.08002626772069 
		14 -43.862675991146247 15 -38.134296661871019 16 -37.830540086743461 17 -35.055704708268721 
		18 -24.31526018438106 19 -11.21554668359029 20 2.8278743647492539 21 16.399441531283248;
createNode animCurveTA -n "animCurveTA1475";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0;
createNode animCurveTA -n "animCurveTA1476";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0;
createNode animCurveTA -n "hom_R_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_R_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_R_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_R_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_R_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_R_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_R_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_R_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_R_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_R_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_L_Hip_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_L_Hip_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_L_Hip_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_L_Knee_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_L_Ankle_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_L_Ankle_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_L_Ankle_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_L_Ball_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_L_Ball_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_L_Ball_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_R_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_R_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_R_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_L_Ball_IK_Fk_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_L_Ball_IK_Fk_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_L_Ball_IK_Fk_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "hom_Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.43524234076486068;
createNode animCurveTL -n "hom_Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.82665738350180629;
createNode animCurveTL -n "hom_Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.27773886459742925;
createNode animCurveTA -n "hom_Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 28.652637602052774;
createNode animCurveTA -n "hom_Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 64.676908227303443;
createNode animCurveTL -n "hom_Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.5198069948790518;
createNode animCurveTL -n "hom_Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.72394202659893114;
createNode animCurveTL -n "hom_Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.36439499068905612;
createNode animCurveTA -n "hom_Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 7.7976222737965317;
createNode animCurveTA -n "hom_Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -30.409274105849079;
createNode animCurveTA -n "hom_Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -64.859940280210893;
createNode animCurveTL -n "Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 -0.80634482260056473 1 -0.90387863449732109 
		2 -1.0014124459920941 3 -1.0809274673815583 4 -1.1393140285340007 5 -1.1868683433721874 
		6 -1.2256804482745156 7 -1.2578403796193824 8 -1.2897707841045465 9 -1.3184018759709404 
		10 -1.3315850429117191 11 -1.3171716726200386 12 -1.2518136963394362 13 -1.148693188848529 
		14 -1.0504567531430928 15 -0.99975099221890373 16 -1.1176453256114751 17 
		-1.2408223407404346 18 -1.2118232410071925 19 -1.1444818919795006 20 -1.0618036417288219 
		21 -0.98679383832662004;
createNode animCurveTL -n "Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 1.4478522670660232 1 1.4309335656962674 
		2 1.4140148612381864 3 1.3822641409397514 4 1.317129152153288 5 1.2324160036000831 
		6 1.1618302245815495 7 1.1390773443990987 8 1.1699668573345019 9 1.2375820225894005 
		10 1.3415390168450072 11 1.4814540167825345 12 1.6810282876551557 13 1.9325319973945805 
		14 2.1884346766998259 15 2.4012058562699101 16 2.5675927642985124 17 2.5336257072562236 
		18 2.2215913484281198 19 1.785716238790469 20 1.3003048303175726 21 0.83966157498372995;
createNode animCurveTL -n "Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 -0.35183592619239079 1 -0.53411897937635933 
		2 -0.71640204326318302 3 -0.8594808010730931 4 -0.98027273277431659 5 -1.093285342988068 
		6 -1.155699351914085 7 -1.1246954797521167 8 -0.92469200979323762 9 -0.59991356150472652 
		10 -0.28725035935064241 11 -0.12359262779503359 12 -0.18266954933718035 13 
		-0.37906462734316942 14 -0.61094956757732199 15 -0.77649607580392055 16 -0.84476401850303673 
		17 -0.71419965029798815 18 -0.35632665465562291 19 0.085321915128607081 20 
		0.5604807163320511 21 1.0188844062320366;
createNode animCurveTA -n "animCurveTA1509";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 7.3566619347615223 1 1.6756686756992898 
		2 -4.0053245939163258 3 -9.115993314220681 4 -12.063039950575529 5 -13.670647191268145 
		6 -16.994710810822156 7 -25.091126583761181 8 -42.924291799539006 9 -67.481231387828416 
		10 -89.851782583481608 11 -101.12578262135072 12 -95.921462442402955 13 -79.992817541692062 
		14 -61.133331985200201 15 -47.136489838909519 16 -48.126231759472788 17 -47.319630051746529 
		18 -31.991636678471803 19 -12.709909411627038 20 8.1533114966437239 21 28.225785794196455;
createNode animCurveTA -n "animCurveTA1510";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 18.103084532249603 1 23.443146954305917 
		2 28.783209401585633 3 26.324117884677346 4 11.437726315978837 5 -10.325351682501593 
		6 -31.496130535759622 7 -44.605624668790895 8 -46.331149878373878 9 -41.099816443221719 
		10 -33.067330511232242 11 -26.389398230303268 12 -21.150141970337017 13 -15.47454039583817 
		14 -10.579584096608219 15 -7.6822636624486726 16 -13.972241868588739 17 -17.432363794219945 
		18 -7.6487745427345226 19 5.8934401790641422 20 20.939105420314373 21 35.233046230154493;
createNode animCurveTA -n "animCurveTA1511";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 27.384539512019494 1 31.042328280498889 
		2 34.700117076577286 3 34.555108709452107 4 29.252207755620152 5 21.197328002970732 
		6 12.229186077789986 7 4.1864986063640526 8 -2.8867348035228249 9 -9.822388087711392 
		10 -16.095554935353007 11 -21.181329035599028 12 -24.426964075611874 13 -26.283333679950392 
		14 -27.880961443860553 15 -30.350370962588343 16 -40.38689317927269 17 -40.874178638100574 
		18 -20.446982975201102 19 6.5671611725820629 20 36.21608530735891 21 64.547620931239493;
createNode animCurveTL -n "Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 1.0024876497696322 1 1.0027336073868591 
		2 1.0029795650040858 3 1.0024876497696322 4 0.99559595930433231 5 0.98457097910507696 
		6 0.98056741813427195 7 0.99473998535432306 8 1.0385165580950184 9 1.1031301950718759 
		10 1.1694433773258941 11 1.2183185858980716 12 1.2387218642514717 13 1.2428367619618101 
		14 1.2463520192390676 15 1.2649563762932245 16 1.3557933662488966 17 1.4065895155535675 
		18 1.3317413712969741 19 1.2195432983534249 20 1.0924052535940525 21 0.97273719388999158;
createNode animCurveTL -n "Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 1.3022050997617782 1 1.3268552097349544 
		2 1.3515053186067849 3 1.4396528861088538 4 1.6396260421194677 5 1.9026847836773981 
		6 2.1467243712549213 7 2.2896400653243139 8 2.2756237754717499 9 2.1597691763354163 
		10 2.0263241759656041 11 1.9595366824126066 12 1.9889693713242507 13 2.067324504044036 
		14 2.1635593671657665 15 2.2466312472832524 16 2.3691757093944315 17 2.3563935283293191 
		18 2.0722306178690837 19 1.6742782831296332 20 1.2308101847784667 21 0.81009998348308443;
createNode animCurveTL -n "Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 -0.26487933135616087 1 -0.24771830107224552 
		2 -0.2305572759625838 3 -0.27841407663794265 4 -0.43635592328220341 5 -0.65594845908537447 
		6 -0.86195713916742978 7 -0.97914741864833488 8 -0.96505559357598369 9 -0.86727381717017993 
		10 -0.74565133030877861 11 -0.6600373738696258 12 -0.61465858051893996 13 
		-0.58150643727017648 14 -0.57207746652213065 15 -0.59786819067355346 16 -0.83898159501090264 
		17 -0.94343416123852397 18 -0.63009199662585336 19 -0.19210234858335501 20 
		0.29574630565129439 21 0.75866548884040697;
createNode animCurveTA -n "animCurveTA1512";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 6.093037536097877 1 2.9693244012165674 
		2 -0.15438892944601992 3 -9.0703748831085189 4 -27.480646097759902 5 -51.174613744200741 
		6 -74.075648048867137 7 -90.107119238195125 8 -97.173919956653734 9 -98.675144027751486 
		10 -96.775463446483784 11 -93.639550207845957 12 -88.690972960019025 13 -81.159798979164009 
		14 -72.920448202246348 15 -65.847340566231509 16 -64.015335678149242 17 -58.448472963903704 
		18 -43.005821231615791 19 -24.552088474797497 20 -4.8939231368125178 21 14.16202633897549;
createNode animCurveTA -n "animCurveTA1513";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 27.443571845182099 1 0.89367798507338025 
		2 -25.656215808911416 3 -40.501771671985914 4 -38.657788559866347 5 -27.800729390339956 
		6 -15.218752241726923 7 -8.2000151923474469 8 -10.300647600799469 9 -17.096091632143537 
		10 -23.903474574393748 11 -26.039923715564179 12 -21.662093219168916 13 -13.465708441716597 
		14 -3.5765034607131594 15 5.8797876463354575 16 18.184414859246608 17 25.147610409876929 
		18 20.417920921151346 19 12.005256724477556 20 2.1194026831327406 21 -7.0298563396059315;
createNode animCurveTA -n "animCurveTA1514";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 -26.521276404958893 1 -25.368892808733477 
		2 -24.216509207608251 3 -16.843539022083927 4 0.53690059158376102 5 23.465824528356094 
		6 45.795017444557907 7 61.376263996514069 8 68.747350260446254 9 71.128220808216355 
		10 69.393898039609326 11 64.419404354410148 12 53.534366872307189 13 37.240010838986414 
		14 21.168755843229256 15 10.953021473817085 16 23.40222263132048 17 31.956397333236612 
		18 13.57097863382522 19 -12.221390274272306 20 -40.976539919312131 21 -68.250300829550369;
createNode animCurveTL -n "animCurveTL551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.075007643271199492 3 -0.075007643271199492 
		7 -0.075007643271199492 11 -0.075007643271199492 15 0.42754810371064994 17 
		0.48608220680805114 21 0.48568686101717434;
createNode animCurveTL -n "animCurveTL552";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.0015683274246280649 3 -0.0015683274246280649 
		7 -0.0015683274246280649 11 -0.0015683274246280649 15 -0.90633634765029925 
		17 -1.2341020444288966 21 -1.4700479323255695;
createNode animCurveTL -n "animCurveTL553";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.99523236489475697 3 -0.99523236489475697 
		7 -0.99523236489475697 11 -0.99523236489475697 15 -1.1683884895498287 17 
		-0.9993623657977142 21 -0.79788935933312277;
createNode animCurveTL -n "animCurveTL554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.046699535373194809 3 -0.046699535373194809 
		7 -0.046699535373194809 11 -0.046699535373194809 15 -0.52663227176926597 
		17 -0.57597564774320764 21 -0.56862158553413067;
createNode animCurveTL -n "animCurveTL555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 5.9724781342803249e-005 3 5.9724781342803249e-005 
		7 5.9724781342803249e-005 11 5.9724781342803249e-005 15 -0.54533960262259329 
		17 -0.75601350916139098 21 -0.91217836532596974;
createNode animCurveTL -n "animCurveTL556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.0033873591439757 3 -1.0033873591439757 
		7 -1.0033873591439757 11 -1.0033873591439757 15 -0.69781241262917137 17 -0.54077942611803975 
		21 -0.41178374977372761;
createNode animCurveTA -n "animCurveTA1515";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -22.78039507191296 3 -22.78039507191296 
		7 -22.78039507191296 11 -22.78039507191296 15 -22.78039507191296 17 -22.78039507191296 
		21 -22.78039507191296;
createNode animCurveTA -n "animCurveTA1516";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -59.78589307060367 3 -59.78589307060367 
		7 -59.78589307060367 11 -59.78589307060367 15 -59.78589307060367 17 -59.78589307060367 
		21 -59.78589307060367;
createNode animCurveTA -n "animCurveTA1517";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 34.574435665981952 3 34.574435665981952 
		7 34.574435665981952 11 34.574435665981952 15 34.574435665981952 17 34.574435665981952 
		21 34.574435665981952;
createNode animCurveTA -n "animCurveTA1518";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -4.3077020824181265 3 -4.3077020824181265 
		7 -4.3077020824181265 11 -4.3077020824181265 15 -4.3077020824181265 17 -4.3077020824181265 
		21 -4.3077020824181265;
createNode animCurveTA -n "animCurveTA1519";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -49.658336589859132 3 -49.658336589859132 
		7 -49.658336589859132 11 -49.658336589859132 15 -49.658336589859132 17 -49.658336589859132 
		21 -49.658336589859132;
createNode animCurveTA -n "animCurveTA1520";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 45.957278122761899 3 45.957278122761899 
		7 45.957278122761899 11 45.957278122761899 15 45.957278122761899 17 45.957278122761899 
		21 45.957278122761899;
createNode animCurveTA -n "animCurveTA1521";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 64.255341242982553 3 64.255341242982553 
		7 64.255341242982553 11 64.255341242982553 15 64.255341242982553 17 64.255341242982553 
		21 64.255341242982553;
createNode animCurveTA -n "animCurveTA1522";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 72.208811687058059 3 72.208811687058059 
		7 72.208811687058059 11 72.208811687058059 15 72.208811687058059 17 72.208811687058059 
		21 72.208811687058059;
createNode animCurveTA -n "animCurveTA1523";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 72.79493678537078 3 72.79493678537078 
		7 72.79493678537078 11 72.79493678537078 15 72.79493678537078 17 72.79493678537078 
		21 72.79493678537078;
createNode animCurveTA -n "animCurveTA1524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 35.224795679311441 3 35.224795679311441 
		7 35.224795679311441 11 35.224795679311441 15 35.224795679311441 17 35.224795679311441 
		21 35.224795679311441;
createNode animCurveTA -n "animCurveTA1525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 56.771965155298119 3 56.771965155298119 
		7 56.771965155298119 11 56.771965155298119 15 56.771965155298119 17 56.771965155298119 
		21 56.771965155298119;
createNode animCurveTA -n "animCurveTA1526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 59.556508727470074 3 59.556508727470074 
		7 59.556508727470074 11 59.556508727470074 15 59.556508727470074 17 59.556508727470074 
		21 59.556508727470074;
createNode animCurveTA -n "animCurveTA1527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 36.028288837490415 3 36.028288837490415 
		7 36.028288837490415 11 36.028288837490415 15 36.028288837490415 17 36.028288837490415 
		21 36.028288837490415;
createNode animCurveTA -n "animCurveTA1528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 13.094680882304901 3 13.094680882304901 
		7 13.094680882304901 11 13.094680882304901 15 13.094680882304901 17 13.094680882304901 
		21 13.094680882304901;
createNode animCurveTA -n "animCurveTA1529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 10.967667985987509 3 10.967667985987509 
		7 10.967667985987509 11 10.967667985987509 15 10.967667985987509 17 10.967667985987509 
		21 10.967667985987509;
createNode animCurveTA -n "animCurveTA1530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 53.910048648242878 3 53.910048648242878 
		7 53.910048648242878 11 53.910048648242878 15 53.910048648242878 17 53.910048648242878 
		21 53.910048648242878;
createNode animCurveTA -n "animCurveTA1531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 43.127820754253513 3 43.127820754253513 
		7 43.127820754253513 11 43.127820754253513 15 43.127820754253513 17 43.127820754253513 
		21 43.127820754253513;
createNode animCurveTA -n "animCurveTA1532";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 7 0 11 0 15 0 17 0 21 0;
createNode animCurveTA -n "animCurveTA1533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 7 0 11 0 15 0 17 0 21 0;
createNode animCurveTA -n "animCurveTA1534";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 59.219502482153104 3 59.219502482153104 
		7 59.219502482153104 11 59.219502482153104 15 59.219502482153104 17 59.219502482153104 
		21 59.219502482153104;
createNode animCurveTA -n "hom_Pelvis_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Pelvis_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Pelvis_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "hom_Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hom_Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.994403295754109;
createNode animCurveTA -n "animCurveTA1544";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 7 0 11 0 15 0 17 0 21 0;
createNode animCurveTA -n "animCurveTA1545";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 7 0 11 0 15 0 17 0 21 0;
createNode animCurveTA -n "animCurveTA1546";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 66.672206829852314 3 66.672206829852314 
		7 66.672206829852314 11 66.672206829852314 15 66.672206829852314 17 66.672206829852314 
		21 66.672206829852314;
createNode animCurveTA -n "animCurveTA1547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 7 0 11 0 15 0 17 0 21 0;
createNode animCurveTA -n "animCurveTA1548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 7 0 11 0 15 0 17 0 21 0;
createNode animCurveTA -n "animCurveTA1549";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 7 0 11 0 15 0 17 0 21 0;
createNode animCurveTA -n "animCurveTA1550";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.3600558986621039 3 -0.16135188088572175 
		7 0.17531458053368568 11 -1.0037602929934266 15 -1.3817457402118334 17 -1.8954871397363262 
		21 -1.7624495121284474;
createNode animCurveTA -n "animCurveTA1551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.7348136322083922 3 -2.1983501567531918 
		7 -2.1972812590348823 11 -1.9625555826433296 15 -1.7175900971389688 17 -1.1936314277721638 
		21 -1.3818983326385355;
createNode animCurveTA -n "animCurveTA1552";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 18.025996084384893 3 -15.880312516295612 
		7 -24.642075184185245 11 -5.5759421823152344 15 13.70944285627572 17 35.217716341489989 
		21 30.557812349910169;
createNode animCurveTA -n "animCurveTA1553";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 7 0 11 0 15 0 17 0 21 0;
createNode animCurveTA -n "animCurveTA1554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 7 0 11 0 15 0 17 0 21 0;
createNode animCurveTA -n "animCurveTA1555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 14.508952910281577 3 14.508952910281577 
		7 14.508952910281577 11 14.508952910281577 15 14.508952910281577 17 14.508952910281577 
		21 14.508952910281577;
createNode animCurveTA -n "animCurveTA1556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.6205628187730865 3 3.5615739804694475 
		7 1.2859540278637445 11 0.56168829250648056 15 3.6375267832064915 17 2.2239744454617516 
		21 3.7348422483758985;
createNode animCurveTA -n "animCurveTA1557";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 6.1534707642816313 3 5.0593482146838156 
		7 6.0499001423546632 11 6.1591023145083348 15 5.005087459058303 17 5.8970685922674964 
		21 4.4972443470765757;
createNode animCurveTA -n "animCurveTA1558";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -32.810404800085166 3 -3.3664805278333754 
		7 -26.556600069591706 11 -33.359394152338098 15 -2.5006014476938456 17 -17.691452850314786 
		21 1.610413291953241;
createNode animCurveTA -n "animCurveTA1559";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.70293507907658626 3 -0.70293507907658626 
		7 -0.83690971216531951 11 -0.54643102570254642 15 -0.31205376012555708 17 
		-0.26862115475572979 21 -0.25608676395159663;
createNode animCurveTA -n "animCurveTA1560";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.2717523854678625 3 1.2717523854678625 
		7 1.187886020951028 11 1.264901508425927 15 1.4407607497566994 17 1.4594355426723329 
		21 1.4601277182379901;
createNode animCurveTA -n "animCurveTA1561";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 10.789123571196804 3 10.789123571196804 
		7 4.553091335708821 11 14.236323059983325 15 26.145260036309839 17 28.928530085622626 
		21 29.944365413543018;
createNode animCurveTA -n "animCurveTA1562";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 7 0 11 0 15 0 17 0 21 0;
createNode animCurveTA -n "animCurveTA1563";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 7 0 11 0 15 0 17 0 21 0;
createNode animCurveTA -n "animCurveTA1564";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 61.824373247854581 3 61.824373247854581 
		7 61.824373247854581 11 61.824373247854581 15 61.824373247854581 17 61.824373247854581 
		21 61.824373247854581;
createNode animCurveTA -n "animCurveTA1565";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 22.82773238350271 3 22.82773238350271 
		7 22.82773238350271 11 22.82773238350271 15 22.82773238350271 17 22.82773238350271 
		21 22.82773238350271;
createNode animCurveTA -n "animCurveTA1566";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 38.578337509358107 3 38.578337509358107 
		7 38.578337509358107 11 38.578337509358107 15 38.578337509358107 17 38.578337509358107 
		21 38.578337509358107;
createNode animCurveTA -n "animCurveTA1567";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 45.467643381850564 3 45.467643381850564 
		7 45.467643381850564 11 45.467643381850564 15 45.467643381850564 17 45.467643381850564 
		21 45.467643381850564;
createNode animCurveTA -n "animCurveTA1568";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 7 0 11 0 15 0 17 0 21 0;
createNode animCurveTA -n "animCurveTA1569";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 7 0 11 0 15 0 17 0 21 0;
createNode animCurveTA -n "animCurveTA1570";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 50.17101925731437 3 50.17101925731437 
		7 50.17101925731437 11 50.17101925731437 15 50.17101925731437 17 50.17101925731437 
		21 50.17101925731437;
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
connectAttr "hom_jump_dash_in_airSource.st" "clipLibrary1.st[0]";
connectAttr "hom_jump_dash_in_airSource.du" "clipLibrary1.du[0]";
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
connectAttr "hom_Hoop_Root_IK_FK_RFoot.a" "clipLibrary1.cel[0].cev[6].cevr"
		;
connectAttr "hom_Hoop_Root_IK_FK_LFoot.a" "clipLibrary1.cel[0].cev[7].cevr"
		;
connectAttr "hom_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary1.cel[0].cev[8].cevr"
		;
connectAttr "hom_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary1.cel[0].cev[9].cevr"
		;
connectAttr "hom_Hoop_Root_IK_FK_RArm.a" "clipLibrary1.cel[0].cev[10].cevr"
		;
connectAttr "hom_Hoop_Root_IK_FK_LArm.a" "clipLibrary1.cel[0].cev[11].cevr"
		;
connectAttr "hom_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "hom_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "hom_Hoop_Root_rotateX.a" "clipLibrary1.cel[0].cev[14].cevr"
		;
connectAttr "hom_Hoop_Root_rotateY.a" "clipLibrary1.cel[0].cev[15].cevr"
		;
connectAttr "hom_Hoop_Root_rotateZ.a" "clipLibrary1.cel[0].cev[16].cevr"
		;
connectAttr "hom_Hoop_Root_translateX.a" "clipLibrary1.cel[0].cev[17].cevr"
		;
connectAttr "hom_Hoop_Root_translateY.a" "clipLibrary1.cel[0].cev[18].cevr"
		;
connectAttr "hom_Hoop_Root_translateZ.a" "clipLibrary1.cel[0].cev[19].cevr"
		;
connectAttr "Right_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[20].cevr"
		;
connectAttr "Right_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[21].cevr"
		;
connectAttr "Right_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[22].cevr"
		;
connectAttr "animCurveTA1462.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1463.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1464.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "Left_Foot_Hoop_translateX.a" "clipLibrary1.cel[0].cev[26].cevr"
		;
connectAttr "Left_Foot_Hoop_translateY.a" "clipLibrary1.cel[0].cev[27].cevr"
		;
connectAttr "Left_Foot_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[28].cevr"
		;
connectAttr "animCurveTA1465.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1466.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1467.a" "clipLibrary1.cel[0].cev[31].cevr";
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
connectAttr "animCurveTL530.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL531.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL532.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL533.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL534.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL535.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "Character_Hoop_translateX.a" "clipLibrary1.cel[0].cev[44].cevr"
		;
connectAttr "Character_Hoop_translateY.a" "clipLibrary1.cel[0].cev[45].cevr"
		;
connectAttr "Character_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[46].cevr"
		;
connectAttr "animCurveTA1474.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA1475.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA1476.a" "clipLibrary1.cel[0].cev[49].cevr";
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
connectAttr "hom_Right_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[76].cevr"
		;
connectAttr "hom_Right_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[77].cevr"
		;
connectAttr "hom_Right_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[78].cevr"
		;
connectAttr "hom_Right_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[79].cevr"
		;
connectAttr "hom_Right_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[80].cevr"
		;
connectAttr "hom_Right_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[81].cevr"
		;
connectAttr "hom_Left_Arm_Hoop_translateX.a" "clipLibrary1.cel[0].cev[82].cevr"
		;
connectAttr "hom_Left_Arm_Hoop_translateY.a" "clipLibrary1.cel[0].cev[83].cevr"
		;
connectAttr "hom_Left_Arm_Hoop_translateZ.a" "clipLibrary1.cel[0].cev[84].cevr"
		;
connectAttr "hom_Left_Arm_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[85].cevr"
		;
connectAttr "hom_Left_Arm_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[86].cevr"
		;
connectAttr "hom_Left_Arm_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[87].cevr"
		;
connectAttr "Right_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "Right_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "Right_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "animCurveTA1509.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1510.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1511.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "Left_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[94].cevr"
		;
connectAttr "Left_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[95].cevr"
		;
connectAttr "Left_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[96].cevr"
		;
connectAttr "animCurveTA1512.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1513.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1514.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL551.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL552.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL553.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL554.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL555.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL556.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA1515.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA1516.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA1517.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA1518.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA1519.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA1520.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1521.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1522.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1523.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1524.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1525.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1526.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1527.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1528.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1529.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1530.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1531.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1532.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1533.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1534.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "hom_Pelvis_rotateX.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "hom_Pelvis_rotateY.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "hom_Pelvis_rotateZ.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "hom_Thumb_R_rotateX.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "hom_Thumb_R_rotateY.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "hom_Thumb_R_rotateZ.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "hom_Thumb_L_rotateX.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "hom_Thumb_L_rotateY.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "hom_Thumb_L_rotateZ.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1544.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1545.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1546.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1547.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1548.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1549.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1550.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1551.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1552.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1553.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1554.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1555.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1556.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1557.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1558.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1559.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1560.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1561.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1562.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1563.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1564.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1565.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1566.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1567.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1568.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1569.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1570.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[2].olnk";
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
// End of hom_jump_dash_in_air.ma
