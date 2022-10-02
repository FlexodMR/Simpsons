//Maya ASCII 4.0 scene
//Name: lsa_get_into_car_close_door.ma
//Last modified: Wed, Jan 08, 2003 01:06:53 PM
requires maya "4.0";
requires "p3dmayaexp" "2.0";
requires "p3dSimpleShader" "2.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "lsa_get_into_car_close_doorSource";
	setAttr ".ihi" 0;
	setAttr ".du" 14;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL575";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTL -n "animCurveTL576";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTL -n "Motion_Root_translateX";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.99485515190251284 14 0.99485515190251284;
createNode animCurveTL -n "Motion_Root_translateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.45955081921718005 14 0.45955081921718005;
createNode animCurveTL -n "Motion_Root_translateZ";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.72080901693409116 14 0.72080901693409116;
createNode animCurveTA -n "lsa_Motion_Root_rotateY";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "animCurveTU113";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTU -n "animCurveTU114";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTU -n "animCurveTU115";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTU -n "animCurveTU116";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTU -n "animCurveTU117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTU -n "animCurveTU118";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTU -n "animCurveTU119";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 14 1;
createNode animCurveTU -n "animCurveTU120";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 14 1;
createNode animCurveTA -n "animCurveTA1662";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1663";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1664";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTL -n "animCurveTL580";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTL -n "animCurveTL581";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTL -n "animCurveTL582";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTL -n "animCurveTL583";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.0407430139147178 6 2.0407430139147178 
		14 2.0407430139147178;
createNode animCurveTL -n "animCurveTL584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.99995529262164395 6 0.99995529262164395 
		14 0.99995529262164395;
createNode animCurveTL -n "animCurveTL585";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.4400670660903248 6 2.4400670660903248 
		14 2.4400670660903248;
createNode animCurveTA -n "animCurveTA1665";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -28.33147073208438 6 -28.33147073208438 
		14 -28.33147073208438;
createNode animCurveTA -n "animCurveTA1666";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -10.113681911874204 6 -10.113681911874204 
		14 -10.113681911874204;
createNode animCurveTA -n "animCurveTA1667";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.6896128937020114 6 3.6896128937020114 
		14 3.6896128937020114;
createNode animCurveTL -n "animCurveTL586";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.4790535543793637 6 2.4790535543793637 
		14 2.4790535543793637;
createNode animCurveTL -n "animCurveTL587";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.9833319268331725 6 0.9833319268331725 
		14 0.9833319268331725;
createNode animCurveTL -n "animCurveTL588";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.4327597250722541 6 2.4327597250722541 
		14 2.4327597250722541;
createNode animCurveTA -n "animCurveTA1668";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -27.647037481197394 6 -27.647037481197394 
		14 -27.647037481197394;
createNode animCurveTA -n "animCurveTA1669";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.6471102606573029 6 1.6471102606573029 
		14 1.6471102606573029;
createNode animCurveTA -n "animCurveTA1670";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.792214191643251 6 7.792214191643251 
		14 7.792214191643251;
createNode animCurveTA -n "animCurveTA1671";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1672";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1673";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1674";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1675";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1676";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1677";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1678";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1679";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1680";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1681";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1682";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTL -n "animCurveTL589";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
createNode animCurveTL -n "animCurveTL590";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
createNode animCurveTL -n "animCurveTL591";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 6 1 14 1;
createNode animCurveTL -n "animCurveTL592";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
createNode animCurveTL -n "animCurveTL593";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
createNode animCurveTL -n "animCurveTL594";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 6 1 14 1;
createNode animCurveTL -n "animCurveTL595";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.2591101781206659 6 1.6421352762378554 
		14 2.2591101781206659;
createNode animCurveTL -n "animCurveTL596";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.2803698945022608 6 1.4356475945789096 
		14 1.2803698945022608;
createNode animCurveTL -n "animCurveTL597";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.7693492297543687 6 1.9019358436022702 
		14 1.7693492297543687;
createNode animCurveTA -n "animCurveTA1683";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -19.504876398732126 6 19.904949984433497 
		14 -19.504876398732126;
createNode animCurveTA -n "animCurveTA1684";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 23.729790269354229 14 0;
createNode animCurveTA -n "animCurveTA1685";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 30.653736597065432 14 0;
createNode animCurveTA -n "animCurveTA1686";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1687";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1688";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1689";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1690";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1691";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1692";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1693";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1694";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1695";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1696";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1697";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1698";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1699";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1700";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1701";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1702";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1703";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1704";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1705";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1706";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1707";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1708";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1709";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1710";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1711";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTL -n "animCurveTL598";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.43524234076486068 14 -0.43524234076486068;
createNode animCurveTL -n "animCurveTL599";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 14 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL600";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 14 0.27773886459742925;
createNode animCurveTA -n "animCurveTA1712";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1713";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 28.652637602052774 14 28.652637602052774;
createNode animCurveTA -n "animCurveTA1714";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.676908227303443 14 64.676908227303443;
createNode animCurveTL -n "animCurveTL601";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.5198069948790518 14 0.5198069948790518;
createNode animCurveTL -n "animCurveTL602";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 14 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL603";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 14 0.36439499068905612;
createNode animCurveTA -n "animCurveTA1715";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965299 14 7.7976222737965299;
createNode animCurveTA -n "animCurveTA1716";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -30.409274105849079 14 -30.409274105849079;
createNode animCurveTA -n "animCurveTA1717";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.859940280210878 14 -64.859940280210878;
createNode animCurveTL -n "animCurveTL604";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.4318854543692052 6 0.85865689186961502 
		9 1.0663777460455246 14 2.4318854543692052;
createNode animCurveTL -n "animCurveTL605";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.7241929732026566 6 2.5072247162763563 
		9 2.5434888612919893 14 1.7241929732026566;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  0.023984095081686974 0.0020342629868537188;
	setAttr -s 4 ".kiy[2:3]"  -0.99971240758895874 -0.99999791383743286;
	setAttr -s 4 ".kox[2:3]"  0.023984048515558243 0.0020342629868537188;
	setAttr -s 4 ".koy[2:3]"  -0.99971240758895874 -0.99999791383743286;
createNode animCurveTL -n "animCurveTL606";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.6858977529588222 6 3.6257457706658354 
		9 3.4262633344380617 14 2.6858977529588222;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  0.0069580026902258396 0.0022511344868689775;
	setAttr -s 4 ".kiy[2:3]"  -0.99997574090957642 -0.99999743700027466;
	setAttr -s 4 ".kox[2:3]"  0.0069580008275806904 0.0022511344868689775;
	setAttr -s 4 ".koy[2:3]"  -0.99997574090957642 -0.99999743700027466;
createNode animCurveTA -n "animCurveTA1718";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -33.734888782993899 6 -19.345874397196617 
		9 -21.547393754778248 14 -33.734888782993899;
createNode animCurveTA -n "animCurveTA1719";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 14.870586397896899 6 47.068687946319812 
		9 42.142378080219508 14 14.870586397896899;
createNode animCurveTA -n "animCurveTA1720";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 30.592169336881899 6 -7.3649226411748101 
		9 -1.55748705668628 14 30.592169336881899;
createNode animCurveTL -n "animCurveTL607";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.206404471075289 6 3.0251282500831582 
		14 4.206404471075289;
createNode animCurveTL -n "animCurveTL608";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.7781418955835293 6 2.4322073245137408 
		14 1.7781418955835293;
createNode animCurveTL -n "animCurveTL609";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.7041072647042435 6 2.4602491551945591 
		14 2.7041072647042435;
createNode animCurveTA -n "animCurveTA1721";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -26.203413720634725 6 -27.818924152705119 
		14 -26.203413720634725;
createNode animCurveTA -n "animCurveTA1722";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -14.791961579779638 6 7.8589637569602626 
		14 -14.791961579779638;
createNode animCurveTA -n "animCurveTA1723";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -45.895436695401962 6 6.0238552216777173 
		14 -45.895436695401962;
createNode animCurveTL -n "animCurveTL610";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.063331173333856433 6 0.063331173333856433 
		14 0.063331173333856433;
createNode animCurveTL -n "animCurveTL611";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.69960805773293522 6 -0.69960805773293522 
		14 -0.69960805773293522;
createNode animCurveTL -n "animCurveTL612";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.66762598980258558 6 -0.66762598980258558 
		14 -0.66762598980258558;
createNode animCurveTL -n "animCurveTL613";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.31054502397108613 6 -0.31054502397108613 
		14 -0.31054502397108613;
createNode animCurveTL -n "animCurveTL614";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.55640530640609931 6 -0.55640530640609931 
		14 -0.55640530640609931;
createNode animCurveTL -n "animCurveTL615";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.57914122395678103 6 -0.57914122395678103 
		14 -0.57914122395678103;
createNode animCurveTA -n "animCurveTA1724";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 12.253734489678925 6 12.253734489678925 
		14 12.253734489678925;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1725";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -65.746751280844961 6 -65.746751280844961 
		14 -65.746751280844961;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1726";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1727";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.061808866237337522 6 -0.061808866237337522 
		14 -0.061808866237337522;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1728";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -59.058178941076754 6 -59.058178941076754 
		14 -59.058178941076754;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1729";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.579147429757843 6 16.579147429757843 
		14 16.579147429757843;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1730";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.5572674112203622 6 8.5572674112203622 
		14 8.5572674112203622;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1731";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 15.711328223519057 6 15.711328223519057 
		14 15.711328223519057;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1732";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1733";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1734";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1735";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1736";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1737";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1738";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -177.04830761929054 6 -177.04830761929054 
		14 -177.04830761929054;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1739";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.722848255843903 6 27.722848255843903 
		14 27.722848255843903;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1740";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 21.576484776388227 6 21.576484776388227 
		14 21.576484776388227;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1741";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1742";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1743";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.080064458283051 6 27.080064458283051 
		14 27.080064458283051;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1744";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1745";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1746";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1747";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1748";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1749";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 14 13.994403295754109;
createNode animCurveTA -n "animCurveTA1750";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1751";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 14 0;
createNode animCurveTA -n "animCurveTA1752";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 14 13.994403295754109;
createNode animCurveTA -n "animCurveTA1753";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1754";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1755";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 27.911632519594587 6 27.911632519594587 
		14 27.911632519594587;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1756";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1757";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1758";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1759";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.3731006602189262 6 -5.9660149388432382 
		14 -1.3731006602189262;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1760";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.38374158911587303 6 -4.5116636179203082 
		14 0.38374158911587303;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1761";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.96901743689791309 6 2.3811787268879385 
		14 0.96901743689791309;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1762";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.2144674450583466 6 7.1097278539792699 
		14 -2.2144674450583466;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1763";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -5.36423803921525 6 0 14 -5.36423803921525;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1764";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.2584064202075531 6 6.9655753505297673 
		14 -3.2584064202075531;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1765";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 4.9690701715193724 3 46.227209466300053 
		6 38.999395730978343 14 4.9690701715193724;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.40958940982818604;
	setAttr -s 4 ".kiy[3]"  -0.9122699499130249;
createNode animCurveTA -n "animCurveTA1766";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.9904681746768538 3 43.464870903715401 
		6 68.701263884681893 14 -2.9904681746768538;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  0.20843805372714996;
	setAttr -s 4 ".kiy[3]"  -0.978035569190979;
createNode animCurveTA -n "animCurveTA1767";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 14.780225156536881 3 14.102963811421818 
		6 -10.15874635942871 14 14.780225156536881;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  5;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "animCurveTA1768";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.211833892135727 6 -3.749937051835468 
		14 2.211833892135727;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1769";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.708673036061555 6 11.126545227672914 
		14 1.708673036061555;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1770";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.7082804953288209 6 -2.1144942238017537 
		14 2.7082804953288209;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1771";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1772";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1773";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 33.429092416277157 6 33.429092416277157 
		14 33.429092416277157;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1774";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 19.002497950056888 6 19.002497950056888 
		14 19.002497950056888;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1775";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 23.263402056531085 6 23.263402056531085 
		14 23.263402056531085;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1776";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 20.166277752815617 6 20.166277752815617 
		14 20.166277752815617;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1777";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1778";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 6 0 14 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "animCurveTA1779";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 17.254116939558369 6 17.254116939558369 
		14 17.254116939558369;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  5;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
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
	setAttr ".ihi" 0;
	setAttr -s 21 ".lnk";
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
	setAttr -s 102 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".top" 479;
	setAttr ".rght" 639;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
select -ne :defaultRenderQuality;
	setAttr ".eaa" 1;
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
connectAttr "lsa_get_into_car_close_doorSource.st" "clipLibrary1.st[0]";
connectAttr "lsa_get_into_car_close_doorSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL575.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL576.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "Motion_Root_translateX.a" "clipLibrary1.cel[0].cev[2].cevr"
		;
connectAttr "Motion_Root_translateY.a" "clipLibrary1.cel[0].cev[3].cevr"
		;
connectAttr "Motion_Root_translateZ.a" "clipLibrary1.cel[0].cev[4].cevr"
		;
connectAttr "lsa_Motion_Root_rotateY.a" "clipLibrary1.cel[0].cev[5].cevr"
		;
connectAttr "animCurveTU113.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU114.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU115.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU116.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU117.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU118.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU119.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU120.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA1662.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1663.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1664.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL580.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL581.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL582.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL583.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL584.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL585.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1665.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1666.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1667.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL586.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL587.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL588.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1668.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1669.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1670.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1671.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1672.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1673.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1674.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1675.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1676.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA1677.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA1678.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA1679.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA1680.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA1681.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA1682.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL589.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL590.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL591.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL592.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL593.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL594.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL595.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL596.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL597.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1683.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1684.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1685.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1686.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1687.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1688.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1689.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1690.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1691.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1692.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1693.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1694.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1695.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1696.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1697.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1698.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1699.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1700.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1701.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1702.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1703.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1704.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1705.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA1706.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA1707.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA1708.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1709.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1710.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1711.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL598.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL599.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL600.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA1712.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA1713.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1714.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL601.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL602.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL603.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1715.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1716.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1717.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL604.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL605.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL606.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1718.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1719.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1720.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL607.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL608.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL609.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1721.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1722.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1723.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL610.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL611.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL612.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL613.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL614.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL615.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1724.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1725.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1726.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1727.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1728.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1729.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1730.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1731.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1732.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1733.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1734.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1735.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1736.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1737.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1738.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1739.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1740.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1741.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1742.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1743.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1744.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1745.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1746.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1747.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1748.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1749.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1750.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1751.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1752.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1753.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1754.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1755.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1756.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1757.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1758.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1759.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1760.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1761.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1762.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1763.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1764.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1765.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1766.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1767.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1768.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1769.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1770.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1771.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1772.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1773.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1774.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1775.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1776.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1777.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1778.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1779.a" "clipLibrary1.cel[0].cev[167].cevr";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[4].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[5].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[5].olnk";
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
// End of lsa_get_into_car_close_door.ma
