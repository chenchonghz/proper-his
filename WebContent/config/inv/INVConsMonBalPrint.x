## TBuilder Config File ## Title:## Company:JavaHis## Author:黄婷婷 2013.05.03## version 1.0#<Type=TFrame>UI.Title=物资消耗月结报表UI.MenuConfig=%ROOT%\config\inv\INVConsMonBalPrintMenu.xUI.Width=1024UI.Height=748UI.toolbar=YUI.controlclassname=com.javahis.ui.inv.INVConsMonBalPrintControlUI.item=tPanel_0;TABLE;UNITUI.layout=nullUI.TopMenu=YUI.TopToolBar=YUNIT.Type=计量单位UNIT.X=134UNIT.Y=159UNIT.Width=81UNIT.Height=26UNIT.Text=UNIT.HorizontalAlignment=2UNIT.PopupMenuHeader=代码,100;名称,100UNIT.PopupMenuWidth=300UNIT.PopupMenuHeight=300UNIT.PopupMenuFilter=ID,1;NAME,1;PY1,1UNIT.FormatType=comboUNIT.ShowDownButton=YUNIT.Tip=计量单位UNIT.ShowColumnList=NAMETABLE.Type=TTableTABLE.X=6TABLE.Y=80TABLE.Width=1000TABLE.Height=663TABLE.SpacingRow=1TABLE.RowHeight=20TABLE.AutoWidth=YTABLE.AutoHeight=YTABLE.Header=物资编码,150;物资名称,250;规格,150;数量,100;库存单位,80,UNIT;单价,100,double,#####0.00;总价,100,double,#####0.0000;生产厂商,200TABLE.LockColumns=allTABLE.ColumnHorizontalAlignmentData=0,left;1,left;2,right;3,left;4,right;5,right;6,leftTABLE.ParmMap=INV_CODE;INV_CHN_DESC;DESCRIPTION;QTY;STOCK_UNIT;COST_PRICE;TOT_AMT;MAN_CHN_DESCTABLE.Item=UNITtPanel_0.Type=TPaneltPanel_0.X=5tPanel_0.Y=5tPanel_0.Width=1014tPanel_0.Height=70tPanel_0.AutoHeight=NtPanel_0.AutoWidth=YtPanel_0.Border=组tPanel_0.AutoX=YtPanel_0.AutoY=YtPanel_0.Item=tLabel_1;START_DATE;tLabel_2;END_DATE;DEPT;tLabel_5tLabel_5.Type=TLabeltLabel_5.X=500tLabel_5.Y=24tLabel_5.Width=72tLabel_5.Height=15tLabel_5.Text=科室：tLabel_5.Color=blueDEPT.Type=科室DEPT.X=538DEPT.Y=20DEPT.Width=120DEPT.Height=23DEPT.Text=DEPT.HorizontalAlignment=2DEPT.PopupMenuHeader=代码,100;名称,100DEPT.PopupMenuWidth=300DEPT.PopupMenuHeight=300DEPT.FormatType=comboDEPT.ShowDownButton=YDEPT.Tip=科室DEPT.ShowColumnList=NAMEEND_DATE.Type=TTextFormatEND_DATE.X=292END_DATE.Y=20END_DATE.Width=160END_DATE.Height=20END_DATE.Text=TTextFormatEND_DATE.Format=yyyy/MM/dd HH:mm:ssEND_DATE.FormatType=dateEND_DATE.showDownButton=YtLabel_2.Type=TLabeltLabel_2.X=264tLabel_2.Y=23tLabel_2.Width=21tLabel_2.Height=15tLabel_2.Text=～START_DATE.Type=TTextFormatSTART_DATE.X=95START_DATE.Y=20START_DATE.Width=160START_DATE.Height=20START_DATE.Text=TTextFormatSTART_DATE.Format=yyyy/MM/dd HH:mm:ssSTART_DATE.FormatType=dateSTART_DATE.showDownButton=YtLabel_1.Type=TLabeltLabel_1.X=24tLabel_1.Y=24tLabel_1.Width=72tLabel_1.Height=15tLabel_1.Text=统计区间tLabel_1.Color=blue