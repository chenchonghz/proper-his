## TBuilder Config File ## Title:## Company:JavaHis## Author:yufh 2015.03.20## version 1.0#<Type=TFrame>UI.Title=科室护士单次执行统计UI.MenuConfig=%ROOT%\config\odi\ODISingleExeStatisticsMenu.xUI.Width=1024UI.Height=748UI.toolbar=YUI.controlclassname=com.javahis.ui.odi.ODISingleExeStatistics_1ControlUI.item=tPanel_1;tPanel_3UI.layout=nullUI.TopMenu=YUI.TopToolBar=YUI.FocusList=NAMEtPanel_3.Type=TPaneltPanel_3.X=6tPanel_3.Y=61tPanel_3.Width=1013tPanel_3.Height=682tPanel_3.Border=组tPanel_3.AutoWidth=YtPanel_3.AutoHeight=YtPanel_3.Item=TABLETABLE.Type=TTableTABLE.X=6TABLE.Y=7TABLE.Width=1000TABLE.Height=670TABLE.SpacingRow=1TABLE.RowHeight=20TABLE.AutoWidth=YTABLE.AutoHeight=YTABLE.Header=统计日期,100;科室,140,DEPT_CODE;应执行数,100;实际执行数,100;执行比(%),100;医嘱类型,120TABLE.LockColumns=0,1,2,3,4,5TABLE.ColumnHorizontalAlignmentData=0,left;1,left;2,right;3,right;4,right;5,leftTABLE.ParmMap=ORDER_DATE;DEPT_CODE;ACCOUNT_NUM;EXEC_ACCOUNT_NUM;SURPLUS_COUNT;OREDER_TYPETABLE.DoubleClickedAction=onSelectTABLE.Item=DEPT_CODEtPanel_1.Type=TPaneltPanel_1.X=6tPanel_1.Y=7tPanel_1.Width=1013tPanel_1.Height=49tPanel_1.Border=组tPanel_1.AutoWidth=YtPanel_1.Item=tLabel_0;tLabel_1;tLabel_2;START_DATE;END_DATE;DEPT_CODE;tLabel_3;ORDER_TYPEORDER_TYPE.Type=TComboBoxORDER_TYPE.X=684ORDER_TYPE.Y=12ORDER_TYPE.Width=118ORDER_TYPE.Height=23ORDER_TYPE.Text=TButtonORDER_TYPE.showID=NORDER_TYPE.Editable=YORDER_TYPE.StringData=[[id,name],[,],[1,检验],[2,药品]]ORDER_TYPE.ShowName=YtLabel_3.Type=TLabeltLabel_3.X=606tLabel_3.Y=16tLabel_3.Width=64tLabel_3.Height=15tLabel_3.Text=医嘱类型DEPT_CODE.Type=科室DEPT_CODE.X=470DEPT_CODE.Y=12DEPT_CODE.Width=124DEPT_CODE.Height=23DEPT_CODE.Text=DEPT_CODE.HorizontalAlignment=2DEPT_CODE.PopupMenuHeader=代码,100;名称,100DEPT_CODE.PopupMenuWidth=300DEPT_CODE.PopupMenuHeight=300DEPT_CODE.FormatType=comboDEPT_CODE.ShowDownButton=YDEPT_CODE.Tip=科室DEPT_CODE.ShowColumnList=NAMEDEPT_CODE.HisOneNullRow=YDEPT_CODE.FinalFlg=YDEPT_CODE.IpdFitFlg=YDEPT_CODE.ClassIfy=0END_DATE.Type=TTextFormatEND_DATE.X=301END_DATE.Y=14END_DATE.Width=111END_DATE.Height=20END_DATE.Text=END_DATE.FormatType=dateEND_DATE.Format=yyyy/MM/ddEND_DATE.showDownButton=YSTART_DATE.Type=TTextFormatSTART_DATE.X=93START_DATE.Y=13START_DATE.Width=114START_DATE.Height=20START_DATE.Text=START_DATE.FormatType=dateSTART_DATE.Format=yyyy/MM/ddSTART_DATE.showDownButton=YtLabel_2.Type=TLabeltLabel_2.X=425tLabel_2.Y=17tLabel_2.Width=39tLabel_2.Height=15tLabel_2.Text=科室tLabel_1.Type=TLabeltLabel_1.X=226tLabel_1.Y=16tLabel_1.Width=64tLabel_1.Height=15tLabel_1.Text=结束日期tLabel_0.Type=TLabeltLabel_0.X=16tLabel_0.Y=16tLabel_0.Width=64tLabel_0.Height=15tLabel_0.Text=开始日期