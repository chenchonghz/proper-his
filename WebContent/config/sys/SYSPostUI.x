<Type=TFrame>
UI.Title=邮政编码
UI.MenuConfig=%ROOT%\config\sys\SYSPostMenu.x
UI.Width=1490
UI.Height=1490
UI.toolbar=Y
UI.controlclassname=com.javahis.ui.sys.SYSPostControl
UI.item=tPanel_0;TABLE
UI.layout=null
UI.FocusList=POST_CODE;D_CITY_FLG;STATE;SEQ;CITY
UI.AutoX=Y
UI.AutoWidth=Y
UI.AutoHeight=Y
UI.AutoY=Y
UI.Y=5
UI.TopMenu=Y
UI.TopToolBar=Y
TABLE.Type=TTable
TABLE.X=5
TABLE.Y=102
TABLE.Width=1480
TABLE.Height=1383
TABLE.SpacingRow=1
TABLE.RowHeight=20
TABLE.Header=序号,60;省、直辖市,200;城市,200;邮编,100;是否直辖市,100,boolean;英文,120;操作人员,100;操作日期,100
TABLE.StringData=
TABLE.AutoX=Y
TABLE.AutoWidth=Y
TABLE.AutoHeight=Y
TABLE.AutoSize=5
TABLE.LockColumns=all
TABLE.HorizontalAlignmentData=
TABLE.ColumnHorizontalAlignmentData=0,right;1,left;2,left;3,right;5,left;6,left;7,left;8,left
TABLE.ModuleName=
TABLE.ModuleMethodName=
TABLE.ParmMap=SEQ;STATE;CITY;POST_CODE;D_CITY_FLG;ENNAME;OPT_USER;OPT_DATE
TABLE.ModifyTag=
TABLE.SQL=
TABLE.FocusType=2
TABLE.ClickedAction=onClick
TABLE.AutoModifyDataStore=Y
tPanel_0.Type=TPanel
tPanel_0.X=5
tPanel_0.Y=5
tPanel_0.Width=1460
tPanel_0.Height=91
tPanel_0.Item=tLabel_0;tLabel_1;STATE;CITY;tLabel_3;tLabel_5;tLabel_25;tLabel_9;tLabel_28;STATE_PY;tLabel_41;CITY_PY;tLabel_43;D_CITY_FLG;POST_CODE;SEQ;tLabel_2;ENNAME
tPanel_0.Border=凸
tPanel_0.AutoWidth=Y
ENNAME.Type=TTextField
ENNAME.X=491
ENNAME.Y=64
ENNAME.Width=150
ENNAME.Height=20
ENNAME.Text=
tLabel_2.Type=TLabel
tLabel_2.X=450
tLabel_2.Y=67
tLabel_2.Width=39
tLabel_2.Height=15
tLabel_2.Text=英文:
SEQ.Type=TNumberTextField
SEQ.X=491
SEQ.Y=37
SEQ.Width=50
SEQ.Height=20
SEQ.Text=0
SEQ.Format=#########0
POST_CODE.Type=TTextField
POST_CODE.X=111
POST_CODE.Y=8
POST_CODE.Width=181
POST_CODE.Height=20
POST_CODE.Text=
POST_CODE.Action=
D_CITY_FLG.Type=TCheckBox
D_CITY_FLG.X=315
D_CITY_FLG.Y=6
D_CITY_FLG.Width=106
D_CITY_FLG.Height=23
D_CITY_FLG.Text=是否直辖市
tLabel_43.Type=TLabel
tLabel_43.X=297
tLabel_43.Y=10
tLabel_43.Width=13
tLabel_43.Height=15
tLabel_43.Text=*
tLabel_43.Color=red
CITY_PY.Type=TTextField
CITY_PY.X=362
CITY_PY.Y=64
CITY_PY.Width=77
CITY_PY.Height=20
CITY_PY.Text=
CITY_PY.InputLength=50
CITY_PY.Enabled=N
tLabel_41.Type=TLabel
tLabel_41.X=318
tLabel_41.Y=67
tLabel_41.Width=37
tLabel_41.Height=15
tLabel_41.Text=拼音:
STATE_PY.Type=TTextField
STATE_PY.X=362
STATE_PY.Y=37
STATE_PY.Width=77
STATE_PY.Height=20
STATE_PY.Text=
STATE_PY.InputLength=50
STATE_PY.Enabled=N
tLabel_28.Type=TLabel
tLabel_28.X=318
tLabel_28.Y=40
tLabel_28.Width=41
tLabel_28.Height=15
tLabel_28.Text=拼音:
tLabel_9.Type=TLabel
tLabel_9.X=297
tLabel_9.Y=67
tLabel_9.Width=16
tLabel_9.Height=15
tLabel_9.Text=*
tLabel_9.Color=red
tLabel_25.Type=TLabel
tLabel_25.X=450
tLabel_25.Y=40
tLabel_25.Width=45
tLabel_25.Height=15
tLabel_25.Text=序号:
tLabel_5.Type=TLabel
tLabel_5.X=12
tLabel_5.Y=10
tLabel_5.Width=70
tLabel_5.Height=15
tLabel_5.Text=邮政编码:
tLabel_5.Color=blue
tLabel_3.Type=TLabel
tLabel_3.X=297
tLabel_3.Y=40
tLabel_3.Width=11
tLabel_3.Height=15
tLabel_3.Text=*
tLabel_3.Color=red
CITY.Type=TTextField
CITY.X=111
CITY.Y=64
CITY.Width=181
CITY.Height=20
CITY.Text=
CITY.Action=onCity
CITY.InputLength=50
CITY.Tip=城市
STATE.Type=TTextField
STATE.X=111
STATE.Y=37
STATE.Width=181
STATE.Height=20
STATE.Text=
STATE.InputLength=50
STATE.Tip=省、直辖市
STATE.Action=onState
tLabel_1.Type=TLabel
tLabel_1.X=12
tLabel_1.Y=67
tLabel_1.Width=70
tLabel_1.Height=15
tLabel_1.Text=城市:
tLabel_1.HorizontalAlignment=2
tLabel_1.VerticalAlignment=0
tLabel_1.Color=blue
tLabel_0.Type=TLabel
tLabel_0.X=12
tLabel_0.Y=40
tLabel_0.Width=94
tLabel_0.Height=15
tLabel_0.Text=省、直辖市:
tLabel_0.HorizontalAlignment=2
tLabel_0.Color=blue