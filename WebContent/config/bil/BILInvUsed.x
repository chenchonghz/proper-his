# #  Title:门急诊挂号收费员日结报表# #  Description:门急诊挂号收费员日结报表# #  Copyright: Copyright (c) Javahis 2008# #  author wangl 2008.11.03#  version 1.0#<Type=TFrame>UI.Title=门急诊收费票据汇总表UI.MenuConfig=%ROOT%\config\bil\BILInvUsedMenu.xUI.Width=1024UI.Height=748UI.toolbar=YUI.controlclassname=com.javahis.ui.bil.BILInvUsedControlUI.item=START_DATE;END_DATE;TABLE;tPanel_0UI.layout=nullUI.TopMenu=YUI.TopToolBar=YtPanel_0.Type=TPaneltPanel_0.X=5tPanel_0.Y=5tPanel_0.Width=1014tPanel_0.Height=69tPanel_0.Border=凸tPanel_0.AutoY=YtPanel_0.AutoX=YtPanel_0.Item=tLabel_0;tLabel_1;tLabel_2;DEPTtPanel_0.AutoWidth=YtPanel_0.AutoHeight=NtPanel_0.AutoH=NDEPT.Type=科室DEPT.X=677DEPT.Y=22DEPT.Width=110DEPT.Height=23DEPT.Text=DEPT.HorizontalAlignment=2DEPT.PopupMenuHeader=代码,100;名称,100DEPT.PopupMenuWidth=300DEPT.PopupMenuHeight=300DEPT.FormatType=comboDEPT.ShowDownButton=YDEPT.Tip=科室DEPT.ShowColumnList=NAMEDEPT.HisOneNullRow=YtLabel_2.Type=TLabeltLabel_2.X=618tLabel_2.Y=26tLabel_2.Width=72tLabel_2.Height=15tLabel_2.Text=科室:tLabel_2.Color=蓝tLabel_1.Type=TLabeltLabel_1.X=321tLabel_1.Y=27tLabel_1.Width=72tLabel_1.Height=15tLabel_1.Text=结束时间:tLabel_1.Color=蓝tLabel_0.Type=TLabeltLabel_0.X=30tLabel_0.Y=27tLabel_0.Width=72tLabel_0.Height=15tLabel_0.Text=开始时间:tLabel_0.Color=蓝TABLE.Type=TTableTABLE.X=15TABLE.Y=78TABLE.Width=81TABLE.Height=665TABLE.SpacingRow=1TABLE.RowHeight=20TABLE.AutoX=YTABLE.AutoWidth=YTABLE.AutoHeight=YTABLE.ParmMap=RECP_TYPE;PRINT_USER;INV_NOS;INV_COUNTTABLE.Header=收据类别,80;收费员,100;票号,500;数量,100TABLE.LockColumns=allTABLE.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,rightEND_DATE.Type=TTextFormatEND_DATE.X=408END_DATE.Y=30END_DATE.Width=162END_DATE.Height=20END_DATE.Text=TTextFormatEND_DATE.showDownButton=YEND_DATE.FormatType=dateEND_DATE.Format=yyyy/MM/dd HH:mm:ssSTART_DATE.Type=TTextFormatSTART_DATE.X=115START_DATE.Y=30START_DATE.Width=162START_DATE.Height=20START_DATE.Text=START_DATE.showDownButton=YSTART_DATE.FormatType=dateSTART_DATE.Format=yyyy/MM/dd HH:mm:ss