//Maya ASCII 4.0 scene
//Name: apu_jump_run_all.ma
//Last modified: Wed, Oct 09, 2002 02:48:08 PM
requires maya "4.0";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "apu_jump_run_allSource";
	setAttr ".ihi" 0;
	setAttr ".du" 35;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL75";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 0 25 0 35 1;
	setAttr -s 4 ".kit[0:3]"  9 1 1 1;
	setAttr -s 4 ".kot[0:3]"  9 1 9 5;
	setAttr -s 4 ".kix[1:3]"  1 1 0.0033333119936287403;
	setAttr -s 4 ".kiy[1:3]"  0 0 0.99999445676803589;
	setAttr -s 4 ".kox[1:3]"  1 0.0063332058489322662 0;
	setAttr -s 4 ".koy[1:3]"  0 0.99997997283935547 0;
createNode animCurveTL -n "animCurveTL76";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 16 1 25 1 35 0;
	setAttr -s 4 ".kit[0:3]"  9 1 1 1;
	setAttr -s 4 ".kot[0:3]"  9 1 9 5;
	setAttr -s 4 ".kix[1:3]"  1 1 0.0033333119936287403;
	setAttr -s 4 ".kiy[1:3]"  0 0 -0.99999445676803589;
	setAttr -s 4 ".kox[1:3]"  1 0.0063332058489322662 0;
	setAttr -s 4 ".koy[1:3]"  0 -0.99997997283935547 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0.021611233900292327 1 -0.0076877285750953572 
		2 -0.029500938502120908 3 -0.028034341324238828 4 -0.020727088150759514 5 
		-0.019965469175976261 6 -0.019752215863036951 7 -0.019904539657993599 8 -0.020239652006898236 
		9 -0.020574764355802865 10 -0.020727088150759514 11 -0.020727088150759514 
		12 -0.020727088150759514 13 -0.020727088150759514 14 -0.020727088150759514 
		15 -0.020727088150759514 16 -0.020727088150759514 17 -0.021880364765059463 
		18 -0.023802492455559383 19 -0.024186917993659369 20 -0.020727088150759514 
		21 -0.009982466648709996 22 0.0063400970835988937 23 0.022826077714206878 
		24 0.034060949911153673 25 0.034630188342479017 26 0.0094564557358666895 
		27 -0.035317139196224687 28 -0.073274452808593155 29 -0.099566767409467849 
		30 -0.12366865859574476 31 -0.14064892265522214 32 -0.1455763558756982 33 
		-0.11866367202145442 34 -0.073245928092575519 35 -0.054075435230564878;
createNode animCurveTL -n "apu_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0.14556937628024244 1 0.28548334309762086 
		2 0.45283650106035289 3 0.6966631845598118 4 0.97961719018965798 5 1.2667102024999957 
		6 1.5552338548336408 7 1.8463548700035965 8 2.1412399708228662 9 2.4410558801044524 
		10 2.7469693206613601 11 3.0727298051899754 12 3.420153857001647 13 3.7725087148318197 
		14 4.1130616174159362 15 4.4250798034894423 16 4.6918305117877814 17 4.879850822674789 
		18 4.9913896833612146 19 5.0632821328528799 20 5.132363210155602 21 5.2007650754589569 
		22 5.2527863588666177 23 5.2985118042555532 24 5.348026155502728 25 5.4114141564851117 
		26 5.5070116824340314 27 5.6224716674210313 28 5.7218544435833962 29 5.8001246029509277 
		30 5.8716363958651758 31 5.9295346419310455 32 5.9669641607534407 33 5.9649354892507587 
		34 5.9305802962694063 35 5.8962250993063137;
createNode animCurveTA -n "animCurveTA227";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  25 0 35 0;
	setAttr -s 2 ".kot[0:1]"  9 5;
	setAttr -s 2 ".kix[0:1]"  0 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 1 1 3;
	setAttr -s 4 ".kot[0:3]"  9 1 9 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTU -n "animCurveTU2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 1 1 3;
	setAttr -s 4 ".kot[0:3]"  9 1 9 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTU -n "animCurveTU3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 1 1 3;
	setAttr -s 4 ".kot[0:3]"  9 1 9 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTU -n "animCurveTU4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 1 1 3;
	setAttr -s 4 ".kot[0:3]"  9 1 9 3;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 1;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTU -n "animCurveTU5";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 32 1 35 0;
createNode animCurveTU -n "animCurveTU6";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 32 1 35 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 35 1;
createNode animCurveTU -n "apu_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 35 1;
createNode animCurveTA -n "animCurveTA228";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA229";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA230";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL77";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 1 1 1;
	setAttr -s 4 ".kot[0:3]"  9 1 9 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL78";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 1 1 1;
	setAttr -s 4 ".kot[0:3]"  9 1 9 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL79";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 1 1 1;
	setAttr -s 4 ".kot[0:3]"  9 1 9 5;
	setAttr -s 4 ".kix[1:3]"  1 1 1;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  1 1 0;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTL -n "animCurveTL80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.13256050696689195 2 -0.13256050696689195 
		4 -0.13256050696689195 10 -0.13256050696689195 16 -0.13256050696689195 20 
		-0.13256050696689195 25 -0.14041871262535602 28 -0.26454016861507795 32 -0.26454016861507795 
		35 -0.26454016861507795;
	setAttr -s 10 ".kit[7:9]"  3 3 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		3 3 3;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 0.35665944218635559 0.020201010629534721 
		1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 -0.93423444032669067 
		-0.99979591369628906 0 0 0;
createNode animCurveTL -n "animCurveTL81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.17490148187665572 2 0.13015611774966329 
		4 0.35241687690187801 10 2.413582626130216 16 0.40101901084796415 20 0.4326137093982303 
		25 0.43408447188391314 28 0.13806192026723146 32 0.13806192026723146 35 0.13806192026723146;
	setAttr -s 10 ".kit[1:9]"  1 1 9 9 9 9 3 
		3 3;
	setAttr -s 10 ".kot[1:9]"  1 1 9 9 9 9 3 
		3 3;
	setAttr -s 10 ".ktl[0:9]" no no no yes yes yes yes yes yes 
		yes;
	setAttr -s 10 ".kix[1:9]"  0.0064109885133802891 0.0038786076474934816 
		0.082023590803146362 0.0016826757928356528 0.090357974171638489 0.0090529322624206543 
		1 1 1;
	setAttr -s 10 ".kiy[1:9]"  -0.99997943639755249 0.9999924898147583 
		0.99663037061691284 -0.99999856948852539 0.99590933322906494 -0.99995899200439453 
		0 0 0;
	setAttr -s 10 ".kox[1:9]"  0.0020065156277269125 0.00090448040282353759 
		0.082023590803146362 0.0016826757928356528 0.090357974171638489 0.0090529322624206543 
		1 1 1;
	setAttr -s 10 ".koy[1:9]"  0.99999797344207764 0.99999958276748657 
		0.99663037061691284 -0.99999856948852539 0.99590933322906494 -0.99995899200439453 
		0 0 0;
createNode animCurveTL -n "animCurveTL82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.5840630460795303 2 0.66386155331873709 
		4 0.87444738175782821 10 3.2367741839181141 16 6.2758434417827687 20 6.7729838531879434 
		25 7.8192752478475862 28 8.2734718280288551 32 8.2734718280288551 35 8.2734718280288551;
	setAttr -s 10 ".kit[2:9]"  1 9 9 9 9 3 3 
		3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		3 3 3;
	setAttr -s 10 ".ktl[0:9]" no no no yes yes yes yes yes yes 
		yes;
	setAttr -s 10 ".kix[2:9]"  0.0019712995272129774 0.00074054911965504289 
		0.00094262842321768403 0.0019437166629359126 0.001777196885086596 1 1 1;
	setAttr -s 10 ".kiy[2:9]"  0.99999803304672241 0.99999970197677612 
		0.99999958276748657 0.99999809265136719 0.99999845027923584 0 0 0;
	setAttr -s 10 ".kox[0:9]"  0.0071394937112927437 0.0045915674418210983 
		0.0010364382760599256 0.00074054911965504289 0.00094262842321768403 0.0019437166629359126 
		0.001777196885086596 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0.99997448921203613 0.99998944997787476 
		0.99999946355819702 0.99999970197677612 0.99999958276748657 0.99999809265136719 
		0.99999845027923584 0 0 0;
createNode animCurveTA -n "animCurveTA231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -30.072192405388275 2 -1.1621463337309532 
		4 47.906384388906076 10 97.33243096356172 16 97.33243096356172 20 127.249608946479 
		25 13.265121923507095 28 1.0981496044929535e-015 32 1.0981496044929535e-015 
		35 1.0981496044929535e-015;
	setAttr -s 10 ".kit[7:9]"  3 3 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		3 3 3;
	setAttr -s 10 ".kox[0:9]"  0.13098590075969696 0.09750162810087204 
		0.15329062938690186 0.42066586017608643 0.5380859375 0.20031958818435669 
		0.11921384185552597 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0.99138420820236206 0.9952353835105896 
		0.98818117380142212 0.9072156548500061 0.84288996458053589 -0.97973060607910156 
		-0.99286860227584839 0 0 0;
createNode animCurveTA -n "animCurveTA232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 -25.948901905116401 32 -25.948901905116401 35 -25.948901905116401;
	setAttr -s 10 ".kit[5:9]"  3 9 3 3 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 9 
		3 3 3;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 0.50738561153411865 
		1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 -0.86171913146972656 
		0 0 0;
createNode animCurveTA -n "animCurveTA233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 -2.5301208437689382e-016 32 -2.5301208437689382e-016 35 -2.5301208437689382e-016;
	setAttr -s 10 ".kit[5:9]"  3 9 3 3 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 9 
		3 3 3;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL83";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.18579966735506592 2 0.13019208663249487 
		4 0.13019208663249487 10 0.13019208663249487 16 0.13 20 0.13 25 0.13 28 0.13 
		32 -0.035123989252573359 35 0.21594587158542247;
	setAttr -s 10 ".kit[6:9]"  3 3 9 1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 3 
		3 9 5;
	setAttr -s 10 ".kix[9]"  0.1361624151468277;
	setAttr -s 10 ".kiy[9]"  0.99068653583526611;
	setAttr -s 10 ".kox[0:9]"  0.011987910605967045 0.023970656096935272 
		1 0.99884897470474243 0.99834376573562622 1 1 1 0.02713887020945549 0;
	setAttr -s 10 ".koy[0:9]"  -0.99992811679840088 -0.99971264600753784 
		0 -0.047966383397579193 -0.057530548423528671 0 0 0 0.99963164329528809 0;
createNode animCurveTL -n "animCurveTL84";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.4788651046679378 2 0.36511426272426845 
		4 0.37552399042286466 10 2.3520367390578185 16 0.17225126389004444 20 0.13155969841131115 
		25 0.28834463016403072 28 0.37606279822030764 32 0.48436591491442932 35 0.1380615615975922;
	setAttr -s 10 ".kit[0:9]"  9 9 1 3 1 1 9 
		1 9 1;
	setAttr -s 10 ".kot[1:9]"  9 1 3 1 1 1 9 
		9 5;
	setAttr -s 10 ".ktl[2:9]" no yes no no no no yes yes;
	setAttr -s 10 ".kix[2:9]"  0.002402628306299448 1 0.00096865004161372781 
		0.077586077153682709 0.010905825532972813 0.058919154107570648 0.0098033994436264038 
		0.013678969815373421;
	setAttr -s 10 ".kiy[2:9]"  0.99999713897705078 0 -0.9999995231628418 
		-0.99698567390441895 0.99994051456451416 0.99826276302337646 -0.99995195865631104 
		-0.99990642070770264;
	setAttr -s 10 ".kox[0:9]"  0.0058606616221368313 0.012901180423796177 
		0.00075766968075186014 1 0.021690212190151215 0.0089662624523043633 0.007326735183596611 
		0.011902625672519207 0.0098033994436264038 0;
	setAttr -s 10 ".koy[0:9]"  -0.99998283386230469 -0.99991679191589355 
		0.99999970197677612 0 -0.99976474046707153 0.99995982646942139 0.99997317790985107 
		0.99992918968200684 -0.99995195865631104 0;
createNode animCurveTL -n "animCurveTL85";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.45404353022539112 2 0.45513449873917872 
		4 1.3569749470247376 10 4.4692079196965242 16 7.1257823187422948 20 7.1844237020114008 
		25 7.2911674384601177 28 7.4841224252197343 32 8.0698454146757133 35 8.3391605372519084;
	setAttr -s 10 ".kit[3:9]"  1 1 9 9 1 9 9;
	setAttr -s 10 ".kot[0:9]"  1 9 9 1 1 9 1 
		9 9 9;
	setAttr -s 10 ".ktl[4:9]" no no no no yes yes;
	setAttr -s 10 ".kix[3:9]"  0.00067119934828951955 0.0014120180858299136 
		0.018136495724320412 0.0088974721729755402 0.011326989158987999 0.0027289129793643951 
		0.003713095560669899;
	setAttr -s 10 ".kiy[3:9]"  0.9999997615814209 0.99999898672103882 
		0.99983549118041992 0.99996042251586914 0.99993586540222168 0.99999630451202393 
		0.99999308586120605;
	setAttr -s 10 ".kox[0:9]"  0.00073326285928487778 0.00073623372009024024 
		0.0006643291562795639 0.00067127437796443701 0.0060998485423624516 0.018136495724320412 
		0.0054697562009096146 0.0029965182766318321 0.0027289129793643951 0.003713095560669899;
	setAttr -s 10 ".koy[0:9]"  0.99999970197677612 0.99999970197677612 
		0.9999997615814209 0.9999997615814209 0.99998140335083008 0.99983549118041992 
		0.99998503923416138 0.99999552965164185 0.99999630451202393 0.99999308586120605;
createNode animCurveTA -n "animCurveTA234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 99.963052812293768 2 115.88379589566645 
		4 22.640875690296291 10 -32.682117721124037 16 -22.499780072037716 20 -0.72020223382365811 
		25 31.673430537630743 28 68.672656531059985 32 60.42191170259148 35 2.348143885924237e-015;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.26794129610061646;
	setAttr -s 10 ".kiy[9]"  -0.96343523263931274;
	setAttr -s 10 ".kox[0:9]"  0.23330019414424896 0.09832136332988739 
		0.10230281203985214 0.45270410180091858 0.5129435658454895 0.30243349075317383 
		0.21502885222434998 0.42166927456855774 0.19109000265598297 0;
	setAttr -s 10 ".koy[0:9]"  0.97240477800369263 -0.9951547384262085 
		-0.99475330114364624 -0.89166080951690674 0.85842233896255493 0.95317047834396362 
		0.97660768032073975 0.90674972534179688 -0.98157250881195068 0;
createNode animCurveTA -n "animCurveTA235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 8.2164004644982427 35 0;
	setAttr -s 10 ".kit[5:9]"  3 9 9 9 1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 0.85196208953857422 
		1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0.52360343933105469 
		0 0;
createNode animCurveTA -n "animCurveTA236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 14.133009825744161 35 0;
	setAttr -s 10 ".kit[5:9]"  3 9 9 9 1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 0.68719851970672607 
		1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0.72646963596343994 
		0 0;
createNode animCurveTA -n "animCurveTA237";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA238";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA239";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA240";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA241";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA242";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL86";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 0 35 0;
	setAttr -s 10 ".kit[5:9]"  3 9 9 9 1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL87";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.24354617521346231 2 0.24354617521346231 
		4 0.24354617521346231 10 0.24354617521346231 16 0.24354617521346231 20 1.0548583126703357 
		25 0.553043889371862 28 0.24354617521346228 32 0.10182078333305083 35 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.013685365207493305;
	setAttr -s 10 ".kiy[9]"  -0.99990636110305786;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 0.0041085360571742058 0.0096926689147949219 
		0.0032868387643247843 0.0051710610277950764 0.009580221027135849 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0.99999153614044189 0.99995303153991699 
		-0.99999457597732544 -0.99998664855957031 -0.99995410442352295 0;
createNode animCurveTL -n "animCurveTL88";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.73266363114951272 2 0.73266363114951272 
		4 0.73266363114951272 10 0.73266363114951272 16 0.73266363114951272 20 0.39899130532265409 
		25 0.69408096471579128 28 0.73266363114951272 32 0.88823311159343721 35 1;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.012467706575989723;
	setAttr -s 10 ".kiy[9]"  0.99992227554321289;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 0.0099893417209386826 0.077521137893199921 
		0.0079916175454854965 0.012017198838293552 0.0087277479469776154 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 -0.999950110912323 -0.99699068069458008 
		0.99996805191040039 0.999927818775177 0.99996191263198853 0;
createNode animCurveTL -n "animCurveTL89";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 0 35 0;
	setAttr -s 10 ".kit[5:9]"  3 9 9 9 1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL90";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.72172207365063845 2 0.72172207365063845 
		4 0.72172207365063845 10 0.72172207365063845 16 0.72172207365063845 20 0.72172207365063845 
		25 0.59646486935962717 28 0.59646486935962717 32 0.24936757314139968 35 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.0055883903987705708;
	setAttr -s 10 ".kiy[9]"  -0.99998438358306885;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 0.02394385077059269 0.021284705027937889 
		0.006722266785800457 0.0039119073189795017 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 -0.99971330165863037 
		-0.99977344274520874 -0.99997740983963013 -0.99999237060546875 0;
createNode animCurveTL -n "animCurveTL91";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.39818034372871203 2 0.39818034372871203 
		4 0.39818034372871203 10 0.39818034372871203 16 0.39818034372871203 20 0.39818034372871203 
		25 0.47962079313410755 28 0.47962079313410755 32 0.78244200490513338 35 1;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.0064054485410451889;
	setAttr -s 10 ".kiy[9]"  0.99997949600219727;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 0.036811765283346176 
		0.032726220786571503 0.0077050882391631603 0.004483864177018404 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0.99932223558425903 0.99946433305740356 
		0.99997031688690186 0.99998992681503296 0;
createNode animCurveTL -n "animCurveTL92";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.03056236763751306 2 -0.041719900506989892 
		4 -0.0293120185104324 10 -0.0293120185104324 16 -0.0293120185104324 20 -0.0293120185104324 
		25 0.048973628824814402 28 -0.10362391964780562 32 -0.20587247022218108 35 
		-0.076472881617957691;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.026562351733446121;
	setAttr -s 10 ".kiy[9]"  -0.99964714050292969;
	setAttr -s 10 ".kox[0:9]"  0.0092227086424827576 0.02226332388818264 
		0.21011927723884583 1 1 0.03829309344291687 0.035861704498529434 0.0091554690152406693 
		0.085623405873775482 0;
	setAttr -s 10 ".koy[0:9]"  -0.99995744228363037 -0.99975216388702393 
		0.97767573595046997 0 0 0.99926656484603882 -0.99935674667358398 -0.9999580979347229 
		0.99632757902145386 0;
createNode animCurveTL -n "animCurveTL93";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.95976092787099887 2 0.78586939541856715 
		4 1.0444886466525538 10 2.9480549374410447 16 0.89728125468783126 20 0.77502425874306147 
		25 1.0594364621565027 28 0.94157756240513579 32 0.98727955406154044 35 0.99296149630440855;
	setAttr -s 10 ".kit[9]"  3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kox[0:9]"  0.0038337793666869402 0.015734735876321793 
		0.0012333190534263849 0.027162522077560425 0.0015339540550485253 0.018497629091143608 
		0.016008839011192322 0.032320041209459305 0.045363035053014755 1;
	setAttr -s 10 ".koy[0:9]"  -0.99999266862869263 0.99987620115280151 
		0.99999922513961792 -0.99963104724884033 -0.99999880790710449 0.99982887506484985 
		0.99987185001373291 -0.9994775652885437 0.99897056818008423 0;
createNode animCurveTL -n "animCurveTL94";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.20586259975558652 2 0.64039636463813254 
		4 1.3853637811119566 10 3.8847335906112406 16 6.6351347477766911 20 7.2581312109115821 
		25 7.6527619687232882 28 8.091783184613444 32 8.4384146320467348 35 8.3383762347828707;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 9;
	setAttr -s 10 ".kox[0:9]"  0.0015342094702646136 0.0011304205982014537 
		0.00082194467540830374 0.00076193775748834014 0.00098812300711870193 0.0029480215162038803 
		0.0031987603288143873 0.0029699169099330902 0.0094618592411279678 0.009995659813284874;
	setAttr -s 10 ".koy[0:9]"  0.99999880790710449 0.99999934434890747 
		0.99999964237213135 0.99999970197677612 0.9999995231628418 0.9999956488609314 
		0.99999487400054932 0.99999558925628662 0.99995523691177368 -0.99995005130767822;
createNode animCurveTA -n "animCurveTA243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 10.244833886622574 2 9.5558389861324784 
		4 9.7898231621973455 10 10.018035009191225 16 -26.094273123040036 20 9.8741266992842451 
		25 10.206465626319813 28 7.4977115816647597 32 2.8014070785838707 35 -0.6284363031647453;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.87650191783905029;
	setAttr -s 10 ".kiy[9]"  -0.48139837384223938;
	setAttr -s 10 ".kox[0:9]"  0.98411834239959717 0.99823093414306641 
		0.99954277276992798 0.53826189041137695 0.99997162818908691 0.42795711755752563 
		0.98811942338943481 0.87477248907089233 0.85452520847320557 0;
	setAttr -s 10 ".koy[0:9]"  -0.17751374840736389 -0.059455398470163345 
		0.030236827209591866 -0.84277760982513428 -0.0075348080135881901 0.90379905700683594 
		-0.15368814766407013 -0.48453393578529358 -0.5194098949432373 0;
createNode animCurveTA -n "animCurveTA244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 17.11704137357674 2 1.39572016906921 
		4 -6.4372567447185309 10 -13.764454507855373 16 -6.4780807527300226 20 -6.4341061478791133 
		25 6.4838299501086389 28 4.6794291231721026 32 -1.3600337167745848 35 -5.8284402688137167;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.8341071605682373;
	setAttr -s 10 ".kiy[9]"  -0.55160242319107056;
	setAttr -s 10 ".kox[0:9]"  0.23609557747840881 0.30851218104362488 
		0.70985883474349976 0.99999839067459106 0.93359535932540894 0.79842847585678101 
		0.80869513750076294 0.86250495910644531 0.78621423244476318 0;
	setAttr -s 10 ".koy[0:9]"  -0.9717298150062561 -0.95122039318084717 
		-0.70434403419494629 -0.0017812806181609631 0.35832899808883667 0.60208964347839355 
		0.58822798728942871 -0.50604861974716187 -0.61795401573181152 0;
createNode animCurveTA -n "animCurveTA245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 2.5759503100798002 2 -2.4459842727351595 
		4 -2.1491002537462691 10 -3.4476187577499249 16 2.0222181312431808 20 -2.1585496524417085 
		25 2.7924718615629569 28 2.1860410933050174 32 0.072949285583424242 35 -1.295636019309746;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.98750185966491699;
	setAttr -s 10 ".kiy[9]"  -0.1576073169708252;
	setAttr -s 10 ".kox[0:9]"  0.60538947582244873 0.85047060251235962 
		0.99785804748535156 0.98383700847625732 0.99772995710372925 0.99899744987487793 
		0.96186912059783936 0.97993093729019165 0.96772134304046631 0;
	setAttr -s 10 ".koy[0:9]"  -0.7959294319152832 -0.52602261304855347 
		-0.065416403114795685 0.17906630039215088 0.067342281341552734 0.0447666235268116 
		0.27351018786430359 -0.19933737814426422 -0.25202256441116333 0;
createNode animCurveTA -n "animCurveTA246";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA247";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA248";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA249";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA250";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA251";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA252";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA253";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA254";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA255";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA256";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA257";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA258";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA259";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA260";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA261";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA262";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA263";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA264";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA265";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA266";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 0 35 0;
	setAttr -s 10 ".kit[5:9]"  3 9 3 3 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 9 
		3 3 3;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 0 35 0;
	setAttr -s 10 ".kit[5:9]"  3 9 3 3 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 9 
		3 3 3;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.0034456079181433771 2 0.0034456079181433771 
		4 -33.009413111161273 10 0.21626955525768568 16 0.21626955525768568 20 0.21626955525768571 
		25 0.0034456079181433771 28 0 32 0 35 0;
	setAttr -s 10 ".kit[7:9]"  3 3 3;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		3 3 3;
	setAttr -s 10 ".kox[0:9]"  1 0.22545026242733002 0.99990302324295044 
		0.56780093908309937 1 0.99992334842681885 0.99989986419677734 1 1 1;
	setAttr -s 10 ".koy[0:9]"  0 -0.97425466775894165 0.013927944004535675 
		0.8231658935546875 0 -0.012380646541714668 -0.014153392054140568 0 0 0;
createNode animCurveTA -n "animCurveTA269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.15553530681976535 2 0.15553530681976535 
		4 0.15553530681976535 10 0.15553530681976535 16 0.15553530681976535 20 0.15553530681976543 
		25 -1.1105665325859091 28 -3.1260299677896586 32 -1.1905997452840109 35 7.1610205678881918e-017;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.99488776922225952;
	setAttr -s 10 ".kiy[9]"  0.10098696500062943;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 0.99729818105697632 0.97770369052886963 
		0.99998205900192261 0.97373485565185547 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 -0.073459804058074951 
		-0.20998919010162354 -0.005986363161355257 0.22768501937389374 0;
createNode animCurveTA -n "animCurveTA270";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.36354176124207516 2 -0.36354176124207516 
		4 -0.36354176124207516 10 -0.36354176124207516 16 -0.36354176124207516 20 
		-0.36354176124207521 25 1.4190873594799764 28 2.3421700339195279 32 1.0987316838425041 
		35 -1.4796585142476163e-016;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.98304557800292969;
	setAttr -s 10 ".kiy[9]"  -0.18336139619350433;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 0.99466520547866821 0.98467928171157837 
		0.99971300363540649 0.98499804735183716 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0.10315589606761932 0.17437529563903809 
		-0.023955671116709709 -0.17256565392017365 0;
createNode animCurveTA -n "animCurveTA271";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 5.3250602596476986 2 5.3250602596476986 
		4 5.3250602596476986 10 5.3250602596476986 16 5.3250602596476986 20 5.3250602596476995 
		25 -24.441142818040227 28 -54.670739303955031 32 -22.848732958815372 35 2.2115907042165199e-015;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.3302215039730072;
	setAttr -s 10 ".kiy[9]"  0.94390344619750977;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 0.50007003545761108 0.24678875505924225 
		0.99298077821731567 0.23753787577152252 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 -0.86598497629165649 
		-0.96906930208206177 0.11827590316534042 0.97137826681137085 0;
createNode animCurveTL -n "animCurveTL95";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.98872819052200589 2 -0.98872819052200589 
		4 -0.98872819052200589 10 -0.98872819052200589 16 -0.98872819052200589 20 
		-0.98872819052200589 25 -0.98872819052200589 28 -0.98872819052200589 32 -0.66664142751114186 
		35 -0.43524234076486068;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.006022321991622448;
	setAttr -s 10 ".kiy[9]"  0.99998188018798828;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 0.0072442344389855862 
		0.0042156679555773735 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0.99997377395629883 
		0.99999111890792847 0;
createNode animCurveTL -n "animCurveTL96";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.019519870042852914 2 -0.019519870042852914 
		4 -0.019519870042852914 10 -0.019519870042852914 16 -0.019519870042852914 
		20 -0.019519870042852914 25 -0.019519870042852914 28 -0.019519870042852914 
		32 -0.48921264898192618 35 -0.82665738350180629;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.0041297818534076214;
	setAttr -s 10 ".kiy[9]"  -0.99999147653579712;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 0.0049677249044179916 
		0.0028908625245094299 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 -0.99998766183853149 
		-0.99999582767486572 0;
createNode animCurveTL -n "animCurveTL97";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.020013375596438072 2 -0.020013375596438072 
		4 -0.020013375596438072 10 -0.020013375596438072 16 -0.020013375596438072 
		20 -0.020013375596438072 25 -0.020013375596438072 28 -0.020013375596438072 
		32 0.15325583332324211 35 0.27773886459742925;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.011194278486073017;
	setAttr -s 10 ".kiy[9]"  0.99993735551834106;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 0.013465299271047115 
		0.0078362524509429932 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0.99990934133529663 
		0.99996930360794067 0;
createNode animCurveTA -n "animCurveTA272";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 -1.603482296148955 35 1.8121934161072299e-015;
	setAttr -s 10 ".kit[5:9]"  3 9 9 9 1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.75928294658660889;
	setAttr -s 10 ".kiy[9]"  0.65076065063476563;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 0.99288386106491089 
		1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 -0.11908669024705887 
		0 0;
createNode animCurveTA -n "animCurveTA273";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 16.888744504888411 35 28.652637602052774;
	setAttr -s 10 ".kit[5:9]"  3 9 9 9 1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.58530420064926147;
	setAttr -s 10 ".kiy[9]"  0.8108137845993042;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 0.62066751718521118 
		0.42282792925834656 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0.78407388925552368 
		0.90621000528335571 0;
createNode animCurveTA -n "animCurveTA274";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 37.037593134260845 35 64.676908227303443;
	setAttr -s 10 ".kit[5:9]"  3 9 9 9 1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.26045680046081543;
	setAttr -s 10 ".kiy[9]"  0.96548551321029663;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 0.33951705694198608 
		0.20242534577846527 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0.94059991836547852 
		0.9792976975440979 0;
createNode animCurveTL -n "animCurveTL98";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.98872754407817198 2 0.98872754407817198 
		4 0.98872754407817198 10 0.98872754407817198 16 0.98872754407817198 20 0.98872754407817198 
		25 0.98872754407817198 28 0.98872754407817198 32 0.71585136835148899 35 0.5198069948790518;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.0071083391085267067;
	setAttr -s 10 ".kiy[9]"  -0.99997472763061523;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 0.008550575003027916 
		0.004975905641913414 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 -0.99996346235275269 
		-0.99998760223388672 0;
createNode animCurveTL -n "animCurveTL99";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.019514335421655121 2 -0.019514335421655121 
		4 -0.019514335421655121 10 -0.019514335421655121 16 -0.019514335421655121 
		20 -0.019514335421655121 25 -0.019514335421655121 28 -0.019514335421655121 
		32 -0.42943779331000903 35 -0.72394202659893114;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.004731916356831789;
	setAttr -s 10 ".kiy[9]"  -0.99998879432678223;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 0.0056920270435512066 
		0.0033123635221272707 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 -0.99998378753662109 
		-0.99999451637268066 0;
createNode animCurveTL -n "animCurveTL100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.020013361448308328 2 -0.020013361448308328 
		4 -0.020013361448308328 10 -0.020013361448308328 16 -0.020013361448308328 
		20 -0.020013361448308328 25 -0.020013361448308328 28 -0.020013361448308328 
		32 0.20368312827664842 35 0.36439499068905612;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.008671000599861145;
	setAttr -s 10 ".kiy[9]"  0.99996238946914673;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 0.010430232621729374 
		0.0060698217712342739 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0.99994558095932007 
		0.9999815821647644 0;
createNode animCurveTA -n "animCurveTA275";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 2.7940159405693725 35 7.7976222737965317;
	setAttr -s 10 ".kit[5:9]"  3 9 9 9 1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.59801161289215088;
	setAttr -s 10 ".kiy[9]"  0.80148744583129883;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 0.97885149717330933 
		0.86380618810653687 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0.20457203686237335 
		0.50382423400878906 0;
createNode animCurveTA -n "animCurveTA276";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 -18.312765020532961 35 -30.409274105849079;
	setAttr -s 10 ".kit[5:9]"  3 9 9 9 1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.62090075016021729;
	setAttr -s 10 ".kiy[9]"  -0.78388917446136475;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 0.58963155746459961 
		0.40245950222015381 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 -0.80767238140106201 
		-0.91543775796890259 0;
createNode animCurveTA -n "animCurveTA277";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 -36.88585168652606 35 -64.859940280210893;
	setAttr -s 10 ".kit[5:9]"  3 9 9 9 1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.25112250447273254;
	setAttr -s 10 ".kiy[9]"  -0.96795529127120972;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 0.34075185656547546 
		0.2018774151802063 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 -0.94015324115753174 
		-0.97941076755523682 0;
createNode animCurveTL -n "animCurveTL101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.8448236677023373 25 -0.8448236677023373 
		28 -0.8448236677023373 35 -0.8448236677023373;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.5117481219250299 25 1.5117481219250299 
		28 1.5117481219250299 35 1.5117481219250299;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 12.181446542311617 25 12.181446542311617 
		28 12.181446542311617 35 12.159039180784447;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
createNode animCurveTA -n "animCurveTA278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 5.4739599453216465 25 5.4739599453216465 
		28 5.4739599453216465 35 5.4739599453216465;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA279";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.5874521608419823 25 8.5874521608419823 
		28 8.5874521608419823 35 8.5874521608419823;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA280";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 74.754744621954103 25 74.754744621954103 
		28 74.754744621954103 35 74.754744621954103;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.61083301393139333 25 0.61083301393139333 
		28 0.61083301393139333 35 0.61083301393139333;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.4644416293758407 25 1.4644416293758407 
		28 1.4644416293758407 35 1.4644416293758407;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 12.422584192628207 25 12.422584192628207 
		28 12.422584192628207 35 12.400176831101037;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
createNode animCurveTA -n "animCurveTA281";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 16.226511010665412 25 16.226511010665412 
		28 16.226511010665412 35 16.226511010665412;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA282";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -8.5139660854992858 25 -8.5139660854992858 
		28 -8.5139660854992858 35 -8.5139660854992858;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTA -n "animCurveTA283";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -68.213989601412422 25 -68.213989601412422 
		28 -68.213989601412422 35 -68.213989601412422;
	setAttr -s 4 ".kit[0:3]"  3 9 9 3;
	setAttr -s 4 ".kot[0:3]"  3 9 9 3;
createNode animCurveTL -n "animCurveTL107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 0 35 0;
	setAttr -s 10 ".kit[5:9]"  3 9 9 9 1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 0 35 0;
	setAttr -s 10 ".kit[5:9]"  3 9 9 9 1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1 2 -1 4 -1 10 -1 16 -1 20 -1 
		25 -1 28 -1 32 -1 35 -1;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 -0.059169562564273373 35 -0.10167917362943303;
	setAttr -s 10 ".kit[5:9]"  3 9 9 9 1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.0327652208507061;
	setAttr -s 10 ".kiy[9]"  -0.99946308135986328;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 0.039404060691595078 
		0.022941956296563148 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 -0.99922335147857666 
		-0.99973678588867188 0;
createNode animCurveTL -n "animCurveTL111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 -0.23720765831303617 35 -0.40762644910266188;
	setAttr -s 10 ".kit[5:9]"  3 9 9 9 1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.0081771407276391983;
	setAttr -s 10 ".kiy[9]"  -0.99996656179428101;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 0.0098361941054463387 
		0.0057241013273596764 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 -0.99995160102844238 
		-0.99998360872268677 0;
createNode animCurveTL -n "animCurveTL112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1 2 -1 4 -1 10 -1 16 -1 20 -1 
		25 -1 28 -1 32 -0.96001664919811802 35 -0.93129112588482243;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.048456836491823196;
	setAttr -s 10 ".kiy[9]"  0.99882525205612183;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 0.058258507400751114 
		0.033940143883228302 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0.99830150604248047 
		0.99942386150360107 0;
createNode animCurveTA -n "animCurveTA284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 62.960170940606567 2 -30.115631848934086 
		4 -92.711726503210997 10 -111.6748984590043 16 -79.021064367324172 20 -28.145362689216814 
		25 15.238159962327705 28 15.238159962327705 32 14.671773624278011 35 12.253734489678926;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.78781026601791382;
	setAttr -s 10 ".kiy[9]"  -0.61591804027557373;
	setAttr -s 10 ".kox[0:9]"  0.041004277765750885 0.049014981836080551 
		0.18413150310516357 0.85848826169967651 0.22289277613162994 0.17939756810665131 
		0.33218288421630859 0.99910378456115723 0.97597736120223999 0;
	setAttr -s 10 ".koy[0:9]"  -0.99915897846221924 -0.99879807233810425 
		-0.98290163278579712 0.51283323764801025 0.97484296560287476 0.98377668857574463 
		0.943215012550354 -0.042327631264925003 -0.21787182986736298 0;
createNode animCurveTA -n "animCurveTA285";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -19.447616965174127 2 -53.42773549204999 
		4 21.232756283498528 10 7.7693343709994949 16 32.903031405871062 20 3.2051021576428229 
		25 -40.046745316398898 28 -40.046745316398898 32 -55.061119006088646 35 -65.746751280844975;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.60555940866470337;
	setAttr -s 10 ".kiy[9]"  -0.79580008983612061;
	setAttr -s 10 ".kox[0:9]"  0.11170683801174164 0.18456549942493439 
		0.2422313392162323 0.89111953973770142 0.97261136770248413 0.22934375703334808 
		0.33308213949203491 0.66500008106231689 0.46148890256881714 0;
	setAttr -s 10 ".koy[0:9]"  -0.99374121427536011 0.98282021284103394 
		0.97021853923797607 0.45376861095428467 -0.23243725299835205 -0.97334551811218262 
		-0.94289779663085938 -0.74684327840805054 -0.88714599609375 0;
createNode animCurveTA -n "animCurveTA286";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -69.946882873152816 2 6.7230436323704241 
		4 59.591911681952659 10 7.4513349028493625 16 37.573816594027363 20 54.080677688622899 
		25 -24.141089779821428 28 -24.141089779821428 32 -11.138332846972364 35 0;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.48096707463264465;
	setAttr -s 10 ".kiy[9]"  0.87673866748809814;
	setAttr -s 10 ".kox[0:9]"  0.049758583307266235 0.058871839195489883 
		0.99886590242385864 0.72112762928009033 0.37902301549911499 0.26830610632896423 
		0.19170483946800232 0.7168581485748291 0.48446005582809448 0;
	setAttr -s 10 ".koy[0:9]"  0.99876129627227783 0.99826556444168091 
		0.047612495720386505 -0.69280225038528442 0.92538726329803467 -0.96333372592926025 
		-0.98145264387130737 0.69721907377243042 0.87481337785720825 0;
createNode animCurveTA -n "animCurveTA287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -56.725330507545323 2 -26.364927098426016 
		4 36.637721374893978 10 -36.944208114747184 13 -36.843180742100451 16 -35.614005946049787 
		20 -26.444945731443525 25 -15.734941790180981 28 -15.734941790180981 32 -7.1091596612559274 
		35 -0.061808866237340665;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  0.67767852544784546;
	setAttr -s 11 ".kiy[10]"  0.73535829782485962;
	setAttr -s 11 ".kox[0:10]"  0.12482844293117523 0.081552505493164063 
		0.82215195894241333 0.22777234017848969 0.99332982301712036 0.7893490195274353 
		0.65406548976898193 0.8188592791557312 0.84027916193008423 0.64896780252456665 
		0;
	setAttr -s 11 ".koy[0:10]"  0.99217832088470459 0.99666905403137207 
		-0.56926810741424561 -0.97371441125869751 0.1153077557682991 0.61394476890563965 
		0.75643789768218994 0.57399427890777588 0.54215395450592041 0.76081585884094238 
		0;
createNode animCurveTA -n "animCurveTA288";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -22.950753025535782 2 -18.986855179925566 
		4 -10.591257606623879 10 1.377175224311922 13 38.630420698782153 16 24.775726493669264 
		20 -6.258071174042894 25 -41.82535372559262 28 -41.82535372559262 32 -51.921882531393287 
		35 -59.058178941076754;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  0.75601875782012939;
	setAttr -s 11 ".kiy[10]"  -0.65454995632171631;
	setAttr -s 11 ".kox[0:10]"  0.69388967752456665 0.52577340602874756 
		0.6001470685005188 0.32968643307685852 0.4398253858089447 0.28543686866760254 
		0.24989652633666992 0.39469945430755615 0.7979966402053833 0.61296045780181885 
		0;
	setAttr -s 11 ".koy[0:10]"  0.72008132934570313 0.850624680519104 
		0.79988968372344971 0.94409048557281494 0.89808332920074463 -0.9583975076675415 
		-0.96827256679534912 -0.91881030797958374 -0.60266190767288208 -0.79011356830596924 
		0;
createNode animCurveTA -n "animCurveTA289";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 60.585329838143075 2 34.296298577658384 
		4 -19.644712726580536 10 15.783054402847586 13 64.641867881575479 16 60.859651683698104 
		20 41.014286789263103 25 24.054087331385347 28 24.054087331385347 32 20.234919783443491 
		35 16.57914742975785;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  0.82883346080780029;
	setAttr -s 11 ".kiy[10]"  -0.55949544906616211;
	setAttr -s 11 ".kox[0:10]"  0.1437872052192688 0.09479040652513504 
		0.63651800155639648 0.19981929659843445 0.24637866020202637 0.49245628714561462 
		0.42314428091049194 0.66932034492492676 0.96153444051742554 0.87283170223236084 
		0;
	setAttr -s 11 ".koy[0:10]"  -0.98960864543914795 -0.99549722671508789 
		-0.77126187086105347 0.97983276844024658 0.96917366981506348 -0.87033718824386597 
		-0.90606230497360229 -0.74297398328781128 -0.27468448877334595 -0.48802134394645691 
		0;
createNode animCurveTA -n "animCurveTA290";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 26.470453106824781 2 40.721971615342838 
		4 70.290326204036958 10 49.215918270578356 13 35.304514059288955 16 27.317937068346019 
		20 17.939829779721567 25 26.470453106824788 28 26.470453106824788 32 16.046338371571199 
		35 8.5572674112203622;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  0.72937959432601929;
	setAttr -s 11 ".kiy[10]"  -0.68410921096801758;
	setAttr -s 11 ".kox[0:10]"  0.25888451933860779 0.17174682021141052 
		0.87401920557022095 0.4409601092338562 0.46365088224411011 0.6100422739982605 
		0.99878674745559692 0.87312769889831543 0.7886086106300354 0.59811216592788696 
		0;
	setAttr -s 11 ".koy[0:10]"  0.96590828895568848 0.9851410984992981 
		0.48589134216308594 -0.89752668142318726 -0.88601797819137573 -0.79236888885498047 
		-0.049244798719882965 0.48749160766601563 -0.61489546298980713 -0.80141240358352661 
		0;
createNode animCurveTA -n "animCurveTA291";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 90.634950435315986 2 81.782622567879827 
		4 63.750856238478235 10 36.763165419411216 13 19.535609352491242 16 29.702611968578474 
		20 25.940164818531304 25 27.316789452391596 28 27.316789452391596 32 20.563291629567331 
		35 15.711328223519061;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  0.8545910120010376;
	setAttr -s 11 ".kiy[10]"  -0.5193016529083252;
	setAttr -s 11 ".kox[0:10]"  0.39618441462516785 0.27334034442901611 
		0.32137963175773621 0.36233484745025635 0.8513675332069397 0.90185362100601196 
		0.99050408601760864 0.99596554040908813 0.89257717132568359 0.7551581859588623 
		0;
	setAttr -s 11 ".koy[0:10]"  -0.91817092895507813 -0.96191740036010742 
		-0.94695043563842773 -0.93204796314239502 -0.52456969022750854 0.43204167485237122 
		-0.13748347759246826 0.089736364781856537 -0.45089468359947205 -0.65554261207580566 
		0;
createNode animCurveTA -n "animCurveTA292";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 14.849434068729675 2 14.849434068729675 
		4 14.849434068729675 10 14.849434068729675 13 9.3094218959265369 16 42.02424233980868 
		20 27.194127436061471 25 14.849434068729675 28 14.849434068729675 32 6.2080290429142293 
		35 1.3286539715130728e-015;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  0.7894856333732605;
	setAttr -s 11 ".kiy[10]"  -0.6137690544128418;
	setAttr -s 11 ".kox[0:10]"  1 1 1 0.95178526639938354 0.38855034112930298 
		0.59872335195541382 0.53456413745880127 0.7778400182723999 0.83983176946640015 
		0.66908985376358032 0;
	setAttr -s 11 ".koy[0:10]"  0 0 0 -0.30676501989364624 0.92142748832702637 
		0.80095589160919189 -0.84512788057327271 -0.62846231460571289 -0.54284673929214478 
		-0.74318152666091919 0;
createNode animCurveTA -n "animCurveTA293";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.051608316401883209 2 0.051608316401883209 
		4 0.051608316401883209 10 0.051608316401883209 13 -0.81896850883231842 16 
		2.9474252326737909 20 24.403244420795332 25 0.051608316401883257 28 0.051608316401883257 
		32 0.042388197317722281 35 2.5726842228832511e-017;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  0.99990445375442505;
	setAttr -s 11 ".kiy[10]"  -0.013825050555169582;
	setAttr -s 11 ".kox[0:10]"  1 1 1 0.99871987104415894 0.96952164173126221 
		0.46832761168479919 0.98610377311706543 0.53147649765014648 0.9999997615814209 
		0.99999254941940308 0;
	setAttr -s 11 ".koy[0:10]"  0 0 0 -0.050583269447088242 0.24500557780265808 
		0.88355487585067749 -0.1661306768655777 -0.8470730185508728 -0.00068966310936957598 
		-0.0038602643180638552 0;
createNode animCurveTA -n "animCurveTA294";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.8225462689462448 2 1.8225462689462448 
		4 1.8225462689462448 10 1.8225462689462448 13 -7.4909793327028025 16 4.4292131235673571 
		20 13.783753201738831 25 1.8225462689462448 28 1.8225462689462448 32 0.76065208744781909 
		35 1.6158278728567179e-016;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  0.99554330110549927;
	setAttr -s 11 ".kiy[10]"  -0.094305709004402161;
	setAttr -s 11 ".kox[0:10]"  1 1 1 0.87922853231430054 0.97509032487869263 
		0.53206676244735718 0.98869580030441284 0.78740930557250977 0.9968603253364563 
		0.99083513021469116 0;
	setAttr -s 11 ".koy[0:10]"  0 0 0 -0.47640025615692139 0.22180826961994171 
		0.84670239686965942 -0.14993545413017273 -0.61643058061599731 -0.079180113971233368 
		-0.13507674634456635 0;
createNode animCurveTA -n "animCurveTA295";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 14.859570486861982 2 14.859570486861982 
		4 14.859570486861982 10 14.859570486861982 13 12.11254107479953 16 14.859570486861982 
		20 51.48662851685723 25 14.859570486861996 28 14.859570486861996 32 6.2122659784994365 
		35 -1.1621984039887733e-015;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  0.78928279876708984;
	setAttr -s 11 ".kiy[10]"  -0.61402988433837891;
	setAttr -s 11 ".kox[0:10]"  1 1 1 0.98746901750564575 1 0.321510910987854 
		1 0.38499322533607483 0.83966279029846191 0.66883766651153564 0;
	setAttr -s 11 ".koy[0:10]"  0 0 0 -0.15781304240226746 0 0.94690585136413574 
		0 -0.92291939258575439 -0.54310804605484009 -0.74340850114822388 0;
createNode animCurveTA -n "animCurveTA296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.052172032759606073 2 0.052172032759606073 
		4 0.052172032759606073 10 0.052172032759606073 13 -2.0804627459977181 16 
		0.052172032759606073 20 28.487302251650821 25 0.052172032759606073 28 0.052172032759606073 
		32 0.042637964369723051 35 -2.2544931902478553e-017;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  0.99990391731262207;
	setAttr -s 11 ".kiy[10]"  -0.013862087391316891;
	setAttr -s 11 ".kox[0:10]"  1 1 1 0.99239087104797363 1 0.40070858597755432 
		1 0.47332274913787842 0.9999997615814209 0.99999237060546875 0;
	setAttr -s 11 ".koy[0:10]"  0 0 0 -0.12312758713960648 0 0.91620558500289917 
		0 -0.88088905811309814 -0.00071314646629616618 -0.00390242924913764 0;
createNode animCurveTA -n "animCurveTA297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.8225558374727127 2 1.8225558374727127 
		4 1.8225558374727127 10 1.8225558374727127 13 -0.31060650841500204 16 1.8225558374727127 
		20 30.264719709317479 25 1.8225558374727127 28 1.8225558374727127 32 0.76064826393873208 
		35 -1.4123671958685917e-016;
	setAttr -s 11 ".kit[10]"  1;
	setAttr -s 11 ".kot[0:10]"  1 9 9 9 9 9 9 
		9 9 9 5;
	setAttr -s 11 ".kix[10]"  0.99554365873336792;
	setAttr -s 11 ".kiy[10]"  -0.094302073121070862;
	setAttr -s 11 ".kox[0:10]"  1 1 1 0.99238711595535278 1 0.40062540769577026 
		1 0.47323191165924072 0.99686026573181152 0.99083507061004639 0;
	setAttr -s 11 ".koy[0:10]"  0 0 0 -0.12315757572650909 0 0.91624194383621216 
		0 -0.88093787431716919 -0.079181104898452759 -0.13507743179798126 0;
createNode animCurveTA -n "animCurveTA298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -60.679962459776895 2 -60.679962459776895 
		4 -60.679962459776895 10 -60.679962459776895 16 -60.679962459776895 20 -60.679962459776895 
		25 -60.679962459776895 28 -60.679962459776895 32 -19.758170590970661 35 10.423754966968485;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.24447484314441681;
	setAttr -s 10 ".kiy[9]"  0.96965563297271729;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 0.3105444610118866 
		0.1847834587097168 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0.95055884122848511 
		0.98277926445007324 0;
createNode animCurveTA -n "animCurveTA299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 12.355514613247321 2 12.355514613247321 
		4 12.355514613247321 10 12.355514613247321 16 12.355514613247321 20 12.355514613247319 
		25 12.355514613247317 28 12.355514613247317 32 21.884938956618043 35 27.7228482558439;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.89764159917831421;
	setAttr -s 10 ".kiy[9]"  0.44072622060775757;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 0.81430554389953613 
		0.65634965896606445 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0.58043646812438965 
		0.75445681810379028 0;
createNode animCurveTA -n "animCurveTA300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 13.110465504305042 2 13.110465504305042 
		4 13.110465504305042 10 13.110465504305042 16 13.110465504305042 20 13.110465504305045 
		25 13.110465504305044 28 13.110465504305044 32 17.130334722562051 35 21.576484776388227;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.73303014039993286;
	setAttr -s 10 ".kiy[9]"  0.68019616603851318;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 0.95764541625976563 
		0.84484827518463135 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0.28795009851455688 
		0.53500592708587646 0;
createNode animCurveTA -n "animCurveTA301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -20.551139383726671 2 -20.551139383726671 
		4 -20.551139383726671 10 -19.797282837650698 16 -19.797282837650698 20 -19.797282837650695 
		25 -20.551139383726671 28 -20.551139383726671 32 -8.5722400848874418 35 1.2639528187871966e-015;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.68432962894439697;
	setAttr -s 10 ".kiy[9]"  0.72917276620864868;
	setAttr -s 10 ".kox[0:9]"  1 1 0.99878501892089844 0.99945944547653198 
		1 0.99903964996337891 0.99878501892089844 0.74476641416549683 0.54529726505279541 
		0;
	setAttr -s 10 ".koy[0:9]"  0 0 0.049279849976301193 0.032875414937734604 
		0 -0.043815478682518005 -0.049279849976301193 0.66732525825500488 0.83824276924133301 
		0;
createNode animCurveTA -n "animCurveTA302";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 3.0722483700821352 2 3.0722483700821352 
		4 3.0722483700821352 10 4.1507292555609006 16 4.1507292555609006 20 4.1507292555608979 
		25 3.0722483700821352 28 3.0722483700821352 32 1.3960624684407055 35 -2.6924921294409751e-016;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.9765358567237854;
	setAttr -s 10 ".kiy[9]"  -0.21535491943359375;
	setAttr -s 10 ".kox[0:9]"  1 1 0.99751806259155273 0.99889463186264038 
		1 0.99803739786148071 0.99751806259155273 0.99223160743713379 0.97459697723388672 
		0;
	setAttr -s 10 ".koy[0:9]"  0 0 0.070411220192909241 0.047005590051412582 
		0 -0.062620341777801514 -0.070411220192909241 -0.1244044229388237 -0.22396592795848846 
		0;
createNode animCurveTA -n "animCurveTA303";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 19.857676546395723 2 103.72764843228343 
		4 103.72764843228343 10 103.72764843228343 16 103.72764843228343 20 103.72764843228343 
		25 19.857676546395723 28 19.857676546395723 32 24.114901280758279 35 27.080064458283058;
	setAttr -s 10 ".kit[0:9]"  9 3 3 3 3 3 9 
		9 9 1;
	setAttr -s 10 ".kot[0:9]"  1 3 3 3 3 3 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.94411802291870117;
	setAttr -s 10 ".kiy[9]"  0.32960757613182068;
	setAttr -s 10 ".kox[0:9]"  0.045496180653572083 1 1 1 1 1 
		0.1792236715555191 0.95285475254058838 0.87981951236724854 0;
	setAttr -s 10 ".koy[0:9]"  0.99896448850631714 0 0 0 0 0 -0.98380833864212036 
		0.30342674255371094 0.4753078818321228 0;
createNode animCurveTA -n "animCurveTA304";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA305";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA306";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA307";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA308";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA309";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 13.994403295754109;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 0.80663090944290161;
	setAttr -s 4 ".kiy[2:3]"  0 0.59105545282363892;
	setAttr -s 4 ".kox[0:3]"  1 1 0.89852333068847656 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0.43892580270767212 0;
createNode animCurveTA -n "animCurveTA310";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA311";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 0;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA312";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 20 0 25 0 35 13.994403295754109;
	setAttr -s 4 ".kit[0:3]"  9 3 1 1;
	setAttr -s 4 ".kot[1:3]"  3 9 5;
	setAttr -s 4 ".kix[2:3]"  1 0.80663090944290161;
	setAttr -s 4 ".kiy[2:3]"  0 0.59105545282363892;
	setAttr -s 4 ".kox[0:3]"  1 1 0.89852333068847656 0;
	setAttr -s 4 ".koy[0:3]"  0 0 0.43892580270767212 0;
createNode animCurveTA -n "animCurveTA313";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 0 35 0;
	setAttr -s 10 ".kit[5:9]"  3 9 9 9 1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA314";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 0 35 0;
	setAttr -s 10 ".kit[5:9]"  3 9 9 9 1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA315";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.43065494947832267 2 47.648825228930555 
		4 47.648825228930555 10 47.648825228930555 16 47.648825228930555 20 47.648825228930555 
		25 -0.43065494947832089 28 -0.43065494947832089 32 16.062405672521756 35 
		27.911632519594587;
	setAttr -s 10 ".kit[0:9]"  9 3 3 3 3 3 9 
		9 9 1;
	setAttr -s 10 ".kot[0:9]"  1 3 3 3 3 3 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.55882006883621216;
	setAttr -s 10 ".kiy[9]"  0.82928895950317383;
	setAttr -s 10 ".kox[0:9]"  0.079196378588676453 1 1 1 1 1 
		0.3028590977191925 0.62969577312469482 0.42661896347999573 0;
	setAttr -s 10 ".koy[0:9]"  0.99685901403427124 0 0 0 0 0 -0.95303535461425781 
		0.77684187889099121 0.90443146228790283 0;
createNode animCurveTA -n "animCurveTA316";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 0 35 0;
	setAttr -s 10 ".kit[5:9]"  3 9 9 9 1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA317";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 0 35 0;
	setAttr -s 10 ".kit[5:9]"  3 9 9 9 1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 0 35 0;
	setAttr -s 10 ".kit[5:9]"  3 9 9 9 1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -34.436570627353341 2 -8.6680044972852368 
		4 6.7545237204615898 10 6.6077201434352224 16 18.649488391021936 20 -21.245449067498775 
		25 -15.754629313228021 28 -15.754629313228021 32 -3.7266909208098564 35 -0.6507300102495166;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.80398637056350708;
	setAttr -s 10 ".kiy[9]"  0.59464770555496216;
	setAttr -s 10 ".kox[0:9]"  0.14662954211235046 0.1823536604642868 
		0.70717966556549072 0.88757413625717163 0.56551378965377808 0.44693639874458313 
		0.94107520580291748 0.74340957403182983 0.66279280185699463 0;
	setAttr -s 10 ".koy[0:9]"  0.98919147253036499 0.98323297500610352 
		0.70703387260437012 0.46066492795944214 -0.82473886013031006 -0.89456576108932495 
		0.33819732069969177 0.66883647441864014 0.74880284070968628 0;
createNode animCurveTA -n "animCurveTA320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 12.578671015845821 2 12.116477779410241 
		4 6.5670078369224489 10 0.13121377600178125 16 0.13121377600177966 20 3.0577070226965337 
		25 5.3059628786068886 28 5.3059628786068886 32 6.1362665984482376 35 -4.2368721935960938;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.86632585525512695;
	setAttr -s 10 ".kiy[9]"  -0.4994792640209198;
	setAttr -s 10 ".kox[0:9]"  0.99275869131088257 0.78585594892501831 
		0.7868075966835022 0.96276015043258667 0.98846292495727539 0.95754784345626831 
		0.98934644460678101 0.99807697534561157 0.81391948461532593 0;
	setAttr -s 10 ".koy[0:9]"  -0.12012570351362228 -0.61840963363647461 
		-0.6171984076499939 -0.27035701274871826 0.15146300196647644 0.28827428817749023 
		0.14558035135269165 0.061987139284610748 -0.5809776782989502 0;
createNode animCurveTA -n "animCurveTA321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -3.7943623819848562 2 -2.8013812555909356 
		4 -9.0622639886059542 10 -16.693641214022282 16 -16.693641214022282 20 0.52388961859274219 
		25 -4.2129440437082879 28 -4.2129440437082879 32 3.6567352520887639 35 8.7398866450636881;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.85073411464691162;
	setAttr -s 10 ".kiy[9]"  0.52559632062911987;
	setAttr -s 10 ".kox[0:9]"  0.96783149242401123 0.82324683666229248 
		0.73988282680511475 0.94878333806991577 0.7427370548248291 0.80918818712234497 
		0.9551505446434021 0.86177772283554077 0.71819734573364258 0;
	setAttr -s 10 ".koy[0:9]"  0.25159928202629089 -0.5676836371421814 
		-0.67273575067520142 -0.31592744588851929 0.66958320140838623 0.58754956722259521 
		-0.29612058401107788 0.50728601217269897 0.69583946466445923 0;
createNode animCurveTA -n "animCurveTA322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 13.44722672283352 2 9.0436681845344769 
		4 -10.000133010584454 10 -25.17192683891162 16 -25.17192683891162 20 19.642726086956586 
		25 4.3548008102372249 28 4.3548008102372249 32 8.6267456645918035 35 2.3179451373507386e-016;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.96843641996383667;
	setAttr -s 10 ".kiy[9]"  -0.24926067888736725;
	setAttr -s 10 ".kox[0:9]"  0.6552538275718689 0.30978450179100037 
		0.40774109959602356 0.83384406566619873 0.39205095171928406 0.50310230255126953 
		0.70689737796783447 0.95255106687545776 0.95082747936248779 0;
	setAttr -s 10 ".koy[0:9]"  -0.75540876388549805 -0.95080679655075073 
		-0.9130975604057312 -0.55200010538101196 0.91994351148605347 0.86422687768936157 
		-0.70731610059738159 0.30437886714935303 -0.3097209632396698 0;
createNode animCurveTA -n "animCurveTA323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -2.3998587564717182 2 -10.528116315071506 
		4 -10.372054679897831 10 -18.018790105901513 16 -18.018790105901513 20 3.7752235751933267 
		25 -4.5172135235397723 28 -4.5172135235397723 32 -1.8309762646617314 35 -1.7984822654775686e-016;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.97948193550109863;
	setAttr -s 10 ".kiy[9]"  0.20153211057186127;
	setAttr -s 10 ".kox[0:9]"  0.42530983686447144 0.69187778234481812 
		0.89789682626724243 0.9485926628112793 0.65906792879104614 0.7864040732383728 
		0.87889707088470459 0.98040491342544556 0.94738119840621948 0;
	setAttr -s 10 ".koy[0:9]"  -0.90504783391952515 -0.72201460599899292 
		-0.44020599126815796 -0.31649962067604065 0.752083420753479 0.61771243810653687 
		-0.47701147198677063 0.19699282944202423 0.32010757923126221 0;
createNode animCurveTA -n "animCurveTA324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.1510007110886771 2 0.36971713469595846 
		4 1.8797089594838792 10 -33.445088454293327 16 -33.445088454293327 20 15.538037168792513 
		25 1.0312079795694953 28 1.0312079795694953 32 -8.5477655111110096 35 -15.452965173287607;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.75430846214294434;
	setAttr -s 10 ".kiy[9]"  -0.65652012825012207;
	setAttr -s 10 ".kox[0:9]"  0.97971606254577637 0.99548143148422241 
		0.41175845265388489 0.5442734956741333 0.36326560378074646 0.44618713855743408 
		0.72519141435623169 0.81287914514541626 0.62990057468414307 0;
	setAttr -s 10 ".koy[0:9]"  -0.20039071142673492 0.094956673681735992 
		-0.91129302978515625 -0.83890783786773682 0.93168562650680542 0.89493972063064575 
		-0.68854731321334839 -0.58243238925933838 -0.7766757607460022 0;
createNode animCurveTA -n "animCurveTA325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 2.7587192193638197 35 4.8714700432790456;
	setAttr -s 10 ".kit[5:9]"  3 9 9 9 1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.95894086360931396;
	setAttr -s 10 ".kiy[9]"  0.2836061418056488;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 0.97936612367630005 
		0.93956726789474487 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0.20209388434886932 
		0.34236431121826172 0;
createNode animCurveTA -n "animCurveTA326";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 6.8870653207395005 35 11.783606204137085;
	setAttr -s 10 ".kit[5:9]"  3 9 9 9 1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.85711205005645752;
	setAttr -s 10 ".kiy[9]"  0.51512998342514038;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 0.88897466659545898 
		0.75018805265426636 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0.45795640349388123 
		0.66122454404830933 0;
createNode animCurveTA -n "animCurveTA327";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 4.3336143193046563 35 7.5423825101935913;
	setAttr -s 10 ".kit[5:9]"  3 9 9 9 1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.92047232389450073;
	setAttr -s 10 ".kiy[9]"  0.39080768823623657;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 0.9512704610824585 
		0.87095373868942261 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0.30835774540901184 
		0.491364985704422 0;
createNode animCurveTA -n "animCurveTA328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 3.0573637994901306 2 3.1616736393304521 
		4 8.9151128820192067 10 15.679175793550311 16 15.679175793550311 20 15.687605422376389 
		25 3.0587631021909476 28 3.0587631021909476 32 0.10540736264931472 35 -1.8903601258661935;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.96754491329193115;
	setAttr -s 10 ".kiy[9]"  -0.25269919633865356;
	setAttr -s 10 ".kox[0:9]"  0.99962735176086426 0.7935638427734375 
		0.77354514598846436 0.95910018682479858 0.99999988079071045 0.80606180429458618 
		0.77078425884246826 0.97645753622055054 0.93780273199081421 0;
	setAttr -s 10 ".koy[0:9]"  0.027298077940940857 0.60848695039749146 
		0.63374119997024536 0.28306683897972107 0.00044137431541457772 -0.59183138608932495 
		-0.63709622621536255 -0.21570971608161926 -0.34716853499412537 0;
createNode animCurveTA -n "animCurveTA329";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.75065117256362812 2 2.0116712903037448 
		4 3.4866995141885124 10 4.9188226327670472 16 4.9188226327670472 20 -0.56073835341047928 
		25 -1.2379765659350273 28 -1.2379765659350273 32 3.568358646593198 35 2.5597289571479038;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.98125749826431274;
	setAttr -s 10 ".kiy[9]"  0.192701056599617;
	setAttr -s 10 ".kox[0:9]"  0.94959068298339844 0.94144183397293091 
		0.98237532377243042 0.99805331230163574 0.96121996641159058 0.94142985343933105 
		0.9990190863609314 0.94103336334228516 0.96194124221801758 0;
	setAttr -s 10 ".koy[0:9]"  0.31349247694015503 0.3371753990650177 
		0.18691912293434143 0.062366515398025513 -0.27578279376029968 -0.33720892667770386 
		-0.044281661510467529 0.3383137583732605 0.27325645089149475 0;
createNode animCurveTA -n "animCurveTA330";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 3.2883345540401034 2 3.1531708650357313 
		4 -1.512465273678401 10 -6.9852717024903921 16 -6.9852717024903921 20 40.448114977413738 
		25 3.1820772702664293 28 3.1820772702664293 32 2.5448556589991891 35 2.0168110874036049;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.99764341115951538;
	setAttr -s 10 ".kiy[9]"  -0.068612411618232727;
	setAttr -s 10 ".kox[0:9]"  0.99937450885772705 0.84669309854507446 
		0.83324331045150757 0.9726523756980896 0.37350112199783325 0.86069899797439575 
		0.37934902310371399 0.99886602163314819 0.99622291326522827 0;
	setAttr -s 10 ".koy[0:9]"  -0.035363640636205673 -0.53208160400390625 
		-0.55290651321411133 -0.23226572573184967 0.92762970924377441 0.50911414623260498 
		-0.92525362968444824 -0.047610014677047729 -0.086832486093044281 0;
createNode animCurveTA -n "animCurveTA331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -20.551139383726671 2 -20.551139383726671 
		4 -20.551139383726671 10 -20.270949572209677 16 -20.270949572209677 20 -20.270949572209677 
		25 -20.551139383726674 28 -20.551139383726674 32 -8.5522515108171255 35 -2.9444289650973736e-016;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.68798881769180298;
	setAttr -s 10 ".kiy[9]"  0.72572124004364014;
	setAttr -s 10 ".kox[0:9]"  1 1 0.9998319149017334 0.99992525577545166 
		1 0.99986714124679565 0.9998319149017334 0.74421310424804688 0.54529726505279541 
		0;
	setAttr -s 10 ".koy[0:9]"  0 0 0.018335297703742981 0.012224673293530941 
		0 -0.016298618167638779 -0.018335297703742981 0.66794222593307495 0.83824276924133301 
		0;
createNode animCurveTA -n "animCurveTA332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 3.0722483700821352 2 3.0722483700821352 
		4 3.0722483700821352 10 1.9859449933379982 16 1.9859449933379982 20 1.9859449933379982 
		25 3.0722483700821361 28 3.0722483700821361 32 1.4958091637899582 35 7.9998380071377024e-017;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.96448969841003418;
	setAttr -s 10 ".kiy[9]"  -0.26412045955657959;
	setAttr -s 10 ".kox[0:9]"  1 1 0.9974820613861084 0.99887853860855103 
		1 0.99800890684127808 0.9974820613861084 0.99311941862106323 0.97459697723388672 
		0;
	setAttr -s 10 ".koy[0:9]"  0 0 -0.07091936469078064 -0.047345772385597229 
		0 0.063072733581066132 0.07091936469078064 -0.11710604280233383 -0.22396592795848846 
		0;
createNode animCurveTA -n "animCurveTA333";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 19.857676546395723 2 59.211772263414638 
		4 59.211772263414638 10 59.211772263414638 16 59.211772263414638 20 59.211772263414638 
		25 19.85767654639573 28 19.85767654639573 32 27.814651811716271 35 33.429092416277157;
	setAttr -s 10 ".kit[0:9]"  9 3 3 3 3 3 9 
		9 9 1;
	setAttr -s 10 ".kot[0:9]"  1 3 3 3 3 3 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.82737767696380615;
	setAttr -s 10 ".kiy[9]"  0.5616459846496582;
	setAttr -s 10 ".kox[0:9]"  0.096606269478797913 1 1 1 1 1 
		0.36192157864570618 0.8593146800994873 0.70177453756332397 0;
	setAttr -s 10 ".koy[0:9]"  0.99532270431518555 0 0 0 0 0 -0.93220853805541992 
		0.5114472508430481 0.71239912509918213 0;
createNode animCurveTA -n "animCurveTA334";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -60.679962459776895 2 -60.679962459776895 
		4 -60.679962459776895 10 -60.679962459776895 16 -60.679962459776895 20 -60.679962459776895 
		25 -60.679962459776895 28 -60.679962459776895 32 -20.824080577337064 35 8.2533422302317234;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.25783705711364746;
	setAttr -s 10 ".kiy[9]"  0.96618843078613281;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 0.3180195689201355 
		0.19039370119571686 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0.94808411598205566 
		0.98170781135559082 0;
createNode animCurveTA -n "animCurveTA335";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 12.355514613247321 2 12.355514613247321 
		4 12.355514613247321 10 12.355514613247321 16 12.355514613247321 20 12.355514613247319 
		25 12.355514613247319 28 12.355514613247319 32 19.160582540948941 35 23.263402056531085;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.95058703422546387;
	setAttr -s 10 ".kiy[9]"  0.31045827269554138;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 0.89118939638137817 
		0.77482002973556519 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0.45363137125968933 
		0.63218188285827637 0;
createNode animCurveTA -n "animCurveTA336";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 13.110465504305042 2 13.110465504305042 
		4 13.110465504305042 10 13.110465504305042 16 13.110465504305042 20 13.110465504305045 
		25 13.110465504305045 28 13.110465504305045 32 16.628274811953656 35 20.166277752815617;
	setAttr -s 10 ".kit[9]"  1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 9 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.8254629373550415;
	setAttr -s 10 ".kiy[9]"  0.5644562840461731;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 0.96708083152770996 
		0.88438630104064941 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0.25446945428848267 
		0.46675565838813782 0;
createNode animCurveTA -n "animCurveTA337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 0 35 0;
	setAttr -s 10 ".kit[5:9]"  3 9 9 9 1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 2 0 4 0 10 0 16 0 20 0 25 0 
		28 0 32 0 35 0;
	setAttr -s 10 ".kit[5:9]"  3 9 9 9 1;
	setAttr -s 10 ".kot[0:9]"  1 9 9 9 9 3 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  1;
	setAttr -s 10 ".kiy[9]"  0;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA339";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.43065494947832267 2 0.18477034797548983 
		4 0.18477034797548983 10 0.18477034797548983 16 0.18477034797548983 20 0.18477034797548983 
		25 -0.43065494947832406 28 -0.43065494947832406 32 9.8605402718606872 35 
		17.254116939558365;
	setAttr -s 10 ".kit[0:9]"  9 3 3 3 3 3 9 
		9 9 1;
	setAttr -s 10 ".kot[0:9]"  1 3 3 3 3 3 9 
		9 9 5;
	setAttr -s 10 ".kix[9]"  0.73374330997467041;
	setAttr -s 10 ".kiy[9]"  0.67942672967910767;
	setAttr -s 10 ".kox[0:9]"  0.98726785182952881 1 1 1 1 1 0.99918979406356812 
		0.79241377115249634 0.6030394434928894 0;
	setAttr -s 10 ".koy[0:9]"  0.1590665876865387 0 0 0 0 0 -0.040246855467557907 
		0.60998398065567017 0.79771137237548828 0;
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
connectAttr "apu_jump_run_allSource.st" "clipLibrary1.st[0]";
connectAttr "apu_jump_run_allSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL75.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL76.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "apu_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA227.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU1.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU2.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU3.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU4.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU5.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU6.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "apu_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary1.cel[0].cev[12].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary1.cel[0].cev[13].cevr"
		;
connectAttr "animCurveTA228.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA229.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA230.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL77.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL78.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL79.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL80.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL81.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL82.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA231.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA232.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA233.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL83.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL84.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL85.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA234.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA235.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA236.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA237.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA238.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA239.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA240.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA241.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA242.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL86.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL87.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL88.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL89.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL90.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL91.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL92.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL93.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL94.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA243.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA244.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA245.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA246.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA247.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA248.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA249.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA250.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA251.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA252.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA253.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA254.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA255.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA256.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA257.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA258.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA259.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA260.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA261.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA262.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA263.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA264.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA265.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA266.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA267.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA268.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA269.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA270.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA271.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTL95.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTL96.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTL97.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA272.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA273.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA274.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL98.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL99.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL100.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA275.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA276.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA277.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL101.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL102.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL103.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA278.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA279.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA280.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL104.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL105.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL106.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA281.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA282.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA283.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL107.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL108.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL109.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL110.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL111.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL112.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA284.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA285.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA286.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA287.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA288.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA289.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA290.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA291.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA292.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA293.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA294.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA295.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA296.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA297.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA298.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA299.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA300.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA301.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA302.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA303.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA304.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA305.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA306.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA307.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA308.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA309.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA310.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA311.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA312.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA313.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA314.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA315.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA316.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA317.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA318.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA319.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA320.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA321.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA322.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA323.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA324.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA325.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA326.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA327.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA328.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA329.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA330.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA331.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA332.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA333.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA334.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA335.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA336.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA337.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA338.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA339.a" "clipLibrary1.cel[0].cev[161].cevr";
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
// End of apu_jump_run_all.ma
