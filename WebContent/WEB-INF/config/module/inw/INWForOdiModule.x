Module.item=insertOdiDspnd;insertOdiDspnM;selectOdiOrder;updateOdiOrder;updateOdiOrderForUndoCk;&
	delOdiDspnmForUndoCk;updateDCToOrder;delOdiDspndForUndoCk;selectOdiDspnm;updateOdiDspnmForExec;&
	updateOdiDspndForExec;updateOdiDspnmByIBS;updateOdiDspndByIBS;updateOdiDspndToNsNot;updateDCToDspnM;&
	updateDCToDspnD;updateOdiOrderForNote;updateOdiOrderU;updateOdidspnmLisData;updateOdiDspndBarCode;&
	getIndStockQty;updateOdiOrdertakeMedOrg;updateOdiDspnmtakeMedOrg;updateOdiDspnDtakeMedOrg;selectOdiDspnD;selectOdiOrderMedNo;insertIntoMedNodify

//护士工作站维护长期处置展开插入ODI_DSPND
insertOdiDspnd.Type=TSQL

insertOdiDspnd.SQL=INSERT INTO ODI_DSPND (&

		CASE_NO,ORDER_NO,ORDER_SEQ,ORDER_DATE,ORDER_DATETIME,&
		
		BATCH_CODE,TREAT_START_TIME,TREAT_END_TIME,NURSE_DISPENSE_FLG,BAR_CODE,&
		
		ORDER_CODE,MEDI_QTY,MEDI_UNIT,DOSAGE_QTY,DOSAGE_UNIT,&
		
		TOT_AMT,DC_DATE,PHA_DISPENSE_NO,PHA_DOSAGE_CODE,PHA_DOSAGE_DATE,&
		
		PHA_DISPENSE_CODE,PHA_DISPENSE_DATE,NS_EXEC_CODE,NS_EXEC_DATE,NS_EXEC_DC_CODE,&
		
		NS_EXEC_DC_DATE,NS_USER,EXEC_NOTE,EXEC_DEPT_CODE,BILL_FLG,&
		
		CASHIER_CODE,CASHIER_DATE,PHA_RETN_CODE,PHA_RETN_DATE,TRANSMIT_RSN_CODE,&
		
		STOPCHECK_USER,STOPCHECK_DATE,IBS_CASE_NO,IBS_CASE_NO_SEQ,&
		
		OPT_USER,OPT_DATE,OPT_TERM,TAKEMED_ORG &
		                       //=====================add by wanglong 20121210
		                       ,ANTIBIOTIC_WAY&
		                       //=====================
		                       )&	
		VALUES (&

		<CASE_NO>,<ORDER_NO>,<ORDER_SEQ>,<ORDER_DATE>,<ORDER_DATETIME>,&
				
		<BATCH_CODE>,<TREAT_START_TIME>,<TREAT_END_TIME>,<NURSE_DISPENSE_FLG>,<BAR_CODE>,&
				
		<ORDER_CODE>,<MEDI_QTY>,<MEDI_UNIT>,<DOSAGE_QTY>,<DOSAGE_UNIT>,&
				
		<TOT_AMT>,<DC_DATE>,<PHA_DISPENSE_NO>,<PHA_DOSAGE_CODE>,<PHA_DOSAGE_DATE>,&
				
		<PHA_DISPENSE_CODE>,<PHA_DISPENSE_DATE>,<NS_EXEC_CODE>,<NS_EXEC_DATE>,<NS_EXEC_DC_CODE>,&
				
		<NS_EXEC_DC_DATE>,<NS_USER>,<EXEC_NOTE>,<EXEC_DEPT_CODE>,<BILL_FLG>,&
				
		<CASHIER_CODE>,<CASHIER_DATE>,<PHA_RETN_CODE>,<PHA_RETN_DATE>,<TRANSMIT_RSN_CODE>,&
				
		<STOPCHECK_USER>,<STOPCHECK_DATE>,<IBS_CASE_NO>,<IBS_CASE_NO_SEQ>,&
				
		<OPT_USER>,<OPT_DATE>,<OPT_TERM>,<TAKEMED_ORG> &
		                       //=====================add by wanglong 20121210
		                       ,<ANTIBIOTIC_WAY>&
		                       //=====================
		
		)

insertOdiDspnd.Debug=N

//护士工作站维护长期处置展开插入ODI_DSPNM
insertOdiDspnM.Type=TSQL

insertOdiDspnM.SQL=INSERT INTO ODI_DSPNM (&

		CASE_NO,ORDER_NO,ORDER_SEQ,START_DTTM,END_DTTM,&
		
		REGION_CODE,STATION_CODE,DEPT_CODE,VS_DR_CODE,BED_NO,&
		
		IPD_NO,MR_NO,DSPN_KIND,DSPN_DATE,DSPN_USER,&
		
		DISPENSE_EFF_DATE,RX_NO,ORDER_CAT1_CODE,CAT1_TYPE,DISPENSE_END_DATE,&
				
		EXEC_DEPT_CODE,DISPENSE_FLG,AGENCY_ORG_CODE,PRESCRIPT_NO,LINKMAIN_FLG,&
				
		LINK_NO,ORDER_CODE,ORDER_DESC,GOODS_DESC,SPECIFICATION,&
						
		MEDI_QTY,MEDI_UNIT,FREQ_CODE,ROUTE_CODE,TAKE_DAYS,&
						
		DOSAGE_QTY,DOSAGE_UNIT,DISPENSE_QTY,DISPENSE_UNIT,GIVEBOX_FLG,&
							
		OWN_PRICE,NHI_PRICE,DISCOUNT_RATE,OWN_AMT,TOT_AMT,&
						
		ORDER_DATE,ORDER_DEPT_CODE,ORDER_DR_CODE,DR_NOTE,ATC_FLG,&
						
		SENDATC_FLG,SENDATC_DTTM,INJPRAC_GROUP,DC_DATE,DC_TOT,&
		
		RTN_NO,RTN_NO_SEQ,RTN_DOSAGE_QTY,RTN_DOSAGE_UNIT,CANCEL_DOSAGE_QTY,&
				
		CANCELRSN_CODE,TRANSMIT_RSN_CODE,PHA_RETN_CODE,PHA_RETN_DATE,PHA_CHECK_CODE,&
				
		PHA_CHECK_DATE,PHA_DISPENSE_NO,PHA_DOSAGE_CODE,PHA_DOSAGE_DATE,PHA_DISPENSE_CODE,&
				
		PHA_DISPENSE_DATE,NS_EXEC_CODE,NS_EXEC_DATE,NS_EXEC_DC_CODE,NS_EXEC_DC_DATE,&
				
		NS_USER,CTRLDRUGCLASS_CODE,PHA_TYPE,DOSE_TYPE,DCTAGENT_CODE,&
		
		DCTEXCEP_CODE,DCT_TAKE_QTY,PACKAGE_AMT,DCTAGENT_FLG,PRESRT_NO,&
				
		DECOCT_CODE,URGENT_FLG,SETMAIN_FLG,ORDERSET_GROUP_NO,ORDERSET_CODE,&
				
		RPTTYPE_CODE,OPTITEM_CODE,HIDE_FLG,DEGREE_CODE,BILL_FLG,&
				
		CASHIER_USER,CASHIER_DATE,IBS_CASE_NO_SEQ,IBS_SEQ_NO,ANTIBIOTIC_CODE,DC_DR_CODE,&			
		
		OPT_USER,OPT_DATE,OPT_TERM,TAKEMED_ORG,TAKEMED_NO &
		                       //=====================add by wanglong 20121210
		                       ,ANTIBIOTIC_WAY&
		                       //=====================
				       //=====================add by wukai 20160601 start
					,PUMP_CODE,INFLUTION_RATE &
		
		)&
		
		VALUES (&

		<CASE_NO>,<ORDER_NO>,<ORDER_SEQ>,<START_DTTM>,<END_DTTM>,&
		
		<REGION_CODE>,<STATION_CODE>,<DEPT_CODE>,<VS_DR_CODE>,<BED_NO>,&
		
		<IPD_NO>,<MR_NO>,<DSPN_KIND>,<DSPN_DATE>,<DSPN_USER>,&
		
		<DISPENSE_EFF_DATE>,<RX_NO>,<ORDER_CAT1_CODE>,<CAT1_TYPE>,<DISPENSE_END_DATE>,&
				
		<EXEC_DEPT_CODE>,<DISPENSE_FLG>,<AGENCY_ORG_CODE>,<PRESCRIPT_NO>,<LINKMAIN_FLG>,&
				
		<LINK_NO>,<ORDER_CODE>,<ORDER_DESC>,<GOODS_DESC>,<SPECIFICATION>,&
						
		<MEDI_QTY>,<MEDI_UNIT>,<FREQ_CODE>,<ROUTE_CODE>,<TAKE_DAYS>,&
						
		<DOSAGE_QTY>,<DOSAGE_UNIT>,<DISPENSE_QTY>,<DISPENSE_UNIT>,<GIVEBOX_FLG>,&
							
		<OWN_PRICE>,<NHI_PRICE>,<DISCOUNT_RATE>,<OWN_AMT>,<TOT_AMT>,&
						
		<ORDER_DATE>,<ORDER_DEPT_CODE>,<ORDER_DR_CODE>,<DR_NOTE>,<ATC_FLG>,&
						
		<SENDATC_FLG>,<SENDATC_DTTM>,<INJPRAC_GROUP>,<DC_DATE>,<DC_TOT>,&
		
		<RTN_NO>,<RTN_NO_SEQ>,<RTN_DOSAGE_QTY>,<RTN_DOSAGE_UNIT>,<CANCEL_DOSAGE_QTY>,&
		
		<CANCELRSN_CODE>,<TRANSMIT_RSN_CODE>,<PHA_RETN_CODE>,<PHA_RETN_DATE>,<PHA_CHECK_CODE>,&
		
		<PHA_CHECK_DATE>,<PHA_DISPENSE_NO>,<PHA_DOSAGE_CODE>,<PHA_DOSAGE_DATE>,<PHA_DISPENSE_CODE>,&
		
		<PHA_DISPENSE_DATE>,<NS_EXEC_CODE>,<NS_EXEC_DATE>,<NS_EXEC_DC_CODE>,<NS_EXEC_DC_DATE>,&
		
		<NS_USER>,<CTRLDRUGCLASS_CODE>,<PHA_TYPE>,<DOSE_TYPE>,<DCTAGENT_CODE>,&
		
		<DCTEXCEP_CODE>,<DCT_TAKE_QTY>,<PACKAGE_AMT>,<DCTAGENT_FLG>,<PRESRT_NO>,&
				
		<DECOCT_CODE>,<URGENT_FLG>,<SETMAIN_FLG>,<ORDERSET_GROUP_NO>,<ORDERSET_CODE>,&
				
		<RPTTYPE_CODE>,<OPTITEM_CODE>,<HIDE_FLG>,<DEGREE_CODE>,<BILL_FLG>,&
				
		<CASHIER_USER>,<CASHIER_DATE>,<IBS_CASE_NO_SEQ>,<IBS_SEQ_NO>,<ANTIBIOTIC_CODE>,<DC_DR_CODE>,&
		
		<OPT_USER>,<OPT_DATE>,<OPT_TERM>,<TAKEMED_ORG>,<TAKEMED_NO> &
		                       //=====================add by wanglong 20121210
		                       ,<ANTIBIOTIC_WAY>&
		                       //=====================
					//====================add by wukai 20160601 start
					,<PUMP_CODE>,<INFLUTION_RATE>&
					//====================add by wukai 20160601 end
		)

insertOdiDspnM.Debug=N



//住院护士站审核查询ODI_ORDER
selectOdiOrder.Type=TSQL

selectOdiOrder.SQL=SELECT   B.PAT_NAME,A.CASE_NO,A.ORDER_NO,A.ORDER_SEQ,A.REGION_CODE, &

           	A.STATION_CODE,A.DEPT_CODE,A.VS_DR_CODE,C.BED_NO_DESC AS BED_NO,A.IPD_NO, &
           	
           	A.MR_NO,A.RX_KIND,A.TEMPORARY_FLG,A.ORDER_STATE,A.LINKMAIN_FLG, &
           	
           	A.LINK_NO,A.ORDER_CODE,A.ORDER_DESC ||CASE &
                                                 WHEN TRIM(GOODS_DESC) IS NOT NULL OR TRIM(GOODS_DESC) <>''&
                                                   THEN '(' || GOODS_DESC || ')'&
                                                 ELSE '' END || CASE &
                                                 WHEN TRIM(SPECIFICATION) IS NOT NULL OR TRIM(SPECIFICATION) <>''&
                                                   THEN '(' || SPECIFICATION || ')'&
                                                 ELSE ''&
                                                END AS ORDER_DESC_AND_SPECIFICATION,A.GOODS_DESC,A.SPECIFICATION, &
           	
           	A.MEDI_QTY,A.MEDI_UNIT,A.FREQ_CODE,A.ROUTE_CODE,A.TAKE_DAYS,A.DOSAGE_QTY, &
           	
           	A.DOSAGE_UNIT,A.DISPENSE_QTY,A.DISPENSE_UNIT,A.GIVEBOX_FLG,A.CONTINUOUS_FLG, &
           	
           	A.ACUMDSPN_QTY,A.LASTDSPN_QTY,A.ORDER_DATE,A.EFF_DATE,A.ORDER_DEPT_CODE, &
           	
           	A.ORDER_DR_CODE,A.EXEC_DEPT_CODE,A.EXEC_DR_CODE,A.DC_DEPT_CODE,A.DC_DR_CODE, &
           	
           	A.DC_DATE,A.DC_RSN_CODE,A.DR_NOTE,A.NS_NOTE,A.INSPAY_TYPE, &
           	
           	A.CTRLDRUGCLASS_CODE,A.RX_NO,A.PRESRT_NO,A.PHA_TYPE,A.DOSE_TYPE, &
           	
           	A.DCT_TAKE_QTY,A.DCTAGENT_CODE,A.PACKAGE_AMT,A.SETMAIN_FLG,A.NS_CHECK_CODE, &
           	
           	A.INDV_FLG,A.HIDE_FLG,A.ORDERSET_GROUP_NO,A.ORDERSET_CODE,A.ORDER_CAT1_CODE, &
           	
           	A.RPTTYPE_CODE,A.OPTITEM_CODE,A.MR_CODE,A.FILE_NO,A.DEGREE_CODE, &
           	
           	A.NS_CHECK_DATE,A.DC_NS_CHECK_CODE,A.DC_NS_CHECK_DATE,A.START_DTTM,A.LAST_DSPN_DATE, &
           	
           	A.FRST_QTY,A.PHA_CHECK_CODE,A.PHA_CHECK_DATE,A.INJ_ORG_CODE,A.URGENT_FLG, &
           	
           	A.CAT1_TYPE, &
           
           	A.OPT_USER,A.OPT_DATE,A.OPT_TERM,D.VS_DR_CODE JZDR,A.ANTIBIOTIC_CODE,E.CLASSIFY_TYPE,F.CTRL_FLG,A.TAKEMED_ORG &
                          //===================add by wanglong 20121210
	                      ,A.ANTIBIOTIC_WAY &
                          //===================//wanglong add 20140707
                ,A.OPBOOK_SEQ,A.DISPENSE_FLG &
			  //===================add by wukai 20160530
			      ,A.PUMP_CODE, A.INFLUTION_RATE &	
    		FROM   ODI_ORDER A,SYS_PATINFO B,SYS_BED C,ADM_INP D, SYS_PHAROUTE E,SYS_CTRLDRUGCLASS F &
    		
   		WHERE  A.MR_NO=B.MR_NO &
   		
   		AND A.BED_NO= C.BED_NO &
 
   		AND A.CASE_NO = D.CASE_NO &
   		
		AND A.ROUTE_CODE=E.ROUTE_CODE(+) &
		
		AND A.CTRLDRUGCLASS_CODE= F.CTRLDRUGCLASS_CODE(+) &
		
   		AND A.HIDE_FLG<>'Y' &
   		
		ORDER BY  BED_NO,ORDER_NO, ORDER_SEQ, ORDER_DATE

selectOdiOrder.item=DEPT_CODE;IPD_NO;MR_NO;DS_DATE_FLG;STATION_CODE;CASE_NO;CHECKTYPE_YES;CHECKTYPE_NO;NS_CHECK_DATE;CAT1_TYPE_PHA;CAT1_TYPE_TRT;CAT1_TYPE_ENT;RX_KIND;REGION_CODE;VS_DR_CODE;DOSE_TYPE1;DOSE_TYPE2;DOSE_TYPE3;DOSE_TYPE4;ORDER_DATE;OPE_YES;OPE_NO;INW_CHECK_RX_KIND;ROUTE_CODE
selectOdiOrder.STATION_CODE=A.STATION_CODE=<STATION_CODE>
selectOdiOrder.CASE_NO=A.CASE_NO=<CASE_NO>
//=============pangben modify 20110512 start
selectOdiOrder.REGION_CODE=A.REGION_CODE=<REGION_CODE>
//=============pangben modify 20110512 start
selectOdiOrder.CHECKTYPE_NO=(A.NS_CHECK_CODE IS NULL OR (A.DC_DR_CODE IS NOT NULL AND A.DC_NS_CHECK_CODE IS NULL AND SYSDATE>A.DC_DATE))
selectOdiOrder.CHECKTYPE_YES=A.NS_CHECK_CODE IS NOT NULL
selectOdiOrder.NS_CHECK_DATE=A.NS_CHECK_DATE BETWEEN TO_DATE(<fromCheckDate>,'yyyyMMddhh24miss') AND TO_DATE(<toCheckDate>,'yyyyMMddhh24miss')
selectOdiOrder.CAT1_TYPE_PHA=A.CAT1_TYPE = 'PHA'
selectOdiOrder.CAT1_TYPE_TRT=A.CAT1_TYPE IN ('LIS','RIS')
selectOdiOrder.CAT1_TYPE_ENT=A.CAT1_TYPE IN ('TRT','PLN','OTH')
selectOdiOrder.RX_KIND=A.RX_KIND=<RX_KIND>
selectOdiOrder.IPD_NO=A.IPD_NO = <IPD_NO>
selectOdiOrder.MR_NO=A.MR_NO = <MR_NO>
selectOdiOrder.DOSE_TYPE1=E.CLASSIFY_TYPE IN (<DOSE_TYPES1>)
selectOdiOrder.DOSE_TYPE2=E.CLASSIFY_TYPE IN (<DOSE_TYPES1>,<DOSE_TYPES2>)
selectOdiOrder.DOSE_TYPE3=E.CLASSIFY_TYPE IN (<DOSE_TYPES1>,<DOSE_TYPES2>,<DOSE_TYPES3>)
selectOdiOrder.DOSE_TYPE4=E.CLASSIFY_TYPE IN (<DOSE_TYPES1>,<DOSE_TYPES2>,<DOSE_TYPES3>,<DOSE_TYPES4>)
selectOdiOrder.DS_DATE_FLG=D.DS_DATE IS NULL
selectOdiOrder.DEPT_CODE=D.DEPT_CODE = <DEPT_CODE>
selectOdiOrder.VS_DR_CODE=D.VS_DR_CODE = <VS_DR_CODE>
//add by wanglong 20130626
selectOdiOrder.ORDER_DATE=A.EFF_DATE BETWEEN <fromOrderDate> AND <toOrderDate>
//wanglong add 20140707
//modify by wangb 2015/11/26 临时解决手术护士站显示手麻回传术中用药数据的问题，使用用法过滤
selectOdiOrder.OPE_YES=A.OPBOOK_SEQ IS NOT NULL AND (A.ROUTE_CODE IS NULL OR A.ROUTE_CODE <> 'AN')
selectOdiOrder.OPE_NO=A.OPBOOK_SEQ IS NULL
// add by wangb 20151028
selectOdiOrder.INW_CHECK_RX_KIND=A.RX_KIND IN ('ST','UD','DS','IG')
selectOdiOrder.ROUTE_CODE=A.ROUTE_CODE <> <ROUTE_CODE>
selectOdiOrder.Debug=N



//护士审核回写ODI_ORDER的字段
updateOdiOrder.Type=TSQL
updateOdiOrder.SQL=UPDATE ODI_ORDER SET &

	OPT_DATE=<OPT_DATE>,OPT_USER=<OPT_USER>,OPT_TERM=<OPT_TERM>,&
	
	LASTDSPN_QTY=<LASTDSPN_QTY>,LAST_DSPN_DATE=<LAST_DSPN_DATE>,ACUMDSPN_QTY=<ACUMDSPN_QTY>,ACUMMEDI_QTY=<ACUMMEDI_QTY>,&
	
	DOSAGE_QTY=<DOSAGE_QTY>,DOSAGE_UNIT=<DOSAGE_UNIT>,DISPENSE_QTY=<DISPENSE_QTY>,DISPENSE_UNIT=<DISPENSE_UNIT>,&
	
	NS_CHECK_DATE=<NS_CHECK_DATE>,NS_CHECK_CODE=<NS_CHECK_CODE>,DC_NS_CHECK_CODE=<DC_NS_CHECK_CODE>,DC_NS_CHECK_DATE=<DC_NS_CHECK_DATE>,TEMPORARY_FLG='Y',TAKEMED_ORG=<TAKEMED_ORG> & 
	
	WHERE CASE_NO=<CASE_NO> AND ORDER_NO=<ORDER_NO> AND ORDER_SEQ=<ORDER_SEQ>

updateOdiOrder.Debug=N


//护士取消审核动作--更新ODI_ORDER
updateOdiOrderForUndoCk.Type=TSQL
updateOdiOrderForUndoCk.SQL=UPDATE ODI_ORDER SET &

	OPT_DATE=<OPT_DATE>,OPT_USER=<OPT_USER>,OPT_TERM=<OPT_TERM>,&
	
	NS_CHECK_DATE=<NS_CHECK_DATE>,NS_CHECK_CODE=<NS_CHECK_CODE> &
	
	WHERE CASE_NO=<CASE_NO> AND ORDER_NO=<ORDER_NO> AND ORDER_SEQ=<ORDER_SEQ>

updateOdiOrderForUndoCk.Debug=N


//护士取消审核动作--更新 ODI_DSPNM
delOdiDspnmForUndoCk.Type=TSQL
delOdiDspnmForUndoCk.SQL=UPDATE  ODI_DSPNM SET &
        OPT_DATE=<OPT_DATE>,OPT_USER=<OPT_USER>,OPT_TERM=<OPT_TERM>,&
	
	DC_NS_CHECK_DATE=<DC_NS_CHECK_DATE> &
	
	WHERE CASE_NO=<CASE_NO> AND ORDER_NO=<ORDER_NO> AND &
	
	ORDER_SEQ=<ORDER_SEQ> AND NS_EXEC_CODE IS NULL

delOdiDspnmForUndoCk.Debug=N

//护士取消审核动作--更新 ODI_DSPND
delOdiDspndForUndoCk.Type=TSQL
delOdiDspndForUndoCk.SQL=UPDATE  ODI_DSPND SET &
         OPT_DATE=<OPT_DATE>,OPT_USER=<OPT_USER>,OPT_TERM=<OPT_TERM>,&
	
	DC_NS_CHECK_DATE=<DC_NS_CHECK_DATE> &
	
	WHERE CASE_NO=<CASE_NO> AND ORDER_NO=<ORDER_NO> AND &
	
	ORDER_SEQ=<ORDER_SEQ>

delOdiDspndForUndoCk.Debug=N


//护士审核DC动作--更新ODI_ORDER
updateDCToOrder.Type=TSQL
updateDCToOrder.SQL=UPDATE ODI_ORDER SET &

	OPT_DATE=<OPT_DATE>,OPT_USER=<OPT_USER>,OPT_TERM=<OPT_TERM>,&
	
	NS_CHECK_CODE=<NS_CHECK_CODE>,NS_CHECK_DATE=<NS_CHECK_DATE>,&
	
	DC_NS_CHECK_CODE=<DC_NS_CHECK_CODE>,DC_NS_CHECK_DATE=<DC_NS_CHECK_DATE>,TAKEMED_ORG=<TAKEMED_ORG> &
	
	WHERE CASE_NO=<CASE_NO> AND ORDER_NO=<ORDER_NO> AND ORDER_SEQ=<ORDER_SEQ>

updateDCToOrder.Debug=N


//护士审核DC动作--更新ODI_DSPND(lack DC_TOT) 
updateDCToDspnD.Type=TSQL
updateDCToDspnD.SQL=UPDATE ODI_DSPND SET &

	OPT_DATE=<OPT_DATE>,OPT_USER=<OPT_USER>,OPT_TERM=<OPT_TERM>,&
	
	DC_DATE=<DC_DATE> &
	
	WHERE CASE_NO=<CASE_NO> AND ORDER_NO=<ORDER_NO> AND ORDER_SEQ=<ORDER_SEQ> &
	
	AND ORDER_DATE=<ORDER_DATE> AND ORDER_DATETIME=<ORDER_DATETIME>

updateDCToDspnD.Debug=N


//护士审核DC动作--更新ODI_DSPNM 
updateDCToDspnM.Type=TSQL
updateDCToDspnM.SQL=UPDATE ODI_DSPNM SET &

	OPT_DATE=<OPT_DATE>,OPT_USER=<OPT_USER>,OPT_TERM=<OPT_TERM>,&
	
	DC_DATE=<DC_DATE>,DC_DR_CODE=<DC_DR_CODE> &
	
	WHERE CASE_NO=<CASE_NO> AND ORDER_NO=<ORDER_NO> AND ORDER_SEQ=<ORDER_SEQ> &
	
	AND <DATETIME> BETWEEN START_DTTM AND END_DTTM
updateDCToDspnM.Debug=N




//-----------------------------------------------护士站执行-------------------------------------

//住院护士站审核查询ODI_DSPNM
selectOdiDspnm.Type=TSQL

selectOdiDspnm.SQL=  SELECT   B.PAT_NAME,&

           A.ORDER_CAT1_CODE,A.CASE_NO,A.ORDER_NO,A.ORDER_SEQ,A.START_DTTM,&
           
           A.END_DTTM,A.REGION_CODE,A.STATION_CODE,A.DEPT_CODE,A.VS_DR_CODE,&
           
           C.BED_NO_DESC AS BED_NO,A.IPD_NO,A.MR_NO,A.DSPN_KIND,A.DSPN_DATE,&
           
           A.DSPN_USER,A.DISPENSE_EFF_DATE,A.DISPENSE_END_DATE,A.EXEC_DEPT_CODE,A.AGENCY_ORG_CODE,&
           
           A.PRESCRIPT_NO,A.LINKMAIN_FLG,A.LINK_NO,A.ORDER_CODE,A.ORDER_DESC ||CASE &
                                                 WHEN TRIM(GOODS_DESC) IS NOT NULL OR TRIM(GOODS_DESC) <>''&
                                                   THEN '(' || GOODS_DESC || ')'&
                                                 ELSE '' END || CASE &
                                                 WHEN TRIM(SPECIFICATION) IS NOT NULL OR TRIM(SPECIFICATION) <>''&
                                                   THEN '(' || SPECIFICATION || ')'&
                                                 ELSE ''&
                                                END AS ORDER_DESC_AND_SPECIFICATION,&
           
           A.GOODS_DESC,A.SPECIFICATION,A.MEDI_QTY,A.MEDI_UNIT,A.FREQ_CODE,A.ROUTE_CODE,A.TAKE_DAYS,&
           
           A.DOSAGE_QTY,A.DOSAGE_UNIT,A.DISPENSE_QTY,A.DISPENSE_UNIT,A.GIVEBOX_FLG,&
           
           A.OWN_PRICE,A.NHI_PRICE,A.DISCOUNT_RATE,A.OWN_AMT,A.TOT_AMT,&
           
           A.ORDER_DATE,A.ORDER_DEPT_CODE,A.ORDER_DR_CODE,A.DR_NOTE,A.ATC_FLG,&
           
           A.SENDATC_FLG,A.SENDATC_DTTM,A.INJPRAC_GROUP,A.DC_DATE,A.DC_TOT,&
           
           A.RTN_NO,A.RTN_NO_SEQ,A.RTN_DOSAGE_QTY,A.RTN_DOSAGE_UNIT,A.CANCEL_DOSAGE_QTY,&
           
           A.CANCELRSN_CODE,A.TRANSMIT_RSN_CODE,A.PHA_RETN_CODE,A.PHA_RETN_DATE,A.PHA_CHECK_CODE,&
           
           A.PHA_CHECK_DATE,A.PHA_DISPENSE_NO,A.PHA_DOSAGE_CODE,A.PHA_DOSAGE_DATE,A.PHA_DISPENSE_CODE,&
           
           A.PHA_DISPENSE_DATE,A.NS_EXEC_CODE,A.NS_EXEC_DATE,A.NS_EXEC_DC_CODE,A.NS_EXEC_DC_DATE,&
           
           A.NS_USER,A.CTRLDRUGCLASS_CODE,A.PHA_TYPE,A.DOSE_TYPE,A.DCTAGENT_CODE,&
           
           A.DCTEXCEP_CODE,A.DCT_TAKE_QTY,A.PACKAGE_AMT,A.DCTAGENT_FLG,A.DECOCT_CODE,A.URGENT_FLG,&
           
           A.SETMAIN_FLG,A.ORDERSET_GROUP_NO,A.ORDERSET_CODE,A.RPTTYPE_CODE,A.OPTITEM_CODE,&
           
           A.HIDE_FLG,A.DEGREE_CODE,A.BILL_FLG,A.CASHIER_USER,A.CASHIER_DATE,&
           
           A.IBS_CASE_NO_SEQ,A.IBS_SEQ_NO,A.OPT_USER,A.OPT_DATE,A.OPT_TERM,A.DC_DR_CODE,A.CAT1_TYPE,D.CLASSIFY_TYPE,A.ORDER_DESC, &
           
           A.RX_NO,A.DISPENSE_FLG,E.VS_DR_CODE JZDR,E.IN_DATE,E.ADM_DAYS,E.PAY_INS,E.TOTAL_AMT,E.TOTAL_BILPAY,E.CUR_AMT,E.GREENPATH_VALUE, &
           E.WEIGHT,E.HEIGHT,E.CLNCPATH_CODE,E.SERVICE_LEVEL &
		//===========add by wukai on 20160531 start
		 ,A.PUMP_CODE,A.INFLUTION_RATE &
		//===========add by wukai on 20160531 start
    	FROM   ODI_DSPNM A, SYS_PATINFO B, SYS_BED C,SYS_PHAROUTE D,ADM_INP E &
    
   	WHERE   A.MR_NO = B.MR_NO AND A.BED_NO = C.BED_NO AND (A.HIDE_FLG <> 'Y' OR A.HIDE_FLG IS NULL)  AND A.ROUTE_CODE=D.ROUTE_CODE(+) &
   	         
   	AND     A.CASE_NO = E.CASE_NO  &
   
	ORDER BY   A.BED_NO, A.ORDER_NO, A.ORDER_SEQ, A.ORDER_DATE 

selectOdiDspnm.item=DEPT_CODE;IPD_NO;MR_NO;DS_DATE_FLG;STATION_CODE;CASE_NO;EXECTYPE_YES;EXECTYPE_NO;NS_EXEC_DATE;CAT1_TYPEPHA;CAT1_TYPEPL;CAT1_TYPEENT;DSPN_KINDSTF;DSPN_KINDUD;DSPN_KINDDS;DSPN_KINDIG;DOSE_TYPEO;DOSE_TYPEE;DOSE_TYPEI;DOSE_TYPEF;REGION_CODE;VS_DR_CODE;EXECTYPE_ALL;S1;S2;INW_EXEC_DSPN_KIND;BED_NO_DESC

// =======modified by WangQing 20170331 -start
// =======add 床号区间
selectOdiDspnm.BED_NO_DESC=(C.BED_NO_DESC BETWEEN <BED_NO_S> AND <BED_NO_E>)
// =======modified by WangQing 20170331 -end



selectOdiDspnm.STATION_CODE=A.STATION_CODE=<STATION_CODE>
//============pangben modify 20110512 start
selectOdiDspnm.REGION_CODE=A.REGION_CODE=<REGION_CODE>
//============pangben modify 20110512 stop
selectOdiDspnm.CASE_NO=A.CASE_NO=<CASE_NO>
selectOdiDspnm.EXECTYPE_ALL=(((A.NS_EXEC_CODE IS NULL OR (A.DC_DR_CODE IS NOT NULL AND NS_EXEC_DC_CODE IS NULL)) OR (A.NS_EXEC_CODE IS NOT NULL AND A.NS_EXEC_DATE BETWEEN TO_DATE(<fromCheckDate>,'yyyyMMddhh24miss') AND TO_DATE(<toCheckDate>,'yyyyMMddhh24miss'))) AND A.DSPN_KIND<>'RT' AND A.DC_NS_CHECK_DATE IS NULL)
selectOdiDspnm.EXECTYPE_NO=((A.NS_EXEC_CODE IS NULL OR (A.DC_DR_CODE IS NOT NULL AND NS_EXEC_DC_CODE IS NULL)) AND A.DSPN_KIND<>'RT' AND A.DC_NS_CHECK_DATE IS NULL)
selectOdiDspnm.EXECTYPE_YES=(A.NS_EXEC_CODE IS NOT NULL AND A.DC_NS_CHECK_DATE IS NULL)
selectOdiDspnm.NS_EXEC_DATE=A.NS_EXEC_DATE BETWEEN TO_DATE(<fromCheckDate>,'yyyyMMddhh24miss') AND TO_DATE(<toCheckDate>,'yyyyMMddhh24miss')
selectOdiDspnm.CAT1_TYPEPHA=A.CAT1_TYPE = 'PHA'
selectOdiDspnm.CAT1_TYPEPL=A.CAT1_TYPE IN ('LIS','RIS')
selectOdiDspnm.CAT1_TYPEENT=A.CAT1_TYPE IN ('TRT','PLN','OTH')
selectOdiDspnm.DSPN_KINDSTF=A.DSPN_KIND = 'ST'
selectOdiDspnm.DSPN_KINDUD=(A.DSPN_KIND = 'UD' OR A.DSPN_KIND = 'F')
selectOdiDspnm.DSPN_KINDDS=DSPN_KIND = 'DS'
selectOdiDspnm.DSPN_KINDIG=DSPN_KIND = 'IG' 
selectOdiDspnm.DOSE_TYPEO=D.CLASSIFY_TYPE = 'O'
selectOdiDspnm.DOSE_TYPEE=D.CLASSIFY_TYPE = 'E'
selectOdiDspnm.DOSE_TYPEI=D.CLASSIFY_TYPE = 'I'
selectOdiDspnm.DOSE_TYPEF=D.CLASSIFY_TYPE = 'F'
selectOdiDspnm.IPD_NO=A.IPD_NO = <IPD_NO>
selectOdiDspnm.MR_NO=A.MR_NO = <MR_NO>
selectOdiDspnm.DS_DATE_FLG=E.DS_DATE IS NULL
selectOdiDspnm.DEPT_CODE=E.DEPT_CODE = <DEPT_CODE>
selectOdiDspnm.VS_DR_CODE=E.VS_DR_CODE = <VS_DR_CODE>
selectOdiDspnm.INW_EXEC_DSPN_KIND=A.DSPN_KIND IN ('ST','UD','F','DS','IG')
selectOdiDspnm.Debug=Y

//住院护士站执行查询ODI_DSPND（新增应执行时间）add by wanglong 20130626
selectOdiDspnD.Type=TSQL
selectOdiDspnD.SQL=SELECT DISTINCT B.PAT_NAME,A.ORDER_CAT1_CODE,A.CASE_NO,A.ORDER_NO,A.ORDER_SEQ,A.START_DTTM,A.END_DTTM,A.REGION_CODE,A.STATION_CODE,&
                          A.DEPT_CODE,A.VS_DR_CODE,C.BED_NO_DESC AS BED_NO,A.IPD_NO,A.MR_NO,A.DSPN_KIND,A.DSPN_DATE,A.DSPN_USER,A.DISPENSE_EFF_DATE,&
			  A.DISPENSE_END_DATE,A.EXEC_DEPT_CODE,A.AGENCY_ORG_CODE,A.PRESCRIPT_NO,A.LINKMAIN_FLG,A.LINK_NO,A.ORDER_CODE,&
			  A.ORDER_DESC||CASE WHEN TRIM(GOODS_DESC) IS NOT NULL OR TRIM(GOODS_DESC)<>'' THEN '(' || GOODS_DESC || ')' ELSE '' END &
			              ||CASE WHEN TRIM(SPECIFICATION) IS NOT NULL OR TRIM(SPECIFICATION) <>'' THEN '(' || SPECIFICATION || ')' ELSE '' END &
                          AS ORDER_DESC_AND_SPECIFICATION,A.GOODS_DESC,A.SPECIFICATION,A.MEDI_QTY,A.MEDI_UNIT,A.FREQ_CODE,A.ROUTE_CODE,A.TAKE_DAYS,&
                          A.DOSAGE_QTY,A.DOSAGE_UNIT,A.DISPENSE_QTY,A.DISPENSE_UNIT,A.GIVEBOX_FLG,A.OWN_PRICE,A.NHI_PRICE,A.DISCOUNT_RATE,A.OWN_AMT,A.TOT_AMT,&
                          A.ORDER_DATE,A.ORDER_DEPT_CODE,A.ORDER_DR_CODE,A.DR_NOTE,A.ATC_FLG,A.SENDATC_FLG,A.SENDATC_DTTM,A.INJPRAC_GROUP,A.DC_DATE,A.DC_TOT,&
                          A.RTN_NO,A.RTN_NO_SEQ,A.RTN_DOSAGE_QTY,A.RTN_DOSAGE_UNIT,A.CANCEL_DOSAGE_QTY,A.CANCELRSN_CODE,A.TRANSMIT_RSN_CODE,A.PHA_RETN_CODE,&
			  A.PHA_RETN_DATE,A.PHA_CHECK_CODE,A.PHA_CHECK_DATE,A.PHA_DISPENSE_NO,A.PHA_DOSAGE_CODE,A.PHA_DOSAGE_DATE,A.PHA_DISPENSE_CODE,&
                          A.PHA_DISPENSE_DATE,A.NS_EXEC_CODE,A.NS_EXEC_DATE,A.NS_EXEC_DC_CODE,A.NS_EXEC_DC_DATE,A.NS_USER,A.CTRLDRUGCLASS_CODE,A.PHA_TYPE,&
			  A.DOSE_TYPE,A.DCTAGENT_CODE,A.DCTEXCEP_CODE,A.DCT_TAKE_QTY,A.PACKAGE_AMT,A.DCTAGENT_FLG,A.DECOCT_CODE,A.URGENT_FLG,A.SETMAIN_FLG,&
			  A.ORDERSET_GROUP_NO,A.ORDERSET_CODE,A.RPTTYPE_CODE,A.OPTITEM_CODE,A.HIDE_FLG,A.DEGREE_CODE,A.BILL_FLG,A.CASHIER_USER,A.CASHIER_DATE,&
                          A.IBS_CASE_NO_SEQ,A.IBS_SEQ_NO,A.OPT_USER,A.OPT_DATE,A.OPT_TERM,A.DC_DR_CODE,A.CAT1_TYPE,D.CLASSIFY_TYPE,A.ORDER_DESC,A.RX_NO,A.DISPENSE_FLG,&
			  E.VS_DR_CODE JZDR,E.IN_DATE,E.ADM_DAYS,E.PAY_INS,E.TOTAL_AMT,E.TOTAL_BILPAY,E.CUR_AMT,E.GREENPATH_VALUE,E.WEIGHT,E.HEIGHT,E.CLNCPATH_CODE,E.SERVICE_LEVEL &
			   //================ add by wukai on 20160531 start
			  ,A.PUMP_CODE, A.INFLUTION_RATE &
			  //================== add by wukai on 20160531 end
    	             FROM ODI_DSPNM A, SYS_PATINFO B, SYS_BED C,SYS_PHAROUTE D,ADM_INP E,ODI_DSPND F &
                    WHERE A.MR_NO = B.MR_NO &
		      AND A.BED_NO = C.BED_NO &
		      AND (A.HIDE_FLG <> 'Y' OR A.HIDE_FLG IS NULL) &
		      AND A.ROUTE_CODE=D.ROUTE_CODE(+) &
                      AND A.CASE_NO = E.CASE_NO &
		      AND A.CASE_NO = F.CASE_NO &
                      AND A.ORDER_NO = F.ORDER_NO &
                      AND A.ORDER_SEQ = F.ORDER_SEQ &
                      AND F.ORDER_DATE || F.ORDER_DATETIME BETWEEN A.START_DTTM AND A.END_DTTM &
                 ORDER BY C.BED_NO_DESC, A.ORDER_NO, A.ORDER_SEQ, A.ORDER_DATE 

selectOdiDspnD.item=DEPT_CODE;IPD_NO;MR_NO;DS_DATE_FLG;STATION_CODE;CASE_NO;EXECTYPE_YES;EXECTYPE_NO;NS_EXEC_DATE;CAT1_TYPEPHA;CAT1_TYPEPL;CAT1_TYPEENT;DSPN_KINDSTF;DSPN_KINDUD;DSPN_KINDDS;DSPN_KINDIG;DOSE_TYPEO;DOSE_TYPEE;DOSE_TYPEI;DOSE_TYPEF;REGION_CODE;VS_DR_CODE;EXECTYPE_ALL;S1;S2;EXECTYPE_ALL_ORDERDATETIME;ORDER_DATETIME;INW_EXEC_DSPN_KIND;BED_NO_DESC

// =======modified by WangQing 20170331 -start
// =======add 床号区间
selectOdiDspnD.BED_NO_DESC=(C.BED_NO_DESC BETWEEN <BED_NO_S> AND <BED_NO_E>)
// =======modified by WangQing 20170331 -end

//add by wanglong 20130626
selectOdiDspnD.STATION_CODE=A.STATION_CODE=<STATION_CODE>
//============pangben modify 20110512 start
selectOdiDspnD.REGION_CODE=A.REGION_CODE=<REGION_CODE>
//============pangben modify 20110512 stop
selectOdiDspnD.CASE_NO=A.CASE_NO=<CASE_NO>
selectOdiDspnD.EXECTYPE_ALL=(((A.NS_EXEC_CODE IS NULL OR (A.DC_DR_CODE IS NOT NULL AND NS_EXEC_DC_CODE IS NULL)) OR (A.NS_EXEC_CODE IS NOT NULL AND A.NS_EXEC_DATE BETWEEN TO_DATE(<fromCheckDate>,'yyyyMMddhh24miss') AND TO_DATE(<toCheckDate>,'yyyyMMddhh24miss'))) AND A.DSPN_KIND<>'RT' AND A.DC_NS_CHECK_DATE IS NULL)
selectOdiDspnD.EXECTYPE_NO=((A.NS_EXEC_CODE IS NULL OR (A.DC_DR_CODE IS NOT NULL AND NS_EXEC_DC_CODE IS NULL)) AND A.DSPN_KIND<>'RT' AND A.DC_NS_CHECK_DATE IS NULL)
selectOdiDspnD.EXECTYPE_YES=(A.NS_EXEC_CODE IS NOT NULL AND A.DC_NS_CHECK_DATE IS NULL)
selectOdiDspnD.NS_EXEC_DATE=A.NS_EXEC_DATE BETWEEN TO_DATE(<fromCheckDate>,'yyyyMMddhh24miss') AND TO_DATE(<toCheckDate>,'yyyyMMddhh24miss')
selectOdiDspnD.CAT1_TYPEPHA=A.CAT1_TYPE = 'PHA'
selectOdiDspnD.CAT1_TYPEPL=A.CAT1_TYPE IN ('LIS','RIS')
selectOdiDspnD.CAT1_TYPEENT=A.CAT1_TYPE IN ('TRT','PLN','OTH')
selectOdiDspnD.DSPN_KINDSTF=A.DSPN_KIND = 'ST'
selectOdiDspnD.DSPN_KINDUD=(A.DSPN_KIND = 'UD' OR A.DSPN_KIND = 'F')
selectOdiDspnD.DSPN_KINDDS=DSPN_KIND = 'DS'
selectOdiDspnD.DSPN_KINDIG=DSPN_KIND = 'IG' 
selectOdiDspnD.DOSE_TYPEO=D.CLASSIFY_TYPE = 'O'
selectOdiDspnD.DOSE_TYPEE=D.CLASSIFY_TYPE = 'E'
selectOdiDspnD.DOSE_TYPEI=D.CLASSIFY_TYPE = 'I'
selectOdiDspnD.DOSE_TYPEF=D.CLASSIFY_TYPE = 'F'
selectOdiDspnD.IPD_NO=A.IPD_NO = <IPD_NO>
selectOdiDspnD.MR_NO=A.MR_NO = <MR_NO>
selectOdiDspnD.DS_DATE_FLG=E.DS_DATE IS NULL
selectOdiDspnD.DEPT_CODE=E.DEPT_CODE = <DEPT_CODE>
selectOdiDspnD.VS_DR_CODE=E.VS_DR_CODE = <VS_DR_CODE>
//add by wanglong 20130626
selectOdiDspnD.EXECTYPE_ALL_ORDERDATETIME=(((A.NS_EXEC_CODE IS NULL OR (A.DC_DR_CODE IS NOT NULL AND A.NS_EXEC_DC_CODE IS NULL)) OR (A.NS_EXEC_CODE IS NOT NULL &
                                           AND F.ORDER_DATE||F.ORDER_DATETIME BETWEEN TO_CHAR(<fromDateTime>,'yyyyMMddhh24mi') AND TO_CHAR(<toDateTime>,'yyyyMMddhh24mi') &
					   )) AND A.DSPN_KIND<>'RT' AND A.DC_NS_CHECK_DATE IS NULL)
selectOdiDspnD.ORDER_DATETIME=(F.ORDER_DATE||F.ORDER_DATETIME BETWEEN TO_CHAR(<fromDateTime>,'yyyyMMddhh24mi') AND TO_CHAR(<toDateTime>,'yyyyMMddhh24mi'))
selectOdiDspnD.INW_EXEC_DSPN_KIND=A.DSPN_KIND IN ('ST','UD','F','DS','IG')
selectOdiDspnD.Debug=Y

//护士取执行核动作--更新ODI_DSPNM
updateOdiDspnmForExec.Type=TSQL

updateOdiDspnmForExec.SQL=UPDATE ODI_DSPNM SET &

	OPT_DATE=<OPT_DATE>,OPT_USER=<OPT_USER>,OPT_TERM=<OPT_TERM>,&
	
	NS_EXEC_CODE=<NS_EXEC_CODE>,NS_EXEC_DATE=<NS_EXEC_DATE>,&
	
	NS_EXEC_DC_CODE=<NS_EXEC_DC_CODE>,NS_EXEC_DC_DATE=<NS_EXEC_DC_DATE> &
	
	WHERE CASE_NO=<CASE_NO> AND ORDER_NO=<ORDER_NO> AND ORDER_SEQ=<ORDER_SEQ> AND START_DTTM = <START_DTTM>

updateOdiDspnmForExec.Debug=N


//护士取消执行动作--更新ODI_DSPND
updateOdiDspndForExec.Type=TSQL

updateOdiDspndForExec.SQL=UPDATE ODI_DSPND SET &

	OPT_DATE=<OPT_DATE>,OPT_USER=<OPT_USER>,OPT_TERM=<OPT_TERM>,&
	
	NS_EXEC_CODE=<NS_EXEC_CODE>,NS_EXEC_DATE=<NS_EXEC_DATE>,&
	
	NS_EXEC_DC_CODE=<NS_EXEC_DC_CODE>,NS_EXEC_DC_DATE=<NS_EXEC_DC_DATE> &
	
	WHERE CASE_NO=<CASE_NO> AND ORDER_NO=<ORDER_NO> AND ORDER_SEQ=<ORDER_SEQ> AND ORDER_DATE||ORDER_DATETIME BETWEEN <START_DTTM> AND <END_DTTM>

updateOdiDspndForExec.Debug=N


//护士执行动作--计费之后回写ODI_DSPNM
updateOdiDspnmByIBS.Type=TSQL

updateOdiDspnmByIBS.SQL=UPDATE ODI_DSPNM SET &

	OPT_DATE=SYSDATE,OPT_USER=<OPT_USER>,OPT_TERM=<OPT_TERM>,&
	
	BILL_FLG=<BILL_FLG>,CASHIER_USER=<CASHIER_USER>,&
	
	CASHIER_DATE=<CASHIER_DATE>,IBS_CASE_NO_SEQ=<IBS_CASE_NO_SEQ>,IBS_SEQ_NO=<IBS_SEQ_NO> &
	
	WHERE CASE_NO=<CASE_NO> AND ORDER_NO=<ORDER_NO> AND ORDER_SEQ=<ORDER_SEQ> AND START_DTTM = <START_DTTM>

updateOdiDspnmByIBS.Debug=N


//护士执行动作更新执行备注--计费之后回写ODI_DSPND
updateOdiDspndByIBS.Type=TSQL

updateOdiDspndByIBS.SQL=UPDATE ODI_DSPND SET &

	OPT_DATE=SYSDATE,OPT_USER=<OPT_USER>,OPT_TERM=<OPT_TERM>,&
	
	BILL_FLG=<BILL_FLG>,CASHIER_CODE=<CASHIER_CODE>,&
	
	CASHIER_DATE=<CASHIER_DATE>,IBS_CASE_NO_SEQ=<IBS_CASE_NO_SEQ>,IBS_CASE_NO=<IBS_CASE_NO> &
	
	WHERE CASE_NO=<CASE_NO> AND ORDER_NO=<ORDER_NO> AND ORDER_SEQ=<ORDER_SEQ>  AND ORDER_DATE||ORDER_DATETIME BETWEEN <START_DTTM> AND <END_DTTM>

updateOdiDspndByIBS.Debug=N


//护士取执行核动作--更新ODI_DSPND
updateOdiDspndToNsNot.Type=TSQL

updateOdiDspndToNsNot.SQL=UPDATE ODI_DSPND SET &
	
	EXEC_NOTE=<EXEC_NOTE> &
	
	WHERE CASE_NO=<CASE_NO> AND ORDER_NO=<ORDER_NO> AND ORDER_SEQ=<ORDER_SEQ> &
	
	AND ORDER_DATE=<ORDER_DATE> AND (ORDER_DATETIME=<ORDER_DATETIME> OR ORDER_DATETIME=<ORDER_DATETIME>||'00')

updateOdiDspndToNsNot.Debug=N



//护士取执行核动作--更新ODI_DSPND
updateOdiOrderForNote.Type=TSQL

updateOdiOrderForNote.SQL=UPDATE ODI_ORDER &

                          SET    NS_NOTE=<EXEC_NOTE>,OPT_DATE=SYSDATE,OPT_USER=<OPT_USER>,OPT_TERM=<OPT_TERM> &
	
	                  WHERE CASE_NO=<CASE_NO> AND ORDER_NO=<ORDER_NO> AND ORDER_SEQ=<ORDER_SEQ>

updateOdiOrderForNote.Debug=N



updateOdiOrderU.Type=TSQL
updateOdiOrderU.SQL=UPDATE ODI_ORDER SET &

	OPT_DATE=<OPT_DATE>,OPT_USER=<OPT_USER>,OPT_TERM=<OPT_TERM>,&
	
	LASTDSPN_QTY=<LASTDSPN_QTY>,LAST_DSPN_DATE=<LAST_DSPN_DATE>,ACUMDSPN_QTY=<ACUMDSPN_QTY>,ACUMMEDI_QTY=<ACUMMEDI_QTY>,&
	
	DOSAGE_QTY=<DOSAGE_QTY>,DOSAGE_UNIT=<DOSAGE_UNIT>,DISPENSE_QTY=<DISPENSE_QTY>,DISPENSE_UNIT=<DISPENSE_UNIT>&
	
	WHERE CASE_NO=<CASE_NO> AND ORDER_NO=<ORDER_NO> AND ORDER_SEQ=<ORDER_SEQ>

updateOdiOrderU.Debug=N

//检验科送检--更新ODI_DSPNM
updateOdidspnmLisData.Type=TSQL

updateOdidspnmLisData.SQL=UPDATE ODI_DSPNM SET &

	OPT_DATE=SYSDATE,OPT_USER=<OPT_USER>,OPT_TERM=<OPT_TERM>,&
	
	LIS_RE_DATE=SYSDATE,&
	
	LIS_RE_USER=<LIS_RE_USER> &
	
	WHERE CASE_NO=<CASE_NO> AND ORDER_NO=<ORDER_NO> AND ORDER_SEQ=<ORDER_SEQ> AND START_DTTM = <START_DTTM>

updateOdidspnmLisData.Debug=N


//护士生成BAR_CODE动作--更新ODI_DSPND
updateOdiDspndBarCode.Type=TSQL

updateOdiDspndBarCode.SQL=UPDATE ODI_DSPND SET &

	OPT_DATE=<OPT_DATE>,OPT_USER=<OPT_USER>,OPT_TERM=<OPT_TERM>,BAR_CODE=<BAR_CODE> &
	WHERE CASE_NO=<CASE_NO> AND ORDER_NO=<ORDER_NO> AND ORDER_SEQ=<ORDER_SEQ> AND ORDER_DATE=<ORDER_DATE> AND ORDER_DATETIME=<ORDER_DATETIME>
	
updateOdiDspndBarCode.Debug=N

//判断库存量
getIndStockQty.Type=TSQL
getIndStockQty.SQL=SELECT SUM(A.STOCK_QTY*B.DOSAGE_QTY) &
                   AS INDSTOCKQTY,A.ORDER_CODE &
                   FROM IND_STOCK A,PHA_TRANSUNIT B &
		   WHERE  A.ACTIVE_FLG='Y' AND B.ORDER_CODE=A.ORDER_CODE AND SYSDATE < A.VALID_DATE &
		   AND A.ORG_CODE=<ORG_CODE> AND A.ORDER_CODE=<ORDER_CODE> &
                  GROUP BY A.ORDER_CODE 
getIndStockQty.Debug=N
//--更新ODI_ORDER
updateOdiOrdertakeMedOrg.Type=TSQL
updateOdiOrdertakeMedOrg.SQL=UPDATE ODI_ORDER SET &

	OPT_DATE=<OPT_DATE>,OPT_USER=<OPT_USER>,OPT_TERM=<OPT_TERM>,&
	
	TAKEMED_ORG=<TAKEMED_ORG> &
	
	WHERE CASE_NO=<CASE_NO> AND ORDER_NO=<ORDER_NO> AND ORDER_SEQ=<ORDER_SEQ>

updateOdiOrdertakeMedOrg.Debug=N


//护士审核动作--更新 ODI_DSPNM
updateOdiDspnmtakeMedOrg.Type=TSQL
updateOdiDspnmtakeMedOrg.SQL=UPDATE  ODI_DSPNM SET &
        OPT_DATE=<OPT_DATE>,OPT_USER=<OPT_USER>,OPT_TERM=<OPT_TERM>,&
	
	TAKEMED_ORG=<TAKEMED_ORG>,TAKEMED_NO=<TAKEMED_NO> &
	
	WHERE CASE_NO=<CASE_NO> AND ORDER_NO=<ORDER_NO> AND ORDER_SEQ=<ORDER_SEQ> AND START_DTTM = <START_DTTM>

updateOdiDspnmtakeMedOrg.Debug=N

//护士审核动作--更新 ODI_DSPND
updateOdiDspnDtakeMedOrg.Type=TSQL
updateOdiDspnDtakeMedOrg.SQL=UPDATE  ODI_DSPND SET &
         OPT_DATE=<OPT_DATE>,OPT_USER=<OPT_USER>,OPT_TERM=<OPT_TERM>,&
	
	 TAKEMED_ORG=<TAKEMED_ORG> &
	
	WHERE CASE_NO=<CASE_NO> AND ORDER_NO=<ORDER_NO> AND ORDER_SEQ=<ORDER_SEQ> AND ORDER_DATE||ORDER_DATETIME BETWEEN <START_DTTM> AND <END_DTTM>

updateOdiDspnmtakeMedOrg.Debug=N

//查询条码号（FROM ODI_ORDER） add by wanglong 20130809
selectOdiOrderMedNo.Type=TSQL
selectOdiOrderMedNo.SQL=SELECT MED_APPLY_NO FROM ODI_ORDER &
                         WHERE CASE_NO = <CASE_NO> AND ORDER_NO = <ORDER_NO> AND ORDER_SEQ = <ORDER_SEQ>
selectOdiOrderMedNo.item=ORDER_CAT1_CODE;ORDER_CODE;OPTITEM_CODE
selectOdiOrderMedNo.ORDER_CAT1_CODE=ORDER_CAT1_CODE = <ORDER_CAT1_CODE>
selectOdiOrderMedNo.ORDER_CODE=ORDER_CODE = <ORDER_CODE>
selectOdiOrderMedNo.OPTITEM_CODE=OPTITEM_CODE = <OPTITEM_CODE>
selectOdiOrderMedNo.Debug=N

//护士执行皮试药品时向MED_NODIFY添加数据 add yanjing 20140714

insertIntoMedNodify.Type=TSQL
insertIntoMedNodify.SQL= INSERT INTO &
                           MED_NODIFY &
			   (MED_NOTIFY_CODE,SEQ,CASE_NO,ADM_TYPE,MR_NO,PAT_NAME,SEX_CODE,BED_NO, &
			   IPD_NO,DEPT_CODE,BILLING_DOCTORS,CAT1_TYPE,SYSTEM_CODE,APPLICATION_NO, &
			   ORDER_CODE,ORDER_NO,ORDER_SEQ,SEND_STAT,CRTCLLWLMT,STATION_CODE, &
			   CLINICAREA_CODE,SEND_DATE,REMARK,OPT_USER,OPT_DATE,OPT_TERM ) &
			   VALUES &
			   (<MED_NOTIFY_CODE>, <SEQ>, <CASE_NO>,<ADM_TYPE>, <MR_NO>, <PAT_NAME>,<SEX_CODE>,<BED_NO>, &
			   <IPD_NO>, <DEPT_CODE>, <BILLING_DOCTORS>, <CAT1_TYPE>, <SYSTEM_CODE>,<APPLICATION_NO>, &
			   <ORDER_CODE>, <ORDER_NO>,<ORDER_SEQ>, <SEND_STAT>, <CRTCLLWLMT>,<STATION_CODE>, &
			   <CLINICAREA_CODE>, <SEND_DATE>,<REMARK>,<OPT_USER>,<OPT_DATE>,<OPT_TERM>)
insertIntoMedNodify.Debug=N