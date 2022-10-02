//Maya ASCII 4.0 scene
//Name: apu_get_into_car_close_door_high_driver.ma
//Last modified: Wed, Oct 09, 2002 02:42:03 PM
requires maya "4.0";
requires "p3dmayaexp" "18.6";
requires "p3dSimpleShader" "18.6";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "apu_get_into_car_close_door_high_driverSource";
	setAttr ".ihi" 0;
	setAttr ".st" 58;
	setAttr ".du" 17;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL247";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL248";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 1 75 1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  58 -1.1056463648944823 59 -1.1100887345598991 
		60 -1.1174926840022605 61 -1.1189734738907329 62 -1.1056463648944823 63 -1.0582610874736587 
		64 -0.98981568614498705 65 -0.93979789266249358 66 -0.92694031514071784 67 
		-0.93251034582431691 68 -0.93979789266249358 69 -0.93968541040192111 70 -0.94129044428757935 
		71 -0.95525553801613383 72 -0.98503164509163488 73 -1.0234984209084421 74 
		-1.0654414619986821 75 -1.1056463648944823;
	setAttr -s 18 ".kit[17]"  1;
	setAttr -s 18 ".kot[0:17]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 18 ".kix[17]"  0.0082905851304531097;
	setAttr -s 18 ".kiy[17]"  -0.9999656081199646;
	setAttr -s 18 ".kox[0:17]"  0.1484082043170929 0.05618736520409584 
		0.074824683368206024 0.05618736520409584 0.010980073362588882 0.005755432415753603 
		0.0056275376118719578 0.010602389462292194 0.091099865734577179 0.051780536770820618 
		0.092515885829925537 0.40782883763313293 0.042777836322784424 0.015239390544593334 
		0.0097685623914003372 0.0082905767485499382 0.0081151723861694336 0.0082905851304531097;
	setAttr -s 18 ".koy[0:17]"  -0.98892617225646973 -0.99842023849487305 
		-0.9971967339515686 0.99842023849487305 0.99993973970413208 0.99998342990875244 
		0.99998414516448975 0.99994379281997681 0.99584174156188965 -0.99865847826004028 
		-0.99571120738983154 -0.91305840015411377 -0.99908459186553955 -0.99988389015197754 
		-0.99995225667953491 -0.9999656081199646 -0.99996709823608398 -0.9999656081199646;
createNode animCurveTL -n "animCurveTL250";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
createNode animCurveTL -n "animCurveTL251";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  58 0.51629522071327538 59 0.51427448262601083 
		60 0.51090658581390325 61 0.51023300645148184 62 0.51629522071327538 63 0.53784975937942581 
		64 0.56898409238323067 65 0.59173610462895143 66 0.59813388355773767 67 0.59614934237445771 
		68 0.59173610462895143 69 0.58684496388249185 70 0.57952512665613787 71 0.56987783593940844 
		72 0.55795502276645725 73 0.54439571934143827 74 0.53018182040887096 75 0.51629522071327538;
	setAttr -s 18 ".kit[17]"  1;
	setAttr -s 18 ".kot[0:17]"  1 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 18 ".kix[17]"  0.023997064679861069;
	setAttr -s 18 ".kiy[17]"  -0.99971199035644531;
	setAttr -s 18 ".kox[0:17]"  0.31330248713493347 0.12278109788894653 
		0.16275674104690552 0.12278109788894653 0.024132905527949333 0.012651880271732807 
		0.012370770797133446 0.022864397615194321 0.14936606585979462 0.10364166647195816 
		0.07146763801574707 0.054514497518539429 0.039261367172002792 0.030892223119735718 
		0.026153190061450005 0.023997040465474129 0.023717697709798813 0.023997064679861069;
	setAttr -s 18 ".koy[0:17]"  -0.94965344667434692 -0.99243378639221191 
		-0.98666620254516602 0.99243378639221191 0.99970877170562744 0.99991995096206665 
		0.9999234676361084 0.99973857402801514 0.98878198862075806 -0.99461472034454346 
		-0.99744290113449097 -0.99851298332214355 -0.99922895431518555 -0.99952274560928345 
		-0.99965792894363403 -0.99971204996109009 -0.99971866607666016 -0.99971204996109009;
createNode animCurveTA -n "animCurveTA679";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  2 1;
	setAttr -s 2 ".kot[1]"  2;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[0:1]"  1 1;
	setAttr -s 2 ".koy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU49";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU51";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU52";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 1 75 1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTU -n "animCurveTU56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 1 75 1;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA680";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA681";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA682";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL252";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL253";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL254";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL255";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -1.7887795854750703 62 -1.7887795854750703 
		65 -1.4967121170630182 68 -1.4967121170630182 71 -1.5810114771921204 75 -1.7887795854750703;
	setAttr -s 6 ".kit[2:5]"  3 3 9 1;
	setAttr -s 6 ".kot[0:5]"  1 9 3 3 9 9;
	setAttr -s 6 ".kix[5]"  0.0064172795973718166;
	setAttr -s 6 ".kiy[5]"  -0.99997943639755249;
	setAttr -s 6 ".kox[0:5]"  0.0098632043227553368 0.0079887667670845985 
		1 1 0.0079887667670845985 0.0064172795973718166;
	setAttr -s 6 ".koy[0:5]"  -0.99995136260986328 0.99996811151504517 
		0 0 -0.99996811151504517 -0.99997943639755249;
createNode animCurveTL -n "animCurveTL256";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 1.1856917531778628 62 1.1856917531778628 
		65 1.0996044527980389 68 1.0996044527980389 71 1.1244518086808917 75 1.1856917531778628;
	setAttr -s 6 ".kit[2:5]"  3 3 9 1;
	setAttr -s 6 ".kot[0:5]"  1 9 3 3 9 9;
	setAttr -s 6 ".kix[5]"  0.021767126396298409;
	setAttr -s 6 ".kiy[5]"  0.99976307153701782;
	setAttr -s 6 ".kox[0:5]"  0.037405814975500107 0.027094317600131035 
		1 1 0.027094317600131035 0.021767126396298409;
	setAttr -s 6 ".koy[0:5]"  0.99930018186569214 -0.99963289499282837 
		0 0 0.99963289499282837 0.99976307153701782;
createNode animCurveTL -n "animCurveTL257";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 1.2494521403134777 62 1.2494521403134777 
		65 1.3922565838036522 68 1.3922565838036522 71 1.3510389726737089 75 1.2494521403134777;
	setAttr -s 6 ".kit[2:5]"  3 3 9 1;
	setAttr -s 6 ".kot[0:5]"  1 9 3 3 9 9;
	setAttr -s 6 ".kix[5]"  0.013123933225870132;
	setAttr -s 6 ".kiy[5]"  -0.99991381168365479;
	setAttr -s 6 ".kox[0:5]"  0.025338035076856613 0.016337180510163307 
		1 1 0.016337180510163307 0.013123933225870132;
	setAttr -s 6 ".koy[0:5]"  -0.99967896938323975 0.9998665452003479 
		0 0 -0.9998665452003479 -0.99991387128829956;
createNode animCurveTA -n "animCurveTA683";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -1.5751763774817589 62 -1.5751763774817589 
		65 3.0516519780903439 68 3.0516519780903439 71 1.716211651835468 75 -1.5751763774817589;
	setAttr -s 6 ".kit[2:5]"  3 3 9 1;
	setAttr -s 6 ".kot[0:5]"  1 9 3 3 9 9;
	setAttr -s 6 ".kix[5]"  0.91838842630386353;
	setAttr -s 6 ".kiy[5]"  -0.39567998051643372;
	setAttr -s 6 ".kox[0:5]"  0.99760597944259644 0.94500589370727539 
		1 1 0.94500589370727539 0.91838842630386353;
	setAttr -s 6 ".koy[0:5]"  0.069154053926467896 0.32705327868461609 
		0 0 -0.32705327868461609 -0.39567998051643372;
createNode animCurveTA -n "animCurveTA684";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 1.1607895919799451 62 1.1607895919799451 
		65 7.2536523523242664 68 7.2536523523242664 71 5.4950708559550643 75 1.1607895919799451;
	setAttr -s 6 ".kit[2:5]"  3 3 9 1;
	setAttr -s 6 ".kot[0:5]"  1 9 3 3 9 9;
	setAttr -s 6 ".kix[5]"  0.86976486444473267;
	setAttr -s 6 ".kiy[5]"  -0.49346634745597839;
	setAttr -s 6 ".kox[0:5]"  0.98977738618850708 0.90995478630065918 
		1 1 0.90995478630065918 0.86976486444473267;
	setAttr -s 6 ".koy[0:5]"  -0.14262071251869202 0.41470742225646973 
		0 0 -0.41470742225646973 -0.49346634745597839;
createNode animCurveTA -n "animCurveTA685";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -0.87194592567078033 62 -0.87194592567078033 
		65 -5.6527924443923023 68 -5.6527924443923023 71 -4.272897849786899 75 -0.87194592567078033;
	setAttr -s 6 ".kit[2:5]"  3 3 9 1;
	setAttr -s 6 ".kot[0:5]"  1 9 3 3 9 9;
	setAttr -s 6 ".kix[5]"  0.91356080770492554;
	setAttr -s 6 ".kiy[5]"  0.4067021906375885;
	setAttr -s 6 ".kox[0:5]"  0.79470789432525635 0.94160354137420654 
		1 1 0.94160354137420654 0.91356080770492554;
	setAttr -s 6 ".koy[0:5]"  -0.60699206590652466 -0.33672356605529785 
		0 0 0.33672356605529785 0.4067021906375885;
createNode animCurveTL -n "animCurveTL258";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -1.3851498742555077 62 -1.3851498742555077 
		65 -0.88751940401456753 68 -0.88751940401456753 71 -1.0311503619101976 75 
		-1.3851498742555077;
	setAttr -s 6 ".kit[2:5]"  3 3 9 1;
	setAttr -s 6 ".kot[0:5]"  1 9 3 3 9 9;
	setAttr -s 6 ".kix[5]"  0.0037664573173969984;
	setAttr -s 6 ".kiy[5]"  -0.99999290704727173;
	setAttr -s 6 ".kox[0:5]"  0.012741141952574253 0.0046888361684978008 
		1 1 0.0046888361684978008 0.0037664573173969984;
	setAttr -s 6 ".koy[0:5]"  -0.99991881847381592 0.99998903274536133 
		0 0 -0.99998903274536133 -0.99999290704727173;
createNode animCurveTL -n "animCurveTL259";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 1.125858417297247 62 1.1600048186427943 
		65 1.0653976447098845 68 1.0653976447098845 71 1.092704090143567 75 1.1600048186427943;
	setAttr -s 6 ".kit[2:5]"  3 3 9 1;
	setAttr -s 6 ".kot[0:5]"  1 9 3 3 9 9;
	setAttr -s 6 ".kix[5]"  0.019807688891887665;
	setAttr -s 6 ".kiy[5]"  0.99980372190475464;
	setAttr -s 6 ".kox[0:5]"  0.013654232025146484 0.038563806563615799 
		1 1 0.024655887857079506 0.019807688891887665;
	setAttr -s 6 ".koy[0:5]"  -0.99990677833557129 -0.99925613403320313 
		0 0 0.99969601631164551 0.99980378150939941;
createNode animCurveTL -n "animCurveTL260";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 1.2469201745104628 62 1.2469201745104628 
		65 0.83798030683261115 68 0.83798030683261115 71 0.95601252078893639 75 1.2469201745104628;
	setAttr -s 6 ".kit[2:5]"  3 3 9 1;
	setAttr -s 6 ".kot[0:5]"  1 9 3 3 9 9;
	setAttr -s 6 ".kix[5]"  0.0045833084732294083;
	setAttr -s 6 ".kiy[5]"  0.99998956918716431;
	setAttr -s 6 ".kox[0:5]"  0.016996290534734726 0.0057057174853980541 
		1 1 0.0057057174853980541 0.0045833084732294083;
	setAttr -s 6 ".koy[0:5]"  0.999855637550354 -0.99998372793197632 
		0 0 0.99998372793197632 0.99998950958251953;
createNode animCurveTA -n "animCurveTA686";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 181.69013058821045 62 177.27685799285413 
		65 18.612877578122937 68 18.612877578122937 71 9.8097479354444417 75 -11.886851870004584;
	setAttr -s 6 ".kit[2:5]"  3 3 9 1;
	setAttr -s 6 ".kot[2:5]"  3 3 9 9;
	setAttr -s 6 ".kix[0:5]"  0.99847900867462158 0.45062592625617981 
		1 1 0.40145853161811829 0.33211702108383179;
	setAttr -s 6 ".kiy[0:5]"  0.055132746696472168 -0.89271289110183716 
		0 0 -0.91587722301483154 -0.94323819875717163;
	setAttr -s 6 ".kox[0:5]"  0.99847900867462158 0.4506259560585022 
		1 1 0.40145853161811829 0.33211702108383179;
	setAttr -s 6 ".koy[0:5]"  0.05513283982872963 -0.89271283149719238 
		0 0 -0.91587722301483154 -0.94323819875717163;
createNode animCurveTA -n "animCurveTA687";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 183.27918254861703 62 185.17112214049311 
		65 60.295396029145707 68 60.295396029145707 71 43.011511193316416 75 0.412847326294145;
	setAttr -s 6 ".kit[0:5]"  9 1 3 3 9 1;
	setAttr -s 6 ".kot[0:5]"  1 1 3 3 9 9;
	setAttr -s 6 ".kix[1:5]"  0.5175776481628418 1 1 0.21788990497589111 
		0.17651911079883575;
	setAttr -s 6 ".kiy[1:5]"  -0.85563623905181885 0 0 -0.97597336769104004 
		-0.98429721593856812;
	setAttr -s 6 ".kox[0:5]"  0.43077263236045837 0.51757818460464478 
		1 1 0.21788990497589111 0.17651911079883575;
	setAttr -s 6 ".koy[0:5]"  0.90246051549911499 -0.85563594102859497 
		0 0 -0.97597336769104004 -0.98429721593856812;
createNode animCurveTA -n "animCurveTA688";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 198.26567381357478 62 178.54464657921028 
		65 30.340822978440876 68 30.340822978440876 71 21.66505200996145 75 0.2823453568505262;
	setAttr -s 6 ".kit[2:5]"  3 3 9 1;
	setAttr -s 6 ".kot[0:5]"  1 9 3 3 9 9;
	setAttr -s 6 ".kix[5]"  0.33644410967826843;
	setAttr -s 6 ".kiy[5]"  -0.9417034387588501;
	setAttr -s 6 ".kox[0:5]"  0.25762501358985901 0.079361967742443085 
		1 1 0.40638443827629089 0.33644410967826843;
	setAttr -s 6 ".koy[0:5]"  0.96624499559402466 -0.99684584140777588 
		0 0 -0.91370218992233276 -0.9417034387588501;
createNode animCurveTA -n "animCurveTA689";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA690";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA691";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA692";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA693";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA694";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTL -n "animCurveTL261";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -0.074875046720990754 62 -0.074875046720990754 
		65 -0.35269763867851345 68 -0.35269763867851345 71 -0.24529449541601303 75 
		-0.074875046720990754;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.0078235948458313942;
	setAttr -s 6 ".kiy[5]"  0.99996942281723022;
	setAttr -s 6 ".kox[0:5]"  0.0095980092883110046 0.0083983484655618668 
		0.0071986517868936062 0.018618201836943626 0.0083983484655618668 0.0078235948458313942;
	setAttr -s 6 ".koy[0:5]"  0.99995392560958862 -0.99996471405029297 
		-0.99997407197952271 0.99982666969299316 0.99996471405029297 0.99996942281723022;
createNode animCurveTL -n "animCurveTL262";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0.55075855956964637 62 0.55075855956964637 
		65 0.15626045161873151 68 0.15626045161873151 71 0.30876905585186293 75 0.55075855956964637;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.0055097984150052071;
	setAttr -s 6 ".kiy[5]"  0.99998480081558228;
	setAttr -s 6 ".kox[0:5]"  0.0067594889551401138 0.0059145847335457802 
		0.0050696674734354019 0.013112886808812618 0.0059145847335457802 0.0055097984150052071;
	setAttr -s 6 ".koy[0:5]"  0.99997717142105103 -0.99998253583908081 
		-0.99998712539672852 0.99991405010223389 0.99998253583908081 0.99998480081558228;
createNode animCurveTL -n "animCurveTL263";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0.60469110097969292 62 0.60469110097969292 
		65 0.73633848583128414 68 0.73633848583128414 71 0.68544506272378058 75 0.60469110097969292;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.016508810222148895;
	setAttr -s 6 ".kiy[5]"  -0.99986374378204346;
	setAttr -s 6 ".kox[0:5]"  0.020251976326107979 0.017721330747008324 
		0.015190345235168934 0.039267498999834061 0.017721330747008324 0.016508810222148895;
	setAttr -s 6 ".koy[0:5]"  -0.99979490041732788 0.99984294176101685 
		0.99988460540771484 -0.99922871589660645 -0.99984294176101685 -0.99986374378204346;
createNode animCurveTL -n "animCurveTL264";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0.019751971155700085 62 0.19590086027025574 
		65 -0.52349416960826733 68 -0.52349416960826733 71 -0.31348122137069989 75 
		0.019751971155700085;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.0040011708624660969;
	setAttr -s 6 ".kiy[5]"  0.9999920129776001;
	setAttr -s 6 ".kox[0:5]"  0.064130961894989014 0.0042951279319822788 
		0.0027801031246781349 0.0095227900892496109 0.0042951279319822788 0.0040011708624660969;
	setAttr -s 6 ".koy[0:5]"  -0.99794149398803711 -0.99999076128005981 
		-0.9999961256980896 0.99995464086532593 0.99999076128005981 0.9999920129776001;
createNode animCurveTL -n "animCurveTL265";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0.012406585471724105 62 0.017652438613065886 
		65 -0.240860269443085 68 -0.240860269443085 71 -0.14295010417114498 75 0.012406585471724105;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.0085820853710174561;
	setAttr -s 6 ".kiy[5]"  0.99996316432952881;
	setAttr -s 6 ".kox[0:5]"  0.017116986215114594 0.0092125525698065758 
		0.0077363313175737858 0.020422628149390221 0.0092125525698065758 0.0085820853710174561;
	setAttr -s 6 ".koy[0:5]"  -0.99985349178314209 -0.99995756149291992 
		-0.99997007846832275 0.99979144334793091 0.99995756149291992 0.99996316432952881;
createNode animCurveTL -n "animCurveTL266";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0.75331407968996078 62 0.73760427758831237 
		65 1.132722306966307 68 1.132722306966307 71 0.98604728195004021 75 0.75331407968996078;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.0057289274409413338;
	setAttr -s 6 ".kiy[5]"  -0.99998360872268677;
	setAttr -s 6 ".kox[0:5]"  0.0076997797004878521 0.0061498116701841354 
		0.0050617135129868984 0.013634318485856056 0.0061498116701841354 0.0057289274409413338;
	setAttr -s 6 ".koy[0:5]"  -0.99997037649154663 0.9999811053276062 
		0.99998718500137329 -0.99990707635879517 -0.9999811053276062 -0.99998360872268677;
createNode animCurveTL -n "animCurveTL267";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -1.5635928442071969 62 -1.5635928442071969 
		65 -1.3290517715475119 68 -1.3290517715475119 71 -1.3509118024133042 75 -1.5635928442071969;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.0062690465711057186;
	setAttr -s 6 ".kiy[5]"  -0.99998033046722412;
	setAttr -s 6 ".kox[0:5]"  1 0.0099480142816901207 0.0085269808769226074 
		0.091110646724700928 0.0099480142816901207 0.0062690465711057186;
	setAttr -s 6 ".koy[0:5]"  0 0.99995052814483643 0.99996364116668701 
		-0.99584078788757324 -0.99995052814483643 -0.99998033046722412;
createNode animCurveTL -n "animCurveTL268";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 1.6301872490017639 62 1.6301872490017639 
		65 1.7050744326560479 68 1.7050744326560479 71 1.6761238754107435 75 1.6301872490017639;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.02901327982544899;
	setAttr -s 6 ".kiy[5]"  -0.99957901239395142;
	setAttr -s 6 ".kox[0:5]"  0.071404285728931427 0.031142864376306534 
		0.026697320863604546 0.06891903281211853 0.031142864376306534 0.02901327982544899;
	setAttr -s 6 ".koy[0:5]"  -0.9974474310874939 0.99951493740081787 
		0.99964356422424316 -0.99762225151062012 -0.99951493740081787 -0.99957901239395142;
createNode animCurveTL -n "animCurveTL269";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0.73013898316637194 62 0.73013898316637194 
		65 0.83682664569260323 68 0.83682664569260323 71 0.80591492419204069 75 0.73013898316637194;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.017593013122677803;
	setAttr -s 6 ".kiy[5]"  -0.99984520673751831;
	setAttr -s 6 ".kox[0:5]"  1 0.021865464746952057 0.018743017688393593 
		0.064565375447273254 0.021865464746952057 0.017593013122677803;
	setAttr -s 6 ".koy[0:5]"  0 0.99976092576980591 0.99982434511184692 
		-0.99791347980499268 -0.99976092576980591 -0.99984520673751831;
createNode animCurveTA -n "animCurveTA695";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 174.54238788346808 62 174.54238788346808 
		65 179.30632766036794 68 179.30632766036794 71 177.46464128994555 75 174.54238788346808;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.93399912118911743;
	setAttr -s 6 ".kiy[5]"  -0.35727521777153015;
	setAttr -s 6 ".kox[0:5]"  0.95754134654998779 0.94198065996170044 
		0.92338299751281738 0.98732990026473999 0.94198065996170044 0.93399912118911743;
	setAttr -s 6 ".koy[0:5]"  -0.2882959246635437 0.33566716313362122 
		0.38388001918792725 -0.15868115425109863 -0.33566716313362122 -0.35727521777153015;
createNode animCurveTA -n "animCurveTA696";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 177.08575610971633 62 177.08575610971633 
		65 150.31994830928497 68 150.31994830928497 71 160.66731357297721 75 177.08575610971633;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.42186486721038818;
	setAttr -s 6 ".kiy[5]"  0.90665870904922485;
	setAttr -s 6 ".kox[0:5]"  0.21666555106639862 0.44684216380119324 
		0.3935738205909729 0.74219411611557007 0.44684216380119324 0.4218648374080658;
	setAttr -s 6 ".koy[0:5]"  0.97624588012695313 -0.89461278915405273 
		-0.91929298639297485 0.67018496990203857 0.89461278915405273 0.90665870904922485;
createNode animCurveTA -n "animCurveTA697";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 179.28558162986903 62 179.28558162986903 
		65 174.71350150891936 68 174.71350150891936 71 176.4810171113505 75 179.28558162986903;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.93873971700668335;
	setAttr -s 6 ".kiy[5]"  0.34462690353393555;
	setAttr -s 6 ".kox[0:5]"  0.97854119539260864 0.94619715213775635 
		0.92880004644393921 0.98831242322921753 0.94619715213775635 0.93873971700668335;
	setAttr -s 6 ".koy[0:5]"  -0.20605140924453735 -0.3235907256603241 
		-0.3705812394618988 0.1524420827627182 0.3235907256603241 0.34462690353393555;
createNode animCurveTA -n "animCurveTA698";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA699";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA700";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA701";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA702";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA703";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA704";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA705";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA706";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA707";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA708";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA709";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA710";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA711";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA712";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA713";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA714";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA715";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA716";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA717";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA718";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0 62 0 65 0 68 0 71 0 75 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA719";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0 62 0 65 0 68 0 71 0 75 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA720";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0 62 0 65 0 68 0 71 0 75 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA721";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0 62 0 65 0 68 0 71 0 75 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA722";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0 62 0 65 0 68 0 71 0 75 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA723";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -3.3888168548739612 62 4.4268211071627599 
		65 0.52838357948193126 68 0.52838357948193126 71 -14.100959844808466 75 -37.313732430097119;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.31261065602302551;
	setAttr -s 6 ".kiy[5]"  -0.94988131523132324;
	setAttr -s 6 ".kox[0:5]"  0.34373906254768372 0.95965379476547241 
		0.94671422243118286 0.6166454553604126 0.33310756087303162 0.31261065602302551;
	setAttr -s 6 ".koy[0:5]"  0.93906521797180176 0.28118422627449036 
		-0.32207489013671875 -0.78724104166030884 -0.94288885593414307 -0.94988131523132324;
createNode animCurveTL -n "animCurveTL270";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -0.5198069948790518 62 -0.5198069948790518 
		65 -0.5198069948790518 68 -0.5198069948790518 71 -0.5198069948790518 75 -0.5198069948790518;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL271";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -0.72394202659893114 62 -0.72394202659893114 
		65 -0.72394202659893114 68 -0.72394202659893114 71 -0.72394202659893114 75 
		-0.72394202659893114;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL272";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0.36439499068905612 62 0.36439499068905612 
		65 0.36439499068905612 68 0.36439499068905612 71 0.36439499068905612 75 0.36439499068905612;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA724";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 7.7976222737965299 62 7.7976222737965299 
		65 7.7976222737965299 68 7.7976222737965299 71 7.7976222737965299 75 7.7976222737965299;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA725";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 30.409274105849079 62 30.409274105849079 
		65 30.409274105849079 68 30.409274105849079 71 30.409274105849079 75 30.409274105849079;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA726";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 64.859940280210878 62 64.859940280210878 
		65 64.859940280210878 68 64.859940280210878 71 64.859940280210878 75 64.859940280210878;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL273";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0.43524234076486068 62 0.43524234076486068 
		65 0.43524234076486068 68 0.43524234076486068 71 0.43524234076486068 75 0.43524234076486068;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL274";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -0.82665738350180629 62 -0.82665738350180629 
		65 -0.82665738350180629 68 -0.82665738350180629 71 -0.82665738350180629 75 
		-0.82665738350180629;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL275";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0.27773886459742925 62 0.27773886459742925 
		65 0.27773886459742925 68 0.27773886459742925 71 0.27773886459742925 75 0.27773886459742925;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA727";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0 62 0 65 0 68 0 71 0 75 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA728";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -28.652637602052774 62 -28.652637602052774 
		65 -28.652637602052774 68 -28.652637602052774 71 -28.652637602052774 75 -28.652637602052774;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA729";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -64.676908227303443 62 -64.676908227303443 
		65 -64.676908227303443 68 -64.676908227303443 71 -64.676908227303443 75 -64.676908227303443;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL276";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -3.0863695884901468 62 -3.0863695884901468 
		65 -3.0683492111446515 68 -3.0683492111446515 71 -3.075315689515755 75 -3.0863695884901468;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.11975308507680893;
	setAttr -s 6 ".kiy[5]"  -0.99280369281768799;
	setAttr -s 6 ".kox[0:5]"  0.0055773970670998096 0.12841105461120605 
		0.11030816286802292 0.27594262361526489 0.12841105461120605 0.11975307762622833;
	setAttr -s 6 ".koy[0:5]"  0.99998444318771362 0.99172103404998779 
		0.99389743804931641 -0.9611741304397583 -0.99172103404998779 -0.99280369281768799;
createNode animCurveTL -n "animCurveTL277";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 2.8280620058478134 62 2.8280620058478134 
		65 3.1372887388134814 68 3.1372887388134814 71 3.0177451056857563 75 2.8280620058478134;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.0070290956646203995;
	setAttr -s 6 ".kiy[5]"  -0.99997532367706299;
	setAttr -s 6 ".kox[0:5]"  0.0038190840277820826 0.0075454888865351677 
		0.0064676105976104736 0.016727952286601067 0.0075454888865351677 0.0070290956646203995;
	setAttr -s 6 ".koy[0:5]"  -0.9999927282333374 0.99997150897979736 
		0.99997907876968384 -0.99986004829406738 -0.99997150897979736 -0.99997532367706299;
createNode animCurveTL -n "animCurveTL278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 1.3743174019124913 62 1.3743174019124913 
		65 1.3870099995548537 68 1.3870099995548537 71 1.3821031818425862 75 1.3743174019124913;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.1687951385974884;
	setAttr -s 6 ".kiy[5]"  -0.98565107583999634;
	setAttr -s 6 ".kox[0:5]"  0.012692028656601906 0.18080441653728485 
		0.15565167367458344 0.37744677066802979 0.18080441653728485 0.1687951385974884;
	setAttr -s 6 ".koy[0:5]"  -0.99991953372955322 0.98351907730102539 
		0.98781198263168335 -0.92603129148483276 -0.98351907730102539 -0.98565113544464111;
createNode animCurveTA -n "animCurveTA730";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -289.32705458658057 62 -289.32705458658057 
		65 -352.48794805987222 68 -352.48794805987222 71 -328.0706449069915 75 -289.32705458658057;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.1934545487165451;
	setAttr -s 6 ".kiy[5]"  0.98110926151275635;
	setAttr -s 6 ".kox[0:5]"  0.079561963677406311 0.20707803964614868 
		0.17851381003856659 0.42484554648399353 0.20707803964614868 0.1934545487165451;
	setAttr -s 6 ".koy[0:5]"  -0.99682992696762085 -0.97832441329956055 
		-0.98393738269805908 0.90526586771011353 0.97832441329956055 0.98110926151275635;
createNode animCurveTA -n "animCurveTA731";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 78.025696653953162 62 78.025696653953162 
		65 31.856636377144739 68 31.856636377144739 71 49.705084592774774 75 78.025696653953162;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.26043939590454102;
	setAttr -s 6 ".kiy[5]"  0.96549022197723389;
	setAttr -s 6 ".kox[0:5]"  0.98972314596176147 0.2781403660774231 
		0.24089093506336212 0.54026222229003906 0.2781403660774231 0.26043939590454102;
	setAttr -s 6 ".koy[0:5]"  -0.14299692213535309 -0.96054041385650635 
		-0.97055220603942871 0.84149670600891113 0.96054041385650635 0.96549022197723389;
createNode animCurveTA -n "animCurveTA732";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -291.60556142958035 62 -291.60556142958035 
		65 -336.90040885946991 68 -336.90040885946991 71 -319.38992228814601 75 -291.60556142958035;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.26511579751968384;
	setAttr -s 6 ".kiy[5]"  0.96421658992767334;
	setAttr -s 6 ".kox[0:5]"  0.061491779983043671 0.28308218717575073 
		0.24526308476924896 0.54758381843566895 0.28308218717575073 0.26511579751968384;
	setAttr -s 6 ".koy[0:5]"  -0.99810761213302612 -0.95909565687179565 
		-0.96945655345916748 0.83675086498260498 0.95909565687179565 0.96421658992767334;
createNode animCurveTL -n "animCurveTL279";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -1.6271037814455833 62 -1.6278370649645217 
		65 -0.62091559422340814 68 -0.62091559422340814 71 -0.86653846563480585 75 
		-1.6271037814455833;
	setAttr -s 6 ".kit[0:5]"  9 9 3 3 1 1;
	setAttr -s 6 ".kot[0:5]"  1 9 3 3 1 9;
	setAttr -s 6 ".kix[4:5]"  0.0032476233318448067 0.0017530793556943536;
	setAttr -s 6 ".kiy[4:5]"  -0.99999475479125977 -0.99999845027923584;
	setAttr -s 6 ".kox[0:5]"  0.053231846541166306 0.0023189766798168421 
		1 1 0.003247769083827734 0.0017530794721096754;
	setAttr -s 6 ".koy[0:5]"  0.99858218431472778 0.99999731779098511 
		0 0 -0.99999475479125977 -0.99999845027923584;
createNode animCurveTL -n "animCurveTL280";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 2.7705731094868087 62 2.7705731094868087 
		65 3.1468028248102473 68 3.1468028248102473 71 3.0382117334735659 75 2.7705731094868087;
	setAttr -s 6 ".kit[2:5]"  3 3 9 1;
	setAttr -s 6 ".kot[0:5]"  1 9 3 3 9 9;
	setAttr -s 6 ".kix[5]"  0.0049817808903753757;
	setAttr -s 6 ".kiy[5]"  -0.99998760223388672;
	setAttr -s 6 ".kox[0:5]"  0.02721714973449707 0.0062017655000090599 
		1 1 0.0062017655000090599 0.0049817808903753757;
	setAttr -s 6 ".koy[0:5]"  -0.99962961673736572 0.99998074769973755 
		0 0 -0.99998074769973755 -0.99998760223388672;
createNode animCurveTL -n "animCurveTL281";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 1.3539016396211039 62 1.3933269805629567 
		65 1.6536319157376576 68 1.6536319157376576 71 1.6073783034490623 75 1.3539016396211039;
	setAttr -s 6 ".kit[2:5]"  3 3 9 1;
	setAttr -s 6 ".kot[0:5]"  1 9 3 3 9 9;
	setAttr -s 6 ".kix[5]"  0.0052601099014282227;
	setAttr -s 6 ".kiy[5]"  -0.99998617172241211;
	setAttr -s 6 ".kox[0:5]"  0.10616359114646912 0.0077845402993261814 
		1 1 0.0077845402993261814 0.0052601099014282227;
	setAttr -s 6 ".koy[0:5]"  -0.99434870481491089 0.9999697208404541 
		0 0 -0.9999697208404541 -0.99998617172241211;
createNode animCurveTA -n "animCurveTA733";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 250.83959839023345 62 229.11415303112074 
		65 -37.113242876762513 68 -37.113242876762513 71 -34.56237736751239 75 250.83959839023345;
	setAttr -s 6 ".kit[2:5]"  3 3 9 1;
	setAttr -s 6 ".kot[0:5]"  1 9 3 3 9 9;
	setAttr -s 6 ".kix[5]"  0.026757709681987762;
	setAttr -s 6 ".kiy[5]"  0.99964195489883423;
	setAttr -s 6 ".kox[0:5]"  0.062775202095508575 0.046377837657928467 
		1 1 0.046377837657928467 0.026757709681987762;
	setAttr -s 6 ".koy[0:5]"  0.99802768230438232 -0.99892395734786987 
		0 0 0.99892395734786987 0.99964195489883423;
createNode animCurveTA -n "animCurveTA734";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -103.01583934526647 62 -107.01634328827964 
		65 -63.19601559154534 68 -63.19601559154534 71 -41.906415676808301 75 -103.01583934526647;
	setAttr -s 6 ".kit[2:5]"  3 3 9 1;
	setAttr -s 6 ".kot[0:5]"  1 9 3 3 9 9;
	setAttr -s 6 ".kix[5]"  0.12404689937829971;
	setAttr -s 6 ".kiy[5]"  -0.99227637052536011;
	setAttr -s 6 ".kox[0:5]"  0.43937870860099792 0.31827840209007263 
		1 1 0.31827840209007263 0.12404689937829971;
	setAttr -s 6 ".koy[0:5]"  -0.89830195903778076 0.94799727201461792 
		0 0 -0.94799727201461792 -0.99227637052536011;
createNode animCurveTA -n "animCurveTA735";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -302.96452093104568 62 -287.36395118176279 
		65 5.4106881398725593 68 5.4106881398725593 71 -0.057026378959876972 75 -302.96452093104568;
	setAttr -s 6 ".kit[2:5]"  3 3 9 1;
	setAttr -s 6 ".kot[0:5]"  1 9 3 3 9 9;
	setAttr -s 6 ".kix[5]"  0.025212353095412254;
	setAttr -s 6 ".kiy[5]"  -0.99968212842941284;
	setAttr -s 6 ".kox[0:5]"  0.063800409436225891 0.043312396854162216 
		1 1 0.043312396854162216 0.025212351232767105;
	setAttr -s 6 ".koy[0:5]"  -0.99796265363693237 0.99906158447265625 
		0 0 -0.99906158447265625 -0.99968212842941284;
createNode animCurveTL -n "animCurveTL282";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0.77290696453185026 62 0.77290696453185026 
		65 0.77290696453185026 68 0.77290696453185026 71 0.77290696453185026 75 0.77290696453185026;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL283";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -0.71234308293286885 62 -0.71234308293286885 
		65 -0.71234308293286885 68 -0.71234308293286885 71 -0.71234308293286885 75 
		-0.71234308293286885;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -0.35872267288917942 62 -0.35872267288917942 
		65 -0.35872267288917942 68 -0.35872267288917942 71 -0.35872267288917942 75 
		-0.35872267288917942;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL285";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -0.20338426019301348 62 -0.20338426019301348 
		65 -0.20338426019301348 68 -0.20338426019301348 71 -0.20338426019301348 75 
		-0.20338426019301348;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL286";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -0.41773512668589569 62 -0.41773512668589569 
		65 -0.41773512668589569 68 -0.41773512668589569 71 -0.41773512668589569 75 
		-0.41773512668589569;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "animCurveTL287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -0.84883719224141618 62 -0.84883719224141618 
		65 -0.84883719224141618 68 -0.84883719224141618 71 -0.84883719224141618 75 
		-0.84883719224141618;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA736";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -0.061808866237337522 62 -0.061808866237337522 
		65 -0.061808866237337522 68 -0.061808866237337522 71 -0.061808866237337522 
		75 -0.061808866237337522;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA737";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -59.058178941076754 62 -59.058178941076754 
		65 -59.058178941076754 68 -59.058178941076754 71 -59.058178941076754 75 -59.058178941076754;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA738";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 16.579147429757843 62 16.579147429757843 
		65 16.579147429757843 68 16.579147429757843 71 16.579147429757843 75 16.579147429757843;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA739";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 12.253734489678925 62 12.253734489678925 
		65 12.253734489678925 68 12.253734489678925 71 12.253734489678925 75 12.253734489678925;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA740";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -65.746751280844961 62 -65.746751280844961 
		65 -65.746751280844961 68 -65.746751280844961 71 -65.746751280844961 75 -65.746751280844961;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA741";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0 62 0 65 0 68 0 71 0 75 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA742";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 15.711328223519057 62 15.711328223519057 
		65 15.711328223519057 68 15.711328223519057 71 15.711328223519057 75 15.711328223519057;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA743";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 8.5572674112203622 62 8.5572674112203622 
		65 8.5572674112203622 68 8.5572674112203622 71 8.5572674112203622 75 8.5572674112203622;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA744";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0 62 0 65 0 68 0 71 0 75 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA745";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0 62 0 65 0 68 0 71 0 75 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA746";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0 62 0 65 0 68 0 71 0 75 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA747";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0 62 0 65 0 68 0 71 0 75 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA748";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0 62 0 65 0 68 0 71 0 75 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA749";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0 62 0 65 0 68 0 71 0 75 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA750";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 8.2533422302317216 62 8.2533422302317216 
		65 8.2533422302317216 68 8.2533422302317216 71 8.2533422302317216 75 8.2533422302317216;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA751";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 23.263402056531085 62 23.263402056531085 
		65 23.263402056531085 68 23.263402056531085 71 23.263402056531085 75 23.263402056531085;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA752";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 20.166277752815617 62 20.166277752815617 
		65 20.166277752815617 68 20.166277752815617 71 20.166277752815617 75 20.166277752815617;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA753";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0 62 0 65 0.66218954972114974 
		68 0.66218954972114974 71 0.40619440054628614 75 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.99858945608139038;
	setAttr -s 6 ".kiy[5]"  -0.053095713257789612;
	setAttr -s 6 ".kox[0:5]"  1 0.99877554178237915 0.99833452701568604 
		0.99975055456161499 0.99877554178237915 0.99858945608139038;
	setAttr -s 6 ".koy[0:5]"  0 0.049471016973257065 0.057690698653459549 
		-0.02233421802520752 -0.049471016973257065 -0.053095713257789612;
createNode animCurveTA -n "animCurveTA754";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0 62 0 65 -0.31444237047620055 
		68 -0.31444237047620055 71 -0.1928824314802991 75 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.99968141317367554;
	setAttr -s 6 ".kiy[5]"  0.025240203365683556;
	setAttr -s 6 ".kox[0:5]"  1 0.99972349405288696 0.99962371587753296 
		0.99994373321533203 0.99972349405288696 0.99968141317367554;
	setAttr -s 6 ".koy[0:5]"  0 -0.023513732478022575 -0.02742994949221611 
		0.010607508942484856 0.023513732478022575 0.025240203365683556;
createNode animCurveTA -n "animCurveTA755";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 33.429092416277157 62 33.429092416277157 
		65 80.295923838798501 68 80.295923838798501 71 62.177725661745569 75 33.429092416277157;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.25681942701339722;
	setAttr -s 6 ".kiy[5]"  -0.96645933389663696;
	setAttr -s 6 ".kox[0:5]"  1 0.27431309223175049 0.23750823736190796 
		0.53452920913696289 0.27431309223175049 0.25681942701339722;
	setAttr -s 6 ".koy[0:5]"  0 0.96164041757583618 0.97138553857803345 
		-0.84514999389648438 -0.96164041757583618 -0.96645939350128174;
createNode animCurveTA -n "animCurveTA756";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA757";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA758";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA759";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA760";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA761";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 13.994403295754109 75 13.994403295754109;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA762";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA763";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 0 75 0;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA764";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  58 13.994403295754109 75 13.994403295754109;
	setAttr -s 2 ".kit[0:1]"  1 9;
	setAttr -s 2 ".kix[0:1]"  1 1;
	setAttr -s 2 ".kiy[0:1]"  0 0;
createNode animCurveTA -n "animCurveTA765";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0 62 0 65 0 68 0 71 0 75 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA766";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0 62 0 65 0 68 0 71 0 75 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA767";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 17.254116939558369 62 17.254116939558369 
		65 17.254116939558369 68 17.254116939558369 71 17.254116939558369 75 17.254116939558369;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA768";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0 62 0 65 0 68 0 71 0 75 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA769";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0 62 0 65 0 68 0 71 0 75 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA770";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0 62 0 65 0 68 0 71 0 75 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA771";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 1.1194393253971167 62 1.1194393253971167 
		65 -8.0007175198689708 68 -8.0007175198689708 71 -4.4749658464823172 75 1.1194393253971167;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.80680012702941895;
	setAttr -s 6 ".kiy[5]"  0.5908244252204895;
	setAttr -s 6 ".kox[0:5]"  0.50741970539093018 0.82608586549758911 
		0.78243738412857056 0.95578235387802124 0.82608586549758911 0.80680012702941895;
	setAttr -s 6 ".koy[0:5]"  0.86169904470443726 -0.56354427337646484 
		-0.62272924184799194 0.29407501220703125 0.56354427337646484 0.5908244252204895;
createNode animCurveTA -n "animCurveTA772";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0.79177851977637925 62 0.79177851977637925 
		65 -6.5705051018479628 68 -6.5705051018479628 71 -3.7243277445819234 75 0.79177851977637925;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.86083310842514038;
	setAttr -s 6 ".kiy[5]"  0.50888735055923462;
	setAttr -s 6 ".kox[0:5]"  0.98483562469482422 0.87595778703689575 
		0.84132260084152222 0.9705122709274292 0.87595778703689575 0.86083310842514038;
	setAttr -s 6 ".koy[0:5]"  -0.17349004745483398 -0.48238778114318848 
		-0.54053330421447754 0.24105179309844971 0.48238778114318848 0.50888735055923462;
createNode animCurveTA -n "animCurveTA773";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -5.3206070149252218 62 -5.3206070149252218 
		65 18.282126247850268 68 18.282126247850268 71 9.1575705573719759 75 -5.3206070149252218;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.46667158603668213;
	setAttr -s 6 ".kiy[5]"  -0.88443076610565186;
	setAttr -s 6 ".kox[0:5]"  0.78019082546234131 0.49284884333610535 
		0.43674889206886292 0.78229105472564697 0.49284884333610535 0.46667158603668213;
	setAttr -s 6 ".koy[0:5]"  -0.6255415678024292 0.87011492252349854 
		0.89958345890045166 -0.62291306257247925 -0.87011492252349854 -0.88443070650100708;
createNode animCurveTA -n "animCurveTA774";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -10.539668290537461 62 -10.539668290537461 
		65 20.785773407594903 68 20.785773407594903 71 8.6757037831791788 75 -10.539668290537461;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.36944252252578735;
	setAttr -s 6 ".kiy[5]"  -0.92925357818603516;
	setAttr -s 6 ".kox[0:5]"  0.99831211566925049 0.39252546429634094 
		0.34354525804519653 0.68731647729873657 0.39252546429634094 0.36944252252578735;
	setAttr -s 6 ".koy[0:5]"  0.058076731860637665 0.91974115371704102 
		0.93913614749908447 -0.72635811567306519 -0.91974115371704102 -0.92925357818603516;
createNode animCurveTA -n "animCurveTA775";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 1.5689908364745389 62 1.5689908364745389 
		65 21.608280529035252 68 21.608280529035252 71 13.861312946623846 75 1.5689908364745389;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.52784764766693115;
	setAttr -s 6 ".kiy[5]"  -0.8493390679359436;
	setAttr -s 6 ".kox[0:5]"  0.9854167103767395 0.55497288703918457 
		0.4964044988155365 0.82844489812850952 0.55497288703918457 0.52784764766693115;
	setAttr -s 6 ".koy[0:5]"  0.17015841603279114 0.83186846971511841 
		0.86809134483337402 -0.56007057428359985 -0.83186846971511841 -0.8493390679359436;
createNode animCurveTA -n "animCurveTA776";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 23.364629078789338 62 23.364629078789338 
		65 -46.898627836852235 68 -46.898627836852235 71 -19.735630029157729 75 23.364629078789338;
	setAttr -s 6 ".kit[0:5]"  1 9 9 9 9 1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[0:5]"  0.7686188817024231 0.18691697716712952 
		0.16096228361129761 0.38869377970695496 0.18691697716712952 0.17452773451805115;
	setAttr -s 6 ".kiy[0:5]"  0.63970696926116943 -0.98237574100494385 
		-0.98696053028106689 0.92136698961257935 0.98237574100494385 0.98465228080749512;
	setAttr -s 6 ".kox[0:5]"  0.76861894130706787 0.18691697716712952 
		0.16096228361129761 0.38869377970695496 0.18691697716712952 0.17452773451805115;
	setAttr -s 6 ".koy[0:5]"  0.63970696926116943 -0.98237574100494385 
		-0.98696053028106689 0.92136698961257935 0.98237574100494385 0.98465228080749512;
createNode animCurveTA -n "animCurveTA777";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0.19211247389617075 62 0.19211247389617075 
		65 0.19211247389617075 68 0.19211247389617075 71 0.19211247389617075 75 0.19211247389617075;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA778";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -3.8855573290219243 62 -3.8855573290219243 
		65 -3.8855573290219243 68 -3.8855573290219243 71 -3.8855573290219243 75 -3.8855573290219243;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA779";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 6.5189136801188905 62 6.5189136801188905 
		65 6.5189136801188905 68 6.5189136801188905 71 6.5189136801188905 75 6.5189136801188905;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA780";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -1.8743497299704743 62 -1.8743497299704743 
		65 -9.1903407733274989 68 -9.1903407733274989 71 -6.3620594985740713 75 -1.8743497299704743;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.86223381757736206;
	setAttr -s 6 ".kiy[5]"  0.50651043653488159;
	setAttr -s 6 ".kox[0:5]"  0.4299180805683136 0.87723821401596069 
		0.84286761283874512 0.97086590528488159 0.87723821401596069 0.86223381757736206;
	setAttr -s 6 ".koy[0:5]"  0.90286791324615479 -0.4800553023815155 
		-0.53812098503112793 0.23962339758872986 0.4800553023815155 0.50651043653488159;
createNode animCurveTA -n "animCurveTA781";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -1.0612592042320197 62 -1.0612592042320197 
		65 2.7147765577410561 68 2.7147765577410561 71 1.2550028776958426 75 -1.0612592042320197;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.95697987079620361;
	setAttr -s 6 ".kiy[5]"  -0.29015433788299561;
	setAttr -s 6 ".kox[0:5]"  0.99989908933639526 0.96235013008117676 
		0.94976383447647095 0.99198341369628906 0.96235013008117676 0.95697987079620361;
	setAttr -s 6 ".koy[0:5]"  -0.014205724932253361 0.27181276679039001 
		0.31296741962432861 -0.12636806070804596 -0.27181276679039001 -0.29015433788299561;
createNode animCurveTA -n "animCurveTA782";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 -14.215067360783555 62 -14.215067360783555 
		65 6.077991782399514 68 6.077991782399514 71 -1.7670802274441331 75 -14.215067360783555;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.52306103706359863;
	setAttr -s 6 ".kiy[5]"  -0.85229521989822388;
	setAttr -s 6 ".kox[0:5]"  0.80171740055084229 0.55014246702194214 
		0.49170488119125366 0.82515299320220947 0.55014246702194214 0.52306103706359863;
	setAttr -s 6 ".koy[0:5]"  -0.59770327806472778 0.83507078886032104 
		0.8707619309425354 -0.56490933895111084 -0.83507078886032104 -0.85229521989822388;
createNode animCurveTA -n "animCurveTA783";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0 62 0 65 0 68 0 71 0 75 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA784";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0 62 0 65 0 68 0 71 0 75 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA785";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 27.080064458283051 62 27.080064458283051 
		65 27.080064458283051 68 27.080064458283051 71 27.080064458283051 75 27.080064458283051;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA786";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 10.423754966968488 62 10.423754966968488 
		65 10.423754966968488 68 10.423754966968488 71 10.423754966968488 75 10.423754966968488;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA787";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 27.722848255843903 62 27.722848255843903 
		65 27.722848255843903 68 27.722848255843903 71 27.722848255843903 75 27.722848255843903;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA788";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 21.576484776388227 62 21.576484776388227 
		65 21.576484776388227 68 21.576484776388227 71 21.576484776388227 75 21.576484776388227;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA789";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0 62 0 65 0 68 0 71 0 75 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA790";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 0 62 0 65 0 68 0 71 0 75 0;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  1;
	setAttr -s 6 ".kiy[5]"  0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "animCurveTA791";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  58 27.911632519594587 62 27.911632519594587 
		65 63.371967490972956 68 63.371967490972956 71 49.663394033611247 75 27.911632519594587;
	setAttr -s 6 ".kit[5]"  1;
	setAttr -s 6 ".kot[0:5]"  1 9 9 9 9 9;
	setAttr -s 6 ".kix[5]"  0.3313673734664917;
	setAttr -s 6 ".kiy[5]"  -0.94350183010101318;
	setAttr -s 6 ".kox[0:5]"  1 0.35277441143989563 0.3074970543384552 
		0.64135110378265381 0.35277441143989563 0.3313673734664917;
	setAttr -s 6 ".koy[0:5]"  0 0.93570840358734131 0.95154905319213867 
		-0.76724749803543091 -0.93570840358734131 -0.94350183010101318;
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
	setAttr ".o" 58;
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
connectAttr "apu_get_into_car_close_door_high_driverSource.st" "clipLibrary1.st[0]"
		;
connectAttr "apu_get_into_car_close_door_high_driverSource.du" "clipLibrary1.du[0]"
		;
connectAttr "animCurveTL247.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL248.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL249.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL250.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL251.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA679.a" "clipLibrary1.cel[0].cev[5].cevr";
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
connectAttr "animCurveTA689.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA690.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA691.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA692.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA693.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA694.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL261.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL262.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL263.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL264.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL265.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL266.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL267.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL268.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL269.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA695.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA696.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA697.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA698.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA699.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA700.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA701.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA702.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA703.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA704.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA705.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA706.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA707.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA708.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA709.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA710.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA711.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA712.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA713.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA714.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA715.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA716.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA717.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA718.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA719.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA720.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA721.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA722.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA723.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTL270.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTL271.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTL272.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA724.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA725.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA726.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL273.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL274.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL275.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA727.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA728.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA729.a" "clipLibrary1.cel[0].cev[87].cevr";
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
connectAttr "animCurveTA750.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA751.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA752.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA753.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA754.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA755.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA756.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA757.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA758.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA759.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA760.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA761.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA762.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA763.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA764.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA765.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA766.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA767.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA768.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA769.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA770.a" "clipLibrary1.cel[0].cev[140].cevr";
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
connectAttr "animCurveTA786.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA787.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA788.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA789.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA790.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA791.a" "clipLibrary1.cel[0].cev[161].cevr";
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
// End of apu_get_into_car_close_door_high_driver.ma
