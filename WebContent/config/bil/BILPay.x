<Type=TFrame>UI.Title=预交金UI.MenuConfig=%ROOT%\config\bil\BILPayMenu.xUI.Width=1280UI.Height=800UI.toolbar=YUI.controlclassname=com.javahis.ui.bil.BILPayControlUI.item=tPanel_0;tPanel_1;CASH1;CASH2UI.layout=nullUI.BKColor=161,220,230UI.FocusList=UI.TopMenu=YUI.TopToolBar=YUI.X=5UI.AutoX=YUI.Y=5UI.AutoY=YUI.AutoWidth=YUI.AutoHeight=YCASH2.Type=人员CASH2.X=709CASH2.Y=343CASH2.Width=81CASH2.Height=23CASH2.Text=CASH2.HorizontalAlignment=2CASH2.PopupMenuHeader=代码,100;名称,100CASH2.PopupMenuWidth=300CASH2.PopupMenuHeight=300CASH2.PopupMenuFilter=ID,1;NAME,1;PY1,1CASH2.FormatType=comboCASH2.ShowDownButton=YCASH2.Tip=人员CASH2.ShowColumnList=NAMECASH1.Type=人员CASH1.X=522CASH1.Y=318CASH1.Width=81CASH1.Height=23CASH1.Text=CASH1.HorizontalAlignment=2CASH1.PopupMenuHeader=代码,100;名称,100CASH1.PopupMenuWidth=300CASH1.PopupMenuHeight=300CASH1.PopupMenuFilter=ID,1;NAME,1;PY1,1CASH1.FormatType=comboCASH1.ShowDownButton=YCASH1.Tip=人员CASH1.ShowColumnList=NAMEMAINTABLE.Type=TTableMAINTABLE.X=7MAINTABLE.Y=11MAINTABLE.Width=1248MAINTABLE.Height=511MAINTABLE.SpacingRow=1MAINTABLE.RowHeight=20MAINTABLE.AutoY=YMAINTABLE.AutoX=YMAINTABLE.AutoWidth=YMAINTABLE.AutoHeight=YMAINTABLE.Header=收据号,120;收费日期,80;预交金额,80,double,########0.00;操作类型,80,TRANSACT_TYPE;支付方式,120,PAY_TYPE;支票号,120;备注,100;收费人员,80,CASH1;退,30,boolean;退费人员,80,CASH2;退费日期,80;冲销收据号,120MAINTABLE.ParmMap=RECEIPT_NO;CHARGE_DATE;PRE_AMT;TRANSACT_TYPE;PAY_TYPE;CHECK_NO;REMARK;CASHIER_CODE;REFUND_FLG;REFUND_CODE;REFUND_DATE;RESET_RECP_NOMAINTABLE.LockColumns=0,1,2,3,4,5,6,7,8,9,10,11,12MAINTABLE.Item=TRANSACT_TYPE;PAY_TYPE;CASH1;CASH2MAINTABLE.ColumnHorizontalAlignmentData=0.legt;1,right;2,right;3,left;4,left;5,left;6,left;7,left;9,left;10,right;11,lefttPanel_1.Type=TPaneltPanel_1.X=5tPanel_1.Y=262tPanel_1.Width=1270tPanel_1.Height=533tPanel_1.Border=组|tPanel_1.AutoX=YtPanel_1.AutoWidth=YtPanel_1.AutoHeight=YtPanel_1.Item=MAINTABLEtPanel_0.Type=TPaneltPanel_0.X=5tPanel_0.Y=5tPanel_0.Width=1270tPanel_0.Height=248tPanel_0.Border=组|tPanel_0.Item=tLabel_2;tLabel_3;tLabel_4;MR_NO;IPD_NO;CASE_NO;tLabel_5;tLabel_6;PAT_NAME;DEPT_CODE;tLabel_7;tLabel_20;BED_NO;STATION_CODE;tLabel_21;tLabel_22;LEFT_BILPAY;tLabel_23;SUM_TOTAL;tLabel_24;PAY_TYPE;tLabel_25;tLabel_26;tLabel_27;tLabel_28;PRE_AMT;CHECK_NO;REMARK;tLabel_29;YELLOW_SIGN;tLabel_30;RED_SIGN;tLabel_31;GREENPATH_VALUE;tLabel_32;RECEIPT_NO;tLabel_19;TRANSACT_TYPE;SEX_CODE;tLabel_0;PRINT_NO;ADM_TYPEtPanel_0.AutoWidth=YtPanel_0.AutoY=YtPanel_0.AutoX=YADM_TYPE.Type=TComboBoxADM_TYPE.X=93ADM_TYPE.Y=15ADM_TYPE.Width=119ADM_TYPE.Height=20ADM_TYPE.Text=TButtonADM_TYPE.showID=YADM_TYPE.Editable=YADM_TYPE.StringData=[[id,text],[,],[O,门诊],[E,急诊],[I,住院],[H,健检]]ADM_TYPE.TableShowList=textADM_TYPE.Enabled=NPRINT_NO.Type=TTextFieldPRINT_NO.X=93PRINT_NO.Y=211PRINT_NO.Width=119PRINT_NO.Height=20PRINT_NO.Text=PRINT_NO.Enabled=NtLabel_0.Type=TLabeltLabel_0.X=17tLabel_0.Y=214tLabel_0.Width=72tLabel_0.Height=15tLabel_0.Text=票据号码:SEX_CODE.Type=性别下拉列表SEX_CODE.X=308SEX_CODE.Y=90SEX_CODE.Width=101SEX_CODE.Height=23SEX_CODE.Text=TButtonSEX_CODE.showID=YSEX_CODE.showName=YSEX_CODE.showText=NSEX_CODE.showValue=NSEX_CODE.showPy1=YSEX_CODE.showPy2=YSEX_CODE.Editable=YSEX_CODE.Tip=性别SEX_CODE.TableShowList=nameSEX_CODE.ModuleParmString=GROUP_ID:SYS_SEXSEX_CODE.ModuleParmTag=SEX_CODE.Enabled=NtLabel_19.Type=TLabeltLabel_19.X=602tLabel_19.Y=178tLabel_19.Width=72tLabel_19.Height=15tLabel_19.Text=操作类型:RECEIPT_NO.Type=TTextFieldRECEIPT_NO.X=674RECEIPT_NO.Y=132RECEIPT_NO.Width=101RECEIPT_NO.Height=20RECEIPT_NO.Text=RECEIPT_NO.Enabled=NtLabel_32.Type=TLabeltLabel_32.X=17tLabel_32.Y=19tLabel_32.Width=72tLabel_32.Height=15tLabel_32.Text=病患来源:GREENPATH_VALUE.Type=TNumberTextFieldGREENPATH_VALUE.X=674GREENPATH_VALUE.Y=15GREENPATH_VALUE.Width=101GREENPATH_VALUE.Height=20GREENPATH_VALUE.Text=0.00GREENPATH_VALUE.Format=#########0.00GREENPATH_VALUE.Enabled=NtLabel_31.Type=TLabeltLabel_31.X=602tLabel_31.Y=18tLabel_31.Width=72tLabel_31.Height=15tLabel_31.Text=绿色通道:RED_SIGN.Type=TNumberTextFieldRED_SIGN.X=490RED_SIGN.Y=15RED_SIGN.Width=101RED_SIGN.Height=20RED_SIGN.Text=0.00RED_SIGN.Format=#########0.00RED_SIGN.Enabled=NtLabel_30.Type=TLabeltLabel_30.X=414tLabel_30.Y=18tLabel_30.Width=72tLabel_30.Height=15tLabel_30.Text=红色警示:YELLOW_SIGN.Type=TNumberTextFieldYELLOW_SIGN.X=307YELLOW_SIGN.Y=15YELLOW_SIGN.Width=101YELLOW_SIGN.Height=20YELLOW_SIGN.Text=0.00YELLOW_SIGN.Format=#########0.00YELLOW_SIGN.Enabled=NtLabel_29.Type=TLabeltLabel_29.X=231tLabel_29.Y=18tLabel_29.Width=72tLabel_29.Height=15tLabel_29.Text=黄色警示:REMARK.Type=TTextFieldREMARK.X=490REMARK.Y=173REMARK.Width=101REMARK.Height=20REMARK.Text=CHECK_NO.Type=TTextFieldCHECK_NO.X=308CHECK_NO.Y=173CHECK_NO.Width=101CHECK_NO.Height=20CHECK_NO.Text=PRE_AMT.Type=TNumberTextFieldPRE_AMT.X=93PRE_AMT.Y=132PRE_AMT.Width=119PRE_AMT.Height=20PRE_AMT.Text=0.00PRE_AMT.Format=#########0.00tLabel_28.Type=TLabeltLabel_28.X=414tLabel_28.Y=176tLabel_28.Width=72tLabel_28.Height=15tLabel_28.Text=备注:tLabel_27.Type=TLabeltLabel_27.X=233tLabel_27.Y=176tLabel_27.Width=72tLabel_27.Height=15tLabel_27.Text=支票号码:tLabel_26.Type=TLabeltLabel_26.X=17tLabel_26.Y=135tLabel_26.Width=72tLabel_26.Height=15tLabel_26.Text=预交金额:tLabel_25.Type=TLabeltLabel_25.X=17tLabel_25.Y=176tLabel_25.Width=72tLabel_25.Height=15tLabel_25.Text=支付方式:TRANSACT_TYPE.Type=TComboBoxTRANSACT_TYPE.X=674TRANSACT_TYPE.Y=169TRANSACT_TYPE.Width=101TRANSACT_TYPE.Height=23TRANSACT_TYPE.Text=TButtonTRANSACT_TYPE.showID=YTRANSACT_TYPE.Editable=YTRANSACT_TYPE.StringData=[[id,text],[,],[01,交费],[02,退费],[03,结算],[04,回冲],[05,作废]]TRANSACT_TYPE.TableShowList=textTRANSACT_TYPE.Enabled=NtLabel_19.Type=TLabeltLabel_19.X=602tLabel_19.Y=178tLabel_19.Width=72tLabel_19.Height=15tLabel_19.Text=操作类型:tLabel_25.Type=TLabeltLabel_25.X=17tLabel_25.Y=176tLabel_25.Width=72tLabel_25.Height=15tLabel_25.Text=支付方式:PAY_TYPE.Type=支付方式下拉列表PAY_TYPE.X=93PAY_TYPE.Y=172PAY_TYPE.Width=119PAY_TYPE.Height=23PAY_TYPE.Text=TButtonPAY_TYPE.showID=YPAY_TYPE.showName=YPAY_TYPE.showText=NPAY_TYPE.showValue=NPAY_TYPE.showPy1=YPAY_TYPE.showPy2=YPAY_TYPE.Editable=YPAY_TYPE.Tip=支付方式PAY_TYPE.TableShowList=namePAY_TYPE.ModuleParmString=GROUP_ID:SYS_PAYTYPEPAY_TYPE.ModuleParmTag=PAY_TYPE.ExpandWidth=80PAY_TYPE.SelectedAction=tLabel_24.Type=TLabeltLabel_24.X=602tLabel_24.Y=135tLabel_24.Width=72tLabel_24.Height=15tLabel_24.Text=收据号码:SUM_TOTAL.Type=TNumberTextFieldSUM_TOTAL.X=490SUM_TOTAL.Y=132SUM_TOTAL.Width=101SUM_TOTAL.Height=20SUM_TOTAL.Text=0.00SUM_TOTAL.Format=#########0.00SUM_TOTAL.Enabled=NtLabel_23.Type=TLabeltLabel_23.X=414tLabel_23.Y=135tLabel_23.Width=72tLabel_23.Height=15tLabel_23.Text=可用余额:LEFT_BILPAY.Type=TNumberTextFieldLEFT_BILPAY.X=308LEFT_BILPAY.Y=132LEFT_BILPAY.Width=101LEFT_BILPAY.Height=20LEFT_BILPAY.Text=0.00LEFT_BILPAY.Format=#########0.00LEFT_BILPAY.Enabled=NtLabel_22.Type=TLabeltLabel_22.X=233tLabel_22.Y=135tLabel_22.Width=82tLabel_22.Height=15tLabel_22.Text=预交金余额:tLabel_21.Type=TLabeltLabel_21.X=602tLabel_21.Y=94tLabel_21.Width=72tLabel_21.Height=15tLabel_21.Text=病区:STATION_CODE.Type=病区下拉列表STATION_CODE.X=674STATION_CODE.Y=90STATION_CODE.Width=101STATION_CODE.Height=23STATION_CODE.Text=TButtonSTATION_CODE.showID=YSTATION_CODE.showName=YSTATION_CODE.showText=NSTATION_CODE.showValue=NSTATION_CODE.showPy1=YSTATION_CODE.showPy2=YSTATION_CODE.Editable=YSTATION_CODE.Tip=病区STATION_CODE.TableShowList=nameSTATION_CODE.Enabled=NBED_NO.Type=TTextFieldBED_NO.X=674BED_NO.Y=51BED_NO.Width=101BED_NO.Height=20BED_NO.Text=BED_NO.Enabled=NtLabel_20.Type=TLabeltLabel_20.X=602tLabel_20.Y=54tLabel_20.Width=72tLabel_20.Height=15tLabel_20.Text=床号:tLabel_7.Type=TLabeltLabel_7.X=414tLabel_7.Y=94tLabel_7.Width=72tLabel_7.Height=15tLabel_7.Text=科室:DEPT_CODE.Type=科室下拉列表DEPT_CODE.X=490DEPT_CODE.Y=90DEPT_CODE.Width=101DEPT_CODE.Height=23DEPT_CODE.Text=TButtonDEPT_CODE.showID=YDEPT_CODE.showName=YDEPT_CODE.showText=NDEPT_CODE.showValue=NDEPT_CODE.showPy1=YDEPT_CODE.showPy2=YDEPT_CODE.Editable=YDEPT_CODE.Tip=科室DEPT_CODE.TableShowList=nameDEPT_CODE.Enabled=NPAT_NAME.Type=TTextFieldPAT_NAME.X=93PAT_NAME.Y=91PAT_NAME.Width=119PAT_NAME.Height=20PAT_NAME.Text=PAT_NAME.Enabled=NtLabel_6.Type=TLabeltLabel_6.X=233tLabel_6.Y=94tLabel_6.Width=72tLabel_6.Height=15tLabel_6.Text=性别:tLabel_6.HorizontalAlignment=2tLabel_5.Type=TLabeltLabel_5.X=17tLabel_5.Y=94tLabel_5.Width=72tLabel_5.Height=15tLabel_5.Text=姓名:CASE_NO.Type=TTextFieldCASE_NO.X=490CASE_NO.Y=51CASE_NO.Width=101CASE_NO.Height=20CASE_NO.Text=CASE_NO.Enabled=YIPD_NO.Type=TTextFieldIPD_NO.X=308IPD_NO.Y=51IPD_NO.Width=101IPD_NO.Height=20IPD_NO.Text=IPD_NO.Enabled=YIPD_NO.Action=onQueryByIpdNoMR_NO.Type=TTextFieldMR_NO.X=93MR_NO.Y=51MR_NO.Width=119MR_NO.Height=20MR_NO.Text=MR_NO.Action=onQueryByCaseNotLabel_4.Type=TLabeltLabel_4.X=414tLabel_4.Y=54tLabel_4.Width=72tLabel_4.Height=15tLabel_4.Text=就诊序号:tLabel_3.Type=TLabeltLabel_3.X=233tLabel_3.Y=54tLabel_3.Width=72tLabel_3.Height=15tLabel_3.Text=住院号:tLabel_2.Type=TLabeltLabel_2.X=17tLabel_2.Y=54tLabel_2.Width=72tLabel_2.Height=15tLabel_2.Text=病案号: