#
# TBuilder Config File 
#
# Title:模版基本信息模版
#
# Company:JavaHis
#
# Author:WangM 2009.10.16
#
# version 1.0
#

<Type=TFrame>
UI.Title=模版基本信息
UI.MenuConfig=
UI.Width=500
UI.Height=300
UI.toolbar=Y
UI.controlclassname=com.javahis.ui.emr.EMRTempInfoUIControl
UI.item=tLabel_0;EMT_FILENAME;tLabel_1;SUBCLASS_DESC;tLabel_2;TEMPLET_PATH;tLabel_3;DEPT_CODE;tButton_0;tButton_1
UI.layout=null
UI.FocusList=EMT_FILENAME;SUBCLASS_DESC;TEMPLET_PATH;DEPT_CODE
tButton_1.Type=TButton
tButton_1.X=316
tButton_1.Y=225
tButton_1.Width=81
tButton_1.Height=22
tButton_1.Text=取消
tButton_1.Action=onNo
tButton_0.Type=TButton
tButton_0.X=110
tButton_0.Y=225
tButton_0.Width=81
tButton_0.Height=22
tButton_0.Text=确认
tButton_0.Action=onOK
DEPT_CODE.Type=科室下拉列表
DEPT_CODE.X=318
DEPT_CODE.Y=134
DEPT_CODE.Width=112
DEPT_CODE.Height=23
DEPT_CODE.Text=TButton
DEPT_CODE.showID=Y
DEPT_CODE.showName=Y
DEPT_CODE.showText=N
DEPT_CODE.showValue=N
DEPT_CODE.showPy1=Y
DEPT_CODE.showPy2=Y
DEPT_CODE.Editable=Y
DEPT_CODE.Tip=科室
DEPT_CODE.TableShowList=id,name
tLabel_3.Type=TLabel
tLabel_3.X=237
tLabel_3.Y=135
tLabel_3.Width=54
tLabel_3.Height=22
tLabel_3.Text=科室
TEMPLET_PATH.Type=TTextField
TEMPLET_PATH.X=100
TEMPLET_PATH.Y=135
TEMPLET_PATH.Width=107
TEMPLET_PATH.Height=22
TEMPLET_PATH.Text=
tLabel_2.Type=TLabel
tLabel_2.X=21
tLabel_2.Y=135
tLabel_2.Width=72
tLabel_2.Height=22
tLabel_2.Text=所在文件夹
SUBCLASS_DESC.Type=TTextField
SUBCLASS_DESC.X=315
SUBCLASS_DESC.Y=48
SUBCLASS_DESC.Width=114
SUBCLASS_DESC.Height=22
SUBCLASS_DESC.Text=
tLabel_1.Type=TLabel
tLabel_1.X=236
tLabel_1.Y=48
tLabel_1.Width=61
tLabel_1.Height=22
tLabel_1.Text=显示名称
EMT_FILENAME.Type=TTextField
EMT_FILENAME.X=99
EMT_FILENAME.Y=50
EMT_FILENAME.Width=109
EMT_FILENAME.Height=20
EMT_FILENAME.Text=
tLabel_0.Type=TLabel
tLabel_0.X=22
tLabel_0.Y=48
tLabel_0.Width=72
tLabel_0.Height=22
tLabel_0.Text=模版文件名