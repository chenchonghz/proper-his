#  # Title: 就诊序号选择  #  # Description:就诊序号选择  #  # Copyright: JavaHis (c) 2008  #  # @author fudw  # @version 1.0<Type=TFrame>UI.Title=单病种手术资料查询//UI.MenuConfig=%ROOT%\config\opb\OPBChooseVisit_Menu.xUI.Width=580UI.Height=397UI.toolbar=YUI.controlclassname=com.javahis.ui.ins.INSOperatorControlUI.item=TABLE;tLabel_0;tLabel_1;tLabel_2;MR_NO;CASE_NO;PAT_NAME;USER_CODE;DEPT_CODE;ANA_CODEUI.layout=nullUI.FocusList=UI.X=0UI.Y=0UI.TopMenu=YUI.TopToolBar=YUI.ShowTitle=NUI.AutoX=NUI.AutoY=NUI.AutoWidth=NUI.AutoHeight=NUI.AutoSize=0UI.Border=凸UI.MenuConfig=%ROOT%/config/ins/INSOperatorMenu.xANA_CODE.Type=麻醉方式ANA_CODE.X=197ANA_CODE.Y=81ANA_CODE.Width=81ANA_CODE.Height=23ANA_CODE.Text=TButtonANA_CODE.showID=YANA_CODE.showName=YANA_CODE.showText=NANA_CODE.showValue=NANA_CODE.showPy1=NANA_CODE.showPy2=NANA_CODE.Editable=YANA_CODE.Tip=麻醉方式ANA_CODE.TableShowList=nameANA_CODE.ModuleParmString=GROUP_ID:OPE_ANAMETHODANA_CODE.ModuleParmTag=DEPT_CODE.Type=科室DEPT_CODE.X=173DEPT_CODE.Y=113DEPT_CODE.Width=81DEPT_CODE.Height=23DEPT_CODE.Text=DEPT_CODE.HorizontalAlignment=2DEPT_CODE.PopupMenuHeader=代码,100;名称,100DEPT_CODE.PopupMenuWidth=300DEPT_CODE.PopupMenuHeight=300DEPT_CODE.FormatType=comboDEPT_CODE.ShowDownButton=YDEPT_CODE.Tip=科室DEPT_CODE.ShowColumnList=NAMEUSER_CODE.Type=人员USER_CODE.X=289USER_CODE.Y=105USER_CODE.Width=81USER_CODE.Height=23USER_CODE.Text=USER_CODE.HorizontalAlignment=2USER_CODE.PopupMenuHeader=代码,100;名称,100USER_CODE.PopupMenuWidth=300USER_CODE.PopupMenuHeight=300USER_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1USER_CODE.FormatType=comboUSER_CODE.ShowDownButton=YUSER_CODE.Tip=人员USER_CODE.ShowColumnList=NAMEPAT_NAME.Type=TTextFieldPAT_NAME.X=81PAT_NAME.Y=48PAT_NAME.Width=113PAT_NAME.Height=20PAT_NAME.Text=PAT_NAME.Enabled=NCASE_NO.Type=TTextFieldCASE_NO.X=307CASE_NO.Y=17CASE_NO.Width=118CASE_NO.Height=20CASE_NO.Text=CASE_NO.Enabled=NMR_NO.Type=TTextFieldMR_NO.X=81MR_NO.Y=18MR_NO.Width=113MR_NO.Height=20MR_NO.Text=MR_NO.Enabled=NtLabel_2.Type=TLabeltLabel_2.X=22tLabel_2.Y=20tLabel_2.Width=53tLabel_2.Height=15tLabel_2.Text=病案号:tLabel_2.Color=黑tLabel_1.Type=TLabeltLabel_1.X=35tLabel_1.Y=51tLabel_1.Width=41tLabel_1.Height=15tLabel_1.Text=姓名:tLabel_1.Color=黑tLabel_0.Type=TLabeltLabel_0.X=236tLabel_0.Y=20tLabel_0.Width=68tLabel_0.Height=15tLabel_0.Text=看诊序号:tLabel_0.Color=黑TABLE.Type=TTableTABLE.X=6TABLE.Y=79TABLE.Width=492TABLE.Height=305TABLE.SpacingRow=1TABLE.RowHeight=20TABLE.AutoWidth=YTABLE.Header=手术日期,100;手术名称,200;手术医师,80,USER_CODE;1助姓名,80,USER_CODE;麻醉方式,100,ANA_CODE;麻醉医师,80,USER_CODE;手术科室,80,DEPT_CODE;手术记录单号,120TABLE.StringData=TABLE.ParmMap=OP_DATE;ICD_CHN_DESC;MAIN_SURGEON;REAL_AST1;ANA_CODE;ANA_USER1;OP_DEPT_CODE;OP_RECORD_NOTABLE.LockRows=TABLE.Item=USER_CODE;DEPT_CODE;ANA_CODETABLE.LockColumns=allTABLE.AutoHeight=Y