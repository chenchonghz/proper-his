## TBuilder Config File ## Title:## Company:JavaHis## Author:付文俊 2013.05.08## version 1.0#<Type=TFrame>UI.Title=麻精空瓶回收UI.MenuConfig=%ROOT%\config\spc\SPCRecoverMenu.xUI.Width=1024UI.Height=700UI.toolbar=YUI.controlclassname=com.javahis.ui.spc.SPCRecoverControlUI.item=PATH;tPanel_0;tTabbedPane_0UI.layout=nullUI.TopMenu=YUI.TopToolBar=YUI.FocusList=NAMEUI.ShowMenu=NtTabbedPane_0.Type=TTabbedPanetTabbedPane_0.X=6tTabbedPane_0.Y=67tTabbedPane_0.Width=1006tTabbedPane_0.Height=531tTabbedPane_0.Item=PANEL_N;PANEL_YPANEL_Y.Type=TPanelPANEL_Y.X=34PANEL_Y.Y=9PANEL_Y.Width=81PANEL_Y.Height=81PANEL_Y.Name=已回收PANEL_Y.Item=TABLE_M_YTABLE_M_Y.Type=TTableTABLE_M_Y.X=3TABLE_M_Y.Y=3TABLE_M_Y.Width=993TABLE_M_Y.Height=497TABLE_M_Y.SpacingRow=1TABLE_M_Y.RowHeight=20TABLE_M_Y.Header=麻精条码号,150;药品名称,200;规格,150;床位号,100;病案号,100;病患姓名,100;执行科室,100;回收人,100;回收时间,150TABLE_M_Y.ParmMap=TOXIC_ID1;ORDER_DESC;SPECIFICATION;BED_NO;MR_NO;PAT_NAME;DEPT_CHN_DESC;RECLAIM_USER;RECLAIM_DATETABLE_M_Y.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,left;4,left;5,left;6,left;7,left;8,leftTABLE_M_Y.LockColumns=ALLPANEL_N.Type=TPanelPANEL_N.X=19PANEL_N.Y=7PANEL_N.Width=81PANEL_N.Height=81PANEL_N.Name=未回收PANEL_N.Item=TABLE_M_NPANEL_N.Enabled=YPANEL_N.LoadFlg=NTABLE_M_N.Type=TTableTABLE_M_N.X=3TABLE_M_N.Y=3TABLE_M_N.Width=993TABLE_M_N.Height=497TABLE_M_N.SpacingRow=1TABLE_M_N.RowHeight=20TABLE_M_N.Header=麻精条码号,150;药品名称,200;规格,150;床位号,100;病案号,100;病患姓名,100;执行科室,100TABLE_M_N.ParmMap=TOXIC_ID1;ORDER_DESC;SPECIFICATION;BED_NO;MR_NO;PAT_NAME;DEPT_CHN_DESCTABLE_M_N.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,left;4,left;5,left;6,leftTABLE_M_N.LockColumns=ALLtPanel_0.Type=TPaneltPanel_0.X=5tPanel_0.Y=6tPanel_0.Width=1006tPanel_0.Height=56tPanel_0.Border=组tPanel_0.Item=tLabel_2;TOXIC_IDTOXIC_ID.Type=TTextFieldTOXIC_ID.X=98TOXIC_ID.Y=17TOXIC_ID.Width=110TOXIC_ID.Height=20TOXIC_ID.Text=TOXIC_ID.Action=onClicktLabel_2.Type=TLabeltLabel_2.X=13tLabel_2.Y=19tLabel_2.Width=87tLabel_2.Height=15tLabel_2.Text=麻精条码号：tLabel_2.Color=BLUEPATH.Type=TLabelPATH.X=179PATH.Y=14PATH.Width=282PATH.Height=15PATH.Text=