//Maya ASCII 4.0 scene
//Name: apu-m_get_out_of_car_close_door_high.ma
//Last modified: Tue, Jul 23, 2002 12:38:30 PM
requires maya "4.0";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dSimpleShader" "17.1";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "apu_get_out_of_car_close_door_high";
	setAttr ".ihi" 0;
	setAttr ".st" 48;
	setAttr ".du" 11;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 1 59 1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  48 0.27150045355762159 49 0.2871080275607763 
		50 0.31067388030899556 51 0.33667395295463237 52 0.35958418665003927 53 0.38610283347068736 
		54 0.41040194867228585 55 0.40816817817754553 56 0.37150435551544747 57 0.31618459602110333 
		58 0.25340246832641955 59 0.19435154106330249;
	setAttr -s 12 ".kit[11]"  1;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 12 ".kix[11]"  0.0056447647511959076;
	setAttr -s 12 ".kiy[11]"  -0.99998408555984497;
	setAttr -s 12 ".kox[0:11]"  0.032350298017263412 0.017015876248478889 
		0.013448882848024368 0.01362912543118 0.013486165553331375 0.01311764307320118 
		0.030199509114027023 0.017136504873633385 0.0072474800981581211 0.0056447535753250122 
		0.0054718866012990475 0.0056447642855346203;
	setAttr -s 12 ".koy[0:11]"  0.99947661161422729 0.99985522031784058 
		0.99990957975387573 0.99990713596343994 0.99990904331207275 0.99991393089294434 
		0.99954390525817871 -0.99985313415527344 -0.99997371435165405 -0.99998408555984497 
		-0.99998503923416138 -0.99998408555984497;
createNode animCurveTL -n "animCurveTL45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
createNode animCurveTL -n "animCurveTL46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  48 0.35557591893442775 49 0.31250654633623337 
		50 0.24442539943839467 51 0.16776085550547179 52 0.098941291802024905 53 
		0.036258825435699089 54 -0.022212350117763294 55 -0.060370743041655982 56 
		-0.073007884432243084 57 -0.071362602576005268 58 -0.064004351441560803 59 
		-0.059502584997528009;
	setAttr -s 12 ".kit[11]"  1;
	setAttr -s 12 ".kot[0:11]"  1 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 12 ".kix[11]"  0.07384297251701355;
	setAttr -s 12 ".kiy[11]"  0.99726986885070801;
	setAttr -s 12 ".kox[0:11]"  0.012227503582835197 0.0059977644123136997 
		0.0046057300642132759 0.0045823538675904274 0.0050695650279521942 0.0055025713518261909 
		0.0068990355357527733 0.01312338188290596 0.060539700090885162 0.073842853307723999 
		0.056122679263353348 0.07384297251701355;
	setAttr -s 12 ".koy[0:11]"  -0.99992525577545166 -0.99998199939727783 
		-0.99998939037322998 -0.99998950958251953 -0.99998712539672852 -0.99998486042022705 
		-0.99997621774673462 -0.99991387128829956 -0.9981657862663269 0.99726986885070801 
		0.99842387437820435 0.99726986885070801;
createNode animCurveTA -n "animCurveTA114";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  48 90 49 81.818181818181827 50 
		73.636363636363626 51 65.454545454545453 52 57.272727272727273 53 49.090909090909093 
		54 40.909090909090914 55 32.727272727272727 56 24.545454545454543 57 16.363636363636353 
		58 8.1818181818181923 59 0;
	setAttr -s 12 ".kit[11]"  1;
	setAttr -s 12 ".kot[0:11]"  1 2 2 2 2 2 2 
		2 2 2 2 2;
	setAttr -s 12 ".kix[11]"  0.22731693089008331;
	setAttr -s 12 ".kiy[11]"  -0.97382080554962158;
	setAttr -s 12 ".kox[0:11]"  0.22731608152389526 0.22731630504131317 
		0.2273164838552475 0.22731670737266541 0.22731612622737885 0.22731634974479675 
		0.22731654345989227 0.22731596231460571 0.22731617093086243 0.22731636464595795 
		0.22731658816337585 1;
	setAttr -s 12 ".koy[0:11]"  -0.97382104396820068 -0.97382098436355591 
		-0.97382092475891113 -0.97382086515426636 -0.97382104396820068 -0.97382098436355591 
		-0.97382092475891113 -0.97382104396820068 -0.97382098436355591 -0.97382098436355591 
		-0.97382092475891113 0;
createNode animCurveTU -n "animCurveTU9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU10";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU13";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU15";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 1 59 1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU16";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 1 59 1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL49";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL50";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0.2901947294176091 52 0.2901947294176091 
		55 0.34796257322039142 59 0.029951730632406914;
	setAttr -s 4 ".kit[2:3]"  9 1;
	setAttr -s 4 ".kot[0:3]"  1 3 9 9;
	setAttr -s 4 ".kix[3]"  0.0041926940903067589;
	setAttr -s 4 ".kiy[3]"  -0.99999123811721802;
	setAttr -s 4 ".kox[0:3]"  1 1 0.008965618908405304 0.0041926940903067589;
	setAttr -s 4 ".koy[0:3]"  0 0 -0.99995982646942139 -0.99999123811721802;
createNode animCurveTL -n "animCurveTL51";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0.1318716056036692 52 0.1318716056036692 
		55 0.33756854133875186 59 0.13187160560366942;
	setAttr -s 4 ".kit[2:3]"  9 1;
	setAttr -s 4 ".kot[0:3]"  1 3 9 9;
	setAttr -s 4 ".kix[3]"  0.0064818942919373512;
	setAttr -s 4 ".kiy[3]"  -0.99997901916503906;
	setAttr -s 4 ".kox[0:3]"  1 1 1 0.0064818942919373512;
	setAttr -s 4 ".koy[0:3]"  0 0 0 -0.99997901916503906;
createNode animCurveTL -n "animCurveTL52";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0.70868406076753432 52 0.70868406076753432 
		55 -0.097330881707521008 59 -0.03570531743611207;
	setAttr -s 4 ".kit[2:3]"  9 1;
	setAttr -s 4 ".kot[0:3]"  1 3 9 9;
	setAttr -s 4 ".kix[3]"  0.021630987524986267;
	setAttr -s 4 ".kiy[3]"  0.99976605176925659;
	setAttr -s 4 ".kox[0:3]"  1 1 0.0031345449388027191 0.021630987524986267;
	setAttr -s 4 ".koy[0:3]"  0 0 -0.99999511241912842 0.99976605176925659;
createNode animCurveTA -n "animCurveTA118";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -5.9966610423274451 52 -5.9966610423274451 
		55 36.313180445840914 59 -1.0508819380414238;
	setAttr -s 4 ".kit[2:3]"  9 1;
	setAttr -s 4 ".kot[0:3]"  1 3 9 9;
	setAttr -s 4 ".kix[3]"  0.20031547546386719;
	setAttr -s 4 ".kiy[3]"  -0.97973144054412842;
	setAttr -s 4 ".kox[0:3]"  1 1 0.93787908554077148 0.20031547546386719;
	setAttr -s 4 ".koy[0:3]"  0 0 0.34696218371391296 -0.97973144054412842;
createNode animCurveTA -n "animCurveTA119";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 84.943228700889364 52 84.943228700889364 
		55 3.3096630339629787 59 9.7123500601887276;
	setAttr -s 4 ".kit[2:3]"  9 1;
	setAttr -s 4 ".kot[0:3]"  1 3 9 9;
	setAttr -s 4 ".kix[3]"  0.7664179801940918;
	setAttr -s 4 ".kiy[3]"  0.64234215021133423;
	setAttr -s 4 ".kox[0:3]"  1 1 0.17496529221534729 0.7664179801940918;
	setAttr -s 4 ".koy[0:3]"  0 0 -0.98457461595535278 0.64234215021133423;
createNode animCurveTA -n "animCurveTA120";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -3.7070536510169654 52 -3.7070536510169654 
		55 -22.885487370143434 59 -0.87300446588763647;
	setAttr -s 4 ".kit[2:3]"  9 1;
	setAttr -s 4 ".kot[0:3]"  1 3 9 9;
	setAttr -s 4 ".kix[3]"  0.32786679267883301;
	setAttr -s 4 ".kiy[3]"  0.94472396373748779;
	setAttr -s 4 ".kox[0:3]"  1 1 0.97826087474822998 0.32786679267883301;
	setAttr -s 4 ".koy[0:3]"  0 0 0.20737800002098083 0.94472396373748779;
createNode animCurveTL -n "animCurveTL53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0.38160899853714214 52 0.60797703570078998 
		55 0.60797703570078998 59 0.60797703570078998;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  0.013251588679850101 0.010307149961590767 
		1 1;
	setAttr -s 4 ".koy[0:3]"  0.99991220235824585 0.99994689226150513 
		0 0;
createNode animCurveTL -n "animCurveTL54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0.13976781982195804 52 0.13976781982195804 
		55 0.13976781982195804 59 0.13976781982195804;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0.27151190441056711 52 -0.082395661542945545 
		55 -0.082395661542945545 59 -0.082395661542945545;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  0.0084764845669269562 0.0065929153934121132 
		1 1;
	setAttr -s 4 ".koy[0:3]"  -0.99996399879455566 -0.99997824430465698 
		0 0;
createNode animCurveTA -n "animCurveTA121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -183.29942550268851 52 -179.67268202682999 
		55 -179.67268202682999 59 -179.67268202682999;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  0.97845715284347534 0.96511757373809814 
		1 1;
	setAttr -s 4 ".koy[0:3]"  0.206449955701828 0.26181688904762268 
		0 0;
createNode animCurveTA -n "animCurveTA122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 84.489122478619393 52 165.35662235713508 
		55 165.35662235713508 59 165.35662235713508;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  0.20790956914424896 0.16310612857341766 
		1 1;
	setAttr -s 4 ".koy[0:3]"  0.97814804315567017 0.98660850524902344 
		0 0;
createNode animCurveTA -n "animCurveTA123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -183.38151517733337 52 -180.01455875697326 
		55 -180.01455875697326 59 -180.01455875697326;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  0.98135018348693848 0.96971940994262695 
		1 1;
	setAttr -s 4 ".koy[0:3]"  0.19222843647003174 0.24422165751457214 
		0 0;
createNode animCurveTA -n "animCurveTA124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA129";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -0.0053690979468382664 52 -0.0053690979468382664 
		55 -0.0053690979468382664 59 -0.0053690979468382664;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -0.013735643958485311 52 -0.013735643958485311 
		55 -0.013735643958485311 59 -0.013735643958485311;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0.91615227273699273 52 0.91615227273699273 
		55 0.91615227273699273 59 0.91615227273699273;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0.15875667727055057 52 0.15875667727055057 
		55 0.15875667727055057 59 0.15875667727055057;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -0.015697346047740868 52 -0.015697346047740868 
		55 -0.015697346047740868 59 -0.015697346047740868;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0.9451720022857153 52 0.9451720022857153 
		55 0.9451720022857153 59 0.9451720022857153;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL62";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0.3839529345553625 52 0.50851997436786622 
		55 0.57722691711866303 59 0.27484979692962003;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.0044094636105000973;
	setAttr -s 4 ".kiy[3]"  -0.99999028444290161;
	setAttr -s 4 ".kox[0:3]"  0.024076435714960098 0.012071791104972363 
		0.0099850865080952644 0.0044094636105000973;
	setAttr -s 4 ".koy[0:3]"  0.99971014261245728 0.9999271035194397 
		-0.99995017051696777 -0.99999028444290161;
createNode animCurveTL -n "animCurveTL63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0.99423544150667853 52 0.85301065802152598 
		55 0.94393622542326694 59 0.98688046264597928;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.031033074483275414;
	setAttr -s 4 ".kiy[3]"  0.99951827526092529;
	setAttr -s 4 ".kox[0:3]"  0.013766095973551273 0.046339228749275208 
		0.017427222803235054 0.031033074483275414;
	setAttr -s 4 ".koy[0:3]"  0.9999052882194519 -0.99892574548721313 
		0.9998481273651123 0.99951833486557007;
createNode animCurveTL -n "animCurveTL64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0.50285152655598819 52 0.13992167909223541 
		55 -0.085375636203908076 59 -0.084147896712747222;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.73563611507415771;
	setAttr -s 4 ".kiy[3]"  0.67737692594528198;
	setAttr -s 4 ".kox[0:3]"  0.0093950089067220688 0.003966690506786108 
		0.010412868112325668 0.73563611507415771;
	setAttr -s 4 ".koy[0:3]"  -0.99995595216751099 -0.99999213218688965 
		-0.99994575977325439 0.67737692594528198;
createNode animCurveTA -n "animCurveTA130";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 167.2847953282953 52 5.8508885411295459 
		55 1.3880497599426367 59 -0.39798543679913495;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.97374242544174194;
	setAttr -s 4 ".kiy[3]"  -0.22765257954597473;
	setAttr -s 4 ".kox[0:3]"  0.040344227105379105 0.080325953662395477 
		0.90592330694198608 0.97374242544174194;
	setAttr -s 4 ".koy[0:3]"  -0.99918586015701294 -0.99676865339279175 
		-0.42344182729721069 -0.22765257954597473;
createNode animCurveTA -n "animCurveTA131";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 89.309730522529463 52 72.0942836748941 
		55 37.480682682104941 59 -0.1769482404847941;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.19881585240364075;
	setAttr -s 4 ".kiy[3]"  -0.98003685474395752;
	setAttr -s 4 ".kox[0:3]"  0.66270577907562256 0.24976901710033417 
		0.18189789354801178 0.19881583750247955;
	setAttr -s 4 ".koy[0:3]"  -0.74887984991073608 -0.96830546855926514 
		-0.98331743478775024 -0.98003685474395752;
createNode animCurveTA -n "animCurveTA132";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 167.36400109579685 52 5.6283036089618026 
		55 1.7204985363179832 59 0.35419712487733518;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.98438036441802979;
	setAttr -s 4 ".kiy[3]"  -0.17605482041835785;
	setAttr -s 4 ".kox[0:3]"  0.041956536471843719 0.080447971820831299 
		0.93022972345352173 0.98438036441802979;
	setAttr -s 4 ".koy[0:3]"  -0.99911946058273315 -0.99675881862640381 
		-0.36697772145271301 -0.17605482041835785;
createNode animCurveTA -n "animCurveTA133";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA134";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA135";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA136";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA137";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA138";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA140";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA141";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA142";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA143";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA144";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA145";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA146";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA147";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA148";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA149";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA150";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA151";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA153";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 52 0 55 0 59 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA154";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 52 0 55 0 59 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA155";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 52 0 55 0 59 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 52 0 55 0 59 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 52 0 55 0 59 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA158";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 52 0 55 0 59 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -0.5198069948790518 52 -0.5198069948790518 
		55 -0.5198069948790518 59 -0.5198069948790518;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -0.72394202659893114 52 -0.72394202659893114 
		55 -0.72394202659893114 59 -0.72394202659893114;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0.36439499068905612 52 0.36439499068905612 
		55 0.36439499068905612 59 0.36439499068905612;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA159";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 7.7976222737965299 52 7.7976222737965299 
		55 7.7976222737965299 59 7.7976222737965299;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA160";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 30.409274105849079 52 30.409274105849079 
		55 30.409274105849079 59 30.409274105849079;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 64.859940280210878 52 64.859940280210878 
		55 64.859940280210878 59 64.859940280210878;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0.43524234076486068 52 0.43524234076486068 
		55 0.43524234076486068 59 0.43524234076486068;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -0.82665738350180629 52 -0.82665738350180629 
		55 -0.82665738350180629 59 -0.82665738350180629;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL70";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0.27773886459742925 52 0.27773886459742925 
		55 0.27773886459742925 59 0.27773886459742925;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA162";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 52 0 55 0 59 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA163";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -28.652637602052774 52 -28.652637602052774 
		55 -28.652637602052774 59 -28.652637602052774;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA164";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -64.676908227303443 52 -64.676908227303443 
		55 -64.676908227303443 59 -64.676908227303443;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL71";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0.57913351791787993 52 0.55204350101983823 
		55 0.18929434066498338 59 -0.33975631908146897;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.0025202303659170866;
	setAttr -s 4 ".kiy[3]"  -0.9999968409538269;
	setAttr -s 4 ".kox[0:3]"  0.013083077967166901 0.0059852669946849346 
		0.0026164227165281773 0.0025202303659170866;
	setAttr -s 4 ".koy[0:3]"  -0.99991440773010254 -0.99998205900192261 
		-0.9999966025352478 -0.9999968409538269;
createNode animCurveTL -n "animCurveTL72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 1.4587723445200502 52 2.1383935200659114 
		55 2.1383935200659114 59 1.5089839896962023;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.0021183837670832872;
	setAttr -s 4 ".kiy[3]"  -0.99999773502349854;
	setAttr -s 4 ".kox[0:3]"  0.0035255691036581993 0.0034332647919654846 
		0.0037071527913212776 0.0021183837670832872;
	setAttr -s 4 ".koy[0:3]"  0.99999380111694336 0.99999409914016724 
		-0.99999314546585083 -0.99999773502349854;
createNode animCurveTL -n "animCurveTL73";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 1.3736749069753595 52 1.1927514896114442 
		55 0.75749329757194039 59 -0.017891624064152307;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.001719574211165309;
	setAttr -s 4 ".kiy[3]"  -0.99999850988388062;
	setAttr -s 4 ".kox[0:3]"  0.0089828073978424072 0.0037867350038141012 
		0.0019273466896265745 0.001719574211165309;
	setAttr -s 4 ".koy[0:3]"  -0.99995964765548706 -0.99999284744262695 
		-0.99999815225601196 -0.99999850988388062;
createNode animCurveTA -n "animCurveTA165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -254.65780390785429 52 80.584550625228246 
		55 80.584550625228246 59 -182.31080995945948;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.029046602547168732;
	setAttr -s 4 ".kiy[3]"  -0.99957805871963501;
	setAttr -s 4 ".kox[0:3]"  0.060139451175928116 0.039846986532211304 
		0.050787363201379776 0.029046602547168732;
	setAttr -s 4 ".koy[0:3]"  0.99818998575210571 0.99920576810836792 
		-0.99870949983596802 -0.99957805871963501;
createNode animCurveTA -n "animCurveTA166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 13.337604259653748 52 67.76371826925363 
		55 67.76371826925363 59 156.82412579915939;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.085464343428611755;
	setAttr -s 4 ".kiy[3]"  0.99634122848510742;
	setAttr -s 4 ".kox[0:3]"  0.66973745822906494 0.23854488134384155 
		0.14844854176044464 0.085464343428611755;
	setAttr -s 4 ".koy[0:3]"  0.74259799718856812 0.97113150358200073 
		0.98892015218734741 0.99634122848510742;
createNode animCurveTA -n "animCurveTA167";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -249.67207207087898 52 0.471781064054412 
		55 0.471781064054412 59 -109.27926998396417;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.06943897157907486;
	setAttr -s 4 ".kiy[3]"  -0.99758619070053101;
	setAttr -s 4 ".kox[0:3]"  0.084771148860454559 0.053369142115116119 
		0.1209183856844902 0.06943897157907486;
	setAttr -s 4 ".koy[0:3]"  0.99640047550201416 0.99857485294342041 
		-0.99266242980957031 -0.99758619070053101;
createNode animCurveTL -n "animCurveTL74";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0.51314063541168142 52 0.84113304462729566 
		55 1.798812835124485 59 1.0171826563931032;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.0017058347584679723;
	setAttr -s 4 ".kiy[3]"  -0.99999856948852539;
	setAttr -s 4 ".kox[0:3]"  0.010104533284902573 0.0018148712115362287 
		0.013252675533294678 0.0017058347584679723;
	setAttr -s 4 ".koy[0:3]"  0.99994891881942749 0.99999833106994629 
		0.99991220235824585 -0.99999856948852539;
createNode animCurveTL -n "animCurveTL75";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 1.4607705560924018 52 1.4016392052510451 
		55 1.7854373786684343 59 1.4583243460279665;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.004076030571013689;
	setAttr -s 4 ".kiy[3]"  -0.99999171495437622;
	setAttr -s 4 ".kox[0:3]"  0.029963245615363121 0.0071866689249873161 
		0.041128221899271011 0.004076030571013689;
	setAttr -s 4 ".koy[0:3]"  0.99955099821090698 0.99997419118881226 
		0.99915385246276855 -0.99999171495437622;
createNode animCurveTL -n "animCurveTL76";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0.15362760528255723 52 -0.54371312163474383 
		55 -0.82557538072426961 59 -0.14656505002404221;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.0019636391662061214;
	setAttr -s 4 ".kiy[3]"  0.99999809265136719;
	setAttr -s 4 ".kox[0:3]"  0.0087559586390852928 0.0023828835692256689 
		0.0058751213364303112 0.0019636391662061214;
	setAttr -s 4 ".koy[0:3]"  -0.99996167421340942 -0.99999713897705078 
		0.99998271465301514 0.99999809265136719;
createNode animCurveTA -n "animCurveTA168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 81.554933991407026 52 100.91248194423088 
		55 149.66942915741802 59 154.1772061721947;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.86124420166015625;
	setAttr -s 4 ".kiy[3]"  0.50819128751754761;
	setAttr -s 4 ".kox[0:3]"  0.24886509776115417 0.19259801506996155 
		0.24344100058078766 0.86124420166015625;
	setAttr -s 4 ".koy[0:3]"  -0.96853816509246826 0.98127776384353638 
		0.96991568803787231 0.50819128751754761;
createNode animCurveTA -n "animCurveTA169";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -201.97054993043795 52 -206.30475542336103 
		55 -196.43336547319743 59 -180.08760155503072;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.4234049916267395;
	setAttr -s 4 ".kiy[3]"  0.90594053268432617;
	setAttr -s 4 ".kox[0:3]"  0.88039946556091309 0.92389035224914551 
		0.4542793333530426 0.4234049916267395;
	setAttr -s 4 ".koy[0:3]"  0.47423282265663147 0.38265728950500488 
		0.89085930585861206 0.90594053268432617;
createNode animCurveTA -n "animCurveTA170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -252.92685535558789 52 -234.37022951880132 
		55 -223.83553702675019 59 -249.22549611042379;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.288124680519104;
	setAttr -s 4 ".kiy[3]"  -0.95759290456771851;
	setAttr -s 4 ".kox[0:3]"  0.29103067517280579 0.41757065057754517 
		0.66894471645355225 0.288124680519104;
	setAttr -s 4 ".koy[0:3]"  -0.95671373605728149 0.90864443778991699 
		-0.74331218004226685 -0.95759290456771851;
createNode animCurveTL -n "animCurveTL77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0.38370568308730163 52 0.38370568308730163 
		55 0.38370568308730163 59 0.38370568308730163;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL78";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -0.36735698683308293 52 -0.36735698683308293 
		55 -0.36735698683308293 59 -0.36735698683308293;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -1.6779440752680004 52 -1.6779440752680004 
		55 -1.6779440752680004 59 -1.6779440752680004;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTL -n "animCurveTL80";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -0.14441433002061838 52 -0.94586460451469712 
		55 -0.92232341228400816 59 -0.94586460451469712;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.056547705084085464;
	setAttr -s 4 ".kiy[3]"  -0.99839991331100464;
	setAttr -s 4 ".kox[0:3]"  1 0.002999480115249753 1 0.056547701358795166;
	setAttr -s 4 ".koy[0:3]"  0 -0.99999552965164185 0 -0.99839991331100464;
createNode animCurveTL -n "animCurveTL81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -0.39973083344342586 52 -0.39951651349575423 
		55 -0.017062384564797081 59 -0.39951651349575423;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.0034862367901951075;
	setAttr -s 4 ".kiy[3]"  -0.99999392032623291;
	setAttr -s 4 ".kox[0:3]"  1 0.0060974191874265671 1 0.0034862367901951075;
	setAttr -s 4 ".koy[0:3]"  0 0.99998140335083008 0 -0.99999392032623291;
createNode animCurveTL -n "animCurveTL82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -1.5646623107416469 52 -1.3042360092776395 
		55 -1.3135697479188488 59 -1.3042360092776395;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.14141538739204407;
	setAttr -s 4 ".kiy[3]"  0.98995035886764526;
	setAttr -s 4 ".kox[0:3]"  1 0.0092923203483223915 1 0.14141538739204407;
	setAttr -s 4 ".koy[0:3]"  0 0.99995684623718262 0 0.98995035886764526;
createNode animCurveTA -n "animCurveTA171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -0.061808866237337522 52 -0.061808866237337522 
		55 -0.061808866237337522 59 -0.061808866237337522;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -59.058178941076754 52 -59.058178941076754 
		55 -59.058178941076754 59 -59.058178941076754;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 16.579147429757843 52 16.579147429757843 
		55 16.579147429757843 59 16.579147429757843;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 12.253734489678925 52 12.253734489678925 
		55 12.253734489678925 59 12.253734489678925;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -65.746751280844961 52 -65.746751280844961 
		55 -65.746751280844961 59 -65.746751280844961;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 52 0 55 0 59 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 15.711328223519057 52 15.711328223519057 
		55 15.711328223519057 59 15.711328223519057;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 8.5572674112203622 52 8.5572674112203622 
		55 8.5572674112203622 59 8.5572674112203622;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 52 0 55 0 59 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 52 0 55 0 59 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 52 0 55 0 59 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 52 0 55 0 59 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 52 0 55 0 59 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 52 0 55 0 59 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 8.2533422302317216 52 8.2533422302317216 
		55 8.2533422302317216 59 8.2533422302317216;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 23.263402056531085 52 23.263402056531085 
		55 23.263402056531085 59 23.263402056531085;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 20.166277752815617 52 20.166277752815617 
		55 20.166277752815617 59 20.166277752815617;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 52 0 55 0 59 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 52 0 55 0 59 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 39.651349600799669 52 39.651349600799669 
		55 39.651349600799669 59 39.651349600799669;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 13.994403295754109 59 13.994403295754109;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 0 59 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  48 13.994403295754109 59 13.994403295754109;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 52 0 55 0 59 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 52 0 55 0 59 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 17.254116939558369 52 37.467597830773826 
		55 39.66770467841615 59 37.467597830773826;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.96094334125518799;
	setAttr -s 4 ".kiy[3]"  -0.27674514055252075;
	setAttr -s 4 ".kox[0:3]"  0.6478075385093689 0.51226437091827393 
		1 0.96094334125518799;
	setAttr -s 4 ".koy[0:3]"  0.76180392503738403 0.85882782936096191 
		0 -0.27674514055252075;
createNode animCurveTA -n "animCurveTA203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 52 0 55 0 59 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 52 0 55 0 59 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 52 0 55 0 59 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA206";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 3.9537253684672482 52 -8.4610768844838731 
		55 -9.218846654994767 59 0.13069965142825102;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.63273215293884277;
	setAttr -s 4 ".kiy[3]"  0.77437072992324829;
	setAttr -s 4 ".kox[0:3]"  0.81248915195465088 0.71232080459594727 
		0.84125262498855591 0.63273215293884277;
	setAttr -s 4 ".koy[0:3]"  -0.58297628164291382 -0.70185405015945435 
		0.54064226150512695 0.77437072992324829;
createNode animCurveTA -n "animCurveTA207";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -0.24276789548754044 52 -0.24276789548754107 
		55 -6.2931415148620031 59 1.381194024803551;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.70549368858337402;
	setAttr -s 4 ".kiy[3]"  0.70871621370315552;
	setAttr -s 4 ".kox[0:3]"  0.99839949607849121 0.91104429960250854 
		0.9927029013633728 0.70549368858337402;
	setAttr -s 4 ".koy[0:3]"  -0.056554988026618958 -0.41230848431587219 
		0.12058568000793457 0.70871621370315552;
createNode animCurveTA -n "animCurveTA208";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -2.6342070486364775 52 -2.6342070486364784 
		55 -3.5096707294076577 59 -3.0761030823909206;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.99839335680007935;
	setAttr -s 4 ".kiy[3]"  0.056662671267986298;
	setAttr -s 4 ".kox[0:3]"  0.66031718254089355 0.99786275625228882 
		0.99945420026779175 0.99839335680007935;
	setAttr -s 4 ".koy[0:3]"  0.75098681449890137 -0.065344572067260742 
		-0.033035703003406525 0.056662671267986298;
createNode animCurveTA -n "animCurveTA209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 2.3255233067906422 52 -55.411855546937886 
		55 -32.868907718981212 59 -2.1923355083613782;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.24165123701095581;
	setAttr -s 4 ".kiy[3]"  0.97036319971084595;
	setAttr -s 4 ".kox[0:3]"  0.28228086233139038 0.35510474443435669 
		0.24363550543785095 0.24165123701095581;
	setAttr -s 4 ".koy[0:3]"  -0.95933181047439575 -0.93482649326324463 
		0.96986687183380127 0.97036319971084595;
createNode animCurveTA -n "animCurveTA210";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -0.10082087621232071 52 -0.33063374700739717 
		55 0.22390590948828515 59 0.03128180009501156;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.99968224763870239;
	setAttr -s 4 ".kiy[3]"  -0.025206416845321655;
	setAttr -s 4 ".kox[0:3]"  0.9947437047958374 0.99970513582229614 
		0.9996337890625 0.99968224763870239;
	setAttr -s 4 ".koy[0:3]"  0.10239585489034653 0.024282345548272133 
		0.027061305940151215 -0.025206416845321655;
createNode animCurveTA -n "animCurveTA211";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 2.6260942589264555 52 9.5787563932921653 
		55 6.0253070614312776 59 -0.29014710523618287;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.77073323726654053;
	setAttr -s 4 ".kiy[3]"  -0.63715797662734985;
	setAttr -s 4 ".kox[0:3]"  0.86804533004760742 0.96916311979293823 
		0.80453675985336304 0.77073323726654053;
	setAttr -s 4 ".koy[0:3]"  -0.4964849054813385 0.24641995131969452 
		-0.5939028263092041 -0.63715797662734985;
createNode animCurveTA -n "animCurveTA212";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0.19211247389617075 52 0.19211247389617075 
		55 0.19211247389617075 59 0.19211247389617075;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA213";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -3.8855573290219243 52 -3.8855573290219243 
		55 -3.8855573290219243 59 -3.8855573290219243;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 6.5189136801188905 52 6.5189136801188905 
		55 6.5189136801188905 59 6.5189136801188905;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 1.4116701325714462 52 2.8626302400072206 
		55 -6.5521856547738686 59 -0.047898863292895569;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.76140975952148438;
	setAttr -s 4 ".kiy[3]"  0.64827096462249756;
	setAttr -s 4 ".kox[0:3]"  0.99624520540237427 0.85912030935287476 
		0.9771122932434082 0.7614096999168396;
	setAttr -s 4 ".koy[0:3]"  0.086576230823993683 -0.51177370548248291 
		-0.21272425353527069 0.64827096462249756;
createNode animCurveTA -n "animCurveTA216";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -0.039007911536961995 52 1.0660931136584628 
		55 -2.8246373391956263 59 -1.9039565369019138;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.99281603097915649;
	setAttr -s 4 ".kiy[3]"  0.11965099722146988;
	setAttr -s 4 ".kox[0:3]"  0.99632704257965088 0.97897428274154663 
		0.97620010375976563 0.99281603097915649;
	setAttr -s 4 ".koy[0:3]"  0.085629455745220184 -0.20398357510566711 
		-0.21687182784080505 0.11965099722146988;
createNode animCurveTA -n "animCurveTA217";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0.63178823129546868 52 3.79474682506592 
		55 4.0159241590766346 59 3.7169715582866352;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.99923521280288696;
	setAttr -s 4 ".kiy[3]"  -0.039102859795093536;
	setAttr -s 4 ".kox[0:3]"  0.96944677829742432 0.96942371129989624 
		0.99998307228088379 0.99923521280288696;
	setAttr -s 4 ".koy[0:3]"  -0.24530166387557983 0.24539293348789215 
		-0.0058174780569970608 -0.039102859795093536;
createNode animCurveTA -n "animCurveTA218";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 52 0 55 0 59 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA219";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 52 0 55 0 59 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA220";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 27.080064458283051 52 31.253469153379079 
		55 31.707717289908054 59 31.253469153379079;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  0.99823689460754395;
	setAttr -s 4 ".kiy[3]"  -0.059356082230806351;
	setAttr -s 4 ".kox[0:3]"  0.97176671028137207 0.94498789310455322 
		1 0.99823689460754395;
	setAttr -s 4 ".koy[0:3]"  0.23594383895397186 0.327105313539505 
		0 -0.059356082230806351;
createNode animCurveTA -n "animCurveTA221";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 10.423754966968488 52 10.423754966968488 
		55 10.423754966968488 59 10.423754966968488;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA222";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 27.722848255843903 52 27.722848255843903 
		55 27.722848255843903 59 27.722848255843903;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA223";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 21.576484776388227 52 21.576484776388227 
		55 21.576484776388227 59 21.576484776388227;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA224";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 52 0 55 0 59 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA225";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 52 0 55 0 59 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
createNode animCurveTA -n "animCurveTA226";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 41.681788787171449 52 41.681788787171449 
		55 41.681788787171449 59 41.681788787171449;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[0:3]"  1 9 9 9;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[0:3]"  1 1 1 1;
	setAttr -s 4 ".koy[0:3]"  0 0 0 0;
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
	setAttr -s 3 ".sol";
connectAttr "apu_get_out_of_car_close_door_high.st" "clipLibrary2.st[0]";
connectAttr "apu_get_out_of_car_close_door_high.du" "clipLibrary2.du[0]"
		;
connectAttr "animCurveTL42.a" "clipLibrary2.cel[0].cev[0].cevr";
connectAttr "animCurveTL43.a" "clipLibrary2.cel[0].cev[1].cevr";
connectAttr "animCurveTL44.a" "clipLibrary2.cel[0].cev[2].cevr";
connectAttr "animCurveTL45.a" "clipLibrary2.cel[0].cev[3].cevr";
connectAttr "animCurveTL46.a" "clipLibrary2.cel[0].cev[4].cevr";
connectAttr "animCurveTA114.a" "clipLibrary2.cel[0].cev[5].cevr";
connectAttr "animCurveTU9.a" "clipLibrary2.cel[0].cev[6].cevr";
connectAttr "animCurveTU10.a" "clipLibrary2.cel[0].cev[7].cevr";
connectAttr "animCurveTU11.a" "clipLibrary2.cel[0].cev[8].cevr";
connectAttr "animCurveTU12.a" "clipLibrary2.cel[0].cev[9].cevr";
connectAttr "animCurveTU13.a" "clipLibrary2.cel[0].cev[10].cevr";
connectAttr "animCurveTU14.a" "clipLibrary2.cel[0].cev[11].cevr";
connectAttr "animCurveTU15.a" "clipLibrary2.cel[0].cev[12].cevr";
connectAttr "animCurveTU16.a" "clipLibrary2.cel[0].cev[13].cevr";
connectAttr "animCurveTA115.a" "clipLibrary2.cel[0].cev[14].cevr";
connectAttr "animCurveTA116.a" "clipLibrary2.cel[0].cev[15].cevr";
connectAttr "animCurveTA117.a" "clipLibrary2.cel[0].cev[16].cevr";
connectAttr "animCurveTL47.a" "clipLibrary2.cel[0].cev[17].cevr";
connectAttr "animCurveTL48.a" "clipLibrary2.cel[0].cev[18].cevr";
connectAttr "animCurveTL49.a" "clipLibrary2.cel[0].cev[19].cevr";
connectAttr "animCurveTL50.a" "clipLibrary2.cel[0].cev[20].cevr";
connectAttr "animCurveTL51.a" "clipLibrary2.cel[0].cev[21].cevr";
connectAttr "animCurveTL52.a" "clipLibrary2.cel[0].cev[22].cevr";
connectAttr "animCurveTA118.a" "clipLibrary2.cel[0].cev[23].cevr";
connectAttr "animCurveTA119.a" "clipLibrary2.cel[0].cev[24].cevr";
connectAttr "animCurveTA120.a" "clipLibrary2.cel[0].cev[25].cevr";
connectAttr "animCurveTL53.a" "clipLibrary2.cel[0].cev[26].cevr";
connectAttr "animCurveTL54.a" "clipLibrary2.cel[0].cev[27].cevr";
connectAttr "animCurveTL55.a" "clipLibrary2.cel[0].cev[28].cevr";
connectAttr "animCurveTA121.a" "clipLibrary2.cel[0].cev[29].cevr";
connectAttr "animCurveTA122.a" "clipLibrary2.cel[0].cev[30].cevr";
connectAttr "animCurveTA123.a" "clipLibrary2.cel[0].cev[31].cevr";
connectAttr "animCurveTA124.a" "clipLibrary2.cel[0].cev[32].cevr";
connectAttr "animCurveTA125.a" "clipLibrary2.cel[0].cev[33].cevr";
connectAttr "animCurveTA126.a" "clipLibrary2.cel[0].cev[34].cevr";
connectAttr "animCurveTA127.a" "clipLibrary2.cel[0].cev[35].cevr";
connectAttr "animCurveTA128.a" "clipLibrary2.cel[0].cev[36].cevr";
connectAttr "animCurveTA129.a" "clipLibrary2.cel[0].cev[37].cevr";
connectAttr "animCurveTL56.a" "clipLibrary2.cel[0].cev[38].cevr";
connectAttr "animCurveTL57.a" "clipLibrary2.cel[0].cev[39].cevr";
connectAttr "animCurveTL58.a" "clipLibrary2.cel[0].cev[40].cevr";
connectAttr "animCurveTL59.a" "clipLibrary2.cel[0].cev[41].cevr";
connectAttr "animCurveTL60.a" "clipLibrary2.cel[0].cev[42].cevr";
connectAttr "animCurveTL61.a" "clipLibrary2.cel[0].cev[43].cevr";
connectAttr "animCurveTL62.a" "clipLibrary2.cel[0].cev[44].cevr";
connectAttr "animCurveTL63.a" "clipLibrary2.cel[0].cev[45].cevr";
connectAttr "animCurveTL64.a" "clipLibrary2.cel[0].cev[46].cevr";
connectAttr "animCurveTA130.a" "clipLibrary2.cel[0].cev[47].cevr";
connectAttr "animCurveTA131.a" "clipLibrary2.cel[0].cev[48].cevr";
connectAttr "animCurveTA132.a" "clipLibrary2.cel[0].cev[49].cevr";
connectAttr "animCurveTA133.a" "clipLibrary2.cel[0].cev[50].cevr";
connectAttr "animCurveTA134.a" "clipLibrary2.cel[0].cev[51].cevr";
connectAttr "animCurveTA135.a" "clipLibrary2.cel[0].cev[52].cevr";
connectAttr "animCurveTA136.a" "clipLibrary2.cel[0].cev[53].cevr";
connectAttr "animCurveTA137.a" "clipLibrary2.cel[0].cev[54].cevr";
connectAttr "animCurveTA138.a" "clipLibrary2.cel[0].cev[55].cevr";
connectAttr "animCurveTA139.a" "clipLibrary2.cel[0].cev[56].cevr";
connectAttr "animCurveTA140.a" "clipLibrary2.cel[0].cev[57].cevr";
connectAttr "animCurveTA141.a" "clipLibrary2.cel[0].cev[58].cevr";
connectAttr "animCurveTA142.a" "clipLibrary2.cel[0].cev[59].cevr";
connectAttr "animCurveTA143.a" "clipLibrary2.cel[0].cev[60].cevr";
connectAttr "animCurveTA144.a" "clipLibrary2.cel[0].cev[61].cevr";
connectAttr "animCurveTA145.a" "clipLibrary2.cel[0].cev[62].cevr";
connectAttr "animCurveTA146.a" "clipLibrary2.cel[0].cev[63].cevr";
connectAttr "animCurveTA147.a" "clipLibrary2.cel[0].cev[64].cevr";
connectAttr "animCurveTA148.a" "clipLibrary2.cel[0].cev[65].cevr";
connectAttr "animCurveTA149.a" "clipLibrary2.cel[0].cev[66].cevr";
connectAttr "animCurveTA150.a" "clipLibrary2.cel[0].cev[67].cevr";
connectAttr "animCurveTA151.a" "clipLibrary2.cel[0].cev[68].cevr";
connectAttr "animCurveTA152.a" "clipLibrary2.cel[0].cev[69].cevr";
connectAttr "animCurveTA153.a" "clipLibrary2.cel[0].cev[70].cevr";
connectAttr "animCurveTA154.a" "clipLibrary2.cel[0].cev[71].cevr";
connectAttr "animCurveTA155.a" "clipLibrary2.cel[0].cev[72].cevr";
connectAttr "animCurveTA156.a" "clipLibrary2.cel[0].cev[73].cevr";
connectAttr "animCurveTA157.a" "clipLibrary2.cel[0].cev[74].cevr";
connectAttr "animCurveTA158.a" "clipLibrary2.cel[0].cev[75].cevr";
connectAttr "animCurveTL65.a" "clipLibrary2.cel[0].cev[76].cevr";
connectAttr "animCurveTL66.a" "clipLibrary2.cel[0].cev[77].cevr";
connectAttr "animCurveTL67.a" "clipLibrary2.cel[0].cev[78].cevr";
connectAttr "animCurveTA159.a" "clipLibrary2.cel[0].cev[79].cevr";
connectAttr "animCurveTA160.a" "clipLibrary2.cel[0].cev[80].cevr";
connectAttr "animCurveTA161.a" "clipLibrary2.cel[0].cev[81].cevr";
connectAttr "animCurveTL68.a" "clipLibrary2.cel[0].cev[82].cevr";
connectAttr "animCurveTL69.a" "clipLibrary2.cel[0].cev[83].cevr";
connectAttr "animCurveTL70.a" "clipLibrary2.cel[0].cev[84].cevr";
connectAttr "animCurveTA162.a" "clipLibrary2.cel[0].cev[85].cevr";
connectAttr "animCurveTA163.a" "clipLibrary2.cel[0].cev[86].cevr";
connectAttr "animCurveTA164.a" "clipLibrary2.cel[0].cev[87].cevr";
connectAttr "animCurveTL71.a" "clipLibrary2.cel[0].cev[88].cevr";
connectAttr "animCurveTL72.a" "clipLibrary2.cel[0].cev[89].cevr";
connectAttr "animCurveTL73.a" "clipLibrary2.cel[0].cev[90].cevr";
connectAttr "animCurveTA165.a" "clipLibrary2.cel[0].cev[91].cevr";
connectAttr "animCurveTA166.a" "clipLibrary2.cel[0].cev[92].cevr";
connectAttr "animCurveTA167.a" "clipLibrary2.cel[0].cev[93].cevr";
connectAttr "animCurveTL74.a" "clipLibrary2.cel[0].cev[94].cevr";
connectAttr "animCurveTL75.a" "clipLibrary2.cel[0].cev[95].cevr";
connectAttr "animCurveTL76.a" "clipLibrary2.cel[0].cev[96].cevr";
connectAttr "animCurveTA168.a" "clipLibrary2.cel[0].cev[97].cevr";
connectAttr "animCurveTA169.a" "clipLibrary2.cel[0].cev[98].cevr";
connectAttr "animCurveTA170.a" "clipLibrary2.cel[0].cev[99].cevr";
connectAttr "animCurveTL77.a" "clipLibrary2.cel[0].cev[100].cevr";
connectAttr "animCurveTL78.a" "clipLibrary2.cel[0].cev[101].cevr";
connectAttr "animCurveTL79.a" "clipLibrary2.cel[0].cev[102].cevr";
connectAttr "animCurveTL80.a" "clipLibrary2.cel[0].cev[103].cevr";
connectAttr "animCurveTL81.a" "clipLibrary2.cel[0].cev[104].cevr";
connectAttr "animCurveTL82.a" "clipLibrary2.cel[0].cev[105].cevr";
connectAttr "animCurveTA171.a" "clipLibrary2.cel[0].cev[106].cevr";
connectAttr "animCurveTA172.a" "clipLibrary2.cel[0].cev[107].cevr";
connectAttr "animCurveTA173.a" "clipLibrary2.cel[0].cev[108].cevr";
connectAttr "animCurveTA174.a" "clipLibrary2.cel[0].cev[109].cevr";
connectAttr "animCurveTA175.a" "clipLibrary2.cel[0].cev[110].cevr";
connectAttr "animCurveTA176.a" "clipLibrary2.cel[0].cev[111].cevr";
connectAttr "animCurveTA177.a" "clipLibrary2.cel[0].cev[112].cevr";
connectAttr "animCurveTA178.a" "clipLibrary2.cel[0].cev[113].cevr";
connectAttr "animCurveTA179.a" "clipLibrary2.cel[0].cev[114].cevr";
connectAttr "animCurveTA180.a" "clipLibrary2.cel[0].cev[115].cevr";
connectAttr "animCurveTA181.a" "clipLibrary2.cel[0].cev[116].cevr";
connectAttr "animCurveTA182.a" "clipLibrary2.cel[0].cev[117].cevr";
connectAttr "animCurveTA183.a" "clipLibrary2.cel[0].cev[118].cevr";
connectAttr "animCurveTA184.a" "clipLibrary2.cel[0].cev[119].cevr";
connectAttr "animCurveTA185.a" "clipLibrary2.cel[0].cev[120].cevr";
connectAttr "animCurveTA186.a" "clipLibrary2.cel[0].cev[121].cevr";
connectAttr "animCurveTA187.a" "clipLibrary2.cel[0].cev[122].cevr";
connectAttr "animCurveTA188.a" "clipLibrary2.cel[0].cev[123].cevr";
connectAttr "animCurveTA189.a" "clipLibrary2.cel[0].cev[124].cevr";
connectAttr "animCurveTA190.a" "clipLibrary2.cel[0].cev[125].cevr";
connectAttr "animCurveTA191.a" "clipLibrary2.cel[0].cev[126].cevr";
connectAttr "animCurveTA192.a" "clipLibrary2.cel[0].cev[127].cevr";
connectAttr "animCurveTA193.a" "clipLibrary2.cel[0].cev[128].cevr";
connectAttr "animCurveTA194.a" "clipLibrary2.cel[0].cev[129].cevr";
connectAttr "animCurveTA195.a" "clipLibrary2.cel[0].cev[130].cevr";
connectAttr "animCurveTA196.a" "clipLibrary2.cel[0].cev[131].cevr";
connectAttr "animCurveTA197.a" "clipLibrary2.cel[0].cev[132].cevr";
connectAttr "animCurveTA198.a" "clipLibrary2.cel[0].cev[133].cevr";
connectAttr "animCurveTA199.a" "clipLibrary2.cel[0].cev[134].cevr";
connectAttr "animCurveTA200.a" "clipLibrary2.cel[0].cev[135].cevr";
connectAttr "animCurveTA201.a" "clipLibrary2.cel[0].cev[136].cevr";
connectAttr "animCurveTA202.a" "clipLibrary2.cel[0].cev[137].cevr";
connectAttr "animCurveTA203.a" "clipLibrary2.cel[0].cev[138].cevr";
connectAttr "animCurveTA204.a" "clipLibrary2.cel[0].cev[139].cevr";
connectAttr "animCurveTA205.a" "clipLibrary2.cel[0].cev[140].cevr";
connectAttr "animCurveTA206.a" "clipLibrary2.cel[0].cev[141].cevr";
connectAttr "animCurveTA207.a" "clipLibrary2.cel[0].cev[142].cevr";
connectAttr "animCurveTA208.a" "clipLibrary2.cel[0].cev[143].cevr";
connectAttr "animCurveTA209.a" "clipLibrary2.cel[0].cev[144].cevr";
connectAttr "animCurveTA210.a" "clipLibrary2.cel[0].cev[145].cevr";
connectAttr "animCurveTA211.a" "clipLibrary2.cel[0].cev[146].cevr";
connectAttr "animCurveTA212.a" "clipLibrary2.cel[0].cev[147].cevr";
connectAttr "animCurveTA213.a" "clipLibrary2.cel[0].cev[148].cevr";
connectAttr "animCurveTA214.a" "clipLibrary2.cel[0].cev[149].cevr";
connectAttr "animCurveTA215.a" "clipLibrary2.cel[0].cev[150].cevr";
connectAttr "animCurveTA216.a" "clipLibrary2.cel[0].cev[151].cevr";
connectAttr "animCurveTA217.a" "clipLibrary2.cel[0].cev[152].cevr";
connectAttr "animCurveTA218.a" "clipLibrary2.cel[0].cev[153].cevr";
connectAttr "animCurveTA219.a" "clipLibrary2.cel[0].cev[154].cevr";
connectAttr "animCurveTA220.a" "clipLibrary2.cel[0].cev[155].cevr";
connectAttr "animCurveTA221.a" "clipLibrary2.cel[0].cev[156].cevr";
connectAttr "animCurveTA222.a" "clipLibrary2.cel[0].cev[157].cevr";
connectAttr "animCurveTA223.a" "clipLibrary2.cel[0].cev[158].cevr";
connectAttr "animCurveTA224.a" "clipLibrary2.cel[0].cev[159].cevr";
connectAttr "animCurveTA225.a" "clipLibrary2.cel[0].cev[160].cevr";
connectAttr "animCurveTA226.a" "clipLibrary2.cel[0].cev[161].cevr";
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
// End of apu-m_get_out_of_car_close_door_high.ma
