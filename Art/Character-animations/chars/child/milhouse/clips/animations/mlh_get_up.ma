//Maya ASCII 4.0 scene
//Name: mlh_get_up.ma
//Last modified: Tue, Jun 25, 2002 01:42:48 PM
requires maya "4.0";
requires "p3dSimpleShader" "17.1";
requires "p3dmayaexp" "17.7";
requires "p3dDeformer" "17.1.0.0";
currentUnit -l meter -a degree -t ntsc;
createNode animClip -n "mlh_get_upSource";
	setAttr ".ihi" 0;
	setAttr ".du" 26;
	setAttr ".ci" no;
createNode animCurveTL -n "animCurveTL276";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTL -n "animCurveTL277";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTL -n "animCurveTL278";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0.059636706081690555 5 -0.00042871139209155445 
		6 -0.00048230031610299866 7 0 8 0.0016216789461657598 9 0.0040386696126343434 
		10 0.0061511710939120313 11 0.0068593824845051147 12 0.0054119199601776807 
		13 0.0025480452100783029 14 -0.00059607440121001805 15 -0.0028842715091042925 
		16 -0.0038793695183061312 17 -0.0042320572724008181 18 -0.0044379655651308461 
		19 -0.0049927251902387084 20 -0.0060258377679115113 21 -0.007276094576762415 
		22 -0.0086530608981729897 23 -0.010066302013524809;
	setAttr -s 20 ".kit[0:19]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 20 ".kot[0:19]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL279";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 5 0 6 0 7 0 8 0 9 0 10 0 11 
		0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0;
	setAttr -s 20 ".kit[0:19]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 20 ".kot[0:19]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9;
createNode animCurveTL -n "animCurveTL280";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 5 -0.0017902586355814198 6 
		-0.0020140409650290978 7 0 8 0.0015066782114426507 9 0.0028243029514085603 
		10 0.0098908111918431969 11 0.028644139904692022 12 0.06677601837913702 13 
		0.11908345406601172 14 0.1721623011797388 15 0.21260841393474106 16 0.23722721762764237 
		17 0.25304096968891204 18 0.26197077253374074 19 0.26593772857731912 20 0.26673636118580363 
		21 0.26526739060405741 22 0.26211121456533093 23 0.25784823080287489;
	setAttr -s 20 ".kit[0:19]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 20 ".kot[0:19]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9;
createNode animCurveTA -n "animCurveTA836";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 5 0 6 0 7 0 8 0 9 0 10 0 11 
		0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0;
	setAttr -s 20 ".kit[0:19]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9;
	setAttr -s 20 ".kot[0:19]"  3 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9;
createNode animCurveTU -n "animCurveTU41";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2.9950000000000001 0 3 0 22.995000000000001 
		0 23 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTU -n "animCurveTU42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2.9950000000000001 0 3 0 22.995000000000001 
		0 23 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTU -n "animCurveTU43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2.9950000000000001 0 3 0 22.995000000000001 
		0 23 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTU -n "animCurveTU44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2.9950000000000001 0 3 0 22.995000000000001 
		0 23 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTU -n "animCurveTU45";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 2.9950000000000001 0 3 0 23 
		0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTU -n "animCurveTU46";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 2.9950000000000001 0 3 0 23 
		0 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTU -n "animCurveTU47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2.9950000000000001 1 3 1 23 
		1 26 1;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTU -n "animCurveTU48";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2.9950000000000001 1 3 1 23 
		1 26 1;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA837";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2.9950000000000001 0 3 0 22.995000000000001 
		0 23 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA838";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2.9950000000000001 0 3 0 22.995000000000001 
		0 23 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTA -n "animCurveTA839";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2.9950000000000001 0 3 0 22.995000000000001 
		0 23 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL281";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2.9950000000000001 0 3 0 22.995000000000001 
		0 23 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL282";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2.9950000000000001 0 3 0 22.995000000000001 
		0 23 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL283";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 2.9950000000000001 0 3 0 22.995000000000001 
		0 23 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 9;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 9;
createNode animCurveTL -n "animCurveTL284";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.18720350650219833 3 -0.34830366363129989 
		7 -0.34830366363129989 11 -0.34830366363129989 15 -0.34830366363129989 19 
		-0.33963581116494118 23 -0.26454016861507795 26 -0.21764441145149604;
	setAttr -s 8 ".kit[0:7]"  3 3 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 3 9 9 9 9 9 
		3;
createNode animCurveTL -n "animCurveTL285";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.18407761067571052 3 0.15628477866511614 
		7 0.15628477866511614 11 0.15628477866511614 15 0.15628477866511614 19 0.23457607410018491 
		23 0.20622279350478459 26 0.1521050350093231;
	setAttr -s 8 ".kit[3:7]"  9 3 9 1 3;
	setAttr -s 8 ".kot[3:7]"  9 3 9 1 3;
	setAttr -s 8 ".kix[6:7]"  0.026151811704039574 1;
	setAttr -s 8 ".kiy[6:7]"  -0.99965798854827881 0;
	setAttr -s 8 ".kox[6:7]"  0.026151884347200394 1;
	setAttr -s 8 ".koy[6:7]"  -0.99965798854827881 0;
createNode animCurveTL -n "animCurveTL286";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.72363068543753417 3 0.61366616620862924 
		7 0.48411087640663392 11 0.091305376161284077 15 0.091305376161284077 19 
		0.31654847272646647 23 0.49076489683130292 26 0.54479995097805889;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 3 1 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 3 1 9 
		3;
	setAttr -s 8 ".kix[5:7]"  0.0063691353425383568 0.010222109034657478 
		1;
	setAttr -s 8 ".kiy[5:7]"  0.99997973442077637 0.99994772672653198 
		0;
	setAttr -s 8 ".kox[5:7]"  0.0063692480325698853 0.010222109034657478 
		1;
	setAttr -s 8 ".koy[5:7]"  0.99997973442077637 0.99994772672653198 
		0;
createNode animCurveTA -n "animCurveTA840";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -14.120925422142024 3 -3.3595522507325399 
		7 -3.3595522507325413 11 -3.3595522507325413 15 -3.3595522507325413 19 20.564032674941206 
		23 14.204607168169733 26 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA841";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 10.41569297971105 3 -4.9396511688497027 
		7 -4.9396511688497009 11 -4.9396511688497009 15 -4.9396511688497009 19 -4.9396511688496991 
		23 -25.948901905116422 26 -25.948901905116401;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTA -n "animCurveTA842";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -0.92396648882032695 3 1.4972445100027127 
		7 1.4972445100027127 11 1.4972445100027127 15 1.4972445100027127 19 1.4972445100027136 
		23 0 26 0;
	setAttr -s 8 ".kit[0:7]"  3 9 9 9 9 9 9 
		3;
	setAttr -s 8 ".kot[0:7]"  3 9 9 9 9 9 9 
		3;
createNode animCurveTL -n "animCurveTL287";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.31408772304664229 3 0.19642457445264913 
		7 0.15823007304526798 11 0.15823007304526798 15 0.15519248972161756 19 0.14616272786601378 
		26 0.1393832443869546;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL288";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.16676410758846061 3 0.15484669877420479 
		7 0.1524435862938664 11 0.1524435862938664 15 0.1524435862938664 19 0.1524435862938664 
		26 0.1521046763396838;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL289";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.60752603759332391 3 0.60962402773364444 
		7 0.60962402773364444 11 0.60962402773364444 15 0.60962402773364444 19 0.60954086438809196 
		26 0.6104886602011107;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA843";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -47.030685128504309 3 -0.022973885644725245 
		7 -0.022973885644723264 11 -0.022973885644723264 15 -0.022973885644723264 
		19 -0.022973885644723264 26 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA844";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -21.733570087519642 3 -4.6882558815768487 
		7 -4.6882558815768487 11 -4.6882558815768487 15 -4.6882558815768487 19 -4.6882558815768487 
		26 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA845";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.2230160259486868 3 -0.16613472175511168 
		7 -0.1661347217551114 11 -0.1661347217551114 15 -0.1661347217551114 19 -0.1661347217551114 
		26 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA846";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA847";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA848";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA849";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA850";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA851";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA852";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA853";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA854";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA855";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA856";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA857";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTL -n "animCurveTL290";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.40864513999961338 3 -0.22333560679749456 
		7 -0.22333560679749456 11 -0.22333560679749456 15 -0.22333560679749456 19 
		-0.22333560679749456 26 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL291";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.011617857068574339 3 0.0047180449320975452 
		7 0.0047180449320975452 11 0.0047180449320975452 15 0.0047180449320975452 
		19 0.0047180449320975452 26 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL292";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.94963589092223599 3 1.0196125091168922 
		7 1.0196125091168922 11 1.0196125091168922 15 1.0196125091168922 19 1.0196125091168922 
		26 1;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL293";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.81996708794027429 3 0.22315575876557758 
		7 0.11691854763766964 11 0.22315575876557764 15 0.22315575876557764 19 0.22315575876557764 
		26 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL294";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.039118356651539815 3 0.00065657399703637602 
		7 0.00034400043527802615 11 0.0006565739970363771 15 0.0006565739970363771 
		19 0.0006565739970363771 26 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL295";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.79745410839398134 3 0.98169956815627235 
		7 0.99041180956231334 11 0.98169956815627235 15 0.98169956815627235 19 0.98169956815627235 
		26 1;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL296";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.13763618594322471 3 0.028605664896838145 
		7 0 11 0.015482768190602196 15 0.012608768372103538 19 -0.011269411923662868 
		26 -0.076472881617957691;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL297";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.28031137988230137 3 0.30293817430458275 
		7 0.37858032454604201 11 0.50817395111050712 15 0.69003005611165225 19 0.84067778085996969 
		26 0.96474337111153452;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 1 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 1 3;
	setAttr -s 7 ".kix[5:6]"  0.009424983523786068 1;
	setAttr -s 7 ".kiy[5:6]"  0.99995559453964233 0;
	setAttr -s 7 ".kox[5:6]"  0.0094250226393342018 1;
	setAttr -s 7 ".koy[5:6]"  0.99995559453964233 0;
createNode animCurveTL -n "animCurveTL298";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0 7 0 11 0.064654592328878019 
		15 0.25801175601981974 19 0.48972802265989812 26 0.60970435773207488;
	setAttr -s 7 ".kit[5:6]"  1 3;
	setAttr -s 7 ".kot[5:6]"  1 3;
	setAttr -s 7 ".kix[5:6]"  0.0073253256268799305 1;
	setAttr -s 7 ".kiy[5:6]"  0.99997317790985107 0;
	setAttr -s 7 ".kox[5:6]"  0.0073254755698144436 1;
	setAttr -s 7 ".koy[5:6]"  0.99997317790985107 0;
createNode animCurveTA -n "animCurveTA858";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -86.635327210264862 3 -79.146948920859813 
		7 -59.821005112734596 11 -28.33665606343887 15 -9.6759471615539088 19 -3.0043884340853788 
		26 -0.62843630316474508;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA859";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.4335928156981164 3 5.9161753771627579 
		7 18.605507114253399 11 24.00532755117198 15 16.292147653073098 19 4.4882266296814102 
		26 -5.8284402688137167;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 1 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 1 3;
	setAttr -s 7 ".kix[5:6]"  0.56783181428909302 1;
	setAttr -s 7 ".kiy[5:6]"  -0.82314461469650269 0;
	setAttr -s 7 ".kox[5:6]"  0.56783181428909302 1;
	setAttr -s 7 ".koy[5:6]"  -0.82314461469650269 0;
createNode animCurveTA -n "animCurveTA860";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.88505153303575701 3 -3.8464568117446487 
		7 -16.646029342208241 11 -24.108400976826566 15 -13.120898120206197 19 -5.5740851086101477 
		26 -1.295636019309746;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA861";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA862";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA863";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 4.0984482521620249 
		23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA864";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 18.588300303494186 
		23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA865";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA866";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA867";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 -22.686733334985114 
		23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA868";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA869";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA870";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 1.0579251312417477e-005 
		23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA871";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA872";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA873";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 4.0984482535121209 
		23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA874";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 18.588300300216801 
		23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA875";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA876";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA877";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 -22.686733333057838 
		23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA878";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA879";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA880";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 1.0579251312417477e-005 
		23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA881";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA882";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA883";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 2.4782236286598103 
		23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA884";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA885";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA886";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.0579251312417481e-005 22.995000000000001 
		0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTL -n "animCurveTL305";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.2355216250307488 3 -1.0988856594775507 
		7 -0.74125000457812351 11 -0.82118920978498255 15 -0.89052255408902525 19 
		-0.82277864146671942 26 -0.84654347043021561;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL306";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.35282942294141956 3 0.15492786263519939 
		7 0.46671762609042722 11 0.8019622710548443 15 0.94215256812709836 19 1.0724436222146039 
		26 1.2151450287453427;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL307";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.48416228445127502 3 -0.513212660001924 
		7 -0.28302123618346881 11 0.095704966686430637 15 0.73728623921252312 19 
		0.88792299624988258 26 0.86588987779500937;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA893";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -50.361592792450381 3 -18.256514529804345 
		7 -28.483866458076022 11 -28.458581089885694 15 4.4195540109747071 19 4.4195540109747071 
		26 -13.607468531903837;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA894";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 10.054523309489301 3 -2.4828358328791813 
		7 -8.8236837048491026 11 7.5672582180134444 15 23.284568026430907 19 23.284568026430907 
		26 5.324841333163417;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA895";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 2.6526871509000878 3 -9.1336577498504372 
		7 36.440181907545266 11 16.029264831094771 15 49.263706929168556 19 49.263706929168556 
		26 56.915544200805975;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL308";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.5863752002046139 3 1.1135290147655001 
		7 0.83980188004008882 11 0.8638937722807245 15 0.94320402038398987 19 0.86815712052135141 
		26 0.61083301393139333;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL309";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0.12980859841378997 3 0.15257621145787839 
		7 0.18904845089899242 11 0.43929769023864212 15 1.040930052638158 19 1.1314781271979257 
		26 1.205921556906836;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL310";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.90890894826263013 3 -0.54707516955009661 
		7 -0.59139316849769696 11 -0.47793616898939911 15 0.65530135050345584 19 
		0.89612273203650561 26 1.1070275281116002;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA896";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -31.327774861751749 3 -20.234780005577235 
		7 -45.75970025673773 11 -58.551617424345764 15 -3.1183112600786194 19 20.525887924227419 
		26 -0.14751373646059329;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA897";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.5331587519928691 3 -5.0729941571643353 
		7 44.88918040480366 11 18.668585756318439 15 14.388843921184653 19 -13.356807039857225 
		26 -8.513966085499284;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA898";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.315047826080785 3 -16.038326673728893 
		7 -51.793825864439455 11 -75.217266398404291 15 -80.577686736524583 19 -71.348221520869714 
		26 -58.29195475029789;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL311";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 1.1879811394416333 7 0.99925943057965894 
		11 0.99925943057965894 15 0.99925943057965894 19 0.99925943057965894 26 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL312";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 3 0.092806173952533086 7 -1.1241231302067372 
		11 -1.1241231302067372 15 -1.1241231302067372 19 -1.1241231302067372 26 0;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL313";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1 3 -3.0854411469640191 7 -2.0075305717115923 
		11 -2.0075305717115923 15 -2.0075305717115923 19 -2.0075305717115923 26 -1;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL314";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -0.44472090212388388 3 -0.48509245082053676 
		7 -0.59788775323863297 11 -0.59788775323863297 15 -0.59788775323863297 19 
		-0.59788775323863297 26 -0.10167917362943303;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL315";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.2439946116996796 3 -0.9088128466581451 
		7 -1.6361478719279683 11 -1.6361478719279683 15 -1.6361478719279683 19 -1.6361478719279683 
		26 -0.40762644910266188;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTL -n "animCurveTL316";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -2.3149332509255429 3 -2.9409889976803378 
		7 -2.2967427684127548 11 -2.2967427684127548 15 -2.2967427684127548 19 -2.2967427684127548 
		26 -0.93129112588482243;
	setAttr -s 7 ".kit[0:6]"  3 9 9 9 9 9 3;
	setAttr -s 7 ".kot[0:6]"  3 9 9 9 9 9 3;
createNode animCurveTA -n "animCurveTA899";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 43.313055617354287 3 -18.309018317220797 
		6 81.419646804863334 7 80.425561779386868 11 80.425561779386868 14 80.425561779386868 
		18 80.425561779386868 20 61.27800369881539 23 26.634200838988995 26 12.253734489678925;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA900";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 5.5328457016804604 3 -9.2215455528079815 
		6 -31.40875817992039 7 -30.44506412614497 11 -30.44506412614497 14 -30.44506412614497 
		18 -30.44506412614497 20 -44.624000750020848 23 -68.169688810027651 26 -65.746751280844975;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA901";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1.6451165553684832 3 -46.531980442194019 
		6 -73.208816375825805 7 -71.256105225350495 11 -71.256105225350495 14 -71.256105225350495 
		18 -71.256105225350495 20 -55.968086925883021 23 -25.97049403587981 26 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA902";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 12.106481619659672 3 6.227974840355941 
		6 43.97243230285406 7 43.141146641774455 11 43.141146641774455 14 43.141146641774455 
		18 43.141146641774455 20 40.806239150974768 23 31.735857389407819 26 -0.061808866237340665;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA903";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 21.161305136813464 3 -1.7334334397090034 
		6 -35.760027556460741 7 -34.275123249513896 11 -34.275123249513896 14 -34.275123249513896 
		18 -34.275123249513896 20 -45.529772336199493 23 -63.769642788512684 26 -59.058178941076754;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA904";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -21.207452285138611 3 -34.104076028377683 
		6 -50.564010018552679 7 -49.798186726856557 11 -49.798186726856557 14 -49.798186726856557 
		18 -49.798186726856557 20 -45.04888720480325 23 -29.585363300515379 26 16.57914742975785;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA905";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 9.342304586567403 3 33.933271882538506 
		6 23.652406785755943 7 23.279099769107546 11 23.279099769107546 14 23.279099769107546 
		18 23.279099769107546 20 19.579295489252132 23 12.670039063265145 26 8.5572674112203639;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA906";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 14.326926958980692 3 41.943718227327601 
		6 21.898528976085021 7 21.701008910528312 11 21.701008910528312 14 21.701008910528312 
		18 21.701008910528312 20 26.304974838475427 23 31.526437289979079 26 15.711328223519061;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA907";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 32.145951579643636 3 78.688025317010386 
		6 -12.598757125528632 7 -11.43150384892092 11 -11.43150384892092 14 -11.43150384892092 
		18 -11.43150384892092 20 -2.4314459172259628 23 10.989672158724799 26 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA908";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 2.4180200242859677 3 -13.48098550449483 
		6 58.064917426530705 7 56.613259276433958 11 56.613259276433958 14 56.613259276433958 
		18 56.613259276433958 20 32.174315376340758 23 -7.8213229000335227 26 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA909";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -14.0814753787794 3 -8.8999227178927853 
		6 13.860565489932075 7 13.131642679464063 11 13.131642679464063 14 13.131642679464063 
		18 13.131642679464063 20 11.343644125464982 23 7.1689180217311153 26 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA910";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 71.390818193217257 3 55.694164442899918 
		6 -38.70001192203523 7 -35.828077252198852 11 -35.828077252198852 14 -35.828077252198852 
		18 -35.828077252198852 20 -18.372570913557379 23 9.5543091941466951 26 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA911";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -9.2933896978321879 3 -23.946760465408996 
		6 8.2873019791201301 7 7.8286751959834726 11 7.8286751959834726 14 7.8286751959834726 
		18 7.8286751959834726 20 6.2617420774769208 23 3.1141991673710265 26 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA912";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 10.87922428714811 3 -34.311693357567449 
		6 -18.488583595266238 7 -17.722466912710736 11 -17.722466912710736 14 -17.722466912710736 
		18 -17.722466912710736 20 -16.348193706468418 23 -12.079825411483434 26 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA913";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 100.32615946361906 6 103.01346718723768 
		7 100.32615946361906 11 100.32615946361906 14 100.32615946361906 18 113.68813950868184 
		20 125.64333600800855 23 159.22458090630775 26 183.35605950725034;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA914";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 15.180891733866945 6 15.587522780355444 
		7 15.180891733866947 11 15.180891733866947 14 15.180891733866947 18 15.180891733866947 
		20 19.018390292374473 23 24.763581885184824 26 27.804554996454378;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA915";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 -0.072787087017034596 6 -0.074736741237054871 
		7 -0.072787087017036858 11 -0.072787087017036858 14 -0.072787087017036858 
		18 4.7689399712370433 20 9.7651538691513124 23 20.629967465604327 26 29.452980944098744;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA916";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 7 0 11 0 14 0 18 0 
		20 0 26 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA917";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 7 0 11 0 14 0 18 0 
		20 0 26 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA918";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 -19.69381977483518 6 -20.221332817941651 
		7 -19.693819774835177 11 -19.693819774835177 14 5.3447501657365271 18 5.3447501657365271 
		20 10.778578823680483 26 27.080064458283051;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA919";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA920";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA921";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 22.995000000000001 0 23 0;
	setAttr -s 3 ".kit[0:2]"  3 9 9;
	setAttr -s 3 ".kot[0:2]"  3 9 9;
createNode animCurveTA -n "animCurveTA922";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA923";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA924";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA925";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA926";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA927";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 26 0;
createNode animCurveTA -n "animCurveTA928";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 7 0 11 0 14 0 18 0 
		20 0 26 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA929";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 7 0 11 0 14 0 18 0 
		20 0 26 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA930";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 -14.841309524368913 6 25.722225142090426 
		7 36.345745600030277 11 36.345745600030277 14 36.345745600030277 18 36.345745600030277 
		20 34.237217337984283 26 27.911632519594587;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA931";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 3.1198943483277448 6 3.2034629431710244 
		7 3.1198943483277444 11 3.1198943483277444 14 3.1535198237718265 15 3.1198943483277444 
		19 2.6416653373079941 20 2.2869551714139744 26 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA932";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 1.7238169885910808 6 1.7699906550873272 
		7 1.7238169885910806 11 1.7238169885910806 14 1.6767420968334241 15 1.7238169885910806 
		19 2.3933265768012308 20 2.1456172915352947 26 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA933";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 12.268388134198538 6 12.597005683798374 
		7 12.268388134198538 11 12.268388134198538 14 13.200291720973206 15 12.268388134198538 
		19 -0.98535169298374803 20 -1.7501795675873064 26 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA934";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -4.6297048981494955 6 -4.0891381983600628 
		14 -5.763488788223758 20 -2.9492287702451274 26 -0.65073001024951671;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA935";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.35757313242625977 6 -5.2691310546438714 
		14 3.2639936236315723 20 -0.40901987027835168 26 -4.2368721935960938;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA936";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -8.3596211209238493 6 3.4963722086676299 
		14 14.758182997353124 20 8.6690912653321579 26 2.6995264082587447;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA937";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.040577927395231195 3 0 6 -6.4028222558599008 
		7 -7.9999370898970845 11 -7.9999370898970845 14 -1.6249872299056154 15 0 
		19 0 20 0 26 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA938";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.76977674774379068 3 0 6 11.954781743268725 
		7 14.913542194108478 11 14.913542194108478 14 3.0293132309425981 15 0 19 
		0 20 0 26 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA939";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 10.949080790025388 3 0 6 1.4976739975127324 
		7 2.2380667495943958 11 2.2380667495943958 14 0.45460730958797674 15 0 19 
		0 20 0 26 0;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA940";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -27.138591323308027 6 6.4044599061097216 
		14 9.1796748650697921 20 7.4954676917642438 26 0;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA941";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -61.310693300052847 6 21.954761503443528 
		14 2.730537265590061 20 1.7724062710001944 26 -5.2836650271627628;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA942";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 16.177650372523711 6 11.402856239353078 
		14 -1.9444156693031276 20 -8.9617467533042845 26 6.6786334979782911;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA943";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 8.4113918914028858 14 -6.9342240108693893 
		20 -2.1831715878860276 26 -1.8903601258661935;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA944";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 2.1202015313288198 14 9.6190528217336411 
		20 1.2415785212215849 26 2.5597289571479038;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA945";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -9.9115268575895001 6 28.587181414248612 
		14 21.493323311314022 20 21.640846747544614 26 2.0168110874036049;
	setAttr -s 5 ".kit[0:4]"  3 9 9 9 3;
	setAttr -s 5 ".kot[0:4]"  3 9 9 9 3;
createNode animCurveTA -n "animCurveTA946";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 7 0 11 0 14 0 18 0 
		20 0 26 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA947";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 7 0 11 0 14 0 18 0 
		20 0 26 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA948";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 16.736721183175977 6 46.666876723174006 
		7 53.578754763520188 11 53.578754763520188 14 53.578754763520188 18 53.578754763520188 
		20 48.541339041981296 26 33.429092416277157;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA949";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 117.03780112139569 6 123.18914383356496 
		7 120.80725107398109 11 120.80725107398109 14 120.80725107398109 18 120.80725107398109 
		20 119.22603423288882 23 113.90544202077707 26 106.91515461315004;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA950";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 2.1381503000571307 6 31.417249796377579 
		7 38.655245743112097 11 38.655245743112097 14 38.655245743112097 18 38.655245743112097 
		20 33.845423596219767 23 29.180237895781211 26 28.612774017129322;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA951";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 3 -6.3333534086058823 6 -11.304971131175565 
		7 -12.334147019543275 11 -12.334147019543275 14 -12.334147019543275 18 -12.334147019543275 
		20 -4.5085642334440736 23 7.2832505657993964 26 17.632837226638053;
	setAttr -s 10 ".kit[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
	setAttr -s 10 ".kot[0:9]"  3 9 9 9 9 9 9 
		9 9 3;
createNode animCurveTA -n "animCurveTA952";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 7 0 11 0 14 0 18 0 
		20 0 26 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA953";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 0 6 0 7 0 11 0 14 0 18 0 
		20 0 26 0;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode animCurveTA -n "animCurveTA954";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 3 17.545620107018433 6 18.015592039630018 
		7 17.545620107018433 11 17.545620107018433 14 32.217762431020311 18 32.217762431020311 
		20 28.476851016436701 26 17.254116939558365;
	setAttr -s 9 ".kit[0:8]"  3 9 9 9 9 9 9 
		9 3;
	setAttr -s 9 ".kot[0:8]"  3 9 9 9 9 9 9 
		9 3;
createNode clipLibrary -n "clipLibrary1";
	setAttr -s 156 ".cel[0].cev";
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
	setAttr -s 24 ".lnk";
select -ne :time1;
	setAttr ".o" 26;
select -ne :renderPartition;
	setAttr -s 24 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 24 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 4 ".tx";
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
	setAttr -s 678 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".top" 478;
	setAttr ".rght" 638;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
select -ne :defaultResolution;
	setAttr ".w" 720;
	setAttr ".h" 486;
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
connectAttr "mlh_get_upSource.st" "clipLibrary1.st[0]";
connectAttr "mlh_get_upSource.du" "clipLibrary1.du[0]";
connectAttr "animCurveTL276.a" "clipLibrary1.cel[0].cev[0].cevr";
connectAttr "animCurveTL277.a" "clipLibrary1.cel[0].cev[1].cevr";
connectAttr "animCurveTL278.a" "clipLibrary1.cel[0].cev[2].cevr";
connectAttr "animCurveTL279.a" "clipLibrary1.cel[0].cev[3].cevr";
connectAttr "animCurveTL280.a" "clipLibrary1.cel[0].cev[4].cevr";
connectAttr "animCurveTA836.a" "clipLibrary1.cel[0].cev[5].cevr";
connectAttr "animCurveTU41.a" "clipLibrary1.cel[0].cev[6].cevr";
connectAttr "animCurveTU42.a" "clipLibrary1.cel[0].cev[7].cevr";
connectAttr "animCurveTU43.a" "clipLibrary1.cel[0].cev[8].cevr";
connectAttr "animCurveTU44.a" "clipLibrary1.cel[0].cev[9].cevr";
connectAttr "animCurveTU45.a" "clipLibrary1.cel[0].cev[10].cevr";
connectAttr "animCurveTU46.a" "clipLibrary1.cel[0].cev[11].cevr";
connectAttr "animCurveTU47.a" "clipLibrary1.cel[0].cev[12].cevr";
connectAttr "animCurveTU48.a" "clipLibrary1.cel[0].cev[13].cevr";
connectAttr "animCurveTA837.a" "clipLibrary1.cel[0].cev[14].cevr";
connectAttr "animCurveTA838.a" "clipLibrary1.cel[0].cev[15].cevr";
connectAttr "animCurveTA839.a" "clipLibrary1.cel[0].cev[16].cevr";
connectAttr "animCurveTL281.a" "clipLibrary1.cel[0].cev[17].cevr";
connectAttr "animCurveTL282.a" "clipLibrary1.cel[0].cev[18].cevr";
connectAttr "animCurveTL283.a" "clipLibrary1.cel[0].cev[19].cevr";
connectAttr "animCurveTL284.a" "clipLibrary1.cel[0].cev[20].cevr";
connectAttr "animCurveTL285.a" "clipLibrary1.cel[0].cev[21].cevr";
connectAttr "animCurveTL286.a" "clipLibrary1.cel[0].cev[22].cevr";
connectAttr "animCurveTA840.a" "clipLibrary1.cel[0].cev[23].cevr";
connectAttr "animCurveTA841.a" "clipLibrary1.cel[0].cev[24].cevr";
connectAttr "animCurveTA842.a" "clipLibrary1.cel[0].cev[25].cevr";
connectAttr "animCurveTL287.a" "clipLibrary1.cel[0].cev[26].cevr";
connectAttr "animCurveTL288.a" "clipLibrary1.cel[0].cev[27].cevr";
connectAttr "animCurveTL289.a" "clipLibrary1.cel[0].cev[28].cevr";
connectAttr "animCurveTA843.a" "clipLibrary1.cel[0].cev[29].cevr";
connectAttr "animCurveTA844.a" "clipLibrary1.cel[0].cev[30].cevr";
connectAttr "animCurveTA845.a" "clipLibrary1.cel[0].cev[31].cevr";
connectAttr "animCurveTA846.a" "clipLibrary1.cel[0].cev[32].cevr";
connectAttr "animCurveTA847.a" "clipLibrary1.cel[0].cev[33].cevr";
connectAttr "animCurveTA848.a" "clipLibrary1.cel[0].cev[34].cevr";
connectAttr "animCurveTA849.a" "clipLibrary1.cel[0].cev[35].cevr";
connectAttr "animCurveTA850.a" "clipLibrary1.cel[0].cev[36].cevr";
connectAttr "animCurveTA851.a" "clipLibrary1.cel[0].cev[37].cevr";
connectAttr "animCurveTA852.a" "clipLibrary1.cel[0].cev[38].cevr";
connectAttr "animCurveTA853.a" "clipLibrary1.cel[0].cev[39].cevr";
connectAttr "animCurveTA854.a" "clipLibrary1.cel[0].cev[40].cevr";
connectAttr "animCurveTA855.a" "clipLibrary1.cel[0].cev[41].cevr";
connectAttr "animCurveTA856.a" "clipLibrary1.cel[0].cev[42].cevr";
connectAttr "animCurveTA857.a" "clipLibrary1.cel[0].cev[43].cevr";
connectAttr "animCurveTL290.a" "clipLibrary1.cel[0].cev[44].cevr";
connectAttr "animCurveTL291.a" "clipLibrary1.cel[0].cev[45].cevr";
connectAttr "animCurveTL292.a" "clipLibrary1.cel[0].cev[46].cevr";
connectAttr "animCurveTL293.a" "clipLibrary1.cel[0].cev[47].cevr";
connectAttr "animCurveTL294.a" "clipLibrary1.cel[0].cev[48].cevr";
connectAttr "animCurveTL295.a" "clipLibrary1.cel[0].cev[49].cevr";
connectAttr "animCurveTL296.a" "clipLibrary1.cel[0].cev[50].cevr";
connectAttr "animCurveTL297.a" "clipLibrary1.cel[0].cev[51].cevr";
connectAttr "animCurveTL298.a" "clipLibrary1.cel[0].cev[52].cevr";
connectAttr "animCurveTA858.a" "clipLibrary1.cel[0].cev[53].cevr";
connectAttr "animCurveTA859.a" "clipLibrary1.cel[0].cev[54].cevr";
connectAttr "animCurveTA860.a" "clipLibrary1.cel[0].cev[55].cevr";
connectAttr "animCurveTA861.a" "clipLibrary1.cel[0].cev[56].cevr";
connectAttr "animCurveTA862.a" "clipLibrary1.cel[0].cev[57].cevr";
connectAttr "animCurveTA863.a" "clipLibrary1.cel[0].cev[58].cevr";
connectAttr "animCurveTA864.a" "clipLibrary1.cel[0].cev[59].cevr";
connectAttr "animCurveTA865.a" "clipLibrary1.cel[0].cev[60].cevr";
connectAttr "animCurveTA866.a" "clipLibrary1.cel[0].cev[61].cevr";
connectAttr "animCurveTA867.a" "clipLibrary1.cel[0].cev[62].cevr";
connectAttr "animCurveTA868.a" "clipLibrary1.cel[0].cev[63].cevr";
connectAttr "animCurveTA869.a" "clipLibrary1.cel[0].cev[64].cevr";
connectAttr "animCurveTA870.a" "clipLibrary1.cel[0].cev[65].cevr";
connectAttr "animCurveTA871.a" "clipLibrary1.cel[0].cev[66].cevr";
connectAttr "animCurveTA872.a" "clipLibrary1.cel[0].cev[67].cevr";
connectAttr "animCurveTA873.a" "clipLibrary1.cel[0].cev[68].cevr";
connectAttr "animCurveTA874.a" "clipLibrary1.cel[0].cev[69].cevr";
connectAttr "animCurveTA875.a" "clipLibrary1.cel[0].cev[70].cevr";
connectAttr "animCurveTA876.a" "clipLibrary1.cel[0].cev[71].cevr";
connectAttr "animCurveTA877.a" "clipLibrary1.cel[0].cev[72].cevr";
connectAttr "animCurveTA878.a" "clipLibrary1.cel[0].cev[73].cevr";
connectAttr "animCurveTA879.a" "clipLibrary1.cel[0].cev[74].cevr";
connectAttr "animCurveTA880.a" "clipLibrary1.cel[0].cev[75].cevr";
connectAttr "animCurveTA881.a" "clipLibrary1.cel[0].cev[76].cevr";
connectAttr "animCurveTA882.a" "clipLibrary1.cel[0].cev[77].cevr";
connectAttr "animCurveTA883.a" "clipLibrary1.cel[0].cev[78].cevr";
connectAttr "animCurveTA884.a" "clipLibrary1.cel[0].cev[79].cevr";
connectAttr "animCurveTA885.a" "clipLibrary1.cel[0].cev[80].cevr";
connectAttr "animCurveTA886.a" "clipLibrary1.cel[0].cev[81].cevr";
connectAttr "animCurveTL305.a" "clipLibrary1.cel[0].cev[94].cevr";
connectAttr "animCurveTL306.a" "clipLibrary1.cel[0].cev[95].cevr";
connectAttr "animCurveTL307.a" "clipLibrary1.cel[0].cev[96].cevr";
connectAttr "animCurveTA893.a" "clipLibrary1.cel[0].cev[97].cevr";
connectAttr "animCurveTA894.a" "clipLibrary1.cel[0].cev[98].cevr";
connectAttr "animCurveTA895.a" "clipLibrary1.cel[0].cev[99].cevr";
connectAttr "animCurveTL308.a" "clipLibrary1.cel[0].cev[100].cevr";
connectAttr "animCurveTL309.a" "clipLibrary1.cel[0].cev[101].cevr";
connectAttr "animCurveTL310.a" "clipLibrary1.cel[0].cev[102].cevr";
connectAttr "animCurveTA896.a" "clipLibrary1.cel[0].cev[103].cevr";
connectAttr "animCurveTA897.a" "clipLibrary1.cel[0].cev[104].cevr";
connectAttr "animCurveTA898.a" "clipLibrary1.cel[0].cev[105].cevr";
connectAttr "animCurveTL311.a" "clipLibrary1.cel[0].cev[106].cevr";
connectAttr "animCurveTL312.a" "clipLibrary1.cel[0].cev[107].cevr";
connectAttr "animCurveTL313.a" "clipLibrary1.cel[0].cev[108].cevr";
connectAttr "animCurveTL314.a" "clipLibrary1.cel[0].cev[109].cevr";
connectAttr "animCurveTL315.a" "clipLibrary1.cel[0].cev[110].cevr";
connectAttr "animCurveTL316.a" "clipLibrary1.cel[0].cev[111].cevr";
connectAttr "animCurveTA899.a" "clipLibrary1.cel[0].cev[112].cevr";
connectAttr "animCurveTA900.a" "clipLibrary1.cel[0].cev[113].cevr";
connectAttr "animCurveTA901.a" "clipLibrary1.cel[0].cev[114].cevr";
connectAttr "animCurveTA902.a" "clipLibrary1.cel[0].cev[115].cevr";
connectAttr "animCurveTA903.a" "clipLibrary1.cel[0].cev[116].cevr";
connectAttr "animCurveTA904.a" "clipLibrary1.cel[0].cev[117].cevr";
connectAttr "animCurveTA905.a" "clipLibrary1.cel[0].cev[118].cevr";
connectAttr "animCurveTA906.a" "clipLibrary1.cel[0].cev[119].cevr";
connectAttr "animCurveTA907.a" "clipLibrary1.cel[0].cev[120].cevr";
connectAttr "animCurveTA908.a" "clipLibrary1.cel[0].cev[121].cevr";
connectAttr "animCurveTA909.a" "clipLibrary1.cel[0].cev[122].cevr";
connectAttr "animCurveTA910.a" "clipLibrary1.cel[0].cev[123].cevr";
connectAttr "animCurveTA911.a" "clipLibrary1.cel[0].cev[124].cevr";
connectAttr "animCurveTA912.a" "clipLibrary1.cel[0].cev[125].cevr";
connectAttr "animCurveTA913.a" "clipLibrary1.cel[0].cev[126].cevr";
connectAttr "animCurveTA914.a" "clipLibrary1.cel[0].cev[127].cevr";
connectAttr "animCurveTA915.a" "clipLibrary1.cel[0].cev[128].cevr";
connectAttr "animCurveTA916.a" "clipLibrary1.cel[0].cev[129].cevr";
connectAttr "animCurveTA917.a" "clipLibrary1.cel[0].cev[130].cevr";
connectAttr "animCurveTA918.a" "clipLibrary1.cel[0].cev[131].cevr";
connectAttr "animCurveTA919.a" "clipLibrary1.cel[0].cev[132].cevr";
connectAttr "animCurveTA920.a" "clipLibrary1.cel[0].cev[133].cevr";
connectAttr "animCurveTA921.a" "clipLibrary1.cel[0].cev[134].cevr";
connectAttr "animCurveTA922.a" "clipLibrary1.cel[0].cev[135].cevr";
connectAttr "animCurveTA923.a" "clipLibrary1.cel[0].cev[136].cevr";
connectAttr "animCurveTA924.a" "clipLibrary1.cel[0].cev[137].cevr";
connectAttr "animCurveTA925.a" "clipLibrary1.cel[0].cev[138].cevr";
connectAttr "animCurveTA926.a" "clipLibrary1.cel[0].cev[139].cevr";
connectAttr "animCurveTA927.a" "clipLibrary1.cel[0].cev[140].cevr";
connectAttr "animCurveTA928.a" "clipLibrary1.cel[0].cev[141].cevr";
connectAttr "animCurveTA929.a" "clipLibrary1.cel[0].cev[142].cevr";
connectAttr "animCurveTA930.a" "clipLibrary1.cel[0].cev[143].cevr";
connectAttr "animCurveTA931.a" "clipLibrary1.cel[0].cev[144].cevr";
connectAttr "animCurveTA932.a" "clipLibrary1.cel[0].cev[145].cevr";
connectAttr "animCurveTA933.a" "clipLibrary1.cel[0].cev[146].cevr";
connectAttr "animCurveTA934.a" "clipLibrary1.cel[0].cev[147].cevr";
connectAttr "animCurveTA935.a" "clipLibrary1.cel[0].cev[148].cevr";
connectAttr "animCurveTA936.a" "clipLibrary1.cel[0].cev[149].cevr";
connectAttr "animCurveTA937.a" "clipLibrary1.cel[0].cev[150].cevr";
connectAttr "animCurveTA938.a" "clipLibrary1.cel[0].cev[151].cevr";
connectAttr "animCurveTA939.a" "clipLibrary1.cel[0].cev[152].cevr";
connectAttr "animCurveTA940.a" "clipLibrary1.cel[0].cev[153].cevr";
connectAttr "animCurveTA941.a" "clipLibrary1.cel[0].cev[154].cevr";
connectAttr "animCurveTA942.a" "clipLibrary1.cel[0].cev[155].cevr";
connectAttr "animCurveTA943.a" "clipLibrary1.cel[0].cev[156].cevr";
connectAttr "animCurveTA944.a" "clipLibrary1.cel[0].cev[157].cevr";
connectAttr "animCurveTA945.a" "clipLibrary1.cel[0].cev[158].cevr";
connectAttr "animCurveTA946.a" "clipLibrary1.cel[0].cev[159].cevr";
connectAttr "animCurveTA947.a" "clipLibrary1.cel[0].cev[160].cevr";
connectAttr "animCurveTA948.a" "clipLibrary1.cel[0].cev[161].cevr";
connectAttr "animCurveTA949.a" "clipLibrary1.cel[0].cev[162].cevr";
connectAttr "animCurveTA950.a" "clipLibrary1.cel[0].cev[163].cevr";
connectAttr "animCurveTA951.a" "clipLibrary1.cel[0].cev[164].cevr";
connectAttr "animCurveTA952.a" "clipLibrary1.cel[0].cev[165].cevr";
connectAttr "animCurveTA953.a" "clipLibrary1.cel[0].cev[166].cevr";
connectAttr "animCurveTA954.a" "clipLibrary1.cel[0].cev[167].cevr";
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
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[21].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[22].llnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[23].llnk";
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
// End of mlh_get_up.ma
