## TBuilder Config File ## Title:## Company:JavaHis## Author:lij 2017.05.18## version 1.0#<Type=TFrame>UI.Title=住院药嘱总数统计报表UI.MenuConfig=%ROOT%\config\ind\INDMedTotalMenu.xUI.Width=1024UI.Height=748UI.toolbar=YUI.controlclassname=com.javahis.ui.ind.INDMedTotalControlUI.item=tPanel_0;TABLEUI.layout=nullUI.TopToolBar=YUI.TopMenu=YTABLE.Type=TTableTABLE.X=5TABLE.Y=73TABLE.Width=81TABLE.Height=81TABLE.SpacingRow=1TABLE.RowHeight=20TABLE.AutoWidth=YTABLE.AutoX=YTABLE.AutoHeight=YTABLE.Header=科室,150;医嘱总数,120TABLE.ParmMap=DEPT_CHN_DESC;TOT_TOTALTABLE.LockColumns=allTABLE.ColumnHorizontalAlignmentData=0,left;1,rightTABLE.RowSelectionAllowed=NtPanel_0.Type=TPaneltPanel_0.X=2tPanel_0.Y=1tPanel_0.Width=1017tPanel_0.Height=66tPanel_0.Border=组|查询条件tPanel_0.AutoWidth=YtPanel_0.Item=科室;组织类别_0;开始时间;START_DATE;tLabel_5;END_DATE;DEPT_CODE;tLabel_7;BIRTH_FLG;BIRTH_DATEBIRTH_DATE.Type=TTextFormatBIRTH_DATE.X=815BIRTH_DATE.Y=26BIRTH_DATE.Width=110BIRTH_DATE.Height=20BIRTH_DATE.Text=BIRTH_DATE.FormatType=dateBIRTH_DATE.Format=yyyy/MM/ddBIRTH_DATE.showDownButton=YBIRTH_FLG.Type=TComboBoxBIRTH_FLG.X=755BIRTH_FLG.Y=25BIRTH_FLG.Width=47BIRTH_FLG.Height=23BIRTH_FLG.Text=TButtonBIRTH_FLG.showID=YBIRTH_FLG.Editable=YBIRTH_FLG.StringData=[[id,name],[],[>,0],[<,1],[=,2],[>=,3],[<=,4]]tLabel_7.Type=TLabeltLabel_7.X=689tLabel_7.Y=29tLabel_7.Width=64tLabel_7.Height=15tLabel_7.Text=出生日期tLabel_7.Color=蓝DEPT_CODE.Type=科室DEPT_CODE.X=502DEPT_CODE.Y=26DEPT_CODE.Width=158DEPT_CODE.Height=23DEPT_CODE.Text=DEPT_CODE.HorizontalAlignment=2DEPT_CODE.PopupMenuHeader=代码,100;名称,100DEPT_CODE.PopupMenuWidth=300DEPT_CODE.PopupMenuHeight=300DEPT_CODE.FormatType=comboDEPT_CODE.ShowDownButton=YDEPT_CODE.Tip=科室DEPT_CODE.ShowColumnList=NAMEDEPT_CODE.HisOneNullRow=YEND_DATE.Type=TTextFormatEND_DATE.X=278END_DATE.Y=28END_DATE.Width=168END_DATE.Height=20END_DATE.Text=END_DATE.FormatType=dateEND_DATE.Format=yyyy/MM/dd HH:mm:ssEND_DATE.showDownButton=YtLabel_5.Type=TLabeltLabel_5.X=257tLabel_5.Y=30tLabel_5.Width=18tLabel_5.Height=15tLabel_5.Text=至tLabel_5.Color=蓝tLabel_5.IconName=START_DATE.Type=TTextFormatSTART_DATE.X=84START_DATE.Y=28START_DATE.Width=168START_DATE.Height=20START_DATE.Text=START_DATE.FormatType=dateSTART_DATE.Format=yyyy/MM/dd HH:mm:ssSTART_DATE.showDownButton=Y开始时间.Type=TLabel开始时间.X=21开始时间.Y=30开始时间.Width=61开始时间.Height=15开始时间.Text=统计区间开始时间.Color=蓝DEPT_CHN_DESC.Type=科室DEPT_CHN_DESC.X=501DEPT_CHN_DESC.Y=26DEPT_CHN_DESC.Width=138DEPT_CHN_DESC.Height=23DEPT_CHN_DESC.Text=DEPT_CHN_DESC.HorizontalAlignment=2DEPT_CHN_DESC.PopupMenuHeader=代码,100;名称,100DEPT_CHN_DESC.PopupMenuWidth=300DEPT_CHN_DESC.PopupMenuHeight=300DEPT_CHN_DESC.FormatType=comboDEPT_CHN_DESC.ShowDownButton=YDEPT_CHN_DESC.Tip=科室DEPT_CHN_DESC.ShowColumnList=NAMEDEPT_CHN_DESC.DynamicDownload=NDEPT_CHN_DESC.HisOneNullRow=Y组织类别_0.Type=组织类别组织类别_0.X=106组织类别_0.Y=30科室.Type=TLabel科室.X=469科室.Y=30科室.Width=72科室.Height=15科室.Text=科室科室.Color=蓝