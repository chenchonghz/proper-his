## TBuilder Config File ## Title:## Company:JavaHis## Author:ehui 2009.09.28## version 1.0#<Type=TFrame>UI.Title=病患选择UI.MenuConfig=UI.Width=700UI.Height=500UI.toolbar=YUI.controlclassname=com.javahis.ui.sys.SYSPatChooseControlUI.item=tPanel_2UI.layout=nulltPanel_2.Type=TPaneltPanel_2.X=5tPanel_2.Y=5tPanel_2.Width=690tPanel_2.Height=490tPanel_2.AutoX=YtPanel_2.AutoY=YtPanel_2.AutoWidth=YtPanel_2.AutoHeight=YtPanel_2.Border=组tPanel_2.Item=tLabel_6;PAT_NAME;tLabel_7;MR_NO;tLabel_20;IDNO;tLabel_21;BIRTH_DATE;tLabel_23;ADDRESS;TABLE;SEX_CODE;tLabel_22tPanel_2.Title=病患选择列表tLabel_22.Type=TLabeltLabel_22.X=212tLabel_22.Y=55tLabel_22.Width=29tLabel_22.Height=15tLabel_22.Text=性别SEX_CODE.Type=TComboBoxSEX_CODE.X=241SEX_CODE.Y=51SEX_CODE.Width=81SEX_CODE.Height=23SEX_CODE.Text=TButtonSEX_CODE.showID=YSEX_CODE.Editable=YSEX_CODE.ShowName=YSEX_CODE.TableShowList=nameSEX_CODE.StringData=[[id,name],[1,男],[2,女]]TABLE.Type=TTableTABLE.X=6TABLE.Y=88TABLE.Width=672TABLE.Height=391TABLE.SpacingRow=1TABLE.RowHeight=20TABLE.AutoWidth=YTABLE.AutoHeight=YTABLE.Header=病案号,100;就诊日期,100,timestamp,yyyy/MM/dd;姓名,100;身份证号,160;性别,40,SEX_CODE;出生日期,120,timestamp;邮编,60;医疗卡号,100;地址,200TABLE.Item=SEX_CODETABLE.ParmMap=MR_NO;REPORT_DATE;PAT_NAME;IDNO;SEX_CODE;BIRTH_DATE;POST_CODE;EKT_CARD_NO;ADDRESSTABLE.ClickedAction=onTableClickedTABLE.Enabled=YTABLE.ColumnHorizontalAlignmentData=0,left;1,left;3,left;4,left;5,left;6,left;7,leftTABLE.LockColumns=allTABLE.DoubleClickedAction=onTableDoubleClickedADDRESS.Type=TTextFieldADDRESS.X=364ADDRESS.Y=52ADDRESS.Width=205ADDRESS.Height=20ADDRESS.Text=ADDRESS.Enabled=NtLabel_23.Type=TLabeltLabel_23.X=330tLabel_23.Y=55tLabel_23.Width=28tLabel_23.Height=15tLabel_23.Text=地址BIRTH_DATE.Type=TTextFormatBIRTH_DATE.X=67BIRTH_DATE.Y=52BIRTH_DATE.Width=143BIRTH_DATE.Height=20BIRTH_DATE.Text=BIRTH_DATE.Enabled=NtLabel_21.Type=TLabeltLabel_21.X=10tLabel_21.Y=55tLabel_21.Width=56tLabel_21.Height=15tLabel_21.Text=出生日期IDNO.Type=TTextFieldIDNO.X=402IDNO.Y=13IDNO.Width=166IDNO.Height=20IDNO.Text=IDNO.Enabled=NtLabel_20.Type=TLabeltLabel_20.X=338tLabel_20.Y=16tLabel_20.Width=61tLabel_20.Height=15tLabel_20.Text=身份证号MR_NO.Type=TTextFieldMR_NO.X=200MR_NO.Y=13MR_NO.Width=133MR_NO.Height=20MR_NO.Text=MR_NO.Enabled=NtLabel_7.Type=TLabeltLabel_7.X=151tLabel_7.Y=16tLabel_7.Width=48tLabel_7.Height=15tLabel_7.Text=病案号PAT_NAME.Type=TTextFieldPAT_NAME.X=45PAT_NAME.Y=13PAT_NAME.Width=100PAT_NAME.Height=20PAT_NAME.Text=PAT_NAME.Enabled=NtLabel_6.Type=TLabeltLabel_6.X=12tLabel_6.Y=16tLabel_6.Width=28tLabel_6.Height=15tLabel_6.Text=姓名