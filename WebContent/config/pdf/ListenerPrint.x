#
# TBuilder Config File 
#
# Title:监听打印窗口
#
# Company:JavaHis
#
# Author:lzk 2010.12.17
#
# version 1.0
#

<Type=TFrame>
UI.Title=打印PDF文件分析窗口
UI.MenuConfig=
UI.Width=879
UI.Height=766
UI.toolbar=Y
UI.controlclassname=com.javahis.ui.pdf.ListenerPrintControl
UI.item=tLabel_0;tTextField_0;tLabel_1;tTextField_1;tTable_0;tButton_0;tButton_1;tButton_5;tButton_2
UI.layout=null
tButton_2.Type=TButton
tButton_2.X=324
tButton_2.Y=83
tButton_2.Width=81
tButton_2.Height=23
tButton_2.Text=返回
tButton_2.Action=onClose
tButton_5.Type=TButton
tButton_5.X=219
tButton_5.Y=83
tButton_5.Width=81
tButton_5.Height=23
tButton_5.Text=开始
tButton_5.Action=onS
tButton_1.Type=TButton
tButton_1.X=109
tButton_1.Y=83
tButton_1.Width=81
tButton_1.Height=23
tButton_1.Text=上传
tButton_1.Action=onUpdate
tButton_0.Type=TButton
tButton_0.X=16
tButton_0.Y=83
tButton_0.Width=81
tButton_0.Height=23
tButton_0.Text=扫描
tButton_0.Action=onL
tTable_0.Type=TTable
tTable_0.X=6
tTable_0.Y=115
tTable_0.Width=869
tTable_0.Height=646
tTable_0.SpacingRow=1
tTable_0.RowHeight=20
tTable_0.Header=文件名称,200;病案号,100;问诊号,100;文件类型,150;日期,150;扫描状态,100
tTable_0.AutoWidth=Y
tTable_0.AutoHeight=Y
tTable_0.AutoX=Y
tTable_0.ParmMap=FILE_NAME;MR_NO;CASE_NO;TYPE;DATE;STATE
tTable_0.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,left;4,left;5,left
tTextField_1.Type=TTextField
tTextField_1.X=115
tTextField_1.Y=39
tTextField_1.Width=450
tTextField_1.Height=20
tTextField_1.Text=
tLabel_1.Type=TLabel
tLabel_1.X=15
tLabel_1.Y=44
tLabel_1.Width=94
tLabel_1.Height=15
tLabel_1.Text=整理临时目录:
tTextField_0.Type=TTextField
tTextField_0.X=115
tTextField_0.Y=12
tTextField_0.Width=450
tTextField_0.Height=20
tTextField_0.Text=
tLabel_0.Type=TLabel
tLabel_0.X=15
tLabel_0.Y=14
tLabel_0.Width=97
tLabel_0.Height=15
tLabel_0.Text=打印输出目录: