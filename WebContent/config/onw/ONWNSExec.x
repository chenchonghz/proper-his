<Type=TFrame>UI.Title=皮试UI.MenuConfig=%ROOT%\config\onw\ONWNSExecMenu.xUI.Width=1024UI.Height=600UI.toolbar=YUI.controlclassname=com.javahis.ui.onw.ONWNSExecControlUI.Item=panel1;TABLEUI.AutoX=YUI.AutoY=YUI.AutoWidth=YUI.AutoHeight=YUI.ShowTitle=NUI.TopToolBar=YUI.TopMenu=YUI.FocusList=UI.X=1UI.Y=1UI.ShowMenu=NUI.AutoSize=1UI.Text=UI.Name=TJ.Type=途径下拉列表TJ.X=636TJ.Y=92TJ.Width=81TJ.Height=23TJ.Text=TButtonTJ.showID=YTJ.showName=YTJ.showText=NTJ.showValue=NTJ.showPy1=YTJ.showPy2=YTJ.Editable=YTJ.Tip=频次TJ.TableShowList=namePON.Type=人员下拉列表PON.X=401PON.Y=94PON.Width=81PON.Height=23PON.Text=TButtonPON.showID=YPON.showName=YPON.showText=NPON.showValue=NPON.showPy1=YPON.showPy2=YPON.Editable=YPON.Tip=人员PON.TableShowList=namePON.ModuleParmString=PON.ModuleParmTag=FEQ.Type=频次下拉列表FEQ.X=295FEQ.Y=96FEQ.Width=81FEQ.Height=23FEQ.Text=TButtonFEQ.showID=YFEQ.showName=YFEQ.showText=NFEQ.showValue=NFEQ.showPy1=YFEQ.showPy2=YFEQ.Editable=YFEQ.Tip=频次FEQ.TableShowList=nameUNIT.Type=计量单位下拉列表UNIT.X=189UNIT.Y=94UNIT.Width=81UNIT.Height=23UNIT.Text=TButtonUNIT.showID=YUNIT.showName=YUNIT.showText=NUNIT.showValue=NUNIT.showPy1=YUNIT.showPy2=YUNIT.Editable=YUNIT.Tip=计量单位UNIT.TableShowList=nameTABLE.Type=TTableTABLE.X=42TABLE.Y=97TABLE.Width=1100TABLE.Height=500TABLE.SpacingRow=1TABLE.RowHeight=20TABLE.AutoWidth=YTABLE.AutoX=YTABLE.AutoY=NTABLE.Header=执,30,boolean;病案号,100;姓名,60;主,30,boolean;组,30;医嘱,160;开药量,50;单位,35,UNIT;频次,40,FEQ;用法,80,TJ;医生备注,120;开单医生,70,PON;护士备注,120;执行护士,70,NS;执行科室,100,DEPT;执行日期,160,timestamp,yyyy/MM/dd HH:mm:ss;停用时间,120TABLE.AutoHeight=YTABLE.AutoSize=3TABLE.SQL=TABLE.AutoModifyDataStore=NTABLE.ParmMap=PS_FLG;MR_NO;PAT_NAME;LINKMAIN_FLG;LINK_NO;ORDER_DESC;MEDI_QTY;MEDI_UNIT;FREQ_CODE;ROUTE_CODE;DR_NOTE;DR_CODE;NS_NOTE;NS_EXEC_CODE;NS_EXEC_DEPT;NS_EXEC_DATE;DC_ORDER_DATETABLE.DoubleClickedAction=TABLE.ClickedAction=TABLE.ColumnHorizontalAlignmentData=1,left;2,left;5,left;6,right;7,left;8,left;9,left;10,left;11,left;12,left;13,left;14,left;15,left;16,leftTABLE.LockRows=TABLE.LockColumns=1,2,3,4,5,6,7,8,9,10,11,12,13,14,16TABLE.Item=UNIT;FEQ;PON;TJ;NS;DEPTTABLE.RightClickedAction=TABLE.ChangeValueAction=TABLE.ChangeAction=panel1.Type=TPanelpanel1.X=3panel1.Y=3panel1.Width=1018panel1.Height=92panel1.AutoX=Ypanel1.AutoWidth=Ypanel1.Border=凸panel1.Item=tLabel_2;tLabel_3;tLabel_14;checkALL;checkYES;checkNO;exeALL;DATE_S;DATE_E;tLabel_0;MR_NO;tLabel_1;CASE_NO;NS;DEPTpanel1.AutoSize=3panel1.ControlClassName=DEPT.Type=科室DEPT.X=736DEPT.Y=60DEPT.Width=81DEPT.Height=23DEPT.Text=DEPT.HorizontalAlignment=2DEPT.PopupMenuHeader=代码,100;名称,100DEPT.PopupMenuWidth=300DEPT.PopupMenuHeight=300DEPT.PopupMenuFilter=ID,1;NAME,1;PY1,1DEPT.FormatType=comboDEPT.ShowDownButton=YDEPT.Tip=科室DEPT.ShowColumnList=NAMEDEPT.HisOneNullRow=YDEPT.Visible=NNS.Type=人员NS.X=635NS.Y=58NS.Width=81NS.Height=23NS.Text=NS.HorizontalAlignment=2NS.PopupMenuHeader=代码,100;名称,100NS.PopupMenuWidth=300NS.PopupMenuHeight=300NS.PopupMenuFilter=ID,1;NAME,1;PY1,1NS.FormatType=comboNS.ShowDownButton=YNS.Tip=人员NS.ShowColumnList=NAMENS.PosType=NS.HisOneNullRow=YNS.Visible=NCASE_NO.Type=TTextFieldCASE_NO.X=340CASE_NO.Y=38CASE_NO.Width=150CASE_NO.Height=20CASE_NO.Text=tLabel_1.Type=TLabeltLabel_1.X=264tLabel_1.Y=43tLabel_1.Width=72tLabel_1.Height=15tLabel_1.Text=就诊序号:MR_NO.Type=TTextFieldMR_NO.X=91MR_NO.Y=38MR_NO.Width=150MR_NO.Height=20MR_NO.Text=tLabel_0.Type=TLabeltLabel_0.X=12tLabel_0.Y=41tLabel_0.Width=64tLabel_0.Height=15tLabel_0.Text=病 案 号:DATE_E.Type=TTextFormatDATE_E.X=286DATE_E.Y=11DATE_E.Width=160DATE_E.Height=20DATE_E.Text=DATE_E.showDownButton=YDATE_E.Format=yyyy/MM/dd HH:mm:ssDATE_E.FormatType=dateDATE_E.HorizontalAlignment=2DATE_S.Type=TTextFormatDATE_S.X=91DATE_S.Y=11DATE_S.Width=160DATE_S.Height=20DATE_S.Text=DATE_S.showDownButton=YDATE_S.FormatType=dateDATE_S.Format=yyyy/MM/dd HH:mm:ssDATE_S.HorizontalAlignment=2exeALL.Type=TCheckBoxexeALL.X=324exeALL.Y=63exeALL.Width=81exeALL.Height=23exeALL.Text=全部执行exeALL.Selected=NexeALL.Enabled=YexeALL.Action=onCheckcheckNO.Type=TRadioButtoncheckNO.X=223checkNO.Y=63checkNO.Width=69checkNO.Height=23checkNO.Text=未执行checkNO.Group=3checkNO.Selected=YcheckNO.Action=checkYES.Type=TRadioButtoncheckYES.X=153checkYES.Y=63checkYES.Width=67checkYES.Height=23checkYES.Text=已执行checkYES.Group=3checkYES.Action=checkALL.Type=TRadioButtoncheckALL.X=87checkALL.Y=63checkALL.Width=56checkALL.Height=23checkALL.Text=全部checkALL.Group=3checkALL.Selected=NcheckALL.Action=tLabel_14.Type=TLabeltLabel_14.X=13tLabel_14.Y=67tLabel_14.Width=72tLabel_14.Height=15tLabel_14.Text=执行状态:tLabel_3.Type=TLabeltLabel_3.X=263tLabel_3.Y=14tLabel_3.Width=20tLabel_3.Height=15tLabel_3.Text=～tLabel_3.AutoSize=10tLabel_2.Type=TLabeltLabel_2.X=13tLabel_2.Y=14tLabel_2.Width=66tLabel_2.Height=15tLabel_2.Text=起讫日期: