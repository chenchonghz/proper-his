## TBuilder Config File ## Title:## Company:JavaHis## Author:李明 2012.02.06## version 1.0#<Type=TFrame>UI.Title=医保结算患者统计列表UI.MenuConfig=%ROOT%\config\ins\INSPatientSettlementMenu.xUI.Width=1490UI.Height=1490UI.toolbar=YUI.controlclassname=com.javahis.ui.ins.INSPatientSettlementControlUI.item=tPanel_4;tPanel_5UI.layout=nullUI.Name=UI.TopToolBar=YUI.TopMenu=YUI.ShowMenu=YUI.X=5UI.AutoX=YUI.Y=5UI.AutoY=YUI.AutoWidth=YUI.AutoHeight=YUI.AutoW=YtPanel_5.Type=TPaneltPanel_5.X=5tPanel_5.Y=68tPanel_5.Width=1480tPanel_5.Height=1417tPanel_5.Border=组|查询结果tPanel_5.AutoWidth=YtPanel_5.AutoHeight=YtPanel_5.Item=TTABLETTABLE.Type=TTableTTABLE.X=9TTABLE.Y=23TTABLE.Width=829TTABLE.Height=593TTABLE.SpacingRow=1TTABLE.RowHeight=20TTABLE.LockColumns=allTTABLE.Header=住院号,120;姓名,120;住院时间,120;出院时间,120;发生金额,120,double,#########0.00;个人自付,120,double,#########0.00;申报金额,120,double,#########0.00;药品费,120,double,#########0.00;贵重药费,120,double,#########0.00;药品费比例,120;材料费,120,double,#########0.00;贵重材料费,120,double,#########0.00;材料费比例,120TTABLE.AutoWidth=YTTABLE.AutoHeight=YTTABLE.ParmMap=MR_NO;PAT_NAME;IN_DATE;DS_DATE;TOTAL_AMT;OWN_AMT;NHI_AMT;PHA_AMT;SPHA;SPACE1;MATERIAL_AMT;SMATERIAL_AMT;SPACE2TTABLE.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,left;4,right;5,right;6,right;7,right;8,right;9,right;10,right;11,right;12,righttPanel_4.Type=TPaneltPanel_4.X=5tPanel_4.Y=5tPanel_4.Width=1480tPanel_4.Height=65tPanel_4.Border=组|查询条件tPanel_4.AutoY=NtPanel_4.Item=tLabel_2;START_DATE;tLabel_5;END_DATE;tLabel_7;STATION_CODEtPanel_4.AutoWidth=YSTATION_CODE.Type=病区STATION_CODE.X=581STATION_CODE.Y=25STATION_CODE.Width=103STATION_CODE.Height=23STATION_CODE.Text=STATION_CODE.HorizontalAlignment=2STATION_CODE.PopupMenuHeader=代码,100;名称,100STATION_CODE.PopupMenuWidth=300STATION_CODE.PopupMenuHeight=300STATION_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1STATION_CODE.FormatType=comboSTATION_CODE.ShowDownButton=YSTATION_CODE.Tip=病区STATION_CODE.ShowColumnList=NAMEtLabel_7.Type=TLabeltLabel_7.X=526tLabel_7.Y=30tLabel_7.Width=53tLabel_7.Height=15tLabel_7.Text=护理站:tLabel_7.Color=蓝END_DATE.Type=TTextFormatEND_DATE.X=359END_DATE.Y=26END_DATE.Width=125END_DATE.Height=20END_DATE.Text=END_DATE.showDownButton=YEND_DATE.FormatType=dateEND_DATE.Format=yyyy/MM/ddtLabel_5.Type=TLabeltLabel_5.X=262tLabel_5.Y=29tLabel_5.Width=94tLabel_5.Height=15tLabel_5.Text=出院结束时间:tLabel_5.Color=蓝START_DATE.Type=TTextFormatSTART_DATE.X=130START_DATE.Y=26START_DATE.Width=119START_DATE.Height=20START_DATE.Text=START_DATE.FormatType=dateSTART_DATE.Format=yyyy/MM/ddSTART_DATE.HorizontalAlignment=0START_DATE.showDownButton=YtLabel_2.Type=TLabeltLabel_2.X=34tLabel_2.Y=30tLabel_2.Width=92tLabel_2.Height=15tLabel_2.Text=出院开始时间:tLabel_2.Color=蓝