## TBuilder Config File ## Title:手术包序号选择## Company:javahis## Author:fudw 2009.04.24## version 1.0#<Type=TFrame>UI.Title=物资选择UI.MenuConfig=%ROOT%\config\inv\INVStockDDMenu.xUI.Width=600UI.Height=400UI.toolbar=YUI.controlclassname=com.javahis.ui.inv.INVSupPackStockDDChooseControlUI.item=TABLE;tLabel_2;PACK_DESC;tLabel_13;QTY;tLabel_23;INV_CODE;ORG_CODEUI.layout=nullUI.AutoSize=1UI.Name=物资选择UI.Text=物资选择UI.FocusList=INV_CODEORG_CODE.Type=物资部门下拉区域ORG_CODE.X=11ORG_CODE.Y=135ORG_CODE.Width=81ORG_CODE.Height=23ORG_CODE.Text=ORG_CODE.HorizontalAlignment=2ORG_CODE.PopupMenuHeader=代码,100;名称,100ORG_CODE.PopupMenuWidth=300ORG_CODE.PopupMenuHeight=300ORG_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1ORG_CODE.FormatType=comboORG_CODE.ShowDownButton=YORG_CODE.Tip= 物资部门ORG_CODE.ShowColumnList=NAMEINV_CODE.Type=TTextFieldINV_CODE.X=75INV_CODE.Y=9INV_CODE.Width=153INV_CODE.Height=20INV_CODE.Text=INV_CODE.Action=onScreamtLabel_23.Type=TLabeltLabel_23.X=10tLabel_23.Y=13tLabel_23.Width=65tLabel_23.Height=15tLabel_23.Text=扫描条码:QTY.Type=TNumberTextFieldQTY.X=528QTY.Y=10QTY.Width=52QTY.Height=20QTY.Text=0QTY.Format=#########0QTY.Enabled=NtLabel_13.Type=TLabeltLabel_13.X=462tLabel_13.Y=12tLabel_13.Width=65tLabel_13.Height=15tLabel_13.Text=应选个数:PACK_DESC.Type=TTextFieldPACK_DESC.X=282PACK_DESC.Y=10PACK_DESC.Width=160PACK_DESC.Height=20PACK_DESC.Text=PACK_DESC.Enabled=NtLabel_2.Type=TLabeltLabel_2.X=245tLabel_2.Y=12tLabel_2.Width=36tLabel_2.Height=15tLabel_2.Text=名称:TABLE.Type=TTableTABLE.X=6TABLE.Y=38TABLE.Width=597TABLE.Height=357TABLE.SpacingRow=1TABLE.RowHeight=20TABLE.AutoY=NTABLE.AutoWidth=YTABLE.AutoHeight=YTABLE.Header=选,30,boolean;手术包序号,75,int;单价,80;部门科室,120,ORG_CODETABLE.ParmMap=SELECT_FLG;PACK_SEQ_NO;COST_PRICE;ORG_CODE;BARCODETABLE.AutoX=YTABLE.AutoModifyDataStore=NTABLE.SQL=TABLE.LockColumns=1,2,3TABLE.Item=ORG_CODETABLE.ColumnHorizontalAlignmentData=1,right;2,right;3,left;4,left;5,left;6,right