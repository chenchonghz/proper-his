Module.item=selectall;updatadata;
//根据 ADM_TYPE,CHARGE 查询全字段
selectall.Type=TSQL
selectall.SQL=SELECT * FROM BIL_RECPPARM 
selectall.Debug=N

//更新数据库
updatadata.Type=TSQL
updatadata.SQL=UPDATE BIL_RECPPARM SET ADM_TYPE=<ADM_TYPE>,RECPIPT_TYPE=<RECPIPT_TYPE>,CHARGE01=<CHARGE01>,CHARGE02=<CHARGE02>,CHARGE03=<CHARGE03>,CHARGE04=<CHARGE04>,CHARGE05=<CHARGE05>,CHARGE06=<CHARGE06>,CHARGE07=<CHARGE07>,CHARGE08=<CHARGE08>,CHARGE09=<CHARGE09>,CHARGE10=<CHARGE10>,CHARGE11=<CHARGE11>,CHARGE12=<CHARGE12>,CHARGE13=<CHARGE13>,CHARGE14=<CHARGE14>,CHARGE15=<CHARGE15>,CHARGE16=<CHARGE16>,CHARGE17=<CHARGE17>,CHARGE18=<CHARGE18>,CHARGE19=<CHARGE19>,CHARGE20=<CHARGE20>,CHARGE21=<CHARGE21>,CHARGE22=<CHARGE22>,CHARGE23=<CHARGE23>,CHARGE24=<CHARGE24>,CHARGE25=<CHARGE25>,CHARGE26=<CHARGE26>,CHARGE27=<CHARGE27>,CHARGE28=<CHARGE28>,CHARGE29=<CHARGE29>,CHARGE30=<CHARGE30>,OPT_USER=<OPT_USER>,OPT_TERM=<OPT_TERM> WHERE ADM_TYPE=<ADM_TYPE>
updatadata.Debug=N


