## TBuilder Config File ## Title:## Company:JAVAHIS## Author:ZangJH 2009.04.03## version 1.0#<Type=TFrame>UI.Title=诊疗项目费用字典UI.MenuConfig=%ROOT%\config\sys\SYS_FEE\SYSFeeMenu.xUI.Width=1210UI.Height=748UI.toolbar=YUI.controlclassname=com.javahis.ui.sys.SYSFee_FeeControlUI.item=leftPanel;tMovePane_0;rightPanelUI.layout=nullUI.FocusList=ORDER_DESC;NHI_FEE_DESC;TRADE_ENG_DESC;ALIAS_DESC;SPECIFICATION;DESCRIPTION;OWN_PRICE;NHI_PRICE;GOV_PRICE;HYGIENE_TRADE_CODE;ADDPAY_RATE;ADDPAY_AMT;NHI_CODE_I;NHI_CODE_O;NHI_CODE_EUI.TopMenu=YUI.TopToolBar=YrightPanel.Type=TPanelrightPanel.X=274rightPanel.Y=3rightPanel.Width=933rightPanel.Height=742rightPanel.AutoY=YrightPanel.AutoHeight=YrightPanel.AutoSize=3rightPanel.Border=凸rightPanel.Item=upTable;tTabbedPane_0;tLabel_49;QUERYrightPanel.AutoWidth=YQUERY.Type=TTextFieldQUERY.X=51QUERY.Y=4QUERY.Width=77QUERY.Height=20QUERY.Text=tLabel_49.Type=TLabeltLabel_49.X=10tLabel_49.Y=7tLabel_49.Width=41tLabel_49.Height=15tLabel_49.Text=查询:tTabbedPane_0.Type=TTabbedPanetTabbedPane_0.X=6tTabbedPane_0.Y=131tTabbedPane_0.Width=923tTabbedPane_0.Height=601tTabbedPane_0.Item=tPanel_2tTabbedPane_0.AutoWidth=YtTabbedPane_0.AutoX=YtTabbedPane_0.AutoSize=3tTabbedPane_0.AutoHeight=YtPanel_2.Type=TPaneltPanel_2.X=3tPanel_2.Y=3tPanel_2.Width=735tPanel_2.Height=530tPanel_2.Name=诊疗项目信息tPanel_2.AutoHeight=YtPanel_2.AutoX=YtPanel_2.AutoY=YtPanel_2.AutoSize=3tPanel_2.AutoWidth=YtPanel_2.Item=tPanel_3;tPanel_4;tPanel_5;tPanel_6tPanel_6.Type=TPaneltPanel_6.X=515tPanel_6.Y=252tPanel_6.Width=217tPanel_6.Height=172tPanel_6.Border=组|医保tPanel_6.Item=tLabel_23;tLabel_24;tLabel_25;tLabel_26;tLabel_27;tLabel_28;INSPAY_TYPE;ADDPAY_RATE;ADDPAY_AMT;NHI_CODE_I;NHI_CODE_O;NHI_CODE_ENHI_CODE_E.Type=TTextFieldNHI_CODE_E.X=96NHI_CODE_E.Y=145NHI_CODE_E.Width=111NHI_CODE_E.Height=20NHI_CODE_E.Text=NHI_CODE_O.Type=TTextFieldNHI_CODE_O.X=96NHI_CODE_O.Y=122NHI_CODE_O.Width=111NHI_CODE_O.Height=20NHI_CODE_O.Text=NHI_CODE_I.Type=TTextFieldNHI_CODE_I.X=96NHI_CODE_I.Y=100NHI_CODE_I.Width=111NHI_CODE_I.Height=20NHI_CODE_I.Text=ADDPAY_AMT.Type=TNumberTextFieldADDPAY_AMT.X=96ADDPAY_AMT.Y=77ADDPAY_AMT.Width=111ADDPAY_AMT.Height=20ADDPAY_AMT.Text=0ADDPAY_AMT.Format=#########0.00ADDPAY_RATE.Type=TNumberTextFieldADDPAY_RATE.X=96ADDPAY_RATE.Y=53ADDPAY_RATE.Width=111ADDPAY_RATE.Height=20ADDPAY_RATE.Text=0ADDPAY_RATE.Format=#########0.00INSPAY_TYPE.Type=TComboBoxINSPAY_TYPE.X=96INSPAY_TYPE.Y=27INSPAY_TYPE.Width=111INSPAY_TYPE.Height=23INSPAY_TYPE.Text=INSPAY_TYPE.showID=YINSPAY_TYPE.Editable=YINSPAY_TYPE.StringData=[[id,text],[],[A,医保],[B,增付],[C,自费]]INSPAY_TYPE.ExpandWidth=20INSPAY_TYPE.TableShowList=texttLabel_28.Type=TLabeltLabel_28.X=9tLabel_28.Y=148tLabel_28.Width=89tLabel_28.Height=15tLabel_28.Text=急诊医保代码tLabel_27.Type=TLabeltLabel_27.X=9tLabel_27.Y=125tLabel_27.Width=86tLabel_27.Height=15tLabel_27.Text=门诊医保代码tLabel_26.Type=TLabeltLabel_26.X=9tLabel_26.Y=103tLabel_26.Width=90tLabel_26.Height=15tLabel_26.Text=住院医保代码tLabel_25.Type=TLabeltLabel_25.X=9tLabel_25.Y=80tLabel_25.Width=78tLabel_25.Height=15tLabel_25.Text=增 付 金 额tLabel_24.Type=TLabeltLabel_24.X=9tLabel_24.Y=56tLabel_24.Width=84tLabel_24.Height=15tLabel_24.Text=增 付 比 率tLabel_23.Type=TLabeltLabel_23.X=9tLabel_23.Y=31tLabel_23.Width=79tLabel_23.Height=15tLabel_23.Text=给 付 类 别tPanel_5.Type=TPaneltPanel_5.X=205tPanel_5.Y=251tPanel_5.Width=311tPanel_5.Height=175tPanel_5.Border=组|属性tPanel_5.Item=OPD_FIT_FLG;DR_ORDER_FLG;EMG_FIT_FLG;IPD_FIT_FLG;HRM_FIT_FLG;tLabel_17;tPanel_7;tPanel_8;LCS_CLASS_CODE;tLabel_29;ORD_SUPERVISION;SYNC_NIS_FLG;IN_OPFLGIN_OPFLG.Type=TCheckBoxIN_OPFLG.X=188IN_OPFLG.Y=15IN_OPFLG.Width=114IN_OPFLG.Height=23IN_OPFLG.Text=介入医嘱注记SYNC_NIS_FLG.Type=TCheckBoxSYNC_NIS_FLG.X=98SYNC_NIS_FLG.Y=13SYNC_NIS_FLG.Width=81SYNC_NIS_FLG.Height=23SYNC_NIS_FLG.Text=同步NISORD_SUPERVISION.Type=医嘱监管类型ORD_SUPERVISION.X=191ORD_SUPERVISION.Y=50ORD_SUPERVISION.Width=110ORD_SUPERVISION.Height=23ORD_SUPERVISION.Text=ORD_SUPERVISION.HorizontalAlignment=2ORD_SUPERVISION.PopupMenuHeader=代码,100;名称,100ORD_SUPERVISION.PopupMenuWidth=300ORD_SUPERVISION.PopupMenuHeight=300ORD_SUPERVISION.PopupMenuFilter=ID,1;NAME,1;PY1,1ORD_SUPERVISION.FormatType=comboORD_SUPERVISION.ShowDownButton=YORD_SUPERVISION.Tip=医嘱监管类型ORD_SUPERVISION.ShowColumnList=NAMEORD_SUPERVISION.HisOneNullRow=YtLabel_29.Type=TLabeltLabel_29.X=98tLabel_29.Y=54tLabel_29.Width=96tLabel_29.Height=15tLabel_29.Text=医嘱监管类型:LCS_CLASS_CODE.Type=证照类别下拉列表LCS_CLASS_CODE.X=190LCS_CLASS_CODE.Y=79LCS_CLASS_CODE.Width=112LCS_CLASS_CODE.Height=23LCS_CLASS_CODE.Text=TButtonLCS_CLASS_CODE.showID=YLCS_CLASS_CODE.showName=YLCS_CLASS_CODE.showText=NLCS_CLASS_CODE.showValue=NLCS_CLASS_CODE.showPy1=YLCS_CLASS_CODE.showPy2=YLCS_CLASS_CODE.Editable=YLCS_CLASS_CODE.Tip=证照类别下拉列表LCS_CLASS_CODE.TableShowList=nameLCS_CLASS_CODE.ModuleParmString=GROUP_ID:SYS_LICENSELCS_CLASS_CODE.ModuleParmTag=LCS_CLASS_CODE.ExpandWidth=30tPanel_8.Type=TPaneltPanel_8.X=10tPanel_8.Y=139tPanel_8.Width=295tPanel_8.Height=29tPanel_8.Border=组tPanel_8.Item=EXEC_ORDER_FLG;tLabel_22;EXEC_DEPT_CODEEXEC_DEPT_CODE.Type=成本中心下拉区域EXEC_DEPT_CODE.X=166EXEC_DEPT_CODE.Y=4EXEC_DEPT_CODE.Width=126EXEC_DEPT_CODE.Height=23EXEC_DEPT_CODE.Text=EXEC_DEPT_CODE.HorizontalAlignment=2EXEC_DEPT_CODE.PopupMenuHeader=代码,100;名称,100EXEC_DEPT_CODE.PopupMenuWidth=300EXEC_DEPT_CODE.PopupMenuHeight=300EXEC_DEPT_CODE.FormatType=comboEXEC_DEPT_CODE.ShowDownButton=YEXEC_DEPT_CODE.Tip=成本中心EXEC_DEPT_CODE.ShowColumnList=NAMEEXEC_DEPT_CODE.HisOneNullRow=YtLabel_22.Type=TLabeltLabel_22.X=104tLabel_22.Y=7tLabel_22.Width=72tLabel_22.Height=15tLabel_22.Text=执行部门EXEC_ORDER_FLG.Type=TCheckBoxEXEC_ORDER_FLG.X=1EXEC_ORDER_FLG.Y=7EXEC_ORDER_FLG.Width=98EXEC_ORDER_FLG.Height=14EXEC_ORDER_FLG.Text=开单即执行EXEC_ORDER_FLG.Action=tPanel_7.Type=TPaneltPanel_7.X=10tPanel_7.Y=107tPanel_7.Width=295tPanel_7.Height=30tPanel_7.Border=组tPanel_7.Item=TRANS_OUT_FLG;tLabel_21;TRANS_HOSP_CODETRANS_HOSP_CODE.Type=转诊医院下拉列表TRANS_HOSP_CODE.X=163TRANS_HOSP_CODE.Y=2TRANS_HOSP_CODE.Width=129TRANS_HOSP_CODE.Height=23TRANS_HOSP_CODE.Text=TButtonTRANS_HOSP_CODE.showID=YTRANS_HOSP_CODE.showName=YTRANS_HOSP_CODE.showText=NTRANS_HOSP_CODE.showValue=NTRANS_HOSP_CODE.showPy1=YTRANS_HOSP_CODE.showPy2=YTRANS_HOSP_CODE.Editable=YTRANS_HOSP_CODE.Tip=转诊医院TRANS_HOSP_CODE.TableShowList=nameTRANS_HOSP_CODE.ModuleParmString=GROUP_ID:SYS_TRN_HOSPTRANS_HOSP_CODE.ModuleParmTag=TRANS_HOSP_CODE.ExpandWidth=30TRANS_HOSP_CODE.Enabled=NtLabel_21.Type=TLabeltLabel_21.X=87tLabel_21.Y=6tLabel_21.Width=72tLabel_21.Height=15tLabel_21.Text=预设转院所TRANS_OUT_FLG.Type=TCheckBoxTRANS_OUT_FLG.X=2TRANS_OUT_FLG.Y=5TRANS_OUT_FLG.Width=53TRANS_OUT_FLG.Height=14TRANS_OUT_FLG.Text=转出TRANS_OUT_FLG.Action=onOutHosptLabel_17.Type=TLabeltLabel_17.X=99tLabel_17.Y=83tLabel_17.Width=96tLabel_17.Height=15tLabel_17.Text=证 照 类 别:HRM_FIT_FLG.Type=TCheckBoxHRM_FIT_FLG.X=16HRM_FIT_FLG.Y=82HRM_FIT_FLG.Width=81HRM_FIT_FLG.Height=23HRM_FIT_FLG.Text=健检适用IPD_FIT_FLG.Type=TCheckBoxIPD_FIT_FLG.X=17IPD_FIT_FLG.Y=60IPD_FIT_FLG.Width=81IPD_FIT_FLG.Height=23IPD_FIT_FLG.Text=住院适用EMG_FIT_FLG.Type=TCheckBoxEMG_FIT_FLG.X=16EMG_FIT_FLG.Y=34EMG_FIT_FLG.Width=81EMG_FIT_FLG.Height=23EMG_FIT_FLG.Text=急诊适用DR_ORDER_FLG.Type=TCheckBoxDR_ORDER_FLG.X=98DR_ORDER_FLG.Y=31DR_ORDER_FLG.Width=96DR_ORDER_FLG.Height=23DR_ORDER_FLG.Text=经医生处方OPD_FIT_FLG.Type=TCheckBoxOPD_FIT_FLG.X=16OPD_FIT_FLG.Y=15OPD_FIT_FLG.Width=81OPD_FIT_FLG.Height=23OPD_FIT_FLG.Text=门诊适用OPD_FIT_FLG.Visible=YtPanel_4.Type=TPaneltPanel_4.X=-2tPanel_4.Y=252tPanel_4.Width=208tPanel_4.Height=172tPanel_4.Border=组|费用tPanel_4.Text=tPanel_4.Name=费用tPanel_4.Item=tLabel_14;tLabel_15;tLabel_16;tLabel_18;tLabel_19;LET_KEYIN_FLG;tLabel_20;OWN_PRICE;OWN_PRICE2;OWN_PRICE3;HYGIENE_TRADE_CODE;CHARGE_HOSP_CODE;ORDER_CAT1_CODEtPanel_4.AutoWidth=NtPanel_4.AutoSize=3tPanel_4.AutoHeight=NtPanel_4.MenuConfig=ORDER_CAT1_CODE.Type=医嘱分类ORDER_CAT1_CODE.X=97ORDER_CAT1_CODE.Y=36ORDER_CAT1_CODE.Width=103ORDER_CAT1_CODE.Height=23ORDER_CAT1_CODE.Text=ORDER_CAT1_CODE.HorizontalAlignment=2ORDER_CAT1_CODE.PopupMenuHeader=ID,100;NAME,100ORDER_CAT1_CODE.PopupMenuWidth=300ORDER_CAT1_CODE.PopupMenuHeight=300ORDER_CAT1_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1ORDER_CAT1_CODE.FormatType=comboORDER_CAT1_CODE.ShowDownButton=YORDER_CAT1_CODE.Tip=医嘱分类ORDER_CAT1_CODE.ShowColumnList=NAMEORDER_CAT1_CODE.HisOneNullRow=YCHARGE_HOSP_CODE.Type=院内费用CHARGE_HOSP_CODE.X=97CHARGE_HOSP_CODE.Y=11CHARGE_HOSP_CODE.Width=103CHARGE_HOSP_CODE.Height=23CHARGE_HOSP_CODE.Text=CHARGE_HOSP_CODE.HorizontalAlignment=2CHARGE_HOSP_CODE.PopupMenuHeader=ID,100;NAME,100CHARGE_HOSP_CODE.PopupMenuWidth=300CHARGE_HOSP_CODE.PopupMenuHeight=300CHARGE_HOSP_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1CHARGE_HOSP_CODE.FormatType=comboCHARGE_HOSP_CODE.ShowDownButton=YCHARGE_HOSP_CODE.Tip=院内费用CHARGE_HOSP_CODE.ShowColumnList=NAMECHARGE_HOSP_CODE.HisOneNullRow=YHYGIENE_TRADE_CODE.Type=TTextFieldHYGIENE_TRADE_CODE.X=98HYGIENE_TRADE_CODE.Y=126HYGIENE_TRADE_CODE.Width=103HYGIENE_TRADE_CODE.Height=20HYGIENE_TRADE_CODE.Text=OWN_PRICE3.Type=TNumberTextFieldOWN_PRICE3.X=98OWN_PRICE3.Y=104OWN_PRICE3.Width=103OWN_PRICE3.Height=20OWN_PRICE3.Text=0OWN_PRICE3.Format=#########0.0000OWN_PRICE3.Action=onGovPriceOWN_PRICE2.Type=TNumberTextFieldOWN_PRICE2.X=98OWN_PRICE2.Y=82OWN_PRICE2.Width=103OWN_PRICE2.Height=20OWN_PRICE2.Text=0OWN_PRICE2.Format=#########0.0000OWN_PRICE2.Action=onNhiPriceOWN_PRICE.Type=TNumberTextFieldOWN_PRICE.X=98OWN_PRICE.Y=60OWN_PRICE.Width=103OWN_PRICE.Height=20OWN_PRICE.Text=0OWN_PRICE.Format=#########0.0000OWN_PRICE.Action=tLabel_20.Type=TLabeltLabel_20.X=12tLabel_20.Y=85tLabel_20.Width=72tLabel_20.Height=15tLabel_20.Text=贵 宾 价LET_KEYIN_FLG.Type=TCheckBoxLET_KEYIN_FLG.X=11LET_KEYIN_FLG.Y=146LET_KEYIN_FLG.Width=151LET_KEYIN_FLG.Height=23LET_KEYIN_FLG.Text=允许手动记价注记LET_KEYIN_FLG.Selected=YtLabel_19.Type=TLabeltLabel_19.X=11tLabel_19.Y=129tLabel_19.Width=90tLabel_19.Height=15tLabel_19.Text=卫署批准字号tLabel_18.Type=TLabeltLabel_18.X=13tLabel_18.Y=107tLabel_18.Width=72tLabel_18.Height=15tLabel_18.Text=国际医疗价tLabel_18.HorizontalAlignment=0tLabel_16.Type=TLabeltLabel_16.X=11tLabel_16.Y=63tLabel_16.Width=72tLabel_16.Height=15tLabel_16.Text=自 费 价tLabel_15.Type=TLabeltLabel_15.X=11tLabel_15.Y=40tLabel_15.Width=57tLabel_15.Height=15tLabel_15.Text=细 分 类tLabel_15.HorizontalAlignment=0tLabel_14.Type=TLabeltLabel_14.X=11tLabel_14.Y=15tLabel_14.Width=72tLabel_14.Height=15tLabel_14.Text=院内代码tPanel_3.Type=TPaneltPanel_3.X=3tPanel_3.Y=3tPanel_3.Width=912tPanel_3.Height=250tPanel_3.Border=组tPanel_3.AutoX=YtPanel_3.AutoY=YtPanel_3.AutoWidth=YtPanel_3.AutoSize=3tPanel_3.Item=ACTIVE_FLG;tLabel_0;START_DATE;tLabel_1;END_DATE;history;tLabel_2;ORDER_CODE;tLabel_3;ORDER_DESC;tLabel_4;tLabel_5;tLabel_6;tLabel_8;tLabel_9;tLabel_10;PY1;NHI_FEE_DESC;TRADE_ENG_DESC;SPECIFICATION;DESCRIPTION;ALIAS_DESC;tLabel_11;ALIAS_PYCODE;tLabel_13;HABITAT_TYPE;tLabel_7;tLabel_12;lab_lab;MR_CODE;UNIT_CODE;IS_REMARK;ACTION_CODE;tLabel_50;REGION_CODE;TLabel;tlabke;SUPPLIES_TYPE;MAN_CODE;tLabel_30;EXEC_PRG;tLabel_32;OTH_TYPEtPanel_3.ControlClassName=com.javahis.ui.inw.DateTimeControlOTH_TYPE.Type=TComboBoxOTH_TYPE.X=778OTH_TYPE.Y=221OTH_TYPE.Width=73OTH_TYPE.Height=23OTH_TYPE.Text=TButtonOTH_TYPE.showID=YOTH_TYPE.Editable=YOTH_TYPE.StringData=[[id,text],[],[1,单腔],[2,双腔],[3,三腔]]tLabel_32.Type=TLabeltLabel_32.X=712tLabel_32.Y=225tLabel_32.Width=62tLabel_32.Height=15tLabel_32.Text=耗材类型EXEC_PRG.Type=TTextFieldEXEC_PRG.X=527EXEC_PRG.Y=36EXEC_PRG.Width=178EXEC_PRG.Height=20EXEC_PRG.Text=tLabel_30.Type=TLabeltLabel_30.X=466tLabel_30.Y=38tLabel_30.Width=60tLabel_30.Height=15tLabel_30.Text=执行程序MAN_CODE.Type=TTextFieldMAN_CODE.X=122MAN_CODE.Y=222MAN_CODE.Width=354MAN_CODE.Height=20MAN_CODE.Text=SUPPLIES_TYPE.Type=TComboBoxSUPPLIES_TYPE.X=560SUPPLIES_TYPE.Y=221SUPPLIES_TYPE.Width=145SUPPLIES_TYPE.Height=23SUPPLIES_TYPE.Text=TButtonSUPPLIES_TYPE.showID=YSUPPLIES_TYPE.Editable=YSUPPLIES_TYPE.StringData=[[id,text],[],[1,医用高值耗材],[2,医用低值耗材],[3,非医用低值耗材]]tlabke.Type=TLabeltlabke.X=487tlabke.Y=225tlabke.Width=65tlabke.Height=15tlabke.Text=耗材分类 TLabel.Type=TLabelTLabel.X=31TLabel.Y=225TLabel.Width=72TLabel.Height=15TLabel.Text=生产厂商REGION_CODE.Type=区域下拉列表REGION_CODE.X=556REGION_CODE.Y=62REGION_CODE.Width=149REGION_CODE.Height=23REGION_CODE.Text=TButtonREGION_CODE.showID=YREGION_CODE.showName=YREGION_CODE.showText=NREGION_CODE.showValue=NREGION_CODE.showPy1=NREGION_CODE.showPy2=NREGION_CODE.Editable=YREGION_CODE.Tip=区域REGION_CODE.TableShowList=nameREGION_CODE.ModuleParmString=REGION_CODE.ModuleParmTag=REGION_CODE.ExpandWidth=80tLabel_50.Type=TLabeltLabel_50.X=491tLabel_50.Y=66tLabel_50.Width=54tLabel_50.Height=15tLabel_50.Text=区  域ACTION_CODE.Type=TTextFieldACTION_CODE.X=305ACTION_CODE.Y=37ACTION_CODE.Width=149ACTION_CODE.Height=20ACTION_CODE.Text=IS_REMARK.Type=TCheckBoxIS_REMARK.X=487IS_REMARK.Y=116IS_REMARK.Width=100IS_REMARK.Height=23IS_REMARK.Text=是否为备注UNIT_CODE.Type=计量单位UNIT_CODE.X=559UNIT_CODE.Y=169UNIT_CODE.Width=146UNIT_CODE.Height=23UNIT_CODE.Text=UNIT_CODE.HorizontalAlignment=2UNIT_CODE.PopupMenuHeader=代码,100;名称,100UNIT_CODE.PopupMenuWidth=300UNIT_CODE.PopupMenuHeight=300UNIT_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1UNIT_CODE.FormatType=comboUNIT_CODE.ShowDownButton=YUNIT_CODE.Tip=计量单位UNIT_CODE.ShowColumnList=NAMEUNIT_CODE.HisOneNullRow=YMR_CODE.Type=结构化病例申请单下拉区域MR_CODE.X=559MR_CODE.Y=196MR_CODE.Width=146MR_CODE.Height=23MR_CODE.Text=MR_CODE.HorizontalAlignment=2MR_CODE.PopupMenuHeader=代码,100;名称,100MR_CODE.PopupMenuWidth=300MR_CODE.PopupMenuHeight=300MR_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1MR_CODE.FormatType=comboMR_CODE.ShowDownButton=YMR_CODE.Tip=结构化病例申请单MR_CODE.ShowColumnList=NAMEMR_CODE.HisOneNullRow=Ylab_lab.Type=TLabellab_lab.X=491lab_lab.Y=200lab_lab.Width=47lab_lab.Height=15lab_lab.Text=模  版lab_lab.HorizontalAlignment=2tLabel_12.Type=TLabeltLabel_12.X=246tLabel_12.Y=39tLabel_12.Width=62tLabel_12.Height=15tLabel_12.Text=外挂动作tLabel_7.Type=TLabeltLabel_7.X=491tLabel_7.Y=97tLabel_7.Width=62tLabel_7.Height=15tLabel_7.Text=产  地tLabel_7.HorizontalAlignment=2tLabel_7.VerticalAlignment=0HABITAT_TYPE.Type=TComboBoxHABITAT_TYPE.X=555HABITAT_TYPE.Y=93HABITAT_TYPE.Width=151HABITAT_TYPE.Height=23HABITAT_TYPE.Text=TButtonHABITAT_TYPE.showID=YHABITAT_TYPE.Editable=YHABITAT_TYPE.StringData=[[id,text],[],[1,国内],[2,进口],[3,其他]]HABITAT_TYPE.ExpandWidth=40tLabel_13.Type=TLabeltLabel_13.X=490tLabel_13.Y=175tLabel_13.Width=48tLabel_13.Height=15tLabel_13.Text=单  位ALIAS_PYCODE.Type=TTextFieldALIAS_PYCODE.X=559ALIAS_PYCODE.Y=144ALIAS_PYCODE.Width=146ALIAS_PYCODE.Height=20ALIAS_PYCODE.Text=ALIAS_PYCODE.Visible=YtLabel_11.Type=TLabeltLabel_11.X=490tLabel_11.Y=149tLabel_11.Width=47tLabel_11.Height=15tLabel_11.Text=拼  音ALIAS_DESC.Type=TTextFieldALIAS_DESC.X=122ALIAS_DESC.Y=151ALIAS_DESC.Width=355ALIAS_DESC.Height=20ALIAS_DESC.Text=ALIAS_DESC.Action=onPY2DESCRIPTION.Type=TTextFieldDESCRIPTION.X=122DESCRIPTION.Y=197DESCRIPTION.Width=355DESCRIPTION.Height=20DESCRIPTION.Text=SPECIFICATION.Type=TTextFieldSPECIFICATION.X=122SPECIFICATION.Y=174SPECIFICATION.Width=355SPECIFICATION.Height=20SPECIFICATION.Text=TRADE_ENG_DESC.Type=TTextFieldTRADE_ENG_DESC.X=122TRADE_ENG_DESC.Y=129TRADE_ENG_DESC.Width=355TRADE_ENG_DESC.Height=20TRADE_ENG_DESC.Text=NHI_FEE_DESC.Type=TTextFieldNHI_FEE_DESC.X=122NHI_FEE_DESC.Y=106NHI_FEE_DESC.Width=354NHI_FEE_DESC.Height=20NHI_FEE_DESC.Text=PY1.Type=TTextFieldPY1.X=122PY1.Y=83PY1.Width=355PY1.Height=20PY1.Text=tLabel_10.Type=TLabeltLabel_10.X=30tLabel_10.Y=200tLabel_10.Width=69tLabel_10.Height=15tLabel_10.Text=备注tLabel_9.Type=TLabeltLabel_9.X=30tLabel_9.Y=177tLabel_9.Width=69tLabel_9.Height=15tLabel_9.Text=规格说明tLabel_8.Type=TLabeltLabel_8.X=30tLabel_8.Y=154tLabel_8.Width=75tLabel_8.Height=15tLabel_8.Text=别名(简称)tLabel_6.Type=TLabeltLabel_6.X=30tLabel_6.Y=132tLabel_6.Width=69tLabel_6.Height=15tLabel_6.Text=英文名称tLabel_5.Type=TLabeltLabel_5.X=30tLabel_5.Y=109tLabel_5.Width=69tLabel_5.Height=15tLabel_5.Text=医保名称tLabel_4.Type=TLabeltLabel_4.X=30tLabel_4.Y=86tLabel_4.Width=69tLabel_4.Height=15tLabel_4.Text=名称拼音ORDER_DESC.Type=TTextFieldORDER_DESC.X=122ORDER_DESC.Y=61ORDER_DESC.Width=355ORDER_DESC.Height=20ORDER_DESC.Text=ORDER_DESC.Action=onPY1tLabel_3.Type=TLabeltLabel_3.X=30tLabel_3.Y=64tLabel_3.Width=69tLabel_3.Height=15tLabel_3.Text=项目名称ORDER_CODE.Type=TTextFieldORDER_CODE.X=122ORDER_CODE.Y=37ORDER_CODE.Width=109ORDER_CODE.Height=20ORDER_CODE.Text=ORDER_CODE.Enabled=YORDER_CODE.Action=tLabel_2.Type=TLabeltLabel_2.X=30tLabel_2.Y=40tLabel_2.Width=69tLabel_2.Height=15tLabel_2.Text=项目代码history.Type=TButtonhistory.X=584history.Y=8history.Width=100history.Height=23history.Text=历史明细history.Action=onHistoryEND_DATE.Type=TTextFormatEND_DATE.X=384END_DATE.Y=9END_DATE.Width=163END_DATE.Height=20END_DATE.Text=END_DATE.showDownButton=YEND_DATE.FormatType=dateEND_DATE.Format=yyyy/MM/dd HH:mm:ssEND_DATE.Enabled=NtLabel_1.Type=TLabeltLabel_1.X=320tLabel_1.Y=12tLabel_1.Width=72tLabel_1.Height=15tLabel_1.Text=失效日期：START_DATE.Type=TTextFormatSTART_DATE.X=150START_DATE.Y=9START_DATE.Width=163START_DATE.Height=20START_DATE.Text=START_DATE.showDownButton=YSTART_DATE.Format=yyyy/MM/dd HH:mm:ssSTART_DATE.FormatType=dateSTART_DATE.Enabled=NtLabel_0.Type=TLabeltLabel_0.X=87tLabel_0.Y=12tLabel_0.Width=72tLabel_0.Height=15tLabel_0.Text=生效日期：ACTIVE_FLG.Type=TCheckBoxACTIVE_FLG.X=25ACTIVE_FLG.Y=8ACTIVE_FLG.Width=60ACTIVE_FLG.Height=23ACTIVE_FLG.Text=启用ACTIVE_FLG.Action=onExecostPanel.Type=TPanelcostPanel.X=31costPanel.Y=22costPanel.Width=81costPanel.Height=81costPanel.Name=药品费用信息upTable.Type=TTableupTable.X=48upTable.Y=25upTable.Width=923upTable.Height=104upTable.SpacingRow=1upTable.RowHeight=20upTable.AutoX=YupTable.AutoSize=3upTable.AutoWidth=YupTable.AutoY=NupTable.AutoModifyDataStore=YupTable.Header=编码,100;名称,200;规格,170;自费价,100,double,########0.0000;单位,50,UNIT_CODEupTable.SQL=upTable.ParmMap=ORDER_CODE;ORDER_DESC;SPECIFICATION;OWN_PRICE;UNIT_CODE;MAN_CODE;SUPPLIES_TYPEupTable.Item=UNIT_CODEupTable.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,right;4,leftupTable.LockRows=upTable.LockColumns=0,1,2,3upTable.DoubleClickedAction=onTableDoubleClecktMovePane_0.Type=TMovePanetMovePane_0.X=256tMovePane_0.Y=3tMovePane_0.Width=17tMovePane_0.Height=740tMovePane_0.Text=tMovePane_0.MoveType=1tMovePane_0.Border=凸tMovePane_0.DoubleClickType=1tMovePane_0.AutoY=YtMovePane_0.AutoHeight=YtMovePane_0.AutoSize=3tMovePane_0.EntityData=leftPanel,4;rightPanel,3leftPanel.Type=TPanelleftPanel.X=3leftPanel.Y=3leftPanel.Width=267leftPanel.Height=742leftPanel.AutoX=YleftPanel.AutoY=YleftPanel.AutoHeight=YleftPanel.AutoSize=3leftPanel.Border=凸leftPanel.Item=tPanel_1;TREETREE.Type=TTreeTREE.X=3TREE.Y=56TREE.Width=189TREE.Height=682TREE.SpacingRow=1TREE.RowHeight=20TREE.AutoWidth=YTREE.AutoX=YTREE.AutoSize=3TREE.AutoHeight=YtPanel_1.Type=TPaneltPanel_1.X=3tPanel_1.Y=3tPanel_1.Width=261tPanel_1.Height=49tPanel_1.AutoX=YtPanel_1.AutoY=YtPanel_1.AutoSize=3tPanel_1.Border=组tPanel_1.Item=ALL;ACTIVE_Y;ACTIVE_NtPanel_1.AutoWidth=YACTIVE_N.Type=TRadioButtonACTIVE_N.X=184ACTIVE_N.Y=15ACTIVE_N.Width=57ACTIVE_N.Height=23ACTIVE_N.Text=停用ACTIVE_N.Group=1ACTIVE_N.Action=onTreeClickedACTIVE_Y.Type=TRadioButtonACTIVE_Y.X=94ACTIVE_Y.Y=15ACTIVE_Y.Width=56ACTIVE_Y.Height=23ACTIVE_Y.Text=启用ACTIVE_Y.Group=1ACTIVE_Y.Action=onTreeClickedACTIVE_Y.Selected=YALL.Type=TRadioButtonALL.X=11ALL.Y=15ALL.Width=56ALL.Height=23ALL.Text=全部ALL.Group=1ALL.Selected=NALL.Action=onTreeClicked