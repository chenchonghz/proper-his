## TBuilder Config File ## Title:退库作业## Company:JavaHis## Author:zhangy 2009.05.06## version 1.0#<Type=TFrame>UI.Title=退库申请UI.MenuConfig=%ROOT%\config\spc\INDRequestRetAcntMenu.xUI.Width=1024UI.Height=748UI.toolbar=YUI.controlclassname=com.javahis.ui.spc.INDRequestRetAcntControlUI.item=tPanel_0;tPanel_6;tPanel_7;tMovePane_1UI.layout=nullUI.Text=退库申请UI.Tip=退库申请UI.TopMenu=YUI.TopToolBar=YUI.FocusList=UPDATE_FLG_A;UPDATE_FLG_B;URGENT_FLG;REQTYPE_CODE;APP_ORG_CODE;TO_ORG_CODE;REASON_CHN_DESC;DESCRIPTIONUI.ShowTitle=NUI.ShowMenu=NtMovePane_1.Type=TMovePanetMovePane_1.X=6tMovePane_1.Y=269tMovePane_1.Width=100tMovePane_1.Height=5tMovePane_1.Text=tMovePane_1.MoveType=2tMovePane_1.Border=凸tMovePane_1.Style=3tMovePane_1.AutoX=YtMovePane_1.AutoWidth=YtMovePane_1.EntityData=tPanel_6,2;tPanel_7,1tPanel_7.Type=TPaneltPanel_7.X=2tPanel_7.Y=274tPanel_7.Width=1014tPanel_7.Height=448tPanel_7.Border=组|申请明细tPanel_7.AutoX=YtPanel_7.AutoWidth=YtPanel_7.AutoHeight=YtPanel_7.Item=tPanel_8;tPanel_9tPanel_9.Type=TPaneltPanel_9.X=11tPanel_9.Y=56tPanel_9.Width=992tPanel_9.Height=368tPanel_9.AutoX=YtPanel_9.AutoWidth=YtPanel_9.AutoHeight=YtPanel_9.Border=凹tPanel_9.Item=TABLE_DTABLE_D.Type=TTableTABLE_D.X=60TABLE_D.Y=2TABLE_D.Width=81TABLE_D.Height=364TABLE_D.SpacingRow=1TABLE_D.RowHeight=20TABLE_D.AutoWidth=YTABLE_D.AutoHeight=YTABLE_D.AutoY=YTABLE_D.AutoX=YTABLE_D.AutoSize=0TABLE_D.Header=药品名称,190;规格,120;转出数量,70,double,#####0.000;单位,40,UNIT;零售价,80,double,#####0.0000;零售金额,100,double,#####0.00;采购价,80,double,#####0.0000;采购金额,100,double,#####0.00;批号,80;效期,150;累计完成量,100,double,#####0.000;中止,40,booleanTABLE_D.LockColumns=1,3,4,5,6,7,8,9TABLE_D.ColumnHorizontalAlignmentData=0,left;1,left;2,right;3,left;4,right;5,right;6,left;7,left;8,rightTABLE_D.ClickedAction=onTableDClickedTABLE_D.ParmMap=ORDER;SPECIFICATION;QTY;UNIT_CODE;RETAIL_PRICE;SUM_RETAIL_PRICE;VERIFYIN_PRICE;VERIFYIN_AMT;BATCH_NO;VALID_DATE;ACTUAL_QTY;END_FLGTABLE_D.AutoModifyDataStore=YTABLE_D.Item=UNITTABLE_D.FocusType=2TABLE_D.FocusIndexList=0,2tPanel_8.Type=TPaneltPanel_8.X=11tPanel_8.Y=20tPanel_8.Width=992tPanel_8.Height=31tPanel_8.Border=组tPanel_8.AutoX=YtPanel_8.AutoY=YtPanel_8.AutoWidth=YtPanel_8.Item=tLabel_0;SUM_RETAIL_PRICE;UNIT;tLabel_7;SUM_VERIFYIN_AMTSUM_VERIFYIN_AMT.Type=TNumberTextFieldSUM_VERIFYIN_AMT.X=675SUM_VERIFYIN_AMT.Y=4SUM_VERIFYIN_AMT.Width=95SUM_VERIFYIN_AMT.Height=20SUM_VERIFYIN_AMT.Text=0SUM_VERIFYIN_AMT.Format=#########0.00SUM_VERIFYIN_AMT.Enabled=NtLabel_7.Type=TLabeltLabel_7.X=594tLabel_7.Y=8tLabel_7.Width=89tLabel_7.Height=15tLabel_7.Text=采购总金额：UNIT.Type=计量单位下拉列表UNIT.X=357UNIT.Y=48UNIT.Width=10UNIT.Height=23UNIT.Text=TButtonUNIT.showID=YUNIT.showName=YUNIT.showText=NUNIT.showValue=NUNIT.showPy1=NUNIT.showPy2=NUNIT.Editable=YUNIT.Tip=计量单位UNIT.TableShowList=nameSUM_RETAIL_PRICE.Type=TNumberTextFieldSUM_RETAIL_PRICE.X=874SUM_RETAIL_PRICE.Y=5SUM_RETAIL_PRICE.Width=101SUM_RETAIL_PRICE.Height=20SUM_RETAIL_PRICE.Text=0SUM_RETAIL_PRICE.Format=#########0.00SUM_RETAIL_PRICE.Enabled=NtLabel_0.Type=TLabeltLabel_0.X=773tLabel_0.Y=8tLabel_0.Width=100tLabel_0.Height=15tLabel_0.Text=零售总金额:tPanel_6.Type=TPaneltPanel_6.X=5tPanel_6.Y=97tPanel_6.Width=1014tPanel_6.Height=173tPanel_6.Border=凹tPanel_6.AutoX=YtPanel_6.AutoWidth=YtPanel_6.Item=TABLE_MTABLE_M.Type=TTableTABLE_M.X=51TABLE_M.Y=2TABLE_M.Width=81TABLE_M.Height=169TABLE_M.SpacingRow=1TABLE_M.RowHeight=20TABLE_M.AutoX=YTABLE_M.AutoY=YTABLE_M.AutoWidth=YTABLE_M.AutoHeight=YTABLE_M.AutoSize=0TABLE_M.Header=退库日期,100;退库单号,100;单据类别,100,REQTYPE_CODE;退库部门,100,APP_ORG_CODE;申请人员,100,REQUEST_USER;接受部门,100,TO_ORG_CODE;退库原因,100,REASON_CHN_DESC;单位,80,UNIT_TYPE;备注,150;急,30,booleanTABLE_M.ParmMap=REQUEST_DATE;REQUEST_NO;REQTYPE_CODE;APP_ORG_CODE;REQUEST_USER;TO_ORG_CODE;REASON_CHN_DESC;UNIT_TYPE;DESCRIPTION;URGENT_FLGTABLE_M.Item=REQTYPE_CODE;APP_ORG_CODE;TO_ORG_CODE;REASON_CHN_DESC;UNIT_TYPE;REQUEST_USERTABLE_M.LockColumns=0,1,2,3,4,5,6,7,8,9TABLE_M.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,left;4,left;5,left;6,left;7,left;8,leftTABLE_M.ClickedAction=onTableMClickedtPanel_0.Type=TPaneltPanel_0.X=5tPanel_0.Y=5tPanel_0.Width=1014tPanel_0.Height=90tPanel_0.AutoX=YtPanel_0.AutoY=YtPanel_0.AutoWidth=YtPanel_0.Border=组tPanel_0.Item=tLabel_1;UPDATE_FLG_A;UPDATE_FLG_B;tLabel_2;REQUEST_DATE;tLabel_3;APP_ORG_CODE;tLabel_4;REQUEST_NO;tLabel_5;REQTYPE_CODE;tLabel_9;TO_ORG_CODE;tLabel_11;tLabel_12;DESCRIPTION;URGENT_FLG;tLabel_8;START_DATE;tLabel_14;END_DATE;REASON_CHN_DESC;UNIT_TYPE;REQUEST_USER;tLabel_6;G_DRUGS;N_DRUGS;ALLALL.Type=TRadioButtonALL.X=910ALL.Y=32ALL.Width=55ALL.Height=23ALL.Text=不分ALL.Group=group2ALL.Color=黑N_DRUGS.Type=TRadioButtonN_DRUGS.X=850N_DRUGS.Y=32N_DRUGS.Width=58N_DRUGS.Height=23N_DRUGS.Text=麻精N_DRUGS.Group=group2N_DRUGS.Color=黑G_DRUGS.Type=TRadioButtonG_DRUGS.X=796G_DRUGS.Y=32G_DRUGS.Width=58G_DRUGS.Height=23G_DRUGS.Text=普药G_DRUGS.Group=group2G_DRUGS.Selected=YG_DRUGS.Color=黑tLabel_6.Type=TLabeltLabel_6.X=725tLabel_6.Y=36tLabel_6.Width=72tLabel_6.Height=15tLabel_6.Text=药品种类:tLabel_6.Color=blueREQUEST_USER.Type=人员下拉列表REQUEST_USER.X=779REQUEST_USER.Y=105REQUEST_USER.Width=10REQUEST_USER.Height=23REQUEST_USER.Text=TButtonREQUEST_USER.showID=YREQUEST_USER.showName=YREQUEST_USER.showText=NREQUEST_USER.showValue=NREQUEST_USER.showPy1=NREQUEST_USER.showPy2=NREQUEST_USER.Editable=YREQUEST_USER.Tip=人员REQUEST_USER.TableShowList=nameREQUEST_USER.ModuleParmString=REQUEST_USER.ModuleParmTag=REQUEST_USER.Classify=UNIT_TYPE.Type=TComboBoxUNIT_TYPE.X=819UNIT_TYPE.Y=129UNIT_TYPE.Width=10UNIT_TYPE.Height=23UNIT_TYPE.Text=TButtonUNIT_TYPE.showID=YUNIT_TYPE.Editable=YUNIT_TYPE.ShowText=NUNIT_TYPE.ShowName=YUNIT_TYPE.TableShowList=nameUNIT_TYPE.StringData=[[id,name],[,],[0,库存单位],[1,配药单位]]REASON_CHN_DESC.Type=药库原因REASON_CHN_DESC.X=581REASON_CHN_DESC.Y=61REASON_CHN_DESC.Width=120REASON_CHN_DESC.Height=23REASON_CHN_DESC.Text=TButtonREASON_CHN_DESC.showID=YREASON_CHN_DESC.showName=YREASON_CHN_DESC.showText=NREASON_CHN_DESC.showValue=NREASON_CHN_DESC.showPy1=NREASON_CHN_DESC.showPy2=NREASON_CHN_DESC.Editable=YREASON_CHN_DESC.Tip=药库原因REASON_CHN_DESC.TableShowList=nameREASON_CHN_DESC.ReasonType=DEPEND_DATE.Type=TTextFormatEND_DATE.X=539END_DATE.Y=7END_DATE.Width=160END_DATE.Height=20END_DATE.Text=END_DATE.HorizontalAlignment=2END_DATE.showDownButton=YEND_DATE.Format=yyyy/MM/dd HH:mm:ssEND_DATE.FormatType=datetLabel_14.Type=TLabeltLabel_14.X=512tLabel_14.Y=10tLabel_14.Width=25tLabel_14.Height=15tLabel_14.Text=～tLabel_14.HorizontalAlignment=0START_DATE.Type=TTextFormatSTART_DATE.X=350START_DATE.Y=7START_DATE.Width=160START_DATE.Height=20START_DATE.Text=START_DATE.showDownButton=YSTART_DATE.FormatType=dateSTART_DATE.Format=yyyy/MM/dd HH:mm:ssSTART_DATE.HorizontalAlignment=2tLabel_8.Type=TLabeltLabel_8.X=277tLabel_8.Y=10tLabel_8.Width=72tLabel_8.Height=15tLabel_8.Text=查询区间:tLabel_8.Color=blueURGENT_FLG.Type=TCheckBoxURGENT_FLG.X=720URGENT_FLG.Y=5URGENT_FLG.Width=100URGENT_FLG.Height=23URGENT_FLG.Text=急件注记DESCRIPTION.Type=TTextFieldDESCRIPTION.X=801DESCRIPTION.Y=63DESCRIPTION.Width=150DESCRIPTION.Height=20DESCRIPTION.Text=tLabel_12.Type=TLabeltLabel_12.X=728tLabel_12.Y=66tLabel_12.Width=72tLabel_12.Height=15tLabel_12.Text=备    注:tLabel_11.Type=TLabeltLabel_11.X=506tLabel_11.Y=66tLabel_11.Width=72tLabel_11.Height=15tLabel_11.Text=退库原因:TO_ORG_CODE.Type=药房下拉列表TO_ORG_CODE.X=350TO_ORG_CODE.Y=61TO_ORG_CODE.Width=121TO_ORG_CODE.Height=23TO_ORG_CODE.Text=TButtonTO_ORG_CODE.showID=YTO_ORG_CODE.showName=YTO_ORG_CODE.showText=NTO_ORG_CODE.showValue=NTO_ORG_CODE.showPy1=NTO_ORG_CODE.showPy2=NTO_ORG_CODE.Editable=YTO_ORG_CODE.Tip=药房TO_ORG_CODE.TableShowList=nameTO_ORG_CODE.ModuleParmTag=TO_ORG_CODE.ExpandWidth=30TO_ORG_CODE.Visible=YTO_ORG_CODE.OrgType=ATO_ORG_CODE.OrgFlg=YtLabel_9.Type=TLabeltLabel_9.X=277tLabel_9.Y=66tLabel_9.Width=72tLabel_9.Height=15tLabel_9.Text=接受部门:REQTYPE_CODE.Type=TComboBoxREQTYPE_CODE.X=350REQTYPE_CODE.Y=32REQTYPE_CODE.Width=120REQTYPE_CODE.Height=23REQTYPE_CODE.Text=TButtonREQTYPE_CODE.showID=YREQTYPE_CODE.Editable=YREQTYPE_CODE.ShowName=YREQTYPE_CODE.ShowText=NREQTYPE_CODE.TableShowList=nameREQTYPE_CODE.ExpandWidth=30REQTYPE_CODE.StringData=[[id,name],[RET,退库]]REQTYPE_CODE.SelectedAction=REQTYPE_CODE.Action=tLabel_5.Type=TLabeltLabel_5.X=277tLabel_5.Y=37tLabel_5.Width=72tLabel_5.Height=15tLabel_5.Text=单据类别:tLabel_5.Color=blueREQUEST_NO.Type=TTextFieldREQUEST_NO.X=579REQUEST_NO.Y=33REQUEST_NO.Width=120REQUEST_NO.Height=20REQUEST_NO.Text=REQUEST_NO.Enabled=YtLabel_4.Type=TLabeltLabel_4.X=506tLabel_4.Y=37tLabel_4.Width=72tLabel_4.Height=15tLabel_4.Text=退库单号:tLabel_4.Color=blueAPP_ORG_CODE.Type=药房下拉列表APP_ORG_CODE.X=92APP_ORG_CODE.Y=61APP_ORG_CODE.Width=160APP_ORG_CODE.Height=23APP_ORG_CODE.Text=TButtonAPP_ORG_CODE.showID=YAPP_ORG_CODE.showName=YAPP_ORG_CODE.showText=NAPP_ORG_CODE.showValue=NAPP_ORG_CODE.showPy1=NAPP_ORG_CODE.showPy2=NAPP_ORG_CODE.Editable=YAPP_ORG_CODE.Tip=药房APP_ORG_CODE.TableShowList=nameAPP_ORG_CODE.ModuleParmTag=APP_ORG_CODE.ExpandWidth=30APP_ORG_CODE.SelectedAction=APP_ORG_CODE.OrgType=BAPP_ORG_CODE.OrgFlg=YtLabel_3.Type=TLabeltLabel_3.X=15tLabel_3.Y=66tLabel_3.Width=72tLabel_3.Height=15tLabel_3.Text=退库部门:tLabel_3.Color=blueREQUEST_DATE.Type=TTextFormatREQUEST_DATE.X=92REQUEST_DATE.Y=34REQUEST_DATE.Width=160REQUEST_DATE.Height=20REQUEST_DATE.Text=REQUEST_DATE.showDownButton=YREQUEST_DATE.Format=yyyy/MM/dd HH:mm:ssREQUEST_DATE.FormatType=dateREQUEST_DATE.HorizontalAlignment=2tLabel_2.Type=TLabeltLabel_2.X=15tLabel_2.Y=37tLabel_2.Width=72tLabel_2.Height=15tLabel_2.Text=退库时间:tLabel_2.Color=黑UPDATE_FLG_B.Type=TRadioButtonUPDATE_FLG_B.X=181UPDATE_FLG_B.Y=6UPDATE_FLG_B.Width=81UPDATE_FLG_B.Height=23UPDATE_FLG_B.Text=完成UPDATE_FLG_B.Group=group1UPDATE_FLG_B.Action=onChangeRequestStatusUPDATE_FLG_A.Type=TRadioButtonUPDATE_FLG_A.X=89UPDATE_FLG_A.Y=6UPDATE_FLG_A.Width=81UPDATE_FLG_A.Height=23UPDATE_FLG_A.Text=未完成UPDATE_FLG_A.Group=group1UPDATE_FLG_A.Selected=YUPDATE_FLG_A.Action=onChangeRequestStatustLabel_1.Type=TLabeltLabel_1.X=15tLabel_1.Y=10tLabel_1.Width=72tLabel_1.Height=15tLabel_1.Text=退库状态:tLabel_1.Color=blue