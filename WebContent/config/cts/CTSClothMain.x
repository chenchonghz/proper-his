<Type=TFrame>UI.Title=布衣维护窗口UI.Width=1500UI.Height=1500UI.toolbar=YUI.Item=tPanel_1;TABLEUI.AutoWidth=YUI.AutoX=YUI.AutoY=YUI.AutoHeight=YUI.AutoSize=0UI.Y=0UI.ShowTitle=YUI.MenuConfig=%ROOT%\config\cts\CTSClothMainMenu.xUI.TopToolBar=YUI.TopMenu=YUI.ControlClassName=com.javahis.ui.cts.CTSCothMainControlUI.FocusList=ID;NAME;PY1;PY2;ENG_DESC;SEQ;DESCRIPTIONTABLE.Type=TTableTABLE.X=6TABLE.Y=197TABLE.Width=81TABLE.Height=1242TABLE.SpacingRow=1TABLE.RowHeight=20TABLE.AutoX=YTABLE.AutoHeight=YTABLE.AutoWidth=YTABLE.ParmMap=CLOTH_NO;INV_CHN_DESC;DESCRIPTION;COST_PRICE;OWNER_CODE;STATION_CODE;TURN_POINT;ACTIVE_FLG;PAT_FLG;WRITE_FLGTABLE.Header=编号,100;种类,200;规格,100;价钱,70,double;所有人,100,OWNER;成本中心,100,STATION_CODE;转发点,150,TURN_POINT;使用注记,60,boolean;是否分人,60,boolean;是否写过,100,WRITE_FLGTABLE.LockRows=TABLE.LockColumns=1,2,3,4,5,6,7,8,9TABLE.ClickedAction=onClickTableTABLE.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,right;4,left;5,left;6,left;9,leftTABLE.Item=STATION_CODE;WRITE_FLG;TURN_POINTTABLE.ColumnSelectionAllowed=NtPanel_1.Type=TPaneltPanel_1.X=7tPanel_1.Y=0tPanel_1.Width=1500tPanel_1.Height=194tPanel_1.Border=组|信息维护tPanel_1.AutoX=YtPanel_1.AutoY=YtPanel_1.AutoWidth=YtPanel_1.AutoHeight=NtPanel_1.AutoSize=0tPanel_1.Item=tLabel_16;CLOTH_NO;tLabel_17;tLabel_19;GROUP;tLabel_0;tLabel_1;tLabel_2;OWNER;tLabel_3;tRadioButton_0;tRadioButton_1;ACTIVE_FLG;WRITE;READ;OPEN;DISCONN;RFID_TABLE;INV_CODE1;STATION_CODE1;WRITE_FLG;OWNER;tLabel_4;OWNER_CODE;tLabel_5;TURN_POINT12;STATION_CODE;TURN_POINT;洗衣布服种类_0;洗衣布服种类_1;INV_CODEINV_CODE.Type=洗衣布服种类INV_CODE.X=368INV_CODE.Y=47INV_CODE.Width=139INV_CODE.Height=23INV_CODE.Text=INV_CODE.HorizontalAlignment=2INV_CODE.PopupMenuHeader=代码,100;名称,150;规格,100INV_CODE.PopupMenuWidth=370INV_CODE.PopupMenuHeight=350INV_CODE.PopupMenuFilter=ID,1;NAME,1;DESCRIPTION,1;PY1,1INV_CODE.FormatType=comboINV_CODE.ShowDownButton=YINV_CODE.Tip=布服种类INV_CODE.ShowColumnList=NAMEINV_CODE.HisOneNullRow=Y洗衣布服种类_1.Type=洗衣布服种类洗衣布服种类_1.X=271洗衣布服种类_1.Y=24洗衣布服种类_0.Type=洗衣布服种类洗衣布服种类_0.X=377洗衣布服种类_0.Y=30TURN_POINT.Type=洗衣转发点TURN_POINT.X=81TURN_POINT.Y=105TURN_POINT.Width=139TURN_POINT.Height=23TURN_POINT.Text=TURN_POINT.HorizontalAlignment=2TURN_POINT.PopupMenuHeader=代码,100;名称,100TURN_POINT.PopupMenuWidth=300TURN_POINT.PopupMenuHeight=300TURN_POINT.PopupMenuFilter=ID,1;NAME,1;PY1,1TURN_POINT.FormatType=comboTURN_POINT.ShowDownButton=YTURN_POINT.Tip=洗衣转发点TURN_POINT.ShowColumnList=NAMETURN_POINT.HisOneNullRow=YSTATION_CODE.Type=成本中心下拉区域STATION_CODE.X=369STATION_CODE.Y=75STATION_CODE.Width=139STATION_CODE.Height=23STATION_CODE.Text=STATION_CODE.HorizontalAlignment=2STATION_CODE.PopupMenuHeader=代码,100;名称,100STATION_CODE.PopupMenuWidth=300STATION_CODE.PopupMenuHeight=300STATION_CODE.FormatType=comboSTATION_CODE.ShowDownButton=YSTATION_CODE.Tip=成本中心STATION_CODE.ShowColumnList=NAMESTATION_CODE.HisOneNullRow=YTURN_POINT12.Type=TTextFieldTURN_POINT12.X=78TURN_POINT12.Y=134TURN_POINT12.Width=139TURN_POINT12.Height=20TURN_POINT12.Text=TURN_POINT12.Visible=NtLabel_5.Type=TLabeltLabel_5.X=13tLabel_5.Y=107tLabel_5.Width=58tLabel_5.Height=15tLabel_5.Text=转发点：OWNER_CODE.Type=TTextFieldOWNER_CODE.X=168OWNER_CODE.Y=73OWNER_CODE.Width=92OWNER_CODE.Height=23OWNER_CODE.Text=tLabel_4.Type=TLabeltLabel_4.X=298tLabel_4.Y=108tLabel_4.Width=72tLabel_4.Height=15tLabel_4.Text=是否写过：OWNER.Type=洗衣人员OWNER.X=82OWNER.Y=75OWNER.Width=139OWNER.Height=23OWNER.Text=OWNER.HorizontalAlignment=2OWNER.PopupMenuHeader=ID,100;NAME,100OWNER.PopupMenuWidth=300OWNER.PopupMenuHeight=300OWNER.PopupMenuFilter=ID,1;NAME,1OWNER.FormatType=comboOWNER.ShowDownButton=YOWNER.Tip=洗衣人员OWNER.ShowColumnList=NAMEOWNER.Visible=YOWNER.HisOneNullRow=YOWNER.Action=selStationOWNER.FocusLostAction=selStationOWNER.ClickedAction=selStationOWNER.RightClickedAction=selStationOWNER.DoubleClickedAction=selStationWRITE_FLG.Type=TComboBoxWRITE_FLG.X=370WRITE_FLG.Y=104WRITE_FLG.Width=80WRITE_FLG.Height=22WRITE_FLG.Text=TButtonWRITE_FLG.showID=YWRITE_FLG.Editable=YWRITE_FLG.TableShowList=textWRITE_FLG.Visible=YWRITE_FLG.StringData=[[id,text],['',''],['Y','已写过'],['N','未写过']]STATION_CODE1.Type=物资部门下拉区域STATION_CODE1.X=414STATION_CODE1.Y=15STATION_CODE1.Width=139STATION_CODE1.Height=23STATION_CODE1.Text=STATION_CODE1.HorizontalAlignment=2STATION_CODE1.PopupMenuHeader=代码,100;名称,100STATION_CODE1.PopupMenuWidth=300STATION_CODE1.PopupMenuHeight=300STATION_CODE1.PopupMenuFilter=ID,1;NAME,1;PY1,1STATION_CODE1.FormatType=comboSTATION_CODE1.ShowDownButton=YSTATION_CODE1.Tip=物资部门STATION_CODE1.ShowColumnList=NAMESTATION_CODE1.Visible=NINV_CODE1.Type=TTextFieldINV_CODE1.X=340INV_CODE1.Y=17INV_CODE1.Width=139INV_CODE1.Height=20INV_CODE1.Text=INV_CODE1.Visible=NRFID_TABLE.Type=TTableRFID_TABLE.X=543RFID_TABLE.Y=42RFID_TABLE.Width=452RFID_TABLE.Height=113RFID_TABLE.SpacingRow=1RFID_TABLE.RowHeight=20RFID_TABLE.Header=RFID,120;员工号,80;所有人,80,;成本中心,110,STATION_CODE;是否分人,60,booleanRFID_TABLE.ParmMap=RFID;OWNER;OWNER_CODE;STATION_CODE;PAT_FLGRFID_TABLE.LockColumns=allRFID_TABLE.Item=STATION_CODERFID_TABLE.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,leftDISCONN.Type=TButtonDISCONN.X=138DISCONN.Y=159DISCONN.Width=114DISCONN.Height=23DISCONN.Text=断开读写器DISCONN.Action=disConnDISCONN.Visible=YDISCONN.Enabled=NOPEN.Type=TButtonOPEN.X=9OPEN.Y=158OPEN.Width=113OPEN.Height=23OPEN.Text=连接读写器OPEN.Action=creatOPEN.Visible=YREAD.Type=TButtonREAD.X=348READ.Y=158READ.Width=81READ.Height=23READ.Text=读取READ.Action=readWRITE.Type=TButtonWRITE.X=443WRITE.Y=158WRITE.Width=81WRITE.Height=23WRITE.Text=写入WRITE.Action=writeWRITE.Enabled=YACTIVE_FLG.Type=TCheckBoxACTIVE_FLG.X=438ACTIVE_FLG.Y=132ACTIVE_FLG.Width=54ACTIVE_FLG.Height=23ACTIVE_FLG.Text=使用ACTIVE_FLG.Selected=YtRadioButton_1.Type=TRadioButtontRadioButton_1.X=355tRadioButton_1.Y=130tRadioButton_1.Width=71tRadioButton_1.Height=23tRadioButton_1.Text=不分人tRadioButton_1.Group=tRadioButton_1.Action=onNoPattRadioButton_1.Selected=YtRadioButton_0.Type=TRadioButtontRadioButton_0.X=293tRadioButton_0.Y=130tRadioButton_0.Width=54tRadioButton_0.Height=23tRadioButton_0.Text=分人tRadioButton_0.Group=tRadioButton_0.Selected=NtRadioButton_0.Action=onPattLabel_3.Type=TLabeltLabel_3.X=298tLabel_3.Y=79tLabel_3.Width=72tLabel_3.Height=15tLabel_3.Text=成本中心:OWNER.Type=人员OWNER.X=81OWNER.Y=73OWNER.Width=82OWNER.Height=23OWNER.Text=OWNER.HorizontalAlignment=2OWNER.PopupMenuHeader=代码,100;名称,100OWNER.PopupMenuWidth=300OWNER.PopupMenuHeight=300OWNER.PopupMenuFilter=ID,1;NAME,1;PY1,1OWNER.FormatType=comboOWNER.ShowDownButton=YOWNER.Tip=人员OWNER.ShowColumnList=IDOWNER.Action=selStationOWNER.FocusLostAction=selStationOWNER.ClickedAction=selStationOWNER.RightClickedAction=selStationOWNER.DoubleClickedAction=selStationOWNER.HisOneNullRow=YOWNER.Visible=YOWNER.EndDateFlg=1tLabel_2.Type=TLabeltLabel_2.X=13tLabel_2.Y=21tLabel_2.Width=115tLabel_2.Height=16tLabel_2.Text=布衣维护tLabel_2.Color=蓝tLabel_1.Type=TLabeltLabel_1.X=511tLabel_1.Y=49tLabel_1.Width=10tLabel_1.Height=15tLabel_1.Text=*tLabel_1.Color=红tLabel_0.Type=TLabeltLabel_0.X=229tLabel_0.Y=50tLabel_0.Width=10tLabel_0.Height=15tLabel_0.Text=*tLabel_0.Color=红GROUP.Type=TLabelGROUP.X=525GROUP.Y=21GROUP.Width=436GROUP.Height=15GROUP.Text=GROUP.Color=蓝tLabel_19.Type=TLabeltLabel_19.X=13tLabel_19.Y=79tLabel_19.Width=56tLabel_19.Height=15tLabel_19.Text=所有者:tLabel_17.Type=TLabeltLabel_17.X=298tLabel_17.Y=50tLabel_17.Width=70tLabel_17.Height=15tLabel_17.Text=衣服种类:tLabel_17.Color=蓝CLOTH_NO.Type=TTextFieldCLOTH_NO.X=81CLOTH_NO.Y=47CLOTH_NO.Width=139CLOTH_NO.Height=20CLOTH_NO.Text=CLOTH_NO.Tip=编号CLOTH_NO.InputLength=20CLOTH_NO.Enabled=YtLabel_16.Type=TLabeltLabel_16.X=13tLabel_16.Y=50tLabel_16.Width=56tLabel_16.Height=15tLabel_16.Text=RFID  :tLabel_16.Color=BLUE