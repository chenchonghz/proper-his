<Type=TFrame>
UI.Title=特殊静脉用药类别窗口
UI.MenuConfig=%ROOT%\config\sys\SYSSpecialVeinUI_Menu.x
UI.Width=1024
UI.Height=748
UI.toolbar=Y
UI.controlclassname=com.javahis.ui.sys.SYSSpecialVeinControl
UI.item=tPanel_0;TABLE
UI.layout=null
TABLE.Type=TTable
TABLE.X=4
TABLE.Y=206
TABLE.Width=1015
TABLE.Height=503
TABLE.SpacingRow=1
TABLE.RowHeight=20
TABLE.Header=序号,80;用药类别代码,100;名称,100;拼音,100;注记码,100;英文说明,100;备注,100;直接打印瓶签,120;操作人员,100;操作日期,100
TABLE.StringData=string,string,string,string,string,string,string,string,string,string
TABLE.AutoX=Y
TABLE.AutoWidth=Y
TABLE.AutoHeight=Y
TABLE.AutoSize=10
TABLE.LockColumns=0,1,2,3,4,5,6,7,8,9
tPanel_0.Type=TPanel
tPanel_0.X=10
tPanel_0.Y=17
tPanel_0.Width=746
tPanel_0.Height=169
tPanel_0.Item=tLabel_0;tLabel_1;tLabel_2;EXCPHATYPE_CODE;EXCPHATYPE_CHN_DESC;tLabel_3;tLabel_6;PY1;PY2;EXCPHATYPE_ENG_DESC;tLabel_5;PRINT_FLG;aa;SEQ;tLabel_16;DESCRIPTION
tPanel_0.Border=凸
DESCRIPTION.Type=TTextField
DESCRIPTION.X=116
DESCRIPTION.Y=132
DESCRIPTION.Width=355
DESCRIPTION.Height=20
DESCRIPTION.Text=
tLabel_16.Type=TLabel
tLabel_16.X=17
tLabel_16.Y=105
tLabel_16.Width=72
tLabel_16.Height=15
tLabel_16.Text=英文说明：
SEQ.Type=TNumberTextField
SEQ.X=337
SEQ.Y=16
SEQ.Width=77
SEQ.Height=20
SEQ.Text=0
SEQ.Format=#########0
aa.Type=TLabel
aa.X=254
aa.Y=19
aa.Width=72
aa.Height=15
aa.Text=序号：
aa.Enabled=Y
aa.Visible=Y
PRINT_FLG.Type=TCheckBox
PRINT_FLG.X=492
PRINT_FLG.Y=43
PRINT_FLG.Width=99
PRINT_FLG.Height=23
PRINT_FLG.Text=直接打印瓶签
PRINT_FLG.Selected=N
tLabel_5.Type=TLabel
tLabel_5.X=17
tLabel_5.Y=75
tLabel_5.Width=70
tLabel_5.Height=15
tLabel_5.Text=拼音：
EXCPHATYPE_ENG_DESC.Type=TTextField
EXCPHATYPE_ENG_DESC.X=116
EXCPHATYPE_ENG_DESC.Y=102
EXCPHATYPE_ENG_DESC.Width=355
EXCPHATYPE_ENG_DESC.Height=20
EXCPHATYPE_ENG_DESC.Text=
PY2.Type=TTextField
PY2.X=337
PY2.Y=72
PY2.Width=133
PY2.Height=20
PY2.Text=
PY1.Type=TTextField
PY1.X=116
PY1.Y=72
PY1.Width=133
PY1.Height=20
PY1.Text=
tLabel_6.Type=TLabel
tLabel_6.X=254
tLabel_6.Y=75
tLabel_6.Width=64
tLabel_6.Height=15
tLabel_6.Text=注记码：
tLabel_3.Type=TLabel
tLabel_3.X=176
tLabel_3.Y=19
tLabel_3.Width=11
tLabel_3.Height=15
tLabel_3.Text=*
tLabel_3.Color=red
EXCPHATYPE_CHN_DESC.Type=TTextField
EXCPHATYPE_CHN_DESC.X=116
EXCPHATYPE_CHN_DESC.Y=44
EXCPHATYPE_CHN_DESC.Width=354
EXCPHATYPE_CHN_DESC.Height=20
EXCPHATYPE_CHN_DESC.Text=
EXCPHATYPE_CODE.Type=TTextField
EXCPHATYPE_CODE.X=116
EXCPHATYPE_CODE.Y=16
EXCPHATYPE_CODE.Width=57
EXCPHATYPE_CODE.Height=20
EXCPHATYPE_CODE.Text=
tLabel_2.Type=TLabel
tLabel_2.X=17
tLabel_2.Y=135
tLabel_2.Width=70
tLabel_2.Height=15
tLabel_2.Text=备注：
tLabel_2.HorizontalAlignment=2
tLabel_1.Type=TLabel
tLabel_1.X=17
tLabel_1.Y=47
tLabel_1.Width=99
tLabel_1.Height=15
tLabel_1.Text=用药类别名称：
tLabel_1.HorizontalAlignment=2
tLabel_1.VerticalAlignment=0
tLabel_0.Type=TLabel
tLabel_0.X=17
tLabel_0.Y=19
tLabel_0.Width=98
tLabel_0.Height=15
tLabel_0.Text=用药类别代码：
tLabel_0.HorizontalAlignment=2
tLabel_0.Color=blue