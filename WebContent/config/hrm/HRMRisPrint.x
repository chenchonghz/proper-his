# #  Title:检查申请单打印# #  Description:检查申请单打印# #  Copyright: Copyright (c) Bluecore 2015# #  author wanglong 2015.02.27#  version 1.0#<Type=TFrame>UI.Title=检查申请单打印UI.MenuConfig=%ROOT%\config\hrm\HRMRisPrintMenu.xUI.Width=1024UI.Height=748UI.toolbar=YUI.controlclassname=com.javahis.ui.hrm.HRMRisPrintControlUI.Item=tPanel_1;TABLEUI.AutoSize=3UI.TopMenu=YUI.TopToolBar=YTABLE.Type=TTableTABLE.X=8TABLE.Y=130TABLE.Width=81TABLE.Height=615TABLE.SpacingRow=1TABLE.RowHeight=20TABLE.AutoX=YTABLE.AutoWidth=YTABLE.AutoHeight=YTABLE.AutoSize=3TABLE.Header=选,30,boolean;印,30,boolean;急,30,boolean;医嘱名称,160;打印时间,150,timestamp,yyyy/MM/dd HH:mm:ss;开立时间,150,timestamp,yyyy/MM/dd HH:mm:ss;开立科室,100,DEPT_CODE;开立医生,80,USER_ID;执行科室,100,DEPT_CODE;姓名,100;病案号,100;条码号,100;报告类别,80,RPTTYPE_CODE;检体部位,120,OPTITEM_CODE;仪器代码,80,DEV_CODETABLE.ParmMap=FLG;PRINT_FLG;URGENT_FLG;ORDER_DESC;PRINT_DATE;ORDER_DATE;DEPT_CODE;DR_CODE;EXEC_DEPT_CODE;PAT_NAME;MR_NO;APPLICATION_NO;RPTTYPE_CODE;OPTITEM_CODE;DEV_CODETABLE.LockColumns=1,2,3,4,5,6,7,8,9,10,11,12,13,14TABLE.Item=DEPT_CODE;USER_ID;RPTTYPE_CODE;OPTITEM_CODE;DEV_CODETABLE.ColumnHorizontalAlignmentData=3,Left;6,Left;7,Left;8,Left;9,Left;12,Left;13,Left;14,LeftTABLE.RightClickedAction=showPopMenuDEV_CODE.Type=分类规则下拉列表DEV_CODE.X=812DEV_CODE.Y=104DEV_CODE.Width=81DEV_CODE.Height=23DEV_CODE.Text=TButtonDEV_CODE.showID=YDEV_CODE.showName=YDEV_CODE.showText=NDEV_CODE.showValue=NDEV_CODE.showPy1=NDEV_CODE.showPy2=NDEV_CODE.Editable=YDEV_CODE.Tip=分类规则DEV_CODE.TableShowList=nameDEV_CODE.ModuleParmString=DEV_CODE.ModuleParmTag=DEV_CODE.RuleType=DEV_TYPERPTTYPE_CODE.Type=检验检查分类RPTTYPE_CODE.X=644RPTTYPE_CODE.Y=104RPTTYPE_CODE.Width=81RPTTYPE_CODE.Height=23RPTTYPE_CODE.Text=TButtonRPTTYPE_CODE.showID=YRPTTYPE_CODE.showName=YRPTTYPE_CODE.showText=NRPTTYPE_CODE.showValue=NRPTTYPE_CODE.showPy1=NRPTTYPE_CODE.showPy2=NRPTTYPE_CODE.Editable=YRPTTYPE_CODE.Tip=检验检查分类RPTTYPE_CODE.TableShowList=nameRPTTYPE_CODE.CLASSIFY3=RPTTYPE_CODE.CLASSIFY2=YRPTTYPE_CODE.ExpandWidth=30OPTITEM_CODE.Type=部位代码下拉列表OPTITEM_CODE.X=727OPTITEM_CODE.Y=104OPTITEM_CODE.Width=86OPTITEM_CODE.Height=23OPTITEM_CODE.Text=TButtonOPTITEM_CODE.showID=YOPTITEM_CODE.showName=YOPTITEM_CODE.showText=NOPTITEM_CODE.showValue=NOPTITEM_CODE.showPy1=YOPTITEM_CODE.showPy2=YOPTITEM_CODE.Editable=YOPTITEM_CODE.Tip=部位代码下拉列表OPTITEM_CODE.TableShowList=nameOPTITEM_CODE.ModuleParmString=GROUP_ID:SYS_OPTITEMOPTITEM_CODE.ModuleParmTag=USER_ID.Type=人员USER_ID.X=914USER_ID.Y=202USER_ID.Width=81USER_ID.Height=23USER_ID.Text=USER_ID.HorizontalAlignment=2USER_ID.PopupMenuHeader=代码,100;名称,100USER_ID.PopupMenuWidth=300USER_ID.PopupMenuHeight=300USER_ID.PopupMenuFilter=ID,1;NAME,1;PY1,1USER_ID.FormatType=comboUSER_ID.ShowDownButton=YUSER_ID.Tip=人员USER_ID.ShowColumnList=NAMEUSER_ID.HisOneNullRow=YDEPT_CODE.Type=科室下拉列表DEPT_CODE.X=644DEPT_CODE.Y=54DEPT_CODE.Width=84DEPT_CODE.Height=22DEPT_CODE.Text=TButtonDEPT_CODE.showID=YDEPT_CODE.showName=YDEPT_CODE.showText=NDEPT_CODE.showValue=NDEPT_CODE.showPy1=NDEPT_CODE.showPy2=NDEPT_CODE.Editable=YDEPT_CODE.Tip=科室DEPT_CODE.TableShowList=nameDEPT_CODE.ExpandWidth=20DEPT_CODE.OpdFitFlg=DEPT_CODE.FinalFlg=YDEPT_CODE.Visible=YtPanel_1.Type=TPaneltPanel_1.X=3tPanel_1.Y=1tPanel_1.Width=1018tPanel_1.Height=125tPanel_1.Border=组|基本信息tPanel_1.AutoX=YtPanel_1.AutoWidth=YtPanel_1.AutoW=NtPanel_1.AutoY=YtPanel_1.Item=tLabel_0;START_DATE;tLabel_1;END_DATE;tLabel_2;MR_NO;PAT_NAME;tLabel_3;COMPANY_CODE;tLabel_4;CONTRACT_CODE;tLabel_5;START_SEQ_NO;tLabel_6;END_SEQ_NO;ALLCHECK;UNPRINT;PRINTED;ALLPRINT;tLabel;DEPT_CODEtPanel_1.AutoH=NtPanel_1.AutoSize=3DEPT_CODE.Type=科室DEPT_CODE.X=342DEPT_CODE.Y=91DEPT_CODE.Width=182DEPT_CODE.Height=23DEPT_CODE.Text=DEPT_CODE.HorizontalAlignment=2DEPT_CODE.PopupMenuHeader=代码,100;名称,100DEPT_CODE.PopupMenuWidth=300DEPT_CODE.PopupMenuHeight=300DEPT_CODE.FormatType=comboDEPT_CODE.ShowDownButton=YDEPT_CODE.Tip=科室DEPT_CODE.ShowColumnList=NAMEDEPT_CODE.ClassIfy=DEPT_CODE.HisOneNullRow=YDEPT_CODE.Action=tLabel.Type=TLabeltLabel.X=307tLabel.Y=95tLabel.Width=42tLabel.Height=15tLabel.Text=科室ALLPRINT.Type=TRadioButtonALLPRINT.X=218ALLPRINT.Y=91ALLPRINT.Width=60ALLPRINT.Height=22ALLPRINT.Text=全部ALLPRINT.Group=ALLPRINT.Selected=NALLPRINT.Action=onQueryPRINTED.Type=TRadioButtonPRINTED.X=148PRINTED.Y=91PRINTED.Width=72PRINTED.Height=22PRINTED.Text=已打印PRINTED.Group=PRINTED.Action=onQueryUNPRINT.Type=TRadioButtonUNPRINT.X=80UNPRINT.Y=91UNPRINT.Width=72UNPRINT.Height=22UNPRINT.Text=未打印UNPRINT.Group=UNPRINT.Selected=YUNPRINT.Action=onQueryALLCHECK.Type=TCheckBoxALLCHECK.X=15ALLCHECK.Y=91ALLCHECK.Width=55ALLCHECK.Height=22ALLCHECK.Text=全选ALLCHECK.Action=onSelAllEND_SEQ_NO.Type=TTextFieldEND_SEQ_NO.X=708END_SEQ_NO.Y=60END_SEQ_NO.Width=77END_SEQ_NO.Height=22END_SEQ_NO.Text=tLabel_6.Type=TLabeltLabel_6.X=689tLabel_6.Y=64tLabel_6.Width=19tLabel_6.Height=15tLabel_6.Text=至START_SEQ_NO.Type=TTextFieldSTART_SEQ_NO.X=605START_SEQ_NO.Y=60START_SEQ_NO.Width=77START_SEQ_NO.Height=22START_SEQ_NO.Text=tLabel_5.Type=TLabeltLabel_5.X=544tLabel_5.Y=64tLabel_5.Width=66tLabel_5.Height=15tLabel_5.Text=员工序号CONTRACT_CODE.Type=TTextFormatCONTRACT_CODE.X=342CONTRACT_CODE.Y=60CONTRACT_CODE.Width=180CONTRACT_CODE.Height=22CONTRACT_CODE.Text=CONTRACT_CODE.FormatType=comboCONTRACT_CODE.showDownButton=YCONTRACT_CODE.PopupMenuHeader=合同代码,100;合同名称,100CONTRACT_CODE.PopupMenuFilter=ID,1;PY1,1CONTRACT_CODE.ShowColumnList=NAMECONTRACT_CODE.ValueColumn=IDCONTRACT_CODE.HisOneNullRow=NCONTRACT_CODE.HorizontalAlignment=2CONTRACT_CODE.PopupMenuWidth=300CONTRACT_CODE.PopupMenuHeight=300tLabel_4.Type=TLabeltLabel_4.X=280tLabel_4.Y=64tLabel_4.Width=66tLabel_4.Height=15tLabel_4.Text=合同名称COMPANY_CODE.Type=健康检查团体下拉区域COMPANY_CODE.X=82COMPANY_CODE.Y=60COMPANY_CODE.Width=180COMPANY_CODE.Height=22COMPANY_CODE.Text=COMPANY_CODE.HorizontalAlignment=2COMPANY_CODE.PopupMenuHeader=代码,100;名称,100COMPANY_CODE.PopupMenuWidth=300COMPANY_CODE.PopupMenuHeight=300COMPANY_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1COMPANY_CODE.FormatType=comboCOMPANY_CODE.ShowDownButton=YCOMPANY_CODE.Tip=健康检查团体COMPANY_CODE.ShowColumnList=NAMECOMPANY_CODE.Action=onCompanyChooseCOMPANY_CODE.HisOneNullRow=YtLabel_3.Type=TLabeltLabel_3.X=20tLabel_3.Y=64tLabel_3.Width=66tLabel_3.Height=15tLabel_3.Text=团体名称PAT_NAME.Type=TTextFieldPAT_NAME.X=624PAT_NAME.Y=25PAT_NAME.Width=77PAT_NAME.Height=22PAT_NAME.Text=PAT_NAME.Enabled=NMR_NO.Type=TTextFieldMR_NO.X=519MR_NO.Y=25MR_NO.Width=103MR_NO.Height=22MR_NO.Text=MR_NO.Action=onQuerytLabel_2.Type=TLabeltLabel_2.X=461tLabel_2.Y=25tLabel_2.Width=60tLabel_2.Height=22tLabel_2.Text=病案号tLabel_2.VerticalAlignment=0tLabel_2.HorizontalAlignment=0END_DATE.Type=TTextFormatEND_DATE.X=260END_DATE.Y=25END_DATE.Width=160END_DATE.Height=22END_DATE.Text=TTextFormatEND_DATE.FormatType=dateEND_DATE.Format=yyyy/MM/dd HH:mm:ssEND_DATE.showDownButton=YtLabel_1.Type=TLabeltLabel_1.X=244tLabel_1.Y=25tLabel_1.Width=16tLabel_1.Height=22tLabel_1.Text=～START_DATE.Type=TTextFormatSTART_DATE.X=82START_DATE.Y=25START_DATE.Width=160START_DATE.Height=22START_DATE.Text=TTextFormatSTART_DATE.FormatType=dateSTART_DATE.Format=yyyy/MM/dd HH:mm:ssSTART_DATE.showDownButton=YtLabel_0.Type=TLabeltLabel_0.X=19tLabel_0.Y=25tLabel_0.Width=60tLabel_0.Height=22tLabel_0.Text=申请日期