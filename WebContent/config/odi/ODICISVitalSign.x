## TBuilder Config File ## Title:急重症CIS体征监测数据## Company:JavaHis## Author:wangbin 2015.04.25## version 1.0#<Type=TFrame>UI.Title=病区体征监测手动提取UI.MenuConfig=%ROOT%\config\odi\ODICISVitalSignMenu.xUI.Width=1024UI.Height=748UI.toolbar=YUI.controlclassname=com.javahis.ui.odi.ODICISVitalSignControlUI.item=tPanel_0;tPanel_1UI.layout=nullUI.TopToolBar=YUI.TopMenu=YtPanel_1.Type=TPaneltPanel_1.X=7tPanel_1.Y=83tPanel_1.Width=1014tPanel_1.Height=524tPanel_1.Border=组tPanel_1.AutoX=YtPanel_1.AutoWidth=YtPanel_1.Item=TABLE;ADM_TYPE_COMBO;DEPT_CODE;STATION_CODE;CLINIC_CODECLINIC_CODE.Type=诊区CLINIC_CODE.X=320CLINIC_CODE.Y=359CLINIC_CODE.Width=81CLINIC_CODE.Height=23CLINIC_CODE.Text=CLINIC_CODE.HorizontalAlignment=2CLINIC_CODE.PopupMenuHeader=代码,100;名称,100CLINIC_CODE.PopupMenuWidth=300CLINIC_CODE.PopupMenuHeight=300CLINIC_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1CLINIC_CODE.FormatType=comboCLINIC_CODE.ShowDownButton=YCLINIC_CODE.Tip=诊区CLINIC_CODE.ShowColumnList=NAMESTATION_CODE.Type=病区STATION_CODE.X=231STATION_CODE.Y=359STATION_CODE.Width=81STATION_CODE.Height=23STATION_CODE.Text=STATION_CODE.HorizontalAlignment=2STATION_CODE.PopupMenuHeader=代码,100;名称,100STATION_CODE.PopupMenuWidth=300STATION_CODE.PopupMenuHeight=300STATION_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1STATION_CODE.FormatType=comboSTATION_CODE.ShowDownButton=YSTATION_CODE.Tip=病区STATION_CODE.ShowColumnList=NAMEDEPT_CODE.Type=科室DEPT_CODE.X=53DEPT_CODE.Y=358DEPT_CODE.Width=81DEPT_CODE.Height=23DEPT_CODE.Text=DEPT_CODE.HorizontalAlignment=2DEPT_CODE.PopupMenuHeader=代码,100;名称,100DEPT_CODE.PopupMenuWidth=300DEPT_CODE.PopupMenuHeight=300DEPT_CODE.FormatType=comboDEPT_CODE.ShowDownButton=YDEPT_CODE.Tip=科室DEPT_CODE.ShowColumnList=NAMEADM_TYPE_COMBO.Type=门急住别下拉列表ADM_TYPE_COMBO.X=142ADM_TYPE_COMBO.Y=359ADM_TYPE_COMBO.Width=81ADM_TYPE_COMBO.Height=23ADM_TYPE_COMBO.Text=TButtonADM_TYPE_COMBO.showID=NADM_TYPE_COMBO.showName=YADM_TYPE_COMBO.showText=YADM_TYPE_COMBO.showValue=NADM_TYPE_COMBO.showPy1=NADM_TYPE_COMBO.showPy2=YADM_TYPE_COMBO.Editable=YADM_TYPE_COMBO.Tip=门急住别ADM_TYPE_COMBO.TableShowList=nameADM_TYPE_COMBO.ModuleParmString=GROUP_ID:SYS_ADMTYPEADM_TYPE_COMBO.ModuleParmTag=ADM_TYPE_COMBO.CanEdit=NTABLE.Type=TTableTABLE.X=9TABLE.Y=11TABLE.Width=992TABLE.Height=502TABLE.SpacingRow=1TABLE.RowHeight=20TABLE.AutoX=YTABLE.AutoWidth=YTABLE.Header=就诊类型,80,ADM_TYPE_COMBO;门急住号,120;病案号,120;科室,100,DEPT_CODE;病区/诊区,100,STATION_CODE;床号,80;监测时间,180;监测项目名称,120;监测项目(汉字),120;监测结果,80;单位,80;正常值下限,80;正常值上限,80;备注栏,100TABLE.ParmMap=ADM_TYPE;CASE_NO;MR_NO;DEPT_CODE;STATION_CODE;BED_NO;MONITOR_TIME;MONITOR_ITEM_EN;MONITOR_ITEM_CH;MONITOR_VALUE;UNIT_DESC;NORMAL_RANGE_L;NORMAL_RANGE_H;REMARKSTABLE.ColumnHorizontalAlignmentData=0,left;3,left;4,left;8,left;9,right;10,left;11,right;12,right;13,leftTABLE.Item=ADM_TYPE_COMBO;DEPT_CODE;STATION_CODETABLE.LockColumns=alltPanel_0.Type=TPaneltPanel_0.X=5tPanel_0.Y=4tPanel_0.Width=1014tPanel_0.Height=77tPanel_0.Border=组|查询条件tPanel_0.AutoX=YtPanel_0.AutoWidth=YtPanel_0.Item=tLabel_0;QUERY_TYPE;tLabel_2;S_DATE;tLabel_16;E_DATE;S_TIME;E_TIME;tLabel_1;TOTAL_COUNT;tLabel_3;ACTUAL_TOTAL_COUNTACTUAL_TOTAL_COUNT.Type=TNumberTextFieldACTUAL_TOTAL_COUNT.X=836ACTUAL_TOTAL_COUNT.Y=33ACTUAL_TOTAL_COUNT.Width=56ACTUAL_TOTAL_COUNT.Height=20ACTUAL_TOTAL_COUNT.Text=0ACTUAL_TOTAL_COUNT.Format=#########0ACTUAL_TOTAL_COUNT.Enabled=NtLabel_3.Type=TLabeltLabel_3.X=748tLabel_3.Y=34tLabel_3.Width=86tLabel_3.Height=15tLabel_3.Text=有效数据总计TOTAL_COUNT.Type=TNumberTextFieldTOTAL_COUNT.X=678TOTAL_COUNT.Y=32TOTAL_COUNT.Width=58TOTAL_COUNT.Height=20TOTAL_COUNT.Text=0TOTAL_COUNT.Format=#########0TOTAL_COUNT.Enabled=NtLabel_1.Type=TLabeltLabel_1.X=589tLabel_1.Y=35tLabel_1.Width=90tLabel_1.Height=15tLabel_1.Text=原始数据总计E_TIME.Type=TTextFieldE_TIME.X=522E_TIME.Y=32E_TIME.Width=48E_TIME.Height=20E_TIME.Text=00:29S_TIME.Type=TTextFieldS_TIME.X=354S_TIME.Y=32S_TIME.Width=48S_TIME.Height=20S_TIME.Text=00:00S_TIME.HorizontalAlignment=2S_TIME.InputLength=8E_DATE.Type=TTextFormatE_DATE.X=420E_DATE.Y=32E_DATE.Width=101E_DATE.Height=20E_DATE.Text=E_DATE.HorizontalAlignment=2E_DATE.FormatType=dateE_DATE.Format=yyyy/MM/ddE_DATE.showDownButton=YtLabel_16.Type=TLabeltLabel_16.X=406tLabel_16.Y=36tLabel_16.Width=10tLabel_16.Height=25tLabel_16.Text=~tLabel_16.FontSize=18S_DATE.Type=TTextFormatS_DATE.X=252S_DATE.Y=32S_DATE.Width=101S_DATE.Height=20S_DATE.Text=S_DATE.HorizontalAlignment=2S_DATE.FormatType=dateS_DATE.Format=yyyy/MM/ddS_DATE.showDownButton=YtLabel_2.Type=TLabeltLabel_2.X=190tLabel_2.Y=35tLabel_2.Width=62tLabel_2.Height=15tLabel_2.Text=起止时间tLabel_2.Color=蓝QUERY_TYPE.Type=TComboBoxQUERY_TYPE.X=58QUERY_TYPE.Y=31QUERY_TYPE.Width=110QUERY_TYPE.Height=21QUERY_TYPE.Text=TButtonQUERY_TYPE.showID=NQUERY_TYPE.Editable=NQUERY_TYPE.StringData=[[id,name],[0,ICU],[1,CCU],[2,普通病房],[3,急诊]]QUERY_TYPE.CanEdit=NQUERY_TYPE.ShowValue=NQUERY_TYPE.TableShowList=nameQUERY_TYPE.ShowName=YtLabel_0.Type=TLabeltLabel_0.X=17tLabel_0.Y=33tLabel_0.Width=36tLabel_0.Height=15tLabel_0.Text=类别tLabel_0.Color=蓝