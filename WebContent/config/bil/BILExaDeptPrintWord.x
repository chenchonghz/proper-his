## TBuilder Config File ## Title:## Company:JavaHis## Author:cwl 2012.06.15## version 1.0#<Type=TFrame>UI.Title=科室收入统计UI.MenuConfig=%ROOT%\config\bil\BILExaDeptPrintWordMenu.xUI.Width=1490UI.Height=789UI.toolbar=YUI.controlclassname=com.javahis.ui.bil.BILExaDeptPrintWordControlUI.item=tPanel_0;tPanel_1UI.layout=nullUI.X=5UI.Y=5UI.AutoX=YUI.AutoWidth=YUI.AutoY=YUI.ShowMenu=YUI.TopMenu=YUI.TopToolBar=YUI.ShowTitle=YtPanel_1.Type=TPaneltPanel_1.X=5tPanel_1.Y=86tPanel_1.Width=1480tPanel_1.Height=617tPanel_1.Border=组|查询结果tPanel_1.AutoX=YtPanel_1.AutoY=NtPanel_1.AutoWidth=YtPanel_1.Item=TabletPanel_1.AutoW=NtPanel_1.AutoH=NtPanel_1.AutoHeight=YTable.Type=TTableTable.X=10Table.Y=24Table.Width=618Table.Height=582Table.SpacingRow=1Table.RowHeight=20Table.Header=//Table.Item=EXE_DEPT_CODE;COST_CENTER_CHN_DESC;SUM(TOT_AMT)Table.Item=Table.AutoX=YTable.AutoY=YTable.AutoWidth=YTable.ParmMap=EXE_DEPT_CODE;COST_CENTER_CHN_DESC;TOT_AMTTable.LockColumns=allTable.ColumnHorizontalAlignmentData=0,left;1,right;2,right;3,right;4,right;5,right;6,right;7,right;8,right;9,right;10,right;11,right,12,right;13,right;14,rightTable.AutoHeight=YtPanel_0.Type=TPaneltPanel_0.X=5tPanel_0.Y=5tPanel_0.Width=1480tPanel_0.Height=81tPanel_0.Border=组|查询条件tPanel_0.AutoY=YtPanel_0.AutoX=YtPanel_0.AutoWidth=YtPanel_0.Item=tLabel_2;S_DATE;tLabel_3;E_DATEE_DATE.Type=TTextFormatE_DATE.X=330E_DATE.Y=31E_DATE.Width=119E_DATE.Height=20E_DATE.Text=TTextFormatE_DATE.showDownButton=YE_DATE.FormatType=dateE_DATE.Format=yyyy/MM/ddtLabel_3.Type=TLabeltLabel_3.X=257tLabel_3.Y=34tLabel_3.Width=72tLabel_3.Height=15tLabel_3.Text=结束时间：tLabel_3.Color=蓝S_DATE.Type=TTextFormatS_DATE.X=99S_DATE.Y=32S_DATE.Width=119S_DATE.Height=20S_DATE.Text=TTextFormatS_DATE.showDownButton=YS_DATE.FormatType=dateS_DATE.Format=yyyy/MM/ddtLabel_2.Type=TLabeltLabel_2.X=25tLabel_2.Y=33tLabel_2.Width=72tLabel_2.Height=15tLabel_2.Text=开始时间：tLabel_2.Color=蓝