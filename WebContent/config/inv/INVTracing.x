## TBuilder Config File ## Title:## Company:JavaHis## Author:fux 2013.11.07## version 1.0#<Type=TFrame>UI.Title=高值物资溯源UI.MenuConfig=%ROOT%\config\inv\INVTracingMenu.xUI.Width=1124UI.Height=748UI.toolbar=YUI.controlclassname=com.javahis.ui.inv.INVTracingControlUI.item=tPanel_5;tPanel_6UI.layout=nullUI.TopMenu=YUI.TopToolBar=YtPanel_6.Type=TPaneltPanel_6.X=5tPanel_6.Y=167tPanel_6.Width=1114tPanel_6.Height=576tPanel_6.Border=组|明细信息tPanel_6.Item=TABLE;SUP;EX_SUP;MAN;USERtPanel_6.AutoWidth=YtPanel_6.AutoHeight=YUSER.Type=人员USER.X=496USER.Y=42USER.Width=81USER.Height=23USER.Text=USER.HorizontalAlignment=2USER.PopupMenuHeader=代码,100;名称,100USER.PopupMenuWidth=300USER.PopupMenuHeight=300USER.PopupMenuFilter=ID,1;NAME,1;PY1,1USER.FormatType=comboUSER.ShowDownButton=YUSER.Tip=人员USER.ShowColumnList=NAMEMAN.Type=生产厂商下拉区域MAN.X=391MAN.Y=39MAN.Width=81MAN.Height=23MAN.Text=MAN.HorizontalAlignment=2MAN.PopupMenuHeader=代码,100;名称,100MAN.PopupMenuWidth=300MAN.PopupMenuHeight=300MAN.PopupMenuFilter=ID,1;NAME,1;PY1,1MAN.FormatType=comboMAN.ShowDownButton=YMAN.Tip=生产厂商MAN.ShowColumnList=NAMEEX_SUP.Type=供应厂商EX_SUP.X=289EX_SUP.Y=39EX_SUP.Width=81EX_SUP.Height=23EX_SUP.Text=EX_SUP.HorizontalAlignment=2EX_SUP.PopupMenuHeader=代码,100;名称,100EX_SUP.PopupMenuWidth=300EX_SUP.PopupMenuHeight=300EX_SUP.PopupMenuFilter=ID,1;NAME,1;PY1,1EX_SUP.FormatType=comboEX_SUP.ShowDownButton=YEX_SUP.Tip=供应厂商EX_SUP.ShowColumnList=NAMESUP.Type=供应厂商SUP.X=182SUP.Y=38SUP.Width=81SUP.Height=23SUP.Text=SUP.HorizontalAlignment=2SUP.PopupMenuHeader=代码,100;名称,100SUP.PopupMenuWidth=300SUP.PopupMenuHeight=300SUP.PopupMenuFilter=ID,1;NAME,1;PY1,1SUP.FormatType=comboSUP.ShowDownButton=YSUP.Tip=供应厂商SUP.ShowColumnList=NAMETABLE.Type=TTableTABLE.X=8TABLE.Y=23TABLE.Width=1092TABLE.Height=541TABLE.SpacingRow=1TABLE.RowHeight=20TABLE.Header=入库单号,100;物资编码,120;物资名称,350;规格,130;病案号,100;病人姓名,80;RFID,100;条码号,130;采购单价,80,double,#########0.00;采购总额,80,double,#########0.00;供应商,100,SUP;上级供应商,120,EX_SUP;生产商,120,MAN;零售单价,90,double,#########0.0000;零售金额,80,double,#########0.00;使用日期,150,Timestamp,yyyy/MM/dd;计费日期,150,Timestamp,yyyy/MM/dd;入库日期,150,Timestamp,yyyy/MM/dd;效期,150,Timestamp,yyyy/MM/dd;批号,100;计费人员,80,CASHIER_CODE;术间,80,OP_ROOM;手术科室,80,OP_DEPT;手术医生,80,OP_DRTABLE.ParmMap=VERIFYIN_NO;INV_CODE;INV_CHN_DESC;DESCRIPTION;MR_NO;PAT_NAME;RFID;ORGIN_CODE;CONTRACT_PRICE;TOT;SUP_CODE;UP_SUP_CODE;MAN_CODE;OWN_PRICE;AR_AMT;OPT_DATE;BILL_DATE;VERIFYIN_DATE;VALID_DATE;BATCH_NO;CASHIER_CODE;OP_ROOM;ORDER_DEPT_CODE;ORDER_DR_CODETABLE.LockColumns=allTABLE.Item=SUP;EX_SUP;MAN;CASHIER_CODE;DEPT_CODE1;OP_DEPT;OP_DR;OP_ROOMTABLE.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,left;4,left;5,left;6,left;7,left;8,right;9,right;10,left;11,left;12,left;13,right;14,right;15,left;16,left;17,left;18,left;19,left;20,left;21,left;22,left;23,left;24,left;25,leftTABLE.AutoX=YTABLE.AutoY=YTABLE.AutoWidth=YTABLE.AutoHeight=YtPanel_5.Type=TPaneltPanel_5.X=5tPanel_5.Y=12tPanel_5.Width=1114tPanel_5.Height=157tPanel_5.Border=组|查询条件tPanel_5.Item=tLabel_6;DEPT_CODE;tLabel_7;INV_CODE;INV_CHN_DESC;tLabel_8;tLabel_9;SUP_CODE;EX_SUP_CODE;tLabel_12;tLabel_13;tLabel_14;MR_NO;DISPENSE_NO;BIL_DATES;BIL_DATEE;tLabel_16;PAT_NAME;tLabel_10;tLabel_11;tLabel_15;RFID;tLabel_23;DISPENSE_TIMEE;BATCH_NO;VAILD_TIMES;VAILD_TIMEE;tLabel_26;tLabel_24;DISPENSE_TIMEE;DISPENSE_TIMES;OP_ROOM;CASHIER_CODEtPanel_5.AutoWidth=YCASHIER_CODE.Type=人员CASHIER_CODE.X=1020CASHIER_CODE.Y=84CASHIER_CODE.Width=81CASHIER_CODE.Height=23CASHIER_CODE.Text=CASHIER_CODE.HorizontalAlignment=2CASHIER_CODE.PopupMenuHeader=代码,100;名称,100CASHIER_CODE.PopupMenuWidth=300CASHIER_CODE.PopupMenuHeight=300CASHIER_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1CASHIER_CODE.FormatType=comboCASHIER_CODE.ShowDownButton=YCASHIER_CODE.Tip=人员CASHIER_CODE.ShowColumnList=NAMECASHIER_CODE.Visible=NCASHIER_CODE.Enabled=NOP_ROOM.Type=手术室OP_ROOM.X=1025OP_ROOM.Y=127OP_ROOM.Width=81OP_ROOM.Height=23OP_ROOM.Text=OP_ROOM.HorizontalAlignment=2OP_ROOM.PopupMenuHeader=代码,100;名称,100OP_ROOM.PopupMenuWidth=300OP_ROOM.PopupMenuHeight=300OP_ROOM.PopupMenuFilter=ID,1;NAME,1;PY1,1OP_ROOM.FormatType=comboOP_ROOM.ShowDownButton=YOP_ROOM.Tip=手术室OP_ROOM.ShowColumnList=NAMEOP_ROOM.Enabled=NOP_ROOM.Visible=NDISPENSE_TIMES.Type=TTextFormatDISPENSE_TIMES.X=668DISPENSE_TIMES.Y=89DISPENSE_TIMES.Width=100DISPENSE_TIMES.Height=20DISPENSE_TIMES.Text=DISPENSE_TIMES.showDownButton=YDISPENSE_TIMES.FormatType=dateDISPENSE_TIMES.Format=yyyy/MM/ddDISPENSE_TIMEE.Type=TTextFormatDISPENSE_TIMEE.X=799DISPENSE_TIMEE.Y=88DISPENSE_TIMEE.Width=100DISPENSE_TIMEE.Height=20DISPENSE_TIMEE.Text=DISPENSE_TIMEE.showDownButton=YDISPENSE_TIMEE.FormatType=dateDISPENSE_TIMEE.Format=yyyy/MM/ddtLabel_24.Type=TLabeltLabel_24.X=784tLabel_24.Y=99tLabel_24.Width=20tLabel_24.Height=15tLabel_24.Text=~tLabel_26.Type=TLabeltLabel_26.X=596tLabel_26.Y=68tLabel_26.Width=19tLabel_26.Height=15tLabel_26.Text=~VAILD_TIMEE.Type=TTextFormatVAILD_TIMEE.X=617VAILD_TIMEE.Y=58VAILD_TIMEE.Width=100VAILD_TIMEE.Height=20VAILD_TIMEE.Text=VAILD_TIMEE.showDownButton=YVAILD_TIMEE.FormatType=dateVAILD_TIMEE.Format=yyyy/MM/ddVAILD_TIMES.Type=TTextFormatVAILD_TIMES.X=485VAILD_TIMES.Y=58VAILD_TIMES.Width=100VAILD_TIMES.Height=20VAILD_TIMES.Text=VAILD_TIMES.showDownButton=YVAILD_TIMES.FormatType=dateVAILD_TIMES.Format=yyyy/MM/ddBATCH_NO.Type=TTextFieldBATCH_NO.X=592BATCH_NO.Y=26BATCH_NO.Width=126BATCH_NO.Height=20BATCH_NO.Text=dispenseTimeS.Type=TTextFormatdispenseTimeS.X=670dispenseTimeS.Y=89dispenseTimeS.Width=109dispenseTimeS.Height=20dispenseTimeS.Text=dispenseTimeS.showDownButton=YdispenseTimeS.FormatType=datedispenseTimeS.Format=yyyy/MM/ddtLabel_23.Type=TLabeltLabel_23.X=601tLabel_23.Y=92tLabel_23.Width=72tLabel_23.Height=15tLabel_23.Text=入库日期：tLabel_23.Color=蓝RFID.Type=TTextFieldRFID.X=584RFID.Y=121RFID.Width=137RFID.Height=20RFID.Text=tLabel_15.Type=TLabeltLabel_15.X=539tLabel_15.Y=124tLabel_15.Width=48tLabel_15.Height=15tLabel_15.Text=RFID：tLabel_15.Color=蓝tLabel_11.Type=TLabeltLabel_11.X=442tLabel_11.Y=60tLabel_11.Width=45tLabel_11.Height=15tLabel_11.Text=效期：tLabel_11.Color=蓝tLabel_10.Type=TLabeltLabel_10.X=550tLabel_10.Y=30tLabel_10.Width=48tLabel_10.Height=15tLabel_10.Text=批号：tLabel_10.Color=蓝PAT_NAME.Type=TTextFieldPAT_NAME.X=219PAT_NAME.Y=122PAT_NAME.Width=89PAT_NAME.Height=20PAT_NAME.Text=PAT_NAME.Enabled=NtLabel_16.Type=TLabeltLabel_16.X=204tLabel_16.Y=33tLabel_16.Width=24tLabel_16.Height=20tLabel_16.Text=~BIL_DATEE.Type=TTextFormatBIL_DATEE.X=219BIL_DATEE.Y=26BIL_DATEE.Width=104BIL_DATEE.Height=20BIL_DATEE.Text=BIL_DATEE.showDownButton=YBIL_DATEE.FormatType=dateBIL_DATES.Type=TTextFormatBIL_DATES.X=89BIL_DATES.Y=26BIL_DATES.Width=109BIL_DATES.Height=20BIL_DATES.Text=BIL_DATES.showDownButton=YBIL_DATES.FormatType=dateDISPENSE_NO.Type=TTextFieldDISPENSE_NO.X=388DISPENSE_NO.Y=120DISPENSE_NO.Width=141DISPENSE_NO.Height=21DISPENSE_NO.Text=MR_NO.Type=TTextFieldMR_NO.X=90MR_NO.Y=122MR_NO.Width=128MR_NO.Height=20MR_NO.Text=MR_NO.Action=onQueryNOMR_NO.HorizontalAlignment=0tLabel_14.Type=TLabeltLabel_14.X=31tLabel_14.Y=123tLabel_14.Width=57tLabel_14.Height=17tLabel_14.Text=病案号：tLabel_14.Color=蓝tLabel_13.Type=TLabeltLabel_13.X=318tLabel_13.Y=124tLabel_13.Width=75tLabel_13.Height=16tLabel_13.Text=入库单号：tLabel_13.Color=蓝tLabel_12.Type=TLabeltLabel_12.X=18tLabel_12.Y=28tLabel_12.Width=71tLabel_12.Height=15tLabel_12.Text=使用时间：tLabel_12.Color=蓝EX_SUP_CODE.Type=供应厂商EX_SUP_CODE.X=387EX_SUP_CODE.Y=88EX_SUP_CODE.Width=197EX_SUP_CODE.Height=23EX_SUP_CODE.Text=EX_SUP_CODE.HorizontalAlignment=2EX_SUP_CODE.PopupMenuHeader=代码,100;名称,100EX_SUP_CODE.PopupMenuWidth=300EX_SUP_CODE.PopupMenuHeight=300EX_SUP_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1EX_SUP_CODE.FormatType=comboEX_SUP_CODE.ShowDownButton=YEX_SUP_CODE.Tip=供应厂商EX_SUP_CODE.ShowColumnList=NAMEEX_SUP_CODE.HisOneNullRow=YSUP_CODE.Type=供应厂商SUP_CODE.X=90SUP_CODE.Y=88SUP_CODE.Width=197SUP_CODE.Height=23SUP_CODE.Text=SUP_CODE.HorizontalAlignment=2SUP_CODE.PopupMenuHeader=代码,100;名称,100SUP_CODE.PopupMenuWidth=300SUP_CODE.PopupMenuHeight=300SUP_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1SUP_CODE.FormatType=comboSUP_CODE.ShowDownButton=YSUP_CODE.Tip=供应厂商SUP_CODE.ShowColumnList=NAMESUP_CODE.HisOneNullRow=YtLabel_9.Type=TLabeltLabel_9.X=304tLabel_9.Y=92tLabel_9.Width=89tLabel_9.Height=16tLabel_9.Text=上级供应商：tLabel_9.Color=蓝tLabel_8.Type=TLabeltLabel_8.X=31tLabel_8.Y=92tLabel_8.Width=58tLabel_8.Height=15tLabel_8.Text=供应商：tLabel_8.Color=蓝INV_CHN_DESC.Type=TTextFieldINV_CHN_DESC.X=216INV_CHN_DESC.Y=58INV_CHN_DESC.Width=207INV_CHN_DESC.Height=20INV_CHN_DESC.Text=INV_CHN_DESC.Enabled=NINV_CODE.Type=TTextFieldINV_CODE.X=89INV_CODE.Y=58INV_CODE.Width=126INV_CODE.Height=20INV_CODE.Text=tLabel_7.Type=TLabeltLabel_7.X=17tLabel_7.Y=60tLabel_7.Width=72tLabel_7.Height=15tLabel_7.Text=物资名称：tLabel_7.Color=蓝DEPT_CODE.Type=物资部门下拉区域DEPT_CODE.X=421DEPT_CODE.Y=25DEPT_CODE.Width=104DEPT_CODE.Height=25DEPT_CODE.Text=DEPT_CODE.HorizontalAlignment=2DEPT_CODE.PopupMenuHeader=代码,100;名称,100DEPT_CODE.PopupMenuWidth=300DEPT_CODE.PopupMenuHeight=300DEPT_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1DEPT_CODE.FormatType=comboDEPT_CODE.ShowDownButton=YDEPT_CODE.Tip=物资部门DEPT_CODE.ShowColumnList=NAMEDEPT_CODE.HisOneNullRow=YtLabel_6.Type=TLabeltLabel_6.X=350tLabel_6.Y=29tLabel_6.Width=72tLabel_6.Height=17tLabel_6.Text=物资部门：tLabel_6.Color=蓝DEPT_CODE1.Type=科室下拉列表DEPT_CODE1.X=40DEPT_CODE1.Y=28DEPT_CODE1.Width=118DEPT_CODE1.Height=23DEPT_CODE1.Text=TButtonDEPT_CODE1.showID=YDEPT_CODE1.showName=YDEPT_CODE1.showText=NDEPT_CODE1.showValue=NDEPT_CODE1.showPy1=YDEPT_CODE1.showPy2=YDEPT_CODE1.Editable=YDEPT_CODE1.Tip=科室DEPT_CODE1.TableShowList=nameOP_DR.Type=人员OP_DR.X=122OP_DR.Y=32OP_DR.Width=97OP_DR.Height=23OP_DR.HorizontalAlignment=2OP_DR.PopupMenuHeader=ID,100;NAME,200OP_DR.PopupMenuWidth=321OP_DR.PopupMenuHeight=300OP_DR.PopupMenuFilter=ID,1;NAME,1;PY1,1OP_DR.FormatType=comboOP_DR.ShowDownButton=YOP_DR.Tip=人员OP_DR.ShowColumnList=NAMEOP_DR.HisOneNullRow=YOP_DR.PosType=1OP_DEPT.Type=科室OP_DEPT.X=220OP_DEPT.Y=32OP_DEPT.Width=99OP_DEPT.Height=23OP_DEPT.HorizontalAlignment=2OP_DEPT.PopupMenuHeader=代码,100;名称,100OP_DEPT.PopupMenuWidth=300OP_DEPT.PopupMenuHeight=300OP_DEPT.FormatType=comboOP_DEPT.ShowDownButton=YOP_DEPT.Tip=科室OP_DEPT.ShowColumnList=NAMEOP_DEPT.ClassIfy=0OP_DEPT.HisOneNullRow=Y