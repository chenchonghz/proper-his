#  # Title: 就诊序号选择  #  # Description:就诊序号选择  #  # Copyright: JavaHis (c) 2008  #  # @author fudw  # @version 1.0<Type=TFrame>UI.Title=预约未结案//UI.MenuConfig=%ROOT%\config\opb\OPBChooseVisit_Menu.xUI.Width=706UI.Height=450UI.toolbar=YUI.controlclassname=com.javahis.ui.ins.INSResvNCloseControlUI.item=LBL;TABLE;LBL1;tButton_2;tButton_3;tButton_1;STARTTIME;ENDTIME;tLabel_0;tLabel_1;tLabel_2;REGION_CODE;DEPT_CODE;DR_CODE;tLabel_15;STATION_CODEUI.layout=nullUI.FocusList=UI.X=0UI.Y=0UI.TopMenu=YUI.TopToolBar=YUI.ShowTitle=NUI.AutoX=NUI.AutoY=NUI.AutoWidth=NUI.AutoHeight=NUI.AutoSize=0UI.Border=凸STATION_CODE.Type=病区STATION_CODE.X=410STATION_CODE.Y=15STATION_CODE.Width=110STATION_CODE.Height=23STATION_CODE.Text=STATION_CODE.HorizontalAlignment=2STATION_CODE.PopupMenuHeader=代码,100;名称,100STATION_CODE.PopupMenuWidth=300STATION_CODE.PopupMenuHeight=300STATION_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1STATION_CODE.FormatType=comboSTATION_CODE.ShowDownButton=YSTATION_CODE.Tip=病区STATION_CODE.ShowColumnList=NAMESTATION_CODE.HisOneNullRow=YtLabel_15.Type=TLabeltLabel_15.X=373tLabel_15.Y=20tLabel_15.Width=36tLabel_15.Height=15tLabel_15.Text=病区:tLabel_15.Color=蓝DR_CODE.Type=人员DR_CODE.X=592DR_CODE.Y=15DR_CODE.Width=107DR_CODE.Height=23DR_CODE.Text=DR_CODE.HorizontalAlignment=2DR_CODE.PopupMenuHeader=代码,100;名称,100DR_CODE.PopupMenuWidth=300DR_CODE.PopupMenuHeight=300DR_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1DR_CODE.FormatType=comboDR_CODE.ShowDownButton=YDR_CODE.Tip=人员DR_CODE.ShowColumnList=NAMEDR_CODE.HisOneNullRow=YDR_CODE.PosType=1DEPT_CODE.Type=科室DEPT_CODE.X=242DEPT_CODE.Y=15DEPT_CODE.Width=113DEPT_CODE.Height=23DEPT_CODE.Text=DEPT_CODE.HorizontalAlignment=2DEPT_CODE.PopupMenuHeader=代码,100;名称,100DEPT_CODE.PopupMenuWidth=300DEPT_CODE.PopupMenuHeight=300DEPT_CODE.FormatType=comboDEPT_CODE.ShowDownButton=YDEPT_CODE.Tip=科室DEPT_CODE.ShowColumnList=NAMEDEPT_CODE.HisOneNullRow=YDEPT_CODE.FinalFlg=YDEPT_CODE.ClassIfy=0REGION_CODE.Type=区域下拉列表REGION_CODE.X=64REGION_CODE.Y=15REGION_CODE.Width=110REGION_CODE.Height=23REGION_CODE.Text=TButtonREGION_CODE.showID=YREGION_CODE.showName=YREGION_CODE.showText=NREGION_CODE.showValue=NREGION_CODE.showPy1=NREGION_CODE.showPy2=NREGION_CODE.Editable=YREGION_CODE.Tip=区域REGION_CODE.TableShowList=nameREGION_CODE.ModuleParmString=REGION_CODE.ModuleParmTag=REGION_CODE.ExpandWidth=80REGION_CODE.Enabled=NtLabel_2.Type=TLabeltLabel_2.X=22tLabel_2.Y=20tLabel_2.Width=40tLabel_2.Height=15tLabel_2.Text=区域:tLabel_2.Color=蓝tLabel_1.Type=TLabeltLabel_1.X=198tLabel_1.Y=20tLabel_1.Width=43tLabel_1.Height=15tLabel_1.Text=科室:tLabel_1.Color=蓝tLabel_0.Type=TLabeltLabel_0.X=537tLabel_0.Y=20tLabel_0.Width=54tLabel_0.Height=15tLabel_0.Text=操作人:tLabel_0.Color=蓝ENDTIME.Type=TTextFormatENDTIME.X=294ENDTIME.Y=51ENDTIME.Width=110ENDTIME.Height=20ENDTIME.Text=TTextFormatENDTIME.FormatType=dateENDTIME.Format=yyyy/MM/ddENDTIME.showDownButton=YSTARTTIME.Type=TTextFormatSTARTTIME.X=133STARTTIME.Y=51STARTTIME.Width=126STARTTIME.Height=20STARTTIME.Text=TTextFormatSTARTTIME.FormatType=dateSTARTTIME.Format=yyyy/MM/ddSTARTTIME.showDownButton=YtButton_1.Type=TButtontButton_1.X=430tButton_1.Y=50tButton_1.Width=81tButton_1.Height=23tButton_1.Text=查询tButton_1.Action=onQuerytButton_3.Type=TButtontButton_3.X=436tButton_3.Y=379tButton_3.Width=81tButton_3.Height=23tButton_3.Text=取消tButton_3.Action=onClosetButton_2.Type=TButtontButton_2.X=234tButton_2.Y=379tButton_2.Width=81tButton_2.Height=23tButton_2.Text=传回tButton_2.Action=onOKLBL1.Type=TLabelLBL1.X=273LBL1.Y=59LBL1.Width=12LBL1.Height=15LBL1.Text=~TABLE.Type=TTableTABLE.X=6TABLE.Y=84TABLE.Width=693TABLE.Height=277TABLE.SpacingRow=1TABLE.RowHeight=20TABLE.AutoWidth=YTABLE.Header=区域,120,REGION_CODE;预约单号,110;病案号,110;姓名,120;身份证号,130;预约日期,100;预约住院日,100TABLE.StringData=TABLE.ParmMap=REGION_CODE;RESV_NO;MR_NO;PAT_NAME;IDNO;APP_DATE;RESV_DATE;CASE_NO;DEPT_CODE;ICD_CHN_DESC;PATIENT_CONDITION;DIAG_CODE;CONFIRM_NOTABLE.LockRows=TABLE.Item=REGION_CODETABLE.LockColumns=allLBL.Type=TLabelLBL.X=21LBL.Y=55LBL.Width=103LBL.Height=15LBL.Text=预约起迄日:LBL.Color=蓝