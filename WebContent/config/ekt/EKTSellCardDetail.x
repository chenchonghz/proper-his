## TBuilder Config File ## Title:## Company:JavaHis## Author:zhangy 2010.09.16## version 1.0#<Type=TFrame>UI.Title=医疗卡售卡明细表UI.MenuConfig=%ROOT%\config\ekt\EKTSellCardDetailMenu.xUI.Width=1490UI.Height=1490UI.toolbar=YUI.controlclassname=com.javahis.ui.ekt.EKTSellCardDetailControlUI.item=tLabel_1;START_DATE;tLabel_0;END_DATE;tLabel_4;REGION_CODE;ACCNT_TYPE;tLabel_5;tLabel_6;OPT_USER;GATHER_TYPE;TABLE;DEPT;tLabel_2;FLGUI.layout=nullUI.ShowTitle=NUI.TopToolBar=YUI.TopMenu=YUI.Y=5UI.AutoY=YUI.X=5UI.AutoX=YUI.AutoWidth=YUI.AutoHeight=YUI.AutoW=YUI.AutoH=YFLG.Type=TCheckBoxFLG.X=538FLG.Y=46FLG.Width=81FLG.Height=23FLG.Text=更新前tLabel_2.Type=TLabeltLabel_2.X=514tLabel_2.Y=15tLabel_2.Width=72tLabel_2.Height=15tLabel_2.Text=科室:tLabel_2.Color=蓝DEPT.Type=科室DEPT.X=562DEPT.Y=11DEPT.Width=125DEPT.Height=23DEPT.Text=DEPT.HorizontalAlignment=2DEPT.PopupMenuHeader=代码,100;名称,100DEPT.PopupMenuWidth=300DEPT.PopupMenuHeight=300DEPT.FormatType=comboDEPT.ShowDownButton=YDEPT.Tip=科室DEPT.ShowColumnList=NAMEDEPT.FinalFlg=DEPT.ClassIfy=3DEPT.ClickedAction=OPT_USER|onQueryDEPT.HisOneNullRow=YTABLE.Type=TTableTABLE.X=6TABLE.Y=84TABLE.Width=1024TABLE.Height=748TABLE.SpacingRow=1TABLE.RowHeight=20TABLE.AutoX=YTABLE.AutoY=NTABLE.AutoWidth=YTABLE.AutoHeight=YTABLE.Header=售卡操作时间,160,Timestamp,yyyy/MM/dd HH:mm:ss;操作人,80;明细账别,80,ACCNT_TYPE;支付方式,80;病案号,160;病患姓名,80;充值退款金额,80,double,#########0.00;手续费,60,double,#########0.00;流水号,150TABLE.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,left;4,left;5,left;6,right;7,right;8,leftTABLE.ParmMap=STORE_DATE;USER_NAME;ACCNT_TYPE;GATHER_TYPE;MR_NO;PAT_NAME;AMT;PROCEDURE_AMT;PRINT_NOTABLE.LockRows=TABLE.LockColumns=allTABLE.Item=ACCNT_TYPE;GATHER_TYPEGATHER_TYPE.Type=支付方式下拉区域(医疗卡)GATHER_TYPE.X=669GATHER_TYPE.Y=81GATHER_TYPE.Width=81GATHER_TYPE.Height=23GATHER_TYPE.Text=GATHER_TYPE.HorizontalAlignment=2GATHER_TYPE.PopupMenuHeader=代码,100;名称,100GATHER_TYPE.PopupMenuWidth=300GATHER_TYPE.PopupMenuHeight=300GATHER_TYPE.PopupMenuFilter=ID,1;NAME,1;PY1,1GATHER_TYPE.FormatType=comboGATHER_TYPE.ShowDownButton=YGATHER_TYPE.Tip=支付方式GATHER_TYPE.ShowColumnList=NAMEGATHER_TYPE.Visible=NOPT_USER.Type=人员OPT_USER.X=788OPT_USER.Y=11OPT_USER.Width=119OPT_USER.Height=23OPT_USER.Text=OPT_USER.HorizontalAlignment=2OPT_USER.PopupMenuHeader=代码,100;名称,100OPT_USER.PopupMenuWidth=300OPT_USER.PopupMenuHeight=300OPT_USER.PopupMenuFilter=ID,1;NAME,1;PY1,1OPT_USER.FormatType=comboOPT_USER.ShowDownButton=YOPT_USER.Tip=人员OPT_USER.ShowColumnList=NAMEOPT_USER.PosType=5OPT_USER.HisOneNullRow=YOPT_USER.Dept=<DEPT>tLabel_6.Type=TLabeltLabel_6.X=713tLabel_6.Y=16tLabel_6.Width=72tLabel_6.Height=15tLabel_6.Text=售卡人员:tLabel_6.Color=蓝tLabel_5.Type=TLabeltLabel_5.X=273tLabel_5.Y=16tLabel_5.Width=72tLabel_5.Height=15tLabel_5.Text=明细类别:tLabel_5.Color=蓝ACCNT_TYPE.Type=TComboBoxACCNT_TYPE.X=345ACCNT_TYPE.Y=11ACCNT_TYPE.Width=120ACCNT_TYPE.Height=23ACCNT_TYPE.Text=TButtonACCNT_TYPE.showID=YACCNT_TYPE.Editable=YACCNT_TYPE.StringData=[[id,text],[,],[1,购卡],[2,换卡],[3,补卡],[4,充值],[5,扣款],[6,退费]]ACCNT_TYPE.TableShowList=textREGION_CODE.Type=区域下拉列表REGION_CODE.X=81REGION_CODE.Y=10REGION_CODE.Width=120REGION_CODE.Height=23REGION_CODE.Text=TButtonREGION_CODE.showID=NREGION_CODE.showName=YREGION_CODE.showText=NREGION_CODE.showValue=NREGION_CODE.showPy1=NREGION_CODE.showPy2=NREGION_CODE.Editable=YREGION_CODE.Tip=区域REGION_CODE.TableShowList=nameREGION_CODE.ModuleParmString=REGION_CODE.ModuleParmTag=REGION_CODE.Enabled=NtLabel_4.Type=TLabeltLabel_4.X=10tLabel_4.Y=16tLabel_4.Width=72tLabel_4.Height=15tLabel_4.Text=区  域:tLabel_4.Color=蓝END_DATE.Type=TTextFormatEND_DATE.X=345END_DATE.Y=47END_DATE.Width=160END_DATE.Height=20END_DATE.Text=END_DATE.showDownButton=YEND_DATE.FormatType=dateEND_DATE.Format=yyyy/MM/dd HH:mm:sstLabel_0.Type=TLabeltLabel_0.X=272tLabel_0.Y=50tLabel_0.Width=72tLabel_0.Height=15tLabel_0.Text=结束时间:tLabel_0.Color=蓝START_DATE.Type=TTextFormatSTART_DATE.X=81START_DATE.Y=47START_DATE.Width=160START_DATE.Height=20START_DATE.Text=START_DATE.Format=yyyy/MM/dd HH:mm:ssSTART_DATE.FormatType=dateSTART_DATE.showDownButton=YtLabel_1.Type=TLabeltLabel_1.X=10tLabel_1.Y=50tLabel_1.Width=72tLabel_1.Height=15tLabel_1.Text=开始时间:tLabel_1.Color=蓝