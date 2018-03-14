## TBuilder Config File ## Title:手术医生站## Company:Bluecore## Author:wanglong 2014.07.07## version 1.0#<Type=TFrame>UI.Title=手术医生站UI.MenuConfig=%ROOT%\config\ope\OPEDRStationMenu.xUI.Width=1024UI.Height=748UI.toolbar=YUI.controlclassname=com.javahis.ui.ope.OPEDRStationControlUI.Item=tPanel_0;PANELUI.TopMenu=YUI.TopToolBar=YUI.ShowTitle=NUI.ShowMenu=NUI.ShowWindowAction=onShowWindowsEventPANEL.Type=TPanelPANEL.X=5PANEL.Y=122PANEL.Width=1014PANEL.Height=621PANEL.Border=凸PANEL.Item=Table;tPanel_7;tPanel_8PANEL.AutoWidth=YPANEL.AutoHeight=YtPanel_8.Type=TPaneltPanel_8.X=903tPanel_8.Y=4tPanel_8.Width=82tPanel_8.Height=34tPanel_8.Border=组tPanel_8.Item=tLabel_65tLabel_65.Type=TLabeltLabel_65.X=4tLabel_65.Y=3tLabel_65.Width=75tLabel_65.Height=24tLabel_65.Text=胸痛中心tLabel_65.zhText=胸痛中心tLabel_65.BKColor=255,170,255tLabel_65.VerticalAlignment=0tLabel_65.HorizontalAlignment=0tPanel_7.Type=TPaneltPanel_7.X=820tPanel_7.Y=4tPanel_7.Width=83tPanel_7.Height=37tPanel_7.Border=组tPanel_7.Item=tLabel_64tLabel_64.Type=TLabeltLabel_64.X=6tLabel_64.Y=3tLabel_64.Width=72tLabel_64.Height=23tLabel_64.Text=CCPC-AMItLabel_64.zhText=CCPC-AMItLabel_64.Color=红tLabel_64.HorizontalAlignment=0Table.Type=TTableTable.X=4Table.Y=32Table.Width=1000Table.Height=584Table.SpacingRow=1Table.RowHeight=20Table.AutoWidth=YTable.AutoHeight=YTable.AutoX=YTable.Header=手术时间,150,timestamp,yyyy/MM/dd HH:mm:ss;手术室,80,ROOM_NO;病案号,100;住院号,100;姓名,100;手术名称,200,OpList;诊断名称,200,DiagList;主刀医生,80,MAIN_SURGEON;麻醉医生,80,ANA_USER;急作,40,boolean;连台,40,boolean;需时,40;状态,80,STATE;确认时间,100Table.LockColumns=allTable.ParmMap=OP_DATE;ROOM_NO;MR_NO;IPD_NO;PAT_NAME;OP_CODE;DIAG_CODE;MAIN_SURGEON;ANA_USER;URGBLADE_FLG;TF_FLG;TIME_NEED;STATE;APROVE_DATETable.ColumnHorizontalAlignmentData=1,left;2,left;3,left;4,left;5,left;6,left;7,left;8,left;11,right;12,left;13,leftTable.Item=ROOM_NO;MAIN_SURGEON;ANA_USER;STATETable.AutoSize=3tPanel_0.Type=TPaneltPanel_0.X=5tPanel_0.Y=5tPanel_0.Width=1014tPanel_0.Height=114tPanel_0.Border=凸tPanel_0.AutoX=YtPanel_0.AutoY=YtPanel_0.AutoWidth=YtPanel_0.Item=tLabel_1;OP_START_DATE;tLabel_2;OP_END_DATE;tLabel_21;ROOM_NO;tLabel_4;STATE;MAIN_SURGEON;tLabel_0;MR_NO;tLabel_5;PAT_NAME;tLabel_3;ADM_TYPE;tLabel_6;ANA_USER;tLabel_28;OP_DEPT_CODE;tLabel_7;SCHD_CODE;tCheckBox_0;tLabel_8;OPE_STA_N;OPE_STA_Y;OPE_STA_ALL;AMI_FLGAMI_FLG.Type=TLabelAMI_FLG.X=16AMI_FLG.Y=98AMI_FLG.Width=72AMI_FLG.Height=15AMI_FLG.Text=*胸痛病人AMI_FLG.Color=红AMI_FLG.Visible=NOPE_STA_ALL.Type=TRadioButtonOPE_STA_ALL.X=932OPE_STA_ALL.Y=76OPE_STA_ALL.Width=59OPE_STA_ALL.Height=23OPE_STA_ALL.Text=全部OPE_STA_ALL.Group=AOPE_STA_ALL.Color=blueOPE_STA_ALL.Action=onQueryOPE_STA_Y.Type=TRadioButtonOPE_STA_Y.X=865OPE_STA_Y.Y=76OPE_STA_Y.Width=71OPE_STA_Y.Height=23OPE_STA_Y.Text=已完成OPE_STA_Y.Group=AOPE_STA_Y.Color=blueOPE_STA_Y.Action=onQueryOPE_STA_N.Type=TRadioButtonOPE_STA_N.X=799OPE_STA_N.Y=76OPE_STA_N.Width=68OPE_STA_N.Height=23OPE_STA_N.Text=未完成OPE_STA_N.Group=AOPE_STA_N.Color=blueOPE_STA_N.Selected=YOPE_STA_N.Action=onQuerytLabel_8.Type=TLabeltLabel_8.X=738tLabel_8.Y=80tLabel_8.Width=66tLabel_8.Height=15tLabel_8.Text=手术状态:tLabel_8.Color=bluetCheckBox_0.Type=TCheckBoxtCheckBox_0.X=653tCheckBox_0.Y=76tCheckBox_0.Width=81tCheckBox_0.Height=23tCheckBox_0.Text=当前病患tCheckBox_0.Selected=YtCheckBox_0.Action=onQuerySCHD_CODE.Type=临床路径时程下拉区域SCHD_CODE.X=747SCHD_CODE.Y=43SCHD_CODE.Width=123SCHD_CODE.Height=23SCHD_CODE.Text=SCHD_CODE.HorizontalAlignment=2SCHD_CODE.PopupMenuHeader=代码,100;名称,100SCHD_CODE.PopupMenuWidth=300SCHD_CODE.PopupMenuHeight=300SCHD_CODE.FormatType=comboSCHD_CODE.ShowDownButton=YSCHD_CODE.Tip=临床路径时程SCHD_CODE.ShowColumnList=NAMESCHD_CODE.HisOneNullRow=YtLabel_7.Type=TLabeltLabel_7.X=654tLabel_7.Y=47tLabel_7.Width=98tLabel_7.Height=15tLabel_7.Text=路径当前时程:OP_DEPT_CODE.Type=科室OP_DEPT_CODE.X=529OP_DEPT_CODE.Y=77OP_DEPT_CODE.Width=117OP_DEPT_CODE.Height=20OP_DEPT_CODE.Text=OP_DEPT_CODE.HorizontalAlignment=2OP_DEPT_CODE.PopupMenuHeader=ID,100;NAME,100OP_DEPT_CODE.PopupMenuWidth=300OP_DEPT_CODE.PopupMenuHeight=300OP_DEPT_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1OP_DEPT_CODE.FormatType=comboOP_DEPT_CODE.ShowDownButton=YOP_DEPT_CODE.Tip=科室OP_DEPT_CODE.ShowColumnList=NAMEOP_DEPT_CODE.HisOneNullRow=YOP_DEPT_CODE.ClassIfy=0OP_DEPT_CODE.FinalFlg=YtLabel_28.Type=TLabeltLabel_28.X=460tLabel_28.Y=80tLabel_28.Width=64tLabel_28.Height=15tLabel_28.Text=手术科室ANA_USER.Type=人员ANA_USER.X=298ANA_USER.Y=77ANA_USER.Width=133ANA_USER.Height=20ANA_USER.Text=ANA_USER.HorizontalAlignment=2ANA_USER.PopupMenuHeader=ID,100;NAME,100ANA_USER.PopupMenuWidth=300ANA_USER.PopupMenuHeight=300ANA_USER.PopupMenuFilter=ID,1;NAME,1;PY1,1ANA_USER.FormatType=comboANA_USER.ShowDownButton=YANA_USER.Tip=人员ANA_USER.ShowColumnList=NAMEANA_USER.PosType=1ANA_USER.HisOneNullRow=YtLabel_6.Type=TLabeltLabel_6.X=233tLabel_6.Y=80tLabel_6.Width=63tLabel_6.Height=15tLabel_6.Text=麻醉医生ADM_TYPE.Type=TComboBoxADM_TYPE.X=87ADM_TYPE.Y=14ADM_TYPE.Width=117ADM_TYPE.Height=20ADM_TYPE.Text=TButtonADM_TYPE.showID=YADM_TYPE.Editable=YADM_TYPE.StringData=[[id,text],[,],[O,门诊],[E,急诊],[I,住院]]ADM_TYPE.TableShowList=textADM_TYPE.ExpandWidth=80ADM_TYPE.Action=onChooseAdmTypeADM_TYPE.Enabled=NtLabel_3.Type=TLabeltLabel_3.X=18tLabel_3.Y=17tLabel_3.Width=63tLabel_3.Height=15tLabel_3.Text=门急住别tLabel_3.Color=蓝PAT_NAME.Type=TTextFieldPAT_NAME.X=529PAT_NAME.Y=45PAT_NAME.Width=117PAT_NAME.Height=20PAT_NAME.Text=PAT_NAME.Enabled=NtLabel_5.Type=TLabeltLabel_5.X=460tLabel_5.Y=48tLabel_5.Width=62tLabel_5.Height=15tLabel_5.Text=姓    名MR_NO.Type=TTextFieldMR_NO.X=298MR_NO.Y=45MR_NO.Width=133MR_NO.Height=20MR_NO.Text=MR_NO.Action=onMrNoQuerytLabel_0.Type=TLabeltLabel_0.X=233tLabel_0.Y=48tLabel_0.Width=66tLabel_0.Height=15tLabel_0.Text=病 案 号tLabel_0.Color=蓝MAIN_SURGEON.Type=人员MAIN_SURGEON.X=88MAIN_SURGEON.Y=77MAIN_SURGEON.Width=117MAIN_SURGEON.Height=20MAIN_SURGEON.Text=MAIN_SURGEON.HorizontalAlignment=2MAIN_SURGEON.PopupMenuHeader=ID,100;NAME,100MAIN_SURGEON.PopupMenuWidth=300MAIN_SURGEON.PopupMenuHeight=300MAIN_SURGEON.PopupMenuFilter=ID,1;NAME,1;PY1,1MAIN_SURGEON.FormatType=comboMAIN_SURGEON.ShowDownButton=YMAIN_SURGEON.Tip=人员MAIN_SURGEON.ShowColumnList=NAMEMAIN_SURGEON.PosType=1MAIN_SURGEON.HisOneNullRow=YSTATE.Type=TComboBoxSTATE.X=827STATE.Y=94STATE.Width=81STATE.Height=23STATE.Text=TButtonSTATE.showID=YSTATE.Editable=YSTATE.StringData=[[id,text],[,],[0,申请],[1,排程完毕],[2,接患者],[3,手术室交接],[4,手术等待],[5,手术开始],[6,关胸],[7,手术结束],[8,返回病房]]STATE.ExpandWidth=40STATE.TableShowList=textSTATE.Visible=NtLabel_4.Type=TLabeltLabel_4.X=18tLabel_4.Y=49tLabel_4.Width=60tLabel_4.Height=15tLabel_4.Text=手 术 间tLabel_4.Color=蓝ROOM_NO.Type=手术室列表ROOM_NO.X=87ROOM_NO.Y=45ROOM_NO.Width=117ROOM_NO.Height=20ROOM_NO.Text=TButtonROOM_NO.showID=YROOM_NO.showName=YROOM_NO.showText=NROOM_NO.showValue=NROOM_NO.showPy1=YROOM_NO.showPy2=YROOM_NO.Editable=YROOM_NO.Tip=手术室ROOM_NO.TableShowList=nameROOM_NO.ModuleParmString=GROUP_ID:OPE_OPROOMROOM_NO.ModuleParmTag=ROOM_NO.Action=ROOM_NO.SelectedAction=onOpRoomQuerytLabel_21.Type=TLabeltLabel_21.X=18tLabel_21.Y=80tLabel_21.Width=63tLabel_21.Height=15tLabel_21.Text=开单医生tLabel_21.Color=蓝OP_END_DATE.Type=TTextFormatOP_END_DATE.X=486OP_END_DATE.Y=14OP_END_DATE.Width=160OP_END_DATE.Height=20OP_END_DATE.Text=TTextFormatOP_END_DATE.FormatType=dateOP_END_DATE.Format=yyyy/MM/dd HH:mm:ssOP_END_DATE.showDownButton=YtLabel_2.Type=TLabeltLabel_2.X=465tLabel_2.Y=17tLabel_2.Width=18tLabel_2.Height=15tLabel_2.Text=至OP_START_DATE.Type=TTextFormatOP_START_DATE.X=298OP_START_DATE.Y=14OP_START_DATE.Width=160OP_START_DATE.Height=20OP_START_DATE.Text=TTextFormatOP_START_DATE.FormatType=dateOP_START_DATE.Format=yyyy/MM/dd HH:mm:ssOP_START_DATE.showDownButton=YtLabel_1.Type=TLabeltLabel_1.X=233tLabel_1.Y=17tLabel_1.Width=59tLabel_1.Height=15tLabel_1.Text=手术日期tLabel_1.Color=蓝