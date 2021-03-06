# 
#  Title: STA_IN_08手术医师工作量
# 
#  Description: STA_IN_08手术医师工作量
# 
#  Copyright: Copyright (c) Javahis 2008
# 
#  author zhangk 2009.06.24
#  version 1.0
#
Module.item=selectDATA_01;selectDATA_02;selectDATA_03;selectDATA_05;selectWJNum;selectDATA_07;selectDATA_08;selectDATA_09;selectDATA_10;selectDATA_11;selectDept;selectDr;selectDyByDept

//术者例数
//=============pangben modify 20110525 
selectDATA_01.Type=TSQL
selectDATA_01.SQL=SELECT COUNT(A.CASE_NO) AS NUM,A.MAIN_SUGEON AS DR_CODE &
			FROM MRO_RECORD_OP A ,SYS_OPERATOR B &
			WHERE A.MAIN_SUGEON=B.USER_ID AND A.OP_DATE BETWEEN TO_DATE(<DATE_S>,'YYYYMMDD') AND TO_DATE(<DATE_E>||'235959','YYYYMMDDHH24MISS') &
			AND  A.MAIN_FLG='Y' &
			GROUP BY A.MAIN_SUGEON
selectDATA_01.item=REGION_CODE
selectDATA_01.REGION_CODE=B.REGION_CODE=<REGION_CODE>
selectDATA_01.Debug=N

//一助例数
//=============pangben modify 20110525 
selectDATA_02.Type=TSQL
selectDATA_02.SQL=SELECT COUNT(A.CASE_NO) AS NUM,A.AST_DR1 AS DR_CODE &
			FROM MRO_RECORD_OP A ,SYS_OPERATOR B &
			WHERE A.MAIN_SUGEON=B.USER_ID AND A.OP_DATE BETWEEN TO_DATE(<DATE_S>,'YYYYMMDD') AND TO_DATE(<DATE_E>||'235959','YYYYMMDDHH24MISS') &
			AND  A.MAIN_FLG='Y' &
			GROUP BY A.AST_DR1
selectDATA_02.item=REGION_CODE
selectDATA_02.REGION_CODE=B.REGION_CODE=<REGION_CODE>
selectDATA_02.Debug=N

//I 类切口，甲级愈合例数
//=============pangben modify 20110525 
selectDATA_03.Type=TSQL
selectDATA_03.SQL=SELECT COUNT(A.CASE_NO) AS NUM,A.MAIN_SUGEON AS DR_CODE &
			FROM MRO_RECORD_OP A ,SYS_OPERATOR B &
			WHERE A.MAIN_SUGEON=B.USER_ID AND A.OP_DATE BETWEEN TO_DATE(<DATE_S>,'YYYYMMDD') AND TO_DATE(<DATE_E>||'235959','YYYYMMDDHH24MISS') &
			AND  A.MAIN_FLG='Y' &
			AND A.HEALTH_LEVEL = '11' &
			GROUP BY A.MAIN_SUGEON
selectDATA_03.item=REGION_CODE
selectDATA_03.REGION_CODE=B.REGION_CODE=<REGION_CODE>
selectDATA_03.Debug=N

//I 类切口感染例数
//=============pangben modify 20110525 
selectDATA_05.Type=TSQL
selectDATA_05.SQL=SELECT COUNT(A.CASE_NO) AS NUM,A.MAIN_SUGEON AS DR_CODE &
			FROM MRO_RECORD_OP A ,SYS_OPERATOR B &
			WHERE A.MAIN_SUGEON=B.USER_ID AND A.OP_DATE BETWEEN TO_DATE(<DATE_S>,'YYYYMMDD') AND TO_DATE(<DATE_E>||'235959','YYYYMMDDHH24MISS') &
			AND  A.MAIN_FLG='Y' &
			AND A.HEALTH_LEVEL = '13' &
			GROUP BY A.MAIN_SUGEON
selectDATA_05.item=REGION_CODE
selectDATA_05.REGION_CODE=B.REGION_CODE=<REGION_CODE>
selectDATA_05.Debug=N

//无菌切口手术例数
//=============pangben modify 20110525 
selectWJNum.Type=TSQL
selectWJNum.SQL=SELECT COUNT(A.CASE_NO) AS NUM,A.MAIN_SUGEON AS DR_CODE &
		FROM MRO_RECORD_OP A ,SYS_OPERATOR B &
		WHERE A.MAIN_SUGEON=B.USER_ID AND A.OP_DATE BETWEEN TO_DATE(<DATE_S>,'YYYYMMDD') AND TO_DATE(<DATE_E>||'235959','YYYYMMDDHH24MISS') &
		AND  A.MAIN_FLG='Y' &
		AND A.HEALTH_LEVEL IN ('11','12','13') &
		GROUP BY A.MAIN_SUGEON
selectWJNum.item=REGION_CODE
selectWJNum.REGION_CODE=B.REGION_CODE=<REGION_CODE>
selectWJNum.Debug=N

//平均住院天数
//=============pangben modify 20110525 
selectDATA_07.Type=TSQL
selectDATA_07.SQL=SELECT TRUNC(AVG(B.OUT_DATE - B.IN_DATE)) AS NUM,A.MAIN_SUGEON AS DR_CODE &
			FROM MRO_RECORD_OP A,MRO_RECORD B,SYS_OPERATOR C &
			WHERE A.MR_NO = B.MR_NO &
			AND A.CASE_NO=B.CASE_NO &
			AND A.MAIN_SUGEON=C.USER_ID &
			AND  A.MAIN_FLG='Y' &
			AND A.OP_DATE BETWEEN TO_DATE(<DATE_S>,'YYYYMMDD') AND TO_DATE(<DATE_E>||'235959','YYYYMMDDHH24MISS') &
			GROUP BY A.MAIN_SUGEON
selectDATA_07.item=REGION_CODE
selectDATA_07.REGION_CODE=C.REGION_CODE=<REGION_CODE>
selectDATA_07.Debug=N

//术前平均住院天数
//=============pangben modify 20110525 
selectDATA_08.Type=TSQL
selectDATA_08.SQL=SELECT TRUNC(AVG(A.OP_DATE - B.IN_DATE)) AS NUM,A.MAIN_SUGEON AS DR_CODE &
			FROM MRO_RECORD_OP A,MRO_RECORD B,SYS_OPERATOR C &
			WHERE A.MR_NO = B.MR_NO &
			AND A.CASE_NO=B.CASE_NO &
			AND A.MAIN_SUGEON=C.USER_ID &
			AND  A.MAIN_FLG='Y' &
			AND A.OP_DATE BETWEEN TO_DATE(<DATE_S>,'YYYYMMDD') AND TO_DATE(<DATE_E>||'235959','YYYYMMDDHH24MISS') &
			GROUP BY A.MAIN_SUGEON
selectDATA_08.item=REGION_CODE
selectDATA_08.REGION_CODE=C.REGION_CODE=<REGION_CODE>
selectDATA_08.Debug=N

//术后平均住院天数
//=============pangben modify 20110525 
selectDATA_09.Type=TSQL
selectDATA_09.SQL=SELECT TRUNC(AVG(B.OUT_DATE - A.OP_DATE)) AS NUM,A.MAIN_SUGEON AS DR_CODE &
			FROM MRO_RECORD_OP A,MRO_RECORD B,SYS_OPERATOR C &
			WHERE A.MR_NO = B.MR_NO &
			AND A.CASE_NO=B.CASE_NO &
			AND A.MAIN_SUGEON=C.USER_ID &
			AND A.MAIN_FLG='Y' &
			AND A.OP_DATE BETWEEN TO_DATE(<DATE_S>,'YYYYMMDD') AND TO_DATE(<DATE_E>||'235959','YYYYMMDDHH24MISS') &
			GROUP BY A.MAIN_SUGEON
selectDATA_09.item=REGION_CODE
selectDATA_09.REGION_CODE=C.REGION_CODE=<REGION_CODE>
selectDATA_09.Debug=N

//术后10日死亡例数
//=============pangben modify 20110525 
selectDATA_10.Type=TSQL
selectDATA_10.SQL=SELECT COUNT(A.CASE_NO) AS NUM,A.MAIN_SUGEON AS DR_CODE &
			FROM MRO_RECORD_OP A,MRO_RECORD B,SYS_OPERATOR C &
			WHERE A.MR_NO = B.MR_NO &
			AND A.CASE_NO=B.CASE_NO &
			AND A.MAIN_SUGEON=C.USER_ID &
			AND A.OP_DATE BETWEEN TO_DATE(<DATE_S>,'YYYYMMDD') AND TO_DATE(<DATE_E>||'235959','YYYYMMDDHH24MISS') &
			AND CODE1_STATUS ='4' &
			AND  A.MAIN_FLG='Y' &
			AND OUT_DATE- A.OP_DATE <10 &
			GROUP BY A.MAIN_SUGEON
selectDATA_10.item=REGION_CODE
selectDATA_10.REGION_CODE=C.REGION_CODE=<REGION_CODE>
selectDATA_10.Debug=N

//平均总费用
//=============pangben modify 20110525 
selectDATA_11.Type=TSQL
selectDATA_11.SQL=SELECT A.IPD_CHARGE_CODE,SUM (NVL (B.TOT_AMT, 0)) TOT_AMT,SUM (NVL (B.OWN_AMT, 0)) OWN_AMT  &
                  FROM SYS_CHARGE_HOSP A,  &
                 (SELECT   D.HEXP_CODE,SUM (D.TOT_AMT) TOT_AMT, SUM (D.OWN_AMT) OWN_AMT   &
                   FROM MRO_RECORD_OP C,IBS_ORDD D  &
                   WHERE C.CASE_NO = D.CASE_NO  &
		   AND C.MAIN_SUGEON=<DR_CODE> &
                   AND C.MAIN_FLG='Y'  &
                   AND C.OP_DATE BETWEEN TO_DATE(<DATE_S>,'YYYYMMDD') AND TO_DATE(<DATE_E>||'235959','YYYYMMDDHH24MISS')  &
                   GROUP BY D.HEXP_CODE) B  &
            WHERE A.CHARGE_HOSP_CODE = B.HEXP_CODE(+)  &      
              GROUP BY A.IPD_CHARGE_CODE &
            ORDER BY A.IPD_CHARGE_CODE
selectDATA_11.Debug=N

//查询科室 目前查询的是 临床和医技科室
//=============pangben modify 20110525 
selectDept.Type=TSQL
selectDept.SQL=SELECT  DEPT_CODE,DEPT_DESC FROM SYS_DEPT WHERE CLASSIFY in ('0','1') ORDER BY DEPT_CODE
selectDept.item=REGION_CODE
selectDept.REGION_CODE=REGION_CODE=<REGION_CODE>
selectDept.Debug=N

//查询所有 门、急、住医师  用于绑定Combo
//==============pangben modify 20110525 添加区域参数
selectDr.Type=TSQL
selectDr.SQL=SELECT A.USER_NAME,A.USER_ID,A.PY1 &
		FROM SYS_OPERATOR a,SYS_POSITION b  &
		WHERE A.ROLE_ID IN ('ODO','ODI','OIDR') &
		AND a.POS_CODE = b.POS_CODE &
		AND B.POS_CODE IN ('231','232','233','234','235','236') &
		AND A.END_DATE >SYSDATE &
		AND A.ACTIVE_DATE < SYSDATE 
selectDr.item=REGION_CODE
selectDr.REGION_CODE=A.REGION_CODE=<REGION_CODE>
selectDr.Debug=N

//根据本门查询医师
selectDyByDept.Type=TSQL
selectDyByDept.SQL=SELECT A.USER_NAME,A.USER_ID,A.PY1,B.DEPT_CODE &
			FROM SYS_OPERATOR A,SYS_OPERATOR_DEPT B,SYS_POSITION C &
			WHERE A.USER_ID=B.USER_ID &
			AND A.ROLE_ID IN ('ODO','ODI','OIDR') &
			AND A.POS_CODE = C.POS_CODE &
			AND C.POS_CODE IN ('231','232','233','234','235','236') &
			AND B.MAIN_FLG='Y' &
			AND B.DEPT_CODE = <DEPT_CODE>
selectDyByDept.item=REGION_CODE
selectDyByDept.REGION_CODE=A.REGION_CODE=<REGION_CODE>
selectDyByDept.Debug=N