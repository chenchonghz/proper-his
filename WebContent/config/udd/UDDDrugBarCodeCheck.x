## TBuilder Config File ## Title:药品条码核对## Company:JavaHis## Author:王斌 2015.12.07## version 1.0#<Type=TFrame>UI.Title=药品条码核对UI.MenuConfig=%ROOT%\config\udd\UDDDrugBarCodeCheckMenu.xUI.Width=1250UI.Height=760UI.toolbar=YUI.controlclassname=com.javahis.ui.udd.UDDDrugBarCodeCheckControlUI.item=tPanel_0;TABLE;FREQ_COMBO;ROUTE_COMBO;UNIT_COMBO;OPERATOR_COMBOUI.layout=nullUI.Text=UI.TopToolBar=YUI.ShowTitle=NUI.FocusList=BAR_CODEUI.MoveType=UI.TopMenu=YUI.LoadFlg=NUI.ShowMenu=NOPERATOR_COMBO.Type=人员OPERATOR_COMBO.X=276OPERATOR_COMBO.Y=511OPERATOR_COMBO.Width=81OPERATOR_COMBO.Height=23OPERATOR_COMBO.Text=OPERATOR_COMBO.HorizontalAlignment=2OPERATOR_COMBO.PopupMenuHeader=代码,100;名称,100OPERATOR_COMBO.PopupMenuWidth=300OPERATOR_COMBO.PopupMenuHeight=300OPERATOR_COMBO.PopupMenuFilter=ID,1;NAME,1;PY1,1OPERATOR_COMBO.FormatType=comboOPERATOR_COMBO.ShowDownButton=YOPERATOR_COMBO.Tip=人员OPERATOR_COMBO.ShowColumnList=NAMEUNIT_COMBO.Type=计量单位UNIT_COMBO.X=187UNIT_COMBO.Y=511UNIT_COMBO.Width=81UNIT_COMBO.Height=23UNIT_COMBO.Text=UNIT_COMBO.HorizontalAlignment=2UNIT_COMBO.PopupMenuHeader=代码,100;名称,100UNIT_COMBO.PopupMenuWidth=300UNIT_COMBO.PopupMenuHeight=300UNIT_COMBO.PopupMenuFilter=ID,1;NAME,1;PY1,1UNIT_COMBO.FormatType=comboUNIT_COMBO.ShowDownButton=YUNIT_COMBO.Tip=计量单位UNIT_COMBO.ShowColumnList=NAMEROUTE_COMBO.Type=用法下拉区域ROUTE_COMBO.X=100ROUTE_COMBO.Y=511ROUTE_COMBO.Width=81ROUTE_COMBO.Height=23ROUTE_COMBO.Text=ROUTE_COMBO.HorizontalAlignment=2ROUTE_COMBO.PopupMenuHeader=代码,100;名称,100ROUTE_COMBO.PopupMenuWidth=300ROUTE_COMBO.PopupMenuHeight=300ROUTE_COMBO.PopupMenuFilter=ID,1;NAME,1;PY1,1ROUTE_COMBO.FormatType=comboROUTE_COMBO.ShowDownButton=YROUTE_COMBO.Tip=用法ROUTE_COMBO.ShowColumnList=NAMEFREQ_COMBO.Type=频次FREQ_COMBO.X=12FREQ_COMBO.Y=511FREQ_COMBO.Width=81FREQ_COMBO.Height=23FREQ_COMBO.Text=FREQ_COMBO.HorizontalAlignment=2FREQ_COMBO.PopupMenuHeader=代码,100;名称,100FREQ_COMBO.PopupMenuWidth=300FREQ_COMBO.PopupMenuHeight=300FREQ_COMBO.PopupMenuFilter=ID,1;NAME,1;PY1,1FREQ_COMBO.FormatType=comboFREQ_COMBO.ShowDownButton=YFREQ_COMBO.Tip=频次FREQ_COMBO.ShowColumnList=NAMETABLE.Type=TTableTABLE.X=5TABLE.Y=259TABLE.Width=1240TABLE.Height=494TABLE.SpacingRow=1TABLE.RowHeight=40TABLE.AutoWidth=YTABLE.AutoHeight=YTABLE.AutoX=NTABLE.Header=核,30,boolean;主,30,boolean;组,30;应执行时间,140;医嘱名称,150;每次用量,60;单位,60,UNIT_COMBO;总量,60;单位,60,UNIT_COMBO;频次,80,FREQ_COMBO;用法,80,ROUTE_COMBO;医生备注,150;开单医生,80,OPERATOR_COMBO;停用日期,120;停用医师,80,OPERATOR_COMBO;不执行原因,100,RESN;医嘱单号,150TABLE.ParmMap=CHECK_FLG;LINKMAIN_FLG;LINK_NO;NS_EXEC_DATE;ORDER_DESC;MEDI_QTY;MEDI_UNIT;DOSAGE_QTY;DOSAGE_UNIT;FREQ_CODE;ROUTE_CODE;DR_NOTE;ORDER_DR_CODE;DC_DATE;DC_DR_CODE;CANCELRSN_CODE;BAR_CODETABLE.AutoModifyDataStore=NTABLE.LockColumns=ALLTABLE.ClickedAction=onTableClickTABLE.StringData=TABLE.Item=UNIT_COMBO;FREQ_COMBO;ROUTE_COMBO;OPERATOR_COMBOTABLE.SelectionMode=2TABLE.ColumnHorizontalAlignmentData=4,left;5,right;7,right;11,lefttPanel_0.Type=TPaneltPanel_0.X=6tPanel_0.Y=5tPanel_0.Width=1240tPanel_0.Height=249tPanel_0.Border=组tPanel_0.AutoX=YtPanel_0.AutoY=NtPanel_0.AutoWidth=YtPanel_0.Item=tLabel_0;MR_NO;tLabel_1;PAT_NAME;tLabel_2;tLabel_3;BED_NO;tLabel_4;START_DATE;tLabel_6;END_DATE;tLabel_7;BAR_CODE;SEX_CODE;tLabel_5;tLabel_8;tLabel_9;QY;user;STATION_CODE;DEPT_CODE;tLabel_11;AGE;tLabel_12;tLabel_13;ICD;BLOOD_TYPE;tLabel_10;UNCHECK;CHECKED;CASE_NOtPanel_0.MenuConfig=tPanel_0.TopToolBar=NtPanel_0.ShowTitle=NtPanel_0.Enabled=NCASE_NO.Type=TTextFieldCASE_NO.X=805CASE_NO.Y=56CASE_NO.Width=111CASE_NO.Height=28CASE_NO.Text=CASE_NO.Enabled=NCASE_NO.Visible=NCHECKED.Type=TRadioButtonCHECKED.X=614CHECKED.Y=198CHECKED.Width=89CHECKED.Height=23CHECKED.Text=已核对CHECKED.Group=checkCHECKED.FontSize=20CHECKED.Color=蓝UNCHECK.Type=TRadioButtonUNCHECK.X=526UNCHECK.Y=198UNCHECK.Width=91UNCHECK.Height=23UNCHECK.Text=未核对UNCHECK.Group=checkUNCHECK.FontSize=20UNCHECK.Color=蓝UNCHECK.Selected=YtLabel_10.Type=TLabeltLabel_10.X=428tLabel_10.Y=199tLabel_10.Width=100tLabel_10.Height=22tLabel_10.Text=核对状态：tLabel_10.FontSize=20tLabel_10.Color=蓝BLOOD_TYPE.Type=血型下拉列表BLOOD_TYPE.X=333BLOOD_TYPE.Y=99BLOOD_TYPE.Width=150BLOOD_TYPE.Height=30BLOOD_TYPE.Text=TButtonBLOOD_TYPE.showID=NBLOOD_TYPE.showName=YBLOOD_TYPE.showText=NBLOOD_TYPE.showValue=NBLOOD_TYPE.showPy1=NBLOOD_TYPE.showPy2=NBLOOD_TYPE.Editable=NBLOOD_TYPE.Tip=血型下拉列表BLOOD_TYPE.TableShowList=nameBLOOD_TYPE.ModuleParmString=GROUP_ID:SYS_BLOODBLOOD_TYPE.ModuleParmTag=BLOOD_TYPE.Enabled=NBLOOD_TYPE.CanEdit=NBLOOD_TYPE.FontSize=20ICD.Type=TTextFieldICD.X=575ICD.Y=100ICD.Width=220ICD.Height=30ICD.Text=ICD.FontSize=20ICD.Enabled=NtLabel_13.Type=TLabeltLabel_13.X=517tLabel_13.Y=98tLabel_13.Width=58tLabel_13.Height=29tLabel_13.Text=诊断:tLabel_13.FontSize=20tLabel_12.Type=TLabeltLabel_12.X=274tLabel_12.Y=99tLabel_12.Width=54tLabel_12.Height=29tLabel_12.Text=血型:tLabel_12.FontSize=20AGE.Type=TTextFieldAGE.X=106AGE.Y=99AGE.Width=141AGE.Height=30AGE.Text=AGE.FontSize=20AGE.Enabled=NtLabel_11.Type=TLabeltLabel_11.X=29tLabel_11.Y=97tLabel_11.Width=69tLabel_11.Height=28tLabel_11.Text=年龄:tLabel_11.FontSize=20DEPT_CODE.Type=科室(处置专用)下拉区域DEPT_CODE.X=331DEPT_CODE.Y=8DEPT_CODE.Width=150DEPT_CODE.Height=30DEPT_CODE.Text=DEPT_CODE.HorizontalAlignment=2DEPT_CODE.PopupMenuHeader=代码,100;名称,100DEPT_CODE.PopupMenuWidth=300DEPT_CODE.PopupMenuHeight=300DEPT_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1DEPT_CODE.FormatType=comboDEPT_CODE.ShowDownButton=YDEPT_CODE.Tip=科室(处置专用)DEPT_CODE.ShowColumnList=NAMEDEPT_CODE.HisOneNullRow=YDEPT_CODE.StationCode=<BQ>DEPT_CODE.Action=DEPT_CODE.FontSize=20STATION_CODE.Type=用户病区诊区STATION_CODE.X=624STATION_CODE.Y=8STATION_CODE.Width=170STATION_CODE.Height=30STATION_CODE.Text=STATION_CODE.HorizontalAlignment=2STATION_CODE.PopupMenuHeader=代码,100;名称,100STATION_CODE.PopupMenuWidth=300STATION_CODE.PopupMenuHeight=300STATION_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1STATION_CODE.FormatType=comboSTATION_CODE.ShowDownButton=YSTATION_CODE.Tip=用户病区诊区STATION_CODE.ShowColumnList=NAMESTATION_CODE.HisOneNullRow=YSTATION_CODE.Stype=2STATION_CODE.UserID=<user>STATION_CODE.Action=KS|onQuery;KS|setText|STATION_CODE.FontSize=20RESN.Type=护士不执行原因下拉区域RESN.X=696RESN.Y=162RESN.Width=81RESN.Height=23RESN.Text=RESN.HorizontalAlignment=2RESN.PopupMenuHeader=代码,100;名称,100RESN.PopupMenuWidth=300RESN.PopupMenuHeight=300RESN.PopupMenuFilter=ID,1;NAME,1;PY1,1RESN.FormatType=comboRESN.ShowDownButton=YRESN.Tip=护士不执行原因RESN.ShowColumnList=NAMERESN.HisOneNullRow=Yuser.Type=人员user.X=711user.Y=240user.Width=81user.Height=23user.Text=user.HorizontalAlignment=2user.PopupMenuHeader=代码,100;名称,100user.PopupMenuWidth=300user.PopupMenuHeight=300user.PopupMenuFilter=ID,1;NAME,1;PY1,1user.FormatType=combouser.ShowDownButton=Yuser.Tip=人员user.ShowColumnList=NAMEuser.Visible=Nuser.Action=BQ|onQuery;BQ|setText|user.Enabled=NQY.Type=区域下拉列表QY.X=107QY.Y=8QY.Width=141QY.Height=30QY.Text=TButtonQY.showID=YQY.showName=YQY.showText=NQY.showValue=NQY.showPy1=YQY.showPy2=YQY.Editable=YQY.Tip=区域QY.TableShowList=nameQY.ModuleParmString=QY.ModuleParmTag=QY.FontSize=20QY.CanEdit=NQY.Enabled=NtLabel_9.Type=TLabeltLabel_9.X=516tLabel_9.Y=12tLabel_9.Width=110tLabel_9.Height=23tLabel_9.Text=病区/诊区:tLabel_9.FontSize=20tLabel_9.VerticalAlignment=0tLabel_9.Color=蓝tLabel_8.Type=TLabeltLabel_8.X=278tLabel_8.Y=11tLabel_8.Width=50tLabel_8.Height=23tLabel_8.Text=科室:tLabel_8.FontSize=20tLabel_8.Color=蓝tLabel_5.Type=TLabeltLabel_5.X=12tLabel_5.Y=12tLabel_5.Width=72tLabel_5.Height=23tLabel_5.Text=区  域:tLabel_5.FontSize=20SEX_CODE.Type=TTextFieldSEX_CODE.X=575SEX_CODE.Y=56SEX_CODE.Width=40SEX_CODE.Height=30SEX_CODE.Text=SEX_CODE.FontSize=20SEX_CODE.Enabled=NBAR_CODE.Type=TTextFieldBAR_CODE.X=105BAR_CODE.Y=194BAR_CODE.Width=300BAR_CODE.Height=30BAR_CODE.Text=BAR_CODE.FontSize=20BAR_CODE.Action=onBarCodeQuerytLabel_7.Type=TLabeltLabel_7.X=18tLabel_7.Y=197tLabel_7.Width=80tLabel_7.Height=23tLabel_7.Text=条  码:tLabel_7.FontSize=20END_DATE.Type=TTextFormatEND_DATE.X=494END_DATE.Y=149END_DATE.Width=300END_DATE.Height=30END_DATE.Text=END_DATE.FontSize=20END_DATE.showDownButton=YEND_DATE.FormatType=dateEND_DATE.InputPopupMenu=YEND_DATE.Format=yyyy/MM/dd HH:mm:sstLabel_6.Type=TLabeltLabel_6.X=438tLabel_6.Y=152tLabel_6.Width=50tLabel_6.Height=30tLabel_6.Text=~tLabel_6.FontSize=20START_DATE.Type=TTextFormatSTART_DATE.X=106START_DATE.Y=149START_DATE.Width=300START_DATE.Height=30START_DATE.Text=START_DATE.FontSize=20START_DATE.FormatType=dateSTART_DATE.showDownButton=YSTART_DATE.Format=yyyy/MM/dd HH:mm:sstLabel_4.Type=TLabeltLabel_4.X=6tLabel_4.Y=150tLabel_4.Width=101tLabel_4.Height=23tLabel_4.Text=调配时间:tLabel_4.FontSize=20tLabel_4.Color=蓝BED_NO.Type=TTextFieldBED_NO.X=695BED_NO.Y=56BED_NO.Width=100BED_NO.Height=30BED_NO.Text=BED_NO.Enabled=NBED_NO.FontSize=20tLabel_3.Type=TLabeltLabel_3.X=627tLabel_3.Y=60tLabel_3.Width=50tLabel_3.Height=23tLabel_3.Text=床号:tLabel_3.FontSize=20tLabel_2.Type=TLabeltLabel_2.X=517tLabel_2.Y=60tLabel_2.Width=60tLabel_2.Height=23tLabel_2.Text=性别:tLabel_2.FontSize=20PAT_NAME.Type=TTextFieldPAT_NAME.X=332PAT_NAME.Y=55PAT_NAME.Width=150PAT_NAME.Height=30PAT_NAME.Text=PAT_NAME.Enabled=NPAT_NAME.FontSize=20tLabel_1.Type=TLabeltLabel_1.X=274tLabel_1.Y=60tLabel_1.Width=50tLabel_1.Height=23tLabel_1.Text=姓名:tLabel_1.FontSize=20MR_NO.Type=TTextFieldMR_NO.X=106MR_NO.Y=56MR_NO.Width=141MR_NO.Height=30MR_NO.Text=MR_NO.FontSize=20MR_NO.Action=onMrNoEnterMR_NO.FocusLostAction=tLabel_0.Type=TLabeltLabel_0.X=10tLabel_0.Y=60tLabel_0.Width=82tLabel_0.Height=23tLabel_0.Text=病案号:tLabel_0.FontSize=20tLabel_0.Color=蓝