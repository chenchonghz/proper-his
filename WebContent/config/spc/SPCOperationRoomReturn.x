## TBuilder Config File ## Title:## Company:JavaHis## Author:付文俊 2013.08.09## version 1.0#<Type=TFrame>UI.Title=麻精归还及回收UI.MenuConfig=%ROOT%\config\spc\SPCOperationRoomReturnMenu.xUI.Width=800UI.Height=600UI.toolbar=YUI.controlclassname=com.javahis.ui.spc.SPCOperationRoomReturnControlUI.item=PATH;Tpanel_0;tTabbedPane_1UI.layout=nullUI.TopMenu=YUI.TopToolBar=YUI.FocusList=DISPENSE_NO;TOXIC_IDtTabbedPane_1.Type=TTabbedPanetTabbedPane_1.X=8tTabbedPane_1.Y=74tTabbedPane_1.Width=779tTabbedPane_1.Height=493tTabbedPane_1.Item=PANEL_N;PANEL_YtTabbedPane_1.Name=归还tTabbedPane_1.ChangedAction=onTTabbedPaneChangePANEL_Y.Type=TPanelPANEL_Y.X=82PANEL_Y.Y=7PANEL_Y.Width=81PANEL_Y.Height=81PANEL_Y.Name=回收PANEL_Y.Item=TABLE_YTABLE_Y.Type=TTableTABLE_Y.X=5TABLE_Y.Y=4TABLE_Y.Width=764TABLE_Y.Height=455TABLE_Y.SpacingRow=1TABLE_Y.RowHeight=20TABLE_Y.Header=麻精流水号,100;药品名称,230;规格,120;批次,100;效期,100;单位,60TABLE_Y.ParmMap=TOXIC_ID;ORDER_DESC;SPECIFICATION;BATCH_NO;VALID_DATE;UNIT_CHN_DESC;DISPENSE_NOTABLE_Y.ClickedAction=onTableClickedTABLE_Y.LockColumns=ALLTABLE_Y.AutoHeight=YTABLE_Y.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,left;4,left;5,leftTABLE_Y.AutoWidth=YPANEL_N.Type=TPanelPANEL_N.X=125PANEL_N.Y=13PANEL_N.Width=81PANEL_N.Height=81PANEL_N.Name=归还PANEL_N.Item=TABLE_NPANEL_N.Enabled=NTABLE_N.Type=TTableTABLE_N.X=5TABLE_N.Y=4TABLE_N.Width=764TABLE_N.Height=455TABLE_N.SpacingRow=1TABLE_N.RowHeight=20TABLE_N.AutoWidth=YTABLE_N.AutoHeight=YTABLE_N.Header=麻精流水号,100;药品名称,230;规格,120;批次,100;效期,100;单位,60TABLE_N.ParmMap=TOXIC_ID;ORDER_DESC;SPECIFICATION;BATCH_NO;VALID_DATE;UNIT_CHN_DESC;DISPENSE_NOTABLE_N.LockColumns=ALLTABLE_N.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,left;4,left;5,leftTABLE_N.ClickedAction=onTableClickedTpanel_0.Type=TPanelTpanel_0.X=3Tpanel_0.Y=1Tpanel_0.Width=790Tpanel_0.Height=70Tpanel_0.Border=组|查询条件Tpanel_0.AutoX=YTpanel_0.AutoWidth=YTpanel_0.Item=tLabel_0;DISPENSE_NO;tLabel_1;TOXIC_ID;N;YY.Type=TRadioButtonY.X=650Y.Y=27Y.Width=107Y.Height=23Y.Text=已归还/回收Y.Group=Y.Action=onRadioButtonChangeN.Type=TRadioButtonN.X=534N.Y=27N.Width=106N.Height=23N.Text=未归还/回收N.Group=N.Selected=YN.Action=onRadioButtonChangeTOXIC_ID.Type=TTextFieldTOXIC_ID.X=383TOXIC_ID.Y=28TOXIC_ID.Width=126TOXIC_ID.Height=20TOXIC_ID.Text=TOXIC_ID.FocusLostAction=onToxicIdLosttLabel_1.Type=TLabeltLabel_1.X=284tLabel_1.Y=28tLabel_1.Width=102tLabel_1.Height=20tLabel_1.Text=麻精条码号：tLabel_1.FontSize=17tLabel_1.Color=BLUEDISPENSE_NO.Type=TTextFieldDISPENSE_NO.X=108DISPENSE_NO.Y=28DISPENSE_NO.Width=131DISPENSE_NO.Height=20DISPENSE_NO.Text=DISPENSE_NO.FocusLostAction=onDispenseNoLosttLabel_0.Type=TLabeltLabel_0.X=24tLabel_0.Y=29tLabel_0.Width=86tLabel_0.Height=18tLabel_0.Text=出库单号：tLabel_0.FontSize=17tLabel_0.Color=BLUEPATH.Type=TLabelPATH.X=179PATH.Y=14PATH.Width=282PATH.Height=15PATH.Text=