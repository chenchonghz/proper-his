## TBuilder Config File ## Title:## Company:JavaHis## Author:zhangs 2015.11.04## version 1.0#<Type=TFrame>UI.Title=病区手术交接单UI.MenuConfig=%ROOT%\config\inw\INWTransferSheetWoMenu.xUI.Width=1024UI.Height=748UI.toolbar=YUI.controlclassname=com.javahis.ui.inw.INWTransferSHeetWoControlUI.item=tPanel_0;tPanel_1;tPanel_3;tPanel_4;tPanel_2UI.layout=nullUI.TopMenu=YUI.TopToolBar=YtPanel_2.Type=TPaneltPanel_2.X=6tPanel_2.Y=534tPanel_2.Width=1014tPanel_2.Height=91tPanel_2.Border=组|病历交接tPanel_2.AutoWidth=YtPanel_2.Item=OPE_INFORM_FLG;ANA_SINFORM_FLG;BLOOD_INFORM_FLGBLOOD_INFORM_FLG.Type=TCheckBoxBLOOD_INFORM_FLG.X=301BLOOD_INFORM_FLG.Y=38BLOOD_INFORM_FLG.Width=99BLOOD_INFORM_FLG.Height=23BLOOD_INFORM_FLG.Text=输血同意书ANA_SINFORM_FLG.Type=TCheckBoxANA_SINFORM_FLG.X=166ANA_SINFORM_FLG.Y=38ANA_SINFORM_FLG.Width=105ANA_SINFORM_FLG.Height=23ANA_SINFORM_FLG.Text=麻醉同意书OPE_INFORM_FLG.Type=TCheckBoxOPE_INFORM_FLG.X=30OPE_INFORM_FLG.Y=38OPE_INFORM_FLG.Width=106OPE_INFORM_FLG.Height=23OPE_INFORM_FLG.Text=手术同意书tPanel_4.Type=TPaneltPanel_4.X=4tPanel_4.Y=441tPanel_4.Width=1015tPanel_4.Height=95tPanel_4.Border=组|术前准备tPanel_4.AutoWidth=YtPanel_4.Item=tLabel_20;WEIGHT;tLabel_21;tLabel_22;tLabel_23;tLabel_24;RHPOSITIVE_FLG_P;RHPOSITIVE_FLG_R;tLabel_25;tLabel_26;OPE_PRE_MARK;SKIN_BREAK_FLG;BLOOD_TYPE;CROSS_MATCH;SKIN_BREAK_POSITIONSKIN_BREAK_POSITION.Type=TTextFieldSKIN_BREAK_POSITION.X=430SKIN_BREAK_POSITION.Y=20SKIN_BREAK_POSITION.Width=77SKIN_BREAK_POSITION.Height=20SKIN_BREAK_POSITION.Text=CROSS_MATCH.Type=TComboBoxCROSS_MATCH.X=88CROSS_MATCH.Y=55CROSS_MATCH.Width=81CROSS_MATCH.Height=23CROSS_MATCH.Text=TButtonCROSS_MATCH.showID=YCROSS_MATCH.Editable=YCROSS_MATCH.StringData=[[id,text],[1,相容],[2,相斥]]CROSS_MATCH.TableShowList=textBLOOD_TYPE.Type=血型下拉列表BLOOD_TYPE.X=562BLOOD_TYPE.Y=18BLOOD_TYPE.Width=81BLOOD_TYPE.Height=23BLOOD_TYPE.Text=TButtonBLOOD_TYPE.showID=YBLOOD_TYPE.showName=YBLOOD_TYPE.showText=NBLOOD_TYPE.showValue=NBLOOD_TYPE.showPy1=YBLOOD_TYPE.showPy2=YBLOOD_TYPE.Editable=YBLOOD_TYPE.Tip=血型下拉列表BLOOD_TYPE.TableShowList=nameBLOOD_TYPE.ModuleParmString=GROUP_ID:SYS_BLOODBLOOD_TYPE.ModuleParmTag=SKIN_BREAK_FLG.Type=TComboBoxSKIN_BREAK_FLG.X=272SKIN_BREAK_FLG.Y=18SKIN_BREAK_FLG.Width=81SKIN_BREAK_FLG.Height=23SKIN_BREAK_FLG.Text=TButtonSKIN_BREAK_FLG.showID=YSKIN_BREAK_FLG.Editable=YSKIN_BREAK_FLG.StringData=[[id,text],[,],[Y,是],[N,否]]SKIN_BREAK_FLG.TableShowList=textOPE_PRE_MARK.Type=TTextFieldOPE_PRE_MARK.X=274OPE_PRE_MARK.Y=56OPE_PRE_MARK.Width=513OPE_PRE_MARK.Height=20OPE_PRE_MARK.Text=tLabel_26.Type=TLabeltLabel_26.X=202tLabel_26.Y=59tLabel_26.Width=60tLabel_26.Height=15tLabel_26.Text=备    注tLabel_25.Type=TLabeltLabel_25.X=14tLabel_25.Y=59tLabel_25.Width=67tLabel_25.Height=15tLabel_25.Text=交叉配血RHPOSITIVE_FLG_R.Type=TRadioButtonRHPOSITIVE_FLG_R.X=751RHPOSITIVE_FLG_R.Y=18RHPOSITIVE_FLG_R.Width=81RHPOSITIVE_FLG_R.Height=23RHPOSITIVE_FLG_R.Text=Rh(-)RHPOSITIVE_FLG_R.Group=RHPOSITIVE_FLG_P.Type=TRadioButtonRHPOSITIVE_FLG_P.X=659RHPOSITIVE_FLG_P.Y=18RHPOSITIVE_FLG_P.Width=81RHPOSITIVE_FLG_P.Height=23RHPOSITIVE_FLG_P.Text=Rh(+)RHPOSITIVE_FLG_P.Group=tLabel_24.Type=TLabeltLabel_24.X=519tLabel_24.Y=22tLabel_24.Width=43tLabel_24.Height=15tLabel_24.Text=血型tLabel_23.Type=TLabeltLabel_23.X=365tLabel_23.Y=22tLabel_23.Width=64tLabel_23.Height=15tLabel_23.Text=破损部位tLabel_22.Type=TLabeltLabel_22.X=203tLabel_22.Y=22tLabel_22.Width=66tLabel_22.Height=15tLabel_22.Text=皮肤破损tLabel_21.Type=TLabeltLabel_21.X=171tLabel_21.Y=22tLabel_21.Width=21tLabel_21.Height=15tLabel_21.Text=KgWEIGHT.Type=TNumberTextFieldWEIGHT.X=87WEIGHT.Y=19WEIGHT.Width=77WEIGHT.Height=20WEIGHT.Text=WEIGHT.Format=#########0.00tLabel_20.Type=TLabeltLabel_20.X=15tLabel_20.Y=22tLabel_20.Width=72tLabel_20.Height=15tLabel_20.Text=术晨体重tPanel_3.Type=TPaneltPanel_3.X=3tPanel_3.Y=244tPanel_3.Width=1016tPanel_3.Height=187tPanel_3.Border=组|患者情况tPanel_3.AutoWidth=YtPanel_3.Item=tLabel_8;TEMPERATURE;tLabel_9;tLabel_10;PULSE;tLabel_11;tLabel_12;RESPIRE;tLabel_13;tLabel_14;tLabel_15;tLabel_16;tLabel_17;GENERAL_MARK;tLabel_18;tLabel_19;ACTIVE_TOOTH_FLG;FALSE_TOOTH_FLG;ALLERGIC_FLG;BP;INFECT_FLG;tLabel_27;INFECT_SCR_RESULT_CONT;tLabel_28;ALLERGIC_MARK;tLabel_31;DAY_OPE_FLGDAY_OPE_FLG.Type=TLabelDAY_OPE_FLG.X=851DAY_OPE_FLG.Y=28DAY_OPE_FLG.Width=72DAY_OPE_FLG.Height=15DAY_OPE_FLG.Text=日间手术DAY_OPE_FLG.Enabled=YDAY_OPE_FLG.Visible=NtLabel_31.Type=TLabeltLabel_31.X=198tLabel_31.Y=117tLabel_31.Width=84tLabel_31.Height=15tLabel_31.Text=过 敏 备 注ALLERGIC_MARK.Type=TTextFieldALLERGIC_MARK.X=287ALLERGIC_MARK.Y=113ALLERGIC_MARK.Width=420ALLERGIC_MARK.Height=22ALLERGIC_MARK.Text=tLabel_28.Type=TLabeltLabel_28.X=525tLabel_28.Y=27tLabel_28.Width=22tLabel_28.Height=15tLabel_28.Text=BPINFECT_SCR_RESULT_CONT.Type=TTextFieldINFECT_SCR_RESULT_CONT.X=287INFECT_SCR_RESULT_CONT.Y=154INFECT_SCR_RESULT_CONT.Width=419INFECT_SCR_RESULT_CONT.Height=20INFECT_SCR_RESULT_CONT.Text=tLabel_27.Type=TLabeltLabel_27.X=197tLabel_27.Y=155tLabel_27.Width=83tLabel_27.Height=15tLabel_27.Text=传 筛 结 果INFECT_FLG.Type=TTextFieldINFECT_FLG.X=97INFECT_FLG.Y=155INFECT_FLG.Width=79INFECT_FLG.Height=20INFECT_FLG.Text=BP.Type=TTextFieldBP.X=555BP.Y=25BP.Width=77BP.Height=20BP.Text=ALLERGIC_FLG.Type=TComboBoxALLERGIC_FLG.X=97ALLERGIC_FLG.Y=110ALLERGIC_FLG.Width=81ALLERGIC_FLG.Height=23ALLERGIC_FLG.Text=TButtonALLERGIC_FLG.showID=YALLERGIC_FLG.Editable=YALLERGIC_FLG.StringData=[[id,text],[,],[Y,是],[N,否]]ALLERGIC_FLG.TableShowList=textFALSE_TOOTH_FLG.Type=TComboBoxFALSE_TOOTH_FLG.X=254FALSE_TOOTH_FLG.Y=69FALSE_TOOTH_FLG.Width=81FALSE_TOOTH_FLG.Height=23FALSE_TOOTH_FLG.Text=TButtonFALSE_TOOTH_FLG.showID=YFALSE_TOOTH_FLG.Editable=YFALSE_TOOTH_FLG.StringData=[[id,text],[,],[Y,是],[N,否]]FALSE_TOOTH_FLG.TableShowList=textACTIVE_TOOTH_FLG.Type=TComboBoxACTIVE_TOOTH_FLG.X=97ACTIVE_TOOTH_FLG.Y=69ACTIVE_TOOTH_FLG.Width=81ACTIVE_TOOTH_FLG.Height=23ACTIVE_TOOTH_FLG.Text=TButtonACTIVE_TOOTH_FLG.showID=YACTIVE_TOOTH_FLG.Editable=YACTIVE_TOOTH_FLG.StringData=[[id,text],[,],[Y,是],[N,否]]ACTIVE_TOOTH_FLG.ShowValue=NACTIVE_TOOTH_FLG.TableShowList=texttLabel_19.Type=TLabeltLabel_19.X=22tLabel_19.Y=156tLabel_19.Width=62tLabel_19.Height=15tLabel_19.Text=传染病tLabel_18.Type=TLabeltLabel_18.X=25tLabel_18.Y=114tLabel_18.Width=61tLabel_18.Height=15tLabel_18.Text=过    敏GENERAL_MARK.Type=TTextFieldGENERAL_MARK.X=442GENERAL_MARK.Y=70GENERAL_MARK.Width=419GENERAL_MARK.Height=20GENERAL_MARK.Text=tLabel_17.Type=TLabeltLabel_17.X=345tLabel_17.Y=73tLabel_17.Width=91tLabel_17.Height=15tLabel_17.Text=一般情况备注tLabel_16.Type=TLabeltLabel_16.X=199tLabel_16.Y=73tLabel_16.Width=43tLabel_16.Height=15tLabel_16.Text=义  齿tLabel_15.Type=TLabeltLabel_15.X=21tLabel_15.Y=73tLabel_15.Width=72tLabel_15.Height=15tLabel_15.Text=活动牙齿tLabel_14.Type=TLabeltLabel_14.X=641tLabel_14.Y=28tLabel_14.Width=44tLabel_14.Height=15tLabel_14.Text=mmHgtLabel_13.Type=TLabeltLabel_13.X=470tLabel_13.Y=28tLabel_13.Width=41tLabel_13.Height=15tLabel_13.Text=次/分RESPIRE.Type=TNumberTextFieldRESPIRE.X=380RESPIRE.Y=25RESPIRE.Width=77RESPIRE.Height=20RESPIRE.Text=RESPIRE.Format=#########0tLabel_12.Type=TLabeltLabel_12.X=359tLabel_12.Y=28tLabel_12.Width=16tLabel_12.Height=15tLabel_12.Text=RtLabel_11.Type=TLabeltLabel_11.X=294tLabel_11.Y=28tLabel_11.Width=47tLabel_11.Height=15tLabel_11.Text=次/分PULSE.Type=TNumberTextFieldPULSE.X=206PULSE.Y=25PULSE.Width=77PULSE.Height=20PULSE.Text=PULSE.Format=#########0tLabel_10.Type=TLabeltLabel_10.X=184tLabel_10.Y=28tLabel_10.Width=21tLabel_10.Height=15tLabel_10.Text=PtLabel_9.Type=TLabeltLabel_9.X=142tLabel_9.Y=28tLabel_9.Width=22tLabel_9.Height=15tLabel_9.Text=℃TEMPERATURE.Type=TNumberTextFieldTEMPERATURE.X=50TEMPERATURE.Y=25TEMPERATURE.Width=77TEMPERATURE.Height=20TEMPERATURE.Text=TEMPERATURE.Format=#########0.00tLabel_8.Type=TLabeltLabel_8.X=19tLabel_8.Y=28tLabel_8.Width=22tLabel_8.Height=15tLabel_8.Text=TtPanel_1.Type=TPaneltPanel_1.X=2tPanel_1.Y=138tPanel_1.Width=1017tPanel_1.Height=94tPanel_1.Border=组|交接查核表tPanel_1.AutoWidth=YtPanel_1.Item=SKIN_PREPARATION_FLG;CROSSMATCH_FLG;SKIN_TEST_FLG;BOWEL_PREPARATION_FLG;PREPARE_EDUCATION_FLG;DENTAL_CARE_FLG;NASAL_CARE_FLGNASAL_CARE_FLG.Type=TCheckBoxNASAL_CARE_FLG.X=252NASAL_CARE_FLG.Y=55NASAL_CARE_FLG.Width=81NASAL_CARE_FLG.Height=23NASAL_CARE_FLG.Text=鼻腔清洁DENTAL_CARE_FLG.Type=TCheckBoxDENTAL_CARE_FLG.X=137DENTAL_CARE_FLG.Y=55DENTAL_CARE_FLG.Width=81DENTAL_CARE_FLG.Height=23DENTAL_CARE_FLG.Text=口腔清洁PREPARE_EDUCATION_FLG.Type=TCheckBoxPREPARE_EDUCATION_FLG.X=22PREPARE_EDUCATION_FLG.Y=55PREPARE_EDUCATION_FLG.Width=81PREPARE_EDUCATION_FLG.Height=23PREPARE_EDUCATION_FLG.Text=术前宣教BOWEL_PREPARATION_FLG.Type=TCheckBoxBOWEL_PREPARATION_FLG.X=367BOWEL_PREPARATION_FLG.Y=24BOWEL_PREPARATION_FLG.Width=81BOWEL_PREPARATION_FLG.Height=23BOWEL_PREPARATION_FLG.Text=肠道准备SKIN_TEST_FLG.Type=TCheckBoxSKIN_TEST_FLG.X=252SKIN_TEST_FLG.Y=24SKIN_TEST_FLG.Width=81SKIN_TEST_FLG.Height=23SKIN_TEST_FLG.Text=皮    试CROSSMATCH_FLG.Type=TCheckBoxCROSSMATCH_FLG.X=137CROSSMATCH_FLG.Y=24CROSSMATCH_FLG.Width=81CROSSMATCH_FLG.Height=23CROSSMATCH_FLG.Text=交叉配血SKIN_PREPARATION_FLG.Type=TCheckBoxSKIN_PREPARATION_FLG.X=22SKIN_PREPARATION_FLG.Y=24SKIN_PREPARATION_FLG.Width=81SKIN_PREPARATION_FLG.Height=23SKIN_PREPARATION_FLG.Text=皮肤准备tPanel_0.Type=TPaneltPanel_0.X=2tPanel_0.Y=17tPanel_0.Width=1017tPanel_0.Height=106tPanel_0.Border=组|单据信息tPanel_0.AutoWidth=YtPanel_0.Item=tLabel_0;FROM_DEPT;tLabel_1;BED;tLabel_2;PAT_NAME;tLabel_3;SEX;tLabel_4;AGE;tLabel_5;tLabel_6;tLabel_7;TRANSFER_DATE;DIAGNOSIS;OPERATION_CODE;tLabel_29;OPBOOK_SEQOPBOOK_SEQ.Type=TTextFieldOPBOOK_SEQ.X=342OPBOOK_SEQ.Y=66OPBOOK_SEQ.Width=101OPBOOK_SEQ.Height=20OPBOOK_SEQ.Text=tLabel_29.Type=TLabeltLabel_29.X=282tLabel_29.Y=69tLabel_29.Width=72tLabel_29.Height=15tLabel_29.Text=手术单号OPERATION_CODE.Type=TTextFormatOPERATION_CODE.X=522OPERATION_CODE.Y=66OPERATION_CODE.Width=210OPERATION_CODE.Height=20OPERATION_CODE.Text=OPERATION_CODE.FormatType=comboOPERATION_CODE.showDownButton=YOPERATION_CODE.PopupMenuHeader=代码,80;手术名称,125OPERATION_CODE.PopupMenuFilter=ID,1;PY1,1OPERATION_CODE.ShowColumnList=NAMEOPERATION_CODE.ValueColumn=IDOPERATION_CODE.PopupMenuSQL=DIAGNOSIS.Type=TTextFormatDIAGNOSIS.X=51DIAGNOSIS.Y=66DIAGNOSIS.Width=213DIAGNOSIS.Height=20DIAGNOSIS.Text=DIAGNOSIS.FormatType=comboDIAGNOSIS.showDownButton=YDIAGNOSIS.PopupMenuHeader=代码,80;诊断名称,125DIAGNOSIS.PopupMenuFilter=ID,1;PY1,1DIAGNOSIS.ShowColumnList=NAMEDIAGNOSIS.ValueColumn=IDDIAGNOSIS.PopupMenuSQL=TRANSFER_DATE.Type=TTextFormatTRANSFER_DATE.X=807TRANSFER_DATE.Y=65TRANSFER_DATE.Width=176TRANSFER_DATE.Height=20TRANSFER_DATE.Text=TRANSFER_DATE.FormatType=dateTRANSFER_DATE.Format=yyyy/MM/dd HH:mm:ssTRANSFER_DATE.showDownButton=YtLabel_7.Type=TLabeltLabel_7.X=747tLabel_7.Y=68tLabel_7.Width=72tLabel_7.Height=15tLabel_7.Text=交接时间tLabel_6.Type=TLabeltLabel_6.X=462tLabel_6.Y=69tLabel_6.Width=72tLabel_6.Height=15tLabel_6.Text=拟行手术tLabel_5.Type=TLabeltLabel_5.X=20tLabel_5.Y=68tLabel_5.Width=43tLabel_5.Height=15tLabel_5.Text=诊断AGE.Type=TTextFieldAGE.X=710AGE.Y=25AGE.Width=176AGE.Height=20AGE.Text=tLabel_4.Type=TLabeltLabel_4.X=645tLabel_4.Y=28tLabel_4.Width=52tLabel_4.Height=15tLabel_4.Text=年龄SEX.Type=性别下拉列表SEX.X=541SEX.Y=24SEX.Width=81SEX.Height=23SEX.Text=TButtonSEX.showID=YSEX.showName=YSEX.showText=NSEX.showValue=NSEX.showPy1=YSEX.showPy2=YSEX.Editable=YSEX.Tip=性别SEX.TableShowList=nameSEX.ModuleParmString=GROUP_ID:SYS_SEXSEX.ModuleParmTag=tLabel_3.Type=TLabeltLabel_3.X=482tLabel_3.Y=28tLabel_3.Width=51tLabel_3.Height=15tLabel_3.Text=性别PAT_NAME.Type=TTextFieldPAT_NAME.X=382PAT_NAME.Y=25PAT_NAME.Width=77PAT_NAME.Height=20PAT_NAME.Text=tLabel_2.Type=TLabeltLabel_2.X=328tLabel_2.Y=28tLabel_2.Width=47tLabel_2.Height=15tLabel_2.Text=姓名BED.Type=TTextFieldBED.X=223BED.Y=25BED.Width=77BED.Height=20BED.Text=BED.Enabled=YtLabel_1.Type=TLabeltLabel_1.X=171tLabel_1.Y=28tLabel_1.Width=49tLabel_1.Height=15tLabel_1.Text=床号FROM_DEPT.Type=科室FROM_DEPT.X=73FROM_DEPT.Y=24FROM_DEPT.Width=81FROM_DEPT.Height=23FROM_DEPT.Text=FROM_DEPT.HorizontalAlignment=2FROM_DEPT.PopupMenuHeader=代码,100;名称,100FROM_DEPT.PopupMenuWidth=300FROM_DEPT.PopupMenuHeight=300FROM_DEPT.FormatType=comboFROM_DEPT.ShowDownButton=YFROM_DEPT.Tip=科室FROM_DEPT.ShowColumnList=NAMEFROM_DEPT.Enabled=YFROM_DEPT.IpdFitFlg=YtLabel_0.Type=TLabeltLabel_0.X=19tLabel_0.Y=28tLabel_0.Width=42tLabel_0.Height=15tLabel_0.Text=科别