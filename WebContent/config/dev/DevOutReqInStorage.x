## TBuilder Config File ## Title:## Company:JavaHis## Author: 2012.12.10## version 1.0#<Type=TFrame>UI.Title=入库确认UI.MenuConfig=%ROOT%\config\dev\DevOutReqInStorageMenu.xUI.Width=1288UI.Height=682UI.toolbar=YUI.controlclassname=com.javahis.ui.dev.DevOutReqInStorageControlUI.item=tPanel_0;tPanel_2;tMovePane_0UI.layout=nullUI.TopMenu=YUI.TopToolBar=YtMovePane_0.Type=TMovePanetMovePane_0.X=356tMovePane_0.Y=0tMovePane_0.Width=5tMovePane_0.Height=677tMovePane_0.Text=tMovePane_0.MoveType=1tMovePane_0.Border=凸tMovePane_0.AutoHeight=YtMovePane_0.EntityData=tPanel_0,4;tPanel_2,3tPanel_2.Type=TPaneltPanel_2.X=365tPanel_2.Y=5tPanel_2.Width=918tPanel_2.Height=672tPanel_2.Border=组tPanel_2.Item=tPanel_5;DEV_INWAREHOUSED;DEV_INWAREHOUSEDD;tLabel_0;SCAN_BARCODE;MANtPanel_2.AutoHeight=YtPanel_2.AutoWidth=YMAN.Type=生产厂商下拉区域MAN.X=127MAN.Y=430MAN.Width=81MAN.Height=23MAN.Text=MAN.HorizontalAlignment=2MAN.PopupMenuHeader=代码,100;名称,100MAN.PopupMenuWidth=300MAN.PopupMenuHeight=300MAN.PopupMenuFilter=ID,1;NAME,1;PY1,1MAN.FormatType=comboMAN.ShowDownButton=YMAN.Tip=生产厂商MAN.ShowColumnList=NAMESCAN_BARCODE.Type=TTextFieldSCAN_BARCODE.X=90SCAN_BARCODE.Y=370SCAN_BARCODE.Width=139SCAN_BARCODE.Height=20SCAN_BARCODE.Text=SCAN_BARCODE.Action=onChangeBarcodetLabel_0.Type=TLabeltLabel_0.X=14tLabel_0.Y=374tLabel_0.Width=72tLabel_0.Height=15tLabel_0.Text=条码扫描处DEVKIND_CODE.Type=设备种类下拉区域DEVKIND_CODE.X=188DEVKIND_CODE.Y=132DEVKIND_CODE.Width=81DEVKIND_CODE.Height=23DEVKIND_CODE.Text=DEVKIND_CODE.HorizontalAlignment=2DEVKIND_CODE.PopupMenuHeader=ID,100;NAME,100DEVKIND_CODE.PopupMenuWidth=300DEVKIND_CODE.PopupMenuHeight=300DEVKIND_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1DEVKIND_CODE.FormatType=comboDEVKIND_CODE.ShowDownButton=YDEVKIND_CODE.Tip=设备种类DEVKIND_CODE.ShowColumnList=NAMEDEV_PRO.Type=设备属性下拉区域DEV_PRO.X=121DEV_PRO.Y=125DEV_PRO.Width=81DEV_PRO.Height=23DEV_PRO.Text=DEV_PRO.HorizontalAlignment=2DEV_PRO.PopupMenuHeader=ID,100;NAME,100DEV_PRO.PopupMenuWidth=300DEV_PRO.PopupMenuHeight=300DEV_PRO.PopupMenuFilter=ID,1;NAME,1;PY1,1DEV_PRO.FormatType=comboDEV_PRO.ShowDownButton=YDEV_PRO.Tip=设备属性DEV_PRO.ShowColumnList=NAMEDEP_METHOD.Type=TComboBoxDEP_METHOD.X=66DEP_METHOD.Y=137DEP_METHOD.Width=81DEP_METHOD.Height=23DEP_METHOD.Text=TButtonDEP_METHOD.showID=YDEP_METHOD.Editable=YDEP_METHOD.StringData=[[id,text],["",""],[1,不折旧],[2,原值直线法],[3,双倍余额递减法],[4,综合折旧法]]DEP_METHOD.TableShowList=textMAN_TF.Type=生产厂商下拉区域MAN_TF.X=182MAN_TF.Y=148MAN_TF.Width=81MAN_TF.Height=23MAN_TF.Text=MAN_TF.HorizontalAlignment=2MAN_TF.PopupMenuHeader=ID,100;NAME,100MAN_TF.PopupMenuWidth=300MAN_TF.PopupMenuHeight=300MAN_TF.PopupMenuFilter=ID,1;NAME,1;PY1,1MAN_TF.FormatType=comboMAN_TF.ShowDownButton=YMAN_TF.Tip=生产厂商MAN_TF.ShowColumnList=NAMEMAN_NATION_TF.Type=国籍MAN_NATION_TF.X=65MAN_NATION_TF.Y=165MAN_NATION_TF.Width=81MAN_NATION_TF.Height=23MAN_NATION_TF.Text=MAN_NATION_TF.HorizontalAlignment=2MAN_NATION_TF.PopupMenuHeader=ID,100;NAME,100MAN_NATION_TF.PopupMenuWidth=300MAN_NATION_TF.PopupMenuHeight=300MAN_NATION_TF.PopupMenuFilter=ID,1;NAME,1;PY1,1MAN_NATION_TF.FormatType=comboMAN_NATION_TF.ShowDownButton=YMAN_NATION_TF.Tip=国籍MAN_NATION_TF.ShowColumnList=NAMEDEV_UNIT.Type=计量单位DEV_UNIT.X=122DEV_UNIT.Y=135DEV_UNIT.Width=81DEV_UNIT.Height=23DEV_UNIT.Text=DEV_UNIT.HorizontalAlignment=2DEV_UNIT.PopupMenuHeader=ID,100;NAME,100DEV_UNIT.PopupMenuWidth=300DEV_UNIT.PopupMenuHeight=300DEV_UNIT.PopupMenuFilter=ID,1;NAME,1;PY1,1DEV_UNIT.FormatType=comboDEV_UNIT.ShowDownButton=YDEV_UNIT.Tip=计量单位DEV_UNIT.ShowColumnList=NAMEDEV_INWAREHOUSEDD.Type=TTableDEV_INWAREHOUSEDD.X=7DEV_INWAREHOUSEDD.Y=403DEV_INWAREHOUSEDD.Width=900DEV_INWAREHOUSEDD.Height=258DEV_INWAREHOUSEDD.SpacingRow=1DEV_INWAREHOUSEDD.RowHeight=20DEV_INWAREHOUSEDD.Header=删,30,BOOLEAN;选,30,BOOLEAN;印,30,BOOLEAN;属性,100,DEV_PRO;资产编号,150;设备编号,120;设备序号,100,INT;设备名称,200;条码号,200;依附主设备,100;规格,200;型号,100;生产厂商,100,MAN;品牌,100;出厂日期,100,Timestamp;残值,100,DOUBLE;保修终止日期,100,Timestamp;折旧终止日期,100,Timestamp;财产价值,100;入库单号,100;入库单序号,100;设备流水号,100;序列号(SN),100;IP地址;机器名,100;存放地点,100;使用人,100DEV_INWAREHOUSEDD.AutoWidth=YDEV_INWAREHOUSEDD.ParmMap=DEL_FLG;SELECT_FLG;PRINT_FLG;DEVPRO_CODE;DEV_CODE_DETAIL;DEV_CODE;DEVSEQ_NO;DEV_CHN_DESC;BARCODE;MAIN_DEV;SPECIFICATION;MODEL;MAN_CODE;BRAND;MAN_DATE;LAST_PRICE;GUAREP_DATE;DEP_DATE;TOT_VALUE;INWAREHOUSE_NO;SEQ_NO;DEVSEQ_NO;SERIAL_NUM;IP;TERM;LOC_CODE;USE_USERDEV_INWAREHOUSEDD.Item=DEV_PRO;MANDEV_INWAREHOUSEDD.ColumnHorizontalAlignmentData=4,right;5,left;6,left;7,left;8,right;9,right;10,left;11,left;12,right;13,left;14,right;15,rightDEV_INWAREHOUSEDD.FocusType=2DEV_INWAREHOUSEDD.AutoHeight=YDEV_INWAREHOUSEDD.LockColumns=0,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17DEV_INWAREHOUSED.Type=TTableDEV_INWAREHOUSED.X=6DEV_INWAREHOUSED.Y=90DEV_INWAREHOUSED.Width=898DEV_INWAREHOUSED.Height=257DEV_INWAREHOUSED.SpacingRow=1DEV_INWAREHOUSED.RowHeight=20DEV_INWAREHOUSED.AutoWidth=YDEV_INWAREHOUSED.Header=删,30,BOOLEAN;属性,100,DEV_PRO;设备编号,120;设备名称,200;入库数量,100,INT;累计入库数,100;出库数,100;单位,100,DEV_UNIT;折旧,60,DEP_METHOD;使用年限,100;序号管理,100,BOOLEAN;计量设备,100,BOOLEAN;效益评估,100,BOOLEAN;技术文件,100;出库单号,100;出库单明细序号,100;入库单号,100;入库单序号,100;设备类别,100,DEVKIND_CODE;维修终止日期,100;折旧终止日期,100;厂牌,100;型号,100;单价,100;出厂日期,100DEV_INWAREHOUSED.ParmMap=DEL_FLG;DEVPRO_CODE;DEV_CODE;DEV_CHN_DESC;QTY;SUM_QTY;RECEIPT_QTY;UNIT_CODE;DEPR_METHOD;USE_DEADLINE;SEQMAN_FLG;MEASURE_FLG;BENEFIT_FLG;FILES_WAY;VERIFY_NO;VERIFY_NO_SEQ;INWAREHOUSE_NO;SEQ_NO;DEVKIND_CODE;GUAREP_DATE;DEP_DATE;BRAND;MODEL;UNIT_PRICE;MAN_DATEDEV_INWAREHOUSED.Item=DEV_PRO;DEV_UNIT;DEP_METHOD;DEVKIND_CODEDEV_INWAREHOUSED.ColumnHorizontalAlignmentData=1,left;2,left;3,right;4,left;5,left;6,left;7,right;8,right;9,right;10,left;11,right;12,right;13,left;14,right;15,left;16,left;17,right;18,left;19,left;23,left;24,left;25,right;26,left;27,right;28,leftDEV_INWAREHOUSED.FocusType=2DEV_INWAREHOUSED.LockColumns=3,4,5,7,12,13,14,15,16,17,18,19,20,21tPanel_5.Type=TPaneltPanel_5.X=10tPanel_5.Y=4tPanel_5.Width=897tPanel_5.Height=80tPanel_5.Border=组tPanel_5.Item=tLabel_11;tLabel_20;INWAREHOUSE_DATE;tLabel_25;tLabel_26;OPERATOR;INWAREHOUSE_NO_QUARY;DEPTtPanel_5.AutoWidth=YDEPT.Type=成本中心下拉区域DEPT.X=89DEPT.Y=42DEPT.Width=106DEPT.Height=23DEPT.Text=DEPT.HorizontalAlignment=2DEPT.PopupMenuHeader=代码,100;名称,100DEPT.PopupMenuWidth=300DEPT.PopupMenuHeight=300DEPT.FormatType=comboDEPT.ShowDownButton=YDEPT.Tip=成本中心DEPT.ShowColumnList=NAMEDEPT.Action=OPERATOR|onQueryINWAREHOUSE_NO_QUARY.Type=TTextFieldINWAREHOUSE_NO_QUARY.X=89INWAREHOUSE_NO_QUARY.Y=10INWAREHOUSE_NO_QUARY.Width=104INWAREHOUSE_NO_QUARY.Height=20INWAREHOUSE_NO_QUARY.Text=INWAREHOUSE_NO_QUARY.Enabled=NOPERATOR.Type=人员OPERATOR.X=276OPERATOR.Y=41OPERATOR.Width=120OPERATOR.Height=23OPERATOR.Text=OPERATOR.HorizontalAlignment=2OPERATOR.PopupMenuHeader=ID,100;NAME,100OPERATOR.PopupMenuWidth=300OPERATOR.PopupMenuHeight=300OPERATOR.PopupMenuFilter=ID,1;NAME,1;PY1,1OPERATOR.FormatType=comboOPERATOR.ShowDownButton=YOPERATOR.Tip=人员OPERATOR.ShowColumnList=NAMEOPERATOR.Dept=<DEPT>tLabel_26.Type=TLabeltLabel_26.X=215tLabel_26.Y=45tLabel_26.Width=58tLabel_26.Height=15tLabel_26.Text=入库人员tLabel_25.Type=TLabeltLabel_25.X=14tLabel_25.Y=45tLabel_25.Width=72tLabel_25.Height=15tLabel_25.Text=入库科室INWAREHOUSE_DATE.Type=TTextFormatINWAREHOUSE_DATE.X=277INWAREHOUSE_DATE.Y=9INWAREHOUSE_DATE.Width=119INWAREHOUSE_DATE.Height=20INWAREHOUSE_DATE.Text=TTextFormatINWAREHOUSE_DATE.FormatType=dateINWAREHOUSE_DATE.Format=yyyy/MM/ddINWAREHOUSE_DATE.showDownButton=YtLabel_20.Type=TLabeltLabel_20.X=209tLabel_20.Y=11tLabel_20.Width=59tLabel_20.Height=15tLabel_20.Text=入库日期tLabel_11.Type=TLabeltLabel_11.X=14tLabel_11.Y=13tLabel_11.Width=72tLabel_11.Height=15tLabel_11.Text=入库单号tPanel_0.Type=TPaneltPanel_0.X=5tPanel_0.Y=6tPanel_0.Width=349tPanel_0.Height=669tPanel_0.Border=组tPanel_0.Item=tPanel_3;tPanel_4tPanel_4.Type=TPaneltPanel_4.X=7tPanel_4.Y=171tPanel_4.Width=331tPanel_4.Height=490tPanel_4.Border=组|入库单tPanel_4.Item=EXWAREHOUSE;DEPT_COMBOtPanel_4.AutoWidth=YDEPT_COMBO.Type=成本中心下拉区域DEPT_COMBO.X=71DEPT_COMBO.Y=43DEPT_COMBO.Width=81DEPT_COMBO.Height=23DEPT_COMBO.Text=DEPT_COMBO.HorizontalAlignment=2DEPT_COMBO.PopupMenuHeader=代码,100;名称,100DEPT_COMBO.PopupMenuWidth=300DEPT_COMBO.PopupMenuHeight=300DEPT_COMBO.FormatType=comboDEPT_COMBO.ShowDownButton=YDEPT_COMBO.Tip=成本中心DEPT_COMBO.ShowColumnList=NAMEOPERATOR_COMBO.Type=人员下拉列表OPERATOR_COMBO.X=60OPERATOR_COMBO.Y=46OPERATOR_COMBO.Width=81OPERATOR_COMBO.Height=23OPERATOR_COMBO.Text=TButtonOPERATOR_COMBO.showID=YOPERATOR_COMBO.showName=YOPERATOR_COMBO.showText=NOPERATOR_COMBO.showValue=NOPERATOR_COMBO.showPy1=YOPERATOR_COMBO.showPy2=YOPERATOR_COMBO.Editable=YOPERATOR_COMBO.Tip=人员OPERATOR_COMBO.TableShowList=nameOPERATOR_COMBO.ModuleParmString=OPERATOR_COMBO.ModuleParmTag=EXWAREHOUSE.Type=TTableEXWAREHOUSE.X=17EXWAREHOUSE.Y=21EXWAREHOUSE.Width=307EXWAREHOUSE.Height=401EXWAREHOUSE.SpacingRow=1EXWAREHOUSE.RowHeight=20EXWAREHOUSE.AutoX=YEXWAREHOUSE.AutoY=YEXWAREHOUSE.AutoWidth=NEXWAREHOUSE.AutoHeight=NEXWAREHOUSE.Header=入库日期,100;入库单号,100;入库科室,100,DEPT_COMBO;验收单号,100;验收日期,100;入库人员,100,OPERATOR_COMBOEXWAREHOUSE.LockColumns=0,1,2,3,4,5EXWAREHOUSE.Item=OPERATOR_COMBO;DEPT_COMBOEXWAREHOUSE.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,left;4,left;5,leftEXWAREHOUSE.ParmMap=INWAREHOUSE_DATE;INWAREHOUSE_NO;INWAREHOUSE_DEPT;VERIFY_NO;RECEIPT_DATE;INWAREHOUSE_USEREXWAREHOUSE.ClickedAction=onDevInwarehouseEXWAREHOUSE.FocusType=2 tPanel_3.Type=TPaneltPanel_3.X=8tPanel_3.Y=9tPanel_3.Width=330tPanel_3.Height=147tPanel_3.Border=组|查询条件tPanel_3.Item=tLabel_12;tLabel_13;INWARE_START_DATE;tLabel_14;INWARE_END_DATE;tLabel_15;tLabel_16;INWAREHOUSE_USER;INWAREHOUSE_NO;INWAREHOUSE_DEPTtPanel_3.Title=tPanel_3.AutoWidth=YINWAREHOUSE_DEPT.Type=成本中心下拉区域INWAREHOUSE_DEPT.X=87INWAREHOUSE_DEPT.Y=73INWAREHOUSE_DEPT.Width=103INWAREHOUSE_DEPT.Height=23INWAREHOUSE_DEPT.Text=INWAREHOUSE_DEPT.HorizontalAlignment=2INWAREHOUSE_DEPT.PopupMenuHeader=代码,100;名称,100INWAREHOUSE_DEPT.PopupMenuWidth=300INWAREHOUSE_DEPT.PopupMenuHeight=300INWAREHOUSE_DEPT.FormatType=comboINWAREHOUSE_DEPT.ShowDownButton=YINWAREHOUSE_DEPT.Tip=成本中心INWAREHOUSE_DEPT.ShowColumnList=NAMEINWAREHOUSE_DEPT.Action=INWAREHOUSE_USER|onQueryINWAREHOUSE_NO.Type=TTextFieldINWAREHOUSE_NO.X=88INWAREHOUSE_NO.Y=20INWAREHOUSE_NO.Width=101INWAREHOUSE_NO.Height=20INWAREHOUSE_NO.Text=INWAREHOUSE_NO.Enabled=YINWAREHOUSE_NO.Action=onQueryINWAREHOUSE_USER.Type=人员INWAREHOUSE_USER.X=88INWAREHOUSE_USER.Y=101INWAREHOUSE_USER.Width=103INWAREHOUSE_USER.Height=23INWAREHOUSE_USER.Text=INWAREHOUSE_USER.HorizontalAlignment=2INWAREHOUSE_USER.PopupMenuHeader=ID,100;NAME,100INWAREHOUSE_USER.PopupMenuWidth=300INWAREHOUSE_USER.PopupMenuHeight=300INWAREHOUSE_USER.PopupMenuFilter=ID,1;NAME,1;PY1,1INWAREHOUSE_USER.FormatType=comboINWAREHOUSE_USER.ShowDownButton=YINWAREHOUSE_USER.Tip=人员INWAREHOUSE_USER.ShowColumnList=NAMEINWAREHOUSE_USER.Dept=<INWAREHOUSE_DEPT>tLabel_16.Type=TLabeltLabel_16.X=22tLabel_16.Y=103tLabel_16.Width=72tLabel_16.Height=15tLabel_16.Text=入库人员tLabel_15.Type=TLabeltLabel_15.X=23tLabel_15.Y=76tLabel_15.Width=65tLabel_15.Height=15tLabel_15.Text=入库科室INWARE_END_DATE.Type=TTextFormatINWARE_END_DATE.X=220INWARE_END_DATE.Y=46INWARE_END_DATE.Width=95INWARE_END_DATE.Height=20INWARE_END_DATE.Text=TTextFormatINWARE_END_DATE.FormatType=dateINWARE_END_DATE.Format=yyyy/MM/ddINWARE_END_DATE.showDownButton=YtLabel_14.Type=TLabeltLabel_14.X=198tLabel_14.Y=49tLabel_14.Width=20tLabel_14.Height=15tLabel_14.Text=至INWARE_START_DATE.Type=TTextFormatINWARE_START_DATE.X=88INWARE_START_DATE.Y=47INWARE_START_DATE.Width=102INWARE_START_DATE.Height=20INWARE_START_DATE.Text=TTextFormatINWARE_START_DATE.FormatType=dateINWARE_START_DATE.Format=yyyy/MM/ddINWARE_START_DATE.showDownButton=YtLabel_13.Type=TLabeltLabel_13.X=23tLabel_13.Y=50tLabel_13.Width=61tLabel_13.Height=15tLabel_13.Text=入库日期tLabel_12.Type=TLabeltLabel_12.X=23tLabel_12.Y=25tLabel_12.Width=72tLabel_12.Height=15tLabel_12.Text=入库单号