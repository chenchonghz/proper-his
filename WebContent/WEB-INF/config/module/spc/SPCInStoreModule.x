# 
#  Title:�龫ҩ�����ܹ�module
# 
#  Description:�龫ҩ�����ܹ�module
# 
#  Copyright: Copyright (c) Javahis 2008
# 
#  author fuwj 2012.10.23
#  version 1.0
#
Module.item=queryCabinet;queryInfo;queryOrg;getToxic;updateToxicm;updateToxicmAll;updateToxicd;updateContainerM;updateContainerD;getToxBox;insertLog;updateContainerDYF

queryCabinet.Type=TSQL
queryCabinet.SQL= SELECT A.CABINET_ID,A.CABINET_DESC,A.ORG_CODE,A.GUARD_IP,A.RFID_IP,B.ORG_CHN_DESC,A.ZKRFID_URL,A.MQ_DESC &
				FROM IND_CABINET A,IND_ORG B &
			WHERE CABINET_IP=<CABINET_IP> AND A.ORG_CODE=B.ORG_CODE
queryCabinet.Debug=N


queryInfo.Type=TSQL


queryInfo.SQL=SELECT A.BOX_ESL_ID,A.CONTAINER_DESC,B.ORDER_DESC,B.SPECIFICATION,A.DISPENSE_NO,A.DISPENSE_SEQ_NO,A.CONTAINER_ID, &
         (SELECT COUNT(*) FROM IND_TOXICD C WHERE C.DISPENSE_NO=A.DISPENSE_NO AND C.DISPENSE_SEQ_NO=A.DISPENSE_SEQ_NO AND C.CONTAINER_ID=A.CONTAINER_ID ) &
		 AS SJ_QTY &
         FROM IND_TOXICM A,PHA_BASE B WHERE A.IS_STORE=<IS_STORE> &
         AND A.ORDER_CODE=B.ORDER_CODE   

queryInfo.item=DISPENSE_NO;BOX_ESL_ID
queryInfo.DISPENSE_NO=A.DISPENSE_NO=<DISPENSE_NO>
queryInfo.BOX_ESL_ID=A.BOX_ESL_ID=<BOX_ESL_ID>
queryInfo.Debug=N 	


insertLog.Type=TSQL

insertLog.SQL= INSERT INTO IND_CABINET_LOG(CABINET_ID,LOG_TIME,TASK_TYPE,TASK_NO,EVENT_TYPE,GUARD_ID,OPT_USER,OPT_DATE,OPT_TERM) VALUES &
		(<CABINET_ID>,<LOG_TIME>,<TASK_TYPE>,<TASK_NO>,<EVENT_TYPE>,<GUARD_ID>,<OPT_USER>,<OPT_DATE>,<OPT_TERM>)

insertLog.Debug=N 


queryOrg.Type=TSQL
queryOrg.SQL= SELECT A.REQTYPE_CODE,B.ORG_CHN_DESC FROM IND_DISPENSEM A,IND_ORG B WHERE A.TO_ORG_CODE=B.ORG_CODE AND A.DISPENSE_NO=<DISPENSE_NO>
queryOrg.Debug=N



getToxic.Type=TSQL
getToxic.SQL={call GET_TOXIC_NO(?)}
getToxic.OutType=TOXIC_NO:VARCHAR
getToxic.Debug=N

getToxBox.Type=TSQL
getToxBox.SQL={call GET_TOXBOX_NO(?)}
getToxBox.OutType=TOXBOX_NO:VARCHAR
getToxBox.Debug=N

updateToxicm.Type=TSQL
updateToxicm.SQL= UPDATE IND_TOXICM SET IS_STORE=<IS_STORE>,CABINET_ID=<CABINET_ID> WHERE DISPENSE_NO=<DISPENSE_NO> AND CONTAINER_ID=<CONTAINER_ID>
updateToxicm.Debug=N


updateToxicmAll.Type=TSQL
updateToxicmAll.SQL= UPDATE IND_TOXICM SET IS_STORE=<IS_STORE> WHERE DISPENSE_NO=<DISPENSE_NO>
updateToxicmAll.Debug=N
	

updateToxicd.Type=TSQL

updateToxicd.SQL= UPDATE IND_TOXICD SET CABINET_ID=<CABINET_ID> WHERE DISPENSE_NO=<DISPENSE_NO> AND CONTAINER_ID=<CONTAINER_ID>

updateToxicd.Debug=N


updateContainerM.Type=TSQL

updateContainerM.SQL= UPDATE IND_CONTAINERM SET CABINET_ID=<CABINET_ID> WHERE CONTAINER_ID=<CONTAINER_ID>

updateContainerM.Debug=N


updateContainerD.Type=TSQL

updateContainerD.SQL= UPDATE IND_CONTAINERD SET CABINET_ID=<CABINET_ID> WHERE CONTAINER_ID=<CONTAINER_ID>

updateContainerD.Debug=N


updateContainerDYF.Type=TSQL

updateContainerDYF.SQL= UPDATE IND_CONTAINERD SET CABINET_ID=<CABINET_ID>,SUP_CODE=<SUP_CODE>,INVENT_PRICE=<INVENT_PRICE>,RETAIL_PRICE=<RETAIL_PRICE> WHERE CONTAINER_ID=<CONTAINER_ID>

updateContainerDYF.Debug=N
