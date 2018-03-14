   #
   # Title: 灭菌失败模块
   #
   # Description: 灭菌失败模块
   #
   # Copyright: JavaHis (c) 2013
   #
   # @author sdr 2013/08/01

Module.item=insertRSInfo;queryPackMByBarcode;queryPackRByBarcode;queryRSInfo;updateRSInfo;deleteRSInfo;updatePackageStatus;queryRSCount


//插入灭菌失败登记表
insertRSInfo.Type=TSQL
insertRSInfo.SQL=INSERT INTO INV_RESTERILIZATION &
			( ID, BARCODE, PACK_CODE, PACK_SEQ_NO, RESTERILIZATION_REASON, RESTERILIZATION_DATE, & 
			  POT_SEQ, PROGRAM, OPERATIONSTAFF, REMARK, OPT_USER, OPT_DATE, OPT_TERM, ORG_CODE ) &
			VALUES &  
			( SYS_GUID(), <BARCODE>, <PACK_CODE>, <PACK_SEQ_NO>, <RESTERILIZATION_REASON>, TO_DATE(<RESTERILIZATION_DATE>,'yyyy/mm/dd hh24:mi:ss'), & 
			  <POT_SEQ>, <PROGRAM>, <OPERATIONSTAFF>, <REMARK>, <OPT_USER>,  TO_DATE(<OPT_DATE>,'yyyy/mm/dd hh24:mi:ss'), <OPT_TERM>, <ORG_CODE> )
insertRSInfo.Debug=N




//根据条码在手术包主表中查询手术包类型和序号
queryPackMByBarcode.Type=TSQL
queryPackMByBarcode.SQL=SELECT M.PACK_CODE, M.PACK_SEQ_NO FROM INV_PACKSTOCKM M WHERE M.BARCODE = <BARCODE>
queryPackMByBarcode.Debug=N


//根据条码在打包表中查询手术包类型和序号
queryPackRByBarcode.Type=TSQL
queryPackRByBarcode.SQL=SELECT R.PACK_CODE, R.PACK_SEQ_NO FROM INV_REPACK R WHERE R.OLDBARCODE = <BARCODE>
queryPackRByBarcode.Debug=N


//根据条件查询灭菌失败登记记录
queryRSInfo.Type=TSQL
queryRSInfo.SQL=SELECT B.ID, B.BARCODE, B.PACK_CODE, B.PACK_SEQ_NO, B.RESTERILIZATION_REASON, B.RESTERILIZATION_DATE, & 
                       B.POT_SEQ, B.PROGRAM, B.OPERATIONSTAFF, B.REMARK, B.OPT_USER, B.OPT_DATE, B.OPT_TERM, B.ORG_CODE, P.PACK_DESC AS PACK_CHN_DESC & 
		       FROM INV_RESTERILIZATION B LEFT JOIN INV_PACKM P ON B.PACK_CODE = P.PACK_CODE &
		       WHERE B.RESTERILIZATION_DATE BETWEEN TO_DATE(<RESTERILIZATION_DATE_BEGIN>,'yyyy/mm/dd hh24:mi:ss') AND TO_DATE(<RESTERILIZATION_DATE_END>,'yyyy/mm/dd hh24:mi:ss')
queryRSInfo.ITEM=BARCODE;PACK_CODE;ORG_CODE
queryRSInfo.BARCODE=B.BARCODE=<BARCODE>
queryRSInfo.PACK_CODE=B.PACK_CODE=<PACK_CODE>
queryRSInfo.ORG_CODE=B.ORG_CODE=<ORG_CODE>
queryRSInfo.Debug=N


//更新灭菌失败登记记录
updateRSInfo.Type=TSQL
updateRSInfo.SQL=UPDATE INV_RESTERILIZATION SET RESTERILIZATION_REASON=<RESTERILIZATION_REASON>,RESTERILIZATION_DATE=TO_DATE(<RESTERILIZATION_DATE>,'yyyy/mm/dd hh24:mi:ss'),ORG_CODE=<ORG_CODE>, &
		      POT_SEQ=<POT_SEQ>,PROGRAM=<PROGRAM>,OPERATIONSTAFF=<OPERATIONSTAFF>,REMARK=<REMARK> WHERE ID=<ID>
updateRSInfo.Debug=N



//删除
deleteRSInfo.Type=TSQL
deleteRSInfo.SQL=DELETE FROM INV_RESTERILIZATION WHERE ID=<ID>
deleteRSInfo.Debug=N


//更新手术包状态，更新为“灭菌”状态
updatePackageStatus.Type=TSQL
updatePackageStatus.SQL=UPDATE INV_PACKSTOCKM SET STATUS = '3' WHERE BARCODE=<BARCODE> 
updatePackageStatus.Debug=N

//查询手术包月灭菌量
queryRSCount.Type=TSQL
queryRSCount.SQL=SELECT COUNT(S.PACK_CODE) AS PCOUNT,S.PACK_CODE,P.PACK_DESC & 
			FROM INV_STERILIZATION S LEFT JOIN INV_PACKM P ON S.PACK_CODE = P.PACK_CODE & 
			WHERE S.FINISH_FLG = 'Y' AND S.STERILLZATION_DATE BETWEEN TO_DATE(<RESTERILIZATION_DATE_START>, 'yyyy/mm/dd hh24:mi:ss') AND  TO_DATE(<RESTERILIZATION_DATE_END>, 'yyyy/mm/dd hh24:mi:ss') &
			GROUP BY S.PACK_CODE,P.PACK_DESC
queryRSCount.ITEM=PACK_CODE
queryRSCount.PACK_CODE=S.PACK_CODE=<PACK_CODE>
queryRSCount.Debug=N




