//Maya ASCII 4.0 scene
//Name: frk_run_into_person.ma
//Last modified: Wed, Jun 19, 2002 12:11:53 PM
requires maya "4.0";
requires "p3dmayaexp" "17.6";
requires "p3dSimpleShader" "17.1";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "frk_run_into_personSource";
	setAttr ".ihi" 0;
	setAttr ".du" 23;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL534";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "animCurveTL535";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0.018323161922334043 1 0.0093513501899313376 
		2 -0.00013313631589404772 3 -0.0085922728626693819 4 -0.014488034717921943 
		5 -0.017560705942199266 6 -0.018580425050661212 7 -0.017553948992753525 8 
		-0.014488034717921943 9 -0.0058670328993533517 10 0.010012249938997183 11 
		0.038300699338325021 12 0.059911735246948157 13 0.056760149610409157 14 0.044850951948484499 
		15 0.036237829507610821 16 0.034183057961387715 17 0.033959259762785431 18 
		0.035635642327296629 19 0.039281413070413967 20 0.045637976070593424 21 0.054427437748876824 
		22 0.064190059034635691 23 0.073466100857241493;
createNode animCurveTL -n "frk_Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  22 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0.12342151608844391 1 0.1940643462698671 
		2 0.26907939284600541 3 0.33535000415716182 4 0.37975952854363948 5 0.39741123126096123 
		6 0.39576697962403151 7 0.38024802506222555 8 0.35627561900491855 9 0.30143072922261843 
		10 0.22140723946936319 11 0.13763018212696643 12 0.049278641555363843 13 
		-0.042255189660850033 14 -0.1337152039637243 15 -0.20808382552136928 16 -0.2612915383988525 
		17 -0.30346152308278362 18 -0.33886524837359561 19 -0.37177418307172116 20 
		-0.40143075681834989 21 -0.42618906115891853 22 -0.44898805775023093 23 -0.47276670824909106;
createNode animCurveTA -n "frk_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  22 0;
createNode animCurveTU -n "animCurveTU101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU104";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1471";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1472";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1473";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL539";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL540";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL541";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL542";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.133 4 -0.133 8 -0.133 10 -0.1370599083257866 
		12 -0.068219527347208556 15 -0.062482828487859403 19 -0.068219527347208556 
		23 -0.068219527347208556;
createNode animCurveTL -n "animCurveTL543";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.21762893071893644 4 0.17956817989668714 
		8 0.18366718314430672 10 0.19976196737680521 12 0.39869597853667715 15 0.26852730609810244 
		19 0.17936383721078439 23 0.18212521384807093;
	setAttr -s 8 ".kit[5:7]"  1 9 9;
	setAttr -s 8 ".kot[5:7]"  1 9 9;
	setAttr -s 8 ".ktl[5:7]" no yes yes;
	setAttr -s 8 ".kix[5:7]"  0.0071372808888554573 0.030848762020468712 
		0.43481647968292236;
	setAttr -s 8 ".kiy[5:7]"  -0.99997454881668091 -0.99952405691146851 
		0.90051907300949097;
	setAttr -s 8 ".kox[5:7]"  0.008899378590285778 0.030848762020468712 
		0.43481647968292236;
	setAttr -s 8 ".koy[5:7]"  -0.99996042251586914 -0.99952405691146851 
		0.90051907300949097;
createNode animCurveTL -n "animCurveTL544";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.56582555722612071 4 0.65289223678013542 
		8 0.63107972632760256 10 0.65668592026368833 12 0.29128379978667518 15 -0.7551542929502939 
		19 -0.81052829858306386 23 -0.83044703803171149;
	setAttr -s 8 ".kit[5:7]"  1 9 9;
	setAttr -s 8 ".kot[5:7]"  1 9 9;
	setAttr -s 8 ".kix[5:7]"  0.0065546021796762943 0.035395119339227676 
		0.066789165139198303;
	setAttr -s 8 ".kiy[5:7]"  -0.99997854232788086 -0.99937337636947632 
		-0.99776709079742432;
	setAttr -s 8 ".kox[5:7]"  0.0065545565448701382 0.035395119339227676 
		0.066789165139198303;
	setAttr -s 8 ".koy[5:7]"  -0.99997854232788086 -0.99937337636947632 
		-0.99776709079742432;
createNode animCurveTA -n "animCurveTA1474";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -30.072192405388275 4 -0.0069056069846333886 
		8 -0.0069056069846333886 10 -9.9612124259059218 12 20.387156135777527 15 
		27.518001027382638 19 -0.18443853534156204 23 -0.18443853534156204;
createNode animCurveTA -n "animCurveTA1475";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
createNode animCurveTA -n "animCurveTA1476";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
createNode animCurveTL -n "animCurveTL545";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.18579966735506592 4 0.18579966735506592 
		8 0.18579966735506592 10 0.18579966735506592 12 0.18579966735506592 15 0.18579966735506592 
		19 0.18579966735506592 23 0.3260932817938943;
createNode animCurveTL -n "animCurveTL546";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.4788651046679378 4 0.39166318327257371 
		8 0.34102576553491903 10 0.29006017007731688 12 0.17771210313980201 15 0.20834236340456919 
		19 0.39968995884685493 23 0.17571381988434059;
	setAttr -s 8 ".kit[3:7]"  1 9 9 9 9;
	setAttr -s 8 ".kot[3:7]"  1 9 9 9 9;
	setAttr -s 8 ".kix[3:7]"  0.0085249012336134911 0.020391149446368217 
		0.010510978288948536 0.081456437706947327 0.0059529091231524944;
	setAttr -s 8 ".kiy[3:7]"  -0.99996364116668701 -0.99979209899902344 
		0.99994474649429321 -0.99667692184448242 -0.99998229742050171;
	setAttr -s 8 ".kox[3:7]"  0.0085250679403543472 0.020391149446368217 
		0.010510978288948536 0.081456437706947327 0.0059529091231524944;
	setAttr -s 8 ".koy[3:7]"  -0.99996364116668701 -0.99979209899902344 
		0.99994474649429321 -0.99667692184448242 -0.99998229742050171;
createNode animCurveTL -n "animCurveTL547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.45404353022539112 4 0.42087290336686023 
		8 0.65068887617621685 10 0.041397428945883573 12 -0.061809084640863959 15 
		-0.13377082221518408 19 -0.4815053774915839 23 -0.82707253716301221;
	setAttr -s 8 ".kit[3:7]"  1 9 9 9 9;
	setAttr -s 8 ".kot[3:7]"  1 9 9 9 9;
	setAttr -s 8 ".kix[3:7]"  0.003016933798789978 0.0095142312347888947 
		0.0055594895966351032 0.003846300533041358 0.0038583623245358467;
	setAttr -s 8 ".kiy[3:7]"  -0.99999547004699707 -0.99995476007461548 
		-0.99998456239700317 -0.99999260902404785 -0.99999254941940308;
	setAttr -s 8 ".kox[3:7]"  0.0030169100500643253 0.0095142312347888947 
		0.0055594895966351032 0.003846300533041358 0.0038583623245358467;
	setAttr -s 8 ".koy[3:7]"  -0.99999547004699707 -0.99995476007461548 
		-0.99998456239700317 -0.99999260902404785 -0.99999254941940308;
createNode animCurveTA -n "animCurveTA1477";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 99.963052812293768 4 23.133939059660332 
		8 20.796495460467899 10 33.42968784327055 12 -0.25235172207598688 15 -16.619246050102227 
		19 21.253114861035481 23 0.33264551143739812;
createNode animCurveTA -n "animCurveTA1478";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
createNode animCurveTA -n "animCurveTA1479";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
createNode animCurveTA -n "animCurveTA1480";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1481";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1482";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1483";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1484";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1485";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 -0.0044994013588946355 
		10 -0.0047806139448591869 12 -0.0044994013588946355 15 -0.0044759669751249414 
		19 -0.0044994013588946355 23 -0.0044994013588946355;
createNode animCurveTL -n "animCurveTL549";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.24354617521346231 4 0.24354617521346231 
		8 0.24354617521346231 10 0.24354617521346231 12 0.24354617521346231 15 0.24354617521346231 
		19 0.24354617521346231 23 0.24354617521346231;
createNode animCurveTL -n "animCurveTL550";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.73266363114951272 4 0.73266363114951272 
		8 0.73266363114951272 10 0.73266363114951272 12 0.73266363114951272 15 0.73266363114951272 
		19 0.73266363114951272 23 0.73266363114951272;
createNode animCurveTL -n "animCurveTL551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 -0.0044994013588946355 
		10 -0.0047806139448591869 12 -0.0044994013588946355 15 -0.0044759669751249414 
		19 -0.0044994013588946355 23 -0.0044994013588946355;
createNode animCurveTL -n "animCurveTL552";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.72172207365063845 4 0.72172207365063845 
		8 0.72172207365063845 10 0.53331773916206648 12 0.34491340467349363 15 0.32921304239196358 
		19 0.34491340467349363 23 0.34491340467349363;
createNode animCurveTL -n "animCurveTL553";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.39818034372871203 4 0.39818034372871203 
		8 0.39818034372871203 10 0.60263277866457332 12 0.8070852136004335 15 0.82412291609376431 
		19 0.8070852136004335 23 0.8070852136004335;
createNode animCurveTL -n "animCurveTL554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.03056236763751306 4 -0.02416551495156901 
		8 -0.02416551495156901 10 0.016700068733296491 12 0.099930595285889198 15 
		0.060443381578545986 19 0.065519968260263892 23 0.12253878412529016;
createNode animCurveTL -n "animCurveTL555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.95976092787099887 4 0.98316085014489174 
		8 0.989473183601566 10 0.9535086994703158 12 0.98001678429926731 15 0.9882142699201899 
		19 0.95220249019932013 23 0.99142038207111283;
createNode animCurveTL -n "animCurveTL556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.20586259975558652 4 0.63342508102012685 
		8 0.59425477406488159 10 0.36929922242413987 12 0.082194981754568894 15 -0.34707625255729441 
		19 -0.62010581521547092 23 -0.78855767391729037;
createNode animCurveTA -n "animCurveTA1486";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 10.244833886622574 4 7.4270482565119345 
		8 -8.1216836957253697 10 -4.6564729043373587 12 6.2427171502608152 15 8.9047437778449705 
		19 4.9202326513784627 23 0.10755922551738087;
createNode animCurveTA -n "animCurveTA1487";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 17.11704137357674 4 1.3364981738498682 
		8 0.044190796092383987 10 -0.48550573163554445 12 -0.604391353200188 15 -0.31669361512944999 
		19 -0.24201983215816036 23 0.28181333203542547;
createNode animCurveTA -n "animCurveTA1488";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.5759503100798002 4 -3.7415203908742303 
		8 -2.1785388719066909 10 1.391801787055619 12 0.21971984834623945 15 0.76749133995808938 
		19 -1.0886190604591788 23 0.43549314527941207;
createNode animCurveTA -n "animCurveTA1489";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.040709616517141577;
createNode animCurveTA -n "animCurveTA1490";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.8313983219776933;
createNode animCurveTA -n "animCurveTA1491";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.7337164321498379;
createNode animCurveTA -n "animCurveTA1492";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.5673169553733395;
createNode animCurveTA -n "animCurveTA1493";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.938383166068367;
createNode animCurveTA -n "animCurveTA1494";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00040252039393782536;
createNode animCurveTA -n "animCurveTA1495";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.1571952141288733;
createNode animCurveTA -n "animCurveTA1496";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1497";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1498";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.0034456079181433771;
createNode animCurveTA -n "animCurveTA1499";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.040473860579884585;
createNode animCurveTA -n "animCurveTA1500";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.8313984519406281;
createNode animCurveTA -n "animCurveTA1501";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.7337164553688731;
createNode animCurveTA -n "animCurveTA1502";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.5673170049738836;
createNode animCurveTA -n "animCurveTA1503";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.9383298724540099;
createNode animCurveTA -n "animCurveTA1504";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.00017158844849065358;
createNode animCurveTA -n "animCurveTA1505";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.1571951880326767;
createNode animCurveTA -n "animCurveTA1506";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1507";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1508";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.0034456079182833216;
createNode animCurveTA -n "animCurveTA1509";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 -1.0688154100447387 
		19 0 23 0;
createNode animCurveTA -n "animCurveTA1510";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 1.3839409164573595 
		19 0 23 0;
createNode animCurveTA -n "animCurveTA1511";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.0034456079181433771 4 0.0034456079181433771 
		8 0.0034456079181433771 10 0.0034456079181433771 12 0.0034456079181433771 
		15 -23.705958539350203 19 0.0034456079181433771 23 0.0034456079181433771;
createNode animCurveTA -n "animCurveTA1512";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.15553530681976535 4 0.15553530681976535 
		8 0.15553530681976535 10 -1.5706355186491052 12 0.15553530681976535 15 0.25578578262200319 
		19 0.15553530681976535 23 -0.084109660715359913;
createNode animCurveTA -n "animCurveTA1513";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.36354176124207516 4 -0.36354176124207516 
		8 -0.36354176124207516 10 1.7520338761191119 12 -0.36354176124207516 15 -0.15278634554238701 
		19 -0.36354176124207516 23 0.16459650261511499;
createNode animCurveTA -n "animCurveTA1514";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 5.3250602596476986 4 5.3250602596476986 
		8 5.3250602596476986 10 -32.098642723119262 12 5.3250602596476986 15 3.6141774619765399 
		19 5.3250602596476986 23 -2.483849569907115;
createNode animCurveTL -n "animCurveTL557";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.98872819052200589 4 -0.98872819052200589 
		8 -0.99534210588473215 10 -0.99575547555492239 12 -0.99534210588473215 15 
		-0.99530765841133173 19 -0.99534210588473215 23 -0.99534210588473215;
createNode animCurveTL -n "animCurveTL558";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.019519870042852914 4 -0.019519870042852914 
		8 -0.019519870042852914 10 -0.019519870042852914 12 -0.019519870042852914 
		15 -0.019519870042852914 19 -0.019519870042852914 23 -0.019519870042852914;
createNode animCurveTL -n "animCurveTL559";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.020013375596438072 4 -0.020013375596438072 
		8 -0.020013375596438072 10 -0.020013375596438072 12 -0.020013375596438072 
		15 -0.020013375596438072 19 -0.020013375596438072 23 -0.020013375596438072;
createNode animCurveTA -n "animCurveTA1515";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 9.541664044390555e-015 4 0 8 
		0 10 0 12 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1516";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 6.6324864122366681e-015 4 0 8 
		0 10 0 12 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1517";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.4064602393618892e-014 4 0 8 
		0 10 0 12 0 15 0 19 0 23 0;
createNode animCurveTL -n "animCurveTL560";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.98872754407817198 4 0.98872754407817198 
		8 0.98211362871544572 10 0.98170025904525549 12 0.98211362871544572 15 0.98214807618884603 
		19 0.98211362871544572 23 0.98211362871544572;
createNode animCurveTL -n "animCurveTL561";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.019514335421655121 4 -0.019514335421655121 
		8 -0.019514335421655121 10 -0.019514335421655121 12 -0.019514335421655121 
		15 -0.019514335421655121 19 -0.019514335421655121 23 -0.019514335421655121;
createNode animCurveTL -n "animCurveTL562";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.020013361448308328 4 -0.020013361448308328 
		8 -0.020013361448308328 10 -0.020013361448308328 12 -0.020013361448308328 
		15 -0.020013361448308328 19 -0.020013361448308328 23 -0.020013361448308328;
createNode animCurveTA -n "animCurveTA1518";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 9.541664044390555e-015 4 0 8 
		0 10 0 12 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1519";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 6.6324864122366681e-015 4 0 8 
		0 10 0 12 0 15 0 19 0 23 0;
createNode animCurveTA -n "animCurveTA1520";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.4064602393618892e-014 4 0 8 
		0 10 0 12 0 15 0 19 0 23 0;
createNode animCurveTL -n "animCurveTL563";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  4 -1.3848817703086196 8 -1.3914956856713461 
		10 -1.3919090553415361 12 -1.3914956856713461 15 -1.3914612381979456 19 -1.3914956856713461 
		23 -1.3914956856713461;
createNode animCurveTL -n "animCurveTL564";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  4 2.3971606112795563 8 2.3971606112795563 
		10 2.3971606112795563 12 2.3971606112795563 15 2.3971606112795563 19 2.3971606112795563 
		23 2.3971606112795563;
createNode animCurveTL -n "animCurveTL565";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  4 -0.14844372651139698 8 -0.14844372651139698 
		10 -0.14844372651139698 12 -0.14844372651139698 15 -0.14844372651139698 19 
		-0.14844372651139698 23 -0.14844372651139698;
createNode animCurveTA -n "animCurveTA1521";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  4 0 8 0 10 0 12 0 15 0 19 0 23 
		0;
createNode animCurveTA -n "animCurveTA1522";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  4 0 8 0 10 0 12 0 15 0 19 0 23 
		0;
createNode animCurveTA -n "animCurveTA1523";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  4 0 8 0 10 0 12 0 15 0 19 0 23 
		0;
createNode animCurveTL -n "animCurveTL566";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  4 1.3848820121487373 8 1.3848820121487373 
		10 1.3848820121487373 12 1.3848820121487373 15 1.3848820121487373 19 1.3848820121487373 
		23 1.3848820121487373;
createNode animCurveTL -n "animCurveTL567";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  4 2.397161655727015 8 2.397161655727015 
		10 2.397161655727015 12 2.397161655727015 15 2.397161655727015 19 2.397161655727015 
		23 2.397161655727015;
createNode animCurveTL -n "animCurveTL568";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  4 -0.14844368205557412 8 -0.14844368205557412 
		10 -0.14844368205557412 12 -0.14844368205557412 15 -0.14844368205557412 19 
		-0.14844368205557412 23 -0.14844368205557412;
createNode animCurveTA -n "animCurveTA1524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  4 0 8 0 10 0 12 0 15 0 19 0 23 
		0;
createNode animCurveTA -n "animCurveTA1525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  4 0 8 0 10 0 12 0 15 0 19 0 23 
		0;
createNode animCurveTA -n "animCurveTA1526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  4 0 8 0 10 0 12 0 15 0 19 0 23 
		0;
createNode animCurveTL -n "animCurveTL569";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 -0.0066139153627263235 
		10 -0.0070272850329165595 12 -0.0066139153627263235 15 -0.0065794678893258615 
		19 -0.0066139153627263235 23 -0.0066139153627263235;
createNode animCurveTL -n "animCurveTL570";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
createNode animCurveTL -n "animCurveTL571";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1 4 -1 8 -1 10 -1 12 -1 15 -1 
		19 -1 23 -1;
createNode animCurveTL -n "animCurveTL572";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 -0.0066139153627263235 
		10 -0.0070272850329165595 12 -0.0066139153627263235 15 -0.0065794678893258615 
		19 -0.0066139153627263235 23 -0.0066139153627263235;
createNode animCurveTL -n "animCurveTL573";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
createNode animCurveTL -n "animCurveTL574";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1 4 -1 8 -1 10 -1 12 -1 15 -1 
		19 -1 23 -1;
createNode animCurveTA -n "animCurveTA1527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 62.960170940606567 4 -57.264245342963584 
		8 -39.525915601851388 10 -32.337925274638707 12 -22.754148804013028 15 -7.6292157274786092 
		19 12.558817730414805 23 32.836440578526755;
createNode animCurveTA -n "animCurveTA1528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -19.447616965174127 4 -26.889981415962271 
		8 -32.594637710745673 10 -19.378093923379534 12 -23.441608134645872 15 -34.941123705410185 
		19 -50.428564546684591 23 -66.562180006639721;
createNode animCurveTA -n "animCurveTA1529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -69.946882873152816 4 47.629222075089743 
		8 60.872444031608069 10 50.201436609240773 12 37.877250104180305 15 18.873946699701385 
		19 -6.4785970903890009 23 -31.892960856010397;
createNode animCurveTA -n "animCurveTA1530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -56.725330507545323 4 -60.215903318635057 
		8 -46.10666556636734 10 -17.060554182296066 12 -7.3485594452777745 15 1.1727928598204216 
		19 12.36144699660986 23 22.827117636695398;
createNode animCurveTA -n "animCurveTA1531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -22.950753025535782 4 -39.072479849286125 
		8 -33.734154971158212 10 -18.084132648717848 12 -21.117202959562508 15 -31.50984394297986 
		19 -45.534017374927686 23 -60.256829896536928;
createNode animCurveTA -n "animCurveTA1532";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 60.585329838143075 4 88.472973640244831 
		8 92.730341876845287 10 61.141201082691587 12 45.686611373606212 15 27.550718990727038 
		19 3.5140234448939012 23 -19.919332511374147;
createNode animCurveTA -n "animCurveTA1533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 26.470453106824781 4 91.25303407844369 
		8 41.824285719662143 10 8.6648392509778862 12 5.4499711303819334 15 9.9926731810902076 
		19 16.317781087003407 23 23.76264257288523;
createNode animCurveTA -n "animCurveTA1534";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 90.634950435315986 4 55.695631793369259 
		8 43.507857333484758 10 31.833287341184118 12 26.480325808965201 15 20.427932309439846 
		19 12.414688884391866 23 4.6378364807982244;
createNode animCurveTA -n "animCurveTA1535";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 14.849434068729675 4 107.27919686325654 
		8 98.925129174693183 10 98.925129174693183 12 90.782867407184895 15 76.023026955470883 
		19 56.270320427870708 23 36.213139312898406;
createNode animCurveTA -n "animCurveTA1536";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.051608316401883209 4 23.283654770185553 
		8 -0.86093934987586707 10 -0.86093934987586707 12 -0.86093934987586718 15 
		-0.8609393498758674 19 -0.86093934987586762 23 -0.86093934987586807;
createNode animCurveTA -n "animCurveTA1537";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.8225462689462448 4 42.311581493708729 
		8 7.6149077694032314 10 7.6149077694032314 12 7.6149077694032314 15 7.6149077694032323 
		19 7.6149077694032341 23 7.6149077694032359;
createNode animCurveTA -n "animCurveTA1538";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 14.859570486861982 4 97.768182545147312 
		8 101.51591330816498 10 101.51591330816498 12 95.010762118883022 15 83.218584508343554 
		19 67.437422855693711 23 51.413006639041534;
createNode animCurveTA -n "animCurveTA1539";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.052172032759606073 4 31.752629642849875 
		8 0.14728326224038421 10 0.14728326224038421 12 1.2273791677855637 15 3.1853171568500063 
		19 5.805574172343297 23 8.4662205809265938;
createNode animCurveTA -n "animCurveTA1540";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.8225558374727127 4 85.237018780648114 
		8 36.725787704168837 10 36.725787704168837 12 34.599781189121842 15 30.74587431782356 
		19 25.588292287828104 23 20.351209611699755;
createNode animCurveTA -n "animCurveTA1541";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -60.679962459776895 4 -60.679962459776895 
		8 -60.679962459776895 10 -60.679962459776895 12 -60.679962459776895 15 -60.679962459776895 
		19 -60.679962459776895 23 -60.679962459776895;
createNode animCurveTA -n "animCurveTA1542";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 12.355514613247321 4 12.355514613247321 
		8 12.355514613247321 10 12.355514613247321 12 12.355514613247321 15 12.355514613247321 
		19 12.355514613247321 23 12.355514613247321;
createNode animCurveTA -n "animCurveTA1543";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 13.110465504305042 4 13.110465504305042 
		8 13.110465504305042 10 13.110465504305042 12 13.110465504305042 15 13.110465504305042 
		19 13.110465504305042 23 13.110465504305042;
createNode animCurveTA -n "animCurveTA1544";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -20.551139383726671 4 -20.551139383726671 
		8 -20.551139383726671 10 -20.551139383726671 12 -20.551139383726671 15 -20.551139383726671 
		19 -20.551139383726671 23 -20.551139383726671;
createNode animCurveTA -n "animCurveTA1545";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 3.0722483700821352 4 3.0722483700821352 
		8 3.0722483700821352 10 3.0722483700821352 12 3.0722483700821352 15 3.0722483700821352 
		19 3.0722483700821352 23 3.0722483700821352;
createNode animCurveTA -n "animCurveTA1546";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 19.857676546395723 4 19.857676546395723 
		8 19.857676546395723 10 19.857676546395723 12 19.857676546395723 15 19.857676546395723 
		19 19.857676546395723 23 19.857676546395723;
createNode animCurveTA -n "animCurveTA1547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1549";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1550";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1552";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 12.085861696683486;
createNode animCurveTA -n "animCurveTA1553";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 12.085861696683486;
createNode animCurveTA -n "animCurveTA1556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
createNode animCurveTA -n "animCurveTA1557";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
createNode animCurveTA -n "animCurveTA1558";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.43065494947832267 4 -0.43065494947832267 
		8 -0.43065494947832267 10 -0.43065494947832267 12 -0.43065494947832267 15 
		-0.43065494947832267 19 -0.43065494947832267 23 -0.43065494947832267;
createNode animCurveTA -n "animCurveTA1559";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
createNode animCurveTA -n "animCurveTA1560";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
createNode animCurveTA -n "animCurveTA1561";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
createNode animCurveTA -n "animCurveTA1562";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -34.436570627353341 4 13.510934836893354 
		8 13.082304542474905 10 3.1146197215294786 12 0.86005649808378171 15 -1.8400278747094139 
		19 -8.6841333768057591 23 0.3863757728390485;
createNode animCurveTA -n "animCurveTA1563";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 12.578671015845821 4 8.8210100730778933 
		8 8.0117285890322005 10 4.6098243255942961 12 2.8220654946122221 15 3.927072117773946 
		19 5.4794480415574718 23 -0.24242144510456509;
createNode animCurveTA -n "animCurveTA1564";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -3.7943623819848562 4 -12.007280114527378 
		8 -14.623733675352382 10 -15.133294281231235 12 -11.099502080588817 15 -15.979335505236323 
		19 -13.869556789442326 23 -18.903846081185787;
createNode animCurveTA -n "animCurveTA1565";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 13.44722672283352 4 -3.2789136661526759 
		8 4.5204567638544546 10 -8.9014121297710034 12 -7.3025617176738518 15 -7.365229489771921 
		19 -7.3025617176738518 23 -6.9937034203027908;
createNode animCurveTA -n "animCurveTA1566";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -2.3998587564717182 4 -8.6440419109697348 
		8 -2.2674169308032979 10 -1.2767581350361785 12 -5.7007871835424053 15 -5.8313295885312249 
		19 -5.7007871835424053 23 -3.0133657084847818;
createNode animCurveTA -n "animCurveTA1567";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.1510007110886771 4 3.282987321343013 
		8 24.458034815823869 10 17.74094590485986 12 18.307429200920051 15 20.141578990045012 
		19 18.307429200920051 23 14.707308270237847;
createNode animCurveTA -n "animCurveTA1568";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
createNode animCurveTA -n "animCurveTA1569";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 -5.6729228247733179 8 -5.6729228247733179 
		10 -5.6729228247733179 12 -5.6729228247733179 15 -5.6729228247733179 19 -5.6729228247733179 
		23 -5.6729228247733179;
createNode animCurveTA -n "animCurveTA1570";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
createNode animCurveTA -n "animCurveTA1571";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 3.0573637994901306 4 17.913607812790744 
		8 17.507593831938411 10 10.818264725513886 12 1.6408790439912488 15 -1.7960581524756651 
		19 4.5270713688494277 23 -0.31055470058008283;
createNode animCurveTA -n "animCurveTA1572";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.75065117256362812 4 -0.0036290927750949982 
		8 -0.084903324245797801 10 -1.3247758178006825 12 -2.4673788320208341 15 
		-3.2974004624316913 19 0.03024567880500181 23 -1.1431300183645305;
createNode animCurveTA -n "animCurveTA1573";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 3.2883345540401034 4 12.808999698552435 
		8 8.0200330084821232 10 7.7528622893628265 12 8.4328527896194831 15 10.027776679887152 
		19 14.274286783239003 23 10.668172501779155;
createNode animCurveTA -n "animCurveTA1574";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -20.551139383726671 4 -20.551139383726671 
		8 -20.551139383726671 10 -20.551139383726671 12 -20.551139383726671 15 -20.551139383726671 
		19 -20.551139383726671 23 -20.551139383726671;
createNode animCurveTA -n "animCurveTA1575";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 3.0722483700821352 4 3.0722483700821352 
		8 3.0722483700821352 10 3.0722483700821352 12 3.0722483700821352 15 3.0722483700821352 
		19 3.0722483700821352 23 3.0722483700821352;
createNode animCurveTA -n "animCurveTA1576";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 19.857676546395723 4 19.857676546395723 
		8 19.857676546395723 10 19.857676546395723 12 19.857676546395723 15 19.857676546395723 
		19 19.857676546395723 23 19.857676546395723;
createNode animCurveTA -n "animCurveTA1577";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -60.679962459776895 4 -60.679962459776895 
		8 -60.679962459776895 10 -60.679962459776895 12 -60.679962459776895 15 -60.679962459776895 
		19 -60.679962459776895 23 -60.679962459776895;
createNode animCurveTA -n "animCurveTA1578";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 12.355514613247321 4 12.355514613247321 
		8 12.355514613247321 10 12.355514613247321 12 12.355514613247321 15 12.355514613247321 
		19 12.355514613247321 23 12.355514613247321;
createNode animCurveTA -n "animCurveTA1579";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 13.110465504305042 4 13.110465504305042 
		8 13.110465504305042 10 13.110465504305042 12 13.110465504305042 15 13.110465504305042 
		19 13.110465504305042 23 13.110465504305042;
createNode animCurveTA -n "animCurveTA1580";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
createNode animCurveTA -n "animCurveTA1581";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 10 0 12 0 15 0 19 0 
		23 0;
createNode animCurveTA -n "animCurveTA1582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.43065494947832267 4 -0.43065494947832267 
		8 -0.43065494947832267 10 -0.43065494947832267 12 -0.43065494947832267 15 
		-0.43065494947832267 19 -0.43065494947832267 23 -0.43065494947832267;
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
	setAttr ".ihi" 0;
	setAttr -s 20 ".lnk";
select -ne :time1;
	setAttr ".o" 22;
select -ne :renderPartition;
	setAttr -s 20 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 20 ".s";
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
	setAttr -s 108 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".top" 478;
	setAttr ".rght" 638;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
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
connectAttr "frk_run_into_personSource.st" "clipLibrary1.st[0]";
connectAttr "frk_run_into_personSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL534.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL535.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "frk_Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "frk_Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr"
		;
connectAttr "animCurveTU101.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU102.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU103.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU104.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU105.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU106.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU107.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU108.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA1471.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1472.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1473.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL539.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL540.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL541.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL542.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL543.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL544.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1474.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1475.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1476.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL545.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL546.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL547.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1477.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1478.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1479.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1480.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1481.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1482.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1483.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1484.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1485.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL548.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL549.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL550.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL551.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL552.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL553.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL554.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL555.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL556.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA1486.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA1487.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA1488.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA1489.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA1490.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA1491.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1492.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1493.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1494.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1495.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1496.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1497.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1498.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1499.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1500.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1501.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1502.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1503.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1504.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1505.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1506.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1507.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1508.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1509.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1510.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1511.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1512.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1513.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1514.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTL557.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTL558.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTL559.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1515.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1516.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1517.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL560.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL561.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL562.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA1518.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA1519.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1520.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL563.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL564.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL565.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1521.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1522.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1523.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL566.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL567.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL568.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1524.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1525.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1526.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL569.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL570.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL571.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTL572.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTL573.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTL574.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTA1527.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTA1528.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTA1529.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTA1530.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTA1531.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTA1532.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1533.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1534.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1535.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1536.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1537.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1538.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1539.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1540.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1541.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1542.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1543.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1544.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1545.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1546.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1547.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1548.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1549.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1550.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1551.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1552.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1553.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1554.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1555.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1556.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1557.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1558.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1559.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1560.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1561.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1562.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1563.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1564.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1565.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1566.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1567.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1568.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1569.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1570.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1571.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1572.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1573.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1574.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1575.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1576.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1577.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1578.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1579.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1580.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1581.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1582.a" "clipLibrary1.cel[0].cev[161].cevr";
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
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of frk_run_into_person.ma
