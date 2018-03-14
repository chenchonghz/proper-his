Module.item=selectdata;deletedata;insertdata;updatedata;selectalldata

//根据 UNIT_CODE 查询
selectdata.Type=TSQL
selectdata.SQL=SELECT CHARGE_HOSP_CODE,CHARGE_HOSP_DESC,PY1,PY2,SEQ,DESCRIPTION,CHARGE_CODE,MRO_CHARGE_CODE,STA_CHARGE_CODE,OPT_USER,OPT_DATE,OPT_TERM FROM SYS_CHARGE_HOSP
selectdata.item=CHARGE_HOSP_CODE;CHARGE_HOSP_DESC;CHARGE_CODE;MRO_CHARGE_CODE;STA_CHARGE_CODE
selectdata.CHARGE_HOSP_CODE=CHARGE_HOSP_CODE=<CHARGE_HOSP_CODE>
selectdata.CHARGE_HOSP_DESC=CHARGE_HOSP_DESC=<CHARGE_HOSP_DESC>
selectdata.CHARGE_CODE=CHARGE_CODE=<CHARGE_CODE>
selectdata.MRO_CHARGE_CODE=MRO_CHARGE_CODE=<MRO_CHARGE_CODE>
selectdata.STA_CHARGE_CODE=STA_CHARGE_CODE=<STA_CHARGE_CODE>
selectdata.Debug=N

//查询全字段
selectalldata.Type=TSQL
selectalldata.SQL=SELECT CHARGE_HOSP_CODE,CHARGE_HOSP_DESC,PY1,PY2,SEQ,DESCRIPTION,CHARGE_CODE,MRO_CHARGE_CODE,STA_CHARGE_CODE,OPT_USER,OPT_DATE,OPT_TERM FROM SYS_CHARGE_HOSP
selectalldata.Debug=N

//根据 CHARGE_HOSP_CODE 删除
deletedata.Type=TSQL
deletedata.SQL=DELETE SYS_CHARGE_HOSP  WHERE CHARGE_HOSP_CODE = <CHARGE_HOSP_CODE> 
deletedata.Debug=N

//根据 SYS_CHARGE_HOSP 更新全字段
updatedata.Type=TSQL
updatedata.SQL=UPDATE SYS_CHARGE_HOSP SET CHARGE_HOSP_CODE=<CHARGE_HOSP_CODE>,CHARGE_HOSP_DESC=<CHARGE_HOSP_DESC>,PY1=<PY1>,PY2=<PY2>,SEQ=<SEQ>,DESCRIPTION=<DESCRIPTION>,CHARGE_CODE=<CHARGE_CODE>,MRO_CHARGE_CODE=<MRO_CHARGE_CODE>,STA_CHARGE_CODE=<STA_CHARGE_CODE>,OPT_USER=<OPT_USER>,OPT_DATE=SYSDATE,OPT_TERM=<OPT_TERM> WHERE CHARGE_HOSP_CODE=<CHARGE_HOSP_CODE> 
updatedata.Debug=N

// 插入全字段
insertdata.Type=TSQL
insertdata.SQL=INSERT INTO SYS_CHARGE_HOSP VALUES(<CHARGE_HOSP_CODE>,<CHARGE_HOSP_DESC>,<PY1>,<PY2>,<SEQ>,<DESCRIPTION>,<CHARGE_CODE>,<MRO_CHARGE_CODE>,<STA_CHARGE_CODE>,<OPT_USER>,SYSDATE,<OPT_TERM>)
insertdata.Debug=N