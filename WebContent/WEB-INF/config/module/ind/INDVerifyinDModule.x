   #
   # Title:验收入库明细
   #
   # Description:验收入库明细
   #
   # Copyright: JavaHis (c) 2009
   #
   # @author zhangy 2009/05/04

Module.item=queryVerifyinD;queryVerifyinDoneD;updateVerifyinDReg;getQueryVerifyinBuyMaster;getQueryVerifyinBuyDetail;getQueryVerifyinGiftMaster;getQueryVerifyinGiftDetail

//查询验收入库明细
queryVerifyinD.Type=TSQL
queryVerifyinD.SQL=SELECT VERIFYIN_NO, SEQ_NO, PURORDER_NO, PURSEQ_NO, ORDER_CODE, &
		          VERIFYIN_QTY, GIFT_QTY, BILL_UNIT, VERIFYIN_PRICE, INVOICE_AMT, &
		          INVOICE_NO, INVOICE_DATE, BATCH_NO, VALID_DATE, REASON_CHN_DESC, &
		          QUALITY_DEDUCT_AMT, RETAIL_PRICE, ACTUAL_QTY, UPDATE_FLG, OPT_USER, &
		          OPT_DATE, OPT_TERM &
		     FROM IND_VERIFYIND
queryVerifyinD.ITEM=VERIFYIN_NO;SEQ_NO;PURORDER_NO;PURSEQ_NO;ORDER_CODE
queryVerifyinD.VERIFYIN_NO=VERIFYIN_NO=<VERIFYIN_NO>
queryVerifyinD.SEQ_NO=SEQ_NO=<SEQ_NO>
queryVerifyinD.PURORDER_NO=PURORDER_NO=<PURORDER_NO>
queryVerifyinD.PURSEQ_NO=PURSEQ_NO=<PURSEQ_NO>
queryVerifyinD.ORDER_CODE=ORDER_CODE=<ORDER_CODE>
queryVerifyinD.Debug=N

//验收未退货明细表-luhai 2012-1-11 modify 加入batch_seq verifyInPrice
//queryVerifyinDoneD.Type=TSQL
//queryVerifyinDoneD.SQL=SELECT 'N' AS SELECT_FLG, B.VERIFYIN_NO, B.VERIFYIN_DATE, A.ORDER_CODE, C.SPECIFICATION, &
//       			      A.BATCH_NO, A.VALID_DATE, A.VERIFYIN_QTY, A.GIFT_QTY, A.BILL_UNIT, &
//       			      A.VERIFYIN_PRICE, A.ACTUAL_QTY, A.UPDATE_FLG, C.ORDER_DESC , C.OWN_PRICE * D.DOSAGE_QTY AS RETAIL_PRICE,  &
//       			      A.SEQ_NO &
//  		        FROM IND_VERIFYIND A, IND_VERIFYINM B, SYS_FEE C, PHA_TRANSUNIT D &
// 		        WHERE A.VERIFYIN_NO = B.VERIFYIN_NO &
//   			  AND A.ORDER_CODE = C.ORDER_CODE &
//   			  AND (A.UPDATE_FLG = '1' OR A.UPDATE_FLG = '3') &
//   			  AND A.ORDER_CODE = D.ORDER_CODE &
//                 	  AND C.ORDER_CODE = D.ORDER_CODE &
//   			  AND B.ORG_CODE=<ORG_CODE> &
//   			  AND B.SUP_CODE=<SUP_CODE>
//queryVerifyinDoneD.ITEM=VERIFYIN_NO;ORDER_CODE;START_CHECK_DATE;END_CHECK_DATE
//queryVerifyinDoneD.VERIFYIN_NO=B.VERIFYIN_NO=<VERIFYIN_NO>
//queryVerifyinDoneD.ORDER_CODE=A.ORDER_CODE=<ORDER_CODE>
//queryVerifyinDoneD.START_CHECK_DATE=B.CHECK_DATE>=<START_CHECK_DATE>
//queryVerifyinDoneD.END_CHECK_DATE=B.CHECK_DATE<=<END_CHECK_DATE>
//queryVerifyinDoneD.Debug=N
//begin update by guoyi 2012-5-17 删除重复的 verifyInPrice
//queryVerifyinDoneD.Type=TSQL
//queryVerifyinDoneD.SQL=SELECT 'N' AS SELECT_FLG, B.VERIFYIN_NO, B.VERIFYIN_DATE, A.ORDER_CODE, C.SPECIFICATION, &
//       			      A.BATCH_NO, A.VALID_DATE, A.VERIFYIN_QTY, A.GIFT_QTY, A.BILL_UNIT, &
//       			      A.VERIFYIN_PRICE, A.ACTUAL_QTY, A.UPDATE_FLG, C.ORDER_DESC , C.OWN_PRICE * D.DOSAGE_QTY AS RETAIL_PRICE,  &
//       			      A.SEQ_NO,A.BATCH_SEQ,A.VERIFYIN_PRICE,A.INVOICE_NO,A.INVOICE_DATE &
//  		        FROM IND_VERIFYIND A, IND_VERIFYINM B, SYS_FEE C, PHA_TRANSUNIT D &
// 		        WHERE A.VERIFYIN_NO = B.VERIFYIN_NO &
//   			  AND A.ORDER_CODE = C.ORDER_CODE &
//   			  AND (A.UPDATE_FLG = '1' OR A.UPDATE_FLG = '3') &
//   			  AND A.ORDER_CODE = D.ORDER_CODE &
//                 	  AND C.ORDER_CODE = D.ORDER_CODE &
//   			  AND B.ORG_CODE=<ORG_CODE> &
//   			  AND B.SUP_CODE=<SUP_CODE>
//queryVerifyinDoneD.ITEM=VERIFYIN_NO;ORDER_CODE;START_CHECK_DATE;END_CHECK_DATE
//queryVerifyinDoneD.VERIFYIN_NO=B.VERIFYIN_NO=<VERIFYIN_NO>
//queryVerifyinDoneD.ORDER_CODE=A.ORDER_CODE=<ORDER_CODE>
//queryVerifyinDoneD.START_CHECK_DATE=B.CHECK_DATE>=<START_CHECK_DATE>
//queryVerifyinDoneD.END_CHECK_DATE=B.CHECK_DATE<=<END_CHECK_DATE>
//queryVerifyinDoneD.Debug=N
//验收未退货明细表-
queryVerifyinDoneD.Type=TSQL
queryVerifyinDoneD.SQL=SELECT 'N' AS SELECT_FLG, B.VERIFYIN_NO, B.VERIFYIN_DATE, A.ORDER_CODE, C.SPECIFICATION, &
       			      A.BATCH_NO, A.VALID_DATE, A.VERIFYIN_QTY, A.GIFT_QTY, A.BILL_UNIT, &
       			      A.ACTUAL_QTY, A.UPDATE_FLG, C.ORDER_DESC , C.OWN_PRICE * D.DOSAGE_QTY AS RETAIL_PRICE,  &
       			      A.SEQ_NO,A.BATCH_SEQ,A.VERIFYIN_PRICE,A.INVOICE_NO,A.INVOICE_DATE,A.SUP_ORDER_CODE &
  		        FROM IND_VERIFYIND A, IND_VERIFYINM B, SYS_FEE C, PHA_TRANSUNIT D &
 		        WHERE A.VERIFYIN_NO = B.VERIFYIN_NO &
   			  AND A.ORDER_CODE = C.ORDER_CODE &
   			  AND (A.UPDATE_FLG = '1' OR A.UPDATE_FLG = '3') &
   			  AND A.ORDER_CODE = D.ORDER_CODE &
                 	  AND C.ORDER_CODE = D.ORDER_CODE &
   			  AND B.ORG_CODE=<ORG_CODE> &
   			  AND B.SUP_CODE=<SUP_CODE>
queryVerifyinDoneD.ITEM=VERIFYIN_NO;ORDER_CODE;START_CHECK_DATE;END_CHECK_DATE
queryVerifyinDoneD.VERIFYIN_NO=B.VERIFYIN_NO=<VERIFYIN_NO>
queryVerifyinDoneD.ORDER_CODE=A.ORDER_CODE=<ORDER_CODE>
queryVerifyinDoneD.START_CHECK_DATE=B.CHECK_DATE>=<START_CHECK_DATE>
queryVerifyinDoneD.END_CHECK_DATE=B.CHECK_DATE<=<END_CHECK_DATE>
queryVerifyinDoneD.Debug=N
//end update by guoyi 2012-5-17 删除重复的 verifyInPrice


//累计退货数更新
updateVerifyinDReg.Type=TSQL
updateVerifyinDReg.SQL=UPDATE IND_VERIFYIND &
		         SET  ACTUAL_QTY=ACTUAL_QTY+<QTY>, &
		              OPT_USER=<OPT_USER>, &
			      OPT_DATE=<OPT_DATE>, &
			      OPT_TERM=<OPT_TERM> &
		        WHERE VERIFYIN_NO=<VERIFYIN_NO> &
		          AND SEQ_NO=<SEQ_NO>
updateVerifyinDReg.Debug=N

//begin update by lirui 2012-5-30 加入生产厂商字段  MAN_CODE
//药品验收入库统计(购入汇总)
getQueryVerifyinBuyMaster.Type=TSQL
getQueryVerifyinBuyMaster.SQL=SELECT D.GOODS_DESC AS GOODS_DESC, D.ORDER_DESC AS ORDER_DESC, &                         
                  D.SPECIFICATION, E.UNIT_CHN_DESC,H.DOSE_CHN_DESC,I.ROUTE_CHN_DESC, SUM(B.VERIFYIN_QTY) AS QTY,&
		  B.VERIFYIN_PRICE,SUM(B.VERIFYIN_QTY) * B.VERIFYIN_PRICE AS VER_AMT, &
                  B.RETAIL_PRICE AS OWN_PRICE,B.RETAIL_PRICE * SUM(B.VERIFYIN_QTY) AS OWN_AMT, &
                  B.RETAIL_PRICE * SUM(B.VERIFYIN_QTY) - SUM(B.VERIFYIN_QTY) * B.VERIFYIN_PRICE AS DIFF_AMT,D.MAN_CODE AS MAN_NAME  &
                   FROM IND_VERIFYINM A, IND_VERIFYIND B, SYS_FEE D, SYS_UNIT E, PHA_TRANSUNIT F,PHA_BASE G,PHA_DOSE H,SYS_PHAROUTE I &
                  WHERE A.VERIFYIN_NO = B.VERIFYIN_NO AND B.ORDER_CODE = D.ORDER_CODE &
                     AND B.BILL_UNIT = E.UNIT_CODE AND B.ORDER_CODE = F.ORDER_CODE AND D.ORDER_CODE = F.ORDER_CODE &
                     AND B.UPDATE_FLG IN ('1', '3') AND B.ORDER_CODE = G.ORDER_CODE AND D.ORDER_CODE = G.ORDER_CODE &
                     AND G.DOSE_CODE=H.DOSE_CODE(+)  &
                     AND G.ROUTE_CODE = I.ROUTE_CODE &
                     AND F.ORDER_CODE = F.ORDER_CODE &
   			 		  AND A.ORG_CODE = <ORG_CODE> &
   					   AND A.CHECK_DATE BETWEEN TO_DATE(<START_DATE>,'YYYY-MM-DD HH24:MI:SS') AND TO_DATE(<END_DATE>,'YYYY-MM-DD HH24:MI:SS')  &
   					     GROUP BY D.GOODS_DESC, D.ORDER_DESC, D.SPECIFICATION, E.UNIT_CHN_DESC, B.VERIFYIN_PRICE, &
                                B.RETAIL_PRICE, B.ORDER_CODE,D.MAN_CODE,H.DOSE_CHN_DESC,I.ROUTE_CHN_DESC &
                              ORDER BY B.ORDER_CODE
getQueryVerifyinBuyMaster.ITEM=SUP_CODE;TYPE_CODE;ORDER_CODE;VERIFYIN_NO;INVOICE_NO
getQueryVerifyinBuyMaster.SUP_CODE=A.SUP_CODE=<SUP_CODE>
getQueryVerifyinBuyMaster.TYPE_CODE=G.TYPE_CODE=<TYPE_CODE>
getQueryVerifyinBuyMaster.ORDER_CODE=B.ORDER_CODE=<ORDER_CODE>
getQueryVerifyinBuyMaster.VERIFYIN_NO=A.VERIFYIN_NO=<VERIFYIN_NO>
getQueryVerifyinBuyMaster.INVOICE_NO=B.INVOICE_NO=<INVOICE_NO>
getQueryVerifyinBuyMaster.Debug=N


//药品验收入库统计(购入明细)
getQueryVerifyinBuyDetail.Type=TSQL
getQueryVerifyinBuyDetail.SQL=SELECT A.VERIFYIN_NO, C.SUP_ABS_DESC, A.CHECK_DATE AS VERIFYIN_DATE, &
       			      CASE WHEN (D.GOODS_DESC IS NULL) THEN D.ORDER_DESC  &
       			      ELSE D.ORDER_DESC || ' (' || D.GOODS_DESC || ')' END AS ORDER_DESC, &
       			      D.SPECIFICATION, E.UNIT_CHN_DESC, B.VERIFYIN_QTY, B.VERIFYIN_PRICE, &
			      B.VERIFYIN_QTY * B.VERIFYIN_PRICE AS VER_AMT, &
			      B.RETAIL_PRICE AS OWN_PRICE, &
			      B.RETAIL_PRICE * B.VERIFYIN_QTY AS OWN_AMT, &
			      B.RETAIL_PRICE * B.VERIFYIN_QTY &
			      - B.VERIFYIN_QTY * B.VERIFYIN_PRICE AS DIFF_AMT, &
       			      B.INVOICE_NO, B.INVOICE_DATE, B.BATCH_NO, B.VALID_DATE, &
       			      H.DOSE_CHN_DESC,I.ROUTE_CHN_DESC,J.FREQ_CHN_DESC,D.MAN_CODE  & 
  		         FROM IND_VERIFYINM A, IND_VERIFYIND B, SYS_SUPPLIER C, SYS_FEE D, SYS_UNIT E, PHA_TRANSUNIT F, PHA_BASE G, &
  		         PHA_DOSE H ,SYS_PHAROUTE I ,SYS_PHAFREQ J  &
 		         WHERE A.VERIFYIN_NO = B.VERIFYIN_NO &
   			   AND A.SUP_CODE = C.SUP_CODE &
   			   AND B.ORDER_CODE = D.ORDER_CODE &
   			   AND B.BILL_UNIT = E.UNIT_CODE &
   			   AND B.ORDER_CODE = F.ORDER_CODE &
   			   AND D.ORDER_CODE = F.ORDER_CODE &
   			   AND B.UPDATE_FLG IN ('1', '3') &
   			   AND B.ORDER_CODE = G.ORDER_CODE &
   			   AND D.ORDER_CODE = G.ORDER_CODE &
   			   AND F.ORDER_CODE = F.ORDER_CODE &
   			   AND A.ORG_CODE = <ORG_CODE> &
   			   AND A.CHECK_DATE BETWEEN TO_DATE(<START_DATE>,'YYYY-MM-DD HH24:MI:SS') AND TO_DATE(<END_DATE>,'YYYY-MM-DD HH24:MI:SS') &
   			   AND G.DOSE_CODE=H.DOSE_CODE(+) &
   			   AND G.ROUTE_CODE=I.ROUTE_CODE(+) &
   			   AND G.FREQ_CODE=J.FREQ_CODE(+) & 
   			   ORDER BY A.VERIFYIN_NO 
getQueryVerifyinBuyDetail.ITEM=SUP_CODE;TYPE_CODE;ORDER_CODE;VERIFYIN_NO;INVOICE_NO
getQueryVerifyinBuyDetail.SUP_CODE=A.SUP_CODE=<SUP_CODE>
getQueryVerifyinBuyDetail.TYPE_CODE=G.TYPE_CODE=<TYPE_CODE>
getQueryVerifyinBuyDetail.ORDER_CODE=B.ORDER_CODE=<ORDER_CODE>
getQueryVerifyinBuyDetail.VERIFYIN_NO=A.VERIFYIN_NO=<VERIFYIN_NO>
getQueryVerifyinBuyDetail.INVOICE_NO=B.INVOICE_NO=<INVOICE_NO>
getQueryVerifyinBuyDetail.Debug=N
//end update by lirui 2012-5-30  加入生产厂商字段  MAN_CODE

//药品验收入库统计(赠药汇总)
getQueryVerifyinGiftMaster.Type=TSQL
getQueryVerifyinGiftMaster.SQL=SELECT CASE WHEN (D.GOODS_DESC IS NULL) THEN D.ORDER_DESC  &
       			      ELSE D.ORDER_DESC || ' (' || D.GOODS_DESC || ')' END AS ORDER_DESC, &
       			      D.SPECIFICATION, E.UNIT_CHN_DESC, SUM(B.GIFT_QTY) AS QTY, B.VERIFYIN_PRICE, &
			      SUM(B.GIFT_QTY) * B.VERIFYIN_PRICE AS VER_AMT, &
			      D.OWN_PRICE * F.STOCK_QTY * F.DOSAGE_QTY AS OWN_PRICE, &
			      D.OWN_PRICE * F.STOCK_QTY * F.DOSAGE_QTY * SUM(B.GIFT_QTY) AS OWN_AMT, &
			      D.OWN_PRICE * F.STOCK_QTY * F.DOSAGE_QTY * SUM(B.GIFT_QTY) &
			      - SUM(B.GIFT_QTY) * B.VERIFYIN_PRICE AS DIFF_AMT &
  		         FROM IND_VERIFYINM A, IND_VERIFYIND B, SYS_SUPPLIER C, SYS_FEE D, SYS_UNIT E, PHA_TRANSUNIT F, PHA_BASE G &
 		         WHERE A.VERIFYIN_NO = B.VERIFYIN_NO &
   			   AND A.SUP_CODE = C.SUP_CODE &
   			   AND B.ORDER_CODE = D.ORDER_CODE &
   			   AND B.BILL_UNIT = E.UNIT_CODE &
   			   AND B.ORDER_CODE = F.ORDER_CODE &
   			   AND D.ORDER_CODE = F.ORDER_CODE &
   			   AND B.UPDATE_FLG IN ('1', '3') &
   			   AND B.ORDER_CODE = G.ORDER_CODE &
   			   AND D.ORDER_CODE = G.ORDER_CODE &
   			   AND F.ORDER_CODE = F.ORDER_CODE &
   			   AND A.ORG_CODE = <ORG_CODE> &
   			   AND A.CHECK_DATE BETWEEN  TO_DATE(<START_DATE>,'YYYY-MM-DD HH24:MI:SS') AND TO_DATE(<END_DATE>,'YYYY-MM-DD HH24:MI:SS')  &
   			   AND B.GIFT_QTY > 0 &
   			   GROUP BY D.GOODS_DESC, D.ORDER_DESC, D.SPECIFICATION, E.UNIT_CHN_DESC, &
   			   B.VERIFYIN_PRICE, D.OWN_PRICE , F.STOCK_QTY , F.DOSAGE_QTY, B.ORDER_CODE &
   			   ORDER BY B.ORDER_CODE
getQueryVerifyinGiftMaster.ITEM=SUP_CODE;TYPE_CODE;ORDER_CODE;VERIFYIN_NO;INVOICE_NO
getQueryVerifyinGiftMaster.SUP_CODE=A.SUP_CODE=<SUP_CODE>
getQueryVerifyinGiftMaster.TYPE_CODE=G.TYPE_CODE=<TYPE_CODE>
getQueryVerifyinGiftMaster.ORDER_CODE=B.ORDER_CODE=<ORDER_CODE>
getQueryVerifyinGiftMaster.VERIFYIN_NO=A.VERIFYIN_NO=<VERIFYIN_NO>
getQueryVerifyinGiftMaster.INVOICE_NO=B.INVOICE_NO=<INVOICE_NO>
getQueryVerifyinGiftMaster.Debug=N


//药品验收入库统计(赠药明细)
getQueryVerifyinGiftDetail.Type=TSQL
getQueryVerifyinGiftDetail.SQL=SELECT A.VERIFYIN_NO, C.SUP_ABS_DESC, A.CHECK_DATE AS VERIFYIN_DATE, &
       			      CASE WHEN (D.GOODS_DESC IS NULL) THEN D.ORDER_DESC  &
       			      ELSE D.ORDER_DESC || ' (' || D.GOODS_DESC || ')' END AS ORDER_DESC, &
       			      D.SPECIFICATION, E.UNIT_CHN_DESC, B.GIFT_QTY AS VERIFYIN_QTY, B.VERIFYIN_PRICE, &
			      B.GIFT_QTY * B.VERIFYIN_PRICE AS VER_AMT, &
			      D.OWN_PRICE * F.STOCK_QTY * F.DOSAGE_QTY AS OWN_PRICE, &
			      D.OWN_PRICE * F.STOCK_QTY * F.DOSAGE_QTY * B.GIFT_QTY AS OWN_AMT, &
			      D.OWN_PRICE * F.STOCK_QTY * F.DOSAGE_QTY * B.GIFT_QTY &
			      - B.GIFT_QTY * B.VERIFYIN_PRICE AS DIFF_AMT, &
       			      B.INVOICE_NO, B.INVOICE_DATE, B.BATCH_NO, B.VALID_DATE, &
       			      H.DOSE_CHN_DESC,I.ROUTE_CHN_DESC,J.FREQ_CHN_DESC,K.MAN_CHN_DESC  & 
  		         FROM IND_VERIFYINM A, IND_VERIFYIND B, SYS_SUPPLIER C, SYS_FEE D, SYS_UNIT E, PHA_TRANSUNIT F, PHA_BASE G, &
  		         PHA_DOSE H ,SYS_PHAROUTE I ,SYS_PHAFREQ J,SYS_MANUFACTURER K  &
 		         WHERE A.VERIFYIN_NO = B.VERIFYIN_NO &
   			   AND A.SUP_CODE = C.SUP_CODE &
   			   AND B.ORDER_CODE = D.ORDER_CODE &
   			   AND B.BILL_UNIT = E.UNIT_CODE &
   			   AND B.ORDER_CODE = F.ORDER_CODE &
   			   AND D.ORDER_CODE = F.ORDER_CODE &
   			   AND B.UPDATE_FLG IN ('1', '3') &
   			   AND B.GIFT_QTY > 0 &
   			   AND B.ORDER_CODE = G.ORDER_CODE &
   			   AND D.ORDER_CODE = G.ORDER_CODE &
   			   AND F.ORDER_CODE = F.ORDER_CODE &
   			   AND A.ORG_CODE = <ORG_CODE> &
   			   AND A.CHECK_DATE BETWEEN  TO_DATE(<START_DATE>,'YYYY-MM-DD HH24:MI:SS') AND TO_DATE(<END_DATE>,'YYYY-MM-DD HH24:MI:SS')  &
   			   AND G.DOSE_CODE=H.DOSE_CODE(+) &
   			   AND G.ROUTE_CODE=I.ROUTE_CODE(+) &
   			   AND G.FREQ_CODE=J.FREQ_CODE(+) & 
   			   AND D.MAN_CODE=K.MAN_CODE(+)  &
   			   ORDER BY A.VERIFYIN_NO
getQueryVerifyinGiftDetail.ITEM=SUP_CODE;TYPE_CODE;ORDER_CODE;VERIFYIN_NO;INVOICE_NO
getQueryVerifyinGiftDetail.SUP_CODE=A.SUP_CODE=<SUP_CODE>
getQueryVerifyinGiftDetail.TYPE_CODE=G.TYPE_CODE=<TYPE_CODE>
getQueryVerifyinGiftDetail.ORDER_CODE=B.ORDER_CODE=<ORDER_CODE>
getQueryVerifyinGiftDetail.VERIFYIN_NO=A.VERIFYIN_NO=<VERIFYIN_NO>
getQueryVerifyinGiftDetail.INVOICE_NO=B.INVOICE_NO=<INVOICE_NO>
getQueryVerifyinGiftDetail.Debug=N


