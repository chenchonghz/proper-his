## TBuilder Config File ## Title:设备自动盘丹## Company:JavaHis## Author:yuhaibao 2012.11.14## version 1.0#<Type=TFrame>UI.Title=设备盘点UI.MenuConfig=%ROOT%\config\dev\DevStockCheck_Menu.xUI.Width=1024UI.Height=748UI.toolbar=YUI.controlclassname=com.javahis.ui.dev.DEV_StockCheckControlUI.item=tPanel_0UI.layout=nullUI.enTitle=UI.ShowMenu=YUI.TopMenu=YUI.TopToolBar=YtPanel_0.Type=TPaneltPanel_0.X=5tPanel_0.Y=4tPanel_0.Width=1005tPanel_0.Height=701tPanel_0.Border=组tPanel_0.Item=tPanel_1;tPanel_3tPanel_3.Type=TPaneltPanel_3.X=9tPanel_3.Y=143tPanel_3.Width=984tPanel_3.Height=546tPanel_3.Border=组|序号管理tPanel_3.Item=TABLETABLE.Type=TTableTABLE.X=8TABLE.Y=21TABLE.Width=955TABLE.Height=508TABLE.SpacingRow=1TABLE.RowHeight=20TABLE.Header=盘,30,BOOLEAN;设备编码,150;设备名称,150;规格,150;库存量,100;实际盘点数量,100;入库日期,150TABLE.LockColumns=1,2,3,6,7TABLE.ParmMap=FLG;DEV_CODE;DEV_CHN_DESC;SPECIFICATION;QTY;REAL_NUM;INWAREHOUSE_DATETABLE.StringData=tPanel_1.Type=TPaneltPanel_1.X=11tPanel_1.Y=13tPanel_1.Width=981tPanel_1.Height=122tPanel_1.Border=组|tPanel_1.Item=tLabel_7;tLabel_9;tLabel_10;tLabel_11;STOCK_0;CHECKQTY_DATE;DEV_CODE;DEV_CHN_DESC;START;END;LOC_CODE;DEPT_CODEDEPT_CODE.Type=成本中心下拉区域DEPT_CODE.X=89DEPT_CODE.Y=11DEPT_CODE.Width=109DEPT_CODE.Height=23DEPT_CODE.Text=DEPT_CODE.HorizontalAlignment=2DEPT_CODE.PopupMenuHeader=代码,100;名称,100DEPT_CODE.PopupMenuWidth=300DEPT_CODE.PopupMenuHeight=300DEPT_CODE.FormatType=comboDEPT_CODE.ShowDownButton=YDEPT_CODE.Tip=成本中心DEPT_CODE.ShowColumnList=NAMELOC_CODE.Type=位置LOC_CODE.X=89LOC_CODE.Y=48LOC_CODE.Width=108LOC_CODE.Height=23LOC_CODE.Text=LOC_CODE.HorizontalAlignment=2LOC_CODE.PopupMenuHeader=代码,100;名称,100LOC_CODE.PopupMenuWidth=300LOC_CODE.PopupMenuHeight=300LOC_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1LOC_CODE.FormatType=comboLOC_CODE.ShowDownButton=YLOC_CODE.Tip=位置LOC_CODE.ShowColumnList=NAMEEND.Type=TButtonEND.X=411END.Y=88END.Width=101END.Height=23END.Text=终止盘点START.Type=TButtonSTART.X=209START.Y=87START.Width=100START.Height=23START.Text=自动盘点DEV_CHN_DESC.Type=TTextFieldDEV_CHN_DESC.X=401DEV_CHN_DESC.Y=44DEV_CHN_DESC.Width=206DEV_CHN_DESC.Height=25DEV_CHN_DESC.Text=DEV_CHN_DESC.Enabled=NDEV_CODE.Type=TTextFieldDEV_CODE.X=285DEV_CODE.Y=45DEV_CODE.Width=110DEV_CODE.Height=25DEV_CODE.Text=CHECKQTY_DATE.Type=TTextFormatCHECKQTY_DATE.X=282CHECKQTY_DATE.Y=7CHECKQTY_DATE.Width=117CHECKQTY_DATE.Height=25CHECKQTY_DATE.Text=CHECKQTY_DATE.Format=yyyy/MM/ddCHECKQTY_DATE.FormatType=dateCHECKQTY_DATE.showDownButton=YSTOCK_0.Type=TCheckBoxSTOCK_0.X=16STOCK_0.Y=89STOCK_0.Width=125STOCK_0.Height=23STOCK_0.Text=检查库存不为0tLabel_11.Type=TLabeltLabel_11.X=212tLabel_11.Y=47tLabel_11.Width=97tLabel_11.Height=20tLabel_11.Text=设备编码tLabel_10.Type=TLabeltLabel_10.X=209tLabel_10.Y=8tLabel_10.Width=97tLabel_10.Height=20tLabel_10.Text=盘点时间tLabel_9.Type=TLabeltLabel_9.X=20tLabel_9.Y=51tLabel_9.Width=72tLabel_9.Height=15tLabel_9.Text=存放地点tLabel_7.Type=TLabeltLabel_7.X=19tLabel_7.Y=14tLabel_7.Width=72tLabel_7.Height=15tLabel_7.Text=盘点部门