## TBuilder Config File ## Title:手术包回收,消毒## Company:javahis## Author:fudw 2009.05.15## version 1.0#<Type=TFrame>UI.Title=消减诊疗包库存UI.MenuConfig=%ROOT%\config\inv\INVSubtractiveStockMenu.xUI.Width=1024UI.Height=743UI.toolbar=YUI.controlclassname=com.javahis.ui.inv.INVSubtractiveStockControlUI.item=tPanel_1;TABLEMUI.layout=nullUI.Name=消减诊疗包库存UI.Text=消减诊疗包库存UI.TopMenu=YUI.TopToolBar=YUI.FocusList=SCREAMTABLEM.Type=TTableTABLEM.X=11TABLEM.Y=93TABLEM.Width=1004TABLEM.Height=642TABLEM.SpacingRow=1TABLEM.RowHeight=20TABLEM.Header=出库单号,150;序号,50;诊疗包编码,150;诊疗包名称,200;诊疗包批号,100;实际数量,80;需消减数量;物料位置,150TABLEM.ParmMap=DISPENSE_NO;SEQ_NO;PACK_CODE;PACK_DESC;PACK_BATCH_NO;ACTUAL_QTY;SUB_QTY;DESCRIPTION;MATERIAL_LOCATIONTABLEM.AutoWidth=YTABLEM.AutoHeight=NTABLEM.LockColumns=0,1,2,3,4,5,7TABLEM.AutoModifyDataStore=NTABLEM.Item=STOCK_UNITTABLEM.ClickedAction=TABLEM.HorizontalAlignmentData=TABLEM.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,left;4,left;5,right;6,right;7,leftTABLEM.FocusIndexList=5TABLEM.FocusType=2TABLEM.AutoX=YtPanel_1.Type=TPaneltPanel_1.X=5tPanel_1.Y=5tPanel_1.Width=1014tPanel_1.Height=87tPanel_1.Border=组|查询条件tPanel_1.AutoY=NtPanel_1.AutoWidth=YtPanel_1.Item=PACK_DESC;PACK_CODE;tLabel_1;tLabel_0;START_DATE;tLabel_5;END_DATE;ZEROtPanel_1.AutoX=YtPanel_1.TopMenu=YtPanel_1.TopToolBar=YtPanel_1.Text=回收tPanel_1.Tip=回收tPanel_1.Title=回收tPanel_1.Enabled=NZERO.Type=TCheckBoxZERO.X=446ZERO.Y=53ZERO.Width=163ZERO.Height=22ZERO.Text=不包含库存为0的数据ZERO.Selected=YEND_DATE.Type=TTextFormatEND_DATE.X=275END_DATE.Y=54END_DATE.Width=150END_DATE.Height=20END_DATE.Text=END_DATE.Format=yyyy/MM/dd HH:mm:ssEND_DATE.showDownButton=YEND_DATE.FormatType=datetLabel_5.Type=TLabeltLabel_5.X=260tLabel_5.Y=57tLabel_5.Width=16tLabel_5.Height=14tLabel_5.Text=-START_DATE.Type=TTextFormatSTART_DATE.X=98START_DATE.Y=55START_DATE.Width=150START_DATE.Height=20START_DATE.Text=START_DATE.FormatType=dateSTART_DATE.Format=yyyy/MM/dd HH:mm:ssSTART_DATE.showDownButton=YtLabel_0.Type=TLabeltLabel_0.X=17tLabel_0.Y=58tLabel_0.Width=72tLabel_0.Height=15tLabel_0.Text=日期：tLabel_0.Color=蓝STOCK_UNIT.Type=TComboBoxSTOCK_UNIT.X=440STOCK_UNIT.Y=50STOCK_UNIT.Width=81STOCK_UNIT.Height=23STOCK_UNIT.Text=TButtonSTOCK_UNIT.showID=YSTOCK_UNIT.Editable=YSTOCK_UNIT.SQL=SELECT UNIT_CODE,UNIT_CHN_DESC FROM SYS_UNITSTOCK_UNIT.ParmMap=id:UNIT_CODE;name:UNIT_CHN_DESCSTOCK_UNIT.ShowText=NSTOCK_UNIT.ShowName=YSTOCK_UNIT.ExpandWidth=10STOCK_UNIT.TableShowList=nametLabel_1.Type=TLabeltLabel_1.X=15tLabel_1.Y=26tLabel_1.Width=90tLabel_1.Height=15tLabel_1.Text=诊疗包类型：tLabel_1.Color=蓝PACK_CODE.Type=TTextFieldPACK_CODE.X=98PACK_CODE.Y=24PACK_CODE.Width=120PACK_CODE.Height=20PACK_CODE.Text=PACK_CODE.Action=onScreamPACK_DESC.Type=TTextFieldPACK_DESC.X=225PACK_DESC.Y=24PACK_DESC.Width=200PACK_DESC.Height=20PACK_DESC.Text=PACK_DESC.Action=PACK_DESC.Enabled=N