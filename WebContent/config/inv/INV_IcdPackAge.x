## TBuilder Config File ## Title:## Company:JavaHis## Author:fux 2014.04.18## version 1.0#<Type=TFrame>UI.Title=手术包绑定基本档UI.MenuConfig=%ROOT%\config\inv\INV_IcdPackAgeMenu.xUI.Width=1485UI.Height=577UI.toolbar=YUI.controlclassname=com.javahis.ui.inv.INVOpeAndPackageBaseControlUI.item=tPanel_0;tPanel_1UI.layout=nullUI.Y=5UI.AutoY=YUI.AutoWidth=YUI.TopMenu=YUI.TopToolBar=YtPanel_1.Type=TPaneltPanel_1.X=5tPanel_1.Y=96tPanel_1.Width=1475tPanel_1.Height=470tPanel_1.Border=组|tPanel_1.Item=TABLE;SEQ_FLG_T;GDVAS_CODE_TtPanel_1.AutoX=NtPanel_1.AutoY=NtPanel_1.AutoWidth=YGDVAS_CODE_T.Type=TComboBoxGDVAS_CODE_T.X=387GDVAS_CODE_T.Y=95GDVAS_CODE_T.Width=81GDVAS_CODE_T.Height=23GDVAS_CODE_T.Text=TButtonGDVAS_CODE_T.showID=YGDVAS_CODE_T.Editable=YGDVAS_CODE_T.StringData=[[id,name],[,],['1',股动脉],['2',挠动脉]]GDVAS_CODE_T.ShowName=YGDVAS_CODE_T.ShowValue=YGDVAS_CODE_T.TableShowList=nameSEQ_FLG_T.Type=TComboBoxSEQ_FLG_T.X=283SEQ_FLG_T.Y=90SEQ_FLG_T.Width=81SEQ_FLG_T.Height=23SEQ_FLG_T.Text=TButtonSEQ_FLG_T.showID=YSEQ_FLG_T.Editable=YSEQ_FLG_T.ShowName=YSEQ_FLG_T.ShowValue=YSEQ_FLG_T.TableShowList=nameSEQ_FLG_T.StringData=[[id,name],['0',诊疗包],['1',器材脉]]TABLE.Type=TTableTABLE.X=4TABLE.Y=8TABLE.Width=1453TABLE.Height=451TABLE.SpacingRow=1TABLE.RowHeight=20TABLE.AutoY=YTABLE.AutoX=YTABLE.AutoWidth=YTABLE.AutoHeight=YTABLE.Header=手术ICD;手术名称;手术包代码;手术包名称;手术包数量;手术包类型,100,SEQ_FLG_T;入录血管,100,GDVAS_CODE_TTABLE.ParmMap=OPERATION_ICD;OPT_CHN_DESC;PACK_CODE;PACK_DESC;QTY;SEQ_FLG;GDVAS_CODETABLE.ClickedAction=onTableClickedTABLE.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,left;4,right;5,left;6,leftTABLE.LockColumns=allTABLE.Item=SEQ_FLG_T;GDVAS_CODE_TtPanel_0.Type=TPaneltPanel_0.X=5tPanel_0.Y=5tPanel_0.Width=1475tPanel_0.Height=84tPanel_0.Border=组|tPanel_0.Item=tLabel_0;OPERATION_ICD;OPT_CHN_DESC;tLabel_2;PACK_CODE;PACK_DESC;tLabel_3;QTY;tLabel_6;GDVAS_CODEtPanel_0.AutoY=YtPanel_0.AutoX=YtPanel_0.AutoWidth=YGDVAS_CODE.Type=TComboBoxGDVAS_CODE.X=514GDVAS_CODE.Y=14GDVAS_CODE.Width=95GDVAS_CODE.Height=20GDVAS_CODE.Text=TButtonGDVAS_CODE.showID=NGDVAS_CODE.Editable=YGDVAS_CODE.ShowName=YGDVAS_CODE.StringData=[[id,name],[,],['1',股动脉],['2',挠动脉]]tLabel_6.Type=TLabeltLabel_6.X=434tLabel_6.Y=17tLabel_6.Width=72tLabel_6.Height=15tLabel_6.Text=入录血管:QTY.Type=TNumberTextFieldQTY.X=516QTY.Y=45QTY.Width=67QTY.Height=20QTY.Text=0QTY.Format=#########0tLabel_3.Type=TLabeltLabel_3.X=434tLabel_3.Y=47tLabel_3.Width=89tLabel_3.Height=15tLabel_3.Text=手术包数量:PACK_DESC.Type=TTextFieldPACK_DESC.X=262PACK_DESC.Y=45PACK_DESC.Width=162PACK_DESC.Height=20PACK_DESC.Text=PACK_CODE.Type=TTextFieldPACK_CODE.X=145PACK_CODE.Y=46PACK_CODE.Width=112PACK_CODE.Height=20PACK_CODE.Text=tLabel_2.Type=TLabeltLabel_2.X=26tLabel_2.Y=49tLabel_2.Width=126tLabel_2.Height=15tLabel_2.Text=手术器材/耗用包：OPT_CHN_DESC.Type=TTextFieldOPT_CHN_DESC.X=207OPT_CHN_DESC.Y=9OPT_CHN_DESC.Width=161OPT_CHN_DESC.Height=20OPT_CHN_DESC.Text=OPERATION_ICD.Type=TTextFieldOPERATION_ICD.X=91OPERATION_ICD.Y=9OPERATION_ICD.Width=111OPERATION_ICD.Height=20OPERATION_ICD.Text=tLabel_0.Type=TLabeltLabel_0.X=26tLabel_0.Y=13tLabel_0.Width=72tLabel_0.Height=15tLabel_0.Text=手术ICD：