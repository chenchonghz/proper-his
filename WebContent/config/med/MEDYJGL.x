#
# TBuilder Config File 
#
# Title: 医技科室叫号
#
# Company:BlueCore
#
# Author:wanglong 2013.11.12
#
# version 1.0
#

<Type=TFrame>
UI.Title=医技管理
UI.MenuConfig=%ROOT%\config\med\MEDYJGLMenu.x
UI.Width=1024
UI.Height=748
UI.toolbar=Y
UI.controlclassname=com.javahis.ui.med.MEDYJGLControl
UI.item=tLabel_0;MR_NO;tLabel_1;PAT_NAME;tLabel_2;SEX_CODE;tLabel_3;AGE;tLabel_4;BIRTH_DATE;tLabel_5;ADM_TYPE;tPanel_0;tLabel_7;START_DATE;tLabel_8;END_DATE;COUNT;tLabel_9;TABLE_M;ALL_SELECT;TABLE_D;tLabel_10;EXEC_DEPT_CODE
UI.layout=null
UI.TopMenu=Y
UI.TopToolBar=Y
EXEC_DEPT_CODE.Type=TTextFormat
EXEC_DEPT_CODE.X=338
EXEC_DEPT_CODE.Y=40
EXEC_DEPT_CODE.Width=120
EXEC_DEPT_CODE.Height=22
EXEC_DEPT_CODE.Text=
EXEC_DEPT_CODE.HorizontalAlignment=2
EXEC_DEPT_CODE.PopupMenuHeader=代码,60;名称,150
EXEC_DEPT_CODE.PopupMenuWidth=232
EXEC_DEPT_CODE.PopupMenuHeight=300
EXEC_DEPT_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1
EXEC_DEPT_CODE.PopupMenuSQL=SELECT DEPT_CODE AS ID,DEPT_ABS_DESC AS NAME FROM SYS_DEPT WHERE ACTIVE_FLG='Y' AND FINAL_FLG='Y' AND DEPT_GRADE='3' AND (CLASSIFY='1' OR CLASSIFY='0') ORDER BY ID,SEQ
EXEC_DEPT_CODE.FormatType=combo
EXEC_DEPT_CODE.ShowDownButton=Y
EXEC_DEPT_CODE.Tip=执行科室
EXEC_DEPT_CODE.ShowColumnList=NAME
EXEC_DEPT_CODE.ShowName=Y
tLabel_10.Type=TLabel
tLabel_10.X=270
tLabel_10.Y=43
tLabel_10.Width=72
tLabel_10.Height=15
tLabel_10.Text=执行科室:
tLabel_10.Color=蓝
DR_CODE.Type=人员
DR_CODE.X=600
DR_CODE.Y=52
DR_CODE.Width=110
DR_CODE.Height=21
DR_CODE.Text=
DR_CODE.HorizontalAlignment=2
DR_CODE.PopupMenuHeader=ID,100;NAME,200
DR_CODE.PopupMenuWidth=321
DR_CODE.PopupMenuHeight=300
DR_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1
DR_CODE.FormatType=combo
DR_CODE.ShowDownButton=Y
DR_CODE.Tip=人员
DR_CODE.ShowColumnList=NAME
DR_CODE.PosType=
DR_CODE.HisOneNullRow=Y
DEPT_CODE.Type=TTextFormat
DEPT_CODE.X=500
DEPT_CODE.Y=52
DEPT_CODE.Width=110
DEPT_CODE.Height=21
DEPT_CODE.Text=
DEPT_CODE.HorizontalAlignment=2
DEPT_CODE.PopupMenuHeader=代码,60;名称,150
DEPT_CODE.PopupMenuWidth=232
DEPT_CODE.PopupMenuHeight=300
DEPT_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1
DEPT_CODE.PopupMenuSQL=SELECT DEPT_CODE AS ID, DEPT_ABS_DESC AS NAME,PY1 FROM SYS_DEPT WHERE ACTIVE_FLG = 'Y' ORDER BY ID,SEQ
DEPT_CODE.FormatType=combo
DEPT_CODE.ShowDownButton=Y
DEPT_CODE.Tip=科室
DEPT_CODE.ShowColumnList=NAME
DEPT_CODE.HisOneNullRow=Y
DEPT_CODE.ShowName=Y
BILL_FLG.Type=TComboBox
BILL_FLG.X=300
BILL_FLG.Y=80
BILL_FLG.Width=80
BILL_FLG.Height=23
BILL_FLG.Text=TButton
BILL_FLG.showID=Y
BILL_FLG.Editable=Y
BILL_FLG.Tip=缴费状态
BILL_FLG.StringData=[[id,text],[N,未缴费],[Y,已缴费]]
BILL_FLG.ExpandWidth=40
BILL_FLG.TableShowList=text
REPORT_STATE.Type=TComboBox
REPORT_STATE.X=100
REPORT_STATE.Y=80
REPORT_STATE.Width=80
REPORT_STATE.Height=23
REPORT_STATE.Text=TButton
REPORT_STATE.showID=Y
REPORT_STATE.Editable=Y
REPORT_STATE.Tip=报到状态
REPORT_STATE.StringData=[[id,text],[ALL,全部],[UNREPORT,未报到],[REPORTED,已报到]]
REPORT_STATE.ExpandWidth=40
REPORT_STATE.TableShowList=text
TABLE_D.Type=TTable
TABLE_D.X=7
TABLE_D.Y=388
TABLE_D.Width=1010
TABLE_D.Height=355
TABLE_D.SpacingRow=1
TABLE_D.RowHeight=20
TABLE_D.AutoWidth=Y
TABLE_D.AutoHeight=N
TABLE_D.Header=选,30,boolean;急,30,boolean;报到状态,80,REPORT_STATE;医嘱名称,200;开立日期,140,timestamp,yyyy/MM/dd HH:mm:ss;申请科室,120,DEPT_CODE;申请医师,120,DR_CODE;备注,250
TABLE_D.ParmMap=FLG;URGENT_FLG;REPORT_STATE;ORDER_DESC;ORDER_DATE;DEPT_CODE;DR_CODE;DR_NOTE
TABLE_D.Item=REPORT_STATE;DEPT_CODE;DR_CODE
TABLE_D.LockColumns=1,2,3,4,5,6,7
TABLE_D.ColumnHorizontalAlignmentData=3,left;5,left;6,left;7,left
TABLE_D.ChangeValueAction=
TABLE_D.RightClickedAction=showPopMenu
TABLE_D.ClickedAction=
ALL_SELECT.Type=TCheckBox
ALL_SELECT.X=7
ALL_SELECT.Y=365
ALL_SELECT.Width=59
ALL_SELECT.Height=18
ALL_SELECT.Text=全选
ALL_SELECT.Action=onSelectAll
TABLE_M.Type=TTable
TABLE_M.X=7
TABLE_M.Y=135
TABLE_M.Width=1010
TABLE_M.Height=225
TABLE_M.SpacingRow=1
TABLE_M.RowHeight=20
TABLE_M.AutoWidth=Y
TABLE_M.AutoHeight=N
TABLE_M.Header=来源,80,ADM_TYPE;病案号,100;姓名,120;性别,70,SEX_CODE;年龄,50;出生日期,120,timestamp;科室,120,DEPT_CODE;医师,120,DR_CODE;诊号
TABLE_M.ParmMap=ADM_TYPE;MR_NO;PAT_NAME;SEX_CODE;AGE;BIRTH_DATE;DEPT_CODE;DR_CODE;NO
TABLE_M.Item=ADM_TYPE;SEX_CODE;DEPT_CODE;DR_CODE;COMPANY_CODE;CONTRACT_CODE
TABLE_M.LockColumns=all
TABLE_M.ColumnHorizontalAlignmentData=2,left;4,right;6,left;7,left;8,left
TABLE_M.ClickedAction=onTableClicked
tLabel_9.Type=TLabel
tLabel_9.X=639
tLabel_9.Y=107
tLabel_9.Width=25
tLabel_9.Height=15
tLabel_9.Text=人
COUNT.Type=TTextField
COUNT.X=557
COUNT.Y=103
COUNT.Width=77
COUNT.Height=22
COUNT.Text=
COUNT.Enabled=N
COUNT.HorizontalAlignment=4
END_DATE.Type=TTextFormat
END_DATE.X=267
END_DATE.Y=8
END_DATE.Width=157
END_DATE.Height=22
END_DATE.Text=
END_DATE.FormatType=date
END_DATE.Format=yyyy/MM/dd HH:mm:ss
END_DATE.HorizontalAlignment=2
END_DATE.showDownButton=Y
tLabel_8.Type=TLabel
tLabel_8.X=245
tLabel_8.Y=12
tLabel_8.Width=22
tLabel_8.Height=15
tLabel_8.Text=至
tLabel_8.Color=蓝
START_DATE.Type=TTextFormat
START_DATE.X=79
START_DATE.Y=8
START_DATE.Width=157
START_DATE.Height=22
START_DATE.Text=2013/11/12
START_DATE.Format=yyyy/MM/dd HH:mm:ss
START_DATE.FormatType=date
START_DATE.HorizontalAlignment=2
START_DATE.showDownButton=Y
tLabel_7.Type=TLabel
tLabel_7.X=10
tLabel_7.Y=12
tLabel_7.Width=72
tLabel_7.Height=15
tLabel_7.Text=申请日期:
tLabel_7.Color=蓝
REPORTED.Type=TRadioButton
REPORTED.X=167
REPORTED.Y=4
REPORTED.Width=70
REPORTED.Height=23
REPORTED.Text=已报到
REPORTED.Group=1
REPORTED.Color=蓝
REPORTED.Action=
UNREPORT.Type=TRadioButton
UNREPORT.X=85
UNREPORT.Y=4
UNREPORT.Width=70
UNREPORT.Height=23
UNREPORT.Text=未报到
UNREPORT.Group=1
UNREPORT.Selected=Y
UNREPORT.Color=蓝
UNREPORT.Action=
ALL.Type=TRadioButton
ALL.X=9
ALL.Y=4
ALL.Width=70
ALL.Height=23
ALL.Text=全部
ALL.Group=1
ALL.Selected=N
ALL.Color=蓝
tPanel_0.Type=TPanel
tPanel_0.X=11
tPanel_0.Y=36
tPanel_0.Width=246
tPanel_0.Height=32
tPanel_0.Border=组|
tPanel_0.Item=ALL;UNREPORT;REPORTED
ADM_TYPE.Type=门急住别下拉列表
ADM_TYPE.X=81
ADM_TYPE.Y=103
ADM_TYPE.Width=104
ADM_TYPE.Height=23
ADM_TYPE.Text=TButton
ADM_TYPE.showID=Y
ADM_TYPE.showName=Y
ADM_TYPE.showText=N
ADM_TYPE.showValue=N
ADM_TYPE.showPy1=Y
ADM_TYPE.showPy2=Y
ADM_TYPE.Editable=Y
ADM_TYPE.Tip=门急住别
ADM_TYPE.TableShowList=NAME
ADM_TYPE.ModuleParmString=GROUP_ID:SYS_ADMTYPE
ADM_TYPE.ModuleParmTag=
ADM_TYPE.Enabled=Y
ADM_TYPE.Action=
tLabel_5.Type=TLabel
tLabel_5.X=12
tLabel_5.Y=107
tLabel_5.Width=70
tLabel_5.Height=15
tLabel_5.Text=门急住别：
BIRTH_DATE.Type=TTextFormat
BIRTH_DATE.X=736
BIRTH_DATE.Y=74
BIRTH_DATE.Width=95
BIRTH_DATE.Height=22
BIRTH_DATE.Text=
BIRTH_DATE.FormatType=date
BIRTH_DATE.Format=yyyy/MM/dd
BIRTH_DATE.showDownButton=Y
BIRTH_DATE.HorizontalAlignment=2
BIRTH_DATE.Enabled=N
tLabel_4.Type=TLabel
tLabel_4.X=668
tLabel_4.Y=78
tLabel_4.Width=72
tLabel_4.Height=15
tLabel_4.Text=出生日期：
AGE.Type=TTextField
AGE.X=557
AGE.Y=74
AGE.Width=90
AGE.Height=22
AGE.Text=
AGE.Enabled=N
tLabel_3.Type=TLabel
tLabel_3.X=516
tLabel_3.Y=78
tLabel_3.Width=46
tLabel_3.Height=15
tLabel_3.Text=年龄：
SEX_CODE.Type=性别下拉列表
SEX_CODE.X=428
SEX_CODE.Y=74
SEX_CODE.Width=75
SEX_CODE.Height=22
SEX_CODE.Text=
SEX_CODE.showID=Y
SEX_CODE.showName=Y
SEX_CODE.showText=N
SEX_CODE.showValue=N
SEX_CODE.showPy1=Y
SEX_CODE.showPy2=Y
SEX_CODE.Editable=Y
SEX_CODE.Tip=性别
SEX_CODE.TableShowList=name
SEX_CODE.ModuleParmString=GROUP_ID:SYS_SEX
SEX_CODE.ModuleParmTag=
SEX_CODE.Enabled=N
tLabel_2.Type=TLabel
tLabel_2.X=387
tLabel_2.Y=78
tLabel_2.Width=45
tLabel_2.Height=15
tLabel_2.Text=性别：
PAT_NAME.Type=TTextField
PAT_NAME.X=255
PAT_NAME.Y=74
PAT_NAME.Width=100
PAT_NAME.Height=22
PAT_NAME.Text=
PAT_NAME.Enabled=N
tLabel_1.Type=TLabel
tLabel_1.X=214
tLabel_1.Y=78
tLabel_1.Width=48
tLabel_1.Height=15
tLabel_1.Text=姓名：
MR_NO.Type=TTextField
MR_NO.X=71
MR_NO.Y=74
MR_NO.Width=115
MR_NO.Height=22
MR_NO.Text=
MR_NO.Action=onMrNo
tLabel_0.Type=TLabel
tLabel_0.X=13
tLabel_0.Y=78
tLabel_0.Width=56
tLabel_0.Height=15
tLabel_0.Text=病案号：
//COMPANY_CODE.Type=健康检查团体下拉区域
//COMPANY_CODE.X=80
//COMPANY_CODE.Y=15
//COMPANY_CODE.Width=130
//COMPANY_CODE.Height=22
//COMPANY_CODE.Text=
//COMPANY_CODE.HorizontalAlignment=2
//COMPANY_CODE.PopupMenuHeader=代码,100;名称,100
//COMPANY_CODE.PopupMenuWidth=300
//COMPANY_CODE.PopupMenuHeight=300
//COMPANY_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1
//COMPANY_CODE.FormatType=combo
//COMPANY_CODE.ShowDownButton=Y
//COMPANY_CODE.Tip=健康检查团体
//COMPANY_CODE.ShowColumnList=NAME
//COMPANY_CODE.HisOneNullRow=Y
//CONTRACT_CODE.Type=健康检查合同下拉区域
//CONTRACT_CODE.X=287
//CONTRACT_CODE.Y=15
//CONTRACT_CODE.Width=132
//CONTRACT_CODE.Height=22
//CONTRACT_CODE.Text=
//CONTRACT_CODE.HorizontalAlignment=2
//CONTRACT_CODE.PopupMenuHeader=代码,100;名称,100
//CONTRACT_CODE.PopupMenuWidth=300
//CONTRACT_CODE.PopupMenuHeight=300
//CONTRACT_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1
//CONTRACT_CODE.FormatType=combo
//CONTRACT_CODE.ShowDownButton=Y
//CONTRACT_CODE.Tip=健康检查合同
//CONTRACT_CODE.ShowColumnList=NAME
//CONTRACT_CODE.HisOneNullRow=Y
CONTRACT_CODE.Type=TTextFormat
CONTRACT_CODE.X=287
CONTRACT_CODE.Y=15
CONTRACT_CODE.Width=132
CONTRACT_CODE.Height=22
CONTRACT_CODE.Text=
CONTRACT_CODE.HorizontalAlignment=2
CONTRACT_CODE.PopupMenuHeader=代码,100;名称,100
CONTRACT_CODE.PopupMenuWidth=300
CONTRACT_CODE.PopupMenuHeight=300
CONTRACT_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1
CONTRACT_CODE.PopupMenuSQL=SELECT USER_ID AS ID,USER_NAME AS NAME,PY1 FROM SYS_OPERATOR UNION SELECT CONTRACT_CODE AS ID,CONTRACT_DESC AS NAME,PY1 FROM HRM_CONTRACTM
CONTRACT_CODE.FormatType=combo
CONTRACT_CODE.ShowDownButton=Y
CONTRACT_CODE.Tip=健康检查合同
CONTRACT_CODE.ShowColumnList=NAME
CONTRACT_CODE.HisOneNullRow=Y
CONTRACT_CODE.ShowName=Y
COMPANY_CODE.Type=TTextFormat
COMPANY_CODE.X=80
COMPANY_CODE.Y=15
COMPANY_CODE.Width=130
COMPANY_CODE.Height=22
COMPANY_CODE.Text=
COMPANY_CODE.HorizontalAlignment=2
COMPANY_CODE.PopupMenuHeader=代码,100;名称,100
COMPANY_CODE.PopupMenuWidth=300
COMPANY_CODE.PopupMenuHeight=300
COMPANY_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1
COMPANY_CODE.PopupMenuSQL=SELECT DEPT_CODE AS ID,DEPT_ABS_DESC AS NAME,PY1 FROM SYS_DEPT WHERE ACTIVE_FLG = 'Y' UNION SELECT COMPANY_CODE AS ID,COMPANY_DESC AS NAME,PY1 FROM HRM_COMPANY
COMPANY_CODE.FormatType=combo
COMPANY_CODE.ShowDownButton=Y
COMPANY_CODE.Tip=健康检查团体
COMPANY_CODE.ShowColumnList=NAME
COMPANY_CODE.HisOneNullRow=Y
COMPANY_CODE.ShowName=Y