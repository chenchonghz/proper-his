#
# TBuilder Config File 
#
# Title:传染病分类
#
# Company:JavaHis
#
# Author:zhangy 2009.06.04
#
# version 1.0
#

<Type=TFrame>
UI.Title=传染病分类
UI.MenuConfig=%ROOT%\config\sys\SYSDiseaseTypeMenu.x
UI.Width=1024
UI.Height=748
UI.toolbar=Y
UI.controlclassname=com.javahis.ui.sys.SYSDiseaseTypeControl
UI.item=tPanel_0;tPanel_2
UI.layout=null
UI.Text=传染病分类
UI.Name=传染病分类
UI.Tip=传染病分类
UI.TopMenu=Y
UI.TopToolBar=Y
UI.FocusList=DISEASETYPE_CODE;DISEASETYPE_DESC;PY1;PY2;SEQ;DEADLINE;DEADLINE_DESC;LEGALINFECT_FLG;DESCRIPTION
tPanel_2.Type=TPanel
tPanel_2.X=5
tPanel_2.Y=123
tPanel_2.Width=1014
tPanel_2.Height=620
tPanel_2.AutoX=Y
tPanel_2.AutoWidth=Y
tPanel_2.AutoHeight=Y
tPanel_2.Border=凹
tPanel_2.Item=TABLE
TABLE.Type=TTable
TABLE.X=107
TABLE.Y=2
TABLE.Width=81
TABLE.Height=616
TABLE.SpacingRow=1
TABLE.RowHeight=20
TABLE.AutoX=Y
TABLE.AutoY=Y
TABLE.AutoWidth=Y
TABLE.AutoHeight=Y
TABLE.AutoSize=0
TABLE.Header=类别代码,80;类别名称,120;英文,120;拼音,60;助记码,60;顺序号,60;报备时限,80;报备时限描述,120;法定,40,boolean;备注,150;操作者,80;操作时间,100;操作IP,100
TABLE.ParmMap=DISEASETYPE_CODE;DISEASETYPE_DESC;ENG_DESC;PY1;PY2;SEQ;DEADLINE;DEADLINE_DESC;LEGALINFECT_FLG;DESCRIPTION;OPT_USER;OPT_DATE;OPT_TERM 
TABLE.LockColumns=all
TABLE.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,left;4,left;5,right;6,right;7,left;8,left;10,left;11,left;12,left
TABLE.AutoModifyDataStore=Y
TABLE.ClickedAction=onTableClicked
tPanel_0.Type=TPanel
tPanel_0.X=5
tPanel_0.Y=5
tPanel_0.Width=1014
tPanel_0.Height=114
tPanel_0.AutoX=Y
tPanel_0.AutoY=Y
tPanel_0.AutoWidth=Y
tPanel_0.Border=组
tPanel_0.Item=tLabel_0;DISEASETYPE_CODE;tLabel_1;DISEASETYPE_DESC;tLabel_2;PY1;PY2;tlabel_3;tLabel_8;tlabel_4;SEQ;DEADLINE;tLabel_10;DEADLINE_DESC;LEGALINFECT_FLG;tLabel_11;DESCRIPTION;tLabel_17;ENG_DESC
ENG_DESC.Type=TTextField
ENG_DESC.X=480
ENG_DESC.Y=12
ENG_DESC.Width=353
ENG_DESC.Height=20
ENG_DESC.Text=
tLabel_17.Type=TLabel
tLabel_17.X=437
tLabel_17.Y=16
tLabel_17.Width=41
tLabel_17.Height=15
tLabel_17.Text=英文:
DESCRIPTION.Type=TTextField
DESCRIPTION.X=685
DESCRIPTION.Y=78
DESCRIPTION.Width=150
DESCRIPTION.Height=20
DESCRIPTION.Text=
tLabel_11.Type=TLabel
tLabel_11.X=620
tLabel_11.Y=81
tLabel_11.Width=60
tLabel_11.Height=15
tLabel_11.Text=备注:
LEGALINFECT_FLG.Type=TCheckBox
LEGALINFECT_FLG.X=435
LEGALINFECT_FLG.Y=78
LEGALINFECT_FLG.Width=130
LEGALINFECT_FLG.Height=23
LEGALINFECT_FLG.Text=法定传染病注记
DEADLINE_DESC.Type=TTextField
DEADLINE_DESC.X=280
DEADLINE_DESC.Y=78
DEADLINE_DESC.Width=140
DEADLINE_DESC.Height=20
DEADLINE_DESC.Text=
tLabel_10.Type=TLabel
tLabel_10.X=187
tLabel_10.Y=81
tLabel_10.Width=93
tLabel_10.Height=15
tLabel_10.Text=报备时限描述:
DEADLINE.Type=TNumberTextField
DEADLINE.X=91
DEADLINE.Y=78
DEADLINE.Width=80
DEADLINE.Height=20
DEADLINE.Text=0
DEADLINE.Format=#########0
SEQ.Type=TNumberTextField
SEQ.X=490
SEQ.Y=42
SEQ.Width=46
SEQ.Height=20
SEQ.Text=0
SEQ.Format=#########0
tlabel_4.Type=TLabel
tlabel_4.X=437
tlabel_4.Y=46
tlabel_4.Width=56
tlabel_4.Height=15
tlabel_4.Text=顺序号:
tLabel_8.Type=TLabel
tLabel_8.X=16
tLabel_8.Y=81
tLabel_8.Width=72
tLabel_8.Height=15
tLabel_8.Text=报备时限:
tlabel_3.Type=TLabel
tlabel_3.X=187
tlabel_3.Y=46
tlabel_3.Width=55
tlabel_3.Height=15
tlabel_3.Text=助记码:
PY2.Type=TTextField
PY2.X=280
PY2.Y=42
PY2.Width=80
PY2.Height=20
PY2.Text=
PY1.Type=TTextField
PY1.X=91
PY1.Y=42
PY1.Width=80
PY1.Height=20
PY1.Text=
tLabel_2.Type=TLabel
tLabel_2.X=17
tLabel_2.Y=46
tLabel_2.Width=38
tLabel_2.Height=15
tLabel_2.Text=拼音:
DISEASETYPE_DESC.Type=TTextField
DISEASETYPE_DESC.X=280
DISEASETYPE_DESC.Y=12
DISEASETYPE_DESC.Width=140
DISEASETYPE_DESC.Height=20
DISEASETYPE_DESC.Text=
DISEASETYPE_DESC.Action=onTypeDescAction
tLabel_1.Type=TLabel
tLabel_1.X=187
tLabel_1.Y=16
tLabel_1.Width=72
tLabel_1.Height=15
tLabel_1.Text=类别名称:
DISEASETYPE_CODE.Type=TTextField
DISEASETYPE_CODE.X=91
DISEASETYPE_CODE.Y=12
DISEASETYPE_CODE.Width=80
DISEASETYPE_CODE.Height=20
DISEASETYPE_CODE.Text=
tLabel_0.Type=TLabel
tLabel_0.X=17
tLabel_0.Y=17
tLabel_0.Width=72
tLabel_0.Height=15
tLabel_0.Text=类别代码:
tLabel_0.Color=blue
tLabel_0.AutoX=N
tLabel_0.AutoY=N
tLabel_0.AutoSize=10