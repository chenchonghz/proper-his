<Type=TFrame>
UI.Title=中间表导入
UI.MenuConfig=%ROOT%\config\sta\STADailyMenu.x
UI.Width=400
UI.Height=400
UI.toolbar=Y
UI.controlclassname=com.javahis.ui.sta.STADailyControl
UI.Item=tButton_0;tButton_1;STADATE;tLabel_0
UI.TopMenu=Y
UI.TopToolBar=Y
UI.ShowTitle=N
UI.ShowMenu=N
tLabel_0.Type=TLabel
tLabel_0.X=40
tLabel_0.Y=40
tLabel_0.Width=67
tLabel_0.Height=15
tLabel_0.Text=导入日期:
STADATE.Type=TTextFormat
STADATE.X=113
STADATE.Y=37
STADATE.Width=100
STADATE.Height=20
STADATE.Text=TTextFormat
STADATE.FormatType=date
STADATE.Format=yyyy/MM/dd
STADATE.showDownButton=Y
tButton_1.Type=TButton
tButton_1.X=35
tButton_1.Y=190
tButton_1.Width=322
tButton_1.Height=42
tButton_1.Text=导入病区信息
tButton_1.Action=insertStation_Daily
tButton_0.Type=TButton
tButton_0.X=36
tButton_0.Y=107
tButton_0.Width=323
tButton_0.Height=40
tButton_0.Text=导入门急诊信息
tButton_0.Action=insertSTA_OPD_DAILY