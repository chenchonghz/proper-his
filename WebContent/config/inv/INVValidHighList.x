## TBuilder Config File ## Title:近效期高值报表## Company:JavaHis## Author:杜志伟 2012.11.08## version 1.0#<Type=TFrame>UI.Title=近效期高值报表UI.MenuConfig=%ROOT%\config\inv\INVValidHighListMenu.xUI.Width=1024UI.Height=748UI.toolbar=YUI.controlclassname=com.javahis.ui.inv.INVValidHighListControlUI.item=tPanel_4;tPanel_5;tPanel_6UI.layout=nullUI.TopMenu=YUI.TopToolBar=YtPanel_6.Type=TPaneltPanel_6.X=5tPanel_6.Y=172tPanel_6.Width=1014tPanel_6.Height=552tPanel_6.Border=组tPanel_6.AutoWidth=YtPanel_6.AutoHeight=YtPanel_6.AutoY=NtPanel_6.Item=Table;MAIN_TABLEMAIN_TABLE.Type=TTableMAIN_TABLE.X=5MAIN_TABLE.Y=7MAIN_TABLE.Width=997MAIN_TABLE.Height=235MAIN_TABLE.SpacingRow=1MAIN_TABLE.RowHeight=20MAIN_TABLE.AutoWidth=YMAIN_TABLE.AutoHeight=NMAIN_TABLE.Header=物资编码,120;物资名称,220;数量,50;单位,30;物资分类,150;部门,120;供应商,200;上级供应商,200MAIN_TABLE.ParmMap=INV_CODE;INV_CHN_DESC;SUM;UNIT_CHN_DESC;INV_KIND;DEPT_CHN_DESC;SUP_CHN_DESC;UP_SUP_CHN_DESC;;ORG_CODE;SUP_CODE;UP_SUP_CODE;MAN_CODE;INV_KIND_CODEMAIN_TABLE.ClickedAction=onMainTableClickMAIN_TABLE.ColumnHorizontalAlignmentData=0,left;1,left;2,right;3,left;4,left;5,left;6,leftMAIN_TABLE.LockColumns=allTable.Type=TTableTable.X=5Table.Y=246Table.Width=998Table.Height=295Table.SpacingRow=1Table.RowHeight=20Table.AutoWidth=YTable.AutoHeight=YTable.Header=rfid,120;物资编码,120;物资名称,220;批号,100;效期,80;规格,130;单位,30;采购价格,120,double,#######0.0000;供应商,200;上级供应商,200;生产商,200;物资分类,200Table.ParmMap=RFID;INV_CODE;INV_CHN_DESC;BATCH_NO;VALID_DATE;DESCRIPTION;UNIT_CHN_DESC;COST_PRICE;SUP_CHN_DESC;UP_SUP_CHN_DESC;MAN_CODE;INV_KINDTable.LockColumns=allTable.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,left;4,left;5,left;6,left;7,right;8,left;9,left;10,left;11,lefttPanel_5.Type=TPaneltPanel_5.X=5tPanel_5.Y=123tPanel_5.Width=1014tPanel_5.Height=44tPanel_5.Border=组tPanel_5.AutoX=NtPanel_5.AutoY=NtPanel_5.AutoWidth=YtPanel_5.Item=tLabel_22;ALLCOUNT;AA;ALLFEE;tLabel_3tLabel_3.Type=TLabeltLabel_3.X=447tLabel_3.Y=14tLabel_3.Width=23tLabel_3.Height=15tLabel_3.Text=元ALLFEE.Type=TTextFieldALLFEE.X=319ALLFEE.Y=12ALLFEE.Width=122ALLFEE.Height=20ALLFEE.Text=ALLFEE.Enabled=NAA.Type=TLabelAA.X=247AA.Y=14AA.Width=72AA.Height=15AA.Text=总金额：ALLCOUNT.Type=TTextFieldALLCOUNT.X=96ALLCOUNT.Y=12ALLCOUNT.Width=122ALLCOUNT.Height=20ALLCOUNT.Text=ALLCOUNT.Enabled=NtLabel_22.Type=TLabeltLabel_22.X=22tLabel_22.Y=14tLabel_22.Width=71tLabel_22.Height=15tLabel_22.Text=合计笔数：tPanel_4.Type=TPaneltPanel_4.X=5tPanel_4.Y=5tPanel_4.Width=1014tPanel_4.Height=113tPanel_4.Border=组tPanel_4.AutoX=YtPanel_4.AutoY=YtPanel_4.AutoWidth=YtPanel_4.Item=tLabel_8;ORG_CODE;tlable;INV_CODE;INV_DESC;tlable2;SUP_CODE;tlable4;UP_SUP_CODE;tLabel_26;KIND;tLabel_27;VALID_DATE_A;VALID_DATE_B;VALID_DATE_C;VALID_DATE;VALID_DATE_VALUE;VALID_DATE_D;VALID_DATE_EVALID_DATE_E.Type=TRadioButtonVALID_DATE_E.X=414VALID_DATE_E.Y=9VALID_DATE_E.Width=72VALID_DATE_E.Height=23VALID_DATE_E.Text=一个月VALID_DATE_E.Group=group1VALID_DATE_E.Selected=YVALID_DATE_E.Action=onChangeRadioButtonVALID_DATE_D.Type=TRadioButtonVALID_DATE_D.X=863VALID_DATE_D.Y=7VALID_DATE_D.Width=92VALID_DATE_D.Height=23VALID_DATE_D.Text=无限制VALID_DATE_D.Group=group1VALID_DATE_D.Action=onChangeRadioButtonVALID_DATE_VALUE.Type=TTextFieldVALID_DATE_VALUE.X=883VALID_DATE_VALUE.Y=72VALID_DATE_VALUE.Width=77VALID_DATE_VALUE.Height=20VALID_DATE_VALUE.Text=VALID_DATE_VALUE.Visible=NVALID_DATE.Type=TTextFormatVALID_DATE.X=738VALID_DATE.Y=8VALID_DATE.Width=120VALID_DATE.Height=20VALID_DATE.Text=TTextFormatVALID_DATE.Enabled=NVALID_DATE.Format=yyyy/MM/ddVALID_DATE.FormatType=dateVALID_DATE.showDownButton=YVALID_DATE_C.Type=TRadioButtonVALID_DATE_C.X=651VALID_DATE_C.Y=7VALID_DATE_C.Width=83VALID_DATE_C.Height=23VALID_DATE_C.Text=自行录入VALID_DATE_C.Group=group1VALID_DATE_C.Action=onChangeRadioButtonVALID_DATE_B.Type=TRadioButtonVALID_DATE_B.X=577VALID_DATE_B.Y=8VALID_DATE_B.Width=69VALID_DATE_B.Height=23VALID_DATE_B.Text=六个月VALID_DATE_B.Group=group1VALID_DATE_B.Action=onChangeRadioButtonVALID_DATE_A.Type=TRadioButtonVALID_DATE_A.X=501VALID_DATE_A.Y=8VALID_DATE_A.Width=74VALID_DATE_A.Height=23VALID_DATE_A.Text=三个月VALID_DATE_A.Group=group1VALID_DATE_A.Action=onChangeRadioButtonVALID_DATE_A.Selected=NtLabel_27.Type=TLabeltLabel_27.X=325tLabel_27.Y=12tLabel_27.Width=72tLabel_27.Height=15tLabel_27.Text=效期限制：tLabel_27.Color=blueKIND.Type=物资分类下拉列表KIND.X=99KIND.Y=77KIND.Width=200KIND.Height=23KIND.Text=KIND.HorizontalAlignment=2KIND.PopupMenuHeader=代码,100;名称,100KIND.PopupMenuWidth=300KIND.PopupMenuHeight=300KIND.PopupMenuFilter=ID,1;NAME,1;PY1,1KIND.FormatType=comboKIND.ShowDownButton=YKIND.Tip=物资种类KIND.ShowColumnList=NAMEKIND.HisOneNullRow=YtLabel_26.Type=TLabeltLabel_26.X=21tLabel_26.Y=83tLabel_26.Width=72tLabel_26.Height=15tLabel_26.Text=物资分类：tLabel_26.Color=blueUP_SUP_CODE.Type=供应厂商UP_SUP_CODE.X=414UP_SUP_CODE.Y=44UP_SUP_CODE.Width=200UP_SUP_CODE.Height=23UP_SUP_CODE.Text=UP_SUP_CODE.HorizontalAlignment=2UP_SUP_CODE.PopupMenuHeader=代码,100;名称,100UP_SUP_CODE.PopupMenuWidth=300UP_SUP_CODE.PopupMenuHeight=300UP_SUP_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1UP_SUP_CODE.FormatType=comboUP_SUP_CODE.ShowDownButton=YUP_SUP_CODE.Tip=供应厂商UP_SUP_CODE.ShowColumnList=NAMEUP_SUP_CODE.HisOneNullRow=Ytlable4.Type=TLabeltlable4.X=323tlable4.Y=46tlable4.Width=87tlable4.Height=15tlable4.Text=上级供应商：tlable4.Color=blueSUP_CODE.Type=供应厂商SUP_CODE.X=99SUP_CODE.Y=44SUP_CODE.Width=200SUP_CODE.Height=23SUP_CODE.Text=SUP_CODE.HorizontalAlignment=2SUP_CODE.PopupMenuHeader=代码,100;名称,100SUP_CODE.PopupMenuWidth=300SUP_CODE.PopupMenuHeight=300SUP_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1SUP_CODE.FormatType=comboSUP_CODE.ShowDownButton=YSUP_CODE.Tip=供应厂商SUP_CODE.ShowColumnList=NAMESUP_CODE.HisOneNullRow=Ytlable2.Type=TLabeltlable2.X=21tlable2.Y=47tlable2.Width=73tlable2.Height=15tlable2.Text=供应厂商：tlable2.Color=blueINV_DESC.Type=TTextFieldINV_DESC.X=512INV_DESC.Y=77INV_DESC.Width=372INV_DESC.Height=20INV_DESC.Text=INV_DESC.Enabled=NINV_CODE.Type=TTextFieldINV_CODE.X=414INV_CODE.Y=77INV_CODE.Width=95INV_CODE.Height=20INV_CODE.Text=tlable.Type=TLabeltlable.X=327tlable.Y=80tlable.Width=72tlable.Height=15tlable.Text=物资编码：tlable.Color=blueORG_CODE.Type=物资部门下拉区域ORG_CODE.X=99ORG_CODE.Y=9ORG_CODE.Width=200ORG_CODE.Height=23ORG_CODE.Text=ORG_CODE.HorizontalAlignment=2ORG_CODE.PopupMenuHeader=代码,100;名称,100ORG_CODE.PopupMenuWidth=300ORG_CODE.PopupMenuHeight=300ORG_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1ORG_CODE.FormatType=comboORG_CODE.ShowDownButton=YORG_CODE.Tip= 物资部门ORG_CODE.ShowColumnList=NAMEORG_CODE.HisOneNullRow=YtLabel_8.Type=TLabeltLabel_8.X=21tLabel_8.Y=14tLabel_8.Width=72tLabel_8.Height=15tLabel_8.Text=部门名称：tLabel_8.Color=blue