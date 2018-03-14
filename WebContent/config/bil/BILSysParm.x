#
# TBuilder Config File 
#
# Title:账务参数档
#
# Company:JavaHis
#
# Author:fudw 2009.07.24
#
# version 1.0
#

<Type=TFrame>
UI.Title=账务参数档
UI.MenuConfig=%ROOT%\config\bil\BILSysParmMenu.x
UI.Width=1024
UI.Height=748
UI.toolbar=Y
UI.controlclassname=com.javahis.ui.bil.BILSysparmControl
UI.item=tPanel_0;TABLE
UI.layout=null
UI.TopMenu=Y
UI.TopToolBar=Y
UI.Name=账务参数档
UI.Text=账务参数档
UI.Tip=账务参数档
TABLE.Type=TTable
TABLE.X=7
TABLE.Y=94
TABLE.Width=644
TABLE.Height=471
TABLE.SpacingRow=1
TABLE.RowHeight=20
TABLE.AutoX=Y
TABLE.AutoWidth=Y
TABLE.AutoHeight=Y
TABLE.Header=门急住别,80;结账日期,80;结账时间,80;操作员,100;操作时间,120;操作终端,100
TABLE.ParmMap=ADM_TYPE;MONTH_CYCLE;DAY_CYCLE;OPT_USER;OPT_DATE;OPT_TERM
TABLE.SQL=SELECT * FROM BIL_SYSPARM
TABLE.AutoModifyDataStore=Y
TABLE.LockColumns=all
TABLE.ColumnHorizontalAlignmentData=0,left;1,right;2,right;3,left;4,left;5,left
TABLE.ClickedAction=onTableClicked
tPanel_0.Type=TPanel
tPanel_0.X=5
tPanel_0.Y=5
tPanel_0.Width=1014
tPanel_0.Height=87
tPanel_0.Border=组
tPanel_0.AutoX=Y
tPanel_0.AutoY=Y
tPanel_0.AutoWidth=Y
tPanel_0.Item=tLabel_0;tLabel_1;ADM_TYPE;tLabel_2;tLabel_3;MONTH_CYCLE;DAY_CYCLE
DAY_CYCLE.Type=TTextField
DAY_CYCLE.X=676
DAY_CYCLE.Y=57
DAY_CYCLE.Width=93
DAY_CYCLE.Height=20
DAY_CYCLE.Text=
DAY_CYCLE.HorizontalAlignment=4
DAY_CYCLE.InputLength=6
MONTH_CYCLE.Type=TTextField
MONTH_CYCLE.X=396
MONTH_CYCLE.Y=57
MONTH_CYCLE.Width=90
MONTH_CYCLE.Height=20
MONTH_CYCLE.Text=
MONTH_CYCLE.InputLength=2
MONTH_CYCLE.HorizontalAlignment=4
tLabel_3.Type=TLabel
tLabel_3.X=507
tLabel_3.Y=59
tLabel_3.Width=168
tLabel_3.Height=15
tLabel_3.Text=结账时间(000000-235959):
tLabel_2.Type=TLabel
tLabel_2.X=290
tLabel_2.Y=59
tLabel_2.Width=105
tLabel_2.Height=15
tLabel_2.Text=结账日期(0-31):
ADM_TYPE.Type=TComboBox
ADM_TYPE.X=172
ADM_TYPE.Y=55
ADM_TYPE.Width=92
ADM_TYPE.Height=23
ADM_TYPE.Text=TButton
ADM_TYPE.showID=Y
ADM_TYPE.Editable=Y
ADM_TYPE.ShowName=Y
ADM_TYPE.ShowText=N
ADM_TYPE.TableShowList=name
ADM_TYPE.StringData=[[id,name],[,],[O,门急诊],[I,住院]]
tLabel_1.Type=TLabel
tLabel_1.X=110
tLabel_1.Y=59
tLabel_1.Width=63
tLabel_1.Height=15
tLabel_1.Text=门住类别:
tLabel_0.Type=TLabel
tLabel_0.X=380
tLabel_0.Y=6
tLabel_0.Width=183
tLabel_0.Height=28
tLabel_0.Text=账  务  参  数  档
tLabel_0.Color=蓝
tLabel_0.FontSize=20