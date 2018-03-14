## TBuilder Config File ## Title:统计## Company:JavaHis## Author:WangM 2010.09.09## version 1.0#<Type=TFrame>UI.Title=病患就诊分析UI.MenuConfig=%ROOT%\config\reg\MedStatisticsMenu.xUI.Width=1024UI.Height=748UI.toolbar=YUI.controlclassname=com.javahis.ui.reg.MedStatistiscControlUI.item=ST;EN;TABLE;tLabel_0;tLabel_1;ADM_TYPE;tLabel_2;tLabel_3;DEPT_CODE;tLabel_4;OPERATOR;CLINICTYPE_CODE;SEX_CODE;NATION_CODE;tLabel_6;REGION_CODE;S_TIME;E_TIMEUI.layout=nullUI.TopMenu=YUI.ShowMenu=YUI.TopToolBar=YE_TIME.Type=TTextFieldE_TIME.X=690E_TIME.Y=19E_TIME.Width=67E_TIME.Height=22E_TIME.Text=E_TIME.Enabled=NS_TIME.Type=TTextFieldS_TIME.X=488S_TIME.Y=19S_TIME.Width=67S_TIME.Height=22S_TIME.Text=00:00:00S_TIME.Enabled=NREGION_CODE.Type=区域下拉列表REGION_CODE.X=51REGION_CODE.Y=18REGION_CODE.Width=130REGION_CODE.Height=23REGION_CODE.Text=TButtonREGION_CODE.showID=YREGION_CODE.showName=YREGION_CODE.showText=NREGION_CODE.showValue=NREGION_CODE.showPy1=NREGION_CODE.showPy2=NREGION_CODE.Editable=YREGION_CODE.Tip=区域REGION_CODE.TableShowList=nameREGION_CODE.ModuleParmString=REGION_CODE.ModuleParmTag=REGION_CODE.ExpandWidth=80tLabel_6.Type=TLabeltLabel_6.X=14tLabel_6.Y=24tLabel_6.Width=46tLabel_6.Height=15tLabel_6.Text=区域:tLabel_6.Color=蓝NATION_CODE.Type=国籍下拉列表NATION_CODE.X=438NATION_CODE.Y=83NATION_CODE.Width=81NATION_CODE.Height=23NATION_CODE.Text=TButtonNATION_CODE.showID=YNATION_CODE.showName=YNATION_CODE.showText=NNATION_CODE.showValue=NNATION_CODE.showPy1=YNATION_CODE.showPy2=YNATION_CODE.Editable=YNATION_CODE.Tip=国籍下拉列表NATION_CODE.TableShowList=nameNATION_CODE.ModuleParmString=GROUP_ID:SYS_NATIONNATION_CODE.ModuleParmTag=SEX_CODE.Type=性别下拉列表SEX_CODE.X=330SEX_CODE.Y=84SEX_CODE.Width=81SEX_CODE.Height=23SEX_CODE.Text=TButtonSEX_CODE.showID=YSEX_CODE.showName=YSEX_CODE.showText=NSEX_CODE.showValue=NSEX_CODE.showPy1=YSEX_CODE.showPy2=YSEX_CODE.Editable=YSEX_CODE.Tip=性别SEX_CODE.TableShowList=nameSEX_CODE.ModuleParmString=GROUP_ID:SYS_SEXSEX_CODE.ModuleParmTag=CLINICTYPE_CODE.Type=号别下拉列表CLINICTYPE_CODE.X=217CLINICTYPE_CODE.Y=86CLINICTYPE_CODE.Width=81CLINICTYPE_CODE.Height=23CLINICTYPE_CODE.Text=TButtonCLINICTYPE_CODE.showID=YCLINICTYPE_CODE.showName=YCLINICTYPE_CODE.showText=NCLINICTYPE_CODE.showValue=NCLINICTYPE_CODE.showPy1=YCLINICTYPE_CODE.showPy2=YCLINICTYPE_CODE.Editable=YCLINICTYPE_CODE.Tip=号别CLINICTYPE_CODE.TableShowList=nameCLINICTYPE_CODE.ModuleParmTag=OPERATOR.Type=人员OPERATOR.X=944OPERATOR.Y=20OPERATOR.Width=81OPERATOR.Height=22OPERATOR.Text=OPERATOR.HorizontalAlignment=2OPERATOR.PopupMenuHeader=代码,100;名称,100OPERATOR.PopupMenuWidth=300OPERATOR.PopupMenuHeight=300OPERATOR.PopupMenuFilter=ID,1;NAME,1;PY1,1OPERATOR.FormatType=comboOPERATOR.ShowDownButton=YOPERATOR.Tip=人员OPERATOR.ShowColumnList=NAMEOPERATOR.HisOneNullRow=YOPERATOR.Dept=<DEPT_CODE>tLabel_4.Type=TLabeltLabel_4.X=903tLabel_4.Y=20tLabel_4.Width=37tLabel_4.Height=22tLabel_4.Text=医师:tLabel_4.Color=蓝DEPT_CODE.Type=科室DEPT_CODE.X=807DEPT_CODE.Y=20DEPT_CODE.Width=81DEPT_CODE.Height=22DEPT_CODE.Text=DEPT_CODE.HorizontalAlignment=2DEPT_CODE.PopupMenuHeader=代码,100;名称,100DEPT_CODE.PopupMenuWidth=300DEPT_CODE.PopupMenuHeight=300DEPT_CODE.FormatType=comboDEPT_CODE.ShowDownButton=YDEPT_CODE.Tip=科室DEPT_CODE.ShowColumnList=NAMEDEPT_CODE.HisOneNullRow=YDEPT_CODE.FinalFlg=YDEPT_CODE.OpdFitFlg=YDEPT_CODE.EmgFitFlg=YDEPT_CODE.ClassIfy=0DEPT_CODE.Action=OPERATOR|onQuerytLabel_3.Type=TLabeltLabel_3.X=764tLabel_3.Y=20tLabel_3.Width=39tLabel_3.Height=22tLabel_3.Text=科室:tLabel_3.Color=蓝tLabel_2.Type=TLabeltLabel_2.X=196tLabel_2.Y=20tLabel_2.Width=49tLabel_2.Height=22tLabel_2.Text=门急别:tLabel_2.Color=蓝ADM_TYPE.Type=TComboBoxADM_TYPE.X=248ADM_TYPE.Y=19ADM_TYPE.Width=81ADM_TYPE.Height=23ADM_TYPE.Text=TButtonADM_TYPE.showID=YADM_TYPE.Editable=YADM_TYPE.StringData=[[id,name],[,],[O,门诊],[E,急诊]]ADM_TYPE.TableShowList=nameADM_TYPE.ShowName=YtLabel_1.Type=TLabeltLabel_1.X=559tLabel_1.Y=19tLabel_1.Width=20tLabel_1.Height=22tLabel_1.Text=～tLabel_0.Type=TLabeltLabel_0.X=338tLabel_0.Y=20tLabel_0.Width=36tLabel_0.Height=22tLabel_0.Text=日期:tLabel_0.Color=蓝TABLE.Type=TTableTABLE.X=3TABLE.Y=54TABLE.Width=81TABLE.Height=690TABLE.SpacingRow=1TABLE.RowHeight=20TABLE.AutoWidth=YTABLE.AutoHeight=YTABLE.Header=区域,120;科室,120;医生代码,100;医生姓名,100;病案号,100;患者姓名,100;医嘱代码,120;医嘱名称,160;单价,100,double,#########0.000;数量,100,double;总价,100,double,#########0.000;开单日期,160,Timestamp,yyyy/MM/dd HH:mm:ss;账务日期,160,Timestamp,yyyy/MM/dd HH:mm:ss;审核日期,160,Timestamp,yyyy/MM/dd HH:mm:ss;配药日期,160,Timestamp,yyyy/MM/dd HH:mm:ss;发药日期,160,Timestamp,yyyy/MM/dd HH:mm:ss;煎药日期,160,Timestamp,yyyy/MM/dd HH:mm:ss;条码打印时间,160,Timestamp,yyyy/MM/dd HH:mm:ss;预约时间,160,Timestamp,yyyy/MM/dd HH:mm:ss;到检时间,160,Timestamp,yyyy/MM/dd HH:mm:ss;检查时间,160,Timestamp,yyyy/MM/dd HH:mm:ss;报告时间,160,Timestamp,yyyy/MM/dd HH:mm:ss;审核时间,160,Timestamp,yyyy/MM/dd HH:mm:ss;医令细分类,100TABLE.ParmMap=REGION_CHN_ABN;DEPT_CHN_DESC;DR_CODE;USER_NAME;MR_NO;PAT_NAME;ORDER_CODE;ORDER_DESC;OWN_PRICE;DOSAGE_QTY;AR_AMT;ORDER_DATE;BILL_DATE;PHA_CHECK_DATE;PHA_DOSAGE_DATE;PHA_DISPENSE_DATE;DECOCT_DATE;PRINT_DATE;RESERVED_DATE;REGISTER_DATE;INSPECT_DATE;REPORT_DATE;EXAMINE_DATE;ORDER_CAT1_DESCTABLE.LockColumns=allTABLE.RightClickedAction=TABLE.Item=TABLE.ColumnHorizontalAlignmentData=0,left;1,left;2,right;3,left;4,right;5,left;6,right;7,right;8,right;9,right;10,right;11,right;12,right;13,right;14,right;15,right;16,right;17,right;18,right;19,right;520,right;EN.Type=TTextFormatEN.X=574EN.Y=19EN.Width=110EN.Height=22EN.Text=TTextFormatEN.showDownButton=YEN.FormatType=dateEN.Format=yyyy/MM/ddST.Type=TTextFormatST.X=374ST.Y=19ST.Width=110ST.Height=22ST.Text=TTextFormatST.showDownButton=YST.FormatType=dateST.Format=yyyy/MM/dd