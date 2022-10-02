//Maya ASCII 4.0 scene
//Name: apu_victory_small.ma
//Last modified: Thu, Feb 06, 2003 05:41:19 PM
requires maya "4.0";
requires "p3dSimpleShader" "18.8";
requires "p3dmayaexp" "2.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "apu_victory_smallSource";
	setAttr ".ihi" 0;
	setAttr ".st" 1;
	setAttr ".du" 56;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL83";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 13 0 18 0 41 0 57 1;
createNode animCurveTL -n "animCurveTL84";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTL -n "animCurveTL85";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.060080486112749416 13 -0.051425456377630012 
		18 -0.051425456377630012 41 -0.051425456377630012 57 -0.060080486112749416;
createNode animCurveTL -n "animCurveTL86";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTL -n "animCurveTL87";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA227";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_FK_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_FK_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_Rev_IK_Sim_RFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_Rev_IK_Sim_LFoot";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_FK_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_FK_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "apu_Hoop_Root_IK_Body_IK_World_RArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "apu_Hoop_Root_IK_Body_IK_World_LArm";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "animCurveTA228";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA229";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA230";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTL -n "animCurveTL88";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTL -n "animCurveTL89";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTL -n "animCurveTL90";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTL -n "animCurveTL91";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.26454016861507795 13 -0.26454016861507795 
		18 -0.26454016861507795 41 -0.26454016861507795 57 -0.26454016861507795;
createNode animCurveTL -n "animCurveTL92";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.13806192026723146 13 0.13806192026723146 
		18 0.13806192026723146 41 0.13806192026723146 57 0.13806192026723146;
createNode animCurveTL -n "animCurveTL93";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.064904406754016042 13 -0.064904406754016042 
		18 -0.064904406754016042 41 -0.064904406754016042 57 -0.064904406754016042;
createNode animCurveTA -n "animCurveTA231";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA232";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -25.948901905116401 13 -25.948901905116401 
		18 -25.948901905116401 41 -25.948901905116401 57 -25.948901905116401;
createNode animCurveTA -n "animCurveTA233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTL -n "animCurveTL94";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.21594586894108972 13 0.21594587158542247 
		18 0.2375479626987054 41 0.2375479626987054 57 0.21594586894108972;
createNode animCurveTL -n "animCurveTL95";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.13806154605833343 13 0.1380615615975922 
		18 0.26500492095169703 41 0.26500492095169703 57 0.13806154605833343;
createNode animCurveTL -n "animCurveTL96";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.00087067506811235268 13 0.22525676153442006 
		18 0.064882120548340375 41 0.064882120548340375 57 0.00087067506811235268;
createNode animCurveTA -n "animCurveTA234";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -2.9761338117795542e-006 13 0 
		18 24.312641750388028 41 24.312641750388028 57 -2.9761338117795542e-006;
createNode animCurveTA -n "animCurveTA235";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -2.8267061510422723e-007 13 0 
		18 2.3091938135378238 41 2.3091938135378238 57 -2.8267061510422723e-007;
createNode animCurveTA -n "animCurveTA236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -6.1675584338793064e-008 13 0 
		18 0.50384037384830138 41 0.50384037384830138 57 -6.1675584338793064e-008;
createNode animCurveTA -n "animCurveTA237";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA238";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA239";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA240";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA241";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA242";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTL -n "animCurveTL97";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTL -n "animCurveTL98";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTL -n "animCurveTL99";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 13 1 18 1 41 1 57 1;
createNode animCurveTL -n "animCurveTL100";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTL -n "animCurveTL101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTL -n "animCurveTL102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 13 1 18 1 41 1 57 1;
createNode animCurveTL -n "animCurveTL103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.076472881617957691 13 -0.076472881617957691 
		18 -0.076472881617957691 41 -0.076472881617957691 57 -0.076472881617957691;
createNode animCurveTL -n "animCurveTL104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0.9928576307603898 13 0.72305684621248023 
		18 1.0101141872937489 41 1.0101141872937489 50 0.86506329417062344 57 0.9928576307603898;
createNode animCurveTL -n "animCurveTL105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA243";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -0.62793979125686139 13 0.6569029386386751 
		18 -16.098135609758735 41 -16.098135609758735 50 -7.3763009484490674 57 -0.62793979125686139;
createNode animCurveTA -n "animCurveTA244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -5.8284391054417419 13 -5.8253112691330502 
		18 -5.495830156117405 41 -5.495830156117405 50 -6.9198746785626915 57 -5.8284391054417419;
createNode animCurveTA -n "animCurveTA245";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -1.3004902715163831 13 -13.905597070979102 
		18 12.966141061845198 41 12.966141061845198 50 -3.2787562256575908 57 -1.3004902715163831;
createNode animCurveTA -n "animCurveTA246";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA247";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA251";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA252";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA253";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA254";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA265";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA266";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA270";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA271";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTL -n "animCurveTL106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.43524234076486068 13 -0.43524234076486068 
		18 -0.43524234076486068 41 -0.43524234076486068 57 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.82665738350180629 13 -0.82665738350180629 
		18 -0.82665738350180629 41 -0.82665738350180629 57 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.27773886459742925 13 0.27773886459742925 
		18 0.27773886459742925 41 0.27773886459742925 57 0.27773886459742925;
createNode animCurveTA -n "animCurveTA272";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA273";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 28.652637602052774 13 28.652637602052774 
		18 28.652637602052774 41 28.652637602052774 57 28.652637602052774;
createNode animCurveTA -n "animCurveTA274";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 64.676908227303443 13 64.676908227303443 
		18 64.676908227303443 41 64.676908227303443 57 64.676908227303443;
createNode animCurveTL -n "animCurveTL109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.5198069948790518 13 0.5198069948790518 
		18 0.5198069948790518 41 0.5198069948790518 57 0.5198069948790518;
createNode animCurveTL -n "animCurveTL110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.72394202659893114 13 -0.72394202659893114 
		18 -0.72394202659893114 41 -0.72394202659893114 57 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.36439499068905612 13 0.36439499068905612 
		18 0.36439499068905612 41 0.36439499068905612 57 0.36439499068905612;
createNode animCurveTA -n "animCurveTA275";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 7.7976222737965299 13 7.7976222737965299 
		18 7.7976222737965299 41 7.7976222737965299 57 7.7976222737965299;
createNode animCurveTA -n "animCurveTA276";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -30.409274105849079 13 -30.409274105849079 
		18 -30.409274105849079 41 -30.409274105849079 57 -30.409274105849079;
createNode animCurveTA -n "animCurveTA277";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -64.859940280210878 13 -64.859940280210878 
		18 -64.859940280210878 41 -64.859940280210878 57 -64.859940280210878;
createNode animCurveTL -n "animCurveTL112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.8448360084072043 13 -0.8769630823492538 
		18 -1.0656725287699644 41 -1.0656725287699644 57 -0.8448360084072043;
createNode animCurveTL -n "animCurveTL113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1.5118897944381786 13 1.8798999005517478 
		18 1.4949514788901275 41 1.5712823128535092 57 1.5118897944381786;
createNode animCurveTL -n "animCurveTL114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.097994651149805143 13 -0.097994651149805143 
		18 -0.097994651149805143 41 -0.097994651149805143 57 -0.097994651149805143;
createNode animCurveTA -n "animCurveTA278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 5.4746196533203513 13 7.1888551717738469 
		18 7.1888551717738469 41 7.1888551717738469 57 5.4746196533203513;
createNode animCurveTA -n "animCurveTA279";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 8.6070648692847733 13 59.570218872850951 
		18 59.570218872850951 41 59.570218872850951 57 8.6070648692847733;
createNode animCurveTA -n "animCurveTA280";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 74.743392374618693 13 45.244850641116749 
		18 45.244850641116749 41 45.244850641116749 57 74.743392374618693;
createNode animCurveTL -n "animCurveTL115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0.61092333146180455 13 0.84545029577659425 
		18 0.33951812060992537 41 0.33951812060992537 50 0.77771976490453387 57 0.61092333146180455;
createNode animCurveTL -n "animCurveTL116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1.464484967173062 13 1.5777589055182768 
		18 3.4445152030200377 41 3.2742555236873563 50 2.2731126356740954 57 1.464484967173062;
	setAttr -s 6 ".kit[2:5]"  1 9 9 9;
	setAttr -s 6 ".kot[2:5]"  1 9 9 9;
	setAttr -s 6 ".kix[2:5]"  0.03356664627790451 0.0091055156663060188 
		0.0029469537548720837 0.0028855351265519857;
	setAttr -s 6 ".kiy[2:5]"  0.99943649768829346 -0.99995851516723633 
		-0.9999956488609314 -0.99999582767486572;
	setAttr -s 6 ".kox[2:5]"  0.033566679805517197 0.0091055156663060188 
		0.0029469537548720837 0.0028855351265519857;
	setAttr -s 6 ".koy[2:5]"  0.99943649768829346 -0.99995851516723633 
		-0.9999956488609314 -0.99999582767486572;
createNode animCurveTL -n "animCurveTL117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0.14314301546259831 13 0.14314299916678522 
		18 0.010019184826265919 41 0.010019184826265919 50 0.34248099311895031 57 
		0.14314301546259831;
createNode animCurveTA -n "animCurveTA281";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 16.243180224728249 13 59.609417517624799 
		18 222.02859357199461 41 222.02859357199461 50 168.4007677633424 57 16.243180224728249;
	setAttr -s 6 ".kit[2:5]"  1 9 9 9;
	setAttr -s 6 ".kot[2:5]"  1 9 9 9;
	setAttr -s 6 ".kix[2:5]"  0.71559596061706543 0.75165092945098877 
		0.14688269793987274 0.087525762617588043;
	setAttr -s 6 ".kiy[2:5]"  0.69851446151733398 -0.65956109762191772 
		-0.98915392160415649 -0.99616223573684692;
	setAttr -s 6 ".kox[2:5]"  0.71559596061706543 0.75165092945098877 
		0.14688269793987274 0.087525762617588043;
	setAttr -s 6 ".koy[2:5]"  0.69851446151733398 -0.65956109762191772 
		-0.98915392160415649 -0.99616223573684692;
createNode animCurveTA -n "animCurveTA282";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -8.5381330088669269 13 -71.314288944888034 
		18 -5.2822945016939897 41 -5.2822945016939897 50 -60.233160904583791 57 -8.5381330088669269;
createNode animCurveTA -n "animCurveTA283";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -68.235423331619089 13 -123.98480648415372 
		18 -269.70628446528633 41 -269.70628446528633 50 -229.48119154462046 57 -68.235423331619089;
	setAttr -s 6 ".kit[2:5]"  1 9 9 9;
	setAttr -s 6 ".kot[2:5]"  1 9 9 9;
	setAttr -s 6 ".kix[2:5]"  0.80132585763931274 0.83530706167221069 
		0.14995822310447693 0.082627288997173309;
	setAttr -s 6 ".kiy[2:5]"  -0.59822815656661987 0.54978370666503906 
		0.98869234323501587 0.99658054113388062;
	setAttr -s 6 ".kox[2:5]"  0.80132597684860229 0.83530706167221069 
		0.14995822310447693 0.082627288997173309;
	setAttr -s 6 ".koy[2:5]"  -0.59822797775268555 0.54978370666503906 
		0.98869234323501587 0.99658054113388062;
createNode animCurveTL -n "animCurveTL118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0.00023643733305802402 13 0.61456870922167939 
		18 0.47476599710807643 41 0.47476599710807643 50 0.1967760105702607 57 0.00023643733305802402;
createNode animCurveTL -n "animCurveTL119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -0.00021661210283305192 13 -0.56297021124006696 
		18 -0.22426071074105089 41 -0.22426071074105089 50 -0.31113945686224287 57 
		-0.00021661210283305192;
createNode animCurveTL -n "animCurveTL120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -0.99981921243067196 13 -0.52982272642339678 
		18 0.17525728314380928 41 0.17525728314380928 50 -0.40987264314539767 57 
		-0.99981921243067196;
createNode animCurveTL -n "animCurveTL121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.10167917362943303 13 -0.10167917362943303 
		18 -0.10167917362943303 41 -0.10167917362943303 57 -0.10167917362943303;
createNode animCurveTL -n "animCurveTL122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.40762644910266188 13 -0.40762644910266188 
		18 -0.40762644910266188 41 -0.40762644910266188 57 -0.40762644910266188;
createNode animCurveTL -n "animCurveTL123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.93129112588482243 13 -0.93129112588482243 
		18 -0.93129112588482243 41 -0.93129112588482243 57 -0.93129112588482243;
createNode animCurveTA -n "animCurveTA284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 12.253734489678925 13 12.253734489678925 
		18 12.253734489678925 41 12.253734489678925 57 12.253734489678925;
createNode animCurveTA -n "animCurveTA285";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -65.746751280844961 13 -65.746751280844961 
		18 -65.746751280844961 41 -65.746751280844961 57 -65.746751280844961;
createNode animCurveTA -n "animCurveTA286";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.061808866237337522 13 -0.061808866237337522 
		18 -0.061808866237337522 41 -0.061808866237337522 57 -0.061808866237337522;
createNode animCurveTA -n "animCurveTA288";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -59.058178941076754 13 -59.058178941076754 
		18 -59.058178941076754 41 -59.058178941076754 57 -59.058178941076754;
createNode animCurveTA -n "animCurveTA289";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 16.579147429757843 13 16.579147429757843 
		18 16.579147429757843 41 16.579147429757843 57 16.579147429757843;
createNode animCurveTA -n "animCurveTA290";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 8.5572674112203622 13 8.5572674112203622 
		18 8.5572674112203622 41 8.5572674112203622 57 8.5572674112203622;
createNode animCurveTA -n "animCurveTA291";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 15.711328223519057 13 15.711328223519057 
		18 15.711328223519057 41 15.711328223519057 57 15.711328223519057;
createNode animCurveTA -n "animCurveTA292";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA293";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA294";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA295";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 10.423754966968488 13 10.423754966968488 
		18 9.7385619032680797 41 9.7385619032680797 57 10.423754966968488;
createNode animCurveTA -n "animCurveTA299";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 27.722848255843903 13 27.722848255843903 
		18 18.768795761653653 41 18.768795761653653 57 27.722848255843903;
createNode animCurveTA -n "animCurveTA300";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 21.576484776388227 13 21.576484776388227 
		18 19.845806801605669 41 19.845806801605669 57 21.576484776388227;
createNode animCurveTA -n "animCurveTA301";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 10.155892607071188 18 10.155892607071188 
		41 10.155892607071188 57 0;
createNode animCurveTA -n "animCurveTA302";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 -1.542116315083421 18 -1.542116315083421 
		41 -1.542116315083421 57 0;
createNode animCurveTA -n "animCurveTA303";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 27.080064458283051 13 125.68030457400921 
		18 125.80630847202087 41 125.80630847202087 57 27.080064458283051;
createNode animCurveTA -n "animCurveTA304";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA305";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA306";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA307";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA308";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA309";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 13.994403295754109 13 13.994403295754109 
		18 13.994403295754109 41 13.994403295754109 57 13.994403295754109;
createNode animCurveTA -n "animCurveTA310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA311";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA312";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 13.994403295754109 13 13.994403295754109 
		18 13.994403295754109 41 13.994403295754109 57 13.994403295754109;
createNode animCurveTA -n "animCurveTA313";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA314";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA315";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 27.911632519594587 13 79.914398492781288 
		18 27.911632519594587 41 27.911632519594587 57 27.911632519594587;
createNode animCurveTA -n "animCurveTA316";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA317";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA318";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA319";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.65073001024951671 13 6.2608108988589377 
		18 11.929747446645491 41 11.929747446645491 57 -0.65073001024951671;
createNode animCurveTA -n "animCurveTA320";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -4.2368721935960929 13 -10.631715028183736 
		18 21.786033084648125 41 21.786033084648125 57 -4.2368721935960929;
createNode animCurveTA -n "animCurveTA321";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 8.7398866450636881 13 32.950132442058312 
		18 4.5934148220795787 41 4.5934148220795787 57 8.7398866450636881;
createNode animCurveTA -n "animCurveTA322";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 13 9.7995818181928325 18 9.7995818181928325 
		41 9.7995818181928325 50 2.2233903316590293 57 0;
createNode animCurveTA -n "animCurveTA323";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 13 -15.397220298867683 18 -15.397220298867683 
		41 -15.397220298867683 50 -8.8633279572988624 57 0;
createNode animCurveTA -n "animCurveTA324";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -15.452965173287611 13 16.199011064585044 
		18 16.199011064585044 41 16.199011064585044 50 26.589540130664396 57 -15.452965173287611;
createNode animCurveTA -n "animCurveTA325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 4.7717822173865239 13 7.21937716005736 
		18 9.9297642916159852 41 9.9297642916159852 57 4.7717822173865239;
createNode animCurveTA -n "animCurveTA326";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 11.537369899716655 13 10.522232019195865 
		18 13.815689922905371 41 13.815689922905371 57 11.537369899716655;
createNode animCurveTA -n "animCurveTA327";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 7.5984614013215408 13 19.63662817698005 
		18 -30.775779686076422 41 -30.775779686076422 57 7.5984614013215408;
createNode animCurveTA -n "animCurveTA328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -1.8903601258661931 13 -1.8903601258661931 
		18 -1.9282563094862333 41 -1.9282563094862333 57 -1.8903601258661931;
createNode animCurveTA -n "animCurveTA329";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 2.5597289571479034 13 2.5597289571479034 
		18 -11.656658755536244 41 -11.656658755536244 57 2.5597289571479034;
createNode animCurveTA -n "animCurveTA330";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 2.016811087403604 13 2.016811087403604 
		18 2.4910053364100126 41 2.4910053364100126 57 2.016811087403604;
createNode animCurveTA -n "animCurveTA331";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA332";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 0 41 0 57 0;
createNode animCurveTA -n "animCurveTA333";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 33.429092416277157 13 80.911368911231691 
		18 33.429092416277157 41 33.429092416277157 57 33.429092416277157;
createNode animCurveTA -n "animCurveTA334";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 8.2533422302317216 13 8.2533422302317216 
		18 8.2533422302317216 41 8.2533422302317216 57 8.2533422302317216;
createNode animCurveTA -n "animCurveTA335";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 23.263402056531085 13 23.263402056531085 
		18 23.263402056531085 41 23.263402056531085 57 23.263402056531085;
createNode animCurveTA -n "animCurveTA336";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 20.166277752815617 13 20.166277752815617 
		18 20.166277752815617 41 20.166277752815617 57 20.166277752815617;
createNode animCurveTA -n "animCurveTA337";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 -3.9148121202681994 
		41 -3.9148121202681994 57 0;
createNode animCurveTA -n "animCurveTA338";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 13 0 18 -8.2143243986713514 
		41 -8.2143243986713514 57 0;
createNode animCurveTA -n "animCurveTA339";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 17.254116939558369 13 22.127308266209116 
		18 42.8469396712538 41 42.8469396712538 57 17.254116939558369;
createNode clipLibrary -n "clipLibrary2";
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
	setAttr ".o" 1;
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
connectAttr "apu_victory_smallSource.st" "clipLibrary2.st[0]";
connectAttr "apu_victory_smallSource.du" "clipLibrary2.du[0]";
connectAttr "animCurveTL83.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL84.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL85.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL86.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL87.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA227.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "apu_Hoop_Root_IK_FK_RFoot.a" "clipLibrary2.cel[0].cev[6].cevr"
		;
connectAttr "apu_Hoop_Root_IK_FK_LFoot.a" "clipLibrary2.cel[0].cev[7].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Rev_IK_Sim_RFoot.a" "clipLibrary2.cel[0].cev[8].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Rev_IK_Sim_LFoot.a" "clipLibrary2.cel[0].cev[9].cevr"
		;
connectAttr "apu_Hoop_Root_IK_FK_RArm.a" "clipLibrary2.cel[0].cev[10].cevr"
		;
connectAttr "apu_Hoop_Root_IK_FK_LArm.a" "clipLibrary2.cel[0].cev[11].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Body_IK_World_RArm.a" "clipLibrary2.cel[0].cev[12].cevr"
		;
connectAttr "apu_Hoop_Root_IK_Body_IK_World_LArm.a" "clipLibrary2.cel[0].cev[13].cevr"
		;
connectAttr "animCurveTA228.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA229.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA230.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL88.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL89.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL90.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL91.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL92.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL93.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA231.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA232.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA233.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL94.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL95.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL96.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA234.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA235.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA236.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA237.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA238.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA239.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA240.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA241.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA242.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTL97.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTL98.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTL99.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTL100.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTL101.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTL102.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL103.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL104.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL105.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTA243.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTA244.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTA245.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTA246.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTA247.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTA248.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA249.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA250.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA251.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA252.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA253.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA254.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA255.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA256.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA257.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA258.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA259.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA260.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA261.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA262.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA263.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA264.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA265.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA266.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA267.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA268.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA269.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA270.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA271.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTL106.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTL107.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTL108.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA272.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA273.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA274.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL109.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL110.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL111.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA275.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA276.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA277.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL112.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL113.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL114.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA278.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA279.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA280.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL115.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL116.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL117.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA281.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA282.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA283.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL118.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL119.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL120.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTL121.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTL122.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTL123.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTA284.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTA285.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTA286.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTA287.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTA288.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTA289.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA290.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA291.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA292.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA293.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA294.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA295.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA296.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA297.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA298.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA299.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA300.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA301.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA302.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA303.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA304.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA305.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA306.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA307.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA308.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA309.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA310.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA311.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA312.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA313.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA314.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA315.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA316.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA317.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA318.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA319.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA320.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA321.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA322.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA323.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA324.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA325.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA326.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA327.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA328.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA329.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA330.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA331.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA332.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA333.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA334.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA335.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA336.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA337.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA338.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA339.a" "clipLibrary2.cel[0].cev[161].cevr";
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
// End of apu_victory_small.ma
