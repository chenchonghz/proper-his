## TBuilder Config File ## Title:物资出库## Company:JavaHis## Author:zhangy 2009.11.19## version 1.0#<Type=TFrame>UI.Title=入库作业UI.MenuConfig=%ROOT%\config\inv\INVDispenseInMenu.xUI.Width=1503UI.Height=748UI.toolbar=YUI.controlclassname=com.javahis.ui.inv.INVDispenseInControlUI.item=tPanel_0;TABLE_M;tPanel_1;TABLE_D;TABLE_M_SELECTUI.layout=nullUI.TopMenu=YUI.TopToolBar=YTABLE_M_SELECT.Type=TTableTABLE_M_SELECT.X=4TABLE_M_SELECT.Y=125TABLE_M_SELECT.Width=253TABLE_M_SELECT.Height=185TABLE_M_SELECT.SpacingRow=1TABLE_M_SELECT.RowHeight=20TABLE_M_SELECT.Header=单号类型,100;入库单号,100;入库部门,120,TO_ORG_CODE;出库部门,120,FROM_ORG_CODE;出库日期,120;出库人员,80,DISPENSE_USER;入库日期,120;入库人员,80,CHECK_USERTABLE_M_SELECT.ParmMap=REQUEST_TYPE;DISPENSE_NO_IN;TO_ORG_CODE;FROM_ORG_CODE;DISPENSE_DATE;DISPENSE_USER;CHECK_DATE;CHECK_USERTABLE_M_SELECT.ClickedAction=onTableMClickedTABLE_M_SELECT.Item=TO_ORG_CODE;FROM_ORG_CODE;DISPENSE_USER;CHECK_USERTABLE_M_SELECT.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,left;4,left;5,leftTABLE_M_SELECT.AutoX=YTABLE_M_SELECT.AutoHeight=YTABLE_M_SELECT.LockColumns=allTABLE_D.Type=TTableTABLE_D.X=264TABLE_D.Y=128TABLE_D.Width=1271TABLE_D.Height=455TABLE_D.SpacingRow=1TABLE_D.RowHeight=20TABLE_D.AutoWidth=YTABLE_D.AutoHeight=NTABLE_D.Header=选,30,boolean;物资编码,100;物资名称,150;物资序号,80;规格,120;本次入库数,100,double,#####0.0;出库数量,80,double,#####0.0;累计入库量,100,double,#####0.0;单位,60,UNIT;单价,80,double,#####0.0000;金额,100,double,#####0.00;批次序号,80;批号,80;效期,120;生产厂商,150,MAN_CODE;序,30,boolean;效,30,boolean;取消出库,80,booleanTABLE_D.ParmMap=SELECT_FLG;INV_CODE;INV_CHN_DESC;INVSEQ_NO;DESCRIPTION;QTY;REQUEST_QTY;ACTUAL_QTY;DISPENSE_UNIT;COST_PRICE;SUM_AMT;BATCH_SEQ;BATCH_NO;VALID_DATE;MAN_CODE;SEQMAN_FLG;VALIDATE_FLG;DISPOSAL_FLGTABLE_D.ColumnHorizontalAlignmentData=1,left;2,right;3,left;4,right;5,right;6,right;7,left;8,right;9,right;10,right;11,left;12,left;13,leftTABLE_D.LockColumns=1,2,3,4,5,6,7,8,9TABLE_D.Item=UNIT;MAN_CODETABLE_D.ClickedAction=tPanel_1.Type=TPaneltPanel_1.X=264tPanel_1.Y=5tPanel_1.Width=1317tPanel_1.Height=117tPanel_1.Border=组tPanel_1.AutoX=NtPanel_1.AutoY=NtPanel_1.AutoWidth=YtPanel_1.Item=tLabel_20;DISPENSE_NO;tLabel_22;DISPENSE_NO_OUT;tLabel_23;REQUEST_TYPE;tLabel_24;DISPENSE_DATE;tLabel_25;tLabel_26;TO_ORG_CODE;FROM_ORG_CODE;tLabel_27;REN_CODE;tLabel_28;DISPENSE_USER;tLabel_29;REMARK;tLabel_30;tLabel_31;CHECK_DATE;SELECT_ALL;URGENT_FLG;tLabel_32;CHECK_USER;FINA_FLG;UNIT;MAN_CODE;tLabel_1;REQUEST_NOREQUEST_NO.Type=TTextFieldREQUEST_NO.X=72REQUEST_NO.Y=63REQUEST_NO.Width=99REQUEST_NO.Height=20REQUEST_NO.Text=tLabel_1.Type=TLabeltLabel_1.X=9tLabel_1.Y=64tLabel_1.Width=72tLabel_1.Height=15tLabel_1.Text=请领单号MAN_CODE.Type=生产厂商MAN_CODE.X=337MAN_CODE.Y=123MAN_CODE.Width=81MAN_CODE.Height=23MAN_CODE.Text=TButtonMAN_CODE.showID=YMAN_CODE.showName=YMAN_CODE.showText=NMAN_CODE.showValue=NMAN_CODE.showPy1=NMAN_CODE.showPy2=NMAN_CODE.Editable=YMAN_CODE.Tip=生产厂商MAN_CODE.TableShowList=nameMAN_CODE.ModuleParmString=MAN_CODE.ModuleParmTag=UNIT.Type=计量单位下拉列表UNIT.X=250UNIT.Y=126UNIT.Width=81UNIT.Height=23UNIT.Text=TButtonUNIT.showID=YUNIT.showName=YUNIT.showText=NUNIT.showValue=NUNIT.showPy1=NUNIT.showPy2=NUNIT.Editable=YUNIT.Tip=计量单位UNIT.TableShowList=nameFINA_FLG.Type=TComboBoxFINA_FLG.X=420FINA_FLG.Y=61FINA_FLG.Width=100FINA_FLG.Height=23FINA_FLG.Text=TButtonFINA_FLG.showID=YFINA_FLG.Editable=YFINA_FLG.Enabled=NFINA_FLG.StringData=[[id,name],[0,已申请],[1,在途],[2,取消出库],[3,完成]]FINA_FLG.ShowText=NFINA_FLG.ShowName=YFINA_FLG.TableShowList=nameCHECK_USER.Type=人员CHECK_USER.X=594CHECK_USER.Y=88CHECK_USER.Width=160CHECK_USER.Height=23CHECK_USER.Text=CHECK_USER.HorizontalAlignment=2CHECK_USER.PopupMenuHeader=代码,100;名称,100CHECK_USER.PopupMenuWidth=300CHECK_USER.PopupMenuHeight=300CHECK_USER.PopupMenuFilter=ID,1;NAME,1;PY1,1CHECK_USER.FormatType=comboCHECK_USER.ShowDownButton=YCHECK_USER.Tip=人员CHECK_USER.ShowColumnList=NAMECHECK_USER.Enabled=NCHECK_USER.HisOneNullRow=YtLabel_32.Type=TLabeltLabel_32.X=534tLabel_32.Y=92tLabel_32.Width=59tLabel_32.Height=15tLabel_32.Text=入库人员URGENT_FLG.Type=TCheckBoxURGENT_FLG.X=97URGENT_FLG.Y=92URGENT_FLG.Width=81URGENT_FLG.Height=23URGENT_FLG.Text=急件注记SELECT_ALL.Type=TCheckBoxSELECT_ALL.X=10SELECT_ALL.Y=92SELECT_ALL.Width=81SELECT_ALL.Height=23SELECT_ALL.Text=全选SELECT_ALL.Action=onSelectAllCHECK_DATE.Type=TTextFormatCHECK_DATE.X=594CHECK_DATE.Y=62CHECK_DATE.Width=160CHECK_DATE.Height=20CHECK_DATE.Text=CHECK_DATE.Format=yyyy/MM/dd HH:mm:ssCHECK_DATE.FormatType=dateCHECK_DATE.showDownButton=YCHECK_DATE.Enabled=NtLabel_31.Type=TLabeltLabel_31.X=534tLabel_31.Y=65tLabel_31.Width=59tLabel_31.Height=15tLabel_31.Text=入库日期tLabel_30.Type=TLabeltLabel_30.X=356tLabel_30.Y=64tLabel_30.Width=60tLabel_30.Height=15tLabel_30.Text=单据状态REMARK.Type=TTextFieldREMARK.X=250REMARK.Y=91REMARK.Width=277REMARK.Height=20REMARK.Text=tLabel_29.Type=TLabeltLabel_29.X=188tLabel_29.Y=94tLabel_29.Width=60tLabel_29.Height=15tLabel_29.Text=备    注DISPENSE_USER.Type=人员DISPENSE_USER.X=594DISPENSE_USER.Y=33DISPENSE_USER.Width=160DISPENSE_USER.Height=23DISPENSE_USER.Text=DISPENSE_USER.HorizontalAlignment=2DISPENSE_USER.PopupMenuHeader=代码,100;名称,100DISPENSE_USER.PopupMenuWidth=300DISPENSE_USER.PopupMenuHeight=300DISPENSE_USER.PopupMenuFilter=ID,1;NAME,1;PY1,1DISPENSE_USER.FormatType=comboDISPENSE_USER.ShowDownButton=YDISPENSE_USER.Tip=人员DISPENSE_USER.ShowColumnList=NAMEDISPENSE_USER.Enabled=NDISPENSE_USER.HisOneNullRow=YtLabel_28.Type=TLabeltLabel_28.X=534tLabel_28.Y=37tLabel_28.Width=60tLabel_28.Height=15tLabel_28.Text=出库人员REN_CODE.Type=物资原因下拉区域REN_CODE.X=420REN_CODE.Y=33REN_CODE.Width=100REN_CODE.Height=23REN_CODE.Text=REN_CODE.HorizontalAlignment=2REN_CODE.PopupMenuHeader=代码,100;名称,100REN_CODE.PopupMenuWidth=300REN_CODE.PopupMenuHeight=300REN_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1REN_CODE.FormatType=comboREN_CODE.ShowDownButton=YREN_CODE.Tip=物资原因REN_CODE.ShowColumnList=NAMEREN_CODE.HisOneNullRow=YREN_CODE.Enabled=NtLabel_27.Type=TLabeltLabel_27.X=361tLabel_27.Y=37tLabel_27.Width=57tLabel_27.Height=15tLabel_27.Text=申请原因FROM_ORG_CODE.Type=物资部门下拉区域FROM_ORG_CODE.X=248FROM_ORG_CODE.Y=33FROM_ORG_CODE.Width=100FROM_ORG_CODE.Height=23FROM_ORG_CODE.Text=FROM_ORG_CODE.HorizontalAlignment=2FROM_ORG_CODE.PopupMenuHeader=代码,100;名称,100FROM_ORG_CODE.PopupMenuWidth=300FROM_ORG_CODE.PopupMenuHeight=300FROM_ORG_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1FROM_ORG_CODE.FormatType=comboFROM_ORG_CODE.ShowDownButton=YFROM_ORG_CODE.Tip=物资部门FROM_ORG_CODE.ShowColumnList=NAMEFROM_ORG_CODE.HisOneNullRow=YFROM_ORG_CODE.Enabled=NTO_ORG_CODE.Type=物资部门下拉区域TO_ORG_CODE.X=71TO_ORG_CODE.Y=33TO_ORG_CODE.Width=100TO_ORG_CODE.Height=23TO_ORG_CODE.Text=TO_ORG_CODE.HorizontalAlignment=2TO_ORG_CODE.PopupMenuHeader=代码,100;名称,100TO_ORG_CODE.PopupMenuWidth=300TO_ORG_CODE.PopupMenuHeight=300TO_ORG_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1TO_ORG_CODE.FormatType=comboTO_ORG_CODE.ShowDownButton=YTO_ORG_CODE.Tip=物资部门TO_ORG_CODE.ShowColumnList=NAMETO_ORG_CODE.HisOneNullRow=YTO_ORG_CODE.Enabled=NtLabel_26.Type=TLabeltLabel_26.X=188tLabel_26.Y=37tLabel_26.Width=60tLabel_26.Height=15tLabel_26.Text=出库部门tLabel_25.Type=TLabeltLabel_25.X=13tLabel_25.Y=37tLabel_25.Width=59tLabel_25.Height=15tLabel_25.Text=入库部门DISPENSE_DATE.Type=TTextFormatDISPENSE_DATE.X=594DISPENSE_DATE.Y=7DISPENSE_DATE.Width=160DISPENSE_DATE.Height=20DISPENSE_DATE.Text=DISPENSE_DATE.Format=yyyy/MM/dd HH:mm:ssDISPENSE_DATE.FormatType=dateDISPENSE_DATE.showDownButton=YtLabel_24.Type=TLabeltLabel_24.X=534tLabel_24.Y=10tLabel_24.Width=58tLabel_24.Height=15tLabel_24.Text=出库日期REQUEST_TYPE.Type=TComboBoxREQUEST_TYPE.X=420REQUEST_TYPE.Y=5REQUEST_TYPE.Width=100REQUEST_TYPE.Height=23REQUEST_TYPE.Text=TButtonREQUEST_TYPE.showID=YREQUEST_TYPE.Editable=YREQUEST_TYPE.ShowText=NREQUEST_TYPE.ShowName=YREQUEST_TYPE.TableShowList=nameREQUEST_TYPE.StringData=[[id,name],[],[REQ,请领],[GIF,调拨],[RET,退库],[WAS,损耗],[ATO,自动拨补]]REQUEST_TYPE.Enabled=NtLabel_23.Type=TLabeltLabel_23.X=361tLabel_23.Y=10tLabel_23.Width=57tLabel_23.Height=15tLabel_23.Text=申请类别DISPENSE_NO_OUT.Type=TTextFieldDISPENSE_NO_OUT.X=248DISPENSE_NO_OUT.Y=7DISPENSE_NO_OUT.Width=100DISPENSE_NO_OUT.Height=20DISPENSE_NO_OUT.Text=DISPENSE_NO_OUT.Enabled=NtLabel_22.Type=TLabeltLabel_22.X=188tLabel_22.Y=10tLabel_22.Width=59tLabel_22.Height=15tLabel_22.Text=出库单号DISPENSE_NO.Type=TTextFieldDISPENSE_NO.X=71DISPENSE_NO.Y=7DISPENSE_NO.Width=100DISPENSE_NO.Height=20DISPENSE_NO.Text=DISPENSE_NO.Enabled=NtLabel_20.Type=TLabeltLabel_20.X=11tLabel_20.Y=10tLabel_20.Width=60tLabel_20.Height=15tLabel_20.Text=入库单号TABLE_M.Type=TTableTABLE_M.X=6TABLE_M.Y=126TABLE_M.Width=252TABLE_M.Height=301TABLE_M.SpacingRow=1TABLE_M.RowHeight=20TABLE_M.AutoX=YTABLE_M.AutoHeight=YTABLE_M.Header=单号类型,100,REQUEST_TYPE_Q;出库单号,100;入库部门,120,TO_ORG_CODE;出库部门,120,FROM_ORG_CODE;出库日期,120;出库人员,80,DISPENSE_USER;入库日期,120;入库人员,80,CHECK_USER;申请单号,100TABLE_M.LockColumns=allTABLE_M.Item=TO_ORG_CODE;FROM_ORG_CODE;DISPENSE_USER;CHECK_USER;REQUEST_TYPE_QTABLE_M.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,left;4,left;5,left;6,left;7,left;8,left;9,leftTABLE_M.ParmMap=REQUEST_TYPE;DISPENSE_NO_OUT;TO_ORG_CODE;FROM_ORG_CODE;DISPENSE_DATE;DISPENSE_USER;CHECK_DATE;CHECK_USER;REQUEST_NOTABLE_M.ClickedAction=onTableMClickedtPanel_0.Type=TPaneltPanel_0.X=5tPanel_0.Y=5tPanel_0.Width=252tPanel_0.Height=117tPanel_0.Border=组tPanel_0.AutoX=YtPanel_0.AutoY=YtPanel_0.Item=tLabel_15;START_DATE;tLabel_16;END_DATE;tLabel_17;tLabel_18;tLabel_19;REQUEST_TYPE_Q;DISPENSE_NO_OUTQ;TO_ORG_CODE_Q;tLabel_21;DISPENSE_NO_INQ;RadioButton1;tLabel_2;RadioButton3RadioButton3.Type=TRadioButtonRadioButton3.X=165RadioButton3.Y=6RadioButton3.Width=81RadioButton3.Height=23RadioButton3.Text=未完成RadioButton3.Group=group1RadioButton3.Selected=YRadioButton3.Action=onChangeFinaFlgtLabel_2.Type=TLabeltLabel_2.X=13tLabel_2.Y=10tLabel_2.Width=59tLabel_2.Height=15tLabel_2.Text=单据状态tLabel_2.Color=蓝RadioButton1.Type=TRadioButtonRadioButton1.X=80RadioButton1.Y=5RadioButton1.Width=60RadioButton1.Height=23RadioButton1.Text=完成RadioButton1.Group=group1RadioButton1.Action=onChangeFinaFlgDISPENSE_NO_INQ.Type=TTextFieldDISPENSE_NO_INQ.X=78DISPENSE_NO_INQ.Y=171DISPENSE_NO_INQ.Width=158DISPENSE_NO_INQ.Height=20DISPENSE_NO_INQ.Text=DISPENSE_NO_INQ.Enabled=NtLabel_21.Type=TLabeltLabel_21.X=13tLabel_21.Y=174tLabel_21.Width=61tLabel_21.Height=15tLabel_21.Text=入库单号tLabel_21.Color=blueTO_ORG_CODE_Q.Type=物资部门下拉区域TO_ORG_CODE_Q.X=78TO_ORG_CODE_Q.Y=115TO_ORG_CODE_Q.Width=158TO_ORG_CODE_Q.Height=23TO_ORG_CODE_Q.Text=TO_ORG_CODE_Q.HorizontalAlignment=2TO_ORG_CODE_Q.PopupMenuHeader=代码,100;名称,100TO_ORG_CODE_Q.PopupMenuWidth=300TO_ORG_CODE_Q.PopupMenuHeight=300TO_ORG_CODE_Q.PopupMenuFilter=ID,1;NAME,1;PY1,1TO_ORG_CODE_Q.FormatType=comboTO_ORG_CODE_Q.ShowDownButton=YTO_ORG_CODE_Q.Tip=物资部门TO_ORG_CODE_Q.ShowColumnList=NAMETO_ORG_CODE_Q.HisOneNullRow=YDISPENSE_NO_OUTQ.Type=TTextFieldDISPENSE_NO_OUTQ.X=78DISPENSE_NO_OUTQ.Y=144DISPENSE_NO_OUTQ.Width=158DISPENSE_NO_OUTQ.Height=20DISPENSE_NO_OUTQ.Text=REQUEST_TYPE_Q.Type=TComboBoxREQUEST_TYPE_Q.X=78REQUEST_TYPE_Q.Y=86REQUEST_TYPE_Q.Width=158REQUEST_TYPE_Q.Height=23REQUEST_TYPE_Q.Text=TButtonREQUEST_TYPE_Q.showID=YREQUEST_TYPE_Q.Editable=YREQUEST_TYPE_Q.ShowText=NREQUEST_TYPE_Q.ShowName=YREQUEST_TYPE_Q.TableShowList=nameREQUEST_TYPE_Q.StringData=[[id,name],[],[REQ,请领],[GIF,调拨],[RET,退库],[WAS,损耗],[ATO,自动拨补]]tLabel_19.Type=TLabeltLabel_19.X=13tLabel_19.Y=148tLabel_19.Width=62tLabel_19.Height=15tLabel_19.Text=出库单号tLabel_19.Color=bluetLabel_18.Type=TLabeltLabel_18.X=13tLabel_18.Y=120tLabel_18.Width=62tLabel_18.Height=15tLabel_18.Text=出库部门tLabel_18.Color=bluetLabel_17.Type=TLabeltLabel_17.X=13tLabel_17.Y=92tLabel_17.Width=62tLabel_17.Height=15tLabel_17.Text=单据类别tLabel_17.Color=blueEND_DATE.Type=TTextFormatEND_DATE.X=78END_DATE.Y=60END_DATE.Width=158END_DATE.Height=20END_DATE.Text=END_DATE.showDownButton=YEND_DATE.FormatType=dateEND_DATE.Format=yyyy/MM/dd HH:mm:sstLabel_16.Type=TLabeltLabel_16.X=53tLabel_16.Y=65tLabel_16.Width=23tLabel_16.Height=15tLabel_16.Text=～START_DATE.Type=TTextFormatSTART_DATE.X=78START_DATE.Y=35START_DATE.Width=158START_DATE.Height=20START_DATE.Text=START_DATE.showDownButton=YSTART_DATE.FormatType=dateSTART_DATE.Format=yyyy/MM/dd HH:mm:sstLabel_15.Type=TLabeltLabel_15.X=13tLabel_15.Y=39tLabel_15.Width=64tLabel_15.Height=15tLabel_15.Text=查询区间tLabel_15.Color=blue