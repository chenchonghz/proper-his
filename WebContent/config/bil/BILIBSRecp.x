<Type=TFrame>UI.Title=缴费作业 UI.MenuConfig=%ROOT%\config\bil\BILIBSRecpMenu.xUI.Width=1490UI.Height=1490UI.toolbar=YUI.controlclassname=com.javahis.ui.bil.BILIBSRecpControlUI.item=tPanel_1;tPanel_4;tPanel_5;CHECKALLUI.layout=nullUI.BKColor=161,220,230UI.FocusList=UI.TopMenu=YUI.TopToolBar=YUI.ShowTitle=NUI.X=5UI.AutoX=YUI.Y=5UI.AutoY=YUI.AutoWidth=YUI.AutoHeight=YCHECKALL.Type=TCheckBoxCHECKALL.X=10CHECKALL.Y=-1CHECKALL.Width=81CHECKALL.Height=23CHECKALL.Text=全选CHECKALL.Action=CheckedAlltPanel_5.Type=TPaneltPanel_5.X=9tPanel_5.Y=161tPanel_5.Width=1480tPanel_5.Height=155tPanel_5.Border=组|预交金明细tPanel_5.Item=BillPayTable;TRANSACT_TYPE;PAY_TYPEtPanel_5.AutoWidth=YtPanel_5.AutoX=YPAY_TYPE.Type=支付方式下拉列表PAY_TYPE.X=209PAY_TYPE.Y=41PAY_TYPE.Width=81PAY_TYPE.Height=23PAY_TYPE.Text=TButtonPAY_TYPE.showID=YPAY_TYPE.showName=YPAY_TYPE.showText=NPAY_TYPE.showValue=NPAY_TYPE.showPy1=YPAY_TYPE.showPy2=YPAY_TYPE.Editable=YPAY_TYPE.Tip=支付方式PAY_TYPE.TableShowList=namePAY_TYPE.ModuleParmString=GROUP_ID:SYS_PAYTYPEPAY_TYPE.ModuleParmTag=TRANSACT_TYPE.Type=TComboBoxTRANSACT_TYPE.X=70TRANSACT_TYPE.Y=39TRANSACT_TYPE.Width=81TRANSACT_TYPE.Height=23TRANSACT_TYPE.Text=TButtonTRANSACT_TYPE.showID=YTRANSACT_TYPE.Editable=YTRANSACT_TYPE.StringData=[[id,text],[,],[01,交费],[02,退费],[03,结算],[04,回冲],[05,作废]]TRANSACT_TYPE.TableShowList=textBillPayTable.Type=TTableBillPayTable.X=7BillPayTable.Y=18BillPayTable.Width=1462BillPayTable.Height=126BillPayTable.SpacingRow=1BillPayTable.RowHeight=20BillPayTable.AutoX=NBillPayTable.AutoY=NBillPayTable.AutoWidth=YBillPayTable.AutoHeight=YBillPayTable.Header=选,30,boolean;收据号,120;收费日期,150,timestamp,yyyy/MM/dd HH:mm:ss;预交金额,80,double,#########0.00;操作类型,80,TRANSACT_TYPE;支付方式,120,PAY_TYPE;支票号,120;备注,100;收费人员,80,USER_ID;退,30,boolean;退费日期,80;退费人员,80;冲销收据号,120BillPayTable.ParmMap=BILLPAY_SEL;RECEIPT_NO;CHARGE_DATE;PRE_AMT;TRANSACT_TYPE;PAY_TYPE;CHECK_NO;REMARK;CASHIER_CODE;REFUND_FLG;REFUND_CODE;REFUND_DATE;RESET_RECP_NOBillPayTable.Item=TRANSACT_TYPE;PAY_TYPE;USER_IDBillPayTable.LockColumns=1,2,3,4,5,6,7,8,9,10,11,12BillPayTable.ColumnHorizontalAlignmentData=1,left;2,right;3,right;4,left;5,left;6,right;7,left;8,left;10,right;11,left;12,righttPanel_4.Type=TPaneltPanel_4.X=8tPanel_4.Y=19tPanel_4.Width=1477tPanel_4.Height=145tPanel_4.Border=组|账单明细tPanel_4.Item=BillTable;CTZ1_CODE;CTZ2_CODE;CTZ3_CODEtPanel_4.AutoWidth=YCTZ3_CODE.Type=身份折扣下拉列表CTZ3_CODE.X=311CTZ3_CODE.Y=79CTZ3_CODE.Width=81CTZ3_CODE.Height=23CTZ3_CODE.Text=TButtonCTZ3_CODE.showID=YCTZ3_CODE.showName=YCTZ3_CODE.showText=NCTZ3_CODE.showValue=NCTZ3_CODE.showPy1=YCTZ3_CODE.showPy2=YCTZ3_CODE.Editable=YCTZ3_CODE.Tip=主身份CTZ3_CODE.TableShowList=nameCTZ3_CODE.MainCtzFlg=NCTZ2_CODE.Type=身份折扣下拉列表CTZ2_CODE.X=194CTZ2_CODE.Y=91CTZ2_CODE.Width=81CTZ2_CODE.Height=23CTZ2_CODE.Text=TButtonCTZ2_CODE.showID=YCTZ2_CODE.showName=YCTZ2_CODE.showText=NCTZ2_CODE.showValue=NCTZ2_CODE.showPy1=YCTZ2_CODE.showPy2=YCTZ2_CODE.Editable=YCTZ2_CODE.Tip=主身份CTZ2_CODE.TableShowList=nameCTZ2_CODE.MainCtzFlg=NCTZ1_CODE.Type=身份折扣下拉列表CTZ1_CODE.X=73CTZ1_CODE.Y=81CTZ1_CODE.Width=81CTZ1_CODE.Height=23CTZ1_CODE.Text=TButtonCTZ1_CODE.showID=YCTZ1_CODE.showName=YCTZ1_CODE.showText=NCTZ1_CODE.showValue=NCTZ1_CODE.showPy1=YCTZ1_CODE.showPy2=YCTZ1_CODE.Editable=YCTZ1_CODE.Tip=主身份CTZ1_CODE.TableShowList=nameCTZ1_CODE.MainCtzFlg=YBillTable.Type=TTableBillTable.X=8BillTable.Y=24BillTable.Width=1458BillTable.Height=110BillTable.SpacingRow=1BillTable.RowHeight=20BillTable.AutoX=NBillTable.AutoY=NBillTable.AutoWidth=YBillTable.AutoHeight=YBillTable.Header=交费,40,boolean;呆帐,40,boolean;就诊序号,100;票据号码,100;开始日期,80;截止日期,80;应交款,80,double,#########0.00;已交款,80,double,#########0.00;本次收款额,80,double,#########0.00;身份一,70,CTZ1_CODE;身份二,70,CTZ2_CODE;身份三,70,CTZ3_CODE;自费总额,80,double,#########0.00;医保总额,80,double,#########0.00;折扣额,80,double,#########0.00;医疗总费用,80,double,#########0.00;出院结算,70,booleanBillTable.ParmMap=PAY_SEL;REDUCE_FLG;CASE_NO;BILL_NO;BEGIN_DATE;END_DATE;AR_AMT;PAY_AR_AMT;ALREADY_PAY;CTZ1_CODE;CTZ2_CODE;CTZ3_CODE;OWN_AMT;NHI_AMT;REDUCE_AMT;TOT_AMT;DISCHARGE_FLG;BILL_SEQ;APPROVE_FLGBillTable.LockColumns=1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16BillTable.ColumnHorizontalAlignmentData=2,left;3,left;4,right;5,right;6,right;7,right;8,right;9,left;10,left;11,left;12,right;13,right;14,right;15,rightBillTable.Item=CTZ1_CODE;CTZ2_CODE;CTZ3_CODEtPanel_1.Type=TPaneltPanel_1.X=10tPanel_1.Y=316tPanel_1.Width=1470tPanel_1.Height=1164tPanel_1.Border=组|tPanel_1.AutoWidth=YtPanel_1.Item=tLabel_5;tLabel_6;tLabel_7;tLabel_20;tLabel_21;TOT_AMT;tNumberTextField_1;OWN_AMT;PAY_BILPAY;tLabel_22;tLabel_26;tLabel_27;PAY_CASH;PAY_CHECK;PAY_BANK_CARD;PAY_DEBIT;AR_AMT;tLabel_28;tLabel_29;tLabel_30;tLabel_31;tLabel_32;tLabel_33;tLabel_34;tLabel_35;tLabel_36;DISCT_RESON;tNumberTextField_15;tTextField_7;PAY_REMK;PAY_MEDICAL_CARD;tLabel_8;tLabel_9;tLabel_10;PAY_INS_CARD;PAY_OTHER1;PAY_OTHER2;DISCNT_AMT;PRINT_NO;tLabel_0;USER_ID;PAY_INStPanel_1.AutoSize=10tPanel_1.AutoX=YtPanel_1.AutoHeight=YPAY_INS.Type=TNumberTextFieldPAY_INS.X=117PAY_INS.Y=89PAY_INS.Width=98PAY_INS.Height=20PAY_INS.Text=0.00PAY_INS.Format=#########0.00PAY_INS.Enabled=NUSER_ID.Type=人员USER_ID.X=881USER_ID.Y=37USER_ID.Width=81USER_ID.Height=23USER_ID.Text=USER_ID.HorizontalAlignment=2USER_ID.PopupMenuHeader=代码,100;名称,100USER_ID.PopupMenuWidth=300USER_ID.PopupMenuHeight=300USER_ID.PopupMenuFilter=ID,1;NAME,1;PY1,1USER_ID.FormatType=comboUSER_ID.ShowDownButton=YUSER_ID.Tip=人员USER_ID.ShowColumnList=NAMEUSER_ID.Visible=NtLabel_0.Type=TLabeltLabel_0.X=22tLabel_0.Y=16tLabel_0.Width=72tLabel_0.Height=15tLabel_0.Text=票    号:PRINT_NO.Type=TTextFieldPRINT_NO.X=117PRINT_NO.Y=13PRINT_NO.Width=98PRINT_NO.Height=20PRINT_NO.Text=PRINT_NO.Enabled=NDISCNT_AMT.Type=TNumberTextFieldDISCNT_AMT.X=780DISCNT_AMT.Y=38DISCNT_AMT.Width=96DISCNT_AMT.Height=20DISCNT_AMT.Text=0.00DISCNT_AMT.Format=#########0.00DISCNT_AMT.Action=grabFocusDiscntAmtPAY_OTHER2.Type=TNumberTextFieldPAY_OTHER2.X=340PAY_OTHER2.Y=113PAY_OTHER2.Width=98PAY_OTHER2.Height=20PAY_OTHER2.Text=0.00PAY_OTHER2.Format=#########0.00PAY_OTHER2.Enabled=NPAY_OTHER1.Type=TNumberTextFieldPAY_OTHER1.X=340PAY_OTHER1.Y=88PAY_OTHER1.Width=98PAY_OTHER1.Height=20PAY_OTHER1.Text=0.00PAY_OTHER1.Format=#########0.00PAY_OTHER1.Enabled=NPAY_INS_CARD.Type=TNumberTextFieldPAY_INS_CARD.X=340PAY_INS_CARD.Y=63PAY_INS_CARD.Width=98PAY_INS_CARD.Height=20PAY_INS_CARD.Text=0.00PAY_INS_CARD.Format=#########0.00PAY_INS_CARD.Enabled=NtLabel_10.Type=TLabeltLabel_10.X=231tLabel_10.Y=116tLabel_10.Width=72tLabel_10.Height=15tLabel_10.Text=其他二:tLabel_9.Type=TLabeltLabel_9.X=232tLabel_9.Y=91tLabel_9.Width=129tLabel_9.Height=15tLabel_9.Text=其他一(慢病卡):tLabel_8.Type=TLabeltLabel_8.X=231tLabel_8.Y=66tLabel_8.Width=72tLabel_8.Height=15tLabel_8.Text=医保卡:PAY_MEDICAL_CARD.Type=TNumberTextFieldPAY_MEDICAL_CARD.X=340PAY_MEDICAL_CARD.Y=38PAY_MEDICAL_CARD.Width=98PAY_MEDICAL_CARD.Height=20PAY_MEDICAL_CARD.Text=0.00PAY_MEDICAL_CARD.Format=#########0.00PAY_MEDICAL_CARD.Enabled=NPAY_REMK.Type=TTextFieldPAY_REMK.X=567PAY_REMK.Y=138PAY_REMK.Width=310PAY_REMK.Height=20PAY_REMK.Text=tTextField_7.Type=TTextFieldtTextField_7.X=780tTextField_7.Y=113tTextField_7.Width=96tTextField_7.Height=20tTextField_7.Text=tNumberTextField_15.Type=TNumberTextFieldtNumberTextField_15.X=780tNumberTextField_15.Y=88tNumberTextField_15.Width=96tNumberTextField_15.Height=20tNumberTextField_15.Text=0.00tNumberTextField_15.Format=#########0.00DISCT_RESON.Type=TTextFieldDISCT_RESON.X=780DISCT_RESON.Y=63DISCT_RESON.Width=96DISCT_RESON.Height=20DISCT_RESON.Text=tLabel_36.Type=TLabeltLabel_36.X=488tLabel_36.Y=141tLabel_36.Width=72tLabel_36.Height=15tLabel_36.Text=收款备注:tLabel_35.Type=TLabeltLabel_35.X=687tLabel_35.Y=116tLabel_35.Width=72tLabel_35.Height=15tLabel_35.Text=记账单位:tLabel_34.Type=TLabeltLabel_34.X=687tLabel_34.Y=91tLabel_34.Width=72tLabel_34.Height=15tLabel_34.Text=欠款金额:tLabel_33.Type=TLabeltLabel_33.X=687tLabel_33.Y=66tLabel_33.Width=93tLabel_33.Height=15tLabel_33.Text=其他折扣原因:tLabel_32.Type=TLabeltLabel_32.X=687tLabel_32.Y=41tLabel_32.Width=72tLabel_32.Height=15tLabel_32.Text=其他折扣:tLabel_31.Type=TLabeltLabel_31.X=488tLabel_31.Y=116tLabel_31.Width=72tLabel_31.Height=15tLabel_31.Text=记账:tLabel_30.Type=TLabeltLabel_30.X=488tLabel_30.Y=66tLabel_30.Width=72tLabel_30.Height=15tLabel_30.Text=刷卡:tLabel_29.Type=TLabeltLabel_29.X=488tLabel_29.Y=91tLabel_29.Width=72tLabel_29.Height=15tLabel_29.Text=支票:tLabel_28.Type=TLabeltLabel_28.X=488tLabel_28.Y=41tLabel_28.Width=72tLabel_28.Height=15tLabel_28.Text=现金:AR_AMT.Type=TNumberTextFieldAR_AMT.X=567AR_AMT.Y=13AR_AMT.Width=77AR_AMT.Height=20AR_AMT.Text=0.00AR_AMT.Format=#########0.00PAY_DEBIT.Type=TNumberTextFieldPAY_DEBIT.X=567PAY_DEBIT.Y=113PAY_DEBIT.Width=96PAY_DEBIT.Height=20PAY_DEBIT.Text=0.00PAY_DEBIT.Format=#########0.00PAY_DEBIT.Action=grabFocusPayDebitPAY_BANK_CARD.Type=TNumberTextFieldPAY_BANK_CARD.X=567PAY_BANK_CARD.Y=63PAY_BANK_CARD.Width=96PAY_BANK_CARD.Height=20PAY_BANK_CARD.Text=0.00PAY_BANK_CARD.Format=#########0.00PAY_BANK_CARD.Action=grabFocusPayBankCardPAY_CHECK.Type=TNumberTextFieldPAY_CHECK.X=567PAY_CHECK.Y=88PAY_CHECK.Width=96PAY_CHECK.Height=20PAY_CHECK.Text=0.00PAY_CHECK.Format=#########0.00PAY_CHECK.Action=grabFocusPayCheckPAY_CASH.Type=TNumberTextFieldPAY_CASH.X=567PAY_CASH.Y=38PAY_CASH.Width=96PAY_CASH.Height=20PAY_CASH.Text=0.00PAY_CASH.Format=#########0.00PAY_CASH.Action=grabFocusPayCashtLabel_27.Type=TLabeltLabel_27.X=652tLabel_27.Y=16tLabel_27.Width=308tLabel_27.Height=15tLabel_27.Text==(自费额+部分负担-冲销预交款-补助额-已交款)tLabel_26.Type=TLabeltLabel_26.X=488tLabel_26.Y=16tLabel_26.Width=42tLabel_26.Height=15tLabel_26.Text=应缴:tLabel_22.Type=TLabeltLabel_22.X=231tLabel_22.Y=41tLabel_22.Width=72tLabel_22.Height=15tLabel_22.Text=医疗卡:PAY_BILPAY.Type=TNumberTextFieldPAY_BILPAY.X=117PAY_BILPAY.Y=113PAY_BILPAY.Width=98PAY_BILPAY.Height=20PAY_BILPAY.Text=0.00PAY_BILPAY.Format=#########0.00PAY_BILPAY.Enabled=NOWN_AMT.Type=TNumberTextFieldOWN_AMT.X=117OWN_AMT.Y=63OWN_AMT.Width=98OWN_AMT.Height=20OWN_AMT.Text=0.00OWN_AMT.Format=#########0.00OWN_AMT.Enabled=NtNumberTextField_1.Type=TNumberTextFieldtNumberTextField_1.X=117tNumberTextField_1.Y=38tNumberTextField_1.Width=98tNumberTextField_1.Height=20tNumberTextField_1.Text=0.00tNumberTextField_1.Format=#########0.00tNumberTextField_1.Enabled=NTOT_AMT.Type=TNumberTextFieldTOT_AMT.X=340TOT_AMT.Y=13TOT_AMT.Width=98TOT_AMT.Height=20TOT_AMT.Text=0.00TOT_AMT.Format=#########0.00TOT_AMT.Enabled=NtLabel_21.Type=TLabeltLabel_21.X=22tLabel_21.Y=116tLabel_21.Width=94tLabel_21.Height=15tLabel_21.Text=冲销预交金额:tLabel_20.Type=TLabeltLabel_20.X=22tLabel_20.Y=91tLabel_20.Width=72tLabel_20.Height=15tLabel_20.Text=社会统筹:tLabel_7.Type=TLabeltLabel_7.X=22tLabel_7.Y=66tLabel_7.Width=72tLabel_7.Height=15tLabel_7.Text=自费金额:tLabel_6.Type=TLabeltLabel_6.X=22tLabel_6.Y=41tLabel_6.Width=72tLabel_6.Height=15tLabel_6.Text=保险给付:tLabel_5.Type=TLabeltLabel_5.X=231tLabel_5.Y=16tLabel_5.Width=82tLabel_5.Height=15tLabel_5.Text=医疗总费用: