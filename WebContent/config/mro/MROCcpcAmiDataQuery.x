## TBuilder Config File ## Title:CCPC-AMI数据查询统计## Company:JavaHis## Author:wangbin 2017.12.29## version 1.0#<Type=TFrame>UI.Title=CCPC-AMI数据查询UI.MenuConfig=%ROOT%\config\mro\MROCcpcAmiDataQueryMenu.xUI.Width=1024UI.Height=748UI.toolbar=UI.controlclassname=com.javahis.ui.mro.MROCcpcAmiDataQueryControlUI.item=tPanel_0;tPanel_1UI.layout=nullUI.TopMenu=YUI.ShowMenu=NUI.TopToolBar=YUI.ShowTitle=NUI.LoadFlg=NtPanel_1.Type=TPaneltPanel_1.X=5tPanel_1.Y=95tPanel_1.Width=1014tPanel_1.Height=648tPanel_1.Border=组|查询结果tPanel_1.AutoWidth=YtPanel_1.AutoHeight=YtPanel_1.Item=TABLE;SEX_COMBOSEX_COMBO.Type=性别下拉列表SEX_COMBO.X=30SEX_COMBO.Y=430SEX_COMBO.Width=81SEX_COMBO.Height=23SEX_COMBO.Text=TButtonSEX_COMBO.showID=YSEX_COMBO.showName=YSEX_COMBO.showText=YSEX_COMBO.showValue=YSEX_COMBO.showPy1=NSEX_COMBO.showPy2=NSEX_COMBO.Editable=YSEX_COMBO.Tip=性别SEX_COMBO.TableShowList=nameSEX_COMBO.ModuleParmString=GROUP_ID:SYS_SEXSEX_COMBO.ModuleParmTag=TABLE.Type=TTableTABLE.X=13TABLE.Y=22TABLE.Width=988TABLE.Height=616TABLE.SpacingRow=1TABLE.RowHeight=20TABLE.AutoWidth=YTABLE.AutoHeight=YTABLE.Header=病案号,100;姓名,100;性别,80,SEX_COMBO;入院年龄,100;科室,120,DEPT_CODE;入院时间,120;出院时间,120;住院天数,100;主诊断代码,100;主诊断名称,300;总费用,120;药品费,120;材料费,120TABLE.LockColumns=allTABLE.Item=SEX_COMBO;DEPT_CODETABLE.ParmMap=MR_NO;PAT_NAME;SEX_CODE;AGE;DEPT_CODE;IN_DATE;DS_DATE;IN_DAYS;ICD_CODE;ICD_CHN_DESC;TOT_AMT;DRUG_TOT_AMT;MATERIAL_TOT_AMTTABLE.ColumnHorizontalAlignmentData=1,LEFT;2,LEFT;7,RIGHT;8,LEFT;9,LEFT;10,RIGHT;11,RIGHT;12,RIGHTtPanel_0.Type=TPaneltPanel_0.X=4tPanel_0.Y=4tPanel_0.Width=1015tPanel_0.Height=92tPanel_0.Border=组|查询条件tPanel_0.AutoWidth=YtPanel_0.Item=tLabel_0;START_DATE;tLabel_1;END_DATE;tLabel_2;DEPT_CODE;tLabel_3;TOTALtPanel_0.TopToolBar=YtPanel_0.TopMenu=YTOTAL.Type=TTextFieldTOTAL.X=578TOTAL.Y=35TOTAL.Width=77TOTAL.Height=20TOTAL.Text=TOTAL.Enabled=NtLabel_3.Type=TLabeltLabel_3.X=545tLabel_3.Y=38tLabel_3.Width=34tLabel_3.Height=15tLabel_3.Text=总计DEPT_CODE.Type=科室DEPT_CODE.X=397DEPT_CODE.Y=34DEPT_CODE.Width=122DEPT_CODE.Height=21DEPT_CODE.Text=DEPT_CODE.HorizontalAlignment=2DEPT_CODE.PopupMenuHeader=代码,100;名称,100DEPT_CODE.PopupMenuWidth=300DEPT_CODE.PopupMenuHeight=300DEPT_CODE.FormatType=comboDEPT_CODE.ShowDownButton=YDEPT_CODE.Tip=科室DEPT_CODE.ShowColumnList=NAMEDEPT_CODE.HisOneNullRow=YDEPT_CODE.IpdFitFlg=YtLabel_2.Type=TLabeltLabel_2.X=358tLabel_2.Y=37tLabel_2.Width=34tLabel_2.Height=15tLabel_2.Text=科室tLabel_2.Color=蓝END_DATE.Type=TTextFormatEND_DATE.X=222END_DATE.Y=35END_DATE.Width=104END_DATE.Height=20END_DATE.Text=TTextFormatEND_DATE.FormatType=dateEND_DATE.Format=yyyy/MM/ddEND_DATE.showDownButton=YtLabel_1.Type=TLabeltLabel_1.X=203tLabel_1.Y=38tLabel_1.Width=10tLabel_1.Height=26tLabel_1.Text=~tLabel_1.FontSize=16START_DATE.Type=TTextFormatSTART_DATE.X=91START_DATE.Y=35START_DATE.Width=106START_DATE.Height=20START_DATE.Text=TTextFormatSTART_DATE.FormatType=dateSTART_DATE.Format=yyyy/MM/ddSTART_DATE.showDownButton=YtLabel_0.Type=TLabeltLabel_0.X=22tLabel_0.Y=38tLabel_0.Width=64tLabel_0.Height=15tLabel_0.Text=出院日期tLabel_0.Color=蓝