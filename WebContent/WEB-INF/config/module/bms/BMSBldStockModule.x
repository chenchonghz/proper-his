   #
   # Title:ѪҺ���
   #
   # Description:ѪҺ���
   #
   # Copyright: JavaHis (c) 2009
   #
   # @author zhangy 2009/04/29

Module.item=insert;update;query;delete;updateOut

//����
insert.Type=TSQL
insert.SQL=INSERT INTO BMS_BLDSTOCK(BLD_CODE, BLD_SUBCAT, BLD_TYPE, SAFE_QTY, CURR_QTY, & 
				 ACC_QTY, SAFE_VOL, TOT_VOL, ACC_VOL, OPT_USER, OPT_DATE, OPT_TERM) &
			  VALUES(<BLD_CODE>, <BLD_SUBCAT>, <BLD_TYPE>, <SAFE_QTY>, <CURR_QTY>, & 
				 <ACC_QTY>, <SAFE_VOL>, <TOT_VOL>, <ACC_VOL>, <OPT_USER>, <OPT_DATE>, <OPT_TERM>)
insert.Debug=N

//����
update.Type=TSQL
update.SQL=UPDATE BMS_BLDSTOCK SET &
			SAFE_QTY=<SAFE_QTY>, CURR_QTY=<CURR_QTY>, ACC_QTY=<ACC_QTY>, SAFE_VOL=<SAFE_VOL>, &
			TOT_VOL=<TOT_VOL>, ACC_VOL=<ACC_VOL>, OPT_USER=<OPT_USER>, OPT_DATE=<OPT_DATE>, &
			OPT_TERM=<OPT_TERM> &
			WHERE BLD_CODE=<BLD_CODE> AND BLD_SUBCAT=<BLD_SUBCAT> AND BLD_TYPE=<BLD_TYPE> 
update.Debug=N

//��ѯ
query.Type=TSQL
query.SQL=SELECT BLD_CODE, BLD_SUBCAT, BLD_TYPE, SAFE_QTY, CURR_QTY, ACC_QTY, &
   		 SAFE_VOL, TOT_VOL, ACC_VOL &
   		 FROM BMS_BLDSTOCK
query.ITEM=BLD_CODE;BLD_SUBCAT;BLD_TYPE
query.BLD_CODE=BLD_CODE=<BLD_CODE>
query.BLD_SUBCAT=BLD_SUBCAT=<BLD_SUBCAT>
query.BLD_TYPE=BLD_TYPE=<BLD_TYPE>
query.Debug=N


//ɾ��
delete.Type=TSQL
delete.SQL=DELETE FROM BMS_BLDSTOCK WHERE BLD_CODE=<BLD_CODE> AND BLD_SUBCAT=<BLD_SUBCAT> AND BLD_TYPE=<BLD_TYPE> 
delete.Debug=N


//�������
updateOut.Type=TSQL
updateOut.SQL=UPDATE BMS_BLDSTOCK SET &
			CURR_QTY=CURR_QTY - 1, ACC_QTY=ACC_QTY - 1, &
			TOT_VOL=TOT_VOL - <BLD_VOL>, ACC_VOL=ACC_VOL - <BLD_VOL>, OPT_USER=<OPT_USER>, OPT_DATE=<OPT_DATE>, &
			OPT_TERM=<OPT_TERM> &
			WHERE BLD_CODE=<BLD_CODE> AND BLD_SUBCAT=<BLD_SUBCAT> AND BLD_TYPE=<BLD_TYPE> 
updateOut.Debug=N