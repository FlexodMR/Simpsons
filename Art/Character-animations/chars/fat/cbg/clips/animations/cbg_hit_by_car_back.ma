//Maya ASCII 4.0 scene
//Name: cbg_hit_by_car_back.ma
//Last modified: Tue, Jul 30, 2002 02:54:07 PM
requires maya "4.0";
requires "p3dmayaexp" "18.0";
requires "p3dSimpleShader" "18.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "cbg_hit_by_car_backSource";
	setAttr ".ihi" 0;
	setAttr ".du" 41;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL165";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTL -n "animCurveTL166";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 -0.031845372814609536 1 -0.031845372814609536 
		2 -0.031845372814609536 3 -0.031845372814609536 4 -0.031845372814609536 5 
		-0.031845372814609536 6 -0.031845372814609536 7 -0.031845372814609536 8 -0.031845372814609536 
		9 -0.031845372814609536 10 -0.031845372814609536 11 -0.031845372814609536 
		12 -0.031845372814609536 13 -0.031845372814609536 14 -0.031845372814609536 
		15 -0.031845372814609536 16 -0.031845372814609536 17 -0.031845372814609536 
		18 -0.031845372814609536 19 -0.031845372814609536 20 -0.031845372814609536 
		21 -0.031845372814609536 22 -0.031845372814609536 23 -0.031845372814609536 
		24 -0.033735850094177476 25 -0.031845372814609536 26 -0.021482755916489401 
		27 -0.0077592902449293401 28 0.0059641740206852903 29 0.0059641740206852903 
		30 0.0059641740206852903 31 0.0059641740206852903 32 0.0059641740206852903 
		33 0.0059641740206852903 34 0.0059641740206852903 35 0.0059641740206852903 
		36 0.0059641740206852903 37 0.0059641740206852903 38 0.0059641740206852903 
		39 0.0059641740206852903 40 0.0059641740206852903 41 0.0059641740206852903;
createNode animCurveTL -n "animCurveTL168";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0.59164695877696016 1 0.71682755270484211 
		2 0.8435100753894752 3 0.9671887247804597 4 1.0833576988273956 5 1.1837263921075083 
		6 1.2734146480325617 7 1.3680323378039632 8 1.4736043195631985 9 1.584105729431984 
		10 1.6970718555820745 11 1.8240334596942951 12 1.9534597785031595 13 2.0482938127609573 
		14 2.0959083538195502 15 2.1188367776146242 16 2.1327629617742039 17 2.1533707839263134 
		18 2.1831270247051129 19 2.2154675813908087 20 2.2525300065804927 21 2.2930331398376449 
		22 2.3382581400816824 23 2.3941860389436065 24 2.4888755449303797 25 2.5688951455247815 
		26 2.583042679148805 27 2.5734473956640551 28 2.5638521123246774 29 2.5638521123246774 
		30 2.5638521123246774 31 2.5638521123246774 32 2.5638521123246774 33 2.5638521123246774 
		34 2.5638521123246774 35 2.5638521123246774 36 2.5638521123246774 37 2.5638521123246774 
		38 2.5638521123246774 39 2.5638521123246774 40 2.5638521123246774 41 2.5638521123246774;
createNode animCurveTA -n "animCurveTA453";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 
		8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 
		23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 
		0 38 0 39 0 40 0 41 0;
createNode animCurveTU -n "animCurveTU33";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTU -n "animCurveTU34";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTU -n "animCurveTU35";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTU -n "animCurveTU36";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTU -n "animCurveTU37";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 28 1;
createNode animCurveTU -n "animCurveTU38";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 28 1;
createNode animCurveTU -n "animCurveTU39";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTU -n "animCurveTU40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA454";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA455";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA456";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTL -n "animCurveTL170";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTL -n "animCurveTL171";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTL -n "animCurveTL172";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTL -n "animCurveTL173";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -0.19763288944005308 4 -0.19763288944005308 
		7 -0.19763288944005308 8 -0.19763288944005308 9 -0.19763288944005308 10 -0.19763288944005308 
		11 -0.19763288944005308 12 -0.19763288944005308 13 -0.19763288944005308 17 
		-0.19763288944005308 20 -0.19763288944005308 23 -0.19763288944005308 25 -0.19763288944005308 
		28 -0.13089637572580659;
createNode animCurveTL -n "animCurveTL174";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0.14552605892239473 4 0.14552605892239473 
		7 0.33529712356049429 8 0.5100337576383438 9 1.17918106414333 10 1.666159226375844 
		11 2.0046259878704857 12 1.9733610733804521 13 1.5417951755060448 17 0.76438318176218278 
		20 0.28787333458439529 23 0.28787333458439524 25 0.28787333458439524 28 0.25386361095716931;
createNode animCurveTL -n "animCurveTL175";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1.1961929756633671 4 1.1961929756633671 
		7 2.0671582280232164 8 2.6781218022291209 9 3.2017900606909167 10 3.2595056378213956 
		11 3.1018428439051777 12 2.7217355347673533 13 2.547238801021638 17 2.6197972537710648 
		20 2.7786338694969941 23 3.0890872547794932 25 3.2334841781667003 28 3.2726122857941822;
createNode animCurveTA -n "animCurveTA457";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -19.288990945907496 4 -1.0341813060923859 
		7 55.494695170981821 8 24.569379199382425 9 313.3293729397268 10 281.73586506352262 
		11 242.33396146666931 12 202.98076514713449 13 175.7437380771641 17 175.7437380771641 
		20 109.311666811027 23 109.311666811027 25 109.311666811027 28 120.2765210209391;
createNode animCurveTA -n "animCurveTA458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 4 0 7 0 8 0 9 0 10 0 11 0 12 
		0 13 0 17 0 20 0 23 0 25 0 28 0;
createNode animCurveTA -n "animCurveTA459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 0 4 0 7 0 8 0 9 0 10 0 11 0 12 
		0 13 0 17 0 20 0 23 0 25 0 28 0;
createNode animCurveTL -n "animCurveTL176";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.19697756422115981 4 0.19697756422115981 
		5 0.19697756422115981 7 0.19697756422115981 8 0.19697756422115981 9 0.19697756422115981 
		10 0.19697756422115981 13 0.19697756422115981 17 0.19697756422115981 20 0.19697756422115981 
		23 0.19697756422115981 25 0.19697756422115981 28 0.30774412616396013;
createNode animCurveTL -n "animCurveTL177";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.57299516960695085 4 0.26193930023790818 
		5 0.24233125021486288 7 1.008269347651247 8 1.4218921854436957 9 2.0397054685276594 
		10 1.9749171975937754 13 0.7651941573148241 17 0.26246773469379286 20 0.22636850384699078 
		23 0.59458065848437169 25 0.23358835001635112 28 0.22297080503070818;
	setAttr -s 13 ".kit[2:12]"  1 9 1 9 1 9 9 
		9 9 9 9;
	setAttr -s 13 ".kot[2:12]"  1 9 1 9 1 9 9 
		9 9 9 9;
	setAttr -s 13 ".kix[2:12]"  0.0084160137921571732 0.00084777281153947115 
		0.00065615156199783087 0.001205490087158978 0.0011680556926876307 0.001362569397315383 
		0.0043303645215928555 0.006021939218044281 0.22492976486682892 0.0044849454425275326 
		0.093768775463104248;
	setAttr -s 13 ".kiy[2:12]"  0.99996459484100342 0.99999964237213135 
		0.9999997615814209 0.9999992847442627 -0.99999934434890747 -0.99999904632568359 
		-0.99999064207077026 0.99998188018798828 0.97437500953674316 -0.99998992681503296 
		-0.99559402465820313;
	setAttr -s 13 ".kox[2:12]"  0.008416004478931427 0.00084777281153947115 
		0.00065614946652203798 0.001205490087158978 0.0011680962052196264 0.001362569397315383 
		0.0043303645215928555 0.006021939218044281 0.22492976486682892 0.0044849454425275326 
		0.093768775463104248;
	setAttr -s 13 ".koy[2:12]"  0.99996459484100342 0.99999964237213135 
		0.9999997615814209 0.9999992847442627 -0.99999934434890747 -0.99999904632568359 
		-0.99999064207077026 0.99998188018798828 0.97437500953674316 -0.99998992681503296 
		-0.99559402465820313;
createNode animCurveTL -n "animCurveTL178";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.24226175870239405 4 1.3106620139020297 
		5 1.8640491383828675 7 2.910435940999899 8 3.001043561650151 9 2.5375265736458807 
		10 2.1416399901684207 13 2.3960210033111906 17 2.5618688953098818 20 2.8506627420842992 
		23 2.9806199731327845 25 3.2044352043829578 28 3.2697459576696817;
createNode animCurveTA -n "animCurveTA460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 101.83600965070561 4 97.703907111926654 
		5 42.676810731556053 7 -26.131558188273168 8 -72.653169118528425 9 -137.57880253805848 
		10 -166.48842627550852 13 -254.54272553827292 17 -224.54047371109431 20 -224.54047371109431 
		23 -224.54047371109431 25 -212.69855804935844 28 -221.55836357230578;
createNode animCurveTA -n "animCurveTA461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 5 0 7 0 8 0 9 0 10 0 13 
		0 17 0 20 0 23 0 25 0 28 0;
createNode animCurveTA -n "animCurveTA462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 4 0 5 0 7 0 8 0 9 0 10 0 13 
		0 17 0 20 0 23 0 25 0 28 0;
createNode animCurveTA -n "animCurveTA463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA465";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "cbg_Right_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  40 0;
createNode animCurveTA -n "cbg_Right_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  40 0;
createNode animCurveTA -n "cbg_Right_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  40 0;
createNode animCurveTA -n "cbg_Left_Toe_Hoop_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  40 0;
createNode animCurveTA -n "cbg_Left_Toe_Hoop_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  40 0;
createNode animCurveTA -n "cbg_Left_Toe_Hoop_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  40 0;
createNode animCurveTL -n "animCurveTL179";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 7 0 10 0 13 0 17 0 20 0 
		23 0 25 0 28 0;
createNode animCurveTL -n "animCurveTL180";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 7 0 10 0 13 0 17 0 20 0 
		23 0 25 0 28 0;
createNode animCurveTL -n "animCurveTL181";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 4 1 7 1 10 1 13 1 17 1 20 1 
		23 1 25 1 28 1;
createNode animCurveTL -n "animCurveTL182";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 7 0 10 0 13 0 17 0 20 0 
		23 0 25 0 28 0;
createNode animCurveTL -n "animCurveTL183";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 7 0 10 0 13 0 17 0 20 0 
		23 0 25 0 28 0;
createNode animCurveTL -n "animCurveTL184";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 4 1 7 1 10 1 13 1 17 1 20 1 
		23 1 25 1 28 1;
createNode animCurveTL -n "animCurveTL185";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.048692319506319935 4 -0.048692319506319935 
		7 -0.048692319506319935 10 -0.048692319506319935 13 -0.048692319506319935 
		17 -0.048692319506319935 20 -0.048692319506319935 23 -0.048692319506319935 
		25 -0.048692319506319935 28 0.0091193615065254096;
createNode animCurveTL -n "animCurveTL186";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.85503661073851567 4 0.8211191423194798 
		7 1.0246239528336958 10 1.2903107887828114 13 1.0811530668654223 17 0.39703051237082321 
		20 0.70748389765332098 23 0.79412205168564542 25 0.44756943555634587 28 0.42926098354990871;
createNode animCurveTL -n "animCurveTL187";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.90464203133755872 4 1.6564792479595238 
		7 2.0917534260038191 10 2.594862540886187 13 3.131889124187591 17 3.2925542695613217 
		20 3.4441710391178892 23 3.6607664241986995 25 3.927900732465035 28 3.9201898168073668;
createNode animCurveTA -n "animCurveTA469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 20.950825280283908 4 -12.912749798526155 
		7 -68.617415633206832 10 -178.19043339891473 13 -250.10846810016312 17 -285.11429062116787 
		20 -297.23550978608807 23 -282.37354148474412 25 -270.79304697042659 28 -266.38272120628619;
createNode animCurveTA -n "animCurveTA470";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -6.8139232258102842 4 -6.4836511593550137 
		7 -1.5346018236452263 10 6.9202844908520946 13 1.3563470281666916 17 -2.8289827244332661 
		20 -4.1065532452646627 23 -2.5200355625563118 25 -0.62767857764720503 28 
		4.1816836260263512;
createNode animCurveTA -n "animCurveTA471";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1.4726187357019898 4 2.5648190066464776 
		7 6.8002932374325811 10 -0.83725537015185669 13 -6.8379081153312082 17 -6.3732110087124534 
		20 -5.6372521360059444 23 -6.5011247597348376 25 -6.942324640283319 28 -1.4726187357019636;
createNode animCurveTA -n "animCurveTA472";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA473";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA474";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.0984482521620249 28 4.0984482521620249;
createNode animCurveTA -n "animCurveTA475";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.588300303494186 28 18.588300303494186;
createNode animCurveTA -n "animCurveTA476";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA477";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA478";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -22.686733334985114 28 -22.686733334985114;
createNode animCurveTA -n "animCurveTA479";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA480";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA481";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0579251312417477e-005 28 1.0579251312417479e-005;
createNode animCurveTA -n "animCurveTA482";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA483";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA484";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.0984482535121209 28 4.0984482535121209;
createNode animCurveTA -n "animCurveTA485";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.588300300216801 28 18.588300300216805;
createNode animCurveTA -n "animCurveTA486";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA487";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA488";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -22.686733333057838 28 -22.686733333057838;
createNode animCurveTA -n "animCurveTA489";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA490";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA491";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0579251312417477e-005 28 1.0579251312417479e-005;
createNode animCurveTA -n "animCurveTA492";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA493";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA494";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.4782236286598103 28 2.4782236286598098;
createNode animCurveTA -n "animCurveTA495";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA496";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA497";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -26.720521212576141 28 -26.720521212576148;
createNode animCurveTL -n "animCurveTL188";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.99214331096561381 28 -0.99214331096561381;
createNode animCurveTL -n "animCurveTL189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.033841737269357866 28 -0.033841737269357866;
createNode animCurveTL -n "animCurveTL190";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.027201153963313806 28 -0.027201153963313806;
createNode animCurveTA -n "animCurveTA498";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 3.1805546814635164e-015 28 0;
createNode animCurveTA -n "animCurveTA499";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.016273151455886e-014 28 0;
createNode animCurveTA -n "animCurveTA500";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 5.3764496942944332e-016 28 0;
createNode animCurveTL -n "animCurveTL191";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.99214413619678865 28 0.99214413619678865;
createNode animCurveTL -n "animCurveTL192";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.033851474715545553 28 -0.033851474715545553;
createNode animCurveTL -n "animCurveTL193";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.0272011762672867 28 -0.0272011762672867;
createNode animCurveTA -n "animCurveTA501";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 6.3611093629270264e-015 28 0;
createNode animCurveTA -n "animCurveTA502";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.5281705937149269e-014 28 0;
createNode animCurveTA -n "animCurveTA503";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.5365128437888133e-014 28 0;
createNode animCurveTL -n "animCurveTL194";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1.8091891372350974 4 -1.8091891372350974 
		7 -1.8091891372350974 10 -1.8091891372350974 13 -1.8091891372350974 17 -1.8091891372350974 
		20 -1.8091891372350974 23 -1.8091891372350974 25 -1.8091891372350974 28 -1.8091891372350974;
createNode animCurveTL -n "animCurveTL195";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 2.8536629786602403 4 2.8536629786602403 
		7 2.8536629786602403 10 2.8536629786602403 13 2.8536629786602403 17 2.8536629786602403 
		20 2.8536629786602403 23 2.8536629786602403 25 2.8536629786602403 28 2.8536629786602403;
createNode animCurveTL -n "animCurveTL196";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.15898405984075725 4 -0.15898405984075725 
		7 -0.15898405984075725 10 -0.15898405984075725 13 -0.15898405984075725 17 
		-0.15898405984075725 20 -0.15898405984075725 23 -0.15898405984075725 25 -0.15898405984075725 
		28 -0.15898405984075725;
createNode animCurveTA -n "animCurveTA504";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 7 0 10 0 13 0 17 0 20 0 
		23 0 25 0 28 0;
createNode animCurveTA -n "animCurveTA505";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 7 0 10 0 13 0 17 0 20 0 
		23 0 25 0 28 0;
createNode animCurveTA -n "animCurveTA506";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 7 0 10 0 13 0 17 0 20 0 
		23 0 25 0 28 0;
createNode animCurveTL -n "animCurveTL197";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.8091892394754774 4 1.8091892394754774 
		7 1.8091892394754774 10 1.8091892394754774 13 1.8091892394754774 17 1.8091892394754774 
		20 1.8091892394754774 23 1.8091892394754774 25 1.8091892394754774 28 1.8091892394754774;
createNode animCurveTL -n "animCurveTL198";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 2.8536581165404047 4 2.8536581165404047 
		7 2.8536581165404047 10 2.8536581165404047 13 2.8536581165404047 17 2.8536581165404047 
		20 2.8536581165404047 23 2.8536581165404047 25 2.8536581165404047 28 2.8536581165404047;
createNode animCurveTL -n "animCurveTL199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.1589841173218719 4 -0.1589841173218719 
		7 -0.1589841173218719 10 -0.1589841173218719 13 -0.1589841173218719 17 -0.1589841173218719 
		20 -0.1589841173218719 23 -0.1589841173218719 25 -0.1589841173218719 28 -0.1589841173218719;
createNode animCurveTA -n "animCurveTA507";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 7 0 10 0 13 0 17 0 20 0 
		23 0 25 0 28 0;
createNode animCurveTA -n "animCurveTA508";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 7 0 10 0 13 0 17 0 20 0 
		23 0 25 0 28 0;
createNode animCurveTA -n "animCurveTA509";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 7 0 10 0 13 0 17 0 20 0 
		23 0 25 0 28 0;
createNode animCurveTL -n "animCurveTL200";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 7 0 10 0 13 0 17 0 20 0 
		23 0 25 0 28 0;
createNode animCurveTL -n "animCurveTL201";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 7 0 10 0 13 0 17 0 20 0 
		23 0 25 0 28 0;
createNode animCurveTL -n "animCurveTL202";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1 4 -1 7 -1 10 -1 13 -1 17 -1 
		20 -1 23 -1 25 -1 28 -1;
createNode animCurveTL -n "animCurveTL203";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 7 0 10 0 13 0 17 0 20 0 
		23 0 25 0 28 0;
createNode animCurveTL -n "animCurveTL204";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 4 0 7 0 10 0 13 0 17 0 20 0 
		23 0 25 0 28 0;
createNode animCurveTL -n "animCurveTL205";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1 4 -1 7 -1 10 -1 13 -1 17 -1 
		20 -1 23 -1 25 -1 28 -1;
createNode animCurveTA -n "animCurveTA510";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 33.632953330522966 4 30.376280053785379 
		8 65.255206886351516 12 -27.796139875671908 16 -87.692620719129749 20 -68.191431996515249 
		25 -78.805036067177838 28 -72.421658891150543;
createNode animCurveTA -n "animCurveTA511";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -45.161034679655693 4 -8.817379827917053 
		8 27.358982408922728 12 5.4351969745773134 16 13.629581218209591 20 13.14618035476262 
		25 -12.806138941116377 28 8.7748602616270013;
createNode animCurveTA -n "animCurveTA512";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -67.538091601379463 4 -8.040437924205488 
		8 -14.236685720347245 12 39.760186608385091 16 66.047408126039457 20 38.288820139865564 
		25 35.801459138918389 28 21.740523934117991;
createNode animCurveTA -n "animCurveTA513";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -31.91693956427045 4 34.676523470479935 
		8 38.041777582876513 12 -11.027921741264873 16 -83.026935176051964 20 -69.619029127988995 
		25 -81.127916626899051 28 -75.636541039429545;
createNode animCurveTA -n "animCurveTA514";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -29.868546772813136 4 -8.2612398600869668 
		8 15.634512474692066 12 14.110342073749102 16 24.251020585995214 20 4.3875410535678769 
		25 -11.692935136893109 28 -2.980415089488849;
createNode animCurveTA -n "animCurveTA515";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 68.33832602789127 4 -23.529684440536293 
		8 -40.177962621168163 12 19.134946847067855 16 9.5035718784418837 20 59.355189463735989 
		25 39.855641071616454 28 53.010434986386493;
createNode animCurveTA -n "animCurveTA516";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 63.595530963034982 4 63.766648518840491 
		8 20.990832854877951 12 25.725534066317085 16 37.537740424497926 20 50.589334626080003 
		25 63.595530963034982 28 54.683158598271568;
createNode animCurveTA -n "animCurveTA517";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 60.185649943194235 4 59.952319970370318 
		8 17.16332852700846 12 21.228485786276231 16 32.153530605292936 20 44.235445157258326 
		25 60.185649943194235 28 72.338252365348367;
createNode animCurveTA -n "animCurveTA518";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 18.476235154862632 4 18.308791431360476 
		8 18.096275989330632 12 17.840625493560697 16 17.52868937350712 20 17.188419576028046 
		25 18.476235154862632 28 27.197261990409956;
createNode animCurveTA -n "animCurveTA519";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 10.082003051124275 4 10.086598616389356 
		8 10.092431195013795 12 10.099447634038082 16 10.10800885498452 20 10.117347707190264 
		25 10.082003051124275 28 9.8426506888087779;
createNode animCurveTA -n "animCurveTA520";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -4.720189328892868 4 -5.3119468379415187 
		8 -6.0629908779026707 12 -6.9664771241657055 16 -8.0688804099828033 20 -9.2714169811281479 
		25 -4.720189328892868 28 26.10051299282949;
createNode animCurveTA -n "animCurveTA521";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -13.555270109330269 4 -14.286990103487437 
		8 -15.215671080810425 12 -16.332849947297028 16 21.143092037779386 20 6.6564921872836535 
		25 -13.555270109330269 28 24.555145006650083;
createNode animCurveTA -n "animCurveTA522";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 11.615881410206432 4 11.866863012730295 
		8 12.185402651503129 12 12.56859748845268 16 19.420561073259204 20 17.793700167100376 
		25 11.615881410206432 28 -1.456076926206533;
createNode animCurveTA -n "animCurveTA523";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.32159281075535068 4 0.36790572887680306 
		8 0.42668494321105926 12 0.49739479605198572 16 5.9645354933414598 20 4.2576478530001802 
		25 0.32159281075535101 28 -2.0905382112390245;
createNode animCurveTA -n "animCurveTA524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 11.093319219895511 4 11.923086340751917 
		8 12.976206306030063 12 14.243082043495656 16 15.788880853959476 20 17.475087247689814 
		25 11.09331921989552 28 -32.123718040735959;
createNode animCurveTA -n "animCurveTA525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 59.959644693642325 4 60.738239750558115 
		8 61.726413424305186 12 62.915160401467766 16 64.36562931354095 20 65.947846858787855 
		25 59.959644693642325 28 19.407819173437478;
createNode animCurveTA -n "animCurveTA526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 48.106469618696913 4 48.944191260218581 
		8 50.00740693803899 12 51.286427398247703 16 52.847045088850159 20 54.549416611639685 
		25 48.10646961869692 28 4.4751336445171184;
createNode animCurveTA -n "animCurveTA527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 12 0 16 0 20 0 25 0 
		28 0;
createNode animCurveTA -n "animCurveTA528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 12 0 16 0 20 0 25 0 
		28 0;
createNode animCurveTA -n "animCurveTA529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 67.810939637714412 4 69.332437294621258 
		8 71.263484734693691 12 73.586483947460849 16 76.420929488548936 20 79.512832540151621 
		25 67.810939637714412 28 -11.433734901667275;
createNode animCurveTA -n "animCurveTA530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA532";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 28 0;
createNode animCurveTA -n "animCurveTA533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 27.705218915343313 28 27.70521891534332;
createNode animCurveTA -n "animCurveTA534";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 43.35103828268312 28 43.35103828268312;
createNode animCurveTA -n "animCurveTA535";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 54.23572299800319 28 54.235722998003197;
createNode animCurveTA -n "animCurveTA536";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 39.038703285259977 28 39.038703285259977;
createNode animCurveTA -n "animCurveTA537";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 72.755037061650995 28 72.755037061650995;
createNode animCurveTA -n "animCurveTA538";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 38.926480273156798 28 38.926480273156798;
createNode animCurveTA -n "animCurveTA539";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 12 0 16 0 20 0 25 0 
		28 0;
createNode animCurveTA -n "animCurveTA540";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 12 0 16 0 20 0 25 0 
		28 0;
createNode animCurveTA -n "animCurveTA541";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 40.637834425062678 4 41.602483591638901 
		8 42.826792518710853 12 44.299604101048715 16 46.096679034442026 20 48.056985478043615 
		25 40.637834425062678 28 -9.6043099083038612;
createNode animCurveTA -n "animCurveTA542";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1.2945941069882381 4 1.2595483419174429 
		8 1.2150691207006834 12 1.1615617894817725 16 1.0962739447746899 20 1.0250558797323448 
		25 1.2945941069882385 28 3.1198943483277448;
createNode animCurveTA -n "animCurveTA543";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 3.3208811165553147 4 3.3515447476357099 
		8 3.3904622757807181 12 3.4372790380971536 16 3.4944032722021645 20 3.5567162013543649 
		25 3.3208811165553156 28 1.7238169885910806;
createNode animCurveTA -n "animCurveTA544";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -27.525824477859967 4 -28.289873384684601 
		8 -29.259585499232774 12 -30.426123497289268 16 -31.84949378166387 20 -33.402151651330321 
		25 -27.52582447785997 28 12.268388134198542;
createNode animCurveTA -n "animCurveTA545";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -7.7966372458940265 4 -12.066358919823267 
		8 -10.144505349849862 12 -12.145452896018348 16 -10.617045100744541 20 7.4909886243582466 
		25 7.5267679144505912 28 2.8674066212672034;
createNode animCurveTA -n "animCurveTA546";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 -8.2384210969097094 8 -10.214042494025284 
		12 -4.5743681033448995 16 -5.8098719828940597 20 -5.9377625832847318 25 -2.6992861816349754 
		28 8.0224690310320828;
createNode animCurveTA -n "animCurveTA547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.59407764503375837 4 -30.402188893260462 
		8 -40.11336213147073 12 -11.90195017055086 16 -18.691014183387459 20 12.714255895634119 
		25 -12.296206344364318 28 -6.4497274483450688;
createNode animCurveTA -n "animCurveTA548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 12 0 16 0 20 0 25 0 
		28 0;
createNode animCurveTA -n "animCurveTA549";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 12 0 16 0 20 0 25 0 
		28 0;
createNode animCurveTA -n "animCurveTA550";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 12 0 16 0 20 0 25 0 
		28 0;
createNode animCurveTA -n "animCurveTA551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 2.8675763463271986 8 -26.835354584653089 
		12 -31.275928063682962 16 -4.6152348998122763 20 -11.577775684999974 25 -0.71609181370735286 
		28 8.082384738201343;
createNode animCurveTA -n "animCurveTA552";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -8.2806426894500209 4 -4.2995444004216274 
		8 7.3746455355534888 12 8.6169638465558442 16 28.676566855879631 20 -20.407736916241173 
		25 -28.712997580014605 28 -54.42334311221844;
createNode animCurveTA -n "animCurveTA553";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -1.4030948218520338 4 -18.248314585535368 
		8 -32.462111842902388 12 -38.956753161415371 16 7.2133796116270146 20 36.782773643351504 
		25 -24.497676789431953 28 -0.089465668695290962;
createNode animCurveTA -n "animCurveTA554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 -0.92811779511850911 8 -0.59524304563868558 
		12 -0.9946419748136236 16 -1.2644480949145964 20 -2.4697444518587255 25 0 
		28 11.633369793509917;
createNode animCurveTA -n "animCurveTA555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 -2.0736421108239238 8 -1.7464985822244274 
		12 -0.87800499370610641 16 0.54528137961973233 20 0.83171669173262319 25 
		0 28 -8.7236436077397599;
createNode animCurveTA -n "animCurveTA556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 -7.9507675402088669 8 -9.8735541265298039 
		12 0.75542659478842467 16 27.639686729429393 20 21.898250768586067 25 0 28 
		2.4104032148540666;
createNode animCurveTA -n "animCurveTA557";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 12 0 16 0 20 0 25 0 
		28 0;
createNode animCurveTA -n "animCurveTA558";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 12 0 16 0 20 0 25 0 
		28 0;
createNode animCurveTA -n "animCurveTA559";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 66.910735171519136 4 67.783140867060695 
		8 68.890376744497161 12 70.222352295293419 16 71.847583870151666 20 73.620438402470597 
		25 66.910735171519136 28 21.472939016776969;
createNode animCurveTA -n "animCurveTA560";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 26.194612819039175 4 26.996379856027144 
		8 28.013962871481333 12 29.238088348960787 16 30.731725061548438 20 32.361031613732145 
		25 26.194612819039182 28 -15.564086868905928;
createNode animCurveTA -n "animCurveTA561";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 42.116293762219605 4 42.811417724772745 
		8 43.693651977842812 12 44.754956599976559 16 46.049924583394031 20 47.462517055316297 
		25 42.116293762219598 28 5.9119201843313283;
createNode animCurveTA -n "animCurveTA562";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 51.312599966148291 4 52.31492476330353 
		8 53.587050729286837 12 55.117384745485197 16 56.984646701022683 20 59.021515446782253 
		25 51.312599966148298 28 -0.89181587725581857;
createNode animCurveTA -n "animCurveTA563";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 12 0 16 0 20 0 25 0 
		28 0;
createNode animCurveTA -n "animCurveTA564";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 4 0 8 0 12 0 16 0 20 0 25 0 
		28 0;
createNode animCurveTA -n "animCurveTA565";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 55.749331591600708 4 56.413602444879714 
		8 57.256678695797405 12 58.270877189989832 16 59.508368008149418 20 60.858262267728563 
		25 55.749331591600708 28 21.15189097243713;
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
	setAttr ".o" 40;
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
connectAttr "cbg_hit_by_car_backSource.st" "clipLibrary1.st[0]";
connectAttr "cbg_hit_by_car_backSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL165.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL166.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL168.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA453.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU33.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU34.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU35.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU36.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU37.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU38.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU39.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU40.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA454.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA455.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA456.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL170.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL171.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL172.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL173.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL174.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL175.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA457.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA458.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA459.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL176.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL177.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL178.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA460.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA461.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA462.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA463.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA464.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA465.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA466.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA467.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA468.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "cbg_Right_Toe_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[38].cevr"
		;
connectAttr "cbg_Right_Toe_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[39].cevr"
		;
connectAttr "cbg_Right_Toe_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[40].cevr"
		;
connectAttr "cbg_Left_Toe_Hoop_rotateX.a" "clipLibrary1.cel[0].cev[41].cevr"
		;
connectAttr "cbg_Left_Toe_Hoop_rotateY.a" "clipLibrary1.cel[0].cev[42].cevr"
		;
connectAttr "cbg_Left_Toe_Hoop_rotateZ.a" "clipLibrary1.cel[0].cev[43].cevr"
		;
connectAttr "animCurveTL179.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL180.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL181.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL182.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL183.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL184.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL185.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL186.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL187.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA469.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA470.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA471.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA472.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA473.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA474.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA475.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA476.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA477.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA478.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA479.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA480.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA481.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA482.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA483.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA484.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA485.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA486.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA487.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA488.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA489.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA490.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA491.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA492.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA493.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA494.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA495.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA496.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA497.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL188.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL189.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL190.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA498.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA499.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA500.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL191.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL192.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL193.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA501.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA502.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA503.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL194.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL195.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL196.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA504.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA505.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA506.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL197.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL198.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL199.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA507.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA508.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA509.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL200.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL201.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL202.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL203.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL204.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL205.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA510.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA511.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA512.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA513.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA514.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA515.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA516.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA517.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA518.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA519.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA520.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA521.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA522.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA523.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA524.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA525.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA526.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA527.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA528.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA529.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA530.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA531.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA532.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA533.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA534.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA535.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA536.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA537.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA538.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA539.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA540.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA541.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA542.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA543.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA544.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA545.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA546.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA547.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA548.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA549.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA550.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA551.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA552.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA553.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA554.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA555.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA556.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA557.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA558.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA559.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA560.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA561.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA562.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA563.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA564.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA565.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of cbg_hit_by_car_back.ma
