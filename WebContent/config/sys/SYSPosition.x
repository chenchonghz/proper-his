# 
#  Title:人员职别UI
# 
#  Description:人员职别UI
# 
#  Copyright: Copyright (c) Javahis 2009
# 
#  author zhangyong 2009.02.09
#  version 1.0
#
<Type=TFrame>
UI.Title=人员职别窗口
UI.MenuConfig=%ROOT%\config\sys\SYSPositionMenu.x
UI.Width=1024
UI.Height=748
UI.toolbar=Y
UI.controlclassname=com.javahis.ui.sys.SYSPositionControl
UI.item=TABLE;tLabel_0;POS_CODE;tLabel_1;tLabel_3;POS_CHN_DESC;POS_TYPE;OPT_USER
UI.layout=null
UI.FocusList=POS_CODE;POS_CHN_DESC;POS_TYPE
UI.TopToolBar=Y
UI.TopMenu=Y
UI.ShowTitle=N
UI.ShowMenu=N
OPT_USER.Type=人员下拉列表
OPT_USER.X=985
OPT_USER.Y=42
OPT_USER.Width=6
OPT_USER.Height=17
OPT_USER.Text=TButton
OPT_USER.showID=Y
OPT_USER.showName=Y
OPT_USER.showText=N
OPT_USER.showValue=N
OPT_USER.showPy1=N
OPT_USER.showPy2=N
OPT_USER.Editable=Y
OPT_USER.Tip=人员
OPT_USER.TableShowList=name
OPT_USER.ModuleParmString=
OPT_USER.ModuleParmTag=
POS_TYPE.Type=职别下拉列表
POS_TYPE.X=459
POS_TYPE.Y=9
POS_TYPE.Width=120
POS_TYPE.Height=23
POS_TYPE.Text=TButton
POS_TYPE.showID=Y
POS_TYPE.showName=Y
POS_TYPE.showText=N
POS_TYPE.showValue=N
POS_TYPE.showPy1=N
POS_TYPE.showPy2=N
POS_TYPE.Editable=Y
POS_TYPE.Tip=职别下拉列表
POS_TYPE.TableShowList=name
POS_TYPE.ModuleParmString=GROUP_ID:SYS_POSITION
POS_TYPE.ModuleParmTag=
POS_TYPE.ExpandWidth=20
POS_TYPE.SelectedAction=
POS_TYPE.Action=
POS_CHN_DESC.Type=TTextField
POS_CHN_DESC.X=245
POS_CHN_DESC.Y=10
POS_CHN_DESC.Width=120
POS_CHN_DESC.Height=20
POS_CHN_DESC.Text=
POS_CHN_DESC.Action=
POS_CHN_DESC.PyTag=Y
tLabel_3.Type=TLabel
tLabel_3.X=386
tLabel_3.Y=13
tLabel_3.Width=67
tLabel_3.Height=15
tLabel_3.Text=职称类别:
tLabel_3.Color=BLUE
tLabel_1.Type=TLabel
tLabel_1.X=174
tLabel_1.Y=13
tLabel_1.Width=68
tLabel_1.Height=15
tLabel_1.Text=职称名称:
tLabel_1.Color=BLUE
POS_CODE.Type=TTextField
POS_CODE.X=79
POS_CODE.Y=10
POS_CODE.Width=77
POS_CODE.Height=20
POS_CODE.Text=
POS_CODE.Action=
POS_CODE.PyTag=Y
tLabel_0.Type=TLabel
tLabel_0.X=8
tLabel_0.Y=13
tLabel_0.Width=65
tLabel_0.Height=15
tLabel_0.Text=职称代码:
tLabel_0.Color=BLUE
TABLE.Type=TTable
TABLE.X=5
TABLE.Y=40
TABLE.Width=866
TABLE.Height=703
TABLE.SpacingRow=1
TABLE.RowHeight=20
TABLE.Header=职称代码,80;职称说明,80;英文名称,80;拼音码,65;注记符,65;职称类别,100,POS_TYPE;顺序编号,80;备注,80;操作人员,100,OPT_USER;操作日期,100;操作IP,150
TABLE.StringData=
TABLE.AutoX=Y
TABLE.AutoWidth=Y
TABLE.AutoHeight=Y
TABLE.AutoSize=5
TABLE.LockColumns=8,9,10
TABLE.Item=POS_TYPE;OPT_USER
TABLE.ParmMap=POS_CODE;POS_CHN_DESC;POS_ENG_DESC;PY1;PY2;POS_TYPE;SEQ;DESCRIPTION;OPT_USER;OPT_DATE;OPT_TERM
TABLE.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,left;4,left;5,left;6,right;7,left;8,left;9,left;10,left
TABLE.SQL=
TABLE.AutoModifyDataStore=Y
TABLE.ClickedAction=onTableClecked
TABLE.FocusType=2
TABLE.FocusIndexList=0,1,2,3,4,5,6,7,8,9,10
TABLE.FocusIndexJump=Y
TABLE.AutoResizeMode=
TABLE.SelectionMode=
TABLE.LockRows=