## TBuilder Config File ## Title:结构化病例## Company:JavaHis## Author:WangM 2009.10.06## version 1.0#<Type=TFrame>UI.Title=电子病历-类型设置UI.MenuConfig=%ROOT%\config\emr\TEmrWordTreeUIMenu.xUI.Width=1280UI.Height=800UI.toolbar=YUI.controlclassname=com.javahis.ui.emr.TEmrWordTreeControlUI.item=tTree_0;tComboBox_1;tLabel_1;tLabel_2;tComboBox_3;tLabel_3;tTextField_1;tLabel_4;tTextFormat_0UI.layout=nullUI.AutoSize=3UI.zhTitle=电子病历-类型设置UI.enTitle=EMR——TYPEUI.TopMenu=YUI.TopToolBar=YtTextFormat_0.Type=TTextFormattTextFormat_0.X=612tTextFormat_0.Y=324tTextFormat_0.Width=280tTextFormat_0.Height=28tTextFormat_0.showDownButton=NtTextFormat_0.HisOneNullRow=NtTextFormat_0.Action=tTextFormat_0.InputPopupMenu=NtLabel_4.Type=TLabeltLabel_4.X=517tLabel_4.Y=210tLabel_4.Width=79tLabel_4.Height=22tLabel_4.Text=病历类型：tTextField_1.Type=TTextFieldtTextField_1.X=612tTextField_1.Y=386tTextField_1.Width=85tTextField_1.Height=28tTextField_1.Text=tLabel_3.Type=TLabeltLabel_3.X=517tLabel_3.Y=389tLabel_3.Width=79tLabel_3.Height=22tLabel_3.Text=序号：tComboBox_3.Type=TComboBoxtComboBox_3.X=612tComboBox_3.Y=265tComboBox_3.Width=280tComboBox_3.Height=28tComboBox_3.Text=TButtontComboBox_3.showID=NtComboBox_3.Editable=YtComboBox_3.ShowText=NtComboBox_3.CanEdit=NtComboBox_3.SelectedAction=onSelectEmrStatustLabel_2.Type=TLabeltLabel_2.X=516tLabel_2.Y=268tLabel_2.Width=79tLabel_2.Height=22tLabel_2.Text=节点状态：tLabel_1.Type=TLabeltLabel_1.X=517tLabel_1.Y=327tLabel_1.Width=79tLabel_1.Height=22tLabel_1.Text=病历模版：tComboBox_1.Type=TComboBoxtComboBox_1.X=612tComboBox_1.Y=206tComboBox_1.Width=280tComboBox_1.Height=28tComboBox_1.Text=TButtontComboBox_1.showID=NtComboBox_1.Editable=YtComboBox_1.ShowText=NtComboBox_1.ShowName=NtComboBox_1.StringData=tComboBox_1.CanEdit=NtComboBox_1.SelectedAction=onSelectEmrTypetTree_0.Type=TTreetTree_0.X=11tTree_0.Y=8tTree_0.Width=439tTree_0.Height=749tTree_0.SpacingRow=1tTree_0.RowHeight=20tTree_0.AutoHeight=YET_LABEL.Type=TLabelET_LABEL.X=383ET_LABEL.Y=220ET_LABEL.Width=72ET_LABEL.Height=30ET_LABEL.Text=名称:ADDALLMENU.item=creatMenuOPENMENU.item=openMenuADDMENU.item=addMenuMENUCHECK.item=delFilecreatMenu.Type=TMenuItemcreatMenu.Text=新建病历creatMenu.zhText=新建病历creatMenu.enText=New MedicalcreatMenu.M=NcreatMenu.Action=onCreatMenuopenMenu.Type=TMenuItemopenMenu.Text=打开病历openMenu.zhText=打开病历openMenu.enText=Open MedicalopenMenu.M=OopenMenu.Action=onOpenMenuaddMenu.Type=TMenuItemaddMenu.Text=新增病历addMenu.zhText=新增病历addMenu.enText=Append MedicaladdMenu.M=DaddMenu.Action=onAddMenudelFile.Type=TMenuItemdelFile.Text=删除病历delFile.zhText=删除病历delFile.enText=Delete MedicaldelFile.M=DeletedelFile.Action=onDelFile