## TBuilder Config File ## Title:## Company:JavaHis## Author:caoy 2013.10.28## version 1.0#<Type=TFrame>UI.Title=抗菌药品手术预防药品使用报表UI.MenuConfig=%ROOT%\config\udd\UDDOpePreventionMenu.xUI.Width=1485UI.Height=1485UI.toolbar=YUI.controlclassname=com.javahis.ui.udd.UDDOpePreventionControlUI.item=tPanel_0;tPanel_1UI.layout=nullUI.TopMenu=YUI.TopToolBar=YUI.AutoWidth=YUI.AutoHeight=YUI.AutoW=YUI.AutoH=YUI.AutoY=NUI.AutoX=NtPanel_1.Type=TPaneltPanel_1.X=5tPanel_1.Y=81tPanel_1.Width=1475tPanel_1.Height=1399tPanel_1.Border=组|抗菌药品手术预防药品使用报表tPanel_1.AutoWidth=YtPanel_1.AutoHeight=YtPanel_1.Item=TABLETABLE.Type=TTableTABLE.X=12TABLE.Y=24TABLE.Width=1452TABLE.Height=1365TABLE.SpacingRow=1TABLE.RowHeight=20TABLE.AutoY=YTABLE.AutoWidth=YTABLE.AutoHeight=YTABLE.Header=就诊号,100;病案号,100;病患名称,100;医嘱名称,280;手术ICD,200;预防用药开立时间,160;手术时间,160;时间差值,80TABLE.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,left;4,left;5,left;6,left;7,rightTABLE.LockColumns=ALLTABLE.ParmMap=CASE_NO;MR_NO;PAT_NAME;ORDER_DESC;OP_CODE1;ORDER_DATE;OP_DATE;DATE_DEFFEREBCETABLE.AutoModifyDataStore=NTABLE.AutoX=YtPanel_0.Type=TPaneltPanel_0.X=6tPanel_0.Y=3tPanel_0.Width=1474tPanel_0.Height=80tPanel_0.Border=组|查询条件tPanel_0.AutoWidth=YtPanel_0.Item=tLabel_0;S_DATE;tLabel_1;E_DATE;tLabel_2;DEPT_CODE;tLabel_4;VS_DR_CODE;VS_DR_CODE.Type=人员VS_DR_CODE.X=743VS_DR_CODE.Y=27VS_DR_CODE.Width=101VS_DR_CODE.Height=23VS_DR_CODE.Text=VS_DR_CODE.HorizontalAlignment=2VS_DR_CODE.PopupMenuHeader=代码,100;名称,100VS_DR_CODE.PopupMenuWidth=300VS_DR_CODE.PopupMenuHeight=300VS_DR_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1VS_DR_CODE.FormatType=comboVS_DR_CODE.ShowDownButton=YVS_DR_CODE.Tip=人员VS_DR_CODE.ShowColumnList=NAMEVS_DR_CODE.HisOneNullRow=YVS_DR_CODE.Dept=<DEPT_CODE>VS_DR_CODE.EndDateFlg=1VS_DR_CODE.PosType=1tLabel_4.Type=TLabeltLabel_4.X=705tLabel_4.Y=31tLabel_4.Width=45tLabel_4.Height=15tLabel_4.Text=医生：tLabel_4.Color=blueDEPT_CODE.Type=科室DEPT_CODE.X=569DEPT_CODE.Y=26DEPT_CODE.Width=116DEPT_CODE.Height=23DEPT_CODE.Text=DEPT_CODE.HorizontalAlignment=2DEPT_CODE.PopupMenuHeader=代码,100;名称,100DEPT_CODE.PopupMenuWidth=300DEPT_CODE.PopupMenuHeight=300DEPT_CODE.FormatType=comboDEPT_CODE.ShowDownButton=YDEPT_CODE.Tip=科室DEPT_CODE.ShowColumnList=NAMEDEPT_CODE.HisOneNullRow=YDEPT_CODE.Action=VS_DR_CODE|onQuery;DEPT_CODE.ClassIfy=0tLabel_2.Type=TLabeltLabel_2.X=532tLabel_2.Y=31tLabel_2.Width=49tLabel_2.Height=15tLabel_2.Text=科室：tLabel_2.Color=blueE_DATE.Type=TTextFormatE_DATE.X=360E_DATE.Y=28E_DATE.Width=164E_DATE.Height=20E_DATE.Text=E_DATE.showDownButton=YE_DATE.Format=yyyy/MM/dd HH:mm:ssE_DATE.FormatType=datetLabel_1.Type=TLabeltLabel_1.X=274tLabel_1.Y=31tLabel_1.Width=91tLabel_1.Height=15tLabel_1.Text=出院迄时间：tLabel_1.Color=blueS_DATE.Type=TTextFormatS_DATE.X=105S_DATE.Y=28S_DATE.Width=161S_DATE.Height=20S_DATE.Text=S_DATE.FormatType=dateS_DATE.Format=yyyy/MM/dd HH:mm:ssS_DATE.showDownButton=YtLabel_0.Type=TLabeltLabel_0.X=23tLabel_0.Y=31tLabel_0.Width=87tLabel_0.Height=15tLabel_0.Text=出院起时间：tLabel_0.Color=blue