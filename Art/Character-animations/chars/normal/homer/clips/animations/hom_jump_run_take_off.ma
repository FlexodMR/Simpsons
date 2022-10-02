//Maya ASCII 4.0 scene
//Name: hom_jump_run_take_off.ma
//Last modified: Mon, Jul 22, 2002 02:29:15 PM
requires maya "4.0";
requires "p3dmayaexp" "17.9.1.0";
requires "p3dSimpleShader" "17.1";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "hom_jump_run_take_offSource";
	setAttr ".ihi" 0;
	setAttr ".du" 4;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL516";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL517";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -0.032743957069742133 1 -0.032743957069742133 
		2 -0.032743957069742133 3 -0.032743957069742133 4 -0.032743957069742133;
createNode animCurveTL -n "animCurveTL519";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 2 0 3 0 4 0;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.6083415236309837 1 0.81383641516860994 
		2 1.0268647898868455 3 1.2462883187791216 4 1.5056559299806673;
createNode animCurveTA -n "animCurveTA1458";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 1 0 2 0 3 0 4 0;
createNode animCurveTU -n "animCurveTU105";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU106";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU107";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU108";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU109";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU110";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "animCurveTU111";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU112";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1459";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1460";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1461";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL521";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL522";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL523";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "animCurveTL524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.19763288944005308 2 -0.19763288944005308 
		4 -0.19763288944005308;
createNode animCurveTL -n "animCurveTL525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.14552605892239473 2 0.14552605892239473 
		4 0.48553879384849169;
createNode animCurveTL -n "animCurveTL526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.1961929756633671 2 1.1961929756633671 
		4 2.1203301526419867;
createNode animCurveTA -n "animCurveTA1462";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -19.288990945907496 2 -1.4427281748707057 
		4 58.991545356860456;
createNode animCurveTA -n "animCurveTA1463";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 0 4 0;
createNode animCurveTA -n "animCurveTA1464";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 0 4 0;
createNode animCurveTL -n "animCurveTL527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.19697756422115981 2 0.19697756422115981 
		4 0.19697756422115981;
createNode animCurveTL -n "animCurveTL528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.57299516960695085 2 0.22175644724314478 
		4 0.14617464980466119;
createNode animCurveTL -n "animCurveTL529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.24226175870239405 2 1.7458099737334241 
		4 1.8346185857236414;
createNode animCurveTA -n "animCurveTA1465";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 101.83600965070561 2 26.091360890572709 
		4 0.5293000256857594;
createNode animCurveTA -n "animCurveTA1466";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 0 4 0;
createNode animCurveTA -n "animCurveTA1467";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 0 4 0;
createNode animCurveTA -n "animCurveTA1468";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1469";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1470";
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
createNode animCurveTL -n "animCurveTL530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 0 4 0;
createNode animCurveTL -n "animCurveTL531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 0 4 0;
createNode animCurveTL -n "animCurveTL532";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 2 1 4 1;
createNode animCurveTL -n "animCurveTL533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 0 4 0;
createNode animCurveTL -n "animCurveTL534";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 0 4 0;
createNode animCurveTL -n "animCurveTL535";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 2 1 4 1;
createNode animCurveTL -n "animCurveTL536";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.048692319506319935 2 -0.048692319506319935 
		4 -0.048692319506319935;
createNode animCurveTL -n "animCurveTL537";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.85503661073851567 2 0.71947078807178333 
		4 0.87639974265305898;
createNode animCurveTL -n "animCurveTL538";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.90464203133755872 2 1.5270123990348288 
		4 2.239004878153577;
createNode animCurveTA -n "animCurveTA1474";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 20.950825280283908 2 20.950825280283908 
		4 20.950825280283908;
createNode animCurveTA -n "animCurveTA1475";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -6.8139232258102842 2 -6.8139232258102842 
		4 -6.8139232258102842;
createNode animCurveTA -n "animCurveTA1476";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.4726187357019898 2 -1.4726187357019898 
		4 -1.4726187357019898;
createNode animCurveTA -n "animCurveTA1477";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1478";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1479";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0984482521620249;
createNode animCurveTA -n "animCurveTA1480";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300303494186;
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
	setAttr ".ktv[0]"  0 -22.686733334985114;
createNode animCurveTA -n "animCurveTA1484";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1485";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1486";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417477e-005;
createNode animCurveTA -n "animCurveTA1487";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1488";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1489";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.0984482535121209;
createNode animCurveTA -n "animCurveTA1490";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.588300300216801;
createNode animCurveTA -n "animCurveTA1491";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1492";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1493";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.686733333057838;
createNode animCurveTA -n "animCurveTA1494";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1495";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1496";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0579251312417477e-005;
createNode animCurveTA -n "animCurveTA1497";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1498";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1499";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.4782236286598103;
createNode animCurveTA -n "animCurveTA1500";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1501";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1502";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "hom_Right_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.98071836797454492;
createNode animCurveTL -n "hom_Right_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.6432964864655397;
createNode animCurveTL -n "hom_Right_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 15.056117372358514;
createNode animCurveTA -n "hom_Right_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5.4739599453216465;
createNode animCurveTA -n "hom_Right_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 8.5874521608419858;
createNode animCurveTA -n "hom_Right_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 74.754744621954103;
createNode animCurveTL -n "hom_Left_Arm_World_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.76309120872911718;
createNode animCurveTL -n "hom_Left_Arm_World_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.6150490657878991;
createNode animCurveTL -n "hom_Left_Arm_World_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 15.297255022675106;
createNode animCurveTA -n "hom_Left_Arm_World_rotateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 16.226511010665412;
createNode animCurveTA -n "hom_Left_Arm_World_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -8.5139660854992858;
createNode animCurveTA -n "hom_Left_Arm_World_rotateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -68.213989601412422;
createNode animCurveTL -n "animCurveTL551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 0 4 0;
createNode animCurveTL -n "animCurveTL552";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 0 4 0;
createNode animCurveTL -n "animCurveTL553";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 2 -1 4 -1;
createNode animCurveTL -n "animCurveTL554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 0 4 0;
createNode animCurveTL -n "animCurveTL555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 2 0 4 0;
createNode animCurveTL -n "animCurveTL556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1 2 -1 4 -1;
createNode animCurveTA -n "animCurveTA1515";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 33.632953330522966 4 38.288355439467409;
createNode animCurveTA -n "animCurveTA1516";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -45.161034679655693 4 -34.477986237269441;
createNode animCurveTA -n "animCurveTA1517";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -67.538091601379463 4 -58.841273892169454;
createNode animCurveTA -n "animCurveTA1518";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -31.91693956427045 4 55.55104118666123;
createNode animCurveTA -n "animCurveTA1519";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -29.868546772813136 4 -22.864898916390906;
createNode animCurveTA -n "animCurveTA1520";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 68.33832602789127 4 -66.560432261884458;
createNode animCurveTA -n "animCurveTA1521";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 63.595530963034982 4 42.061717197589253;
createNode animCurveTA -n "animCurveTA1522";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 60.185649943194235 4 39.540454462093251;
createNode animCurveTA -n "animCurveTA1523";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.476235154862632 4 -20.023139945693767;
createNode animCurveTA -n "animCurveTA1524";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 10.082003051124275 4 26.671328910479655;
createNode animCurveTA -n "animCurveTA1525";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -4.720189328892868 4 5.3717556430426301;
createNode animCurveTA -n "animCurveTA1526";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -13.555270109330269 4 -50.380399976743753;
createNode animCurveTA -n "animCurveTA1527";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 11.615881410206432 4 17.011015481116551;
createNode animCurveTA -n "animCurveTA1528";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.32159281075535068 4 -5.3376311675567187;
createNode animCurveTA -n "animCurveTA1529";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 11.093319219895511 4 11.093319219895511;
createNode animCurveTA -n "animCurveTA1530";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 59.959644693642325 4 59.959644693642325;
createNode animCurveTA -n "animCurveTA1531";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 48.106469618696913 4 48.106469618696913;
createNode animCurveTA -n "animCurveTA1532";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 4 0;
createNode animCurveTA -n "animCurveTA1533";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 4 0;
createNode animCurveTA -n "animCurveTA1534";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 67.810939637714412 4 67.810939637714412;
createNode animCurveTA -n "animCurveTA1535";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1536";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1537";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "animCurveTA1538";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 27.705218915343313;
createNode animCurveTA -n "animCurveTA1539";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 43.35103828268312;
createNode animCurveTA -n "animCurveTA1540";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 54.23572299800319;
createNode animCurveTA -n "animCurveTA1541";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 39.038703285259977;
createNode animCurveTA -n "animCurveTA1542";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 72.755037061650995;
createNode animCurveTA -n "animCurveTA1543";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 38.926480273156798;
createNode animCurveTA -n "animCurveTA1544";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 4 0;
createNode animCurveTA -n "animCurveTA1545";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 4 0;
createNode animCurveTA -n "animCurveTA1546";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 40.637834425062678 4 40.637834425062678;
createNode animCurveTA -n "animCurveTA1547";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 4 0;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "animCurveTA1548";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 4 0;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "animCurveTA1549";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 4 0;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kox[1]"  1;
	setAttr -s 2 ".koy[1]"  0;
createNode animCurveTA -n "animCurveTA1550";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -7.7966372458940265 4 -7.660020298875442;
createNode animCurveTA -n "animCurveTA1551";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 4 1.4575024756080202;
createNode animCurveTA -n "animCurveTA1552";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.59407764503375837 4 11.303295119228467;
createNode animCurveTA -n "animCurveTA1553";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 4 0;
createNode animCurveTA -n "animCurveTA1554";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 4 0;
createNode animCurveTA -n "animCurveTA1555";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 4 0;
createNode animCurveTA -n "animCurveTA1556";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 4 0.88855738406062901;
createNode animCurveTA -n "animCurveTA1557";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -8.2806426894500209 4 -8.2331616608723177;
createNode animCurveTA -n "animCurveTA1558";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.4030948218520338 4 -7.5844312513428269;
createNode animCurveTA -n "animCurveTA1559";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 4 0;
createNode animCurveTA -n "animCurveTA1560";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 4 0;
createNode animCurveTA -n "animCurveTA1561";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 4 0;
createNode animCurveTA -n "animCurveTA1562";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 4 0;
createNode animCurveTA -n "animCurveTA1563";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 4 0;
createNode animCurveTA -n "animCurveTA1564";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 66.910735171519136 4 66.910735171519136;
createNode animCurveTA -n "animCurveTA1565";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 26.194612819039175 4 26.194612819039175;
createNode animCurveTA -n "animCurveTA1566";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 42.116293762219605 4 42.116293762219605;
createNode animCurveTA -n "animCurveTA1567";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 51.312599966148291 4 51.312599966148291;
createNode animCurveTA -n "animCurveTA1568";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 4 0;
createNode animCurveTA -n "animCurveTA1569";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 4 0;
createNode animCurveTA -n "animCurveTA1570";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 55.749331591600708 4 55.749331591600708;
createNode clipLibrary -n "clipLibrary1";
	setAttr -s 150 ".cel[0].cev";
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
connectAttr "hom_jump_run_take_offSource.st" "clipLibrary1.st[0]";
connectAttr "hom_jump_run_take_offSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL516.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL517.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "animCurveTL519.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "animCurveTA1458.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU105.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU106.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU107.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU108.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU109.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU110.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU111.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU112.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA1459.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1460.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1461.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL521.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL522.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL523.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL524.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL525.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL526.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1462.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1463.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1464.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL527.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL528.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL529.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1465.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1466.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1467.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1468.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1469.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1470.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1471.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1472.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1473.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTL530.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTL531.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTL532.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTL533.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTL534.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTL535.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL536.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL537.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL538.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTA1474.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTA1475.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTA1476.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTA1477.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTA1478.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTA1479.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1480.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1481.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1482.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1483.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1484.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1485.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1486.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1487.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1488.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1489.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1490.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1491.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1492.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1493.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1494.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1495.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1496.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1497.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1498.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1499.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1500.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1501.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1502.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "hom_Right_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[88].cevr"
		;
connectAttr "hom_Right_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[89].cevr"
		;
connectAttr "hom_Right_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[90].cevr"
		;
connectAttr "hom_Right_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[91].cevr"
		;
connectAttr "hom_Right_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[92].cevr"
		;
connectAttr "hom_Right_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[93].cevr"
		;
connectAttr "hom_Left_Arm_World_translateX.a" "clipLibrary1.cel[0].cev[94].cevr"
		;
connectAttr "hom_Left_Arm_World_translateY.a" "clipLibrary1.cel[0].cev[95].cevr"
		;
connectAttr "hom_Left_Arm_World_translateZ.a" "clipLibrary1.cel[0].cev[96].cevr"
		;
connectAttr "hom_Left_Arm_World_rotateX.a" "clipLibrary1.cel[0].cev[97].cevr"
		;
connectAttr "hom_Left_Arm_World_rotateY.a" "clipLibrary1.cel[0].cev[98].cevr"
		;
connectAttr "hom_Left_Arm_World_rotateZ.a" "clipLibrary1.cel[0].cev[99].cevr"
		;
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
connectAttr "animCurveTA1535.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1536.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1537.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1538.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1539.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1540.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1541.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1542.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1543.a" "clipLibrary1.cel[0].cev[134].cevr";
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
// End of hom_jump_run_take_off.ma
