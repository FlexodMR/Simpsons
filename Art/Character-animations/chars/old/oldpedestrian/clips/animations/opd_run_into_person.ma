//Maya ASCII 4.0 scene
//Name: opd_run_into_person.ma
//Last modified: Wed, Aug 14, 2002 11:06:56 AM
requires maya "4.0";
requires "p3dSimpleShader" "18.0";
currentUnit -l meter -a degree -t film;
createNode animClip -n "opd_run_into_personSource";
	setAttr ".ihi" 0;
	setAttr ".du" 23;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL185";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 0.86 1 24.800000000000001 0 
		48 0;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "animCurveTL186";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 24.800000000000001 1 47.200000000000003 
		0 48 0;
	setAttr -s 4 ".kit[0:3]"  9 3 3 3;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 -0.058078031709737889 1 -0.058078031709737889 
		2 -0.058078031709737889 3 -0.058078031709737889 4 -0.058078031709737889 5 
		-0.058078031709737889 6 -0.058078031709737889 7 -0.058078031709737889 8 -0.058078031709737889 
		9 -0.058078031709737889 10 -0.058078031709737889 11 -0.058078031709737889 
		12 -0.058078031709737889 13 -0.058078031709737889 14 -0.058078031709737889 
		15 -0.058078031709737889 16 -0.058078031709737889 17 -0.058078031709737889 
		18 -0.058078031709737889 19 -0.058078031709737889 20 -0.058078031709737889 
		21 -0.058078031709737889 22 -0.058078031709737889 23 -0.058078031709737889;
createNode animCurveTL -n "opd_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 1 -0.063610196825876097 2 -0.12769019674190762 
		3 -0.18906565812904891 4 -0.2470804395222308 5 -0.30696448865242415 6 -0.35812910777737939 
		7 -0.38816610459149886 8 -0.39768995129516327 9 -0.39590411084971971 10 -0.38803229380405008 
		11 -0.37929821070703656 12 -0.374925572107561 13 -0.37451883385783696 14 
		-0.37419547131581271 15 -0.37394872428897175 16 -0.37377183258479818 17 -0.37365803601077568 
		18 -0.37360057437438815 19 -0.37359268748311919 20 -0.37362761514445281 21 
		-0.37369859716587278 22 -0.37379887335486295 23 -0.37392168351890703;
createNode animCurveTA -n "opd_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  2 0;
createNode animCurveTU -n "animCurveTU41";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA540";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA541";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA542";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.26454016861507795 1.788 -0.26454016861507795 
		2.6480000000000001 -0.26454016861507795 32 -0.26454016861507795;
createNode animCurveTL -n "animCurveTL194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.13806192026723146 1.784 0.288023472151822 
		2.6480000000000001 0.2164509131542515 3.508 0.13806192026723146 32 0.13806192026723146;
	setAttr -s 5 ".kot[3:4]"  3 9;
createNode animCurveTL -n "animCurveTL195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.064904406754016042 1.784 -0.39490166443531793 
		2.6480000000000001 -0.48538884129732823 3.508 -0.53522243059430563 32 -0.53522243059430563;
	setAttr -s 5 ".kot[3:4]"  3 9;
createNode animCurveTA -n "animCurveTA543";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1.788 0 2.6480000000000001 
		0 32 0;
createNode animCurveTA -n "animCurveTA544";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -25.948901905116401 1.788 -25.948901905116401 
		2.6480000000000001 -25.948901905116401 32 -25.948901905116401;
createNode animCurveTA -n "animCurveTA545";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 1.788 0 2.6480000000000001 
		0 32 0;
createNode animCurveTL -n "animCurveTL196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.21594587158542247 2.584 0.21594587158542247 
		3.444 0.21594587158542247 6.8920000000000003 0.21594587158542247 32 0.21594587158542247;
createNode animCurveTL -n "animCurveTL197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.1380615615975922 6.8920000000000003 
		0.1380615615975922 7.7720000000000002 0.25549898215802858 9.4760000000000009 
		0.14157091923358886 32 0.14157091923358886;
	setAttr -s 5 ".kit[1:4]"  3 9 9 9;
	setAttr -s 5 ".kot[1:4]"  3 3 3 9;
createNode animCurveTL -n "animCurveTL198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0.00078430246903575811 2.584 
		0.00078430246903575811 3.444 -0.01459437182614064 6.8920000000000003 -0.15100014335913647 
		9.4760000000000009 -0.38988527082944557 32 -0.38988527082944557;
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
createNode animCurveTA -n "animCurveTA546";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2.584 -16.410189888024636 6.8920000000000003 
		-10.966565688750805 9.4760000000000009 0 32 0;
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
createNode animCurveTA -n "animCurveTA547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2.584 0 3.444 0 6.8920000000000003 
		0 32 0;
createNode animCurveTA -n "animCurveTA548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2.584 0 3.444 0 6.8920000000000003 
		0 32 0;
createNode animCurveTA -n "animCurveTA549";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA550";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA552";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA553";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12.800000000000001 0;
createNode animCurveTA -n "animCurveTA556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12.800000000000001 0;
createNode animCurveTA -n "animCurveTA557";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12.800000000000001 0;
createNode animCurveTA -n "animCurveTA558";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12.800000000000001 0;
createNode animCurveTA -n "animCurveTA559";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12.800000000000001 0;
createNode animCurveTA -n "animCurveTA560";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  12.800000000000001 0;
createNode animCurveTL -n "animCurveTL199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 48 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 48 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 48 1;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 48 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 48 0;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 48 1;
	setAttr ".pst" 4;
createNode animCurveTL -n "animCurveTL205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.076472881617957691 3.448 -0.076472881617957691 
		12 -0.076472881617957691 32 -0.076472881617957691;
createNode animCurveTL -n "animCurveTL206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.964 3.444 0.88054666986201913 
		6.8920000000000003 0.86177959284286387 12 0.86301698252301129 32 0.86301698252301129;
createNode animCurveTL -n "animCurveTL207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.444 -0.28259632974754112 
		6.8920000000000003 -0.50857405484363993 12 -0.49367442468817729 32 -0.49367442468817729;
createNode animCurveTA -n "animCurveTA561";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.62843630316474508 3.444 -8.4126535936750937 
		6.8920000000000003 -12.178967113067317 12 7.2834597478621577 32 7.2834597478621577;
createNode animCurveTA -n "animCurveTA562";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -5.8284402688137158 3.448 -5.8284402688137158 
		32 -5.8284402688137158;
createNode animCurveTA -n "animCurveTA563";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.2956360193097458 3.448 -1.2956360193097458 
		32 -1.2956360193097458;
createNode animCurveTA -n "animCurveTA564";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA565";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA566";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA567";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA568";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA569";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA570";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA571";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA572";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA573";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA574";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA575";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA576";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA577";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA578";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA579";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA580";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA581";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA585";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA586";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA587";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA588";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA589";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.43524234076486068 3.448 -0.44701367954964683 
		12 -0.57783876537523293 16.8 -0.43524234076486068 32 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.82665738350180629 3.448 -0.56743288928205771 
		12 -0.57572157198466489 16.8 -0.73726103964469891 32 -0.82665738350180629;
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
createNode animCurveTL -n "animCurveTL210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.27773886459742925 3.448 0.34898861977918955 
		12 0.15445180119440532 16.8 0.23468136913370899 32 0.27773886459742925;
	setAttr -s 5 ".kit[3:4]"  1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[3:4]"  0.018144933506846428 0.14552433788776398;
	setAttr -s 5 ".kiy[3:4]"  0.99983537197113037 0.98935467004776001;
	setAttr -s 5 ".kox[3:4]"  0.018144756555557251 0.14552433788776398;
	setAttr -s 5 ".koy[3:4]"  0.99983537197113037 0.98935467004776001;
createNode animCurveTA -n "animCurveTA590";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -1.8121934161072303e-015 3.448 
		-60.536976871786202 16.8 0 32 0;
createNode animCurveTA -n "animCurveTA591";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 28.652637602052774 3.448 29.724824519534344 
		16.8 28.652637602052774 32 28.652637602052774;
createNode animCurveTA -n "animCurveTA592";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 64.676908227303443 3.448 -7.1193552838128502 
		16.8 64.676908227303443 32 64.676908227303443;
createNode animCurveTL -n "animCurveTL211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.5198069948790518 3.448 0.56529312134950516 
		12 0.62144262972948172 16.8 0.54669016534302783 32 0.5198069948790518;
	setAttr -s 5 ".kit[3:4]"  1 9;
	setAttr -s 5 ".kot[3:4]"  1 9;
	setAttr -s 5 ".kix[3:4]"  0.052824370563030243 0.22930973768234253;
	setAttr -s 5 ".kiy[3:4]"  -0.99860382080078125 -0.97335350513458252;
	setAttr -s 5 ".kox[3:4]"  0.052824918180704117 0.22930973768234253;
	setAttr -s 5 ".koy[3:4]"  -0.99860376119613647 -0.97335350513458252;
createNode animCurveTL -n "animCurveTL212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.72394202659893114 3.448 -0.49894380499705565 
		12 -0.60706275316074332 16.8 -0.6460098656941311 32 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.36439499068905612 3.448 0.41986406752154964 
		12 0.37322296144111961 16.8 0.36056714652633171 32 0.36439499068905612;
createNode animCurveTA -n "animCurveTA593";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 7.7976222737965299 3.448 -65.120813859308413 
		16.8 7.7976222737965299 32 7.7976222737965299;
createNode animCurveTA -n "animCurveTA594";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -30.409274105849079 3.448 -29.727954864489181 
		16.8 -30.409274105849079 32 -30.409274105849079;
createNode animCurveTA -n "animCurveTA595";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -64.859940280210878 3.448 18.804823449160185 
		16.8 -64.859940280210878 32 -64.859940280210878;
createNode animCurveTL -n "animCurveTL214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.98071836797454492 3.448 -0.98071836797454492 
		16.8 -0.98071836797454492 24.800000000000001 -0.98071836797454492 32 -0.98071836797454492;
createNode animCurveTL -n "animCurveTL215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.3548645271011504 3.448 1.3548645271011504 
		16.8 1.3548645271011504 24.800000000000001 1.3548645271011504 32 1.3548645271011504;
createNode animCurveTL -n "animCurveTL216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.097994651149805143 3.448 -0.097994651149805143 
		16.8 -0.097994651149805143 24.800000000000001 -0.097994651149805143 32 -0.097994651149805143;
createNode animCurveTA -n "animCurveTA596";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 5.4739599453216474 3.448 5.4739599453216474 
		16.8 5.4739599453216474 24.800000000000001 5.4739599453216474 32 5.4739599453216474;
createNode animCurveTA -n "animCurveTA597";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.5874521608419823 3.448 8.5874521608419823 
		16.8 8.5874521608419823 24.800000000000001 8.5874521608419823 32 8.5874521608419823;
createNode animCurveTA -n "animCurveTA598";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 74.754744621954103 3.448 74.754744621954103 
		16.8 74.754744621954103 24.800000000000001 74.754744621954103 32 74.754744621954103;
createNode animCurveTL -n "animCurveTL217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.94325532077352603 3.448 0.94325532077352603 
		16.8 0.94325532077352603 24.800000000000001 0.94325532077352603 32 0.94325532077352603;
createNode animCurveTL -n "animCurveTL218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1.3708366322640035 3.448 1.3708366322640035 
		16.8 1.3708366322640035 24.800000000000001 1.3708366322640035 32 1.3708366322640035;
createNode animCurveTL -n "animCurveTL219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.14314299916678522 3.448 0.14314299916678522 
		16.8 0.14314299916678522 24.800000000000001 0.14314299916678522 32 0.14314299916678522;
createNode animCurveTA -n "animCurveTA599";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.226511010665405 3.448 16.226511010665405 
		16.8 16.226511010665405 24.800000000000001 16.226511010665405 32 16.226511010665405;
createNode animCurveTA -n "animCurveTA600";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -8.513966085499284 3.448 -8.513966085499284 
		16.8 -8.513966085499284 24.800000000000001 -8.513966085499284 32 -8.513966085499284;
createNode animCurveTA -n "animCurveTA601";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -68.213989601412422 3.448 -68.213989601412422 
		16.8 -68.213989601412422 24.800000000000001 -68.213989601412422 32 -68.213989601412422;
createNode animCurveTL -n "animCurveTL220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.448 0.64136746398265343 16.8 
		0 24.800000000000001 0 32 0;
createNode animCurveTL -n "animCurveTL221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.448 -0.050447356913502342 
		16.8 0 24.800000000000001 0 32 0;
createNode animCurveTL -n "animCurveTL222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1 3.448 -0.19873074307707472 
		16.8 -1 24.800000000000001 -1 32 -1;
createNode animCurveTL -n "animCurveTL223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.10167917362943303 3.448 -0.37031673079730271 
		16.8 -0.10167917362943303 24.800000000000001 -0.10167917362943303 32 -0.10167917362943303;
createNode animCurveTL -n "animCurveTL224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.40762644910266188 3.448 -0.1738764427928764 
		16.8 -0.40762644910266188 24.800000000000001 -0.40762644910266188 32 -0.40762644910266188;
createNode animCurveTL -n "animCurveTL225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.93129112588482243 3.448 -0.41108872000319219 
		16.8 -0.93129112588482243 24.800000000000001 -0.93129112588482243 32 -0.93129112588482243;
createNode animCurveTA -n "animCurveTA602";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 12.253734489678925 12.800000000000001 
		2.5080130201733613 28.800000000000001 8.9711994505746979 48 12.253734489678925;
	setAttr -s 4 ".kit[0:3]"  3 9 1 9;
	setAttr -s 4 ".kot[0:3]"  3 9 1 9;
	setAttr -s 4 ".kix[2:3]"  0.98217999935150146 0.99744552373886108;
	setAttr -s 4 ".kiy[2:3]"  0.18794278800487518 0.071430869400501251;
	setAttr -s 4 ".kox[2:3]"  0.98217999935150146 0.99744552373886108;
	setAttr -s 4 ".koy[2:3]"  0.18794280290603638 0.071430869400501251;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA603";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -65.746751280844961 12.800000000000001 
		-66.23189068800383 28.800000000000001 -65.911934826160262 48 -65.746751280844961;
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
createNode animCurveTA -n "animCurveTA604";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.871449260799477e-015 12.800000000000001 
		10.66049297399303 28.800000000000001 2.7123737418397913 48 3.871449260799477e-015;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA605";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.061808866237337522 12.800000000000001 
		-1.8696893211112606 32 -9.4806490727460329 48 -0.061808866237337522;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA606";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -59.058178941076754 12.800000000000001 
		-58.016233844005519 32 -57.82222388892724 48 -59.058178941076754;
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
createNode animCurveTA -n "animCurveTA607";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 16.579147429757843 12.800000000000001 
		19.186045316761614 32 26.120893869188869 48 16.579147429757843;
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
createNode animCurveTA -n "animCurveTA608";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.5572674112203622 12.800000000000001 
		11.258794193049559 28.800000000000001 20.489010807363705 48 8.5572674112203622;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA609";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 15.711328223519057 8.616 15.711328223519057 
		16.8 15.711328223519057 24.800000000000001 15.711328223519057 32 15.711328223519057 
		40 15.711328223519057 48 15.711328223519057;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA610";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 8.616 0 16.8 0 24.800000000000001 
		0 32 0 40 0 48 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA611";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 8.616 0 16.8 0 24.800000000000001 
		0 32 0 40 0 48 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA612";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 8.616 0 16.8 0 24.800000000000001 
		0 32 0 40 0 48 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 9;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA613";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12.800000000000001 15.821664458316235 
		32 14.533232671953092 48 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA614";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12.800000000000001 0 32 -5.5539031469783557 
		48 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA615";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 12.800000000000001 0 32 -1.4372191713728382 
		48 0;
	setAttr -s 4 ".kit[0:3]"  3 9 9 9;
	setAttr -s 4 ".kot[0:3]"  3 9 9 9;
	setAttr ".pst" 3;
createNode animCurveTA -n "animCurveTA616";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.423754966968488 3.448 10.423754966968488 
		16.8 10.423754966968488 24.800000000000001 10.423754966968488 32 10.423754966968488;
createNode animCurveTA -n "animCurveTA617";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.722848255843903 3.448 27.722848255843903 
		16.8 27.722848255843903 24.800000000000001 27.722848255843903 32 27.722848255843903;
createNode animCurveTA -n "animCurveTA618";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 21.576484776388227 3.448 21.576484776388227 
		16.8 21.576484776388227 24.800000000000001 21.576484776388227 32 21.576484776388227;
createNode animCurveTA -n "animCurveTA619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.448 0 16.8 0 24.800000000000001 
		0 32 0;
createNode animCurveTA -n "animCurveTA620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.448 0 16.8 0 24.800000000000001 
		0 32 0;
createNode animCurveTA -n "animCurveTA621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.080064458283051 3.448 27.080064458283051 
		16.8 27.080064458283051 24.800000000000001 27.080064458283051 32 27.080064458283051;
createNode animCurveTA -n "animCurveTA622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.448 0 16.8 0 24.800000000000001 
		0 32 0;
createNode animCurveTA -n "animCurveTA626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.448 0 16.8 0 24.800000000000001 
		0 32 0;
createNode animCurveTA -n "animCurveTA627";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 13.994403295754109 3.448 13.994403295754109 
		16.8 13.994403295754109 24.800000000000001 13.994403295754109 32 13.994403295754109;
createNode animCurveTA -n "animCurveTA628";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.448 0 16.8 0 24.800000000000001 
		0 32 0;
createNode animCurveTA -n "animCurveTA629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.448 0 16.8 0 24.800000000000001 
		0 32 0;
createNode animCurveTA -n "animCurveTA630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 13.994403295754109 3.448 13.994403295754109 
		16.8 13.994403295754109 24.800000000000001 13.994403295754109 32 13.994403295754109;
createNode animCurveTA -n "animCurveTA631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.448 0 16.8 0 24.800000000000001 
		0 32 0;
createNode animCurveTA -n "animCurveTA632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.448 0 16.8 0 24.800000000000001 
		0 32 0;
createNode animCurveTA -n "animCurveTA633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 27.911632519594587 3.448 27.911632519594587 
		16.8 27.911632519594587 24.800000000000001 27.911632519594587 32 27.911632519594587;
createNode animCurveTA -n "animCurveTA634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3.448 0 8.616 -5.7316978087257979 
		16.8 0 24.800000000000001 0 32 0;
createNode animCurveTA -n "animCurveTA635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3.448 0 8.616 1.8148689534808691 
		16.8 0 24.800000000000001 0 32 0;
createNode animCurveTA -n "animCurveTA636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 3.448 35.022444543204145 8.616 
		-9.4634200276258387 16.8 0 24.800000000000001 0 32 0;
createNode animCurveTA -n "animCurveTA637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.65073001024951671 1.724 10.311752003991151 
		3.448 -0.91286175793679913 12 4.8337240487363706 16.8 -0.65073001024951671 
		24.800000000000001 -0.65073001024951671 32 -0.65073001024951671;
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
createNode animCurveTA -n "animCurveTA638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -4.2368721935960929 1.724 -9.4747364002863019 
		3.448 -9.5655943287496257 12 0.78298786580192392 16.8 -4.2368721935960929 
		24.800000000000001 -4.2368721935960929 32 -4.2368721935960929;
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
createNode animCurveTA -n "animCurveTA639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 8.7398866450636881 1.724 16.637995678745185 
		3.448 -5.1815748624221412 12 7.1728203404567221 16.8 8.7398866450636881 24.800000000000001 
		8.7398866450636881 32 8.7398866450636881;
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
createNode animCurveTA -n "animCurveTA640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.448 0 16.8 0 24.800000000000001 
		0 32 0;
createNode animCurveTA -n "animCurveTA641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.448 0 16.8 0 24.800000000000001 
		0 32 0;
createNode animCurveTA -n "animCurveTA642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.448 0 16.8 0 24.800000000000001 
		0 32 0;
createNode animCurveTA -n "animCurveTA643";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 4.8714700432790456 1.724 8.3294723276637583 
		3.448 2.3440531497108834 12 -10.812101526279728 16.8 4.8714700432790456 24.800000000000001 
		4.8714700432790456 32 4.8714700432790456;
createNode animCurveTA -n "animCurveTA644";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 11.783606204137085 1.724 9.7916530910478645 
		3.448 12.523661989898775 16.8 11.783606204137085 24.800000000000001 11.783606204137085 
		32 11.783606204137085;
createNode animCurveTA -n "animCurveTA645";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 7.5423825101935913 1.724 23.179671911165304 
		3.448 -4.4204704416028147 16.8 7.5423825101935913 24.800000000000001 7.5423825101935913 
		32 7.5423825101935913;
createNode animCurveTA -n "animCurveTA646";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -1.8903601258661931 3.448 -1.8903601258661931 
		12 -1.1082822051777708 16.8 -1.8903601258661931 24.800000000000001 -1.8903601258661931 
		32 -1.8903601258661931;
createNode animCurveTA -n "animCurveTA647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.5597289571479034 3.448 2.5597289571479034 
		12 6.1547132708744927 16.8 2.5597289571479034 24.800000000000001 2.5597289571479034 
		32 2.5597289571479034;
createNode animCurveTA -n "animCurveTA648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 2.016811087403604 3.448 2.016811087403604 
		12 5.6507010370253115 16.8 2.016811087403604 24.800000000000001 2.016811087403604 
		32 2.016811087403604;
createNode animCurveTA -n "animCurveTA649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.448 0 16.8 0 24.800000000000001 
		0 32 0;
createNode animCurveTA -n "animCurveTA650";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.448 0 16.8 0 24.800000000000001 
		0 32 0;
createNode animCurveTA -n "animCurveTA651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 33.429092416277157 3.448 33.429092416277157 
		16.8 33.429092416277157 24.800000000000001 33.429092416277157 32 33.429092416277157;
createNode animCurveTA -n "animCurveTA652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 8.2533422302317216 3.448 8.2533422302317216 
		16.8 8.2533422302317216 24.800000000000001 8.2533422302317216 32 8.2533422302317216;
createNode animCurveTA -n "animCurveTA653";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 23.263402056531085 3.448 23.263402056531085 
		16.8 23.263402056531085 24.800000000000001 23.263402056531085 32 23.263402056531085;
createNode animCurveTA -n "animCurveTA654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 20.166277752815617 3.448 20.166277752815617 
		16.8 20.166277752815617 24.800000000000001 20.166277752815617 32 20.166277752815617;
createNode animCurveTA -n "animCurveTA655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.448 0 16.8 0 24.800000000000001 
		0 32 0;
createNode animCurveTA -n "animCurveTA656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 3.448 0 16.8 0 24.800000000000001 
		0 32 0;
createNode animCurveTA -n "animCurveTA657";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 17.254116939558369 3.448 17.254116939558369 
		16.8 17.254116939558369 24.800000000000001 17.254116939558369 32 17.254116939558369;
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
select -ne :time1;
	setAttr ".o" 2;
select -ne :renderPartition;
	setAttr -s 22 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 22 ".s";
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
select -ne :characterPartition;
	setAttr -s 2 ".st";
select -ne :hyperGraphLayout;
	setAttr ".cch" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".img" -type "string" "";
	setAttr ".ims" 1;
select -ne :ikSystem;
connectAttr "opd_run_into_personSource.st" "clipLibrary1.st[0]";
connectAttr "opd_run_into_personSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL185.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL186.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "opd_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "opd_Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr"
		;
connectAttr "animCurveTU41.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU42.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU43.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU44.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU45.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU46.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU47.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU48.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA540.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA541.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA542.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL190.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL191.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL192.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL193.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL194.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL195.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA543.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA544.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA545.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL196.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL197.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL198.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA546.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA547.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA548.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA549.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA550.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA551.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA552.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA553.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA554.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA555.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA556.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA557.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA558.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA559.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA560.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL199.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL200.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL201.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL202.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL203.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL204.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL205.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL206.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL207.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA561.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA562.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA563.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA564.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA565.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA566.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA567.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA568.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA569.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA570.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA571.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA572.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA573.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA574.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA575.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA576.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA577.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA578.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA579.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA580.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA581.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA582.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA583.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA584.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA585.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA586.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA587.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA588.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA589.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL208.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL209.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL210.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA590.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA591.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA592.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL211.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL212.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL213.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA593.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA594.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA595.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL214.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL215.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL216.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA596.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA597.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA598.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL217.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL218.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL219.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA599.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA600.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA601.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL220.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL221.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL222.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL223.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL224.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL225.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA602.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA603.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA604.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA605.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA606.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA607.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA608.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA609.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA610.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA611.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA612.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA613.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA614.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA615.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA616.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA617.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA618.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA619.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA620.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA621.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA622.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA623.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA624.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA625.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA626.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA627.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA628.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA629.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA630.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA631.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA632.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA633.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA634.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA635.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA636.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA637.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA638.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA639.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA640.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA641.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA642.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA643.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA644.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA645.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA646.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA647.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA648.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA649.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA650.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA651.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA652.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA653.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA654.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA655.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA656.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA657.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[3].olnk";
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
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of opd_run_into_person.ma
