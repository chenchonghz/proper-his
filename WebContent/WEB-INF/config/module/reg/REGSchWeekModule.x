# 
#  Title:医师周班表module
# 
#  Description:医师周班表module
# 
#  Copyright: Copyright (c) Javahis 2008
# 
#  author wangl 2008.11.03
#  version 1.0
#
Module.item=selectdata;deletedata;insertdata;updatedata;existsSession;getRegionCombo;initclinicroomno;selDataNew

//查询区域,门急住别,星期,时段代码,号别,科别代码,看诊医师,诊间号,给号组别,中西医注记,己产生日期,临时诊否,停展起日,停展迄日,操作人员,操作日期,操作端末
selectdata.Type=TSQL
selectdata.SQL=SELECT REGION_CODE,ADM_TYPE,DAYOFWEEK,SESSION_CODE,CLINICTYPE_CODE,&
		      DEPT_CODE,DR_CODE,CLINICROOM_NO,QUEGROUP_CODE,WEST_MEDI_FLG,&
		      CREAT_DATE,CLINICTMP_FLG,EXP_DATE,EXP_DATE_E,OPT_USER,&
		      OPT_DATE,OPT_TERM,REG_SPECIAL_NUMBER &
		 FROM REG_SCHWEEK &
	     ORDER BY ADM_TYPE,DAYOFWEEK,SESSION_CODE,CLINICTYPE_CODE,DEPT_CODE
selectdata.item=REGION_CODE;ADM_TYPE;DAYOFWEEK;SESSION_CODE;CLINICROOM_NO;DEPT_CODE;DR_CODE;ADM_DATE
selectdata.REGION_CODE=REGION_CODE=<REGION_CODE>
selectdata.ADM_TYPE=ADM_TYPE=<ADM_TYPE>
selectdata.DAYOFWEEK=DAYOFWEEK=<DAYOFWEEK>
selectdata.SESSION_CODE=SESSION_CODE=<SESSION_CODE>
selectdata.CLINICROOM_NO=CLINICROOM_NO=<CLINICROOM_NO>
selectdata.DEPT_CODE=DEPT_CODE=<DEPT_CODE>
selectdata.DR_CODE=DR_CODE=<DR_CODE>
selectdata.ADM_DATE=(EXP_DATE IS NULL OR EXP_DATE_E IS NULL OR EXP_DATE > TO_DATE(<ADM_DATE>,'yyyyMMdd') OR EXP_DATE_E < TO_DATE(<ADM_DATE>,'yyyyMMdd'))
selectdata.Debug=N

//周转日查询(新)
selDataNew.Type=TSQL
selDataNew.SQL=SELECT REGION_CODE,ADM_TYPE,DAYOFWEEK,SESSION_CODE,CLINICTYPE_CODE,&
		      DEPT_CODE,DR_CODE,CLINICROOM_NO,QUEGROUP_CODE,WEST_MEDI_FLG,&
		      CREAT_DATE,CLINICTMP_FLG,EXP_DATE,EXP_DATE_E,OPT_USER,&
		      OPT_DATE,OPT_TERM &
		 FROM REG_SCHWEEK &
	     ORDER BY ADM_TYPE,DAYOFWEEK,SESSION_CODE,CLINICTYPE_CODE,DEPT_CODE
selDataNew.item=REGION_CODE;ADM_TYPE;DAYOFWEEK;SESSION_CODE;CLINICROOM_NO;DEPT_CODE;DR_CODE;ADM_DATE
selDataNew.REGION_CODE=REGION_CODE=<REGION_CODE>
selDataNew.ADM_TYPE=ADM_TYPE=<ADM_TYPE>
selDataNew.DAYOFWEEK=DAYOFWEEK=<DAYOFWEEK>
selDataNew.SESSION_CODE=SESSION_CODE=<SESSION_CODE>
selDataNew.CLINICROOM_NO=CLINICROOM_NO IN (<CLINICROOM_NO>)
selDataNew.DEPT_CODE=DEPT_CODE=<DEPT_CODE>
selDataNew.DR_CODE=DR_CODE=<DR_CODE>
selDataNew.ADM_DATE=(EXP_DATE IS NULL OR EXP_DATE_E IS NULL OR EXP_DATE > TO_DATE(<ADM_DATE>,'yyyyMMdd') OR EXP_DATE_E < TO_DATE(<ADM_DATE>,'yyyyMMdd'))
selDataNew.Debug=N

//删除区域,门急住别,星期,时段代码,诊间号,中西医注记,科别代码,看诊医师,号别,给号组别,己产生日期,停展起日,停展迄日,临时诊否,操作人员,操作日期,操作端末
deletedata.Type=TSQL
deletedata.SQL=DELETE FROM REG_SCHWEEK &
		WHERE REGION_CODE = <REGION_CODE> &
		  AND ADM_TYPE = <ADM_TYPE> &
		  AND DAYOFWEEK = <DAYOFWEEK> &
		  AND SESSION_CODE = <SESSION_CODE> &
		  AND CLINICROOM_NO = <CLINICROOM_NO>
deletedata.Debug=N

//新增区域,门急住别,星期,时段代码,诊间号,中西医注记,科别代码,看诊医师,号别,给号组别,己产生日期,停展起日,停展迄日,临时诊否,操作人员,操作日期,操作端末
insertdata.Type=TSQL
insertdata.SQL=INSERT INTO REG_SCHWEEK &
			   (REGION_CODE,ADM_TYPE,DAYOFWEEK,SESSION_CODE,CLINICTYPE_CODE,&
			   DEPT_CODE,DR_CODE,CLINICROOM_NO,QUEGROUP_CODE,WEST_MEDI_FLG,&
			   CREAT_DATE,CLINICTMP_FLG,EXP_DATE,EXP_DATE_E,OPT_USER,&
			   OPT_DATE,OPT_TERM,REG_SPECIAL_NUMBER) &
		    VALUES (<REGION_CODE>,<ADM_TYPE>,<DAYOFWEEK>,<SESSION_CODE>,<CLINICTYPE_CODE>,&
		    	   <DEPT_CODE>,<DR_CODE>,<CLINICROOM_NO>,<QUEGROUP_CODE>,<WEST_MEDI_FLG>,&
		    	   <CREAT_DATE>,<CLINICTMP_FLG>,<EXP_DATE>,<EXP_DATE_E>,<OPT_USER>,&
		    	   SYSDATE,<OPT_TERM>,<REG_SPECIAL_NUMBER>)
insertdata.Debug=N              

//更新区域,门急住别,星期,时段代码,诊间号,中西医注记,科别代码,看诊医师,号别,给号组别,己产生日期,停展起日,停展迄日,临时诊否,操作人员,操作日期,操作端末
updatedata.Type=TSQL
updatedata.SQL=UPDATE REG_SCHWEEK &
		  SET REGION_CODE=<REGION_CODE>,ADM_TYPE=<ADM_TYPE>,DAYOFWEEK=<DAYOFWEEK>,&
		      SESSION_CODE=<SESSION_CODE>,CLINICTYPE_CODE=<CLINICTYPE_CODE>,DEPT_CODE=<DEPT_CODE>,&
		      DR_CODE=<DR_CODE>,CLINICROOM_NO=<CLINICROOM_NO>,QUEGROUP_CODE=<QUEGROUP_CODE>,&
		      WEST_MEDI_FLG=<WEST_MEDI_FLG>,CREAT_DATE=<CREAT_DATE>,CLINICTMP_FLG=<CLINICTMP_FLG>,&
		      EXP_DATE=<EXP_DATE>,EXP_DATE_E=<EXP_DATE_E>,OPT_USER=<OPT_USER>,&
		      OPT_DATE=SYSDATE,OPT_TERM=<OPT_TERM>,REG_SPECIAL_NUMBER=<REG_SPECIAL_NUMBER> &
		WHERE REGION_CODE=<OLD_REGION_CODE> &
		  AND ADM_TYPE = <OLD_ADM_TYPE> &
		  AND DAYOFWEEK=<OLD_DAYOFWEEK> &
		  AND SESSION_CODE=<OLD_SESSION_CODE> &
		  AND CLINICROOM_NO=<OLD_CLINICROOM_NO>
updatedata.Debug=N

