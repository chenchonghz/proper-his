<Type=TFrame>UI.Title=作废账单UI.MenuConfig=%ROOT%\config\bil\BILIBSBillReturnMenu.xUI.Width=1280UI.Height=800UI.toolbar=YUI.controlclassname=com.javahis.ui.bil.BILIBSBillReturnControlUI.item=tPanel_5;tPanel_1UI.layout=nullUI.BKColor=161,220,230UI.FocusList=UI.TopMenu=YUI.TopToolBar=YUI.ShowTitle=NUI.X=5UI.AutoX=YUI.Y=5UI.AutoY=YUI.AutoWidth=YUI.AutoHeight=YtPanel_1.Type=TPaneltPanel_1.X=5tPanel_1.Y=8tPanel_1.Width=1270tPanel_1.Height=65tPanel_1.Border=组|病患信息tPanel_1.AutoX=YtPanel_1.AutoWidth=YtPanel_1.Item=tLabel_3;MR_NO;PAT_NAME;tLabel_5;IPD_NO;tLabel_6;tLabel_7;tLabel_9;AGE;SEX_CODESEX_CODE.Type=性别下拉列表SEX_CODE.X=541SEX_CODE.Y=24SEX_CODE.Width=69SEX_CODE.Height=23SEX_CODE.Text=TButtonSEX_CODE.showID=YSEX_CODE.showName=YSEX_CODE.showText=NSEX_CODE.showValue=NSEX_CODE.showPy1=NSEX_CODE.showPy2=NSEX_CODE.Editable=YSEX_CODE.Tip=性别SEX_CODE.TableShowList=nameSEX_CODE.ModuleParmString=GROUP_ID:SYS_SEXSEX_CODE.ModuleParmTag=SEX_CODE.Enabled=NAGE.Type=TTextFieldAGE.X=669AGE.Y=24AGE.Width=145AGE.Height=20AGE.Text=AGE.Enabled=NtLabel_9.Type=TLabeltLabel_9.X=624tLabel_9.Y=27tLabel_9.Width=42tLabel_9.Height=15tLabel_9.Text=年龄:tLabel_7.Type=TLabeltLabel_7.X=496tLabel_7.Y=28tLabel_7.Width=42tLabel_7.Height=15tLabel_7.Text=性别:tLabel_6.Type=TLabeltLabel_6.X=359tLabel_6.Y=28tLabel_6.Width=40tLabel_6.Height=15tLabel_6.Text=姓名:IPD_NO.Type=TTextFieldIPD_NO.X=239IPD_NO.Y=26IPD_NO.Width=110IPD_NO.Height=20IPD_NO.Text=IPD_NO.Action=onQuerytLabel_5.Type=TLabeltLabel_5.X=184tLabel_5.Y=28tLabel_5.Width=56tLabel_5.Height=16tLabel_5.Text=住院号:PAT_NAME.Type=TTextFieldPAT_NAME.X=410PAT_NAME.Y=25PAT_NAME.Width=68PAT_NAME.Height=20PAT_NAME.Text=PAT_NAME.Enabled=NMR_NO.Type=TTextFieldMR_NO.X=65MR_NO.Y=26MR_NO.Width=110MR_NO.Height=20MR_NO.Text=MR_NO.Action=onQuerytLabel_3.Type=TLabeltLabel_3.X=10tLabel_3.Y=28tLabel_3.Width=56tLabel_3.Height=16tLabel_3.Text=病案号:tPanel_5.Type=TPaneltPanel_5.X=5tPanel_5.Y=71tPanel_5.Width=1270tPanel_5.Height=724tPanel_5.Border=组|账单明细tPanel_5.Item=MainTable;CTZ1_CODE;CTZ2_CODE;CTZ3_CODEtPanel_5.AutoWidth=YtPanel_5.AutoX=YtPanel_5.AutoHeight=YCTZ3_CODE.Type=身份折扣下拉列表CTZ3_CODE.X=388CTZ3_CODE.Y=121CTZ3_CODE.Width=81CTZ3_CODE.Height=23CTZ3_CODE.Text=TButtonCTZ3_CODE.showID=YCTZ3_CODE.showName=YCTZ3_CODE.showText=NCTZ3_CODE.showValue=NCTZ3_CODE.showPy1=YCTZ3_CODE.showPy2=YCTZ3_CODE.Editable=YCTZ3_CODE.Tip=身份CTZ3_CODE.TableShowList=nameCTZ2_CODE.Type=身份折扣下拉列表CTZ2_CODE.X=252CTZ2_CODE.Y=122CTZ2_CODE.Width=81CTZ2_CODE.Height=23CTZ2_CODE.Text=TButtonCTZ2_CODE.showID=YCTZ2_CODE.showName=YCTZ2_CODE.showText=NCTZ2_CODE.showValue=NCTZ2_CODE.showPy1=YCTZ2_CODE.showPy2=YCTZ2_CODE.Editable=YCTZ2_CODE.Tip=身份CTZ2_CODE.TableShowList=nameCTZ1_CODE.Type=身份折扣下拉列表CTZ1_CODE.X=127CTZ1_CODE.Y=125CTZ1_CODE.Width=81CTZ1_CODE.Height=23CTZ1_CODE.Text=TButtonCTZ1_CODE.showID=YCTZ1_CODE.showName=YCTZ1_CODE.showText=NCTZ1_CODE.showValue=NCTZ1_CODE.showPy1=YCTZ1_CODE.showPy2=YCTZ1_CODE.Editable=YCTZ1_CODE.Tip=身份CTZ1_CODE.TableShowList=nameMainTable.Type=TTableMainTable.X=6MainTable.Y=18MainTable.Width=1252MainTable.Height=695MainTable.SpacingRow=1MainTable.RowHeight=20MainTable.AutoX=NMainTable.AutoY=NMainTable.AutoWidth=YMainTable.AutoHeight=YMainTable.Header=选,40,boolean;审,40,boolean;票据号码,100;开始日期,80;截止日期,80;应交款,80,double,#########0.00;已交款,80,double,#########0.00;身份一,70,CTZ1_CODE;身份二,70,CTZ2_CODE;身份三,70,CTZ3_CODE;自费总额,80,double,#########0.00;医保总额,80,double,#########0.00;折扣额,80,double,#########0.00;出院结算,70,booleanMainTable.ParmMap=PAY_SEL;APPROVE_FLG;BILL_NO;BEGIN_DATE;END_DATE;AR_AMT;PAY_AR_AMT;CTZ1_CODE;CTZ2_CODE;CTZ3_CODE;OWN_AMT;NHI_AMT;REDUCE_AMT;DISCHARGE_FLGMainTable.Item=CTZ1_CODE;CTZ2_CODE;CTZ3_CODEMainTable.LockColumns=1,2,3,4,5,6,7,8,9,10,11,12,13MainTable.ColumnHorizontalAlignmentData=2,left;3,left;4,right;5,right;6,right;7,right;8,right;9,left;10,left;11,left;12,right