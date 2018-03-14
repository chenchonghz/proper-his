# 
#  Title:住院费用结算module
# 
#  Description:住院费用结算module
# 
#  Copyright: Copyright (c) Javahis 2011
# 
#  author pangben 2012-2-1
#  version 1.0
#

Module.item=queryINSIbs;insertInsIbs;updateINSIbsConfirmNo;queryIbsOrdd;updateSplitByIns;updateINSIbs;queryIbsSum;queryRetrunInsAmt;&
	    queryAdmSeq;updateInsIbsAmt;updateIbsOther;queryInsRuleET;updateIbsBedFee;updateInsIbsSingleAmt;queryInsAmt;updateInsIbsMro;&
	    queryInsIbsOrderByInsRule

//修改资格确认书编号
updateINSIbsConfirmNo.Type=TSQL
updateINSIbsConfirmNo.SQL=UPDATE INS_IBS SET CONFIRM_NO =<CONFIRM_NO>,ADM_SEQ=<ADM_SEQ> WHERE CASE_NO=<CASE_NO> AND YEAR_MON=<YEAR_MON>
updateINSIbsConfirmNo.Debug=N

//添加数据 化验说明 CHEMICAL_DESC ？？
insertInsIbs.Type=TSQL
insertInsIbs.SQL=INSERT INTO INS_IBS (YEAR_MON,CASE_NO,REGION_CODE,MR_NO,PAT_NAME,IDNO,&
			BIRTH_DATE, ADM_SEQ, CONFIRM_SRC, &
			HOSP_NHI_NO, INSBRANCH_CODE, CTZ1_CODE, &
			ADM_CATEGORY, IN_DATE,DS_DATE, &
			DIAG_CODE, DIAG_DESC, DIAG_DESC2, &
			OWN_RATE, DECREASE_RATE, REALOWN_RATE, &
			INSOWN_RATE, STATION_DESC, BED_NO, &
			DEPT_DESC, DEPT_CODE, BASEMED_BALANCE, &
			INS_BALANCE, START_STANDARD_AMT, PHA_AMT, &
			PHA_OWN_AMT, &
			EXM_AMT, EXM_OWN_AMT, TREAT_AMT, TREAT_OWN_AMT, &
			OP_AMT,OP_OWN_AMT,&
			BED_AMT, BED_OWN_AMT,MATERIAL_AMT, MATERIAL_OWN_AMT, &
		        OTHER_AMT,OTHER_OWN_AMT, &
			BLOODALL_AMT, BLOODALL_OWN_AMT,BLOOD_AMT, BLOOD_OWN_AMT, &
		        RESTART_STANDARD_AMT, &
		        OWN_AMT, &
			CONFIRM_NO, &
			CHEMICAL_DESC, ADM_PRJ, SPEDRS_CODE, &
			STATUS,&
			RECEIPT_USER, NHI_NUM, INS_UNIT, &
			HOSP_CLS_CODE, INP_TIME, HOMEBED_TIME, &
			HOMEBED_DAYS, TRANHOSP_RESTANDARD_AMT, TRANHOSP_DESC, &
			TRAN_CLASS, HOMEDIAG_DESC, SEX_CODE, &
			SOURCE_CODE, UNIT_CODE, UNIT_DESC, &
			PAT_AGE,&
			OPT_USER, OPT_DATE, OPT_TERM,PHA_NHI_AMT,EXM_NHI_AMT,TREAT_NHI_AMT,&
			OP_NHI_AMT,BED_NHI_AMT,MATERIAL_NHI_AMT,OTHER_NHI_AMT,BLOODALL_NHI_AMT,&
                        BLOOD_NHI_AMT,OTHER_DIAGE_CODE,INS_CROWD_TYPE,LOCAL_FLG) VALUES( &
			<YEAR_MON>,<CASE_NO>,<REGION_CODE>,<MR_NO>,<PAT_NAME>,<IDNO>,&
			TO_DATE(<BIRTH_DATE>,'YYYYMMDDHH24MISS'), <ADM_SEQ>, <CONFIRM_SRC>, &
			<HOSP_NHI_NO>, <INSBRANCH_CODE>, <CTZ1_CODE>, &
			<ADM_CATEGORY>, TO_DATE(<IN_DATE>,'YYYYMMDDHH24MISS'), TO_DATE(<DS_DATE>,'YYYYMMDDHH24MISS'),& 
			<DIAG_CODE>, <DIAG_DESC>, <DIAG_DESC2>, &
			<OWN_RATE>, <DECREASE_RATE>, <REALOWN_RATE>, &
			<INSOWN_RATE>, <STATION_DESC>, <BED_NO>, &
			<DEPT_DESC>, <DEPT_CODE>, <BASEMED_BALANCE>, &
			<INS_BALANCE>, <START_STANDARD_AMT>, <PHA_AMT>, &
			<PHA_OWN_AMT>, &
			<EXM_AMT>, <EXM_OWN_AMT>, <TREAT_AMT>, <TREAT_OWN_AMT>, &
			<OP_AMT>,<OP_OWN_AMT>,&
			<BED_AMT>, <BED_OWN_AMT>,<MATERIAL_AMT>, <MATERIAL_OWN_AMT>, &
		        <OTHER_AMT>,<OTHER_OWN_AMT>, &
			<BLOODALL_AMT>, <BLOODALL_OWN_AMT>,<BLOOD_AMT>, <BLOOD_OWN_AMT>,& 
		        <RESTART_STANDARD_AMT>, &
		        <OWN_AMT>, &
			<CONFIRM_NO>, &
			<CHEMICAL_DESC>, <ADM_PRJ>, <SPEDRS_CODE>, &
			<STATUS>,&
			<RECEIPT_USER>, <NHI_NUM>, <INS_UNIT>, &
			<HOSP_CLS_CODE>, <INP_TIME>, <HOMEBED_TIME>, &
			<HOMEBED_DAYS>, <TRANHOSP_RESTANDARD_AMT>, <TRANHOSP_DESC>, &
			<TRAN_CLASS>, <HOMEDIAG_DESC>, <SEX_CODE>, &
			<SOURCE_CODE>, <UNIT_CODE>, <UNIT_DESC>, &
			<PAT_AGE>,&
			<OPT_USER>, SYSDATE, <OPT_TERM>,<PHA_NHI_AMT>,<EXM_NHI_AMT>,<TREAT_NHI_AMT>,<OP_NHI_AMT>,<BED_NHI_AMT>,&
			<MATERIAL_NHI_AMT>,<OTHER_NHI_AMT>,<BLOODALL_NHI_AMT>,<BLOOD_NHI_AMT>,<OTHER_DIAGE_CODE>, &
                        <INS_CROWD_TYPE>,<LOCAL_FLG>)
insertInsIbs.Debug=N

//修改数据
updateINSIbs.Type=TSQL
updateINSIbs.SQL=UPDATE INS_IBS SET MR_NO=<MR_NO>,PAT_NAME=<PAT_NAME>,IDNO=<IDNO>,&
			BIRTH_DATE=TO_DATE(<BIRTH_DATE>,'YYYYMMDDHH24MISS'), ADM_SEQ=<ADM_SEQ>, CONFIRM_SRC=<CONFIRM_SRC>, &
			HOSP_NHI_NO=<HOSP_NHI_NO>, INSBRANCH_CODE=<INSBRANCH_CODE>, CTZ1_CODE=<CTZ1_CODE>, &
			ADM_CATEGORY=<ADM_CATEGORY>, IN_DATE=TO_DATE(<IN_DATE>,'YYYYMMDDHH24MISS'), DS_DATE=TO_DATE(<DS_DATE>,'YYYYMMDDHH24MISS'), &
			DIAG_CODE=<DIAG_CODE>, DIAG_DESC=<DIAG_DESC>, DIAG_DESC2=<DIAG_DESC2>, &
			OWN_RATE=<OWN_RATE>, DECREASE_RATE=<DECREASE_RATE>, REALOWN_RATE=<REALOWN_RATE>, &
			INSOWN_RATE=<INSOWN_RATE>, STATION_DESC=<STATION_DESC>, BED_NO=<BED_NO>, &
			DEPT_DESC=<DEPT_DESC>, DEPT_CODE=<DEPT_CODE>, BASEMED_BALANCE=<BASEMED_BALANCE>, &
			INS_BALANCE=<INS_BALANCE>, START_STANDARD_AMT=<START_STANDARD_AMT>, PHA_AMT=<PHA_AMT>,& 
			PHA_OWN_AMT=<PHA_OWN_AMT>, &
			EXM_AMT=<EXM_AMT>, EXM_OWN_AMT=<EXM_OWN_AMT>, TREAT_AMT=<TREAT_AMT>, TREAT_OWN_AMT=<TREAT_OWN_AMT>, &
			OP_AMT=<OP_AMT>,OP_OWN_AMT=<OP_OWN_AMT>,&
			BED_AMT=<BED_AMT>, BED_OWN_AMT=<BED_OWN_AMT>,MATERIAL_AMT=<MATERIAL_AMT>, MATERIAL_OWN_AMT=<MATERIAL_OWN_AMT>, &
		        OTHER_AMT=<OTHER_AMT>,OTHER_OWN_AMT=<OTHER_OWN_AMT>, &
			BLOODALL_AMT=<BLOODALL_AMT>, BLOODALL_OWN_AMT=<BLOODALL_OWN_AMT>,BLOOD_AMT=<BLOOD_AMT>, BLOOD_OWN_AMT=<BLOOD_OWN_AMT>, &
		        RESTART_STANDARD_AMT=<RESTART_STANDARD_AMT>, &
		        OWN_AMT=<OWN_AMT>, &
			CONFIRM_NO=<CONFIRM_NO>, &
			CHEMICAL_DESC=<CHEMICAL_DESC>, ADM_PRJ=<ADM_PRJ>, SPEDRS_CODE=<SPEDRS_CODE>, &
			STATUS=<STATUS>,&
			RECEIPT_USER=<RECEIPT_USER>, NHI_NUM=<NHI_NUM>, INS_UNIT=<INS_UNIT>, &
			HOSP_CLS_CODE=<HOSP_CLS_CODE>, INP_TIME=<INP_TIME>, HOMEBED_TIME=<HOMEBED_TIME>, &
			HOMEBED_DAYS=<HOMEBED_DAYS>, TRANHOSP_RESTANDARD_AMT=<TRANHOSP_RESTANDARD_AMT>, TRANHOSP_DESC=<TRANHOSP_DESC>, &
			TRAN_CLASS=<TRAN_CLASS>, HOMEDIAG_DESC=<HOMEDIAG_DESC>, SEX_CODE=<SEX_CODE>, &
			SOURCE_CODE=<SOURCE_CODE>, UNIT_CODE=<UNIT_CODE>, UNIT_DESC=<UNIT_DESC>, &
			PAT_AGE=<PAT_AGE>,PHA_NHI_AMT=<PHA_NHI_AMT>,EXM_NHI_AMT=<EXM_NHI_AMT>,TREAT_NHI_AMT=<TREAT_NHI_AMT>,&
			OP_NHI_AMT=<OP_NHI_AMT>,BED_NHI_AMT=<BED_NHI_AMT>,&
			MATERIAL_NHI_AMT=<MATERIAL_NHI_AMT>,OTHER_NHI_AMT=<OTHER_NHI_AMT>,BLOODALL_NHI_AMT=<BLOODALL_NHI_AMT>,BLOOD_NHI_AMT=<BLOOD_NHI_AMT>,&
			OPT_USER=<OPT_USER>, OPT_DATE=SYSDATE, OPT_TERM=<OPT_TERM>,OTHER_DIAGE_CODE=<OTHER_DIAGE_CODE>, &
                        INS_CROWD_TYPE=<INS_CROWD_TYPE>,LOCAL_FLG=<LOCAL_FLG> &
                        WHERE YEAR_MON=<YEAR_MON> AND CASE_NO=<CASE_NO>
updateINSIbs.Debug=N

//从IBS_OrdD读取数据   读取住院批价资料
queryIbsOrdd.Type=TSQL
queryIbsOrdd.SQL=SELECT B.ORDER_CODE,TO_CHAR(B.BILL_DATE,'YYYYMMDDHH24MISS') BILL_DATE1,TO_CHAR(B.BILL_DATE,'YYYYMMDD') BILL_DATE2,B.BILL_DATE AS BILL_D &
                 ,B.ORDER_SEQ,B.ORDER_NO,B.DS_FLG,B.OWN_PRICE,B.OWN_AMT,B.TOT_AMT ,C.CASE_NO,B.DOSAGE_QTY,B.OWN_RATE,B.DOSE_CODE,B.NHI_PRICE,E.SPECIFICATION,&
                 G.DOSE_CHN_DESC AS DOSE_DESC,B.TAKE_DAYS,B.DOSAGE_UNIT,B.EXE_DEPT_CODE ,E.ORDER_DESC,E.ADDPAY_AMT,E.NHI_CODE_I AS INS_CODE &
                 FROM  IBS_ORDD B,ADM_INP C,IBS_BILLM D,PHA_DOSE G,SYS_FEE_HISTORY E &
                 WHERE  B.CASE_NO=C.CASE_NO &
                 AND B.BILL_NO=D.BILL_NO &
                 AND B.ORDER_CODE=E.ORDER_CODE &
                 AND B.DOSE_CODE=G.DOSE_CODE(+) &
                 AND D.REFUND_FLG ='N' &
                 AND B.CASE_NO=<CASE_NO> &
                 AND TO_CHAR(B.BILL_DATE,'YYYYMMDD')  BETWEEN <START_DATE> AND <END_DATE> &
                 AND B.TOT_AMT<>0 AND D.REFUND_BILL_NO IS NULL &
                 AND B.BILL_DATE BETWEEN TO_DATE(E.START_DATE,'YYYYMMDDHH24MISS')  AND TO_DATE(E.END_DATE,'YYYYMMDDHH24MISS') ORDER BY B.ORDER_CODE
queryIbsOrdd.Debug=N

//费用分割结算后更新
updateSplitByIns.Type=TSQL
updateSplitByIns.SQL=UPDATE INS_IBS SET OWN_AMT=<OWN_AMT> , ADD_AMT=<ADD_AMT> WHERE  YEAR_MON=<YEAR_MON> AND CASE_NO=<CASE_NO>
updateSplitByIns.Debug=N

//查询结算表全字段

queryIbsSum.Type=TSQL
queryIbsSum.SQL=SELECT A.YEAR_MON,A.CASE_NO,A.REGION_CODE,&
		     A.MR_NO,A.PAT_NAME,A.IDNO,&
		     A.BIRTH_DATE,A.ADM_SEQ,A.CONFIRM_SRC,&
		     A.HOSP_NHI_NO,A.INSBRANCH_CODE,B.CTZ1_CODE,A.CTZ1_CODE AS NHI_CODE,& 
		     A.ADM_CATEGORY,A.IN_DATE,A.DS_DATE,&
		     A.DIAG_CODE,A.DIAG_DESC,A.DIAG_DESC2,&
		     A.OWN_RATE,A.DECREASE_RATE,A.REALOWN_RATE,&
		     A.INSOWN_RATE,A.STATION_DESC,A.BED_NO,&
		     A.DEPT_DESC,A.DEPT_CODE,A.BASEMED_BALANCE,&
		     A.INS_BALANCE,A.START_STANDARD_AMT,A.PHA_AMT,& 
		     A.PHA_OWN_AMT,A.PHA_ADD_AMT,A.PHA_NHI_AMT,&
		     A.EXM_AMT,A.EXM_OWN_AMT,A.EXM_ADD_AMT,&
		     A.EXM_NHI_AMT,A.TREAT_AMT,A.TREAT_OWN_AMT,&
		     A.TREAT_ADD_AMT,A.TREAT_NHI_AMT,A.OP_AMT,&
		     A.OP_OWN_AMT,A.OP_ADD_AMT,A.OP_NHI_AMT,&
		     A.BED_AMT,A.BED_OWN_AMT,A.BED_ADD_AMT,&
		     A.BED_NHI_AMT,A.MATERIAL_AMT,A.MATERIAL_OWN_AMT,& 
		     A.MATERIAL_ADD_AMT,A.MATERIAL_NHI_AMT,A.OTHER_AMT,& 
		     A.OTHER_OWN_AMT,A.OTHER_ADD_AMT,A.OTHER_NHI_AMT,&
		     A.BLOODALL_AMT,A.BLOODALL_OWN_AMT,A.BLOODALL_ADD_AMT,& 
		     A.BLOODALL_NHI_AMT,A.BLOOD_AMT,A.BLOOD_OWN_AMT,&
		     A.BLOOD_ADD_AMT,A.BLOOD_NHI_AMT,A.RESTART_STANDARD_AMT,& 
		     A.STARTPAY_OWN_AMT,A.OWN_AMT,A.PERCOPAYMENT_RATE_AMT,&
		     A.ADD_AMT,A.INS_HIGHLIMIT_AMT,A.CONFIRM_NO,&
		     A.TRANBLOOD_OWN_AMT,A.APPLY_AMT,A.HOSP_APPLY_AMT,&
		     A.CHEMICAL_DESC,A.ADM_PRJ,A.SPEDRS_CODE,&
		     A.STATUS,A.UPLOAD_DATE,A.UPLOAD_FLG,&
		     A.RECEIPT_USER,A.NHI_NUM,A.INS_UNIT,&
		     A.HOSP_CLS_CODE,A.INP_TIME,A.HOMEBED_TIME,&
		     A.HOMEBED_DAYS,A.TRANHOSP_RESTANDARD_AMT,A.TRANHOSP_DESC,& 
		     A.TRAN_CLASS,A.HOMEDIAG_DESC,A.SEX_CODE,&
		     A.SOURCE_CODE,A.UNIT_CODE,A.UNIT_DESC,&
		     A.PAT_AGE,A.NEWADM_SEQ,A.REFUSE_TOTAL_AMT,&
		     A.AUDIT_TOTAL_AMT,A.NHI_PAY,A.NHI_COMMENT,&
		     A.OPT_USER,A.OPT_DATE,A.OPT_TERM,&
		     A.NHI_PAY_REAL,A.UNACCOUNT_PAY_AMT,A.ACCOUNT_PAY_AMT,&
		     A.DRG_FLG,A.BASICMED_ADD_RATE,A.MEDAI_ADD_RATE,&
		     A.OVERFLOWLIMIT_ADD_RATE,A.BASICMED_ADD_AMT,A.MEDAI_ADD_AMT,& 
		     A.OVERFLOWLIMIT_ADD_AMT,A.ARMYAI_AMT,A.PUBMANAI_AMT,&
		     A.TOT_PUBMANADD_AMT,A.PERSON_ACCOUNT_AMT,A.UNIT_DESC1,&
		     A.FP_NOTE,A.DS_SUMMARY,A.SINGLE_NHI_AMT,&
		     A.SINGLE_STANDARD_AMT,A.SINGLE_STANDARD_OWN_AMT,A.SINGLE_SUPPLYING_AMT,& 
		     A.SINGLE_STANDARD_AMT_T,A.SINGLE_STANDARD_OWN_AMT_T,A.BED_SINGLE_AMT,&
		     A.MATERIAL_SINGLE_AMT,A.L_TIMES,A.M_TIMES,B.STATION_CODE,B.ADM_DAYS, &
		     A.S_TIMES,QUIT_REMARK,SINGLE_UPLOAD_TYPE FROM INS_IBS A ,ADM_INP B WHERE A.CASE_NO=B.CASE_NO AND A.YEAR_MON=<YEAR_MON> AND A.CASE_NO=<CASE_NO>
queryIbsSum.Debug=N

//费用分割 结算使用查询医保返回数据
//入院状态 （IN_STATUS） :0-资格确认书录入 1-费用已结算 2-费用已上传 3-下载已审核 4-下载已支付 5-撤销确认书 6-开具资格确认书失败
//7-资格确认书已审核
queryRetrunInsAmt.Type=TSQL
queryRetrunInsAmt.SQL=SELECT A.RESTART_STANDARD_AMT,A.INSBASE_LIMIT_BALANCE,A.INS_LIMIT_BALANCE , &
               	      A.INSOWN_RATE ,B.RESTART_STANDARD_AMT AS RESTART_STANDARD_AMT1,B.STARTPAY_OWN_AMT ,B.OWN_AMT ,B.PERCOPAYMENT_RATE_AMT , &
                      B.ADD_AMT ,B.INS_HIGHLIMIT_AMT ,B.RESTART_STANDARD_AMT,B.STARTPAY_OWN_AMT,B.OWN_AMT,&
                      B.PERCOPAYMENT_RATE_AMT,B.ADD_AMT,B.INS_HIGHLIMIT_AMT ,B.REALOWN_RATE,&
                      B.APPLY_AMT ,B.NHI_PAY, B.NHI_COMMENT ,B.REFUSE_TOTAL_AMT ,B.NHI_PAY_REAL,SPECIAL_PAT &
                      FROM INS_ADM_CONFIRM A ,INS_IBS B &
                      WHERE A.CONFIRM_NO=B.CONFIRM_NO  &
                      AND A.CONFIRM_NO=<CONFIRM_NO> &
                      AND A.IN_STATUS <> '5' 
queryRetrunInsAmt.Debug=N             

//费用分割界面中 费用结算操作修改 医保回参数据保存
updateInsIbsAmt.Type=TSQL
updateInsIbsAmt.SQL=UPDATE INS_IBS SET PHA_AMT=<PHA_AMT>,& 
		     PHA_OWN_AMT=<PHA_OWN_AMT>,PHA_ADD_AMT=<PHA_ADD_AMT>,PHA_NHI_AMT=<PHA_NHI_AMT>,&
		     EXM_AMT=<EXM_AMT>,EXM_OWN_AMT=<EXM_OWN_AMT>,EXM_ADD_AMT=<EXM_ADD_AMT>,&
		     EXM_NHI_AMT=<EXM_NHI_AMT>,TREAT_AMT=<TREAT_AMT>,TREAT_OWN_AMT=<TREAT_OWN_AMT>,&
		     TREAT_ADD_AMT=<TREAT_ADD_AMT>,TREAT_NHI_AMT=<TREAT_NHI_AMT>,OP_AMT=<OP_AMT>,&
		     OP_OWN_AMT=<OP_OWN_AMT>,OP_ADD_AMT=<OP_ADD_AMT>,OP_NHI_AMT=<OP_NHI_AMT>,&
		     BED_AMT=<BED_AMT>,BED_OWN_AMT=<BED_OWN_AMT>,BED_ADD_AMT=<BED_ADD_AMT>,OPT_DATE=SYSDATE,&
		     BED_NHI_AMT=<BED_NHI_AMT>,MATERIAL_AMT=<MATERIAL_AMT>,MATERIAL_OWN_AMT=<MATERIAL_OWN_AMT>,& 
		     MATERIAL_ADD_AMT=<MATERIAL_ADD_AMT>,MATERIAL_NHI_AMT=<MATERIAL_NHI_AMT>,OTHER_AMT=<OTHER_AMT>,& 
		     OTHER_OWN_AMT=<OTHER_OWN_AMT>,OTHER_ADD_AMT=<OTHER_ADD_AMT>,OTHER_NHI_AMT=<OTHER_NHI_AMT>,&
		     BLOODALL_AMT=<BLOODALL_AMT>,BLOODALL_OWN_AMT=<BLOODALL_OWN_AMT>,BLOODALL_ADD_AMT=<BLOODALL_ADD_AMT>,& 
		     BLOODALL_NHI_AMT=<BLOODALL_NHI_AMT>,BLOOD_AMT=<BLOOD_AMT>,BLOOD_OWN_AMT=<BLOOD_OWN_AMT>,&
		     BLOOD_ADD_AMT=<BLOOD_ADD_AMT>,BLOOD_NHI_AMT=<BLOOD_NHI_AMT>,RESTART_STANDARD_AMT=<RESTART_STANDARD_AMT>,&
		     OPT_USER=<OPT_USER>,OPT_TERM=<OPT_TERM>, &
		     REGION_CODE=<REGION_CODE>,CHEMICAL_DESC=<CHEMICAL_DESC>,DS_DATE=TO_DATE(<DS_DATE>,'YYYYMMDDHH24MISS'),&
		     UPLOAD_FLG=<UPLOAD_FLG>,STARTPAY_OWN_AMT=<STARTPAY_OWN_AMT>,INS_HIGHLIMIT_AMT=<INS_HIGHLIMIT_AMT>,&
		     PERCOPAYMENT_RATE_AMT=<PERCOPAYMENT_RATE_AMT>,OWN_AMT=<OWN_AMT>,ADD_AMT=<ADD_AMT>,NHI_PAY=<NHI_PAY>,&
		     NHI_PAY_REAL=<NHI_PAY_REAL>,NHI_COMMENT=<NHI_COMMENT>,ADM_SEQ=<ADM_SEQ>,CONFIRM_NO=<CONFIRM_NO>,&
		     ARMYAI_AMT=<ARMYAI_AMT>,ILLNESS_SUBSIDY_AMT=<ILLNESS_SUBSIDY_AMT> &
		     WHERE YEAR_MON=<YEAR_MON> AND CASE_NO=<CASE_NO>
updateInsIbsAmt.Debug=N  

//费用分割界面中 费用结算操作修改 医保回参数据保存--单病种

updateInsIbsSingleAmt.Type=TSQL
updateInsIbsSingleAmt.SQL=UPDATE INS_IBS SET PHA_AMT=<PHA_AMT>,& 
		     PHA_OWN_AMT=<PHA_OWN_AMT>,PHA_ADD_AMT=<PHA_ADD_AMT>,PHA_NHI_AMT=<PHA_NHI_AMT>,&
		     EXM_AMT=<EXM_AMT>,EXM_OWN_AMT=<EXM_OWN_AMT>,EXM_ADD_AMT=<EXM_ADD_AMT>,&
		     EXM_NHI_AMT=<EXM_NHI_AMT>,TREAT_AMT=<TREAT_AMT>,TREAT_OWN_AMT=<TREAT_OWN_AMT>,&
		     TREAT_ADD_AMT=<TREAT_ADD_AMT>,TREAT_NHI_AMT=<TREAT_NHI_AMT>,OP_AMT=<OP_AMT>,&
		     OP_OWN_AMT=<OP_OWN_AMT>,OP_ADD_AMT=<OP_ADD_AMT>,OP_NHI_AMT=<OP_NHI_AMT>,&
		     BED_AMT=<BED_AMT>,BED_OWN_AMT=<BED_OWN_AMT>,BED_ADD_AMT=<BED_ADD_AMT>,OPT_DATE=SYSDATE,&
		     BED_NHI_AMT=<BED_NHI_AMT>,MATERIAL_AMT=<MATERIAL_AMT>,MATERIAL_OWN_AMT=<MATERIAL_OWN_AMT>,& 
		     MATERIAL_ADD_AMT=<MATERIAL_ADD_AMT>,MATERIAL_NHI_AMT=<MATERIAL_NHI_AMT>,OTHER_AMT=<OTHER_AMT>,& 
		     OTHER_OWN_AMT=<OTHER_OWN_AMT>,OTHER_ADD_AMT=<OTHER_ADD_AMT>,OTHER_NHI_AMT=<OTHER_NHI_AMT>,&
		     BLOODALL_AMT=<BLOODALL_AMT>,BLOODALL_OWN_AMT=<BLOODALL_OWN_AMT>,BLOODALL_ADD_AMT=<BLOODALL_ADD_AMT>,& 
		     BLOODALL_NHI_AMT=<BLOODALL_NHI_AMT>,BLOOD_AMT=<BLOOD_AMT>,BLOOD_OWN_AMT=<BLOOD_OWN_AMT>,&
		     BLOOD_ADD_AMT=<BLOOD_ADD_AMT>,BLOOD_NHI_AMT=<BLOOD_NHI_AMT>,RESTART_STANDARD_AMT=<RESTART_STANDARD_AMT>,&
		     REGION_CODE=<REGION_CODE>,CHEMICAL_DESC=<CHEMICAL_DESC>,DS_DATE=TO_DATE(<DS_DATE>,'YYYYMMDDHH24MISS'),&
		     UPLOAD_FLG=<UPLOAD_FLG>,STARTPAY_OWN_AMT=<STARTPAY_OWN_AMT>,INS_HIGHLIMIT_AMT=<INS_HIGHLIMIT_AMT>,&
		     PERCOPAYMENT_RATE_AMT=<PERCOPAYMENT_RATE_AMT>,OWN_AMT=<OWN_AMT>,ADD_AMT=<ADD_AMT>,NHI_PAY=<NHI_PAY>,&
		     NHI_PAY_REAL=<NHI_PAY_REAL>,NHI_COMMENT=<NHI_COMMENT>,ADM_SEQ=<ADM_SEQ>,CONFIRM_NO=<CONFIRM_NO>,&
		     ARMYAI_AMT=<ARMYAI_AMT> ,OPT_USER=<OPT_USER>,OPT_TERM=<OPT_TERM>,SINGLE_NHI_AMT=<SINGLE_NHI_AMT>, &
		     SINGLE_STANDARD_AMT=<SINGLE_STANDARD_AMT>,SINGLE_SUPPLYING_AMT=<SINGLE_SUPPLYING_AMT>,&
		     SINGLE_STANDARD_AMT_T=<SINGLE_STANDARD_AMT_T>,SINGLE_STANDARD_OWN_AMT_T=<SINGLE_STANDARD_OWN_AMT_T>,&
		     SINGLE_STANDARD_OWN_AMT=<SINGLE_STANDARD_OWN_AMT>,ILLNESS_SUBSIDY_AMT=<ILLNESS_SUBSIDY_AMT> &
		     WHERE YEAR_MON=<YEAR_MON> AND CASE_NO=<CASE_NO>
updateInsIbsSingleAmt.Debug=N  

//查询ADM_SEQ
queryAdmSeq.Type=TSQL
queryAdmSeq.SQL=SELECT ADM_SEQ FROM INS_IBS &
                WHERE YEAR_MON = <YEAR_MON> &
                AND CASE_NO = <CASE_NO>　
queryAdmSeq.Debug=N           

//修改费用分割界面数据
updateIbsOther.Type=TSQL
updateIbsOther.SQL=UPDATE INS_IBS SET CHEMICAL_DESC=<CHEMICAL_DESC>,&
                     DIAG_CODE = <DIAG_CODE>,&
                     DIAG_DESC = <DIAG_DESC>,&
                     DIAG_DESC2 = <DIAG_DESC2>, &
                     DRG_FLG = <DRG_FLG> , &
                     SOURCE_CODE = <SOURCE_CODE> ,&
                     DS_DATE = TO_DATE(<DS_DATE>,'YYYYMMDDHH24MISS'), & 
                     QUIT_REMARK = <QUIT_REMARK>, &
                     SINGLE_UPLOAD_TYPE = <SINGLE_UPLOAD_TYPE> &
		     WHERE YEAR_MON=<YEAR_MON> AND CASE_NO=<CASE_NO>
updateIbsOther.Debug=N  

//修改床位费特需金额和医用材料费特需金额
//单病种使用
updateIbsBedFee.Type=TSQL
updateIbsBedFee.SQL=UPDATE INS_IBS SET BED_SINGLE_AMT=<BED_SINGLE_AMT>,&
                     MATERIAL_SINGLE_AMT = <MATERIAL_SINGLE_AMT> &
		     WHERE YEAR_MON=<YEAR_MON> AND CASE_NO=<CASE_NO>
updateIbsBedFee.Debug=N  

//查询医保三目字典中用药类型
queryInsRuleET.Type=TSQL
queryInsRuleET.SQL=SELECT ETYYBZ,TJDM &
           	   FROM INS_RULE &
                   WHERE SFXMBM = <SFXMBM> &
                   AND TO_DATE(<CHARGE_DATE>,'YYYYMMDDHH24MISS') BETWEEN KSSJ AND JSSJ
queryInsRuleET.Debug=N      

//费用结算 获得医保数据
queryInsAmt.Type=TSQL
queryInsAmt.SQL=SELECT A.RESTART_STANDARD_AMT,A.INSBASE_LIMIT_BALANCE,A.INS_LIMIT_BALANCE ,&
                A.INSOWN_RATE ,B.RESTART_STANDARD_AMT ,B.STARTPAY_OWN_AMT ,B.OWN_AMT ,B.PERCOPAYMENT_RATE_AMT ,&
                B.ADD_AMT ,B.INS_HIGHLIMIT_AMT ,B.RESTART_STANDARD_AMT+B.STARTPAY_OWN_AMT+B.OWN_AMT+B.PERCOPAYMENT_RATE_AMT+B.ADD_AMT+B.INS_HIGHLIMIT_AMT AS AMT ,&
                B.APPLY_AMT ,B.NHI_PAY, B.NHI_COMMENT ,B.REFUSE_TOTAL_AMT ,B.NHI_PAY_REAL,SPECIAL_PAT &
                FROM INS_ADM_CONFIRM A ,INS_IBS B &
    	        WHERE A.CONFIRM_NO=<CONFIRM_NO> &
   	        AND A.CONFIRM_NO=B.CONFIRM_NO &
   	        AND A.IN_STATUS <> '5'
queryInsAmt.Debug=N    

//单病种费用分割 病历首页 中保存操作
updateInsIbsMro.Type=TSQL
updateInsIbsMro.SQL=UPDATE INS_IBS SET L_TIMES=<L_TIMES>,&
                     M_TIMES = <M_TIMES>,S_TIMES=<S_TIMES>,FP_NOTE=<FP_NOTE>,DS_SUMMARY=<DS_SUMMARY> &
		     WHERE YEAR_MON=<YEAR_MON> AND CASE_NO=<CASE_NO>
updateInsIbsMro.Debug=N   

//查询医保数据
queryInsIbsOrderByInsRule.Type=TSQL
queryInsIbsOrderByInsRule.SQL=SELECT TJDM,PZWH,ZFBL1,ETYYBZ,MZYYBZ,SYXMBZ,YKD242,FCFYBS,YF FROM INS_RULE_VIEW WHERE SFXMBM=<INS_CODE> AND <BILL_D> BETWEEN KSSJ AND JSSJ
queryInsIbsOrderByInsRule.Debug=N