## TBuilder Config File ## Title:血品出库## Company:JavaHis## Author:zhangy 2009.09.28## version 1.0#<Type=TFrame>UI.Title=血品出库UI.MenuConfig=%ROOT%\config\bms\BMSBloodOutMenu.xUI.Width=1024UI.Height=748UI.toolbar=YUI.controlclassname=com.javahis.ui.bms.BMSBloodOutControlUI.item=tPanel_10;tPanel_2;tPanel_4;tPanel_5;TABLE_DUI.layout=nullUI.Name=血品出库UI.Text=血品出库UI.Tip=血品出库UI.TopMenu=YUI.TopToolBar=YtPanel_5.Type=TPaneltPanel_5.X=409tPanel_5.Y=147tPanel_5.Width=610tPanel_5.Height=44tPanel_5.Border=组tPanel_5.AutoWidth=YtPanel_5.Item=tLabel_4;DEPT_CODE;tLabel_6;tLabel_7;STATION_CODE;BED_NOBED_NO.Type=床位下拉区域BED_NO.X=478BED_NO.Y=11BED_NO.Width=120BED_NO.Height=23BED_NO.Text=BED_NO.HorizontalAlignment=2BED_NO.PopupMenuHeader=代码,100;名称,100BED_NO.PopupMenuWidth=300BED_NO.PopupMenuHeight=300BED_NO.PopupMenuFilter=ID,1;NAME,1;PY1,1BED_NO.FormatType=comboBED_NO.ShowDownButton=YBED_NO.Tip=床位BED_NO.ShowColumnList=NAMEBED_NO.Enabled=NSTATION_CODE.Type=病区STATION_CODE.X=282STATION_CODE.Y=11STATION_CODE.Width=150STATION_CODE.Height=23STATION_CODE.Text=STATION_CODE.HorizontalAlignment=2STATION_CODE.PopupMenuHeader=代码,100;名称,100STATION_CODE.PopupMenuWidth=300STATION_CODE.PopupMenuHeight=300STATION_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1STATION_CODE.FormatType=comboSTATION_CODE.ShowDownButton=YSTATION_CODE.Tip=病区STATION_CODE.ShowColumnList=NAMESTATION_CODE.Enabled=NtLabel_7.Type=TLabeltLabel_7.X=443tLabel_7.Y=15tLabel_7.Width=36tLabel_7.Height=15tLabel_7.Text=床位tLabel_6.Type=TLabeltLabel_6.X=242tLabel_6.Y=15tLabel_6.Width=40tLabel_6.Height=15tLabel_6.Text=病区DEPT_CODE.Type=科室下拉列表DEPT_CODE.X=85DEPT_CODE.Y=11DEPT_CODE.Width=140DEPT_CODE.Height=23DEPT_CODE.Text=TButtonDEPT_CODE.showID=YDEPT_CODE.showName=YDEPT_CODE.showText=NDEPT_CODE.showValue=NDEPT_CODE.showPy1=NDEPT_CODE.showPy2=NDEPT_CODE.Editable=YDEPT_CODE.Tip=科室DEPT_CODE.TableShowList=nameDEPT_CODE.Classify=0DEPT_CODE.FinalFlg=YDEPT_CODE.Enabled=NtLabel_4.Type=TLabeltLabel_4.X=13tLabel_4.Y=15tLabel_4.Width=72tLabel_4.Height=15tLabel_4.Text=用血科室tPanel_4.Type=TPaneltPanel_4.X=5tPanel_4.Y=292tPanel_4.Width=1014tPanel_4.Height=451tPanel_4.Border=组tPanel_4.AutoX=YtPanel_4.AutoWidth=YtPanel_4.AutoHeight=YtPanel_4.Item=tPanel_6;TABLE_MTABLE_M.Type=TTableTABLE_M.X=158TABLE_M.Y=52TABLE_M.Width=998TABLE_M.Height=393TABLE_M.SpacingRow=1TABLE_M.RowHeight=20TABLE_M.AutoX=YTABLE_M.AutoY=NTABLE_M.AutoWidth=YTABLE_M.AutoHeight=YTABLE_M.AutoSize=0TABLE_M.Header=选,30,boolean;院外条形码,120;院内条形码,90;血液,110,BLD_CODE;血液规格,140,SUBCAT_CODE;数量,80;血型,40,BLD_TYPE;RH血型,60;抗体,40;主侧,100,CROSS_MATCH_L;次侧,100,CROSS_MATCH_S;Anti-A,60;Anti-B,60;配血结果,80,RESULT;检验日期,180,timestamp,yyyy/MM/dd HH:mm:ss;检验人员,90,USER;复核日期,180,timestamp,yyyy/MM/dd HH:mm:ss;复核人员,90,USERTABLE_M.ParmMap=SELECT_FLG;ORG_BARCODE;BLOOD_NO;BLD_CODE;SUBCAT_CODE;BLOOD_VOL;BLD_TYPE;RH_FLG;SHIT_FLG;CROSS_MATCH_L;CROSS_MATCH_S;ANTI_A;ANTI_B;RESULT;TEST_DATE;TEST_USER;RECHECK_TIME;RECHECK_USERTABLE_M.Item=BLD_TYPE;BLD_CODE;SUBCAT_CODE;CROSS_MATCH_S;CROSS_MATCH_L;RESULT;USERTABLE_M.ColumnHorizontalAlignmentData=1,left;2,left;3,left;4,left;5,left;6,left;7,left;8,left;9,left;10,left;11,left;12,left;13,left;14,left;15,left;16,left;17,leftTABLE_M.LockColumns=0,1,2,3,4,5,6,7,8,9,10,11,12,13TABLE_M.ClickedAction=tPanel_6.Type=TPaneltPanel_6.X=11tPanel_6.Y=11tPanel_6.Width=992tPanel_6.Height=36tPanel_6.AutoX=YtPanel_6.AutoY=YtPanel_6.AutoWidth=YtPanel_6.Border=组tPanel_6.Item=SELECT_ALL;CROSS_MATCH_S;CROSS_MATCH_L;RESULTRESULT.Type=TComboBoxRESULT.X=497RESULT.Y=43RESULT.Width=81RESULT.Height=23RESULT.Text=TButtonRESULT.showID=YRESULT.Editable=YRESULT.StringData=[[id,name],[,],[1,相合],[2,相斥]]RESULT.ShowText=NRESULT.ShowName=YRESULT.TableShowList=nameCROSS_MATCH_L.Type=TComboBoxCROSS_MATCH_L.X=402CROSS_MATCH_L.Y=43CROSS_MATCH_L.Width=81CROSS_MATCH_L.Height=23CROSS_MATCH_L.Text=TButtonCROSS_MATCH_L.showID=YCROSS_MATCH_L.Editable=YCROSS_MATCH_L.StringData=[[id,name],[,],[0,无凝集无溶血],[1,有凝集无溶血],[2,无凝集有溶血],[3,有凝集有溶血]]CROSS_MATCH_L.ShowText=NCROSS_MATCH_L.ShowName=YCROSS_MATCH_L.TableShowList=nameCROSS_MATCH_S.Type=TComboBoxCROSS_MATCH_S.X=310CROSS_MATCH_S.Y=42CROSS_MATCH_S.Width=81CROSS_MATCH_S.Height=23CROSS_MATCH_S.Text=TButtonCROSS_MATCH_S.showID=YCROSS_MATCH_S.Editable=YCROSS_MATCH_S.ShowText=NCROSS_MATCH_S.ShowName=YCROSS_MATCH_S.TableShowList=nameCROSS_MATCH_S.StringData=[[id,name],[,],[0,无凝集无溶血],[1,有凝集无溶血],[2,无凝集有溶血],[3,有凝集有溶血]]SELECT_ALL.Type=TCheckBoxSELECT_ALL.X=12SELECT_ALL.Y=7SELECT_ALL.Width=100SELECT_ALL.Height=23SELECT_ALL.Text=全选SELECT_ALL.Action=onCheckSelectAlltPanel_2.Type=TPaneltPanel_2.X=409tPanel_2.Y=195tPanel_2.Width=610tPanel_2.Height=92tPanel_2.Border=组tPanel_2.AutoWidth=YtPanel_2.Item=tLabel_0;BLOOD_NO;tLabel_1;tLabel_2;tLabel_3;BLD_TYPE;tPanel_3;BLD_CODE;SUBCAT_CODE;UNITUNIT.Type=计量单位下拉列表UNIT.X=20UNIT.Y=126UNIT.Width=81UNIT.Height=23UNIT.Text=TButtonUNIT.showID=YUNIT.showName=YUNIT.showText=NUNIT.showValue=NUNIT.showPy1=NUNIT.showPy2=NUNIT.Editable=YUNIT.Tip=计量单位UNIT.TableShowList=nameSUBCAT_CODE.Type=血品规格SUBCAT_CODE.X=281SUBCAT_CODE.Y=47SUBCAT_CODE.Width=146SUBCAT_CODE.Height=23SUBCAT_CODE.Text=TButtonSUBCAT_CODE.showID=YSUBCAT_CODE.showName=YSUBCAT_CODE.showText=NSUBCAT_CODE.showValue=NSUBCAT_CODE.showPy1=NSUBCAT_CODE.showPy2=NSUBCAT_CODE.Editable=YSUBCAT_CODE.Tip=诊室SUBCAT_CODE.TableShowList=nameSUBCAT_CODE.ModuleParmTag=SUBCAT_CODE.Enabled=NBLD_CODE.Type=血品BLD_CODE.X=281BLD_CODE.Y=17BLD_CODE.Width=146BLD_CODE.Height=23BLD_CODE.Text=TButtonBLD_CODE.showID=YBLD_CODE.showName=YBLD_CODE.showText=NBLD_CODE.showValue=NBLD_CODE.showPy1=NBLD_CODE.showPy2=NBLD_CODE.Editable=YBLD_CODE.Tip=血品BLD_CODE.TableShowList=nameBLD_CODE.ModuleParmTag=BLD_CODE.Enabled=NtPanel_3.Type=TPaneltPanel_3.X=435tPanel_3.Y=8tPanel_3.Width=162tPanel_3.Height=79tPanel_3.Border=组|RH血型tPanel_3.Item=RH_TYPE_A;RH_TYPE_BRH_TYPE_B.Type=TRadioButtonRH_TYPE_B.X=37RH_TYPE_B.Y=48RH_TYPE_B.Width=81RH_TYPE_B.Height=23RH_TYPE_B.Text=RH阴性RH_TYPE_B.Group=group2RH_TYPE_B.Enabled=NRH_TYPE_A.Type=TRadioButtonRH_TYPE_A.X=37RH_TYPE_A.Y=24RH_TYPE_A.Width=81RH_TYPE_A.Height=23RH_TYPE_A.Text=RH阳性RH_TYPE_A.Group=group2RH_TYPE_A.Selected=NRH_TYPE_A.Enabled=NBLD_TYPE.Type=血型下拉列表BLD_TYPE.X=85BLD_TYPE.Y=47BLD_TYPE.Width=120BLD_TYPE.Height=23BLD_TYPE.Text=TButtonBLD_TYPE.showID=YBLD_TYPE.showName=YBLD_TYPE.showText=NBLD_TYPE.showValue=NBLD_TYPE.showPy1=NBLD_TYPE.showPy2=NBLD_TYPE.Editable=YBLD_TYPE.Tip=血型下拉列表BLD_TYPE.TableShowList=nameBLD_TYPE.ModuleParmString=GROUP_ID:SYS_BLOODBLD_TYPE.ModuleParmTag=BLD_TYPE.Enabled=NtLabel_3.Type=TLabeltLabel_3.X=13tLabel_3.Y=53tLabel_3.Width=72tLabel_3.Height=15tLabel_3.Text=血型tLabel_2.Type=TLabeltLabel_2.X=236tLabel_2.Y=53tLabel_2.Width=32tLabel_2.Height=15tLabel_2.Text=规格tLabel_1.Type=TLabeltLabel_1.X=236tLabel_1.Y=21tLabel_1.Width=37tLabel_1.Height=15tLabel_1.Text=血液BLOOD_NO.Type=TTextFieldBLOOD_NO.X=85BLOOD_NO.Y=17BLOOD_NO.Width=120BLOOD_NO.Height=20BLOOD_NO.Text=BLOOD_NO.Action=onBloodNotLabel_0.Type=TLabeltLabel_0.X=13tLabel_0.Y=21tLabel_0.Width=72tLabel_0.Height=15tLabel_0.Text=院内条码TABLE_D.Type=TTableTABLE_D.X=6TABLE_D.Y=148TABLE_D.Width=400TABLE_D.Height=140TABLE_D.SpacingRow=1TABLE_D.RowHeight=20TABLE_D.AutoX=NTABLE_D.AutoY=NTABLE_D.AutoWidth=NTABLE_D.AutoHeight=NTABLE_D.AutoSize=0TABLE_D.Header=血液种类,180,BLD_CODE;取血数量,60,double;出库数量,60;单位,95,UNITTABLE_D.Item=BLD_CODE;UNITTABLE_D.ColumnHorizontalAlignmentData=0,left;1,right;2,right;3,leftTABLE_D.LockColumns=allTABLE_D.ParmMap=BLD_CODE;APPLY_QTY;OUT_QTY;UNIT_CODEtPanel_10.Type=TPaneltPanel_10.X=5tPanel_10.Y=5tPanel_10.Width=1014tPanel_10.Height=139tPanel_10.Border=组tPanel_10.AutoX=YtPanel_10.AutoY=YtPanel_10.AutoWidth=YtPanel_10.Item=tLabel_40;IPD_NO;tLabel_41;MR_NO;tLabel_42;PAT_NAME;tLabel_43;SEX;tLabel_44;tLabel_45;ID_NO;tPanel_11;tPanel_0;AGE;tLabel_5;TAKE_NO;USER;tLabel_8;CLNCPATH_CODE;SCHD_CODE;tLabel_9tLabel_9.Type=TLabeltLabel_9.X=554tLabel_9.Y=107tLabel_9.Width=69tLabel_9.Height=15tLabel_9.Text=路径时程:SCHD_CODE.Type=临床路径时程下拉区域SCHD_CODE.X=622SCHD_CODE.Y=103SCHD_CODE.Width=123SCHD_CODE.Height=23SCHD_CODE.Text=SCHD_CODE.HorizontalAlignment=2SCHD_CODE.PopupMenuHeader=代码,100;名称,100SCHD_CODE.PopupMenuWidth=300SCHD_CODE.PopupMenuHeight=300SCHD_CODE.FormatType=comboSCHD_CODE.ShowDownButton=YSCHD_CODE.Tip=临床路径时程SCHD_CODE.ShowColumnList=NAMESCHD_CODE.HisOneNullRow=YCLNCPATH_CODE.Type=适用临床路径下拉区域CLNCPATH_CODE.X=331CLNCPATH_CODE.Y=103CLNCPATH_CODE.Width=190CLNCPATH_CODE.Height=23CLNCPATH_CODE.Text=CLNCPATH_CODE.HorizontalAlignment=2CLNCPATH_CODE.PopupMenuHeader=代码,100;名称,100CLNCPATH_CODE.PopupMenuWidth=300CLNCPATH_CODE.PopupMenuHeight=300CLNCPATH_CODE.FormatType=comboCLNCPATH_CODE.ShowDownButton=YCLNCPATH_CODE.Tip=适用临床路径CLNCPATH_CODE.ShowColumnList=NAMECLNCPATH_CODE.HisOneNullRow=YCLNCPATH_CODE.Enabled=NtLabel_8.Type=TLabeltLabel_8.X=261tLabel_8.Y=107tLabel_8.Width=72tLabel_8.Height=15tLabel_8.Text=临床路径:USER.Type=人员下拉列表USER.X=961USER.Y=105USER.Width=33USER.Height=23USER.Text=TButtonUSER.showID=YUSER.showName=YUSER.showText=NUSER.showValue=NUSER.showPy1=YUSER.showPy2=YUSER.Editable=NUSER.Tip=人员USER.TableShowList=nameUSER.ModuleParmString=USER.ModuleParmTag=USER.Visible=NUSER.Enabled=NTAKE_NO.Type=TTextFieldTAKE_NO.X=86TAKE_NO.Y=11TAKE_NO.Width=150TAKE_NO.Height=20TAKE_NO.Text=TAKE_NO.Action=onTakeNotLabel_5.Type=TLabeltLabel_5.X=13tLabel_5.Y=14tLabel_5.Width=72tLabel_5.Height=15tLabel_5.Text=取血单号tLabel_5.Color=蓝AGE.Type=TTextFieldAGE.X=396AGE.Y=74AGE.Width=99AGE.Height=20AGE.Text=AGE.Enabled=NtPanel_0.Type=TPaneltPanel_0.X=513tPanel_0.Y=21tPanel_0.Width=232tPanel_0.Height=66tPanel_0.Border=组|RH血型tPanel_0.Item=RH_A;RH_BRH_B.Type=TRadioButtonRH_B.X=132RH_B.Y=27RH_B.Width=81RH_B.Height=23RH_B.Text=RH阴性RH_B.Group=group1RH_B.Enabled=NRH_A.Type=TRadioButtonRH_A.X=19RH_A.Y=27RH_A.Width=81RH_A.Height=23RH_A.Text=RH阳性RH_A.Group=group1RH_A.Selected=NRH_A.Enabled=NtPanel_11.Type=TPaneltPanel_11.X=802tPanel_11.Y=16tPanel_11.Width=148tPanel_11.Height=86tPanel_11.Border=组tPanel_11.Item=BLOOD_TEXTBLOOD_TEXT.Type=TLabelBLOOD_TEXT.X=4BLOOD_TEXT.Y=1BLOOD_TEXT.Width=141BLOOD_TEXT.Height=80BLOOD_TEXT.Text=BLOOD_TEXT.AutoCenter=NBLOOD_TEXT.AutoX=NBLOOD_TEXT.AutoY=NBLOOD_TEXT.AutoWidth=NBLOOD_TEXT.AutoHeight=NBLOOD_TEXT.FontSize=60BLOOD_TEXT.HorizontalAlignment=0BLOOD_TEXT.VerticalAlignment=0BLOOD_TEXT.Color=redID_NO.Type=TTextFieldID_NO.X=86ID_NO.Y=104ID_NO.Width=150ID_NO.Height=20ID_NO.Text=ID_NO.Enabled=NtLabel_45.Type=TLabeltLabel_45.X=14tLabel_45.Y=106tLabel_45.Width=60tLabel_45.Height=15tLabel_45.Text=身份证号tLabel_44.Type=TLabeltLabel_44.X=360tLabel_44.Y=75tLabel_44.Width=31tLabel_44.Height=15tLabel_44.Text=年龄SEX.Type=TTextFieldSEX.X=306SEX.Y=73SEX.Width=40SEX.Height=20SEX.Text=SEX.Enabled=NtLabel_43.Type=TLabeltLabel_43.X=261tLabel_43.Y=75tLabel_43.Width=35tLabel_43.Height=15tLabel_43.Text=性别PAT_NAME.Type=TTextFieldPAT_NAME.X=86PAT_NAME.Y=73PAT_NAME.Width=151PAT_NAME.Height=20PAT_NAME.Text=PAT_NAME.Enabled=NtLabel_42.Type=TLabeltLabel_42.X=15tLabel_42.Y=75tLabel_42.Width=36tLabel_42.Height=15tLabel_42.Text=姓名MR_NO.Type=TTextFieldMR_NO.X=86MR_NO.Y=42MR_NO.Width=150MR_NO.Height=20MR_NO.Text=MR_NO.Action=onMrNoActionMR_NO.Enabled=NtLabel_41.Type=TLabeltLabel_41.X=14tLabel_41.Y=44tLabel_41.Width=72tLabel_41.Height=15tLabel_41.Text=病案号tLabel_41.Color=blueIPD_NO.Type=TTextFieldIPD_NO.X=337IPD_NO.Y=43IPD_NO.Width=160IPD_NO.Height=20IPD_NO.Text=IPD_NO.Enabled=NtLabel_40.Type=TLabeltLabel_40.X=262tLabel_40.Y=45tLabel_40.Width=46tLabel_40.Height=15tLabel_40.Text=住院号tLabel_40.Color=黑tLabel_40.Enabled=Y