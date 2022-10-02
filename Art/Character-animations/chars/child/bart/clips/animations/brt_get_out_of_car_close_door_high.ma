//Maya ASCII 4.0 scene
//Name: brt_get_out_of_car_close_door_high.ma
//Last modified: Tue, May 27, 2003 01:43:59 PM
requires maya "4.0";
requires "p3dDeformer" "2.0";
requires "p3dmayaexp" "2.0.3.0";
requires "p3dSimpleShader" "2.0";
requires "WorldBuilder" "3.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "brt_get_out_of_car_close_door_highSource";
	setAttr ".ihi" 0;
	setAttr ".du" 11;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL616";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL617";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL618";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 -0.1199670047304786 1 -0.10474787099642685 
		2 -0.084359391282787674 3 -0.061070187886067856 4 -0.037148883102774255 5 
		-0.014864099229413692 6 0.0082409743290217472 7 0.031001308016842827 8 0.045715519311497158 
		9 0.04625773739938658 10 0.038753833039172764 11 0.033880036066693167;
createNode animCurveTL -n "animCurveTL619";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL620";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0.10836669042811298 1 0.1154804419582824 
		2 0.12904714523261102 3 0.14276786388675983 4 0.15034366155638984 5 0.14547560187716196 
		6 0.10802442195173124 7 0.04767166951327452 8 0.0028496241432354498 9 -0.0086651370681288427 
		10 -0.0046491934388683672 11 0;
createNode animCurveTA -n "animCurveTA1762";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 73.584725781050324 1 75.951353295131412 
		2 76.211663207790622 3 76.651119025756699 4 79.555184255758704 5 87.209322404525523 
		6 72.517510203665182 7 43.282035735339015 8 20.087308419971652 9 9.9479300450965837 
		10 5.8492996364621721 11 1.7506672808666837;
createNode animCurveTU -n "animCurveTU121";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTU -n "animCurveTU122";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTU -n "animCurveTU123";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTU -n "animCurveTU124";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTU -n "animCurveTU125";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTU -n "animCurveTU126";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTU -n "animCurveTU127";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 11 1;
createNode animCurveTU -n "animCurveTU128";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 11 1;
createNode animCurveTA -n "animCurveTA1763";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1764";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1765";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL621";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL622";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL623";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL624";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.21594587158542247 5 -0.21594587158542247 
		8 -0.24702698943208226 11 -0.21594587158542247;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL625";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.21854505205085809 5 0.21854505205085809 
		8 0.21854505205085809 11 0.21854505205085809;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL626";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.48428229143983942 5 0.48428229143983942 
		8 0.37354366008108897 11 0.00078430246903575811;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1766";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -171.83932330268107 5 -196.13469811126072 
		8 -345.02472286088141 11 -356.94112113611664;
createNode animCurveTA -n "animCurveTA1767";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 68.169561768861598 5 82.896548172398099 
		8 41.238383398518884 11 -15.541987270667644;
createNode animCurveTA -n "animCurveTA1768";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -170.56724895848305 5 -199.44322781221274 
		8 -352.18104340607545 11 -360.979129788188;
createNode animCurveTL -n "animCurveTL627";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.42471957076167488 5 -0.23544064970124495 
		8 0.21764441145149604 11 0.26454016861507795;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL628";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.21854541072049752 5 0.25366143527271862 
		8 0.21854541072049752 11 0.21854541072049752;
	setAttr -s 4 ".kit[1:3]"  9 3 3;
	setAttr -s 4 ".kot[1:3]"  9 3 3;
createNode animCurveTL -n "animCurveTL629";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.04295041053611711 5 0.090396430285037979 
		8 -0.064904406754016042 11 -0.064904406754016042;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1769";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -3.1220038384960587 5 -40.376349723711272 
		8 -173.73768703833946 11 -176.89714928150025;
	setAttr -s 4 ".kit[2:3]"  1 9;
	setAttr -s 4 ".kot[2:3]"  1 9;
	setAttr -s 4 ".kix[2:3]"  0.58394819498062134 0.87568658590316772;
	setAttr -s 4 ".kiy[2:3]"  -0.81179088354110718 -0.48287993669509888;
	setAttr -s 4 ".kox[2:3]"  0.58394819498062134 0.87568658590316772;
	setAttr -s 4 ".koy[2:3]"  -0.81179094314575195 -0.48287993669509888;
createNode animCurveTA -n "animCurveTA1770";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 113.32682153040034 5 109.38363684393025 
		8 120.34241176433399 11 150.3311308704225;
createNode animCurveTA -n "animCurveTA1771";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -4.5212018102435731 5 -85.920608006910172 
		8 -171.36557992801863 11 -179.65046251956872;
createNode animCurveTA -n "animCurveTA1772";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1773";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1774";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1775";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1776";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1777";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1778";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1779";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1780";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1781";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1782";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1783";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL630";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL631";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL632";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 5 1 8 1 11 1;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL633";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL635";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 5 1 8 1 11 1;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL636";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.27078550131278833 5 -0.033550746477687445 
		8 0.10318753762627872 11 0.076472881617957691;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.95473100313980441 5 0.91279668011788151 
		8 0.85934527457539023 11 0.95473100313980441;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.2446016607575533 5 0.32836265164398898 
		8 0.0064320760855255035 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1784";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -181.18618296711085 5 -196.675683492183 
		8 -185.08061895527479 11 -186.34802900485738;
createNode animCurveTA -n "animCurveTA1785";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 73.584725781050324 5 87.209322404525551 
		8 159.91269158002834 11 178.24933271913332;
createNode animCurveTA -n "animCurveTA1786";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -178.96129049071283 5 -200.29121306815358 
		8 -180.76941993100405 11 -180.53558616458341;
createNode animCurveTA -n "animCurveTA1787";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1788";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1789";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1790";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1791";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1792";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1793";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1794";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1795";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1796";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1797";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1798";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1799";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1800";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1801";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1802";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1803";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1804";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1805";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1806";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1807";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1808";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1809";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1810";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1811";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1812";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTL -n "animCurveTL639";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.5198069948790518 11 -0.5198069948790518;
createNode animCurveTL -n "animCurveTL640";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72394202659893114 11 -0.72394202659893114;
createNode animCurveTL -n "animCurveTL641";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.36439499068905612 11 0.36439499068905612;
createNode animCurveTA -n "animCurveTA1813";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.7976222737965317 11 7.7976222737965317;
createNode animCurveTA -n "animCurveTA1814";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 30.409274105849079 11 30.409274105849079;
createNode animCurveTA -n "animCurveTA1815";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 64.859940280210893 11 64.859940280210893;
createNode animCurveTL -n "animCurveTL642";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.43524234076486068 11 0.43524234076486068;
createNode animCurveTL -n "animCurveTL643";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.82665738350180629 11 -0.82665738350180629;
createNode animCurveTL -n "animCurveTL644";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.27773886459742925 11 0.27773886459742925;
createNode animCurveTA -n "animCurveTA1816";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1817";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -28.652637602052774 11 -28.652637602052774;
createNode animCurveTA -n "animCurveTA1818";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.676908227303443 11 -64.676908227303443;
createNode animCurveTL -n "animCurveTL645";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.076245805012821452 5 0.63789765170330814 
		8 -0.97130899359392431 11 -0.61083301393139333;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL646";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.0513995175262334 5 2.1617771034587236 
		8 2.0083287341659308 11 1.0211562878106184;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL647";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.0370477783765644 5 1.398658191867155 
		8 0.52246928744813903 11 0.14314299916678522;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1819";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 89.903823884388046 5 247.87088285548552 
		8 290.34630916205839 11 352.58352545823101;
createNode animCurveTA -n "animCurveTA1820";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 32.504234509361467 5 28.684954716085265 
		8 6.2268131781437734 11 12.992628881764245;
createNode animCurveTA -n "animCurveTA1821";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 86.65282174900733 5 246.16035769150534 
		8 287.74344964740897 11 428.65763717258778;
createNode animCurveTL -n "animCurveTL648";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.61294164802918749 5 -0.033678587201424713 
		8 0.77339373226194341 11 0.8448236677023373;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL649";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.0207937400109248 5 1.2397763237013613 
		8 1.1481854343615399 11 1.0304014029588007;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL650";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.43766142688412474 5 -0.3430554572345435 
		8 0.15398750308028297 11 -0.097994651149805143;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1822";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 243.64247564816833 5 265.64413658133498 
		8 345.14852186746617 11 362.44484292915598;
createNode animCurveTA -n "animCurveTA1823";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 20.532869880126128 5 39.088385971292958 
		8 12.868633408077004 11 3.5099887953847055;
createNode animCurveTA -n "animCurveTA1824";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 265.8551275245099 5 271.83843087496513 
		8 318.29844264776671 11 299.83785754885446;
createNode animCurveTL -n "animCurveTL651";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.31054502397108613 5 0.31054502397108613 
		8 0.31054502397108613 11 0.10167917362943303;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL652";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.55640530640609931 5 -0.55640530640609931 
		8 -0.55640530640609931 11 -0.40762644910266188;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL653";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.57914122395678103 5 -0.57914122395678103 
		8 -0.57914122395678103 11 -0.93129112588482243;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL654";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.047646009069586132 5 -0.11422262436484759 
		8 -0.047646009069586132 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL655";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.70977769184901862 5 -0.50446781311246858 
		8 -0.70977769184901862 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTL -n "animCurveTL656";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.64237249774344829 5 -1.0973961480223062 
		8 -0.64237249774344829 11 -1;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1825";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -0.061808866237340665 5 -0.061808866237340665 
		8 -0.061808866237340665 11 -0.061808866237340665;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1826";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -59.058178941076754 5 -59.058178941076754 
		8 -59.058178941076754 11 -59.058178941076754;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1827";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 16.57914742975785 5 16.57914742975785 
		8 16.57914742975785 11 16.57914742975785;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1828";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 12.253734489678925 5 12.253734489678925 
		8 12.253734489678925 11 12.253734489678925;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1829";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -65.746751280844975 5 -65.746751280844975 
		8 -65.746751280844975 11 -65.746751280844975;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1830";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1831";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 15.711328223519061 5 15.711328223519061 
		8 15.711328223519061 11 15.711328223519061;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1832";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 8.5572674112203657 5 8.5572674112203657 
		8 8.5572674112203657 11 8.5572674112203657;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1833";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1834";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1835";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1836";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1837";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1838";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1839";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -243.84726150523136 11 -243.84726150523136;
createNode animCurveTA -n "animCurveTA1840";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 28.612774017129329 5 28.612774017129322 
		8 28.612774017129322 11 23.263402056531092;
createNode animCurveTA -n "animCurveTA1841";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 17.632837226638049 5 17.632837226638053 
		8 17.632837226638053 11 20.166277752815624;
createNode animCurveTA -n "animCurveTA1842";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1843";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1844";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 33.429092416277157 5 33.429092416277157 
		8 33.429092416277157 11 33.429092416277157;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1845";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1846";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1847";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1848";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1849";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1850";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.994403295754109 11 13.994403295754109;
createNode animCurveTA -n "animCurveTA1851";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1852";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1853";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 11 0;
createNode animCurveTA -n "animCurveTA1854";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1855";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1856";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 17.254116939558369 5 17.254116939558369 
		8 17.254116939558369 11 17.254116939558369;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1857";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1858";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1859";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1860";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.65073001024951671 5 9.7624195992479237 
		8 -9.5688162172274307 11 0.65073001024951671;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1861";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 4.2368721935960938 5 3.17079856343662 
		8 7.0846265600455363 11 4.2368721935960938;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1862";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.6995264082587447 5 -7.5142948618181018 
		8 -8.3067314352119279 11 2.6995264082587447;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1863";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1864";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1865";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1866";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 56.895247087937577 8 24.22632884962432 
		11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1867";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 36.557848533371633 8 28.085678372064539 
		11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1868";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 6.6786334979782902 5 29.398669348522365 
		8 24.248342033667061 11 6.6786334979782902;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1869";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1.8903601258661935 5 1.8903601258661935 
		8 -9.8971004586292839 11 1.8903601258661935;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1870";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -2.5597289571479038 5 -2.5597289571479038 
		8 -0.40783862799678089 11 -2.5597289571479038;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1871";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 2.0168110874036049 5 2.0168110874036049 
		8 2.6909656336528314 11 2.0168110874036049;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1872";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1873";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1874";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.080064458283051 5 27.080064458283051 
		8 27.080064458283051 11 27.080064458283051;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1875";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -249.6496823120055 11 -249.6496823120055;
createNode animCurveTA -n "animCurveTA1876";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.804554996454378 5 27.804554996454378 
		8 27.804554996454378 11 27.7228482558439;
createNode animCurveTA -n "animCurveTA1877";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 29.452980944098744 5 29.452980944098744 
		8 29.452980944098744 11 21.576484776388227;
createNode animCurveTA -n "animCurveTA1878";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1879";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 5 0 8 0 11 0;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
createNode animCurveTA -n "animCurveTA1880";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 27.911632519594587 5 27.911632519594587 
		8 27.911632519594587 11 27.911632519594587;
	setAttr -s 4 ".kit[3]"  3;
	setAttr -s 4 ".kot[3]"  3;
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
	setAttr -s 654 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -k on ".ra";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr -k on ".esr";
	setAttr -k on ".ors";
	setAttr -k on ".outf";
	setAttr -k on ".gama";
	setAttr ".top" 478;
	setAttr -k on ".left";
	setAttr -k on ".bot";
	setAttr ".rght" 638;
	setAttr -k on ".urr";
	setAttr ".fs" 1;
	setAttr ".ef" 10;
	setAttr -k on ".bf";
	setAttr -k on ".bfs";
	setAttr -k on ".be";
	setAttr -k on ".fec";
	setAttr -k on ".sec";
	setAttr -k on ".ofc";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -k on ".sp";
	setAttr -k on ".shs";
	setAttr -k on ".lpr";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".shp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -k on ".mbf";
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -k on ".bll";
	setAttr -k on ".bls";
	setAttr -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -k on ".rgpn";
	setAttr -k on ".rlsd";
	setAttr -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
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
connectAttr "brt_get_out_of_car_close_door_highSource.st" "clipLibrary1.st[0]"
		;
connectAttr "brt_get_out_of_car_close_door_highSource.du" "clipLibrary1.du[0]"
		;
connectAttr "animCurveTL616.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL617.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL618.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL619.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL620.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA1762.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU121.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU122.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU123.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU124.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU125.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU126.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU127.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU128.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA1763.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA1764.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA1765.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL621.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL622.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL623.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL624.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL625.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL626.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA1766.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA1767.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA1768.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL627.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL628.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL629.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA1769.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA1770.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA1771.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA1772.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA1773.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA1774.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA1775.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA1776.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA1777.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA1778.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA1779.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA1780.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA1781.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA1782.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA1783.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL630.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL631.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL632.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL633.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL634.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL635.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL636.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL637.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL638.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA1784.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA1785.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA1786.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA1787.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA1788.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA1789.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA1790.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA1791.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA1792.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA1793.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA1794.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA1795.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA1796.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA1797.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA1798.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA1799.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA1800.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA1801.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA1802.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA1803.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA1804.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA1805.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA1806.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA1807.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA1808.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA1809.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA1810.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA1811.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA1812.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL639.a" "clipLibrary1.cel[0].cev[82].cevr";
connectAttr "animCurveTL640.a" "clipLibrary1.cel[0].cev[83].cevr";
connectAttr "animCurveTL641.a" "clipLibrary1.cel[0].cev[84].cevr";
connectAttr "animCurveTA1813.a" "clipLibrary1.cel[0].cev[85].cevr";
connectAttr "animCurveTA1814.a" "clipLibrary1.cel[0].cev[86].cevr";
connectAttr "animCurveTA1815.a" "clipLibrary1.cel[0].cev[87].cevr";
connectAttr "animCurveTL642.a" "clipLibrary1.cel[0].cev[88].cevr";
connectAttr "animCurveTL643.a" "clipLibrary1.cel[0].cev[89].cevr";
connectAttr "animCurveTL644.a" "clipLibrary1.cel[0].cev[90].cevr";
connectAttr "animCurveTA1816.a" "clipLibrary1.cel[0].cev[91].cevr";
connectAttr "animCurveTA1817.a" "clipLibrary1.cel[0].cev[92].cevr";
connectAttr "animCurveTA1818.a" "clipLibrary1.cel[0].cev[93].cevr";
connectAttr "animCurveTL645.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL646.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL647.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA1819.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA1820.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA1821.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL648.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL649.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL650.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA1822.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA1823.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA1824.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL651.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL652.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL653.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL654.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL655.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL656.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA1825.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA1826.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA1827.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA1828.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA1829.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA1830.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA1831.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA1832.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA1833.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA1834.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA1835.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA1836.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA1837.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA1838.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA1839.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA1840.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA1841.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA1842.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA1843.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA1844.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA1845.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA1846.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA1847.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA1848.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA1849.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA1850.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA1851.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA1852.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA1853.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA1854.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA1855.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA1856.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA1857.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA1858.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA1859.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA1860.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA1861.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA1862.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA1863.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA1864.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA1865.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA1866.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA1867.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA1868.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA1869.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA1870.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA1871.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA1872.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA1873.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA1874.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA1875.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA1876.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA1877.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA1878.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA1879.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA1880.a" "clipLibrary1.cel[0].cev[167].cevr";
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
// End of brt_get_out_of_car_close_door_high.ma
