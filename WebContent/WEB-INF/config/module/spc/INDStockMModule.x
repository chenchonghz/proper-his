   #
   # Title:ҩ��������
   #
   # Description:ҩ��������
   #
   # Copyright: JavaHis (c) 2009
   #
   # @author zhangy 2009/04/29

Module.item=queryStockM;queryStockMAll;createNewStockM;updateStockMBUQty;insert;update;updateAddLockQty;updateStockMBUAndLockQty;updateMinusLockQty;onInsertIndStockM;&
            querySPCStockM;createNewSPCStockM;updateStockMBUAndLockQtyAcnt;updateStockMBUQtyAcnt;updateMinusLockQtyAcnt;queryStockMAllAcnt

//��ѯҩ���������ų�����
queryStockM.Type=TSQL
queryStockM.SQL=SELECT ORG_CODE , ORDER_CODE , REGION_CODE , DISPENSE_FLG , &
		  DISPENSE_ORG_CODE , QTY_TYPE , MM_USE_QTY , DD_USE_QTY , MATERIAL_LOC_CODE , &
		  MAX_QTY , SAFE_QTY ,MIN_QTY , ECONOMICBUY_QTY , BUY_UNRECEIVE_QTY , &
		  STANDING_QTY , ACTIVE_FLG ,OPT_USER , OPT_DATE , OPT_TERM ,MATERIAL_LOC_SEQ,&
		  SUP_CODE,LOCK_QTY &
		FROM IND_STOCKM &
		WHERE ACTIVE_FLG='N' &
		ORDER BY ORG_CODE , ORDER_CODE
queryStockM.ITEM=ORG_CODE;ORDER_CODE;MATERIAL_LOC_CODE
queryStockM.ORG_CODE=ORG_CODE=<ORG_CODE>
queryStockM.ORDER_CODE=ORDER_CODE=<ORDER_CODE>
queryStockM.MATERIAL_LOC_CODE=MATERIAL_LOC_CODE=<MATERIAL_LOC_CODE>
queryStockM.Debug=N

//��ѯҩ���������ų����� wanglong add 20150202
querySPCStockM.Type=TSQL
querySPCStockM.SQL=SELECT ORG_CODE , ORDER_CODE , REGION_CODE , DISPENSE_FLG , &
          DISPENSE_ORG_CODE , QTY_TYPE , MM_USE_QTY , DD_USE_QTY , MATERIAL_LOC_CODE , &
          MAX_QTY , SAFE_QTY ,MIN_QTY , ECONOMICBUY_QTY , BUY_UNRECEIVE_QTY , &
          STANDING_QTY , ACTIVE_FLG ,OPT_USER , OPT_DATE , OPT_TERM ,MATERIAL_LOC_SEQ,&
          SUP_CODE,LOCK_QTY &
        FROM SPC_STOCKM &
        WHERE ACTIVE_FLG='N' &
        ORDER BY ORG_CODE , ORDER_CODE
querySPCStockM.ITEM=ORG_CODE;ORDER_CODE;MATERIAL_LOC_CODE
querySPCStockM.ORG_CODE=ORG_CODE=<ORG_CODE>
querySPCStockM.ORDER_CODE=ORDER_CODE=<ORDER_CODE>
querySPCStockM.MATERIAL_LOC_CODE=MATERIAL_LOC_CODE=<MATERIAL_LOC_CODE>
querySPCStockM.Debug=N

//��ѯҩ��������  ��������
queryStockMAll.Type=TSQL
queryStockMAll.SQL=SELECT ORG_CODE , ORDER_CODE , REGION_CODE , DISPENSE_FLG , &
		  DISPENSE_ORG_CODE , QTY_TYPE , MM_USE_QTY , DD_USE_QTY , MATERIAL_LOC_CODE , &
		  MAX_QTY , SAFE_QTY ,MIN_QTY , ECONOMICBUY_QTY , BUY_UNRECEIVE_QTY , &
		  STANDING_QTY , ACTIVE_FLG ,OPT_USER , OPT_DATE , OPT_TERM ,MATERIAL_LOC_SEQ,SUP_CODE &
		FROM IND_STOCKM &
		ORDER BY ORG_CODE , ORDER_CODE
queryStockMAll.ITEM=ORG_CODE;ORDER_CODE;MATERIAL_LOC_CODE
queryStockMAll.ORG_CODE=ORG_CODE=<ORG_CODE>
queryStockMAll.ORDER_CODE=ORDER_CODE=<ORDER_CODE>
queryStockMAll.MATERIAL_LOC_CODE=MATERIAL_LOC_CODE=<MATERIAL_LOC_CODE>
queryStockMAll.Debug=N


//��ѯҩ��������  �������� wanglong add 20150202
queryStockMAllAcnt.Type=TSQL
queryStockMAllAcnt.SQL=SELECT ORG_CODE , ORDER_CODE , REGION_CODE , DISPENSE_FLG , &
          DISPENSE_ORG_CODE , QTY_TYPE , MM_USE_QTY , DD_USE_QTY , MATERIAL_LOC_CODE , &
          MAX_QTY , SAFE_QTY ,MIN_QTY , ECONOMICBUY_QTY , BUY_UNRECEIVE_QTY , &
          STANDING_QTY , ACTIVE_FLG ,OPT_USER , OPT_DATE , OPT_TERM ,MATERIAL_LOC_SEQ,SUP_CODE &
        FROM IND_STOCKM &
        ORDER BY ORG_CODE , ORDER_CODE
queryStockMAllAcnt.ITEM=ORG_CODE;ORDER_CODE;MATERIAL_LOC_CODE
queryStockMAllAcnt.ORG_CODE=ORG_CODE=<ORG_CODE>
queryStockMAllAcnt.ORDER_CODE=ORDER_CODE=<ORDER_CODE>
queryStockMAllAcnt.MATERIAL_LOC_CODE=MATERIAL_LOC_CODE=<MATERIAL_LOC_CODE>
queryStockMAllAcnt.Debug=N

//�½�ҩ��������
createNewStockM.Type=TSQL
createNewStockM.SQL=INSERT INTO IND_STOCKM( &
			ORG_CODE , ORDER_CODE , REGION_CODE, ACTIVE_FLG ,OPT_USER , OPT_DATE , OPT_TERM , &
			MATERIAL_LOC_CODE, DISPENSE_FLG, DISPENSE_ORG_CODE, QTY_TYPE, MM_USE_QTY, &
			DD_USE_QTY, MAX_QTY, SAFE_QTY, MIN_QTY, ECONOMICBUY_QTY, &
			BUY_UNRECEIVE_QTY, STANDING_QTY,MATERIAL_LOC_DESC,ELETAG_CODE,MATERIAL_LOC_SEQ, &
			SUP_CODE,LOCK_QTY) &
		   VALUES( &
		   	<ORG_CODE> , <ORDER_CODE> , <REGION_CODE>, 'N' ,<OPT_USER> , <OPT_DATE> , <OPT_TERM> , &
		        <MATERIAL_LOC_CODE>, 'N', '', '', 0, &
		        0, 0, 0, 0, 0, &
			0, 0,<MATERIAL_LOC_DESC>,<ELETAG_CODE>,<MATERIAL_LOC_SEQ>, &
                        <SUP_CODE>,<LOCK_QTY> )
createNewStockM.Debug=N

//�½�ҩ�������� wanglong add 20150202
createNewSPCStockM.Type=TSQL
createNewSPCStockM.SQL=INSERT INTO SPC_STOCKM( &
            ORG_CODE , ORDER_CODE , REGION_CODE, ACTIVE_FLG ,OPT_USER , OPT_DATE , OPT_TERM , &
            MATERIAL_LOC_CODE, DISPENSE_FLG, DISPENSE_ORG_CODE, QTY_TYPE, MM_USE_QTY, &
            DD_USE_QTY, MAX_QTY, SAFE_QTY, MIN_QTY, ECONOMICBUY_QTY, &
            BUY_UNRECEIVE_QTY, STANDING_QTY,MATERIAL_LOC_DESC,ELETAG_CODE,MATERIAL_LOC_SEQ, &
            SUP_CODE,LOCK_QTY) &
           VALUES( &
            <ORG_CODE> , <ORDER_CODE> , <REGION_CODE>, 'N' ,<OPT_USER> , <OPT_DATE> , <OPT_TERM> , &
                <MATERIAL_LOC_CODE>, 'N', '', '', 0, &
                0, 0, 0, 0, 0, &
            0, 0,<MATERIAL_LOC_DESC>,<ELETAG_CODE>,<MATERIAL_LOC_SEQ>, &
                        <SUP_CODE>,<LOCK_QTY> )
createNewSPCStockM.Debug=N

//������;��
updateStockMBUQty.Type=TSQL
updateStockMBUQty.SQL=UPDATE IND_STOCKM SET BUY_UNRECEIVE_QTY=BUY_UNRECEIVE_QTY+<BUY_UNRECEIVE_QTY>  &
			WHERE ORG_CODE=<ORG_CODE> AND ORDER_CODE=<ORDER_CODE>
updateStockMBUQty.Debug=N

//������;�� wanglong add 20150202
updateStockMBUQtyAcnt.Type=TSQL
updateStockMBUQtyAcnt.SQL=UPDATE SPC_STOCKM SET BUY_UNRECEIVE_QTY=BUY_UNRECEIVE_QTY+<BUY_UNRECEIVE_QTY>  &
            WHERE ORG_CODE=<ORG_CODE> AND ORDER_CODE=<ORDER_CODE>
updateStockMBUQtyAcnt.Debug=N

//�½�ҩ��������
insert.Type=TSQL
insert.SQL=INSERT INTO IND_STOCKM( &
			ORG_CODE , ORDER_CODE , REGION_CODE, ACTIVE_FLG ,OPT_USER , OPT_DATE , OPT_TERM , &
			MATERIAL_LOC_CODE, DISPENSE_FLG, DISPENSE_ORG_CODE, QTY_TYPE, MM_USE_QTY, &
			DD_USE_QTY, MAX_QTY, SAFE_QTY, MIN_QTY, ECONOMICBUY_QTY, &
			BUY_UNRECEIVE_QTY, STANDING_QTY,MATERIAL_LOC_DESC,ELETAG_CODE,MATERIAL_LOC_SEQ,SUP_CODE,LOCK_QTY ) &
	    	   VALUES( &
	    	   	<ORG_CODE> , <ORDER_CODE> , <REGION_CODE>, <ACTIVE_FLG> ,<OPT_USER> , <OPT_DATE> , <OPT_TERM> , &
			<MATERIAL_LOC_CODE>, <DISPENSE_FLG>, <DISPENSE_ORG_CODE>, <QTY_TYPE>, <MM_USE_QTY>, &
			<DD_USE_QTY>, <MAX_QTY>, <SAFE_QTY>, <MIN_QTY>, <ECONOMICBUY_QTY>, &
			<BUY_UNRECEIVE_QTY>, <STANDING_QTY>,<MATERIAL_LOC_DESC>,<ELETAG_CODE>,<MATERIAL_LOC_SEQ>,&
                        <SUP_CODE>,<LOCK_QTY> )
insert.Debug=N


//����ҩ��������
update.Type=TSQL
update.SQL=UPDATE IND_STOCKM SET REGION_CODE=<REGION_CODE>, ACTIVE_FLG=<ACTIVE_FLG>, MATERIAL_LOC_CODE=<MATERIAL_LOC_CODE>, &
                                 DISPENSE_FLG=<DISPENSE_FLG>, DISPENSE_ORG_CODE=<DISPENSE_ORG_CODE>, &
                                 QTY_TYPE=<QTY_TYPE>, MM_USE_QTY=<MM_USE_QTY>, DD_USE_QTY=<DD_USE_QTY>, &
                                 MAX_QTY=<MAX_QTY>, SAFE_QTY=<SAFE_QTY>, MIN_QTY=<MIN_QTY>,MATERIAL_LOC_SEQ=<MATERIAL_LOC_SEQ>, &
                                 ECONOMICBUY_QTY=<ECONOMICBUY_QTY>, BUY_UNRECEIVE_QTY=<BUY_UNRECEIVE_QTY>,SUP_CODE=<SUP_CODE>, &
                                 STANDING_QTY=<STANDING_QTY>, OPT_USER=<OPT_USER>, OPT_DATE=<OPT_DATE>,ELETAG_CODE=<ELETAG_CODE>,MATERIAL_LOC_DESC=<MATERIAL_LOC_DESC>, &
                                 OPT_TERM=<OPT_TERM> WHERE ORG_CODE=<ORG_CODE> AND ORDER_CODE=<ORDER_CODE>	
update.Debug=N

//����LOCK_QTY
updateAddLockQty.Type=TSQL
updateAddLockQty.SQL=UPDATE IND_STOCKM SET LOCK_QTY=LOCK_QTY+<LOCK_QTY>  &
			WHERE ORG_CODE=<ORG_CODE> AND ORDER_CODE=<ORDER_CODE>
updateAddLockQty.Debug=N


//update 
updateStockMBUAndLockQty.Type=TSQL
updateStockMBUAndLockQty.SQL=UPDATE IND_STOCKM SET BUY_UNRECEIVE_QTY=BUY_UNRECEIVE_QTY+<BUY_UNRECEIVE_QTY> ,LOCK_QTY=LOCK_QTY+<LOCK_QTY> &
			WHERE ORG_CODE=<ORG_CODE> AND ORDER_CODE=<ORDER_CODE>
updateStockMBUAndLockQty.Debug=N

//update wanglong
updateStockMBUAndLockQtyAcnt.Type=TSQL
updateStockMBUAndLockQtyAcnt.SQL=UPDATE SPC_STOCKM SET BUY_UNRECEIVE_QTY=BUY_UNRECEIVE_QTY+<BUY_UNRECEIVE_QTY> ,LOCK_QTY=LOCK_QTY+<LOCK_QTY> &
            WHERE ORG_CODE=<ORG_CODE> AND ORDER_CODE=<ORDER_CODE>
updateStockMBUAndLockQtyAcnt.Debug=N

updateMinusLockQty.Type=TSQL
updateMinusLockQty.SQL=UPDATE IND_STOCKM SET LOCK_QTY=LOCK_QTY-<LOCK_QTY>  &
			WHERE ORG_CODE=<ORG_CODE> AND ORDER_CODE=<ORDER_CODE>
updateMinusLockQty.Debug=N

//wanglong add 20150202
updateMinusLockQtyAcnt.Type=TSQL
updateMinusLockQtyAcnt.SQL=UPDATE SPC_STOCKM SET LOCK_QTY=LOCK_QTY-<LOCK_QTY>  &
            WHERE ORG_CODE=<ORG_CODE> AND ORDER_CODE=<ORDER_CODE>
updateMinusLockQtyAcnt.Debug=N

//�½�ҩ��������
onInsertIndStockM.Type=TSQL
onInsertIndStockM.SQL=INSERT INTO IND_STOCKM( &
			ORG_CODE , ORDER_CODE , REGION_CODE, ACTIVE_FLG ,OPT_USER , OPT_DATE , OPT_TERM , &
			 DISPENSE_FLG,SUP_CODE,LOCK_QTY ) &
	    	   VALUES( &
	    	   	<ORG_CODE> , <ORDER_CODE> , <REGION_CODE>, <ACTIVE_FLG> ,<OPT_USER> , SYSDATE , <OPT_TERM> , &
			 <DISPENSE_FLG>, <SUP_CODE>,<LOCK_QTY> )
onInsertIndStockM.Debug=N