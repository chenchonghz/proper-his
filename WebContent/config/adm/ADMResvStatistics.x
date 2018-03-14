## TBuilder Config File ## Title:预约病患统计## Company:BlueCore## Author:WangLong 20120921## version 1.0#<Type=TFrame>UI.Title=预约病患统计UI.MenuConfig=%ROOT%\config\adm\ADMResvStatisticsMenu.xUI.Width=1291UI.Height=748UI.toolbar=YUI.controlclassname=com.javahis.ui.adm.ADMResvStatisticsControlUI.item=tLabel_0;ADM_SOURCE;tLabel_1;START_DATE;tLabel_2;END_DATE;tLabel_3;DEPT_CODE;tLabel_4;STATION_CODE;tLabel_5;DR_CODE;tLabel_6;COUNT;TABLEUI.layout=nullUI.TopMenu=YUI.ShowMenu=YUI.TopToolBar=YtLabel_0.Type=TLabeltLabel_0.X=19tLabel_0.Y=17tLabel_0.Width=65tLabel_0.Height=22tLabel_0.Text=病患来源:tLabel_0.Color=蓝ADM_SOURCE.Type=住院病患来源档下拉列表ADM_SOURCE.X=90ADM_SOURCE.Y=17ADM_SOURCE.Width=81ADM_SOURCE.Height=23ADM_SOURCE.Text=TButtonADM_SOURCE.showID=YADM_SOURCE.showName=YADM_SOURCE.showText=NADM_SOURCE.showValue=NADM_SOURCE.showPy1=NADM_SOURCE.showPy2=NADM_SOURCE.Editable=YADM_SOURCE.Tip=住院病患来源档下拉列表ADM_SOURCE.TableShowList=nameADM_SOURCE.ModuleParmString=GROUP_ID:ADM_SOURCEADM_SOURCE.ModuleParmTag=tLabel_1.Type=TLabeltLabel_1.X=188tLabel_1.Y=17tLabel_1.Width=36tLabel_1.Height=22tLabel_1.Text=日期:tLabel_1.Color=蓝START_DATE.Type=TTextFormatSTART_DATE.X=225START_DATE.Y=17START_DATE.Width=160START_DATE.Height=22START_DATE.Text=TTextFormatSTART_DATE.showDownButton=YSTART_DATE.FormatType=dateSTART_DATE.Format=yyyy/MM/dd HH:mm:sstLabel_2.Type=TLabeltLabel_2.X=388tLabel_2.Y=17tLabel_2.Width=20tLabel_2.Height=22tLabel_2.Text=～tLabel_2.Color=蓝END_DATE.Type=TTextFormatEND_DATE.X=404END_DATE.Y=17END_DATE.Width=160END_DATE.Height=22END_DATE.Text=TTextFormatEND_DATE.showDownButton=YEND_DATE.FormatType=dateEND_DATE.Format=yyyy/MM/dd HH:mm:sstLabel_3.Type=TLabeltLabel_3.X=50tLabel_3.Y=53tLabel_3.Width=39tLabel_3.Height=22tLabel_3.Text=科室:tLabel_3.Color=蓝DEPT_CODE.Type=科室DEPT_CODE.X=91DEPT_CODE.Y=53DEPT_CODE.Width=81DEPT_CODE.Height=22DEPT_CODE.Text=DEPT_CODE.HorizontalAlignment=2DEPT_CODE.PopupMenuHeader=代码,100;名称,100DEPT_CODE.PopupMenuWidth=300DEPT_CODE.PopupMenuHeight=300DEPT_CODE.FormatType=comboDEPT_CODE.ShowDownButton=YDEPT_CODE.Tip=科室DEPT_CODE.ShowColumnList=NAMEDEPT_CODE.HisOneNullRow=YDEPT_CODE.ClassIfy=0DEPT_CODE.Action=onDEPT_CODEDEPT_CODE.NextFocus=STATION_CODEDEPT_CODE.IpdFitFlg=YtLabel_4.Type=TLabeltLabel_4.X=196tLabel_4.Y=57tLabel_4.Width=41tLabel_4.Height=15tLabel_4.Text=病区:tLabel_4.Color=蓝STATION_CODE.Type=病区STATION_CODE.X=236STATION_CODE.Y=54STATION_CODE.Width=77STATION_CODE.Height=20STATION_CODE.Text=STATION_CODE.HorizontalAlignment=2STATION_CODE.PopupMenuHeader=代码,100;名称,100STATION_CODE.PopupMenuWidth=300STATION_CODE.PopupMenuHeight=300STATION_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1STATION_CODE.FormatType=comboSTATION_CODE.ShowDownButton=YSTATION_CODE.Tip=病区STATION_CODE.ShowColumnList=NAMESTATION_CODE.DeptCode=<DEPT_CODE>STATION_CODE.HisOneNullRow=YSTATION_CODE.Action=tLabel_5.Type=TLabeltLabel_5.X=338tLabel_5.Y=53tLabel_5.Width=37tLabel_5.Height=22tLabel_5.Text=医师:tLabel_5.Color=蓝DR_CODE.Type=人员DR_CODE.X=374DR_CODE.Y=53DR_CODE.Width=81DR_CODE.Height=22DR_CODE.Text=DR_CODE.HorizontalAlignment=2DR_CODE.PopupMenuHeader=代码,100;名称,100DR_CODE.PopupMenuWidth=300DR_CODE.PopupMenuHeight=300DR_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1DR_CODE.FormatType=comboDR_CODE.ShowDownButton=YDR_CODE.Tip=人员DR_CODE.ShowColumnList=NAMEDR_CODE.HisOneNullRow=YDR_CODE.Dept=<DEPT_CODE>tLabel_6.Type=TLabeltLabel_6.X=491tLabel_6.Y=57tLabel_6.Width=72tLabel_6.Height=15tLabel_6.Text=统计数量：COUNT.Type=TTextFieldCOUNT.X=557COUNT.Y=54COUNT.Width=77COUNT.Height=20COUNT.Text=COUNT.Enabled=YCOUNT.Editable=NTABLE.Type=TTableTABLE.X=3TABLE.Y=90TABLE.Width=1283TABLE.Height=653TABLE.SpacingRow=1TABLE.RowHeight=20TABLE.AutoWidth=YTABLE.AutoHeight=YTABLE.Header=预约时间,160,Timestamp,yyyy/MM/dd HH:mm:ss;病案号,120;姓名,100;入院科室,120,DEPT_CODE;入院病区,120,STATION_CODE;预约医生,100,DR_CODETABLE.ParmMap=APP_DATE;MR_NO;PAT_NAME;DEPT_CODE;STATION_CODE;DR_CODETABLE.LockColumns=allTABLE.RightClickedAction=TABLE.Item=DEPT_CODE;STATION_CODE;DR_CODETABLE.ColumnHorizontalAlignmentData=1,left;2,left;3,left;4,left;5,left