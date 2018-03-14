Module.item=query;update;insert;delete;query_sys_ins;importOrder;onQueryMaxXaka002

//查询三目ins_ka_002基本档数据
query.Type=TSQL
query.SQL=SELECT  NHI_ORDER_CODE, NHI_ORDER_DESC, NHI_ORDER_ENG_DESC, CHARGE_CODE, ORDER_CAT1, ORDER_CAT2, ORDER_CAT3, PRE_FLG, ORDER_TYPE, MEMO_CODE, UNIT, PRICE, OWN_RATE, DOSE_CODE, QTY, FREQ_CODE, ROUTE_CODE, DESCRIPTION, LIMIT_FLG, REMARK, APROVE_USER_ID, TO_CHAR(APPROVE_DATE, 'YYYY-mm-dd hh24:MI:SS')APPROVE_DATE, DATAAREA_NO, ACTIVE_FLG, BKA002, BKA001, HOSP_ORDER_CODE, FEE_TYPE, STA_CODE FROM INS_XA_KA002 ORDER BY NHI_ORDER_CODE
query.item=HOSP_ORDER_CODE;FEE_TYPE;NHI_ORDER_CODE;STA_CODE
query.HOSP_ORDER_CODE=HOSP_ORDER_CODE=<HOSP_ORDER_CODE>
query.FEE_TYPE=FEE_TYPE=<FEE_TYPE>
query.NHI_ORDER_CODE=NHI_ORDER_CODE=<NHI_ORDER_CODE>
query.STA_CODE=STA_CODE=<STA_CODE>
query.Debug=N

//修改医保药品
update.Type=TSQL
update.SQL=UPDATE INS_XA_KA002 SET  NHI_ORDER_DESC=<NHI_ORDER_DESC>, NHI_ORDER_ENG_DESC=<NHI_ORDER_ENG_DESC>, CHARGE_CODE=<CHARGE_CODE>, ORDER_CAT1=<ORDER_CAT1>, ORDER_CAT2=<ORDER_CAT2>, ORDER_CAT3=<ORDER_CAT3>, PRE_FLG=<PRE_FLG>, ORDER_TYPE=<ORDER_TYPE>, MEMO_CODE=<MEMO_CODE>, UNIT=<UNIT>, PRICE=<PRICE>, OWN_RATE=<OWN_RATE>, DOSE_CODE=<DOSE_CODE>, QTY=<QTY>, FREQ_CODE=<FREQ_CODE>, ROUTE_CODE=<ROUTE_CODE>, DESCRIPTION=<DESCRIPTION>, LIMIT_FLG=<LIMIT_FLG>, REMARK=<REMARK>, APROVE_USER_ID=<APROVE_USER_ID>, APPROVE_DATE=TO_CHAR(<APPROVE_DATE>, 'YYYY-mm-dd hh24:MI:SS'), DATAAREA_NO=<DATAAREA_NO>, ACTIVE_FLG=<ACTIVE_FLG>, BKA002=<BKA002>, BKA001=<BKA001>, HOSP_ORDER_CODE=<HOSP_ORDER_CODE>, FEE_TYPE=<FEE_TYPE>, STA_CODE=<STA_CODE>  WHERE NHI_ORDER_CODE=<NHI_ORDER_CODE>
update.item=NHI_ORDER_DESC;NHI_ORDER_ENG_DESC;CHARGE_CODE;ORDER_CAT1;ORDER_CAT2;ORDER_CAT3;PRE_FLG;ORDER_TYPE;MEMO_CODE;UNIT;PRICE;OWN_RATE;DOSE_CODE;QTY;FREQ_CODE;ROUTE_CODE;DESCRIPTION;LIMIT_FLG;REMARK;APROVE_USER_ID;TO_CHAR(APPROVE_DATE;'YYYY-mm-dd hh24:MI:SS')APPROVE_DATE;DATAAREA_NO;ACTIVE_FLG;BKA002;BKA001;HOSP_ORDER_CODE;FEE_TYPE;STA_CODE
update.Debug=N

//删除数据
delete.Type=TSQL
delete.SQL=DELETE FROM INS_XA_KA002 WHERE NHI_ORDER_CODE=<NHI_ORDER_CODE>
delete.Debug=N

//新增
insert.Type=TSQL
insert.SQL=INSERT INTO ins_xa_ka002&
            (nhi_order_code, nhi_order_desc, nhi_order_eng_desc,&
             charge_code, order_cat1, order_cat2, order_cat3,&
             pre_flg, order_type, memo_code, unit, price,&
             own_rate, dose_code, qty, freq_code, route_code,&
             description, limit_flg, remark, aprove_user_id,&
             approve_date,&
             dataarea_no, active_flg, bka002, bka001,&
             hosp_order_code, fee_type, sta_code&
            )&
             VALUES&
 (<NHI_ORDER_CODE>,<NHI_ORDER_DESC>,<NHI_ORDER_ENG_DESC>,<CHARGE_CODE>,<ORDER_CAT1>,<ORDER_CAT2>,<ORDER_CAT3>,<PRE_FLG>,<ORDER_TYPE>,<MEMO_CODE>,<UNIT>,<PRICE>,<OWN_RATE>,<DOSE_CODE>,<QTY>,<FREQ_CODE>,<ROUTE_CODE>,<DESCRIPTION>,<LIMIT_FLG>,<REMARK>,<APROVE_USER_ID>,SYSDATE,<DATAAREA_NO>,<ACTIVE_FLG>,<BKA002>,<BKA001>,<HOSP_ORDER_CODE>,<FEE_TYPE>,<STA_CODE>)
insert.Debug=N


query_sys_ins.Type=TSQL
query_sys_ins.SQL=  SELECT   DISTINCT A.ORDER_CODE, B.HOSP_ORDER_CODE,A.ORDER_DESC,A.TRADE_ENG_DESC,&

		A.CHARGE_HOSP_CODE,A.ORDER_CAT1,A.ORDER_TYPE,A.UNIT_CODE,&
		
		A.NHI_PRICE,C.DOSE_CODE ,C.FREQ_CODE,C.TAKE_QTY,&
		
		C.ROUTE_CODE,A.DESCRIPTION,C.TAKE_QTY &
		
		FROM SYS_FEE A, INS_XA_KA002 B,PHA_BASE C &
		
  		WHERE  A.HOSP_AREA = 'HIS' &
  		 
           	AND A.ORDER_CAT1 = 'PHA' &
           	
          	AND A.ORDER_CODE=C.ORDER_CODE &
          	
           	AND B.HOSP_ORDER_CODE(+) = A.ORDER_CODE &
           	
           	AND A.ACTIVE_FLG='Y' &
           	
		ORDER BY   A.ORDER_CODE
query_sys_ins.Debug=N


//汇入
importOrder.Type=TSQL
importOrder.SQL=INSERT INTO INS_XA_KA002 &

            (NHI_ORDER_CODE, NHI_ORDER_DESC, NHI_ORDER_ENG_DESC,CHARGE_CODE,&
             
             ORDER_CAT1, ORDER_CAT2, ORDER_CAT3,PRE_FLG,&
             
             ORDER_TYPE, MEMO_CODE, UNIT, PRICE,&
             
             OWN_RATE,DOSE_CODE, QTY, FREQ_CODE,&
             
             ROUTE_CODE,DESCRIPTION, LIMIT_FLG, REMARK, &
             
             APROVE_USER_ID,APPROVE_DATE, DATAAREA_NO, ACTIVE_FLG, &
             
             BKA002, BKA001,HOSP_ORDER_CODE, FEE_TYPE, STA_CODE )&
             
             VALUES &
             
 	(<NHI_ORDER_CODE>,<NHI_ORDER_DESC>,<NHI_ORDER_ENG_DESC>,<CHARGE_CODE>,&
 	
 	<ORDER_CAT1>,'','','',&
 	
 	<ORDER_TYPE>,'',<UNIT>,<PRICE>,&
 	
 	0.0,<DOSE_CODE>,<QTY>,<FREQ_CODE>,&
 	
 	<ROUTE_CODE>,<DESCRIPTION>,'N','',&
 	
 	<APROVE_USER_ID>,SYSDATE,'','Y',&
 	
 	0.0,'',<NHI_ORDER_CODE>,'','')
importOrder.Debug=N


onQueryMaxXaka002.Type=TSQL
onQueryMaxXaka002.SQL=SELECT  NHI_ORDER_CODE, NHI_ORDER_DESC, NHI_ORDER_ENG_DESC, CHARGE_CODE, ORDER_CAT1,&

			ORDER_CAT2, ORDER_CAT3, PRE_FLG, ORDER_TYPE, MEMO_CODE, &
			
			UNIT, PRICE, OWN_RATE, DOSE_CODE, QTY,&
			
			FREQ_CODE, ROUTE_CODE, DESCRIPTION, LIMIT_FLG, REMARK, &
			
			APROVE_USER_ID, TO_CHAR(APPROVE_DATE, 'YYYY-mm-dd hh24:MI:SS')APPROVE_DATE, DATAAREA_NO, ACTIVE_FLG, BKA002, &
			
			BKA001, HOSP_ORDER_CODE, FEE_TYPE, STA_CODE &

			FROM INS_XA_KA002  &
			
			WHERE APPROVE_DATE=(SELECT MAX(APPROVE_DATE) FROM INS_XA_KA002  ) &
			
			ORDER BY NHI_ORDER_CODE
onQueryMaxXaka002.Debug=N