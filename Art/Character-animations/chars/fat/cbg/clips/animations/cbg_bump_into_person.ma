//Maya ASCII 4.0 scene
//Name: cbg_bump_into_person.ma
//Last modified: Wed, Jul 31, 2002 09:35:34 AM
requires maya "4.0";
requires "p3dmayaexp" "18.0";
requires "p3dSimpleShader" "18.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "cbg_bump_into_personSource";
	setAttr ".ihi" 0;
	setAttr ".du" 40;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL165";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1.075 1 31 0 60 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "animCurveTL166";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 31 1 59 0 60 0;
	setAttr -s 4 ".kit[0:3]"  9 3 3 3;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 -0.050014200391814916 1 -0.050014200391814916 
		2 -0.050014200391814916 3 -0.050014200391814916 4 -0.050014200391814916 5 
		-0.050014200391814916 6 -0.050014200391814916 7 -0.050014200391814916 8 -0.050014200391814916 
		9 -0.050014200391814916 10 -0.050014200391814916 11 -0.050014200391814916 
		12 -0.050014200391814916 13 -0.050014200391814916 14 -0.050014200391814916 
		15 -0.050014200391814916 16 -0.050014200391814916 17 -0.050014200391814916 
		18 -0.050014200391814916 19 -0.050014200391814916 20 -0.050014200391814916 
		21 -0.050014200391814916 22 -0.050014200391814916 23 -0.050014200391814916 
		24 -0.050014200391814916 25 -0.050014200391814916 26 -0.050014200391814916 
		27 -0.050014200391814916 28 -0.050014200391814916 29 -0.050014200391814916 
		30 -0.050014200391814916 31 -0.050014200391814916 32 -0.050014200391814916 
		33 -0.050014200391814916 34 -0.050014200391814916 35 -0.050014200391814916 
		36 -0.050014200391814916 37 -0.050014200391814916 38 -0.050014200391814916 
		39 -0.050014200391814916 40 -0.050014200391814916;
createNode animCurveTL -n "cbg_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0 1 -0.043702761525600889 2 -0.088014350928744281 
		3 -0.13153516456542361 4 -0.17286559879163224 5 -0.21277461118040233 6 -0.25428639380400575 
		7 -0.29237051299850103 8 -0.32151513877571475 9 -0.33690664684196692 10 -0.34247277898972672 
		11 -0.34180569759034768 12 -0.33720859656460533 13 -0.33098466983327512 14 
		-0.32543711131713282 15 -0.32286911493695369 16 -0.32258297287769488 17 -0.32234352761282886 
		18 -0.3221477984959053 19 -0.32199280488047338 20 -0.32187556612008261 21 
		-0.32179310156828228 22 -0.32174243057862184 23 -0.32172057250465075 24 -0.32172454669991823 
		25 -0.32175137251797364 26 -0.32179806931236665 27 -0.32186165643664638 28 
		-0.32193915324436234 29 -0.32202757908906388 30 -0.32212395332430044 31 -0.32222529530362126 
		32 -0.3223286243805758 33 -0.32243095990871357 34 -0.32252932124158379 35 
		-0.32262072773273592 36 -0.32270219873571943 37 -0.32277075360408347 38 -0.32282341169137757 
		39 -0.32285719235115123 40 -0.32286911493695369;
createNode animCurveTA -n "cbg_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU33";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU35";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU37";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU38";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU39";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA455";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Right_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.26454016861507795 2.235 -0.26454016861507795 
		3.31 -0.26454016861507795 40 -0.26454016861507795;
createNode animCurveTL -n "Right_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.13806192026723146 2.23 0.288023472151822 
		3.31 0.2164509131542515 4.385 0.13806192026723146 40 0.13806192026723146;
	setAttr -s 5 ".kot[3:4]"  3 9;
createNode animCurveTL -n "Right_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.064904406754016042 2.23 -0.39490166443531793 
		3.31 -0.48538884129732823 4.385 -0.53522243059430563 40 -0.53522243059430563;
	setAttr -s 5 ".kot[3:4]"  3 9;
createNode animCurveTA -n "Right_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2.235 0 3.31 0 40 0;
createNode animCurveTA -n "Right_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -25.948901905116401 2.235 -25.948901905116401 
		3.31 -25.948901905116401 40 -25.948901905116401;
createNode animCurveTA -n "Right_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 2.235 0 3.31 0 40 0;
createNode animCurveTL -n "Left_Foot_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.21594587158542247 3.23 0.21594587158542247 
		4.305 0.21594587158542247 8.615 0.21594587158542247 40 0.21594587158542247;
createNode animCurveTL -n "Left_Foot_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.1380615615975922 8.615 0.1380615615975922 
		9.715 0.25549898215802858 11.845000000000001 0.14157091923358886 40 0.14157091923358886;
	setAttr -s 5 ".kit[1:4]"  3 9 9 9;
	setAttr -s 5 ".kot[1:4]"  3 3 3 9;
createNode animCurveTL -n "Left_Foot_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.00078430246903575811 3.23 0.00078430246903575811 
		4.305 -0.01459437182614064 8.615 -0.15100014335913647 11.845000000000001 
		-0.38988527082944557 40 -0.38988527082944557;
	setAttr -s 6 ".kit[2:5]"  1 9 9 9;
	setAttr -s 6 ".kot[2:5]"  1 9 3 9;
	setAttr -s 6 ".kix[2:5]"  0.022123575210571289 0.0066968766041100025 
		0.043751776218414307 1;
	setAttr -s 6 ".kiy[2:5]"  -0.99975526332855225 -0.99997758865356445 
		-0.99904245138168335 0;
	setAttr -s 6 ".kox[2:5]"  0.022123705595731735 0.0066968766041100025 
		1 1;
	setAttr -s 6 ".koy[2:5]"  -0.99975526332855225 -0.99997758865356445 
		0 0;
createNode animCurveTA -n "Left_Foot_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.23 -16.410189888024636 8.615 
		-10.966565688750805 11.845000000000001 0 40 0;
	setAttr -s 5 ".kit[2:4]"  1 1 9;
	setAttr -s 5 ".kot[2:4]"  1 1 9;
	setAttr -s 5 ".kix[2:4]"  0.51956790685653687 0.48960167169570923 
		1;
	setAttr -s 5 ".kiy[2:4]"  0.85442912578582764 0.87194621562957764 
		0;
	setAttr -s 5 ".kox[2:4]"  0.51956796646118164 0.99999493360519409 
		1;
	setAttr -s 5 ".koy[2:4]"  0.85442912578582764 0.0031861080788075924 
		0;
createNode animCurveTA -n "Left_Foot_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.23 0 4.305 0 8.615 0 40 0;
createNode animCurveTA -n "Left_Foot_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.23 0 4.305 0 8.615 0 40 0;
createNode animCurveTA -n "animCurveTA463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA465";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA471";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA472";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA473";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTA -n "animCurveTA474";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0;
createNode animCurveTL -n "animCurveTL179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr ".pst" 4;
createNode animCurveTL -n "Character_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.076472881617957691 4.31 -0.076472881617957691 
		15 -0.076472881617957691 40 -0.076472881617957691;
createNode animCurveTL -n "Character_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.90401582865979546 4.305 0.88054666986201913 
		8.615 0.86177959284286387 15 0.86301698252301129 40 0.86301698252301129;
createNode animCurveTL -n "Character_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4.305 -0.28259632974754112 
		8.615 -0.50857405484363993 15 -0.49367442468817729 40 -0.49367442468817729;
createNode animCurveTA -n "Character_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.62843630316474508 4.305 -8.4126535936750937 
		8.615 -12.178967113067316 15 7.2834597478621577 40 7.2834597478621577;
createNode animCurveTA -n "Character_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -5.8284402688137158 4.31 -5.8284402688137158 
		40 -5.8284402688137158;
createNode animCurveTA -n "Character_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.2956360193097458 4.31 -1.2956360193097458 
		40 -1.2956360193097458;
createNode animCurveTA -n "animCurveTA478";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA479";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA480";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA481";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA482";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA483";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA484";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA485";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA486";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA487";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA488";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA489";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA490";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA491";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA492";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA493";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA494";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA495";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA496";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA497";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA498";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA499";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA500";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA501";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA502";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA503";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Right_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.43524234076486068 4.31 -0.44701367954964683 
		15 -0.57783876537523293 21 -0.43524234076486068 40 -0.43524234076486068;
createNode animCurveTL -n "Right_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.82665738350180629 4.31 -0.56743288928205771 
		15 -0.57572157198466489 21 -0.73726103964469891 40 -0.82665738350180629;
	setAttr -s 5 ".kit[2:4]"  1 1 9;
	setAttr -s 5 ".kot[2:4]"  1 1 9;
	setAttr -s 5 ".kix[2:4]"  0.019333381205797195 0.015436094254255295 
		0.070668436586856842;
	setAttr -s 5 ".kiy[2:4]"  -0.99981307983398438 -0.99988085031509399 
		-0.99749988317489624;
	setAttr -s 5 ".kox[2:4]"  0.019333355128765106 0.015436363406479359 
		0.070668436586856842;
	setAttr -s 5 ".koy[2:4]"  -0.99981307983398438 -0.99988085031509399 
		-0.99749988317489624;
createNode animCurveTL -n "Right_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.27773886459742925 4.31 0.34898861977918955 
		15 0.15445180119440532 21 0.23468136913370899 40 0.27773886459742925;
	setAttr -s 5 ".kit[3:4]"  1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[3:4]"  0.018144933506846428 0.14552433788776398;
	setAttr -s 5 ".kiy[3:4]"  0.99983537197113037 0.98935467004776001;
	setAttr -s 5 ".kox[3:4]"  0.018144756555557251 0.14552433788776398;
	setAttr -s 5 ".koy[3:4]"  0.99983537197113037 0.98935467004776001;
createNode animCurveTA -n "Right_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.8121934161072303e-015 4.31 
		-60.536976871786202 21 0 40 0;
createNode animCurveTA -n "Right_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 28.652637602052774 4.31 29.724824519534344 
		21 28.652637602052774 40 28.652637602052774;
createNode animCurveTA -n "Right_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 64.676908227303443 4.31 -7.1193552838128502 
		21 64.676908227303443 40 64.676908227303443;
createNode animCurveTL -n "Left_Arm_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.5198069948790518 4.31 0.56529312134950516 
		15 0.62144262972948172 21 0.54669016534302783 40 0.5198069948790518;
	setAttr -s 5 ".kit[3:4]"  1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[3:4]"  0.052824370563030243 0.22930973768234253;
	setAttr -s 5 ".kiy[3:4]"  -0.99860382080078125 -0.97335350513458252;
	setAttr -s 5 ".kox[3:4]"  0.052824918180704117 0.22930973768234253;
	setAttr -s 5 ".koy[3:4]"  -0.99860376119613647 -0.97335350513458252;
createNode animCurveTL -n "Left_Arm_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.72394202659893114 4.31 -0.49894380499705565 
		15 -0.60706275316074332 21 -0.6460098656941311 40 -0.72394202659893114;
createNode animCurveTL -n "Left_Arm_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.36439499068905612 4.31 0.41986406752154964 
		15 0.37322296144111961 21 0.36056714652633171 40 0.36439499068905612;
createNode animCurveTA -n "Left_Arm_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 7.7976222737965299 4.31 -65.120813859308413 
		21 7.7976222737965299 40 7.7976222737965299;
createNode animCurveTA -n "Left_Arm_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -30.409274105849079 4.31 -29.727954864489181 
		21 -30.409274105849079 40 -30.409274105849079;
createNode animCurveTA -n "Left_Arm_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -64.859940280210878 4.31 18.804823449160185 
		21 -64.859940280210878 40 -64.859940280210878;
createNode animCurveTL -n "Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.98071836797454492 4.31 -0.98071836797454492 
		21 -0.98071836797454492 31 -0.98071836797454492 40 -0.98071836797454492;
createNode animCurveTL -n "Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.3548645271011504 4.31 1.3548645271011504 
		21 1.3548645271011504 31 1.3548645271011504 40 1.3548645271011504;
createNode animCurveTL -n "Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.097994651149805143 4.31 -0.097994651149805143 
		21 -0.097994651149805143 31 -0.097994651149805143 40 -0.097994651149805143;
createNode animCurveTA -n "Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 5.4739599453216474 4.31 5.4739599453216474 
		21 5.4739599453216474 31 5.4739599453216474 40 5.4739599453216474;
createNode animCurveTA -n "Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.5874521608419823 4.31 8.5874521608419823 
		21 8.5874521608419823 31 8.5874521608419823 40 8.5874521608419823;
createNode animCurveTA -n "Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 74.754744621954103 4.31 74.754744621954103 
		21 74.754744621954103 31 74.754744621954103 40 74.754744621954103;
createNode animCurveTL -n "Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.94325532077352603 4.31 0.94325532077352603 
		21 0.94325532077352603 31 0.94325532077352603 40 0.94325532077352603;
createNode animCurveTL -n "Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.3708366322640035 4.31 1.3708366322640035 
		21 1.3708366322640035 31 1.3708366322640035 40 1.3708366322640035;
createNode animCurveTL -n "Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.14314299916678522 4.31 0.14314299916678522 
		21 0.14314299916678522 31 0.14314299916678522 40 0.14314299916678522;
createNode animCurveTA -n "Left_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.226511010665405 4.31 16.226511010665405 
		21 16.226511010665405 31 16.226511010665405 40 16.226511010665405;
createNode animCurveTA -n "Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -8.513966085499284 4.31 -8.513966085499284 
		21 -8.513966085499284 31 -8.513966085499284 40 -8.513966085499284;
createNode animCurveTA -n "Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -68.213989601412422 4.31 -68.213989601412422 
		21 -68.213989601412422 31 -68.213989601412422 40 -68.213989601412422;
createNode animCurveTL -n "Left_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4.31 0.64136746398265343 21 
		0 31 0 40 0;
createNode animCurveTL -n "Left_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4.31 -0.050447356913502342 
		21 0 31 0 40 0;
createNode animCurveTL -n "Left_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1 4.31 -0.19873074307707472 
		21 -1 31 -1 40 -1;
createNode animCurveTL -n "Right_Elbow_Hoop_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.10167917362943303 4.31 -0.37031673079730271 
		21 -0.10167917362943303 31 -0.10167917362943303 40 -0.10167917362943303;
createNode animCurveTL -n "Right_Elbow_Hoop_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.40762644910266188 4.31 -0.1738764427928764 
		21 -0.40762644910266188 31 -0.40762644910266188 40 -0.40762644910266188;
createNode animCurveTL -n "Right_Elbow_Hoop_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.93129112588482243 4.31 -0.41108872000319219 
		21 -0.93129112588482243 31 -0.93129112588482243 40 -0.93129112588482243;
createNode animCurveTA -n "animCurveTA516";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 12.253734489678925 16 2.5080130201733613 
		36 8.9711994505746979 60 12.253734489678925;
	setAttr -s 4 ".kit[0:3]"  3 9 1 9;
	setAttr -s 4 ".kot[0:3]"  3 9 1 9;
	setAttr -s 4 ".kix[2:3]"  0.98217999935150146 0.99744552373886108;
	setAttr -s 4 ".kiy[2:3]"  0.18794278800487518 0.071430869400501251;
	setAttr -s 4 ".kox[2:3]"  0.98217999935150146 0.99744552373886108;
	setAttr -s 4 ".koy[2:3]"  0.18794280290603638 0.071430869400501251;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA517";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -65.746751280844961 16 -66.23189068800383 
		36 -65.911934826160262 60 -65.746751280844961;
	setAttr -s 4 ".kit[0:3]"  3 1 1 9;
	setAttr -s 4 ".kot[0:3]"  3 1 1 9;
	setAttr -s 4 ".kix[1:3]"  0.99999308586120605 0.99996083974838257 
		0.99999350309371948;
	setAttr -s 4 ".kiy[1:3]"  -0.0037223771214485168 0.0088514136150479317 
		0.0036037226673215628;
	setAttr -s 4 ".kox[1:3]"  0.99999308586120605 0.99996083974838257 
		0.99999350309371948;
	setAttr -s 4 ".koy[1:3]"  -0.0037223771214485168 0.0088514126837253571 
		0.0036037226673215628;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA518";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.871449260799477e-015 16 10.66049297399303 
		36 2.7123737418397913 60 3.871449260799477e-015;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA519";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.061808866237337522 16 -1.8696893211112606 
		40 -9.4806490727460329 60 -0.061808866237337522;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA520";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -59.058178941076754 16 -58.016233844005519 
		40 -57.82222388892724 60 -59.058178941076754;
	setAttr -s 4 ".kit[0:3]"  3 1 1 9;
	setAttr -s 4 ".kot[0:3]"  3 1 1 9;
	setAttr -s 4 ".kix[1:3]"  0.9993630051612854 0.99966120719909668 
		0.99947690963745117;
	setAttr -s 4 ".kiy[1:3]"  0.035688102245330811 -0.026029288768768311 
		-0.032340303063392639;
	setAttr -s 4 ".kox[1:3]"  0.9993630051612854 0.99966120719909668 
		0.99947690963745117;
	setAttr -s 4 ".koy[1:3]"  0.035688098520040512 -0.026029288768768311 
		-0.032340303063392639;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA521";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 16.579147429757843 16 19.186045316761614 
		40 26.120893869188869 60 16.579147429757843;
	setAttr -s 4 ".kit[0:3]"  3 1 9 9;
	setAttr -s 4 ".kot[0:3]"  3 1 9 9;
	setAttr -s 4 ".kix[1:3]"  0.98076349496841431 0.99951916933059692 
		0.97018760442733765;
	setAttr -s 4 ".kiy[1:3]"  0.19519966840744019 -0.031007096171379089 
		-0.24235512316226959;
	setAttr -s 4 ".kox[1:3]"  0.98076349496841431 0.99951916933059692 
		0.97018760442733765;
	setAttr -s 4 ".koy[1:3]"  0.19519966840744019 -0.031007096171379089 
		-0.24235512316226959;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA522";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.5572674112203622 16 11.258794193049559 
		36 20.489010807363705 60 8.5572674112203622;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA523";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.711328223519057 10.77 15.711328223519057 
		21 15.711328223519057 31 15.711328223519057 40 15.711328223519057 50 15.711328223519057 
		60 15.711328223519057;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10.77 0 21 0 31 0 40 0 50 0 
		60 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10.77 0 21 0 31 0 40 0 50 0 
		60 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 10.77 0 21 0 31 0 40 0 50 0 
		60 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 15.821664458316235 40 14.533232671953092 
		60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 0 40 -5.5539031469783557 
		60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 16 0 40 -1.4372191713728382 
		60 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "Thumb_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.423754966968488 4.31 10.423754966968488 
		21 10.423754966968488 31 10.423754966968488 40 10.423754966968488;
createNode animCurveTA -n "Thumb_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.722848255843903 4.31 27.722848255843903 
		21 27.722848255843903 31 27.722848255843903 40 27.722848255843903;
createNode animCurveTA -n "Thumb_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 21.576484776388227 4.31 21.576484776388227 
		21 21.576484776388227 31 21.576484776388227 40 21.576484776388227;
createNode animCurveTA -n "Middle_Base_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4.31 0 21 0 31 0 40 0;
createNode animCurveTA -n "Middle_Base_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4.31 0 21 0 31 0 40 0;
createNode animCurveTA -n "Middle_Base_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.080064458283051 4.31 27.080064458283051 
		21 27.080064458283051 31 27.080064458283051 40 27.080064458283051;
createNode animCurveTA -n "animCurveTA536";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA537";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA538";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Thumb_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4.31 0 21 0 31 0 40 0;
createNode animCurveTA -n "Thumb_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4.31 0 21 0 31 0 40 0;
createNode animCurveTA -n "Thumb_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 13.994403295754109 4.31 13.994403295754109 
		21 13.994403295754109 31 13.994403295754109 40 13.994403295754109;
createNode animCurveTA -n "Thumb_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4.31 0 21 0 31 0 40 0;
createNode animCurveTA -n "Thumb_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4.31 0 21 0 31 0 40 0;
createNode animCurveTA -n "Thumb_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 13.994403295754109 4.31 13.994403295754109 
		21 13.994403295754109 31 13.994403295754109 40 13.994403295754109;
createNode animCurveTA -n "Middle_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4.31 0 21 0 31 0 40 0;
createNode animCurveTA -n "Middle_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4.31 0 21 0 31 0 40 0;
createNode animCurveTA -n "Middle_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.911632519594587 4.31 27.911632519594587 
		21 27.911632519594587 31 27.911632519594587 40 27.911632519594587;
createNode animCurveTA -n "Jaw_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4.31 0 10.77 -5.7316978087257979 
		21 0 31 0 40 0;
createNode animCurveTA -n "Jaw_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4.31 0 10.77 1.8148689534808691 
		21 0 31 0 40 0;
createNode animCurveTA -n "Jaw_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4.31 35.022444543204145 10.77 
		-9.4634200276258387 21 0 31 0 40 0;
createNode animCurveTA -n "Spine_2_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.65073001024951671 2.155 10.311752003991151 
		4.31 -0.91286175793679913 15 4.8337240487363706 21 -0.65073001024951671 31 
		-0.65073001024951671 40 -0.65073001024951671;
	setAttr -s 7 ".kit[1:6]"  1 9 9 9 9 9;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 9;
	setAttr -s 7 ".kix[1:6]"  0.41246995329856873 0.9759637713432312 
		0.99996620416641235 0.98427271842956543 1 1;
	setAttr -s 7 ".kiy[1:6]"  0.91097122430801392 -0.21793274581432343 
		0.0082233203575015068 -0.17665563523769379 0 0;
	setAttr -s 7 ".kox[1:6]"  0.41246992349624634 0.9759637713432312 
		0.99996620416641235 0.98427271842956543 1 1;
	setAttr -s 7 ".koy[1:6]"  0.91097122430801392 -0.21793274581432343 
		0.0082233203575015068 -0.17665563523769379 0 0;
createNode animCurveTA -n "Spine_2_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -4.2368721935960929 2.155 -9.4747364002863019 
		4.31 -9.5655943287496257 15 0.78298786580192392 21 -4.2368721935960929 31 
		-4.2368721935960929 40 -4.2368721935960929;
	setAttr -s 7 ".kit[1:6]"  1 9 9 9 9 9;
	setAttr -s 7 ".kot[1:6]"  1 9 9 9 9 9;
	setAttr -s 7 ".kix[1:6]"  0.63649445772171021 0.9225955605506897 
		0.9863128662109375 0.9867740273475647 1 1;
	setAttr -s 7 ".kiy[1:6]"  -0.77128130197525024 0.38576862215995789 
		0.16488458216190338 -0.16210184991359711 0 0;
	setAttr -s 7 ".kox[1:6]"  0.63649445772171021 0.9225955605506897 
		0.9863128662109375 0.9867740273475647 1 1;
	setAttr -s 7 ".koy[1:6]"  -0.77128130197525024 0.38576862215995789 
		0.16488458216190338 -0.16210184991359711 0 0;
createNode animCurveTA -n "Spine_2_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.7398866450636881 2.155 16.637995678745185 
		4.31 -5.1815748624221412 15 7.1728203404567221 21 8.7398866450636881 31 8.7398866450636881 
		40 8.7398866450636881;
	setAttr -s 7 ".kit[1:6]"  1 1 9 9 9 9;
	setAttr -s 7 ".kot[1:6]"  1 1 9 9 9 9;
	setAttr -s 7 ".kix[1:6]"  0.46961092948913574 0.6097862720489502 
		0.91641151905059814 0.99868768453598022 1 1;
	setAttr -s 7 ".kiy[1:6]"  0.88287347555160522 -0.79256588220596313 
		0.40023738145828247 0.051214825361967087 0 0;
	setAttr -s 7 ".kox[1:6]"  0.46961086988449097 0.60978633165359497 
		0.91641151905059814 0.99868768453598022 1 1;
	setAttr -s 7 ".koy[1:6]"  0.88287347555160522 -0.79256582260131836 
		0.40023738145828247 0.051214825361967087 0 0;
createNode animCurveTA -n "Neck_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4.31 0 21 0 31 0 40 0;
createNode animCurveTA -n "Neck_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4.31 0 21 0 31 0 40 0;
createNode animCurveTA -n "Neck_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4.31 0 21 0 31 0 40 0;
createNode animCurveTA -n "Head_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 4.8714700432790456 2.155 8.3294723276637583 
		4.31 2.3440531497108834 15 -10.812101526279728 21 4.8714700432790456 31 4.8714700432790456 
		40 4.8714700432790456;
createNode animCurveTA -n "Head_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 11.783606204137085 2.155 9.7916530910478645 
		4.31 12.523661989898775 21 11.783606204137085 31 11.783606204137085 40 11.783606204137085;
createNode animCurveTA -n "Head_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 7.5423825101935913 2.155 23.179671911165304 
		4.31 -4.4204704416028138 21 7.5423825101935913 31 7.5423825101935913 40 7.5423825101935913;
createNode animCurveTA -n "Spine_1_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.8903601258661931 4.31 -1.8903601258661931 
		15 -1.1082822051777708 21 -1.8903601258661931 31 -1.8903601258661931 40 -1.8903601258661931;
createNode animCurveTA -n "Spine_1_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.5597289571479034 4.31 2.5597289571479034 
		15 6.1547132708744927 21 2.5597289571479034 31 2.5597289571479034 40 2.5597289571479034;
createNode animCurveTA -n "Spine_1_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.016811087403604 4.31 2.016811087403604 
		15 5.6507010370253115 21 2.016811087403604 31 2.016811087403604 40 2.016811087403604;
createNode animCurveTA -n "Middle_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4.31 0 21 0 31 0 40 0;
createNode animCurveTA -n "Middle_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4.31 0 21 0 31 0 40 0;
createNode animCurveTA -n "Middle_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 33.429092416277157 4.31 33.429092416277157 
		21 33.429092416277157 31 33.429092416277157 40 33.429092416277157;
createNode animCurveTA -n "Thumb_Base_R_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.2533422302317216 4.31 8.2533422302317216 
		21 8.2533422302317216 31 8.2533422302317216 40 8.2533422302317216;
createNode animCurveTA -n "Thumb_Base_R_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 23.263402056531085 4.31 23.263402056531085 
		21 23.263402056531085 31 23.263402056531085 40 23.263402056531085;
createNode animCurveTA -n "Thumb_Base_R_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 20.166277752815617 4.31 20.166277752815617 
		21 20.166277752815617 31 20.166277752815617 40 20.166277752815617;
createNode animCurveTA -n "Middle_L_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4.31 0 21 0 31 0 40 0;
createNode animCurveTA -n "Middle_L_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 4.31 0 21 0 31 0 40 0;
createNode animCurveTA -n "Middle_L_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.254116939558369 4.31 17.254116939558369 
		21 17.254116939558369 31 17.254116939558369 40 17.254116939558369;
createNode clipLibrary -n "clipLibrary2";
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
select -ne :characterPartition;
select -ne :hyperGraphLayout;
	setAttr ".cch" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".img" -type "string" "";
	setAttr ".ims" 1;
select -ne :ikSystem;
connectAttr "cbg_bump_into_personSource.st" "clipLibrary2.st[0]";
connectAttr "cbg_bump_into_personSource.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL165.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL166.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary2.cel[0].cev[2].cevr"
		;
connectAttr "cbg_Motion_Root_translateY.a" "clipLibrary2.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary2.cel[0].cev[4].cevr"
		;
connectAttr "cbg_Motion_Root_rotateY.a" "clipLibrary2.cel[0].cev[5].cevr"
		;
connectAttr "animCurveTU33.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU34.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU35.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU36.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU37.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU38.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU39.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU40.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA454.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA455.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA456.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL170.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL171.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL172.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "Right_Foot_Hoop_translateX.a" "clipLibrary2.cel[0].cev[20].cevr"
		;
connectAttr "Right_Foot_Hoop_translateY.a" "clipLibrary2.cel[0].cev[21].cevr"
		;
connectAttr "Right_Foot_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[22].cevr"
		;
connectAttr "Right_Foot_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[23].cevr"
		;
connectAttr "Right_Foot_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[24].cevr"
		;
connectAttr "Right_Foot_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[25].cevr"
		;
connectAttr "Left_Foot_Hoop_translateX.a" "clipLibrary2.cel[0].cev[26].cevr"
		;
connectAttr "Left_Foot_Hoop_translateY.a" "clipLibrary2.cel[0].cev[27].cevr"
		;
connectAttr "Left_Foot_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[28].cevr"
		;
connectAttr "Left_Foot_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[29].cevr"
		;
connectAttr "Left_Foot_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[30].cevr"
		;
connectAttr "Left_Foot_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[31].cevr"
		;
connectAttr "animCurveTA463.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA464.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA465.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA466.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA467.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA468.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTA469.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTA470.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTA471.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTA472.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTA473.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTA474.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL179.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL180.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL181.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTL182.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTL183.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTL184.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "Character_Hoop_translateX.a" "clipLibrary2.cel[0].cev[50].cevr"
		;
connectAttr "Character_Hoop_translateY.a" "clipLibrary2.cel[0].cev[51].cevr"
		;
connectAttr "Character_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[52].cevr"
		;
connectAttr "Character_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[53].cevr"
		;
connectAttr "Character_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[54].cevr"
		;
connectAttr "Character_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[55].cevr"
		;
connectAttr "animCurveTA478.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA479.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA480.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA481.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA482.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA483.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA484.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA485.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA486.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA487.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA488.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA489.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA490.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA491.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA492.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA493.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA494.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA495.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA496.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA497.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTA498.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTA499.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTA500.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA501.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA502.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA503.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "Right_Arm_Hoop_translateX.a" "clipLibrary2.cel[0].cev[82].cevr"
		;
connectAttr "Right_Arm_Hoop_translateY.a" "clipLibrary2.cel[0].cev[83].cevr"
		;
connectAttr "Right_Arm_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[84].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[85].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[86].cevr"
		;
connectAttr "Right_Arm_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[87].cevr"
		;
connectAttr "Left_Arm_Hoop_translateX.a" "clipLibrary2.cel[0].cev[88].cevr"
		;
connectAttr "Left_Arm_Hoop_translateY.a" "clipLibrary2.cel[0].cev[89].cevr"
		;
connectAttr "Left_Arm_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[90].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateX.a" "clipLibrary2.cel[0].cev[91].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateY.a" "clipLibrary2.cel[0].cev[92].cevr"
		;
connectAttr "Left_Arm_Hoop_rotateZ.a" "clipLibrary2.cel[0].cev[93].cevr"
		;
connectAttr "Right_Arm_World_translateX.a" "clipLibrary2.cel[0].cev[94].cevr"
		;
connectAttr "Right_Arm_World_translateY.a" "clipLibrary2.cel[0].cev[95].cevr"
		;
connectAttr "Right_Arm_World_translateZ.a" "clipLibrary2.cel[0].cev[96].cevr"
		;
connectAttr "Right_Arm_World_rotateX.a" "clipLibrary2.cel[0].cev[97].cevr"
		;
connectAttr "Right_Arm_World_rotateY.a" "clipLibrary2.cel[0].cev[98].cevr"
		;
connectAttr "Right_Arm_World_rotateZ.a" "clipLibrary2.cel[0].cev[99].cevr"
		;
connectAttr "Left_Arm_World_translateX.a" "clipLibrary2.cel[0].cev[100].cevr"
		;
connectAttr "Left_Arm_World_translateY.a" "clipLibrary2.cel[0].cev[101].cevr"
		;
connectAttr "Left_Arm_World_translateZ.a" "clipLibrary2.cel[0].cev[102].cevr"
		;
connectAttr "Left_Arm_World_rotateX.a" "clipLibrary2.cel[0].cev[103].cevr"
		;
connectAttr "Left_Arm_World_rotateY.a" "clipLibrary2.cel[0].cev[104].cevr"
		;
connectAttr "Left_Arm_World_rotateZ.a" "clipLibrary2.cel[0].cev[105].cevr"
		;
connectAttr "Left_Elbow_Hoop_translateX.a" "clipLibrary2.cel[0].cev[106].cevr"
		;
connectAttr "Left_Elbow_Hoop_translateY.a" "clipLibrary2.cel[0].cev[107].cevr"
		;
connectAttr "Left_Elbow_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[108].cevr"
		;
connectAttr "Right_Elbow_Hoop_translateX.a" "clipLibrary2.cel[0].cev[109].cevr"
		;
connectAttr "Right_Elbow_Hoop_translateY.a" "clipLibrary2.cel[0].cev[110].cevr"
		;
connectAttr "Right_Elbow_Hoop_translateZ.a" "clipLibrary2.cel[0].cev[111].cevr"
		;
connectAttr "animCurveTA516.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA517.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA518.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA519.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA520.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA521.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA522.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA523.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA524.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA525.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA526.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA527.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA528.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA529.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "Thumb_Base_L_rotateX.a" "clipLibrary2.cel[0].cev[126].cevr"
		;
connectAttr "Thumb_Base_L_rotateY.a" "clipLibrary2.cel[0].cev[127].cevr"
		;
connectAttr "Thumb_Base_L_rotateZ.a" "clipLibrary2.cel[0].cev[128].cevr"
		;
connectAttr "Middle_Base_L_rotateX.a" "clipLibrary2.cel[0].cev[129].cevr"
		;
connectAttr "Middle_Base_L_rotateY.a" "clipLibrary2.cel[0].cev[130].cevr"
		;
connectAttr "Middle_Base_L_rotateZ.a" "clipLibrary2.cel[0].cev[131].cevr"
		;
connectAttr "animCurveTA536.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA537.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA538.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "Thumb_R_rotateX.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "Thumb_R_rotateY.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "Thumb_R_rotateZ.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "Thumb_L_rotateX.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "Thumb_L_rotateY.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "Thumb_L_rotateZ.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "Middle_R_rotateX.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "Middle_R_rotateY.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "Middle_R_rotateZ.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "Jaw_rotateX.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "Jaw_rotateY.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "Jaw_rotateZ.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "Spine_2_rotateX.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "Spine_2_rotateY.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "Spine_2_rotateZ.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "Neck_rotateX.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "Neck_rotateY.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "Neck_rotateZ.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "Head_rotateX.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "Head_rotateY.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "Head_rotateZ.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "Spine_1_rotateX.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "Spine_1_rotateY.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "Spine_1_rotateZ.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "Middle_Base_R_rotateX.a" "clipLibrary2.cel[0].cev[159].cevr"
		;
connectAttr "Middle_Base_R_rotateY.a" "clipLibrary2.cel[0].cev[160].cevr"
		;
connectAttr "Middle_Base_R_rotateZ.a" "clipLibrary2.cel[0].cev[161].cevr"
		;
connectAttr "Thumb_Base_R_rotateX.a" "clipLibrary2.cel[0].cev[162].cevr"
		;
connectAttr "Thumb_Base_R_rotateY.a" "clipLibrary2.cel[0].cev[163].cevr"
		;
connectAttr "Thumb_Base_R_rotateZ.a" "clipLibrary2.cel[0].cev[164].cevr"
		;
connectAttr "Middle_L_rotateX.a" "clipLibrary2.cel[0].cev[165].cevr";
connectAttr "Middle_L_rotateY.a" "clipLibrary2.cel[0].cev[166].cevr";
connectAttr "Middle_L_rotateZ.a" "clipLibrary2.cel[0].cev[167].cevr";
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
// End of cbg_bump_into_person.ma
