## TBuilder Config File ## Title:供应厂商## Company:JavaHis## Author:zhangy 2009.06.08## version 1.0#<Type=TFrame>UI.Title=供应厂商UI.MenuConfig=%ROOT%\config\sys\SYSSupplier_Menu.xUI.Width=1024UI.Height=748UI.toolbar=YUI.controlclassname=com.javahis.ui.sys.SYSSupplierControlUI.item=tPanel_0;tPanel_1;tPanel_2;tPanel_3;tPanel_6;tPanel_7UI.layout=nullUI.Tip=供应厂商UI.Text=供应厂商UI.TopMenu=YUI.TopToolBar=YUI.FocusList=SUP_CODE;SUP_CHN_DESC;SUP_ENG_DESC;SUP_ABS_DESC;PY1;PY2;SEQ;DESCRIPTION;PHA_FLG;MAT_FLG;DEV_FLG;OTHER_FLG;SUP_BOSSNAME;SUP_IDNO;SUP_TEL;SUP_FAX;NATIONAL_CODE;POST_P;POST_C;POST_CODE;ADDRESS;E_MAIL;WEBSITE;BANK_CODE;BANK_IDNO;BANK_NAME;SUP_SALES1;SUP_SALES1_TEL;SUP_SALES1_EMAIL;SUP_SALES2;SUP_SALES2_TEL;SUP_SALES2_EMAIL;SUP_SALES3;SUP_SALES3_TEL;SUP_SALES3_EMAIL;SUP_STOP_FLG;SUP_STOP_DATE;SUP_END_DATEtPanel_7.Type=TPaneltPanel_7.X=5tPanel_7.Y=418tPanel_7.Width=1014tPanel_7.Height=325tPanel_7.AutoX=YtPanel_7.AutoWidth=YtPanel_7.AutoHeight=YtPanel_7.Border=凹tPanel_7.Item=TABLETABLE.Type=TTableTABLE.X=72TABLE.Y=2TABLE.Width=81TABLE.Height=321TABLE.SpacingRow=1TABLE.RowHeight=20TABLE.AutoX=YTABLE.AutoY=YTABLE.AutoWidth=YTABLE.AutoHeight=YTABLE.AutoSize=0TABLE.AutoModifyDataStore=YTABLE.LockColumns=allTABLE.Header=供货商代码,120;供货商名称,150;销售部门代码,100;负责人,100;营业编号,100;电话,100;传真,120;业务员一,100;电话,120;停用,40,boolean;停止采购开始日期,160;停止采购截止日期,160;操作者,80;操作时间,120;操作IP,120TABLE.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,left;4,left;5,left;6,right;7,left;9,left;10,left;11,left;12,left;13,leftTABLE.ParmMap=SUP_CODE;SUP_CHN_DESC;SELL_DEPT_CODE;SUP_BOSSNAME;SUP_IDNO;SUP_TEL;SUP_FAX;SUP_SALES1;SUP_SALES1_TEL;SUP_STOP_FLG;SUP_STOP_DATE;SUP_END_DATE;OPT_USER;OPT_DATE;OPT_TERMTABLE.ClickedAction=onTableClickedtPanel_6.Type=TPaneltPanel_6.X=5tPanel_6.Y=88tPanel_6.Width=1014tPanel_6.Height=39tPanel_6.AutoX=YtPanel_6.AutoWidth=YtPanel_6.Border=组tPanel_6.Item=PHA_FLG;MAT_FLG;DEV_FLG;OTHER_FLGOTHER_FLG.Type=TCheckBoxOTHER_FLG.X=521OTHER_FLG.Y=8OTHER_FLG.Width=150OTHER_FLG.Height=23OTHER_FLG.Text=物联网供货商DEV_FLG.Type=TCheckBoxDEV_FLG.X=359DEV_FLG.Y=8DEV_FLG.Width=150DEV_FLG.Height=23DEV_FLG.Text=设备供货商注记MAT_FLG.Type=TCheckBoxMAT_FLG.X=170MAT_FLG.Y=8MAT_FLG.Width=180MAT_FLG.Height=23MAT_FLG.Text=低值耗材供货商注记PHA_FLG.Type=TCheckBoxPHA_FLG.X=13PHA_FLG.Y=8PHA_FLG.Width=150PHA_FLG.Height=23PHA_FLG.Text=药品供货商注记tPanel_3.Type=TPaneltPanel_3.X=5tPanel_3.Y=367tPanel_3.Width=1014tPanel_3.Height=47tPanel_3.AutoX=YtPanel_3.AutoWidth=YtPanel_3.Border=组|停用tPanel_3.Item=SUP_STOP_FLG;tLabel_52;tLabel_53;SUP_STOP_DATE;SUP_END_DATESUP_END_DATE.Type=TTextFormatSUP_END_DATE.X=619SUP_END_DATE.Y=17SUP_END_DATE.Width=160SUP_END_DATE.Height=20SUP_END_DATE.Text=SUP_END_DATE.Format=yyyy/MM/dd HH:mm:ssSUP_END_DATE.FormatType=dateSUP_END_DATE.showDownButton=YSUP_END_DATE.HorizontalAlignment=2SUP_END_DATE.Enabled=NSUP_STOP_DATE.Type=TTextFormatSUP_STOP_DATE.X=301SUP_STOP_DATE.Y=17SUP_STOP_DATE.Width=160SUP_STOP_DATE.Height=20SUP_STOP_DATE.Text=SUP_STOP_DATE.HorizontalAlignment=2SUP_STOP_DATE.showDownButton=YSUP_STOP_DATE.Format=yyyy/MM/dd HH:mm:ssSUP_STOP_DATE.FormatType=dateSUP_STOP_DATE.Enabled=NtLabel_53.Type=TLabeltLabel_53.X=492tLabel_53.Y=20tLabel_53.Width=120tLabel_53.Height=15tLabel_53.Text=停止采购截止日期:tLabel_52.Type=TLabeltLabel_52.X=175tLabel_52.Y=20tLabel_52.Width=120tLabel_52.Height=15tLabel_52.Text=停止采购开始日期:SUP_STOP_FLG.Type=TCheckBoxSUP_STOP_FLG.X=13SUP_STOP_FLG.Y=16SUP_STOP_FLG.Width=120SUP_STOP_FLG.Height=23SUP_STOP_FLG.Text=停止采购注记SUP_STOP_FLG.Action=onSupStopFlgActiontPanel_2.Type=TPaneltPanel_2.X=5tPanel_2.Y=263tPanel_2.Width=1017tPanel_2.Height=105tPanel_2.AutoX=YtPanel_2.AutoWidth=YtPanel_2.Border=组|业务员tPanel_2.Item=tLabel_43;tLabel_44;tLabel_45;tLabel_46;tLabel_47;tLabel_48;tLabel_49;tLabel_50;tLabel_51;SUP_SALES1;SUP_SALES2;SUP_SALES3;SUP_SALES1_TEL;SUP_SALES2_TEL;SUP_SALES3_TEL;SUP_SALES1_EMAIL;SUP_SALES2_EMAIL;SUP_SALES3_EMAILSUP_SALES3_EMAIL.Type=TTextFieldSUP_SALES3_EMAIL.X=521SUP_SALES3_EMAIL.Y=76SUP_SALES3_EMAIL.Width=150SUP_SALES3_EMAIL.Height=20SUP_SALES3_EMAIL.Text=SUP_SALES2_EMAIL.Type=TTextFieldSUP_SALES2_EMAIL.X=521SUP_SALES2_EMAIL.Y=47SUP_SALES2_EMAIL.Width=150SUP_SALES2_EMAIL.Height=20SUP_SALES2_EMAIL.Text=SUP_SALES1_EMAIL.Type=TTextFieldSUP_SALES1_EMAIL.X=521SUP_SALES1_EMAIL.Y=20SUP_SALES1_EMAIL.Width=150SUP_SALES1_EMAIL.Height=20SUP_SALES1_EMAIL.Text=SUP_SALES3_TEL.Type=TTextFieldSUP_SALES3_TEL.X=287SUP_SALES3_TEL.Y=76SUP_SALES3_TEL.Width=150SUP_SALES3_TEL.Height=20SUP_SALES3_TEL.Text=SUP_SALES2_TEL.Type=TTextFieldSUP_SALES2_TEL.X=287SUP_SALES2_TEL.Y=47SUP_SALES2_TEL.Width=150SUP_SALES2_TEL.Height=20SUP_SALES2_TEL.Text=SUP_SALES1_TEL.Type=TTextFieldSUP_SALES1_TEL.X=287SUP_SALES1_TEL.Y=20SUP_SALES1_TEL.Width=150SUP_SALES1_TEL.Height=20SUP_SALES1_TEL.Text=SUP_SALES3.Type=TTextFieldSUP_SALES3.X=88SUP_SALES3.Y=76SUP_SALES3.Width=120SUP_SALES3.Height=20SUP_SALES3.Text=SUP_SALES2.Type=TTextFieldSUP_SALES2.X=88SUP_SALES2.Y=47SUP_SALES2.Width=120SUP_SALES2.Height=20SUP_SALES2.Text=SUP_SALES1.Type=TTextFieldSUP_SALES1.X=88SUP_SALES1.Y=20SUP_SALES1.Width=120SUP_SALES1.Height=20SUP_SALES1.Text=tLabel_51.Type=TLabeltLabel_51.X=462tLabel_51.Y=78tLabel_51.Width=60tLabel_51.Height=15tLabel_51.Text=邮箱:tLabel_50.Type=TLabeltLabel_50.X=462tLabel_50.Y=51tLabel_50.Width=60tLabel_50.Height=15tLabel_50.Text=邮箱:tLabel_49.Type=TLabeltLabel_49.X=462tLabel_49.Y=25tLabel_49.Width=60tLabel_49.Height=15tLabel_49.Text=邮箱:tLabel_48.Type=TLabeltLabel_48.X=226tLabel_48.Y=78tLabel_48.Width=60tLabel_48.Height=15tLabel_48.Text=电话:tLabel_47.Type=TLabeltLabel_47.X=226tLabel_47.Y=51tLabel_47.Width=60tLabel_47.Height=15tLabel_47.Text=电话:tLabel_46.Type=TLabeltLabel_46.X=226tLabel_46.Y=25tLabel_46.Width=60tLabel_46.Height=15tLabel_46.Text=电话:tLabel_45.Type=TLabeltLabel_45.X=16tLabel_45.Y=78tLabel_45.Width=72tLabel_45.Height=15tLabel_45.Text=业务员三:tLabel_44.Type=TLabeltLabel_44.X=16tLabel_44.Y=51tLabel_44.Width=72tLabel_44.Height=15tLabel_44.Text=业务员二:tLabel_43.Type=TLabeltLabel_43.X=16tLabel_43.Y=25tLabel_43.Width=72tLabel_43.Height=15tLabel_43.Text=业务员一:tPanel_1.Type=TPaneltPanel_1.X=5tPanel_1.Y=129tPanel_1.Width=1016tPanel_1.Height=134tPanel_1.AutoX=YtPanel_1.AutoWidth=YtPanel_1.Border=组|通讯信息tPanel_1.Item=tLabel_14;tLabel_15;tLabel_16;tLabel_17;tLabel_18;tLabel_19;tLabel_20;tLabel_36;tLabel_37;tLabel_38;tLabel_39;tLabel_40;tLabel_41;tLabel_42;SUP_BOSSNAME;SUP_IDNO;SUP_TEL;SUP_FAX;POST_CODE;ADDRESS;E_MAIL;WEBSITE;BANK_CODE;BANK_IDNO;BANK_NAME;NATIONAL_CODE;POST_P;POST_CPOST_C.Type=市POST_C.X=502POST_C.Y=47POST_C.Width=120POST_C.Height=23POST_C.Text=POST_C.HorizontalAlignment=2POST_C.PopupMenuHeader=代码,100;名称,100POST_C.PopupMenuWidth=300POST_C.PopupMenuHeight=300POST_C.PopupMenuFilter=ID,1;NAME,1;PY1,1POST_C.FormatType=comboPOST_C.ShowDownButton=YPOST_C.Tip=市POST_C.ShowColumnList=NAMEPOST_C.HisOneNullRow=YPOST_C.Action=POST_P|onQuery;selectCode_1POST_C.PostCode=<POST_P>POST_P.Type=省POST_P.X=308POST_P.Y=47POST_P.Width=100POST_P.Height=23POST_P.Text=POST_P.HorizontalAlignment=2POST_P.PopupMenuHeader=代码,100;名称,100POST_P.PopupMenuWidth=300POST_P.PopupMenuHeight=300POST_P.PopupMenuFilter=ID,1;NAME,1;PY1,1POST_P.FormatType=comboPOST_P.ShowDownButton=YPOST_P.Tip=省POST_P.ShowColumnList=NAMEPOST_P.Action=POST_C|onQueryPOST_P.HisOneNullRow=YPOST_P.PostCode=<POST_C>NATIONAL_CODE.Type=国籍NATIONAL_CODE.X=88NATIONAL_CODE.Y=47NATIONAL_CODE.Width=125NATIONAL_CODE.Height=23NATIONAL_CODE.Text=NATIONAL_CODE.HorizontalAlignment=2NATIONAL_CODE.PopupMenuHeader=代码,100;名称,100NATIONAL_CODE.PopupMenuWidth=300NATIONAL_CODE.PopupMenuHeight=300NATIONAL_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1NATIONAL_CODE.FormatType=comboNATIONAL_CODE.ShowDownButton=YNATIONAL_CODE.Tip=国籍NATIONAL_CODE.ShowColumnList=NAMENATIONAL_CODE.HisOneNullRow=YBANK_NAME.Type=TTextFieldBANK_NAME.X=724BANK_NAME.Y=101BANK_NAME.Width=120BANK_NAME.Height=20BANK_NAME.Text=BANK_NAME.Enabled=YBANK_IDNO.Type=TTextFieldBANK_IDNO.X=423BANK_IDNO.Y=101BANK_IDNO.Width=200BANK_IDNO.Height=20BANK_IDNO.Text=BANK_IDNO.Enabled=YBANK_CODE.Type=银行代码下拉列表BANK_CODE.X=88BANK_CODE.Y=101BANK_CODE.Width=200BANK_CODE.Height=23BANK_CODE.Text=TButtonBANK_CODE.showID=YBANK_CODE.showName=YBANK_CODE.showText=NBANK_CODE.showValue=NBANK_CODE.showPy1=NBANK_CODE.showPy2=NBANK_CODE.Editable=YBANK_CODE.Tip=银行代码下拉列表BANK_CODE.TableShowList=nameBANK_CODE.ModuleParmString=GROUP_ID:SYS_BANKBANK_CODE.ModuleParmTag=BANK_CODE.Action=BANK_CODE.SelectedAction=WEBSITE.Type=TTextFieldWEBSITE.X=724WEBSITE.Y=76WEBSITE.Width=200WEBSITE.Height=20WEBSITE.Text=E_MAIL.Type=TTextFieldE_MAIL.X=423E_MAIL.Y=76E_MAIL.Width=200E_MAIL.Height=20E_MAIL.Text=ADDRESS.Type=TTextFieldADDRESS.X=88ADDRESS.Y=76ADDRESS.Width=200ADDRESS.Height=20ADDRESS.Text=POST_CODE.Type=TTextFieldPOST_CODE.X=724POST_CODE.Y=49POST_CODE.Width=120POST_CODE.Height=20POST_CODE.Text=POST_CODE.Action=onPostSUP_FAX.Type=TTextFieldSUP_FAX.X=724SUP_FAX.Y=21SUP_FAX.Width=120SUP_FAX.Height=20SUP_FAX.Text=SUP_TEL.Type=TTextFieldSUP_TEL.X=502SUP_TEL.Y=21SUP_TEL.Width=120SUP_TEL.Height=20SUP_TEL.Text=SUP_IDNO.Type=TTextFieldSUP_IDNO.X=308SUP_IDNO.Y=21SUP_IDNO.Width=100SUP_IDNO.Height=20SUP_IDNO.Text=SUP_BOSSNAME.Type=TTextFieldSUP_BOSSNAME.X=88SUP_BOSSNAME.Y=21SUP_BOSSNAME.Width=100SUP_BOSSNAME.Height=20SUP_BOSSNAME.Text=tLabel_42.Type=TLabeltLabel_42.X=652tLabel_42.Y=104tLabel_42.Width=72tLabel_42.Height=15tLabel_42.Text=汇款姓名:tLabel_41.Type=TLabeltLabel_41.X=332tLabel_41.Y=104tLabel_41.Width=72tLabel_41.Height=15tLabel_41.Text=汇款帐号:tLabel_40.Type=TLabeltLabel_40.X=16tLabel_40.Y=104tLabel_40.Width=72tLabel_40.Height=15tLabel_40.Text=汇款银行:tLabel_39.Type=TLabeltLabel_39.X=652tLabel_39.Y=78tLabel_39.Width=72tLabel_39.Height=15tLabel_39.Text=网址:tLabel_38.Type=TLabeltLabel_38.X=332tLabel_38.Y=78tLabel_38.Width=72tLabel_38.Height=15tLabel_38.Text=邮箱:tLabel_37.Type=TLabeltLabel_37.X=16tLabel_37.Y=78tLabel_37.Width=72tLabel_37.Height=15tLabel_37.Text=地址:tLabel_36.Type=TLabeltLabel_36.X=652tLabel_36.Y=50tLabel_36.Width=72tLabel_36.Height=15tLabel_36.Text=邮编:tLabel_20.Type=TLabeltLabel_20.X=443tLabel_20.Y=50tLabel_20.Width=60tLabel_20.Height=15tLabel_20.Text=县、市:tLabel_19.Type=TLabeltLabel_19.X=222tLabel_19.Y=50tLabel_19.Width=80tLabel_19.Height=15tLabel_19.Text=省、直辖市:tLabel_18.Type=TLabeltLabel_18.X=16tLabel_18.Y=50tLabel_18.Width=72tLabel_18.Height=15tLabel_18.Text=国家:tLabel_17.Type=TLabeltLabel_17.X=650tLabel_17.Y=24tLabel_17.Width=72tLabel_17.Height=15tLabel_17.Text=传真机:tLabel_16.Type=TLabeltLabel_16.X=443tLabel_16.Y=24tLabel_16.Width=40tLabel_16.Height=15tLabel_16.Text=电话:tLabel_15.Type=TLabeltLabel_15.X=222tLabel_15.Y=24tLabel_15.Width=72tLabel_15.Height=15tLabel_15.Text=营业编号:tLabel_14.Type=TLabeltLabel_14.X=16tLabel_14.Y=24tLabel_14.Width=72tLabel_14.Height=15tLabel_14.Text=负责人:tLabel_14.HorizontalAlignment=2tPanel_0.Type=TPaneltPanel_0.X=5tPanel_0.Y=5tPanel_0.Width=1016tPanel_0.Height=82tPanel_0.AutoX=YtPanel_0.AutoY=YtPanel_0.AutoWidth=YtPanel_0.Border=组|厂商信息tPanel_0.Item=tLabel_0;SUP_CODE;tLabel_1;SUP_CHN_DESC;tLabel_3;SUP_ENG_DESC;tLabel_4;SUP_ABS_DESC;tLabel_5;PY1;tLabel_6;PY2;tLabel_7;SEQ;tLabel_8;DESCRIPTION;tLabel_2;SELL_DEPT_CODESELL_DEPT_CODE.Type=TTextFieldSELL_DEPT_CODE.X=912SELL_DEPT_CODE.Y=21SELL_DEPT_CODE.Width=99SELL_DEPT_CODE.Height=20SELL_DEPT_CODE.Text=tLabel_2.Type=TLabeltLabel_2.X=822tLabel_2.Y=24tLabel_2.Width=91tLabel_2.Height=15tLabel_2.Text=销售部门代码:DESCRIPTION.Type=TTextFieldDESCRIPTION.X=698DESCRIPTION.Y=51DESCRIPTION.Width=120DESCRIPTION.Height=20DESCRIPTION.Text=tLabel_8.Type=TLabeltLabel_8.X=607tLabel_8.Y=53tLabel_8.Width=92tLabel_8.Height=15tLabel_8.Text=送货地址编码:SEQ.Type=TNumberTextFieldSEQ.X=468SEQ.Y=51SEQ.Width=80SEQ.Height=20SEQ.Text=0SEQ.Format=#########0tLabel_7.Type=TLabeltLabel_7.X=406tLabel_7.Y=54tLabel_7.Width=72tLabel_7.Height=15tLabel_7.Text=顺序号:PY2.Type=TTextFieldPY2.X=253PY2.Y=51PY2.Width=80PY2.Height=20PY2.Text=tLabel_6.Type=TLabeltLabel_6.X=177tLabel_6.Y=54tLabel_6.Width=72tLabel_6.Height=15tLabel_6.Text=助记码:PY1.Type=TTextFieldPY1.X=93PY1.Y=51PY1.Width=80PY1.Height=20PY1.Text=tLabel_5.Type=TLabeltLabel_5.X=16tLabel_5.Y=54tLabel_5.Width=72tLabel_5.Height=15tLabel_5.Text=拼音:SUP_ABS_DESC.Type=TTextFieldSUP_ABS_DESC.X=698SUP_ABS_DESC.Y=21SUP_ABS_DESC.Width=120SUP_ABS_DESC.Height=20SUP_ABS_DESC.Text=tLabel_4.Type=TLabeltLabel_4.X=621tLabel_4.Y=24tLabel_4.Width=80tLabel_4.Height=15tLabel_4.Text=供货商简称:SUP_ENG_DESC.Type=TTextFieldSUP_ENG_DESC.X=468SUP_ENG_DESC.Y=21SUP_ENG_DESC.Width=150SUP_ENG_DESC.Height=20SUP_ENG_DESC.Text=tLabel_3.Type=TLabeltLabel_3.X=406tLabel_3.Y=24tLabel_3.Width=72tLabel_3.Height=15tLabel_3.Text=英文名称:SUP_CHN_DESC.Type=TTextFieldSUP_CHN_DESC.X=253SUP_CHN_DESC.Y=21SUP_CHN_DESC.Width=150SUP_CHN_DESC.Height=20SUP_CHN_DESC.Text=SUP_CHN_DESC.Action=onSupDescActiontLabel_1.Type=TLabeltLabel_1.X=177tLabel_1.Y=24tLabel_1.Width=80tLabel_1.Height=15tLabel_1.Text=供货商名称:tLabel_1.Color=blueSUP_CODE.Type=TTextFieldSUP_CODE.X=93SUP_CODE.Y=21SUP_CODE.Width=80SUP_CODE.Height=20SUP_CODE.Text=tLabel_0.Type=TLabeltLabel_0.X=16tLabel_0.Y=24tLabel_0.Width=80tLabel_0.Height=15tLabel_0.Text=供货商代码:tLabel_0.Color=blue