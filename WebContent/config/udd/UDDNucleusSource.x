## TBuilder Config File ## Title:## Company:JavaHis## Author:陈红 2013.03.15## version 1.0#<Type=TFrame>UI.Title=核源UI.MenuConfig=%ROOT%\config\udd\UDDNucleusSourceMenu.xUI.Width=1132UI.Height=748UI.toolbar=YUI.controlclassname=com.javahis.ui.udd.UDDNucleusSourceControlUI.item=tPanel_0;tPanel_1UI.layout=nullUI.TopMenu=YUI.ShowTitle=NUI.TopToolBar=YUI.ShowMenu=NtPanel_1.Type=TPaneltPanel_1.X=5tPanel_1.Y=105tPanel_1.Width=1119tPanel_1.Height=466tPanel_1.Border=组tPanel_1.Item=TTabletPanel_1.AutoWidth=YTTable.Type=TTableTTable.X=11TTable.Y=11TTable.Width=1097TTable.Height=447TTable.SpacingRow=1TTable.RowHeight=20TTable.Header=区域,180,REGION_CODE;病案号,180;药品名称,180;数量,180;金额,180;计价日期,180TTable.ParmMap=REGION_CODE;MR_NO;ORDER_DESC;DOSAGE_QTY;OWN_AMT;BILL_DATETTable.AutoWidth=YTTable.Item=REGION_CODETTable.ColumnHorizontalAlignmentData=0,left;1,right;2,left;3,right;4,right;5,righttPanel_0.Type=TPaneltPanel_0.X=5tPanel_0.Y=5tPanel_0.Width=1122tPanel_0.Height=91tPanel_0.Border=组tPanel_0.Item=tLabel_0;tLabel_1;START_DATE;tLabel_3;END_DATE;Count;tLabel_4;REGION_CODE;Outpatient;In_Hospital;tLabel_8tPanel_0.AutoWidth=YtPanel_0.AutoX=YtPanel_0.AutoY=YtLabel_8.Type=TLabeltLabel_8.X=25tLabel_8.Y=26tLabel_8.Width=54tLabel_8.Height=15tLabel_8.Text=区域：tLabel_8.Color=蓝In_Hospital.Type=TRadioButtonIn_Hospital.X=898In_Hospital.Y=26In_Hospital.Width=81In_Hospital.Height=23In_Hospital.Text=住院In_Hospital.Group=Outpatient.Type=TRadioButtonOutpatient.X=837Outpatient.Y=26Outpatient.Width=61Outpatient.Height=23Outpatient.Text=门诊Outpatient.Group=Outpatient.Selected=YREGION_CODE.Type=区域下拉列表REGION_CODE.X=68REGION_CODE.Y=22REGION_CODE.Width=135REGION_CODE.Height=23REGION_CODE.Text=TButtonREGION_CODE.showID=NREGION_CODE.showName=YREGION_CODE.showText=NREGION_CODE.showValue=NREGION_CODE.showPy1=YREGION_CODE.showPy2=YREGION_CODE.Editable=YREGION_CODE.Tip=区域REGION_CODE.TableShowList=nameREGION_CODE.ModuleParmString=REGION_CODE.ModuleParmTag=REGION_CODE.Visible=YREGION_CODE.Enabled=NtLabel_4.Type=TLabeltLabel_4.X=1051tLabel_4.Y=31tLabel_4.Width=21tLabel_4.Height=15tLabel_4.Text=条Count.Type=TTextFieldCount.X=991Count.Y=26Count.Width=52Count.Height=20Count.Text=Count.Enabled=NEND_DATE.Type=TTextFormatEND_DATE.X=632END_DATE.Y=24END_DATE.Width=187END_DATE.Height=24END_DATE.Text=END_DATE.FormatType=dateEND_DATE.Format=yyyy/MM/dd HH:mm:ssEND_DATE.showDownButton=YtLabel_3.Type=TLabeltLabel_3.X=559tLabel_3.Y=26tLabel_3.Width=74tLabel_3.Height=15tLabel_3.Text=结束时间：tLabel_3.Color=蓝START_DATE.Type=TTextFormatSTART_DATE.X=352START_DATE.Y=24START_DATE.Width=187START_DATE.Height=24START_DATE.Text=START_DATE.showDownButton=YSTART_DATE.FormatType=dateSTART_DATE.Format=yyyy/MM/dd HH:mm:sstLabel_1.Type=TLabeltLabel_1.X=276tLabel_1.Y=26tLabel_1.Width=72tLabel_1.Height=15tLabel_1.Text=开始时间：tLabel_1.Color=蓝tLabel_0.Type=TLabeltLabel_0.X=968tLabel_0.Y=29tLabel_0.Width=19tLabel_0.Height=17tLabel_0.Text=共