## TBuilder Config File ## Title:固定资产折旧计算表## Company:JavaHis## Author:杜志伟 2013.08.16## version 1.0#<Type=TFrame>UI.Title=无形资产摊销计算表UI.MenuConfig=%ROOT%\config\dev\DEVFixedAssetListMenu.xUI.Width=1024UI.Height=748UI.toolbar=YUI.controlclassname=com.javahis.ui.dev.DEVIntangibleDepreciationControlUI.item=tPanel_5;tPanel_6UI.layout=nullUI.TopMenu=YUI.TopToolBar=YtPanel_6.Type=TPaneltPanel_6.X=13tPanel_6.Y=80tPanel_6.Width=1006tPanel_6.Height=663tPanel_6.Border=组tPanel_6.AutoWidth=YtPanel_6.Item=tPanel_7tPanel_6.AutoHeight=YtPanel_7.Type=TPaneltPanel_7.X=8tPanel_7.Y=8tPanel_7.Width=987tPanel_7.Height=644tPanel_7.Border=凹tPanel_7.AutoWidth=YtPanel_7.AutoHeight=YtPanel_7.Item=TABLETABLE.Type=TTableTABLE.X=8TABLE.Y=10TABLE.Width=987TABLE.Height=630TABLE.SpacingRow=1TABLE.RowHeight=20TABLE.AutoWidth=YTABLE.AutoHeight=YTABLE.Header=名称,150;规格,150;单位,50;数量,40,double,#######0;单价,100;总价,100,double,#######0.00;使用部门,100;购入日期,150;成本项目代码,100;类别,100;折旧年限(月),80;已使用年限(月),100;本月折旧额,100,double,#######0.00;累计折旧额,100,double,#######0.00;资产现值,100,double,#######0.00TABLE.ParmMap=DEV_NAME;DEV_SPEC;STOCK_UNIT;DEV_NUM;UNIT_PRICE;ALL_PRICE;USED_DEPT;BUY_DATE;PRO_CODE;DEV_KIND;DEP_YEAR;USED_YEAR;DEP_PRICE_M;DEP_PRICE_ALL;DEP_PRICE_M_JZTABLE.ColumnHorizontalAlignmentData=0,right;1,left;2,left;3,right;4,right;5,right;6,left;7,left;8,left;9,left;10,right;11,right;12,right;13,right;14,right;TABLE.LockColumns=0,1,2,3,4,5,6,7,8,9,10,11,12,13,14TABLE.Item=TABLE.AutoY=YTABLE.AutoX=YtPanel_5.Type=TPaneltPanel_5.X=11tPanel_5.Y=11tPanel_5.Width=1008tPanel_5.Height=59tPanel_5.Border=组tPanel_5.AutoWidth=YtPanel_5.Item=tLabel_8;tLabel_9;Q_DATE;DEV_KIND;DEVKIND_CODE;USED_DEPT_CODEUSED_DEPT_CODE.Type=成本中心下拉区域USED_DEPT_CODE.X=762USED_DEPT_CODE.Y=22USED_DEPT_CODE.Width=81USED_DEPT_CODE.Height=23USED_DEPT_CODE.Text=USED_DEPT_CODE.HorizontalAlignment=2USED_DEPT_CODE.PopupMenuHeader=代码,100;名称,100USED_DEPT_CODE.PopupMenuWidth=300USED_DEPT_CODE.PopupMenuHeight=300USED_DEPT_CODE.FormatType=comboUSED_DEPT_CODE.ShowDownButton=YUSED_DEPT_CODE.Tip=成本中心USED_DEPT_CODE.ShowColumnList=NAMEUSED_DEPT_CODE.Visible=NDEVKIND_CODE.Type=设备种类下拉区域DEVKIND_CODE.X=878DEVKIND_CODE.Y=21DEVKIND_CODE.Width=81DEVKIND_CODE.Height=23DEVKIND_CODE.Text=DEVKIND_CODE.HorizontalAlignment=2DEVKIND_CODE.PopupMenuHeader=代码,100;名称,100DEVKIND_CODE.PopupMenuWidth=300DEVKIND_CODE.PopupMenuHeight=300DEVKIND_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1DEVKIND_CODE.FormatType=comboDEVKIND_CODE.ShowDownButton=YDEVKIND_CODE.Tip=设备种类DEVKIND_CODE.ShowColumnList=NAMEDEVKIND_CODE.Visible=NDEV_KIND.Type=设备财务分类下拉区域DEV_KIND.X=91DEV_KIND.Y=21DEV_KIND.Width=150DEV_KIND.Height=23DEV_KIND.Text=DEV_KIND.HorizontalAlignment=2DEV_KIND.PopupMenuHeader=代码,100;名称,100DEV_KIND.PopupMenuWidth=300DEV_KIND.PopupMenuHeight=300DEV_KIND.PopupMenuFilter=ID,1;NAME,1;PY1,1DEV_KIND.FormatType=comboDEV_KIND.ShowDownButton=YDEV_KIND.Tip=资金来源DEV_KIND.ShowColumnList=NAMEDEV_KIND.HisOneNullRow=YQ_DATE.Type=TTextFormatQ_DATE.X=434Q_DATE.Y=19Q_DATE.Width=130Q_DATE.Height=20Q_DATE.Text=Q_DATE.Format=yyyy/MMQ_DATE.FormatType=dateQ_DATE.showDownButton=YtLabel_9.Type=TLabeltLabel_9.X=382tLabel_9.Y=23tLabel_9.Width=49tLabel_9.Height=15tLabel_9.Text=日期：tLabel_9.Color=bluetLabel_8.Type=TLabeltLabel_8.X=22tLabel_8.Y=23tLabel_8.Width=82tLabel_8.Height=15tLabel_8.Text=财务类别：tLabel_8.Color=blue