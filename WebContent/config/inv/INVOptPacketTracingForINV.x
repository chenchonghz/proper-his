## TBuilder Config File ## Title:## Company:JavaHis## Author:fux 2013.11.07## version 1.0#<Type=TFrame>UI.Title=手术包物资溯源UI.MenuConfig=%ROOT%\config\inv\INVOptPacketTracingMenu.xUI.Width=1024UI.Height=748UI.toolbar=YUI.controlclassname=com.javahis.ui.inv.INVOptPacketTracingControlUI.item=tPanel_3;tPanel_4UI.layout=nullUI.TopMenu=YUI.TopToolBar=YtPanel_4.Type=TPaneltPanel_4.X=17tPanel_4.Y=126tPanel_4.Width=716tPanel_4.Height=437tPanel_4.Border=组|明细信息tPanel_4.Item=TABLE;USER1;USER2USER2.Type=人员USER2.X=269USER2.Y=84USER2.Width=81USER2.Height=23USER2.Text=USER2.HorizontalAlignment=2USER2.PopupMenuHeader=代码,100;名称,100USER2.PopupMenuWidth=300USER2.PopupMenuHeight=300USER2.PopupMenuFilter=ID,1;NAME,1;PY1,1USER2.FormatType=comboUSER2.ShowDownButton=YUSER2.Tip=人员USER2.ShowColumnList=NAMEUSER1.Type=人员USER1.X=107USER1.Y=82USER1.Width=81USER1.Height=23USER1.Text=USER1.HorizontalAlignment=2USER1.PopupMenuHeader=代码,100;名称,100USER1.PopupMenuWidth=300USER1.PopupMenuHeight=300USER1.PopupMenuFilter=ID,1;NAME,1;PY1,1USER1.FormatType=comboUSER1.ShowDownButton=YUSER1.Tip=人员USER1.ShowColumnList=NAMETABLE.Type=TTableTABLE.X=11TABLE.Y=26TABLE.Width=696TABLE.Height=395TABLE.SpacingRow=1TABLE.RowHeight=20TABLE.Header=手术包编码,100;手术包名称,100;计费日期,100;打包日期,100;打包人员,100,USER1;计费人员,100,USER2;病案号,100;病人姓名,100;术间,100;灭菌锅次,100;灭菌程序,100TABLE.ParmMap=PACK_CODE;PACK_DESC;BILL_DATE;OPT_DATE;OPT_USER;CASEIER_CODE;MR_NO;PAT_NAME;OP_ROOM;STERILIZATION_POTSEQ;STERILLZATION_PROGRAMTABLE.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,left;4,left;5,left;6,left;7,left;8,left;9,left;10,leftTABLE.Item=USER1;USER2tPanel_3.Type=TPaneltPanel_3.X=14tPanel_3.Y=18tPanel_3.Width=718tPanel_3.Height=106tPanel_3.Border=组|查询条件tPanel_3.Item=tLabel_17;tLabel_18;tLabel_19;tLabel_20;tLabel_21;MR_NO;DEPT_CODE;USER_TIMES;USER_TIMEE;tLabel_22;PACK_CODE;BARCODEBARCODE.Type=TTextFieldBARCODE.X=511BARCODE.Y=70BARCODE.Width=106BARCODE.Height=20BARCODE.Text=PACK_CODE.Type=TTextFieldPACK_CODE.X=302PACK_CODE.Y=70PACK_CODE.Width=114PACK_CODE.Height=20PACK_CODE.Text=tLabel_22.Type=TLabeltLabel_22.X=226tLabel_22.Y=41tLabel_22.Width=24tLabel_22.Height=15tLabel_22.Text=~USER_TIMEE.Type=TTextFormatUSER_TIMEE.X=248USER_TIMEE.Y=31USER_TIMEE.Width=97USER_TIMEE.Height=20USER_TIMEE.Text=USER_TIMEE.showDownButton=YUSER_TIMEE.FormatType=dateUSER_TIMES.Type=TTextFormatUSER_TIMES.X=127USER_TIMES.Y=31USER_TIMES.Width=94USER_TIMES.Height=20USER_TIMES.Text=USER_TIMES.FormatType=dateUSER_TIMES.showDownButton=YDEPT_CODE.Type=物资部门下拉区域DEPT_CODE.X=413DEPT_CODE.Y=32DEPT_CODE.Width=122DEPT_CODE.Height=23DEPT_CODE.Text=DEPT_CODE.HorizontalAlignment=2DEPT_CODE.PopupMenuHeader=代码,100;名称,100DEPT_CODE.PopupMenuWidth=300DEPT_CODE.PopupMenuHeight=300DEPT_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1DEPT_CODE.FormatType=comboDEPT_CODE.ShowDownButton=YDEPT_CODE.Tip=物资部门DEPT_CODE.ShowColumnList=NAMEMR_NO.Type=TTextFieldMR_NO.X=82MR_NO.Y=70MR_NO.Width=117MR_NO.Height=20MR_NO.Text=tLabel_21.Type=TLabeltLabel_21.X=31tLabel_21.Y=34tLabel_21.Width=100tLabel_21.Height=15tLabel_21.Text=使用日期区间：tLabel_20.Type=TLabeltLabel_20.X=28tLabel_20.Y=73tLabel_20.Width=56tLabel_20.Height=15tLabel_20.Text=病案号：tLabel_19.Type=TLabeltLabel_19.X=429tLabel_19.Y=72tLabel_19.Width=94tLabel_19.Height=15tLabel_19.Text=手术包条码：tLabel_18.Type=TLabeltLabel_18.X=212tLabel_18.Y=73tLabel_18.Width=90tLabel_18.Height=15tLabel_18.Text=手术包名称：tLabel_17.Type=TLabeltLabel_17.X=362tLabel_17.Y=34tLabel_17.Width=46tLabel_17.Height=15tLabel_17.Text=部门：