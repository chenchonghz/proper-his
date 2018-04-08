Module.item=getNameForMrno;getEnNameForMrno;getSexForMrno;getIdnoForMrno;getInfoForMrno;insertInfo;updateInfo;deletePat;&
	deletePat$;getMrNoLength;getIpdNoLength;getMergeMrno;existsPat;lockPat;getLockPat;unLockPat;queryAdmPat;upDateForReg;getInfoForIdNo;updatePatBldType;modifyDateForReg

//���ݲ����Ų�ѯ����
getNameForMrno.Type=TSQL
getNameForMrno.SQL=SELECT PAT_NAME FROM SYS_PATINFO WHERE MR_NO=<MR_NO>

//���ݲ����Ų�ѯӢ������
getEnNameForMrno.Type=TSQL
getEnNameForMrno.SQL=SELECT PAT_NAME1 FROM SYS_PATINFO WHERE MR_NO=<MR_NO>

//���ݲ����Ų�ѯ�Ա�
getSexForMrno.Type=TSQL
getSexForMrno.SQL=SELECT SEX_CODE FROM SYS_PATINFO WHERE MR_NO=<MR_NO>

//���ݲ����Ų�ѯ����֤��
getIdnoForMrno.Type=TSQL
getIdnoForMrno.SQL=SELECT IDNO FROM SYS_PATINFO WHERE MR_NO=<MR_NO>

//���ݲ����Ų�ѯ������Ϣ
//====================pangben modify 20110808 ���� NHI_NO�����񿨺�==liling 20140708 add DEPT_FLG ����Ƿ��
//========huangtt modify 20131106  ID_TYPE��֤������  CURRENT_ADDRESS����סַ  REMARKS����ע
getInfoForMrno.Type=TSQL
getInfoForMrno.SQL=SELECT MR_NO,IPD_NO,DELETE_FLG,MERGE_FLG,MOTHER_MRNO,PAT_NAME,PAT_NAME1,PY1,PY2,FIRST_NAME,LAST_NAME,&
	FOREIGNER_FLG,IDNO,BIRTH_DATE,HOMEPLACE_CODE,CTZ1_CODE,CTZ2_CODE,CTZ3_CODE,TEL_COMPANY,TEL_HOME,CELL_PHONE,&
	COMPANY_DESC,E_MAIL,BLOOD_TYPE,BLOOD_RH_TYPE,SEX_CODE,DEAD_DATE,POST_CODE,ADDRESS,RESID_POST_CODE,&
	RESID_ADDRESS,CONTACTS_NAME,RELATION_CODE,CONTACTS_TEL,CONTACTS_ADDRESS,&
	MARRIAGE_CODE,SPOUSE_IDNO,FATHER_IDNO,MOTHER_IDNO,RELIGION_CODE,EDUCATION_CODE,OCC_CODE,NATION_CODE,SPECIES_CODE,&
	FIRST_ADM_DATE,RCNT_OPD_DATE,RCNT_OPD_DEPT,RCNT_IPD_DATE,RCNT_IPD_DEPT,RCNT_EMG_DATE,&
	RCNT_EMG_DEPT,RCNT_MISS_DATE,RCNT_MISS_DEPT,KID_EXAM_RCNT_DATE,KID_INJ_RCNT_DATE,&
	ADULT_EXAM_DATE,SMEAR_RCNT_DATE,HEIGHT,WEIGHT,DESCRIPTION,BORNIN_FLG,NEWBORN_SEQ,&
	PREMATURE_FLG,HANDICAP_FLG,BLACK_FLG,NAME_INVISIBLE_FLG,LAW_PROTECT_FLG,LMP_DATE,&
	PREGNANT_DATE,BREASTFEED_STARTDATE,BREASTFEED_ENDDATE,PAT1_CODE,PAT2_CODE,PAT3_CODE,NHI_NO,&
	ID_TYPE,REMARKS,CURRENT_ADDRESS,OLD_NAME, &
	BIRTHPLACE,ADDRESS_COMPANY,POST_COMPANY,NHICARD_NO,PAT_BELONG,SPECIAL_DIET,&
	//wanglong add 20140430 ��ȱ�ٵ��ֶμ��ϣ����ֺ����ݿ����ֶ�����һ��
	CCB_PERSON_NO,FAMILY_HISTORY,GESTATIONAL_WEEKS,HANDLE_FLG,MERGE_TOMRNO,NEW_BODY_WEIGHT,NEW_BODY_HEIGHT,BOOK_BUILD,DEPT_FLG,OPB_ARREAGRAGE, &
	PAST_HISTORY,OP_BLOOD_HISTORY &
	FROM SYS_PATINFO WHERE MR_NO=<MR_NO> AND DELETE_FLG='N'
getInfoForMrno.Debug=N

//��������֤�����ѯ������Ϣ סԺҽ���ʸ�ȷ���鿪������ʹ��
//====================pangben modify 20120127
//========huangtt modify 20131106  ID_TYPE��֤������  CURRENT_ADDRESS����סַ  REMARKS����ע
getInfoForIdNo.Type=TSQL
getInfoForIdNo.SQL=SELECT MR_NO,IPD_NO,DELETE_FLG,MERGE_FLG,MOTHER_MRNO,PAT_NAME,PAT_NAME1,PY1,PY2,&
	FOREIGNER_FLG,IDNO,BIRTH_DATE,HOMEPLACE_CODE,CTZ1_CODE,CTZ2_CODE,CTZ3_CODE,TEL_COMPANY,TEL_HOME,CELL_PHONE,&
	COMPANY_DESC,E_MAIL,BLOOD_TYPE,BLOOD_RH_TYPE,SEX_CODE,DEAD_DATE,POST_CODE,ADDRESS,RESID_POST_CODE,&
	RESID_ADDRESS,CONTACTS_NAME,RELATION_CODE,CONTACTS_TEL,CONTACTS_ADDRESS,&
	MARRIAGE_CODE,SPOUSE_IDNO,FATHER_IDNO,MOTHER_IDNO,RELIGION_CODE,EDUCATION_CODE,OCC_CODE,NATION_CODE,SPECIES_CODE,&
	FIRST_ADM_DATE,RCNT_OPD_DATE,RCNT_OPD_DEPT,RCNT_IPD_DATE,RCNT_IPD_DEPT,RCNT_EMG_DATE,&
	RCNT_EMG_DEPT,RCNT_MISS_DATE,RCNT_MISS_DEPT,KID_EXAM_RCNT_DATE,KID_INJ_RCNT_DATE,&
	ADULT_EXAM_DATE,SMEAR_RCNT_DATE,HEIGHT,WEIGHT,DESCRIPTION,BORNIN_FLG,NEWBORN_SEQ,&
	PREMATURE_FLG,HANDICAP_FLG,BLACK_FLG,NAME_INVISIBLE_FLG,LAW_PROTECT_FLG,LMP_DATE,&
	ID_TYPE,REMARKS,CURRENT_ADDRESS, &
	PREGNANT_DATE,BREASTFEED_STARTDATE,BREASTFEED_ENDDATE,PAT1_CODE,PAT2_CODE,PAT3_CODE,NHI_NO,NHICARD_NO,&
	//wanglong add 20140430 ��ȱ�ٵ��ֶμ��ϣ����ֺ����ݿ����ֶ�����һ��
	ADDRESS_COMPANY,BIRTHPLACE,CCB_PERSON_NO,FAMILY_HISTORY,FIRST_NAME,GESTATIONAL_WEEKS,&
	HANDLE_FLG,LAST_NAME,MERGE_TOMRNO,NEW_BODY_WEIGHT,NEW_BODY_HEIGHT,PAT_BELONG,POST_COMPANY,SPECIAL_DIET &
	FROM SYS_PATINFO WHERE IDNO=<IDNO> AND DELETE_FLG='N'
getInfoForIdNo.Debug=N

//����������ϢIDNO
//====================pangben modify 20110808 ���� NHI_NO�����񿨺�
//====================huangtt modity 20131106 ���� ID_TYPE��֤������  CURRENT_ADDRESS����סַ  REMARKS����ע
insertInfo.Type=TSQL
insertInfo.SQL=insert into SYS_PATINFO (MR_NO,IPD_NO,DELETE_FLG,MERGE_FLG,MOTHER_MRNO,PAT_NAME,&
	PAT_NAME1,PY1,PY2,FOREIGNER_FLG,ID_TYPE,IDNO,BIRTH_DATE,HOMEPLACE_CODE,CTZ1_CODE,CTZ2_CODE,CTZ3_CODE,TEL_COMPANY,TEL_HOME,&
	CELL_PHONE,COMPANY_DESC,E_MAIL,BLOOD_TYPE,BLOOD_RH_TYPE,SEX_CODE,DEAD_DATE,&
	POST_CODE,ADDRESS,CURRENT_ADDRESS,RESID_POST_CODE,&
	RESID_ADDRESS,CONTACTS_NAME,RELATION_CODE,CONTACTS_TEL,CONTACTS_ADDRESS,MARRIAGE_CODE,&
	SPOUSE_IDNO,FATHER_IDNO,MOTHER_IDNO,RELIGION_CODE,EDUCATION_CODE,OCC_CODE,NATION_CODE,SPECIES_CODE,FIRST_ADM_DATE,&
	RCNT_OPD_DATE,RCNT_OPD_DEPT,RCNT_IPD_DATE,RCNT_IPD_DEPT,RCNT_EMG_DATE,RCNT_EMG_DEPT,&
	RCNT_MISS_DATE,RCNT_MISS_DEPT,KID_EXAM_RCNT_DATE,KID_INJ_RCNT_DATE,ADULT_EXAM_DATE,&
	SMEAR_RCNT_DATE,HEIGHT,WEIGHT,DESCRIPTION,BORNIN_FLG,NEWBORN_SEQ,PREMATURE_FLG,HANDICAP_FLG,BLACK_FLG,NAME_INVISIBLE_FLG,&
	LAW_PROTECT_FLG,LMP_DATE,PREGNANT_DATE,BREASTFEED_STARTDATE,BREASTFEED_ENDDATE,PAT1_CODE,PAT2_CODE,&
	PAT3_CODE,OPT_USER,OPT_DATE,OPT_TERM,NHI_NO,BIRTHPLACE,ADDRESS_COMPANY,POST_COMPANY,NHICARD_NO,REMARKS,FIRST_NAME,LAST_NAME,SPECIAL_DIET,&
	//wanglong add 20140430 ��ȱ�ٵ��ֶμ��ϣ����ֺ����ݿ����ֶ�����һ��
	CCB_PERSON_NO,FAMILY_HISTORY,GESTATIONAL_WEEKS,HANDLE_FLG,MERGE_TOMRNO,NEW_BODY_WEIGHT,NEW_BODY_HEIGHT,PAT_BELONG &
	) VALUES (<MR_NO>,<IPD_NO>,'N','N',<MOTHER_MRNO>,<PAT_NAME>,&
	<PAT_NAME1>,<PY1>,<PY2>,<FOREIGNER_FLG>,<ID_TYPE>,<IDNO>,<BIRTH_DATE>,<HOMEPLACE_CODE>,<CTZ1_CODE>,<CTZ2_CODE>,<CTZ3_CODE>,<TEL_COMPANY>,<TEL_HOME>,&
	<CELL_PHONE>,<COMPANY_DESC>,<E_MAIL>,<BLOOD_TYPE>,<BLOOD_RH_TYPE>,<SEX_CODE>,<DEAD_DATE>,&
	<POST_CODE>,<ADDRESS>,<CURRENT_ADDRESS>,<RESID_POST_CODE>,&
	<RESID_ADDRESS>,<CONTACTS_NAME>,<RELATION_CODE>,<CONTACTS_TEL>,<CONTACTS_ADDRESS>,<MARRIAGE_CODE>,&
	<SPOUSE_IDNO>,<FATHER_IDNO>,<MOTHER_IDNO>,<RELIGION_CODE>,<EDUCATION_CODE>,<OCC_CODE>,<NATION_CODE>,<SPECIES_CODE>,<FIRST_ADM_DATE>,&
	<RCNT_OPD_DATE>,<RCNT_OPD_DEPT>,<RCNT_IPD_DATE>,<RCNT_IPD_DEPT>,<RCNT_EMG_DATE>,<RCNT_EMG_DEPT>,&
	<RCNT_MISS_DATE>,<RCNT_MISS_DEPT>,<KID_EXAM_RCNT_DATE>,<KID_INJ_RCNT_DATE>,<ADULT_EXAM_DATE>,&
	<SMEAR_RCNT_DATE>,<HEIGHT>,<WEIGHT>,<DESCRIPTION>,<BORNIN_FLG>,<NEWBORN_SEQ>,<PREMATURE_FLG>,<HANDICAP_FLG>,<BLACK_FLG>,<NAME_INVISIBLE_FLG>,&
	<LAW_PROTECT_FLG>,<LMP_DATE>,<PREGNANT_DATE>,<BREASTFEED_STARTDATE>,<BREASTFEED_ENDDATE>,<PAT1_CODE>,<PAT2_CODE>,<PAT3_CODE>,&
	<OPT_USER>,SYSDATE,<OPT_TERM>,<NHI_NO>,<BIRTHPLACE>,<ADDRESS_COMPANY>,<POST_COMPANY>,<NHICARD_NO>,<REMARKS>,<FIRST_NAME>,<LAST_NAME>,<SPECIAL_DIET>,&
	//wanglong add 20140430 ��ȱ�ٵ��ֶμ��ϣ����ֺ����ݿ����ֶ�����һ��
	<CCB_PERSON_NO>,<FAMILY_HISTORY>,<GESTATIONAL_WEEKS>,<HANDLE_FLG>,<MERGE_TOMRNO>,<NEW_BODY_WEIGHT>,<NEW_BODY_HEIGHT>,<PAT_BELONG>)
insertInfo.Debug=N

updateInfo.Type=TSQL
updateInfo.SQL=UPDATE SYS_PATINFO SET IPD_NO=<IPD_NO>,MERGE_FLG=<MERGE_FLG>,MERGE_TOMRNO=<MERGE_TOMRNO>,&
	MOTHER_MRNO=<MOTHER_MRNO>,PAT_NAME=<PAT_NAME>,PAT_NAME1=<PAT_NAME1>,PY1=<PY1>,PY2=<PY2>,&
	FOREIGNER_FLG=<FOREIGNER_FLG>,IDNO=<IDNO>,ID_TYPE=<ID_TYPE>,BIRTH_DATE=<BIRTH_DATE>,HOMEPLACE_CODE=<HOMEPLACE_CODE>,CTZ1_CODE=<CTZ1_CODE>,CTZ2_CODE=<CTZ2_CODE>,&
	CTZ3_CODE=<CTZ3_CODE>,TEL_COMPANY=<TEL_COMPANY>,TEL_HOME=<TEL_HOME>,CELL_PHONE=<CELL_PHONE>,COMPANY_DESC=<COMPANY_DESC>,&
	E_MAIL=<E_MAIL>,BLOOD_TYPE=<BLOOD_TYPE>,BLOOD_RH_TYPE=<BLOOD_RH_TYPE>,SEX_CODE=<SEX_CODE>,&
	DEAD_DATE=<DEAD_DATE>,POST_CODE=<POST_CODE>,ADDRESS=<ADDRESS>,CURRENT_ADDRESS=<CURRENT_ADDRESS>,RESID_POST_CODE=<RESID_POST_CODE>,RESID_ADDRESS=<RESID_ADDRESS>,&
	CONTACTS_NAME=<CONTACTS_NAME>,RELATION_CODE=<RELATION_CODE>,CONTACTS_TEL=<CONTACTS_TEL>,&
	CONTACTS_ADDRESS=<CONTACTS_ADDRESS>,MARRIAGE_CODE=<MARRIAGE_CODE>,SPOUSE_IDNO=<SPOUSE_IDNO>,FATHER_IDNO=<FATHER_IDNO>,&
	MOTHER_IDNO=<MOTHER_IDNO>,RELIGION_CODE=<RELIGION_CODE>,EDUCATION_CODE=<EDUCATION_CODE>,OCC_CODE=<OCC_CODE>,&
	NATION_CODE=<NATION_CODE>,SPECIES_CODE=<SPECIES_CODE>,FIRST_ADM_DATE=<FIRST_ADM_DATE>,RCNT_OPD_DATE=<RCNT_OPD_DATE>,&
	RCNT_OPD_DEPT=<RCNT_OPD_DEPT>,RCNT_IPD_DATE=<RCNT_IPD_DATE>,RCNT_IPD_DEPT=<RCNT_IPD_DEPT>,RCNT_EMG_DATE=<RCNT_EMG_DATE>,&
	RCNT_EMG_DEPT=<RCNT_EMG_DEPT>,RCNT_MISS_DATE=<RCNT_MISS_DATE>,RCNT_MISS_DEPT=<RCNT_MISS_DEPT>,&
	KID_EXAM_RCNT_DATE=<KID_EXAM_RCNT_DATE>,KID_INJ_RCNT_DATE=<KID_INJ_RCNT_DATE>,ADULT_EXAM_DATE=<ADULT_EXAM_DATE>,&
	SMEAR_RCNT_DATE=<SMEAR_RCNT_DATE>,HEIGHT=<HEIGHT>,WEIGHT=<WEIGHT>,DESCRIPTION=<DESCRIPTION>,BORNIN_FLG=<BORNIN_FLG>,&
	NEWBORN_SEQ=<NEWBORN_SEQ>,PREMATURE_FLG=<PREMATURE_FLG>,HANDICAP_FLG=<HANDICAP_FLG>,BLACK_FLG=<BLACK_FLG>,&
	NAME_INVISIBLE_FLG=<NAME_INVISIBLE_FLG>,LAW_PROTECT_FLG=<LAW_PROTECT_FLG>,LMP_DATE=<LMP_DATE>,&
	PREGNANT_DATE=<PREGNANT_DATE>,BREASTFEED_STARTDATE=<BREASTFEED_STARTDATE>,BREASTFEED_ENDDATE=<BREASTFEED_ENDDATE>,PAT1_CODE=<PAT1_CODE>,&
	PAT2_CODE=<PAT2_CODE>,PAT3_CODE=<PAT3_CODE>,OPT_USER=<OPT_USER>,OPT_DATE=SYSDATE,OPT_TERM=<OPT_TERM>,NHI_NO=<NHI_NO>,&
	BIRTHPLACE=<BIRTHPLACE>,ADDRESS_COMPANY=<ADDRESS_COMPANY>,POST_COMPANY=<POST_COMPANY>,NHICARD_NO=<NHICARD_NO>,PAT_BELONG=<PAT_BELONG>,SPECIAL_DIET=<SPECIAL_DIET>,&
        //wanglong add 20140430 ��ȱ�ٵ��ֶμ��ϣ����ֺ����ݿ����ֶ�����һ��
	CCB_PERSON_NO=<CCB_PERSON_NO>,FAMILY_HISTORY=<FAMILY_HISTORY>,FIRST_NAME=<FIRST_NAME>,GESTATIONAL_WEEKS=<GESTATIONAL_WEEKS>,HANDLE_FLG=<HANDLE_FLG>,LAST_NAME=<LAST_NAME>,NEW_BODY_WEIGHT=<NEW_BODY_WEIGHT>,NEW_BODY_HEIGHT=<NEW_BODY_HEIGHT>,REMARKS=<REMARKS> &
	//huangjunwen 20140523 ɾ��DELETE_FLG=<DELETE_FLG>
	WHERE MR_NO=<MR_NO>
updateInfo.Debug=N

//ɾ��������Ϣ
deletePat.Type=TSQL
deletePat.SQL=update SYS_PATINFO set DELETE_FLG='Y' where MR_NO=<MR_NO>

deletePat$.Type=TSQL
deletePat$.SQL=delete from SYS_PATINFO where MR_NO=<MR_NO>

//�õ������ų���
getMrNoLength.Type=TSQL
getMrNoLength.SQL=SELECT MRNO_LENGTH FROM MRO_SYSPARM 

//�õ������ų���
getIpdNoLength.Type=TSQL
getIpdNoLength.SQL=SELECT IPDNO_LENGTH FROM MRO_SYSPARM 

//�õ��ϲ��Ĳ�����
getMergeMrno.Type=TSQL
getMergeMrno.SQL=SELECT MERGE_TOMRNO FROM SYS_PATINFO WHERE MR_NO=<MR_NO> AND DELETE_FLG='N' AND MERGE_FLG='Y'

//�����Ƿ����
existsPat.Type=TSQL
existsPat.SQL=SELECT COUNT(MR_NO) AS COUNT FROM SYS_PATINFO WHERE MR_NO=<MR_NO> AND DELETE_FLG='N'

//��������
lockPat.Type=TSQL
lockPat.SQL=INSERT INTO SYS_LOCKPAT (MR_NO,OPT_TERM,OPT_USER,OPT_DATE,PRG_ID) VALUES (<MR_NO>,<TERM_IP>,<OPT_USER>,SYSDATE,<PRG_ID>)

//�õ�������Ϣ
getLockPat.Type=TSQL
getLockPat.SQL=SELECT OPT_USER,OPT_TERM,OPT_DATE,PRG_ID FROM SYS_LOCKPAT WHERE MR_NO=<MR_NO>

//��������
unLockPat.Type=TSQL
unLockPat.SQL=DELETE FROM SYS_LOCKPAT WHERE MR_NO=<MR_NO>

//ADM������ѯ JiaoY add
queryAdmPat.Type=TSQL
queryAdmPat.SQL=SELECT MR_NO,IPD_NO,PAT_NAME,IDNO,TEL_HOME,BIRTH_DATE &
		FROM SYS_PATINFO &
		ORDER BY MR_NO
queryAdmPat.item=MR_NO;IPD_NO;PAT_NAME;TEL_HOME;ID_NO;BIRTH_DATE
queryAdmPat.MR_NO=MR_NO LIKE <MR_NO>
queryAdmPat.IPD_NO=IPD_NO LIKE <IPD_NO>
queryAdmPat.PAT_NAME=PAT_NAME LIKE <PAT_NAME> OR LOWER (PY1)  LIKE <PAT_NAME>  OR  UPPER (PY1)  LIKE  <PAT_NAME>
queryAdmPat.TEL_HOME=TEL_HOME LIKE <TEL_HOME>
queryAdmPat.ID_NO=IDNO LIKE <ID_NO>
queryAdmPat.BIRTH_DATE=BIRTH_DATE=<BIRTH_DATE>
queryAdmPat.Debug=N

//���²�������(For REG)
//====================pangben modify 20110808 ���� NHI_NO�����񿨺�
//====================huangtt modity 20131106 ���� ID_TYPE��֤������  CURRENT_ADDRESS����סַ  REMARKS����ע
upDateForReg.Type=TSQL
upDateForReg.SQL=UPDATE SYS_PATINFO & 
		  SET PAT_NAME=<PAT_NAME>,PAT_NAME1=<PAT_NAME1>,PY1=<PY1>,ID_TYPE=<ID_TYPE>,IDNO=<IDNO>,BIRTH_DATE=<BIRTH_DATE>,&
		      SEX_CODE=<SEX_CODE>,CELL_PHONE=<CELL_PHONE>,POST_CODE=<POST_CODE>,ADDRESS=<ADDRESS>,CURRENT_ADDRESS=<CURRENT_ADDRESS>,RESID_ADDRESS=<RESID_ADDRESS>,&
		      CTZ1_CODE=<CTZ1_CODE>,CTZ2_CODE=<CTZ2_CODE>,CTZ3_CODE=<CTZ3_CODE>,NHI_NO=<NHI_NO>,REMARKS=<REMARKS>, &
		      NATION_CODE=<NATION_CODE>,SPECIES_CODE=<SPECIES_CODE>,MARRIAGE_CODE=<MARRIAGE_CODE>,FIRST_NAME=<FIRST_NAME>,LAST_NAME=<LAST_NAME>  &
		WHERE MR_NO=<MR_NO>
upDateForReg.Debug=N

//���²�������(For REG)//�ҺŽ���ʹ��modify by huangjw 20150720
modifyDateForReg.Type=TSQL
modifyDateForReg.SQL=UPDATE SYS_PATINFO & 
		  SET PAT_NAME1=<PAT_NAME1>,ID_TYPE=<ID_TYPE>,IDNO=<IDNO>,&
		      CELL_PHONE=<CELL_PHONE>,POST_CODE=<POST_CODE>,ADDRESS=<ADDRESS>,CURRENT_ADDRESS=<CURRENT_ADDRESS>,RESID_ADDRESS=<RESID_ADDRESS>,&
		      CTZ1_CODE=<CTZ1_CODE>,CTZ2_CODE=<CTZ2_CODE>,CTZ3_CODE=<CTZ3_CODE>,NHI_NO=<NHI_NO>,REMARKS=<REMARKS>, &
		      NATION_CODE=<NATION_CODE>,SPECIES_CODE=<SPECIES_CODE>,MARRIAGE_CODE=<MARRIAGE_CODE>,FIRST_NAME=<FIRST_NAME>,LAST_NAME=<LAST_NAME>  &
		WHERE MR_NO=<MR_NO>
modifyDateForReg.Debug=N

//���²���Ѫ��
updatePatBldType.Type=TSQL
updatePatBldType.SQL=UPDATE SYS_PATINFO & 
		  SET BLOOD_TYPE=<TEST_BLD>&
		WHERE MR_NO=<MR_NO>
updatePatBldType.Debug=N
