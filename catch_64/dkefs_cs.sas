/*
	Non-normally distributed data set:
	D-KEFS Card Sorting Task
*/

ods html;
ods html style=statistical;
ods html path='R:\Krawczyk- Adult SMART-TBI-Stroke study\Warrior Study\
Database Files\SASdata\Output\';
ods graphics / reset; * Clear the html graphics from previous output;

ods graphics on/imagefmt=jpeg;
ods preferences;

option nodate pageno=1 center ps=80 orientation=portrait;
title ;
title2 ;
Footnote ;
footnote2 ;

libname nn 'R:\Krawczyk- Adult SMART-TBI-Stroke study\Warrior Study\
Database Files\SASdata\SAS Datasets\NonNormal';


data nn.dkefs_cs;
	infile 'R:\Krawczyk- Adult SMART-TBI-Stroke study\Warrior Study\
Database Files\SASdata\Data\Non-Normal Data\dkefs_cs_nn.csv' firstobs=2
dsd missover; 
	length  DOD_ID $ 8. ;
	length 	TGroup $ 5. ;

    input   DOD_ID $ : TGroup $ :
			T1_CS_Cnd1_Cor_Srts_RS T1_CS_Cnd1_Desc_RS T1_CS_Cnd1_CorVrbSrts_RS 
			T1_CS_Cnd1_Percep_Srts_RS T1_CS_Cnd1_PctSrtAcc_RS T1_CS_Cnd1_TimeSrtRatio_RS 
			T1_CS_Cnd1_PctDesc_RS T1_CS_Cnd2_Desc_RS T1_CS_Cmb_DescVrb_RS 
			T1_CS_CmbDescPercept_RS T1_CS_Cmb_KDK_RS T2_CS_Cnd1_Cor_Srts_RS 
			T2_CS_Cnd1_Desc_RS T2_CS_Cnd1_CorVrbSrts_RS T2_CS_Cnd1_Percep_Srts_RS 
			T2_CS_Cnd1_PctSrtAcc_RS T2_CS_Cnd1_TimeSrtRatio_RS T2_CS_Cnd1_PctDesc_RS 
			T2_CS_Cnd2_Desc_RS T2_CS_Cmb_DescVrb_RS T2_CS_CmbDescPercept_RS 
			T2_CS_Cmb_KDK_RS T3_CS_Cnd1_Cor_Srts_RS T3_CS_Cnd1_Desc_RS 
			T3_CS_Cnd1_CorVrbSrts_RS T3_CS_Cnd1_Percep_Srts_RS T3_CS_Cnd1_PctSrtAcc_RS 
			T3_CS_Cnd1_TimeSrtRatio_RS T3_CS_Cnd1_PctDesc_RS T3_CS_Cnd2_Desc_RS 
			T3_CS_Cmb_DescVrb_RS T3_CS_CmbDescPercept_RS T3_CS_Cmb_KDK_RS ;

	label 	DOD_ID						= "DoD ID"
			TGroup						= "Training Group"
			T1_CS_Cnd1_Cor_Srts_RS 		= "(Pre) Card Sorting Condition 1: Correct Sorts RS"
			T1_CS_Cnd1_Desc_RS 			= "(Pre) Card Sorting Condition 1: Description RS"
			T1_CS_Cnd1_CorVrbSrts_RS 	= "(Pre) Card Sorting Condition 1: Correct Verbal Sorts RS"
			T1_CS_Cnd1_Percep_Srts_RS 	= "(Pre) Card Sorting Condition 1: Perceptual Sorts RS"
			T1_CS_Cnd1_PctSrtAcc_RS		= "(Pre) Card Sorting Condition 1: Sort Accuracy (pct)"
			T1_CS_Cnd1_TimeSrtRatio_RS 	= "(Pre) Card Sorting Condition 1: Time/Sort Ratio RS"
			T1_CS_Cnd1_PctDesc_RS		= "(Pre) Card Sorting Condition 1: Description (pct) RS"
			T1_CS_Cnd2_Desc_RS 			= "(Pre) Card Sorting Condition 2: Description RS"
			T1_CS_Cmb_DescVrb_RS 		= "(Pre) Card Sorting Combined Description & Verbal RS"
			T1_CS_CmbDescPercept_RS 	= "(Pre) Card Sorting Combined Description & Perceptual RS"
			T1_CS_Cmb_KDK_RS 			= "(Pre) Card Sorting Combined  Know-Don't-Know RS"
			T2_CS_Cnd1_Cor_Srts_RS 		= "(Post) Card Sorting Condition 1: Correct Sorts RS"
			T2_CS_Cnd1_Desc_RS 			= "(Post) Card Sorting Condition 1: Description RS"
			T2_CS_Cnd1_CorVrbSrts_RS 	= "(Post) Card Sorting Condition 1: Correct Verbal Sorts RS"
			T2_CS_Cnd1_Percep_Srts_RS 	= "(Post) Card Sorting Condition 1: Perceptual Sorts RS"
			T2_CS_Cnd1_PctSrtAcc_RS		= "(Post) Card Sorting Condition 1: Sort Accuracy (pct)"
			T2_CS_Cnd1_TimeSrtRatio_RS 	= "(Post) Card Sorting Condition 1: Time/Sort Ratio RS"
			T2_CS_Cnd1_PctDesc_RS		= "(Post) Card Sorting Condition 1: Description (pct) RS"
			T2_CS_Cnd2_Desc_RS 			= "(Post) Card Sorting Condition 2: Description RS"
			T2_CS_Cmb_DescVrb_RS 		= "(Post) Card Sorting Combined Description & Verbal RS"
			T2_CS_CmbDescPercept_RS 	= "(Post) Card Sorting Combined Description & Perceptual RS"
			T2_CS_Cmb_KDK_RS 			= "(Post) Card Sorting Combined  Know-Don't-Know RS"
			T3_CS_Cnd1_Cor_Srts_RS 		= "(DPost) Card Sorting Condition 1: Correct Sorts RS"
			T3_CS_Cnd1_Desc_RS 			= "(DPost) Card Sorting Condition 1: Description RS"
			T3_CS_Cnd1_CorVrbSrts_RS 	= "(DPost) Card Sorting Condition 1: Correct Verbal Sorts RS"
			T3_CS_Cnd1_Percep_Srts_RS 	= "(DPost) Card Sorting Condition 1: Perceptual Sorts RS"
			T3_CS_Cnd1_PctSrtAcc_RS		= "(DPost) Card Sorting Condition 1: Sort Accuracy (pct)"
			T3_CS_Cnd1_TimeSrtRatio_RS 	= "(DPost) Card Sorting Condition 1: Time/Sort Ratio RS"
			T3_CS_Cnd1_PctDesc_RS		= "(DPost) Card Sorting Condition 1: Description (pct) RS"
			T3_CS_Cnd2_Desc_RS 			= "(DPost) Card Sorting Condition 2: Description RS"
			T3_CS_Cmb_DescVrb_RS 		= "(DPost) Card Sorting Combined Description & Verbal RS"
			T3_CS_CmbDescPercept_RS 	= "(DPost) Card Sorting Combined Description & Perceptual RS"
			T3_CS_Cmb_KDK_RS 			= "(DPost) Card Sorting Combined  Know-Don't-Know RS";
;
run;

proc contents data=nn.dkefs_cs;
run;

proc print data=nn.dkefs_cs noobs label;
	title "DKEFS Card Sorting Task - Labels (Raw Scores Only)";
run;
title;

proc print data=nn.dkefs_cs noobs;
	title "DKEFS Card Sorting Task - No Labels (Raw Scores Only)";
run;
title;

proc univariate data=nn.dkefs_cs normaltest plots;
*	class 	TGroup;
	var 	T1_CS_Cnd1_Cor_Srts_RS T1_CS_Cnd1_Desc_RS T1_CS_Cnd1_CorVrbSrts_RS 
			T1_CS_Cnd1_Percep_Srts_RS T1_CS_Cnd1_PctSrtAcc_RS T1_CS_Cnd1_TimeSrtRatio_RS 
			T1_CS_Cnd1_PctDesc_RS T1_CS_Cnd2_Desc_RS T1_CS_Cmb_DescVrb_RS 
			T1_CS_CmbDescPercept_RS T1_CS_Cmb_KDK_RS T2_CS_Cnd1_Cor_Srts_RS 
			T2_CS_Cnd1_Desc_RS T2_CS_Cnd1_CorVrbSrts_RS T2_CS_Cnd1_Percep_Srts_RS 
			T2_CS_Cnd1_PctSrtAcc_RS T2_CS_Cnd1_TimeSrtRatio_RS T2_CS_Cnd1_PctDesc_RS 
			T2_CS_Cnd2_Desc_RS T2_CS_Cmb_DescVrb_RS T2_CS_CmbDescPercept_RS 
			T2_CS_Cmb_KDK_RS T3_CS_Cnd1_Cor_Srts_RS T3_CS_Cnd1_Desc_RS 
			T3_CS_Cnd1_CorVrbSrts_RS T3_CS_Cnd1_Percep_Srts_RS T3_CS_Cnd1_PctSrtAcc_RS 
			T3_CS_Cnd1_TimeSrtRatio_RS T3_CS_Cnd1_PctDesc_RS T3_CS_Cnd2_Desc_RS 
			T3_CS_Cmb_DescVrb_RS T3_CS_CmbDescPercept_RS T3_CS_Cmb_KDK_RS ;

run;


quit;
