<Type=TFrame>UI.Title=医技工作量统计UI.MenuConfig=%ROOT%\config\sta\STA_MED_WORK_Menu.xUI.Width=1024UI.Height=748UI.toolbar=YUI.controlclassname=com.javahis.ui.sta.STAMedWorkControlUI.item=TABLE;tLabel_0;tLabel_1;S_DATE;tLabel_2;E_DATE;DEGREE_CODE;DEPT_CODE;tLabel_3;MED_CLASSUI.layout=nullUI.TopMenu=YUI.TopToolBar=YUI.ShowMenu=NMED_CLASS.Type=TTextFormatMED_CLASS.X=704MED_CLASS.Y=22MED_CLASS.Width=159MED_CLASS.Height=20MED_CLASS.Text=MED_CLASS.showDownButton=YMED_CLASS.HisOneNullRow=YMED_CLASS.PopupMenuSQL=SELECT ID,CHN_DESC FROM SYS_DICTIONARY WHERE GROUP_ID = 'MED_CLASS' ORDER BY SEQMED_CLASS.PopupMenuHeader=代码,100;名称,100MED_CLASS.ShowColumnList=CHN_DESCMED_CLASS.ValueColumn=IDMED_CLASS.PopupMenuHeight=200MED_CLASS.FormatType=combotLabel_3.Type=TLabeltLabel_3.X=662tLabel_3.Y=26tLabel_3.Width=39tLabel_3.Height=15tLabel_3.Text=分类:tLabel_3.Color=blueDEPT_CODE.Type=成本中心下拉区域DEPT_CODE.X=495DEPT_CODE.Y=20DEPT_CODE.Width=147DEPT_CODE.Height=23DEPT_CODE.Text=DEPT_CODE.HorizontalAlignment=2DEPT_CODE.PopupMenuHeader=代码,100;名称,100DEPT_CODE.PopupMenuWidth=300DEPT_CODE.PopupMenuHeight=300DEPT_CODE.FormatType=comboDEPT_CODE.ShowDownButton=YDEPT_CODE.Tip=成本中心DEPT_CODE.ShowColumnList=NAMEDEPT_CODE.DeptGrade=3DEPT_CODE.HisOneNullRow=YDEGREE_CODE.Type=绩效类别下拉区域DEGREE_CODE.X=231DEGREE_CODE.Y=197DEGREE_CODE.Width=81DEGREE_CODE.Height=23DEGREE_CODE.Text=DEGREE_CODE.HorizontalAlignment=2DEGREE_CODE.PopupMenuHeader=代码,100;名称,100DEGREE_CODE.PopupMenuWidth=300DEGREE_CODE.PopupMenuHeight=300DEGREE_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1DEGREE_CODE.FormatType=comboDEGREE_CODE.ShowDownButton=YDEGREE_CODE.Tip=绩效类别DEGREE_CODE.ShowColumnList=NAMEDEGREE_CODE.HisOneNullRow=YE_DATE.Type=TTextFormatE_DATE.X=267E_DATE.Y=21E_DATE.Width=173E_DATE.Height=20E_DATE.Text=E_DATE.FormatType=dateE_DATE.Format=yyyy/MM/ddE_DATE.showDownButton=YtLabel_2.Type=TLabeltLabel_2.X=244tLabel_2.Y=24tLabel_2.Width=23tLabel_2.Height=15tLabel_2.Text=至tLabel_2.Color=blueS_DATE.Type=TTextFormatS_DATE.X=54S_DATE.Y=22S_DATE.Width=187S_DATE.Height=20S_DATE.Text=S_DATE.FormatType=dateS_DATE.Format=yyyy/MM/ddS_DATE.showDownButton=YtLabel_1.Type=TLabeltLabel_1.X=19tLabel_1.Y=27tLabel_1.Width=42tLabel_1.Height=15tLabel_1.Text=日期:tLabel_1.Color=蓝tLabel_0.Type=TLabeltLabel_0.X=453tLabel_0.Y=25tLabel_0.Width=44tLabel_0.Height=14tLabel_0.Text=科室:tLabel_0.Color=blueTABLE.Type=TTableTABLE.X=7TABLE.Y=76TABLE.Width=84TABLE.Height=665TABLE.SpacingRow=1TABLE.RowHeight=20TABLE.AutoWidth=YTABLE.AutoHeight=YTABLE.Header=科室,150;项目分类,150;绩效项目,200;难度系数,100;门诊,80;急诊,80;健检,80;住院,80;合计,100TABLE.ParmMap=EXEC_DEPT_CODE;MED_CLASS;DEGREE_CODE;DIFFICULTY_DEGREE;O;E;H;I;SUMTABLE.LockRows=TABLE.ColumnHorizontalAlignmentData= 0,left;1,left;2,left;3,left;4,right;5,left;6,left;7,left;8,left;9,leftTABLE.ClickedAction=TABLE.AutoModifyDataStore=NTABLE.LockColumns=allTABLE.Item=