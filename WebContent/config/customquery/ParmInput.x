#
# TBuilder Config File 
#
# Title:输入查询条件
#
# Company:JavaHis
#
# Author:lzk 2009.05.20
#
# version 1.0
#

<Type=TFrame>
UI.Title=查询条件
UI.MenuConfig=
UI.Width=480
UI.Height=412
UI.toolbar=Y
UI.controlclassname=com.javahis.ui.customquery.ParmInputControl
UI.item=tLabel_0;tLabel_1;OK;Cancel;tLabel_3;TABLE
UI.layout=null
UI.TopMenu=N
UI.TopToolBar=N
UI.FocusList=NAME
TABLE.Type=TTable
TABLE.X=167
TABLE.Y=32
TABLE.Width=297
TABLE.Height=296
TABLE.SpacingRow=1
TABLE.RowHeight=20
TABLE.Header=名称,100,ColumnCombo;数值,150
TABLE.ParmMap=COLUMN_ID;VALUE
TABLE.ColumnHorizontalAlignmentData=0,left;1,left
TABLE.LockColumns=0
tLabel_3.Type=TLabel
tLabel_3.X=176
tLabel_3.Y=14
tLabel_3.Width=104
tLabel_3.Height=15
tLabel_3.Text=输入查询条件:
Cancel.Type=TButton
Cancel.X=383
Cancel.Y=341
Cancel.Width=81
Cancel.Height=23
Cancel.Text=取消
Cancel.Action=onCancel
OK.Type=TButton
OK.X=296
OK.Y=341
OK.Width=81
OK.Height=23
OK.Text=确定
OK.Action=onOK
tLabel_1.Type=TLabel
tLabel_1.X=11
tLabel_1.Y=331
tLabel_1.Width=454
tLabel_1.Height=4
tLabel_1.Text=
tLabel_1.Border=凹
tLabel_0.Type=TLabel
tLabel_0.X=12
tLabel_0.Y=10
tLabel_0.Width=151
tLabel_0.Height=316
tLabel_0.Text=
tLabel_0.PictureName=p1.JPG