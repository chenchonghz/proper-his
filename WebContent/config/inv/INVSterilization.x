## TBuilder Config File ## Title:手术包灭菌## Company:javahis## Author:fudw 2009.05.15## version 1.0#<Type=TFrame>UI.Title=灭菌 打包UI.MenuConfig=%ROOT%\config\inv\INVSterilizationMenu.xUI.Width=1024UI.Height=748UI.toolbar=YUI.controlclassname=com.javahis.ui.inv.INVSterilizationControlUI.item=tPanel_1;TABLEM;TABLED;tMovePane_2UI.layout=nullUI.Name=灭菌 打包UI.Text=灭菌 打包UI.TopMenu=YUI.TopToolBar=YUI.FocusList=SCREAMUI.Tip=灭菌 打包tMovePane_2.Type=TMovePanetMovePane_2.X=8tMovePane_2.Y=243tMovePane_2.Width=1010tMovePane_2.Height=5tMovePane_2.Text=tMovePane_2.MoveType=2tMovePane_2.Style=4tMovePane_2.CursorType=4tMovePane_2.AutoWidth=YtMovePane_2.EntityData=TABLEM,2;tPanel_2,0;TABLED,1tMovePane_2.DoubleClickType=2TABLED.Type=TTableTABLED.X=6TABLED.Y=250TABLED.Width=806TABLED.Height=493TABLED.SpacingRow=1TABLED.RowHeight=20TABLED.Header=物资名称,200;单位,60,STOCK_UNIT;数量,60;成本,60;耗,35,boolean;折损次数,70,intTABLED.ParmMap=INV_CHN_DESC;STOCK_UNIT;QTY;COST_PRICE;ONCE_USE_FLG;RECOUNT_TIMETABLED.AutoWidth=YTABLED.AutoHeight=YTABLED.LockColumns=0,1,2,3,4TABLED.AutoModifyDataStore=YTABLED.Item=STOCK_UNITTABLED.ClickedAction=onTableDCleckedTABLED.HorizontalAlignmentData=TABLED.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,right;5,right;7,rightTABLED.FocusIndexList=5TABLED.FocusType=2TABLEM.Type=TTableTABLEM.X=7TABLEM.Y=89TABLEM.Width=1011TABLEM.Height=152TABLEM.SpacingRow=1TABLEM.RowHeight=20TABLEM.AutoWidth=YTABLEM.ParmMap=PACK_DESC;PACK_SEQ_NO;QTY;STATUS;STERILIZATION_DATE;STERILIZATION_USER;STERILIZATION_POTSEQ;STERILIZATION_PROGRAM;PACK_DATE;PACK_USER;USE_COST;ONCE_USE_COSTTABLEM.Header=包名,200;包号,70;数量,60;状态,70,STATUS;灭菌日期,100,timestamp;灭菌人员,80,OPERATOR;锅次,100;程序,100;打包日期,100,Timestamp;打包人员,80,OPERATOR;使用成本,70;耗材成本,80TABLEM.AutoModifyDataStore=YTABLEM.ClickedAction=onTableMCleckedTABLEM.LockColumns=0,1,2,3,8,10,11TABLEM.Item=STATUS;OPERATORTABLEM.DoubleClickedAction=getDetialValueTABLEM.ColumnHorizontalAlignmentData=0,left;1,left;2,leftTABLEM.FocusIndexList=5TABLEM.FocusType=2tPanel_1.Type=TPaneltPanel_1.X=8tPanel_1.Y=155tPanel_1.Width=1014tPanel_1.Height=83tPanel_1.Border=组|手术包tPanel_1.AutoY=YtPanel_1.AutoWidth=YtPanel_1.Item=tLabel_4;PACK_CODE;tLabel_7;PACK_DESC;tLabel_0;PACK_SEQ_NO;STERILIZATION;SCREAM;tLabel_1;UNPACK;tLabel_5;ORG_CODEtPanel_1.AutoX=YtPanel_1.TopMenu=YtPanel_1.TopToolBar=YORG_CODE.Type=TComboBoxORG_CODE.X=88ORG_CODE.Y=15ORG_CODE.Width=126ORG_CODE.Height=23ORG_CODE.Text=TButtonORG_CODE.showID=NORG_CODE.Editable=YORG_CODE.ShowName=YORG_CODE.ShowText=NORG_CODE.ParmMap=id:ORG_CODE;name:DEPT_CHN_DESCtLabel_5.Type=TLabeltLabel_5.X=10tLabel_5.Y=19tLabel_5.Width=84tLabel_5.Height=15tLabel_5.Text=供应室部门:UNPACK.Type=TCheckBoxUNPACK.X=64UNPACK.Y=48UNPACK.Width=53UNPACK.Height=23UNPACK.Text=打包UNPACK.Selected=YUNPACK.Action=onUnPackSelectedSTOCK_UNIT.Type=TComboBoxSTOCK_UNIT.X=440STOCK_UNIT.Y=50STOCK_UNIT.Width=81STOCK_UNIT.Height=23STOCK_UNIT.Text=TButtonSTOCK_UNIT.showID=YSTOCK_UNIT.Editable=YSTOCK_UNIT.SQL=SELECT UNIT_CODE,UNIT_CHN_DESC FROM SYS_UNITSTOCK_UNIT.ParmMap=id:UNIT_CODE;name:UNIT_CHN_DESCSTOCK_UNIT.ShowText=NSTOCK_UNIT.ShowName=YSTOCK_UNIT.ExpandWidth=10STOCK_UNIT.TableShowList=nametLabel_1.Type=TLabeltLabel_1.X=124tLabel_1.Y=52tLabel_1.Width=64tLabel_1.Height=15tLabel_1.Text=条码扫描:SCREAM.Type=TTextFieldSCREAM.X=187SCREAM.Y=48SCREAM.Width=183SCREAM.Height=20SCREAM.Text=SCREAM.Action=onScreamOPERATOR.Type=TComboBoxOPERATOR.X=378OPERATOR.Y=53OPERATOR.Width=81OPERATOR.Height=23OPERATOR.Text=TButtonOPERATOR.showID=YOPERATOR.Editable=YOPERATOR.ShowName=YOPERATOR.ShowText=NOPERATOR.TableShowList=nameOPERATOR.SQL=SELECT USER_ID,USER_NAME FROM SYS_OPERATOROPERATOR.ParmMap=id:USER_ID;name:USER_NAMESTATUS.Type=TComboBoxSTATUS.X=316STATUS.Y=46STATUS.Width=81STATUS.Height=23STATUS.Text=TButtonSTATUS.showID=YSTATUS.Editable=YSTATUS.StringData=[[id,name],[,],['0',在库],['1',出库],['2',已回收],['3',已清洗],['4',已消毒],['5',已灭菌],['6',已打包],['7',维修中]]STATUS.ShowName=YSTATUS.ShowText=NSTATUS.TableShowList=nameSTATUS.ExpandWidth=10STERILIZATION.Type=TCheckBoxSTERILIZATION.X=8STERILIZATION.Y=48STERILIZATION.Width=55STERILIZATION.Height=23STERILIZATION.Text=灭菌STERILIZATION.Selected=YSTERILIZATION.Action=onSterilizationSelectedPACK_SEQ_NO.Type=TNumberTextFieldPACK_SEQ_NO.X=399PACK_SEQ_NO.Y=15PACK_SEQ_NO.Width=85PACK_SEQ_NO.Height=20PACK_SEQ_NO.Text=0PACK_SEQ_NO.Format=#########0PACK_SEQ_NO.Action=onQuerytLabel_0.Type=TLabeltLabel_0.X=364tLabel_0.Y=19tLabel_0.Width=37tLabel_0.Height=15tLabel_0.Text=序号:tLabel_0.Color=蓝PACK_DESC.Type=TTextFieldPACK_DESC.X=528PACK_DESC.Y=15PACK_DESC.Width=145PACK_DESC.Height=20PACK_DESC.Text=PACK_DESC.Action=onQueryPACK_DESC.Enabled=NtLabel_7.Type=TLabeltLabel_7.X=490tLabel_7.Y=19tLabel_7.Width=65tLabel_7.Height=15tLabel_7.Text=包名:tLabel_7.Color=蓝PACK_CODE.Type=TTextFieldPACK_CODE.X=254PACK_CODE.Y=15PACK_CODE.Width=102PACK_CODE.Height=20PACK_CODE.Text=PACK_CODE.Action=onQuerytLabel_4.Type=TLabeltLabel_4.X=218tLabel_4.Y=19tLabel_4.Width=39tLabel_4.Height=15tLabel_4.Text=包号:tLabel_4.Color=蓝