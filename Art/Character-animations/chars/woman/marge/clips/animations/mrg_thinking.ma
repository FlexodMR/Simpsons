//Maya ASCII 4.0 scene
//Name: mrg_thinking.ma
//Last modified: Wed, Feb 19, 2003 11:54:32 AM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mrg_thinkingSource";
	setAttr ".ihi" 0;
	setAttr ".du" 100;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL165";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 1 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.0039999675936996937;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.9999920129776001;
	setAttr -s 3 ".kox[1:2]"  1 0.0039999675936996937;
	setAttr -s 3 ".koy[1:2]"  0 -0.9999920129776001;
createNode animCurveTL -n "animCurveTL166";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  0 -0.079815982092630827 1 -0.076263505169050977 
		2 -0.072465436760542318 3 -0.06847845183295917 4 -0.064359225352155797 5 
		-0.060164432283986581 6 -0.055950747594305794 7 -0.051774846248967783 8 -0.047693403213826854 
		9 -0.043763093454737341 10 -0.040040591937553542 11 -0.036582573628129764 
		12 -0.033445713492320367 13 -0.030686686495979644 14 -0.028362167604961911 
		15 -0.026528831785121502 16 -0.025243354002312712 17 -0.024290227148835539 
		18 -0.023415426103536682 19 -0.02261784881209053 20 -0.021896393220171461 
		21 -0.021249957273453867 22 -0.020677438917612142 23 -0.020177736098320673 
		24 -0.01974974676125384 25 -0.019392368852086034 26 -0.019104500316491645 
		27 -0.018885039100145062 28 -0.01873288314872067 29 -0.018646930407892857 
		30 -0.018626078823336011 31 -0.018669226340724522 32 -0.018775270905732774 
		33 -0.01894311046403516 34 -0.019171642961306065 35 -0.019459766343219879 
		36 -0.019806378555450987 37 -0.020210377543673771 38 -0.020670661253562636 
		39 -0.021186127630791952 40 -0.021755674621036118 41 -0.022378200169969522 
		42 -0.023052602223266543 43 -0.023777778726601577 44 -0.024552627625649009 
		45 -0.025376046866083218 46 -0.026246934393578614 47 -0.027164188153809561 
		48 -0.028126706092450462 49 -0.029133386155175703 50 -0.030183126287659682 
		51 -0.0326843023100582 52 -0.037696334292215104 53 -0.044694682101669589 
		54 -0.053154805605960816 55 -0.062552164672627988 56 -0.072362219169210304 
		57 -0.082060428963246959 58 -0.091122253922277102 59 -0.099023153913839979 
		60 -0.10523858880547474 61 -0.10924401846472061 62 -0.11051490275911671 63 
		-0.1099020785015502 64 -0.10864094638204685 65 -0.10678381208385393 66 -0.10438298129021863 
		67 -0.10149075968438824 68 -0.098159452949609968 69 -0.094441366769131035 
		70 -0.09038880682619875 71 -0.086054078804060269 72 -0.081489488385962899 
		73 -0.076747341255153839 74 -0.071879943094880355 75 -0.066939599588389659 
		76 -0.06197861641892901 77 -0.05704929926974564 78 -0.05220395382408681 79 
		-0.04749488576519971 80 -0.042974400776331627 81 -0.03869480454072978 82 
		-0.0347084027416414 83 -0.031067501062313766 84 -0.027824405185994074 85 
		-0.025031420795929595 86 -0.022740853575367523 87 -0.021005009207555166 88 
		-0.019876193375739683 89 -0.019995170893755375 90 -0.0218066458920637 91 
		-0.025068833028852808 92 -0.029539946962310812 93 -0.034978202350625848 94 
		-0.041141813851986044 95 -0.047788996124579541 96 -0.054677963826594435 97 
		-0.06156693161621888 98 -0.068214114151641039 99 -0.074377726091048965 100 
		-0.079815982092630827;
createNode animCurveTL -n "animCurveTL168";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "Motion_Root_translateZ1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 101 ".ktv[0:100]"  0 0 1 0.00040943484367973569 2 
		0.00083706439911430518 3 0.0012786898856191895 4 0.0017301125225098694 5 
		0.0021871335291018257 6 0.0026455541247105393 7 0.0031011755286514905 8 0.0035497989602401602 
		9 0.003987225638792031 10 0.0044092567836225812 11 0.0048116936140472919 
		12 0.0051903373493816449 13 0.0055409892089411219 14 0.0058594504120412019 
		15 0.0061415221779973659 16 0.0063830057261250973 17 0.0065997111506005957 
		18 0.0068099429617873479 19 0.0070132445186961261 20 0.0072091591803377089 
		21 0.0073972303057228718 22 0.0075770012538623911 23 0.0077480153837670438 
		24 0.0079098160544476079 25 0.0080619466249148564 26 0.008203950454179567 
		27 0.0083353709012525187 28 0.0084557513251444835 29 0.0085646350848662418 
		30 0.0086615655394285691 31 0.0087460860478422407 32 0.0088177399691180304 
		33 0.0088760706622667204 34 0.0089206214862990844 35 0.0089509358002258978 
		36 0.0089665569630579377 37 0.008967028333805983 38 0.0089518932714808055 
		39 0.008920695135093186 40 0.0088729772836538979 41 0.0088082830761737185 
		42 0.0087261558716634248 43 0.0086261390291337923 44 0.008507775907595598 
		45 0.0083706098660596192 46 0.0082141842635366329 47 0.008038042459037411 
		48 0.0078417278115727341 49 0.0076247836801533776 50 0.0073867534237901178 
		51 0.0065638765018726708 52 0.0047293816673339871 53 0.0020882920420736144 
		54 -0.0011543692520088954 55 -0.0047935790930139941 56 -0.0086243143590421286 
		57 -0.012441551928193751 58 -0.016040268678569308 59 -0.019215441488269255 
		60 -0.021762047235394037 61 -0.023475062798044108 62 -0.024149465054319905 
		63 -0.02411238106116282 64 -0.023840216335382861 65 -0.023351865444883397 
		66 -0.022666222957567813 67 -0.021802183441339492 68 -0.020778641464101827 
		69 -0.019614491593758186 70 -0.018328628398211956 71 -0.016939946445366519 
		72 -0.015467340303125261 73 -0.013929704539391559 74 -0.012345933722068799 
		75 -0.01073492241906036 76 -0.0091155651982696272 77 -0.0075067566275999822 
		78 -0.0059273912749548139 79 -0.0043963637082374864 80 -0.0029325684953514048 
		81 -0.0015549002041999338 82 -0.00028225340268646105 83 0.00086647734128562665 
		84 0.0018723974598129497 85 0.0027166123849921317 86 0.0033802275489197785 
		87 0.003844348383692514 88 0.0040900803214069716 89 0.0041450775077645444 
		90 0.0040626766563265759 91 0.0038625060577149196 92 0.0035641940025514314 
		93 0.0031873687814579642 94 0.002751658685056372 95 0.0022766920039685077 
		96 0.0017820970288162266 97 0.0012875020502213805 98 0.00081253535880582584 
		99 0.00037682524519141373 100 0;
createNode animCurveTA -n "animCurveTA498";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_FK_RFoot1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  84 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_FK_LFoot1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  84 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Rev_IK_Sim_RFoot1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  84 0;
createNode animCurveTU -n "mrg_Hoop_Root_IK_Rev_IK_Sim_LFoot1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  84 0;
createNode animCurveTU -n "animCurveTU35";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 95 1 100 0;
	setAttr -s 4 ".kit[0:3]"  1 2 2 1;
	setAttr -s 4 ".kot[0:3]"  9 2 2 5;
	setAttr -s 4 ".kix[0:3]"  0 0.16439899802207947 1 0.16439883410930634;
	setAttr -s 4 ".kiy[0:3]"  0 0.98639392852783203 0 -0.98639392852783203;
createNode animCurveTU -n "animCurveTU36";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 1 95 1 100 0;
	setAttr -s 4 ".kit[0:3]"  1 2 2 1;
	setAttr -s 4 ".kot[0:3]"  9 2 2 5;
	setAttr -s 4 ".kix[0:3]"  0 0.16439899802207947 1 0.16439883410930634;
	setAttr -s 4 ".kiy[0:3]"  0 0.98639392852783203 0 -0.98639392852783203;
createNode animCurveTU -n "animCurveTU37";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 100 1;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU38";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 100 1;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA499";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA500";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA501";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL170";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL171";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL172";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.17655026201706334 100 -0.17655026201706334;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL174";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.10676264329452093 16 0.10690346857539751 
		22 0.15159790056288158 25 0.10690346857539751 29 0.10690346857539751 34 0.11928382623593071 
		37 0.10690346857539751 50 0.10690346857539751 62 0.10515271088914978 88 0.10515271088914978 
		173 0.10676264329452093;
	setAttr -s 11 ".kit[0:10]"  1 3 9 3 3 9 3 
		3 3 1 9;
	setAttr -s 11 ".kot[0:10]"  9 1 9 3 3 9 3 
		3 3 3 9;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 1 1 1 1 0.9983896017074585;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0 0 0 0 0.056729640811681747;
	setAttr -s 11 ".kox[1:10]"  1 1 1 1 1 1 1 1 1 0.9983896017074585;
	setAttr -s 11 ".koy[1:10]"  0 0 0 0 0 0 0 0 0 0.056729640811681747;
createNode animCurveTL -n "animCurveTL175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.073147264740539078 100 -0.073147264740539078;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA502";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 16 0 22 -18.917444470195793 
		25 0 29 0 34 -5.6024739392502898 37 0 50 0 62 0.79226904145708898 88 0.79226904145708898 
		173 0;
	setAttr -s 11 ".kit[0:10]"  1 3 3 3 3 9 9 
		3 3 1 9;
	setAttr -s 11 ".kot[0:10]"  9 1 3 3 3 9 3 
		3 3 3 9;
	setAttr -s 11 ".kix[0:10]"  0 1 1 1 1 1 0.98360532522201538 
		1 1 1 0.99998807907104492;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0 0 0.18033471703529358 
		0 0 0 -0.004880308173596859;
	setAttr -s 11 ".kox[1:10]"  0.99449610710144043 1 1 1 1 1 1 
		1 1 0.99998807907104492;
	setAttr -s 11 ".koy[1:10]"  -0.10477379709482193 0 0 0 0 0 
		0 0 0 -0.004880308173596859;
createNode animCurveTA -n "animCurveTA503";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -25.948901905116401 100 -25.948901905116401;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA504";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.072059567379697237 100 0.072059567379697237;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.10860528941614173 100 0.10860528941614173;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.00088390886240813306 100 0.00088390886240813306;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA505";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA506";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA507";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA508";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA509";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA510";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA511";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA512";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA513";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA514";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA515";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA516";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA517";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA518";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA519";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL179";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL180";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL181";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.1269999742507935 88 1 100 1.1269999742507935;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.031480457633733749;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99950438737869263;
	setAttr -s 3 ".kox[1:2]"  1 0.031480457633733749;
	setAttr -s 3 ".koy[1:2]"  0 0.99950438737869263;
createNode animCurveTL -n "animCurveTL182";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL183";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL184";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.1269999742507935 88 1 100 1.1269999742507935;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.031480457633733749;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99950438737869263;
	setAttr -s 3 ".kox[1:2]"  1 0.031480457633733749;
	setAttr -s 3 ".koy[1:2]"  0 0.99950438737869263;
createNode animCurveTL -n "animCurveTL185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.097247464600251146 16 -0.030756398785928899 
		50 -0.036774997039785789 62 -0.13465090339168634 88 -0.024217072333354791 
		100 -0.097247464600251146;
	setAttr -s 6 ".kit[0:5]"  1 9 1 9 9 9;
	setAttr -s 6 ".kot[2:5]"  1 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.26570093631744385 0.24752064049243927 
		0.71014845371246338 0.32075613737106323 0.054689738899469376;
	setAttr -s 6 ".kiy[0:5]"  0 0.96405547857284546 -0.96888262033462524 
		0.70405197143554688 0.94716179370880127 -0.99850338697433472;
	setAttr -s 6 ".kox[2:5]"  0.24752096831798553 0.71014845371246338 
		0.32075613737106323 0.054689738899469376;
	setAttr -s 6 ".koy[2:5]"  -0.96888256072998047 0.70405197143554688 
		0.94716179370880127 -0.99850338697433472;
createNode animCurveTL -n "animCurveTL186";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.9825577053607899 16 0.9912550528809112 
		50 0.99120412684100945 62 0.99499028485781749 88 0.99499028485781749 100 
		0.9825577053607899;
	setAttr -s 6 ".kit[1:5]"  9 1 1 9 9;
	setAttr -s 6 ".kot[0:5]"  9 1 1 1 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.8876577615737915 0.99544626474380493 
		0.98842084407806396 0.71367055177688599 0.30627378821372986;
	setAttr -s 6 ".kiy[0:5]"  0 0.46050378680229187 0.095324315130710602 
		0.15173758566379547 -0.70048153400421143 -0.95194345712661743;
	setAttr -s 6 ".kox[1:5]"  0.99998992681503296 0.99544626474380493 
		0.98842066526412964 0.71367055177688599 0.30627378821372986;
	setAttr -s 6 ".koy[1:5]"  -0.004493428859859705 0.09532427042722702 
		0.15173843502998352 -0.70048153400421143 -0.95194345712661743;
createNode animCurveTL -n "animCurveTL187";
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
createNode animCurveTA -n "animCurveTA520";
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
createNode animCurveTA -n "animCurveTA521";
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
createNode animCurveTA -n "animCurveTA522";
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
createNode animCurveTA -n "animCurveTA523";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA524";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA525";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA526";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA527";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA528";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA529";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA530";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA531";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA532";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA533";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA534";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA535";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA536";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA537";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA538";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA539";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA540";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA541";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA542";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA543";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA544";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA545";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA546";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA547";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA548";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL188";
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
createNode animCurveTL -n "animCurveTL189";
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
createNode animCurveTL -n "animCurveTL190";
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
createNode animCurveTA -n "animCurveTA549";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1.8121934161072299e-015 16 4.4197345729753632 
		50 4.8201520000774494 62 5.6812282590278436 88 5.6812282590278436 100 1.8121934161072299e-015;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99872851371765137 0.99989694356918335 
		0.99992960691452026 0.99695003032684326 0.97062236070632935;
	setAttr -s 6 ".kiy[0:5]"  0 0.050412330776453018 0.01435757614672184 
		0.011863861232995987 -0.078042410314083099 -0.24060796201229095;
createNode animCurveTA -n "animCurveTA550";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 28.652637602052774 16 22.646910800576748 
		50 22.158853296581952 62 21.109311747439843 88 21.109311747439843 100 28.652637602052774;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99769580364227295 0.99984687566757202 
		0.99989545345306396 0.99464172124862671 0.94987154006958008;
	setAttr -s 6 ".kiy[0:5]"  0 -0.067846059799194336 -0.0174991674721241 
		-0.014460032805800438 0.1033819168806076 0.31264045834541321;
createNode animCurveTA -n "animCurveTA551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 64.676908227303443 16 76.603079733540241 
		50 76.655991791448727 62 76.769776342877606 88 76.769776342877606 100 64.676908227303443;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99222350120544434 0.99999821186065674 
		0.99999874830245972 0.986400306224823 0.88443106412887573;
	setAttr -s 6 ".kiy[0:5]"  0 0.12446914613246918 0.0018974344711750746 
		0.0015678256750106812 -0.16436053812503815 -0.46667090058326721;
createNode animCurveTL -n "animCurveTL191";
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
createNode animCurveTL -n "animCurveTL192";
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
createNode animCurveTL -n "animCurveTL193";
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
createNode animCurveTA -n "animCurveTA552";
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
createNode animCurveTA -n "animCurveTA553";
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
createNode animCurveTA -n "animCurveTA554";
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
createNode animCurveTL -n "animCurveTL194";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.65311611999272123 88 -0.8448236677023373 
		100 -0.65311611999272123;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.020860571414232254;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99978238344192505;
	setAttr -s 3 ".kox[1:2]"  1 0.020860571414232254;
	setAttr -s 3 ".koy[1:2]"  0 0.99978238344192505;
createNode animCurveTL -n "animCurveTL195";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.222264083594911 88 1.5117481219250299 
		100 2.222264083594911;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.0056296214461326599;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99998414516448975;
	setAttr -s 3 ".kox[1:2]"  1 0.0056296214461326599;
	setAttr -s 3 ".koy[1:2]"  0 0.99998414516448975;
createNode animCurveTL -n "animCurveTL196";
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
createNode animCurveTA -n "animCurveTA555";
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
createNode animCurveTA -n "animCurveTA556";
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
createNode animCurveTA -n "animCurveTA557";
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
createNode animCurveTL -n "animCurveTL197";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.25368378509166484 88 0.61083301393139333 
		100 0.25368378509166484;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.011199096217751503;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.99993729591369629;
	setAttr -s 3 ".kox[1:2]"  1 0.011199096217751503;
	setAttr -s 3 ".koy[1:2]"  0 -0.99993729591369629;
createNode animCurveTL -n "animCurveTL198";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.2026421011163611 88 1.4644416293758407 
		100 2.2026421011163611;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.0054185022599995136;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.99998533725738525;
	setAttr -s 3 ".kox[1:2]"  1 0.0054185022599995136;
	setAttr -s 3 ".koy[1:2]"  0 0.99998533725738525;
createNode animCurveTL -n "animCurveTL199";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.0085295933619701936 88 0.14314299916678522 
		100 0.0085295933619701936;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.029701607301831245;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.99955880641937256;
	setAttr -s 3 ".kox[1:2]"  1 0.029701607301831245;
	setAttr -s 3 ".koy[1:2]"  0 -0.99955880641937256;
createNode animCurveTA -n "animCurveTA558";
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
createNode animCurveTA -n "animCurveTA559";
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
createNode animCurveTA -n "animCurveTA560";
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
createNode animCurveTL -n "animCurveTL200";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.245189189189189 88 0 100 -0.245189189189189;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.016311760991811752;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.99986696243286133;
	setAttr -s 3 ".kox[1:2]"  1 0.016311760991811752;
	setAttr -s 3 ".koy[1:2]"  0 -0.99986696243286133;
createNode animCurveTL -n "animCurveTL201";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL202";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 88 -1 100 -1;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTL -n "animCurveTL203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.062337280601809833 16 -0.73810969304757312 
		50 -0.62746827761432478 62 -0.38953982331974019 88 -0.38953982331974019 100 
		0.062337280601809833;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.024154350161552429 0.0439467653632164 
		0.053162012249231339 0.028020214289426804 0.0088516166433691978;
	setAttr -s 6 ".kiy[0:5]"  0 -0.99970823526382446 0.99903386831283569 
		0.99858587980270386 0.9996073842048645 0.99996083974838257;
createNode animCurveTL -n "animCurveTL204";
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
createNode animCurveTL -n "animCurveTL205";
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
createNode animCurveTA -n "animCurveTA561";
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
createNode animCurveTA -n "animCurveTA562";
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
createNode animCurveTA -n "animCurveTA563";
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
createNode animCurveTA -n "animCurveTA564";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.061808866237340665 18 -4.996588609324399 
		52 -4.996588609324399 58 12.77993589815498 64 -6.0188443996937568 90 -6.0188443996937568 
		100 -0.061808866237340665;
	setAttr -s 7 ".kit[3:6]"  9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 1 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99987310171127319 0.99985009431838989 
		0.99900668859481812 0.99996465444564819 0.99996930360794067 0.95464026927947998;
	setAttr -s 7 ".kiy[0:6]"  0 -0.015931302681565285 0.017314130440354347 
		-0.044560018926858902 -0.0084087355062365532 0.0078332005068659782 0.29776155948638916;
	setAttr -s 7 ".kox[1:6]"  0.99987310171127319 0.99985009431838989 
		0.99900668859481812 0.99996465444564819 0.99996930360794067 0.95464026927947998;
	setAttr -s 7 ".koy[1:6]"  -0.015931298956274986 0.017314137890934944 
		-0.044560018926858902 -0.0084087401628494263 0.0078332051634788513 0.29776155948638916;
createNode animCurveTA -n "animCurveTA565";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -59.058178941076754 18 -33.725591023005073 
		52 -33.725591023005073 58 -26.216607353903047 64 -33.144840286769899 90 -33.144840286769899 
		100 -59.058178941076754;
	setAttr -s 7 ".kit[3:6]"  9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 1 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99981451034545898 0.99990355968475342 
		0.9996790885925293 0.99996083974838257 0.99989789724349976 0.59329068660736084;
	setAttr -s 7 ".kiy[0:6]"  0 0.0192584078758955 0.013887181878089905 
		0.025331899523735046 -0.0088467095047235489 -0.014289409853518009 -0.8049883246421814;
	setAttr -s 7 ".kox[1:6]"  0.99981451034545898 0.99990355968475342 
		0.9996790885925293 0.99996083974838257 0.99989789724349976 0.59329068660736084;
	setAttr -s 7 ".koy[1:6]"  0.019258422777056694 0.013887174427509308 
		0.025331899523735046 -0.0088467104360461235 -0.01428942009806633 -0.8049883246421814;
createNode animCurveTA -n "animCurveTA566";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 16.57914742975785 18 79.577639961991196 
		52 79.577639961991196 58 64.872217245627695 64 82.787625339019158 90 82.787625339019158 
		100 16.57914742975785;
	setAttr -s 7 ".kit[3:6]"  9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 1 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99943876266479492 0.99987465143203735 
		0.99033331871032715 0.99989610910415649 0.99917292594909668 0.27716052532196045;
	setAttr -s 7 ".kiy[0:6]"  0 0.033498935401439667 -0.015834398567676544 
		0.13870809972286224 0.014412504620850086 -0.040663447231054306 -0.960823655128479;
	setAttr -s 7 ".kox[1:6]"  0.99943876266479492 0.99987465143203735 
		0.99033331871032715 0.99989610910415649 0.99917292594909668 0.27716052532196045;
	setAttr -s 7 ".koy[1:6]"  0.033498931676149368 -0.015834398567676544 
		0.13870809972286224 0.014412523247301579 -0.040663488209247589 -0.960823655128479;
createNode animCurveTA -n "animCurveTA567";
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
createNode animCurveTA -n "animCurveTA568";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.711328223519061 18 84.274604912846527 
		52 84.274604912846527 58 78.490824231517294 64 62.647493819837592 90 62.647493819837592 
		100 15.711328223519061;
	setAttr -s 7 ".kit[3:6]"  9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 1 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99995434284210205 0.99995499849319458 
		0.72729760408401489 0.99988210201263428 0.99978160858154297 0.37689825892448425;
	setAttr -s 7 ".kiy[0:6]"  0 0.0095582688227295876 0.0094884857535362244 
		-0.68632221221923828 0.01535438559949398 -0.020897040143609047 -0.92625468969345093;
	setAttr -s 7 ".kox[1:6]"  0.99995434284210205 0.99995499849319458 
		0.72729760408401489 0.99988210201263428 0.99978160858154297 0.37689825892448425;
	setAttr -s 7 ".koy[1:6]"  0.0095581728965044022 0.0094884857535362244 
		-0.68632221221923828 0.015354398638010025 -0.020897040143609047 -0.92625468969345093;
createNode animCurveTA -n "animCurveTA569";
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
createNode animCurveTA -n "animCurveTA570";
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
createNode animCurveTA -n "animCurveTA571";
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
createNode animCurveTA -n "animCurveTA572";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 18 -105.6151361643273 52 -105.6151361643273 
		58 -67.570210237516164 64 -11.572994187279695 90 -11.572994187279695 100 
		0;
	setAttr -s 7 ".kit[3:6]"  9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 1 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99998193979263306 0.99771523475646973 
		0.23677289485931396 0.99987447261810303 0.99982792139053345 0.85523569583892822;
	setAttr -s 7 ".kiy[0:6]"  0 0.0060096234083175659 0.067559540271759033 
		0.97156500816345215 0.015845602378249168 -0.018552215769886971 0.51823920011520386;
	setAttr -s 7 ".kox[1:6]"  0.99998193979263306 0.99771523475646973 
		0.23677289485931396 0.99987447261810303 0.99982792139053345 0.85523569583892822;
	setAttr -s 7 ".koy[1:6]"  0.0060096872039139271 0.067559540271759033 
		0.97156500816345215 0.015845628455281258 -0.018552215769886971 0.51823920011520386;
createNode animCurveTA -n "animCurveTA573";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 18 -2.2149031700510036 52 -2.2149031700510036 
		58 -7.5569242983181137 64 -19.54288064138245 90 -19.54288064138245 100 0;
	setAttr -s 7 ".kit[3:6]"  9 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 1 1 9 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99999964237213135 0.99999743700027466 
		0.7976677417755127 0.99999642372131348 0.99998503923416138 0.69893044233322144;
	setAttr -s 7 ".kiy[0:6]"  0 0.00085830001626163721 -0.0022671890910714865 
		-0.60309714078903198 -0.0026723137125372887 0.0054732109420001507 0.71518963575363159;
	setAttr -s 7 ".kox[1:6]"  0.99999964237213135 0.99999743700027466 
		0.7976677417755127 0.99999642372131348 0.99998503923416138 0.69893044233322144;
	setAttr -s 7 ".koy[1:6]"  0.0008582978043705225 -0.0022671916522085667 
		-0.60309714078903198 -0.0026722992770373821 0.0054732211865484715 0.71518963575363159;
createNode animCurveTA -n "animCurveTA574";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 18 20.250360034906873 52 20.250360034906873 
		58 18.212366746087035 64 44.189450628586677 90 44.189450628586677 100 0;
	setAttr -s 7 ".kit[2:6]"  9 1 1 1 9;
	setAttr -s 7 ".kot[0:6]"  9 1 9 1 1 1 9;
	setAttr -s 7 ".kix[0:6]"  0 0.99975001811981201 0.99964433908462524 
		0.99749952554702759 0.99972045421600342 0.99932420253753662 0.39672982692718506;
	setAttr -s 7 ".kiy[0:6]"  0 0.022358693182468414 -0.026667781174182892 
		0.070673458278179169 0.023644682019948959 -0.036757130175828934 -0.91793543100357056;
	setAttr -s 7 ".kox[1:6]"  0.99975001811981201 0.99964433908462524 
		0.99749952554702759 0.99972045421600342 0.99932420253753662 0.39672982692718506;
	setAttr -s 7 ".koy[1:6]"  0.022358693182468414 -0.026667781174182892 
		0.070673443377017975 0.023644696921110153 -0.036757122725248337 -0.91793543100357056;
createNode animCurveTA -n "animCurveTA575";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 10.423754966968488 16 -7.7747493069689844 
		50 -7.7747493069689844 62 7.7345395887176229 88 7.7345395887176229 100 10.423754966968488;
	setAttr -s 6 ".kit[4:5]"  9 9;
	setAttr -s 6 ".kot[0:5]"  9 1 1 1 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99992841482162476 0.99976694583892822 
		0.99989455938339233 0.99931418895721436 0.99318605661392212;
	setAttr -s 6 ".kiy[0:5]"  0 -0.011962739750742912 0.021587986499071121 
		0.014521323144435883 0.037029057741165161 0.11653962731361389;
	setAttr -s 6 ".kox[1:5]"  0.99992841482162476 0.99976694583892822 
		0.99989455938339233 0.99931418895721436 0.99318605661392212;
	setAttr -s 6 ".koy[1:5]"  -0.011962725780904293 0.021587992087006569 
		0.014521308243274689 0.037029057741165161 0.11653962731361389;
createNode animCurveTA -n "animCurveTA576";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.7228482558439 16 20.443028902141378 
		50 20.443028902141378 62 39.353337765044174 88 39.353337765044174 100 27.7228482558439;
	setAttr -s 6 ".kit[5]"  9;
	setAttr -s 6 ".kot[0:5]"  9 1 1 1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99998533725738525 0.99966120719909668 
		0.99978357553482056 0.99994587898254395 0.89174467325210571;
	setAttr -s 6 ".kiy[0:5]"  0 -0.0054167797788977623 0.026028869673609734 
		0.020802868530154228 -0.010406201705336571 -0.45253893733024597;
	setAttr -s 6 ".kox[1:5]"  0.99998533725738525 0.99966120719909668 
		0.99978357553482056 0.99994587898254395 0.89174467325210571;
	setAttr -s 6 ".koy[1:5]"  -0.0054167769849300385 0.02602887898683548 
		0.020802859216928482 -0.010406202636659145 -0.45253893733024597;
createNode animCurveTA -n "animCurveTA577";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 21.576484776388224 16 13.955606996227592 
		50 13.955606996227592 62 20.998878908074921 88 20.998878908074921 100 21.576484776388224;
	setAttr -s 6 ".kit[4:5]"  9 9;
	setAttr -s 6 ".kot[0:5]"  9 1 1 1 9 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99999797344207764 0.99995297193527222 
		0.99998146295547485 0.99996834993362427 0.99968254566192627;
	setAttr -s 6 ".kiy[0:5]"  0 -0.0020175620447844267 0.0096974363550543785 
		0.0060842158272862434 0.0079585295170545578 0.025194814428687096;
	setAttr -s 6 ".kox[1:5]"  0.99999797344207764 0.99995297193527222 
		0.99998146295547485 0.99996834993362427 0.99968254566192627;
	setAttr -s 6 ".koy[1:5]"  -0.0020175615791231394 0.0096974372863769531 
		0.0060842139646410942 0.0079585295170545578 0.025194814428687096;
createNode animCurveTA -n "animCurveTA578";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 50 0 88 0 100 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA579";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 50 0 88 0 100 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA580";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 27.080064458283047 16 44.981084302094914 
		50 44.981084302094914 62 84.997397908619021 88 84.997397908619021 100 27.080064458283047;
	setAttr -s 6 ".kit[5]"  9;
	setAttr -s 6 ".kot[0:5]"  9 1 1 1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99996674060821533 0.99952912330627441 
		0.99893331527709961 0.99944460391998291 0.36794710159301758;
	setAttr -s 6 ".kiy[0:5]"  0 0.0081588290631771088 0.030685348436236382 
		0.046176370233297348 -0.033324647694826126 -0.92984670400619507;
	setAttr -s 6 ".kox[1:5]"  0.99996674060821533 0.99952912330627441 
		0.99893331527709961 0.99944460391998291 0.36794710159301758;
	setAttr -s 6 ".koy[1:5]"  0.0081588085740804672 0.03068535216152668 
		0.046176403760910034 -0.033324621617794037 -0.92984670400619507;
createNode animCurveTA -n "animCurveTA581";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA582";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA585";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA586";
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
createNode animCurveTA -n "animCurveTA587";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA588";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA589";
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
createNode animCurveTA -n "animCurveTA590";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA591";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA592";
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
createNode animCurveTA -n "animCurveTA593";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA594";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA595";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA596";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.71009266045615993 50 0 62 -0.66805894317438608 
		88 -0.66805894317438608 100 0.71009266045615993;
	setAttr -s 5 ".kit[0:4]"  1 9 1 9 9;
	setAttr -s 5 ".kot[1:4]"  1 1 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99993228912353516 0.99998956918716431 
		0.99981975555419922 0.99819689989089966;
	setAttr -s 5 ".kiy[0:4]"  0 -0.011637897230684757 -0.0045666135847568512 
		0.018986010923981667 0.060024790465831757;
	setAttr -s 5 ".kox[1:4]"  0.99957543611526489 0.99998956918716431 
		0.99981975555419922 0.99819689989089966;
	setAttr -s 5 ".koy[1:4]"  -0.029137197881937027 -0.0045666112564504147 
		0.018986010923981667 0.060024790465831757;
createNode animCurveTA -n "animCurveTA597";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.39065484564574893 88 0 100 
		0.39065484564574893;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99985474348068237;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.017043059691786766;
	setAttr -s 3 ".kox[1:2]"  1 0.99985474348068237;
	setAttr -s 3 ".koy[1:2]"  0 0.017043059691786766;
createNode animCurveTA -n "animCurveTA598";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 8.1445984161934586 16 2.1311620370562814 
		50 2.4994142951933482 62 4.6654369392297834 88 4.6654369392297834 100 8.1445984161934586;
	setAttr -s 6 ".kit[3:5]"  9 1 9;
	setAttr -s 6 ".kot[0:5]"  9 1 1 9 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.9997633695602417 0.99981456995010376 
		0.99955493211746216 0.99969220161437988 0.98867273330688477;
	setAttr -s 6 ".kiy[0:5]"  0 0.021754279732704163 0.019255299121141434 
		0.029832158237695694 -0.024809474125504494 0.15008752048015594;
	setAttr -s 6 ".kox[1:5]"  0.9997633695602417 0.99981456995010376 
		0.99955493211746216 0.99969220161437988 0.98867273330688477;
	setAttr -s 6 ".koy[1:5]"  0.021754277870059013 0.019255297258496284 
		0.029832158237695694 -0.024809474125504494 0.15008752048015594;
createNode animCurveTA -n "animCurveTA599";
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
createNode animCurveTA -n "animCurveTA600";
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
createNode animCurveTA -n "animCurveTA601";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 14 -21.546896188311798 48 -25.240571274691039 
		60 18.604454091883497 86 18.604454091883497 100 0;
	setAttr -s 6 ".kit[5]"  9;
	setAttr -s 6 ".kot[0:5]"  9 1 1 1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.98883485794067383 0.99998337030410767 
		0.99904483556747437 0.99857568740844727 0.82084637880325317;
	setAttr -s 6 ".kiy[0:5]"  0 -0.14901542663574219 0.005766499787569046 
		0.043697115033864975 -0.053353570401668549 -0.57114905118942261;
	setAttr -s 6 ".kox[1:5]"  0.98883485794067383 0.99998337030410767 
		0.99904483556747437 0.99857568740844727 0.82084637880325317;
	setAttr -s 6 ".koy[1:5]"  -0.14901545643806458 0.0057665100321173668 
		0.043697100132703781 -0.053353574126958847 -0.57114905118942261;
createNode animCurveTA -n "animCurveTA602";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.0270270270270276 88 -4.9367554394300077 
		100 -2.0270270270270276;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.99203664064407349;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.12594982981681824;
	setAttr -s 3 ".kox[1:2]"  1 0.99203664064407349;
	setAttr -s 3 ".koy[1:2]"  0 0.12594982981681824;
createNode animCurveTA -n "animCurveTA603";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.4108692476260059 88 -8.6986303327609935 
		100 -2.4108692476260059;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.96436417102813721;
	setAttr -s 3 ".kiy[0:2]"  0 0 0.26457849144935608;
	setAttr -s 3 ".kox[1:2]"  1 0.96436417102813721;
	setAttr -s 3 ".koy[1:2]"  0 0.26457849144935608;
createNode animCurveTA -n "animCurveTA604";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 13.0432985235726 88 17.455917002855632 
		100 13.0432985235726;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 0.98196470737457275;
	setAttr -s 3 ".kiy[0:2]"  0 0 -0.18906436860561371;
	setAttr -s 3 ".kox[1:2]"  1 0.98196470737457275;
	setAttr -s 3 ".koy[1:2]"  0 -0.18906436860561371;
createNode animCurveTA -n "animCurveTA605";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 50 0 62 -1.2564524909752091 
		88 -1.2564524909752091 100 0;
	setAttr -s 5 ".kit[0:4]"  1 9 1 9 9;
	setAttr -s 5 ".kot[1:4]"  1 1 9 9;
	setAttr -s 5 ".kix[0:4]"  0 0.99994373321533203 0.99999898672103882 
		0.99985015392303467 0.99850058555603027;
	setAttr -s 5 ".kiy[0:4]"  0 -0.010610322467982769 -0.0014268377562984824 
		0.01730995811522007 0.054740887135267258;
	setAttr -s 5 ".kox[1:4]"  0.99850058555603027 0.99999898672103882 
		0.99985015392303467 0.99850058555603027;
	setAttr -s 5 ".koy[1:4]"  -0.054740887135267258 -0.0014268415980041027 
		0.01730995811522007 0.054740887135267258;
createNode animCurveTA -n "animCurveTA606";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 50 0 62 0.014135747974148143 
		88 0.014135747974148143 100 0;
	setAttr -s 5 ".kit[0:4]"  1 9 1 9 9;
	setAttr -s 5 ".kot[1:4]"  1 1 9 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 0.99999982118606567;
	setAttr -s 5 ".kiy[0:4]"  0 0.0001193783973576501 9.6627896709833294e-005 
		-0.0001947752753039822 -0.00061678834026679397;
	setAttr -s 5 ".kox[1:4]"  0.99999982118606567 1 1 0.99999982118606567;
	setAttr -s 5 ".koy[1:4]"  0.00061678834026679397 9.6627860330045223e-005 
		-0.0001947752753039822 -0.00061678834026679397;
createNode animCurveTA -n "animCurveTA607";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -10.382821061592265 16 1.9514592358355098 
		50 2.2886599125868741 62 2.9799025690958914 88 2.9799025690958914 100 -10.382821061592265;
	setAttr -s 6 ".kit[0:5]"  1 1 9 9 1 9;
	setAttr -s 6 ".kot[1:5]"  1 9 9 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99979007244110107 0.99993151426315308 
		0.99995464086532593 0.99997270107269287 0.86388206481933594;
	setAttr -s 6 ".kiy[0:5]"  0 0.020490268245339394 0.011705539189279079 
		0.009524141438305378 -0.0073889940977096558 -0.50369411706924438;
	setAttr -s 6 ".kox[1:5]"  0.99979007244110107 0.99993151426315308 
		0.99995464086532593 0.99997270107269287 0.86388206481933594;
	setAttr -s 6 ".koy[1:5]"  0.020490264520049095 0.011705539189279079 
		0.009524141438305378 -0.0073889852501451969 -0.50369411706924438;
createNode animCurveTA -n "animCurveTA608";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA609";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 88 0 100 0;
	setAttr -s 3 ".kit[2]"  9;
	setAttr -s 3 ".kot[0:2]"  9 1 9;
	setAttr -s 3 ".kix[0:2]"  0 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[1:2]"  1 1;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTA -n "animCurveTA610";
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
createNode animCurveTA -n "animCurveTA611";
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
createNode animCurveTA -n "animCurveTA612";
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
createNode animCurveTA -n "animCurveTA613";
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
createNode animCurveTA -n "animCurveTA614";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 50 0 88 0 100 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA615";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 16 0 50 0 88 0 100 0;
	setAttr -s 5 ".kit[0:4]"  1 9 9 1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[0:4]"  0 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[3:4]"  1 1;
	setAttr -s 5 ".koy[3:4]"  0 0;
createNode animCurveTA -n "animCurveTA616";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 17.254116939558369 16 28.22312620814807 
		50 28.22312620814807 62 68.118796800669443 88 68.118796800669443 100 17.254116939558369;
	setAttr -s 6 ".kit[5]"  9;
	setAttr -s 6 ".kot[0:5]"  9 1 1 1 1 9;
	setAttr -s 6 ".kix[0:5]"  0 0.99951291084289551 0.99915009737014771 
		0.99708759784698486 0.99972087144851685 0.41079995036125183;
	setAttr -s 6 ".kiy[0:5]"  0 0.031208707019686699 0.041219394654035568 
		0.076264820992946625 -0.02362545020878315 -0.91172552108764648;
	setAttr -s 6 ".kox[1:5]"  0.99951291084289551 0.99915009737014771 
		0.99708759784698486 0.99972087144851685 0.41079995036125183;
	setAttr -s 6 ".koy[1:5]"  0.031208707019686699 0.041219402104616165 
		0.076264820992946625 -0.023625507950782776 -0.91172552108764648;
createNode animCurveTA -n "animCurveTA617";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA618";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 100 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode clipLibrary -n "clipLibrary2";
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
	setAttr ".o" 84;
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
connectAttr "mrg_thinkingSource.st" "clipLibrary2.st[0]";
connectAttr "mrg_thinkingSource.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL165.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL166.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX1.a" "clipLibrary2.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL168.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ1.a" "clipLibrary2.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA498.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "mrg_Hoop_Root_IK_FK_RFoot1.a" "clipLibrary2.cel[0].cev[6].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_FK_LFoot1.a" "clipLibrary2.cel[0].cev[7].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_Rev_IK_Sim_RFoot1.a" "clipLibrary2.cel[0].cev[8].cevr"
		;
connectAttr "mrg_Hoop_Root_IK_Rev_IK_Sim_LFoot1.a" "clipLibrary2.cel[0].cev[9].cevr"
		;
connectAttr "animCurveTU35.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU36.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU37.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU38.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA499.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA500.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA501.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL170.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL171.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL172.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL173.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL174.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL175.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA502.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA503.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA504.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL176.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL177.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL178.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA505.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA506.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA507.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA508.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA509.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA510.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA511.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA512.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA513.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTA514.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTA515.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTA516.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTA517.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTA518.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTA519.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL179.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL180.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL181.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTL182.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTL183.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTL184.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTL185.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTL186.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTL187.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA520.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA521.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA522.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA523.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA524.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA525.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA526.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA527.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA528.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA529.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA530.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA531.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA532.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA533.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA534.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA535.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA536.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA537.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA538.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA539.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA540.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA541.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA542.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTA543.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTA544.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTA545.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA546.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA547.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA548.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL188.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL189.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL190.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA549.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA550.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA551.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL191.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL192.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL193.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA552.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA553.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA554.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL194.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL195.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL196.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA555.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA556.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA557.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL197.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL198.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL199.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTA558.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTA559.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTA560.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTL200.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTL201.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTL202.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTL203.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTL204.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTL205.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA561.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA562.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA563.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA564.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA565.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA566.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA567.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA568.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA569.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA570.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA571.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA572.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA573.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA574.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA575.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA576.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA577.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA578.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA579.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA580.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA581.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA582.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA583.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA584.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA585.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA586.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA587.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA588.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA589.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA590.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA591.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA592.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA593.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA594.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA595.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA596.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA597.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA598.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA599.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA600.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA601.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA602.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA603.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA604.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA605.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA606.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA607.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA608.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA609.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA610.a" "clipLibrary2.cel[0].cev[161].cevr";
connectAttr "animCurveTA611.a" "clipLibrary2.cel[0].cev[162].cevr";
connectAttr "animCurveTA612.a" "clipLibrary2.cel[0].cev[163].cevr";
connectAttr "animCurveTA613.a" "clipLibrary2.cel[0].cev[164].cevr";
connectAttr "animCurveTA614.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "animCurveTA615.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "animCurveTA616.a" "clipLibrary2.cel[0].cev[167].cevr";
connectAttr "animCurveTA617.a" "clipLibrary2.cel[0].cev[168].cevr";
connectAttr "animCurveTA618.a" "clipLibrary2.cel[0].cev[169].cevr";
connectAttr "animCurveTA619.a" "clipLibrary2.cel[0].cev[170].cevr";
connectAttr "animCurveTA620.a" "clipLibrary2.cel[0].cev[171].cevr";
connectAttr "animCurveTA621.a" "clipLibrary2.cel[0].cev[172].cevr";
connectAttr "animCurveTA622.a" "clipLibrary2.cel[0].cev[173].cevr";
connectAttr "animCurveTA623.a" "clipLibrary2.cel[0].cev[174].cevr";
connectAttr "animCurveTA624.a" "clipLibrary2.cel[0].cev[175].cevr";
connectAttr "animCurveTA625.a" "clipLibrary2.cel[0].cev[176].cevr";
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
// End of mrg_thinking.ma
