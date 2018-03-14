   #
   # Title:ҩ��������
   #
   # Description:ҩ��������
   #
   # Copyright: JavaHis (c) 2009
   #
   # @author zhangy 2009/04/29

Module.item=queryStockM;createNewStockM;updateStockMBUQty;insert;update

//��ѯҩ��������
queryStockM.Type=TSQL
queryStockM.SQL=SELECT ORG_CODE , ORDER_CODE , REGION_CODE , DISPENSE_FLG , &
		  DISPENSE_ORG_CODE , QTY_TYPE , MM_USE_QTY , DD_USE_QTY , MATERIAL_LOC_CODE , &
		  MAX_QTY , SAFE_QTY ,MIN_QTY , ECONOMICBUY_QTY , BUY_UNRECEIVE_QTY , &
		  STANDING_QTY , ACTIVE_FLG ,OPT_USER , OPT_DATE , OPT_TERM &
		FROM IND_STOCKM &
		WHERE ACTIVE_FLG='N' &
		ORDER BY ORG_CODE , ORDER_CODE
queryStockM.ITEM=ORG_CODE;ORDER_CODE;MATERIAL_LOC_CODE
queryStockM.ORG_CODE=ORG_CODE=<ORG_CODE>
queryStockM.ORDER_CODE=ORDER_CODE=<ORDER_CODE>
queryStockM.MATERIAL_LOC_CODE=MATERIAL_LOC_CODE=<MATERIAL_LOC_CODE>
queryStockM.Debug=N


//�½�ҩ��������
createNewStockM.Type=TSQL
createNewStockM.SQL=INSERT INTO IND_STOCKM( &
			ORG_CODE , ORDER_CODE , REGION_CODE, ACTIVE_FLG ,OPT_USER , OPT_DATE , OPT_TERM , &
			MATERIAL_LOC_CODE, DISPENSE_FLG, DISPENSE_ORG_CODE, QTY_TYPE, MM_USE_QTY, &
			DD_USE_QTY, MAX_QTY, SAFE_QTY, MIN_QTY, ECONOMICBUY_QTY, &
			BUY_UNRECEIVE_QTY, STANDING_QTY) &
		   VALUES( &
		   	<ORG_CODE> , <ORDER_CODE> , <REGION_CODE>, 'N' ,<OPT_USER> , <OPT_DATE> , <OPT_TERM> , &
		        '', 'N', '', '', 0, &
		        0, 0, 0, 0, 0, &
			0, 0 )
createNewStockM.Debug=N

//������;��
updateStockMBUQty.Type=TSQL
updateStockMBUQty.SQL=UPDATE IND_STOCKM SET BUY_UNRECEIVE_QTY=BUY_UNRECEIVE_QTY+<BUY_UNRECEIVE_QTY> &
			WHERE ORG_CODE=<ORG_CODE> AND ORDER_CODE=<ORDER_CODE>
updateStockMBUQty.Debug=N


//�½�ҩ��������
insert.Type=TSQL
insert.SQL=INSERT INTO IND_STOCKM( &
			ORG_CODE , ORDER_CODE , REGION_CODE, ACTIVE_FLG ,OPT_USER , OPT_DATE , OPT_TERM , &
			MATERIAL_LOC_CODE, DISPENSE_FLG, DISPENSE_ORG_CODE, QTY_TYPE, MM_USE_QTY, &
			DD_USE_QTY, MAX_QTY, SAFE_QTY, MIN_QTY, ECONOMICBUY_QTY, &
			BUY_UNRECEIVE_QTY, STANDING_QTY ) &
	    	   VALUES( &
	    	   	<ORG_CODE> , <ORDER_CODE> , <REGION_CODE>, <ACTIVE_FLG> ,<OPT_USER> , <OPT_DATE> , <OPT_TERM> , &
			<MATERIAL_LOC_CODE>, <DISPENSE_FLG>, <DISPENSE_ORG_CODE>, <QTY_TYPE>, <MM_USE_QTY>, &
			<DD_USE_QTY>, <MAX_QTY>, <SAFE_QTY>, <MIN_QTY>, <ECONOMICBUY_QTY>, &
			<BUY_UNRECEIVE_QTY>, <STANDING_QTY> )
insert.Debug=N


//����ҩ��������
update.Type=TSQL
update.SQL=UPDATE IND_STOCKM SET REGION_CODE=<REGION_CODE>, ACTIVE_FLG=<ACTIVE_FLG>, MATERIAL_LOC_CODE=<MATERIAL_LOC_CODE>, &
                                 DISPENSE_FLG=<DISPENSE_FLG>, DISPENSE_ORG_CODE=<DISPENSE_ORG_CODE>, &
                                 QTY_TYPE=<QTY_TYPE>, MM_USE_QTY=<MM_USE_QTY>, DD_USE_QTY=<DD_USE_QTY>, &
                                 MAX_QTY=<MAX_QTY>, SAFE_QTY=<SAFE_QTY>, MIN_QTY=<MIN_QTY>, &
                                 ECONOMICBUY_QTY=<ECONOMICBUY_QTY>, BUY_UNRECEIVE_QTY=<BUY_UNRECEIVE_QTY>, &
                                 STANDING_QTY=<STANDING_QTY>, OPT_USER=<OPT_USER>, OPT_DATE=<OPT_DATE>, &
                                 OPT_TERM=<OPT_TERM> WHERE ORG_CODE=<ORG_CODE> AND ORDER_CODE=<ORDER_CODE>	
update.Debug=N
