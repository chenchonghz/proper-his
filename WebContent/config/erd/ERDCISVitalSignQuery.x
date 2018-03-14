## TBuilder Config File ## Title:急诊体征监测记录查询## Company:BlueCore## Author:WangLong 2015.05.09## version 1.0#<Type=TFrame>UI.Title=急诊体征监测记录查询UI.MenuConfig=%ROOT%\config\erd\ERDCISVitalSignQueryMenu.xUI.Width=1024UI.Height=748UI.toolbar=YUI.controlclassname=com.javahis.ui.erd.ERDCISVitalSignQueryControlUI.Item=tPanel_0;tPanel_1;tPanel_2UI.ShowTitle=NUI.ShowMenu=NUI.TopMenu=YUI.TopToolBar=YUI.X=2tPanel_2.Type=TPaneltPanel_2.X=405tPanel_2.Y=1tPanel_2.Width=614tPanel_2.Height=728tPanel_2.Name=统药单tPanel_2.Text=tPanel_2.Item=TBL_DETAILtPanel_2.Border=组|监测记录tPanel_2.AutoWidth=YtPanel_2.AutoHeight=YTBL_DETAIL.Type=TTableTBL_DETAIL.X=10TBL_DETAIL.Y=21TBL_DETAIL.Width=593TBL_DETAIL.Height=710TBL_DETAIL.SpacingRow=1TBL_DETAIL.RowHeight=20TBL_DETAIL.AutoWidth=YTBL_DETAIL.AutoHeight=YTBL_DETAIL.AutoX=NTBL_DETAIL.AutoY=NTBL_DETAIL.Header=监测时间/项目,140;HR,80,double,#####0.000;Pulse,100;DBP,80,double,#####0.0000;SpO2,100,double;CVP,100,doubleTBL_DETAIL.LockColumns=allTBL_DETAIL.ParmMap=TBL_DETAIL.ColumnHorizontalAlignmentData=0,left;1,right;2,right;3,right;4,right;5,right;6,right;7,right;8,right;9,right;10,right;11,right;12,right;13,right;14,right;15,righttPanel_1.Type=TPaneltPanel_1.X=5tPanel_1.Y=170tPanel_1.Width=402tPanel_1.Height=562tPanel_1.Border=组|病患清单tPanel_1.AutoX=NtPanel_1.AutoY=NtPanel_1.AutoHeight=YtPanel_1.Item=TBL_PATTBL_PAT.Type=TTableTBL_PAT.X=6TBL_PAT.Y=74TBL_PAT.Width=380TBL_PAT.Height=538TBL_PAT.SpacingRow=1TBL_PAT.RowHeight=20TBL_PAT.AutoX=YTBL_PAT.AutoY=YTBL_PAT.AutoWidth=YTBL_PAT.AutoHeight=YTBL_PAT.Header=床号,80;姓名,80;病案号,100;就诊日期,140,Timestamp,yyyy/MM/dd HH:mm:ss;经治医生,80,USER_IDTBL_PAT.Item=USER_ID;ERD_LEVELTBL_PAT.ParmMap=BED_DESC;PAT_NAME;MR_NO;IN_DATE;DR_CODETBL_PAT.LockColumns=allTBL_PAT.ColumnHorizontalAlignmentData=0,left;1,left;4,left;5,leftTBL_PAT.ColumnSelectionAllowed=NUSER_ID.Type=人员下拉列表USER_ID.X=10USER_ID.Y=10USER_ID.Width=81USER_ID.Height=23USER_ID.Text=TButtonUSER_ID.showID=YUSER_ID.showName=YUSER_ID.showText=NUSER_ID.showValue=NUSER_ID.showPy1=NUSER_ID.showPy2=NUSER_ID.Editable=YUSER_ID.Tip=人员USER_ID.TableShowList=nameUSER_ID.ModuleParmString=USER_ID.ModuleParmTag=ERD_LEVEL.Type=检伤等级下拉列表ERD_LEVEL.X=420ERD_LEVEL.Y=46ERD_LEVEL.Width=100ERD_LEVEL.Height=23ERD_LEVEL.Text=TButtonERD_LEVEL.showID=YERD_LEVEL.showName=YERD_LEVEL.showText=NERD_LEVEL.showValue=NERD_LEVEL.showPy1=YERD_LEVEL.showPy2=YERD_LEVEL.Editable=YERD_LEVEL.Tip=检伤等级ERD_LEVEL.TableShowList=nametPanel_0.Type=TPaneltPanel_0.X=5tPanel_0.Y=1tPanel_0.Width=401tPanel_0.Height=171tPanel_0.Border=组|查询条件tPanel_0.AutoWidth=NtPanel_0.AutoHeight=NtPanel_0.Item=tLabel_0;ERD_REGION_CODE;tLabel_1;FREQ_CODE;tLabel_2;BED_NO;tLabel_3;MR_NO;tLabel_4;MONITOR_START_DATE;tLabel_5;MONITOR_END_DATE;tLabel_6;ADM_START_DATE;tLabel_7;ADM_END_DATEtPanel_0.AutoY=NADM_END_DATE.Type=TTextFormatADM_END_DATE.X=240ADM_END_DATE.Y=109ADM_END_DATE.Width=152ADM_END_DATE.Height=23ADM_END_DATE.Text=TTextFormatADM_END_DATE.FormatType=dateADM_END_DATE.Format=yyyy/MM/dd HH:mm:ssADM_END_DATE.showDownButton=YADM_END_DATE.HorizontalAlignment=2tLabel_7.Type=TLabeltLabel_7.X=225tLabel_7.Y=114tLabel_7.Width=25tLabel_7.Height=15tLabel_7.Text=～ADM_START_DATE.Type=TTextFormatADM_START_DATE.X=70ADM_START_DATE.Y=109ADM_START_DATE.Width=154ADM_START_DATE.Height=23ADM_START_DATE.Text=TTextFormatADM_START_DATE.FormatType=dateADM_START_DATE.Format=yyyy/MM/dd HH:mm:ssADM_START_DATE.showDownButton=YADM_START_DATE.HorizontalAlignment=2tLabel_6.Type=TLabeltLabel_6.X=12tLabel_6.Y=113tLabel_6.Width=62tLabel_6.Height=15tLabel_6.Text=入床时间tLabel_6.Color=蓝MONITOR_END_DATE.Type=TTextFormatMONITOR_END_DATE.X=241MONITOR_END_DATE.Y=141MONITOR_END_DATE.Width=151MONITOR_END_DATE.Height=23MONITOR_END_DATE.Text=TTextFormatMONITOR_END_DATE.FormatType=dateMONITOR_END_DATE.Format=yyyy/MM/dd HH:mmMONITOR_END_DATE.showDownButton=YMONITOR_END_DATE.HorizontalAlignment=2tLabel_5.Type=TLabeltLabel_5.X=227tLabel_5.Y=146tLabel_5.Width=25tLabel_5.Height=15tLabel_5.Text=～MONITOR_START_DATE.Type=TTextFormatMONITOR_START_DATE.X=71MONITOR_START_DATE.Y=141MONITOR_START_DATE.Width=154MONITOR_START_DATE.Height=23MONITOR_START_DATE.Text=TTextFormatMONITOR_START_DATE.FormatType=dateMONITOR_START_DATE.Format=yyyy/MM/dd HH:mmMONITOR_START_DATE.showDownButton=YMONITOR_START_DATE.HorizontalAlignment=2tLabel_4.Type=TLabeltLabel_4.X=12tLabel_4.Y=145tLabel_4.Width=58tLabel_4.Height=15tLabel_4.Text=监测时间tLabel_4.Color=蓝MR_NO.Type=TTextFieldMR_NO.X=70MR_NO.Y=78MR_NO.Width=154MR_NO.Height=23MR_NO.Text=MR_NO.Action=onMrNoMR_NO.FocusLostAction=tLabel_3.Type=TLabeltLabel_3.X=11tLabel_3.Y=82tLabel_3.Width=56tLabel_3.Height=15tLabel_3.Text=病 案 号tLabel_3.Color=蓝BED_NO.Type=TTextFormatBED_NO.X=70BED_NO.Y=48BED_NO.Width=153BED_NO.Height=23BED_NO.Text=BED_NO.FormatType=comboBED_NO.showDownButton=YBED_NO.PopupMenuHeader=代码,60;名称,150BED_NO.PopupMenuWidth=225BED_NO.PopupMenuHeight=200BED_NO.PopupMenuSQL=SELECT BED_NO AS ID, BED_NO||' '||BED_DESC AS NAME FROM ERD_BED ORDER BY ID ASC NULLS LASTBED_NO.PopupMenuFilter=ID,1;NAME,1BED_NO.HisOneNullRow=YBED_NO.ShowColumnList=NAMEBED_NO.ValueColumn=IDBED_NO.ShowName=YBED_NO.HorizontalAlignment=2BED_NO.Tip=急诊病床tLabel_2.Type=TLabeltLabel_2.X=11tLabel_2.Y=52tLabel_2.Width=59tLabel_2.Height=15tLabel_2.Text=床    号tLabel_2.Color=蓝FREQ_CODE.Type=TComboBoxFREQ_CODE.X=271FREQ_CODE.Y=18FREQ_CODE.Width=83FREQ_CODE.Height=23FREQ_CODE.Text=TButtonFREQ_CODE.showID=NFREQ_CODE.Editable=YFREQ_CODE.Tip=完成状态FREQ_CODE.StringData=[[id,name],[1,Q 1 Min],[2,Q 2 Min],[3,Q 3 Min],[5,Q 5 Min],[10,Q 10 Min],[15,Q 15 Min],[20,Q 20 Min],[30,Q 30 Min],[60,Q 60 Min]]FREQ_CODE.ShowName=YFREQ_CODE.TableShowList=nameFREQ_CODE.SelectedAction=onSelectFreqtLabel_1.Type=TLabeltLabel_1.X=235tLabel_1.Y=22tLabel_1.Width=34tLabel_1.Height=15tLabel_1.Text=频率ERD_REGION_CODE.Type=留观病区下拉区域ERD_REGION_CODE.X=70ERD_REGION_CODE.Y=18ERD_REGION_CODE.Width=154ERD_REGION_CODE.Height=23ERD_REGION_CODE.Text=ERD_REGION_CODE.HorizontalAlignment=2ERD_REGION_CODE.PopupMenuHeader=代码,100;名称,100ERD_REGION_CODE.PopupMenuWidth=300ERD_REGION_CODE.PopupMenuHeight=300ERD_REGION_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1ERD_REGION_CODE.FormatType=comboERD_REGION_CODE.ShowDownButton=YERD_REGION_CODE.Tip=留观病区ERD_REGION_CODE.ShowColumnList=NAMEERD_REGION_CODE.HisOneNullRow=YERD_REGION_CODE.Action=onChooseRegiontLabel_0.Type=TLabeltLabel_0.X=11tLabel_0.Y=22tLabel_0.Width=59tLabel_0.Height=15tLabel_0.Text=急诊区域tLabel_0.Color=蓝