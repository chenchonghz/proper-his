## TBuilder Config File ## Title:营养膳食字典## Company:JavaHis## Author:wangb 2014.12.17## version 1.0#<Type=TFrame>UI.Title=肠内营养配方字典UI.MenuConfig=%ROOT%\config\nss\NSSEnteralNutritionFormulaDictMenu.xUI.Width=1290UI.Height=748UI.toolbar=YUI.controlclassname=com.javahis.ui.nss.NSSEnteralNutritionFormulaDictControlUI.item=tPanel_3;tPanel_8;tPanel_9UI.layout=nullUI.TopMenu=NUI.TopToolBar=YtPanel_9.Type=TPaneltPanel_9.X=5tPanel_9.Y=325tPanel_9.Width=1280tPanel_9.Height=256tPanel_9.Border=组|营养成分tPanel_9.AutoX=YtPanel_9.AutoWidth=YtPanel_9.Item=TABLEDTABLED.Type=TTableTABLED.X=9TABLED.Y=24TABLED.Width=1249TABLED.Height=220TABLED.SpacingRow=1TABLED.RowHeight=20TABLED.AutoX=YTABLED.AutoWidth=YTABLED.Header=选,40,boolean;营养成分中文名称,150;营养成分英文名称,150;含量,80;单位,80,NUTRITION_UNIT;操作人,100,OPERATOR_COMBO;操作时间,100;操作端末,100TABLED.ParmMap=FLG;NUTRITION_CHN_DESC;NUTRITION_ENG_DESC;NUTRITION_CONTENT;UNIT_CODE;OPT_USER;OPT_DATE;OPT_TERMTABLED.Item=NUTRITION_UNIT;OPERATOR_COMBOTABLED.AutoModifyDataStore=YTABLED.LockColumns=2,5,6,7TABLED.ClickedAction=onTableDClickedTABLED.RowSelectionAllowed=YTABLED.FocusIndexJump=YTABLED.ColumnHorizontalAlignmentData=1,left;2,left;3,right;4,lefttPanel_8.Type=TPaneltPanel_8.X=5tPanel_8.Y=94tPanel_8.Width=1280tPanel_8.Height=231tPanel_8.Border=组|查询结果tPanel_8.AutoX=YtPanel_8.AutoWidth=YtPanel_8.Item=TABLEM;OPERATOR_COMBOOPERATOR_COMBO.Type=人员OPERATOR_COMBO.X=27OPERATOR_COMBO.Y=139OPERATOR_COMBO.Width=81OPERATOR_COMBO.Height=23OPERATOR_COMBO.Text=OPERATOR_COMBO.HorizontalAlignment=2OPERATOR_COMBO.PopupMenuHeader=代码,100;名称,100OPERATOR_COMBO.PopupMenuWidth=300OPERATOR_COMBO.PopupMenuHeight=300OPERATOR_COMBO.PopupMenuFilter=ID,1;NAME,1;PY1,1OPERATOR_COMBO.FormatType=comboOPERATOR_COMBO.ShowDownButton=YOPERATOR_COMBO.Tip=人员OPERATOR_COMBO.ShowColumnList=NAMETABLEM.Type=TTableTABLEM.X=12TABLEM.Y=24TABLEM.Width=1251TABLEM.Height=198TABLEM.SpacingRow=1TABLEM.RowHeight=20TABLEM.AutoX=YTABLEM.AutoWidth=YTABLEM.Header=启用,40,boolean;配方代码,80;中文名称,160;英文名称,100;拼音码,80;助记码,60;诊疗项目注记,80,boolean;诊疗项目,220;开立单位,60,MEDI_UNIT;营养成分含量(每),120;单位,60,NUTRITION_UNIT;操作人,100,OPERATOR_COMBO;操作日期,100;操作端末,100TABLEM.ParmMap=ACTIVE_FLG;FORMULA_CODE;FORMULA_CHN_DESC;FORMULA_ENG_DESC;PY1;PY2;CLINIC_PROJECT_FLG;ORDER_DESC;MEDI_UNIT;NUTRITION_CONTENT;NUTRITION_UNIT;OPT_USER;OPT_DATE;OPT_TERMTABLEM.Item=MEDI_UNIT;NUTRITION_UNIT;OPERATOR_COMBOTABLEM.LockColumns=allTABLEM.HorizontalAlignmentData=TABLEM.ColumnHorizontalAlignmentData=2,left;3,left;4,left;5,left;7,left;8,left;9,right;10,leftTABLEM.ClickedAction=onTableMClickedTABLEM.AutoModifyDataStore=NTABLEM.ColumnSelectionAllowed=NTABLEM.FocusIndexJump=YtPanel_3.Type=TPaneltPanel_3.X=5tPanel_3.Y=1tPanel_3.Width=1280tPanel_3.Height=95tPanel_3.Border=组|基本信息tPanel_3.AutoX=YtPanel_3.AutoWidth=YtPanel_3.Item=tLabel_1;FORMULA_CODE;tLabel_2;FORMULA_CHN_DESC;tLabel_14;FORMULA_ENG_DESC;tLabel_15;PY1;tLabel_16;PY2;ACTIVE_FLG;tLabel_24;MEDI_UNIT;CLINIC_PROJECT_FLG;tLabel_0;ORDER_CODE;ORDER_DESC;tLabel_3;NUTRITION_CONTENT;tLabel_4;NUTRITION_UNIT;tLabel_5;tLabel_6;tLabel_7;tLabel_8;tLabel_9tLabel_9.Type=TLabeltLabel_9.X=878tLabel_9.Y=56tLabel_9.Width=12tLabel_9.Height=15tLabel_9.Text=*tLabel_9.Color=红tLabel_8.Type=TLabeltLabel_8.X=732tLabel_8.Y=55tLabel_8.Width=12tLabel_8.Height=15tLabel_8.Text=*tLabel_8.Color=红tLabel_7.Type=TLabeltLabel_7.X=526tLabel_7.Y=57tLabel_7.Width=11tLabel_7.Height=15tLabel_7.Text=*tLabel_7.Color=红tLabel_6.Type=TLabeltLabel_6.X=375tLabel_6.Y=25tLabel_6.Width=14tLabel_6.Height=15tLabel_6.Text=*tLabel_6.Color=红tLabel_5.Type=TLabeltLabel_5.X=190tLabel_5.Y=24tLabel_5.Width=10tLabel_5.Height=15tLabel_5.Text=*tLabel_5.Color=红NUTRITION_UNIT.Type=计量单位NUTRITION_UNIT.X=797NUTRITION_UNIT.Y=53NUTRITION_UNIT.Width=76NUTRITION_UNIT.Height=20NUTRITION_UNIT.Text=NUTRITION_UNIT.HorizontalAlignment=2NUTRITION_UNIT.PopupMenuHeader=代码,100;名称,100NUTRITION_UNIT.PopupMenuWidth=300NUTRITION_UNIT.PopupMenuHeight=300NUTRITION_UNIT.PopupMenuFilter=ID,1;NAME,1;PY1,1NUTRITION_UNIT.FormatType=comboNUTRITION_UNIT.ShowDownButton=YNUTRITION_UNIT.Tip=计量单位NUTRITION_UNIT.ShowColumnList=NAMEtLabel_4.Type=TLabeltLabel_4.X=765tLabel_4.Y=53tLabel_4.Width=30tLabel_4.Height=18tLabel_4.Text=单位NUTRITION_CONTENT.Type=TNumberTextFieldNUTRITION_CONTENT.X=661NUTRITION_CONTENT.Y=53NUTRITION_CONTENT.Width=70NUTRITION_CONTENT.Height=20NUTRITION_CONTENT.Text=0NUTRITION_CONTENT.Format=#########0tLabel_3.Type=TLabeltLabel_3.X=548tLabel_3.Y=57tLabel_3.Width=113tLabel_3.Height=15tLabel_3.Text=营养成分含量(每)ORDER_DESC.Type=TTextFieldORDER_DESC.X=164ORDER_DESC.Y=55ORDER_DESC.Width=211ORDER_DESC.Height=20ORDER_DESC.Text=ORDER_DESC.Enabled=NORDER_CODE.Type=TTextFieldORDER_CODE.X=76ORDER_CODE.Y=55ORDER_CODE.Width=85ORDER_CODE.Height=20ORDER_CODE.Text=ORDER_CODE.Enabled=NtLabel_0.Type=TLabeltLabel_0.X=13tLabel_0.Y=59tLabel_0.Width=59tLabel_0.Height=15tLabel_0.Text=诊疗项目CLINIC_PROJECT_FLG.Type=TCheckBoxCLINIC_PROJECT_FLG.X=943CLINIC_PROJECT_FLG.Y=19CLINIC_PROJECT_FLG.Width=83CLINIC_PROJECT_FLG.Height=23CLINIC_PROJECT_FLG.Text=诊疗项目CLINIC_PROJECT_FLG.Action=setEnAbleMEDI_UNIT.Type=计量单位MEDI_UNIT.X=459MEDI_UNIT.Y=54MEDI_UNIT.Width=66MEDI_UNIT.Height=21MEDI_UNIT.Text=MEDI_UNIT.HorizontalAlignment=2MEDI_UNIT.PopupMenuHeader=代码,100;名称,100MEDI_UNIT.PopupMenuWidth=300MEDI_UNIT.PopupMenuHeight=300MEDI_UNIT.PopupMenuFilter=ID,1;NAME,1;PY1,1MEDI_UNIT.FormatType=comboMEDI_UNIT.ShowDownButton=YMEDI_UNIT.Tip=计量单位MEDI_UNIT.ShowColumnList=NAMEtLabel_24.Type=TLabeltLabel_24.X=398tLabel_24.Y=57tLabel_24.Width=56tLabel_24.Height=15tLabel_24.Text=开立单位ACTIVE_FLG.Type=TCheckBoxACTIVE_FLG.X=886ACTIVE_FLG.Y=19ACTIVE_FLG.Width=54ACTIVE_FLG.Height=23ACTIVE_FLG.Text=启用ACTIVE_FLG.Selected=NPY2.Type=TTextFieldPY2.X=797PY2.Y=21PY2.Width=75PY2.Height=21PY2.Text=tLabel_16.Type=TLabeltLabel_16.X=750tLabel_16.Y=24tLabel_16.Width=48tLabel_16.Height=16tLabel_16.Text=助记码PY1.Type=TTextFieldPY1.X=661PY1.Y=21PY1.Width=69PY1.Height=21PY1.Text=tLabel_15.Type=TLabeltLabel_15.X=614tLabel_15.Y=23tLabel_15.Width=48tLabel_15.Height=16tLabel_15.Text=拼音码FORMULA_ENG_DESC.Type=TTextFieldFORMULA_ENG_DESC.X=459FORMULA_ENG_DESC.Y=22FORMULA_ENG_DESC.Width=125FORMULA_ENG_DESC.Height=20FORMULA_ENG_DESC.Text=tLabel_14.Type=TLabeltLabel_14.X=397tLabel_14.Y=25tLabel_14.Width=60tLabel_14.Height=15tLabel_14.Text=英文名称FORMULA_CHN_DESC.Type=TTextFieldFORMULA_CHN_DESC.X=272FORMULA_CHN_DESC.Y=22FORMULA_CHN_DESC.Width=102FORMULA_CHN_DESC.Height=20FORMULA_CHN_DESC.Text=FORMULA_CHN_DESC.Action=onUserNameActiontLabel_2.Type=TLabeltLabel_2.X=213tLabel_2.Y=25tLabel_2.Width=58tLabel_2.Height=15tLabel_2.Text=中文名称tLabel_2.Color=蓝FORMULA_CODE.Type=TTextFieldFORMULA_CODE.X=76FORMULA_CODE.Y=22FORMULA_CODE.Width=112FORMULA_CODE.Height=20FORMULA_CODE.Text=FORMULA_CODE.Enabled=YtLabel_1.Type=TLabeltLabel_1.X=12tLabel_1.Y=25tLabel_1.Width=57tLabel_1.Height=15tLabel_1.Text=配方代码tLabel_1.Color=黑