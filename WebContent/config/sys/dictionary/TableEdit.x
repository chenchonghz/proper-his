<Type=TFrame>UI.Title=字典维护窗口UI.Width=1500UI.Height=1500UI.toolbar=YUI.Item=tPanel_1;TableUI.AutoWidth=YUI.AutoX=YUI.AutoY=YUI.AutoHeight=YUI.AutoSize=0UI.Y=0UI.ShowTitle=YUI.MenuConfig=%ROOT%\config\sys\dictionary\TableEditMenu.xUI.TopToolBar=YUI.TopMenu=YUI.ControlClassName=com.javahis.ui.sys.dictionary.TableEditControlUI.FocusList=ID;NAME;PY1;PY2;ENG_DESC;SEQ;DESCRIPTIONtPanel_1.Type=TPaneltPanel_1.X=7tPanel_1.Y=0tPanel_1.Width=1500tPanel_1.Height=237tPanel_1.Border=组|信息维护tPanel_1.AutoX=YtPanel_1.AutoY=YtPanel_1.AutoWidth=YtPanel_1.AutoHeight=NtPanel_1.AutoSize=0tPanel_1.Item=tLabel_16;ID;tLabel_17;NAME;tLabel_18;ENG_DESC;tLabel_19;PY1;tLabel_20;PY2;tLabel_21;SEQ;tLabel_26;DESCRIPTION;GROUP;tLabel_0;tLabel_1;FLG;tLabel_2;tLabel_3;tLabel_4;STA1_CODE;STA2_CODE;STA3_CODESTA3_CODE.Type=TTextFieldSTA3_CODE.X=69STA3_CODE.Y=210STA3_CODE.Width=385STA3_CODE.Height=20STA3_CODE.Text=STA2_CODE.Type=TTextFieldSTA2_CODE.X=69STA2_CODE.Y=187STA2_CODE.Width=385STA2_CODE.Height=20STA2_CODE.Text=STA1_CODE.Type=TTextFieldSTA1_CODE.X=70STA1_CODE.Y=162STA1_CODE.Width=382STA1_CODE.Height=20STA1_CODE.Text=tLabel_4.Type=TLabeltLabel_4.X=13tLabel_4.Y=213tLabel_4.Width=56tLabel_4.Height=15tLabel_4.Text=对应三:tLabel_3.Type=TLabeltLabel_3.X=13tLabel_3.Y=190tLabel_3.Width=51tLabel_3.Height=15tLabel_3.Text=对应二:tLabel_2.Type=TLabeltLabel_2.X=13tLabel_2.Y=167tLabel_2.Width=54tLabel_2.Height=15tLabel_2.Text=对应一:FLG.Type=TCheckBoxFLG.X=460FLG.Y=208FLG.Width=81FLG.Height=23FLG.Text=默认tLabel_1.Type=TLabeltLabel_1.X=455tLabel_1.Y=49tLabel_1.Width=10tLabel_1.Height=15tLabel_1.Text=*tLabel_1.Color=红tLabel_0.Type=TLabeltLabel_0.X=211tLabel_0.Y=50tLabel_0.Width=10tLabel_0.Height=15tLabel_0.Text=*tLabel_0.Color=红GROUP.Type=TLabelGROUP.X=14GROUP.Y=22GROUP.Width=436GROUP.Height=15GROUP.Text=GROUP.Color=蓝DESCRIPTION.Type=TTextFieldDESCRIPTION.X=70DESCRIPTION.Y=136DESCRIPTION.Width=383DESCRIPTION.Height=20DESCRIPTION.Text=DESCRIPTION.InputLength=200tLabel_26.Type=TLabeltLabel_26.X=13tLabel_26.Y=139tLabel_26.Width=56tLabel_26.Height=15tLabel_26.Text=备注:SEQ.Type=TNumberTextFieldSEQ.X=314SEQ.Y=107SEQ.Width=139SEQ.Height=20SEQ.Text=0SEQ.Format=#########0tLabel_21.Type=TLabeltLabel_21.X=239tLabel_21.Y=110tLabel_21.Width=56tLabel_21.Height=15tLabel_21.Text=顺序号:PY2.Type=TTextFieldPY2.X=314PY2.Y=77PY2.Width=139PY2.Height=20PY2.Text=PY2.InputLength=20tLabel_20.Type=TLabeltLabel_20.X=239tLabel_20.Y=80tLabel_20.Width=56tLabel_20.Height=15tLabel_20.Text=助记码:PY1.Type=TTextFieldPY1.X=70PY1.Y=77PY1.Width=139PY1.Height=20PY1.Text=PY1.InputLength=20tLabel_19.Type=TLabeltLabel_19.X=13tLabel_19.Y=80tLabel_19.Width=56tLabel_19.Height=15tLabel_19.Text=拼音:ENG_DESC.Type=TTextFieldENG_DESC.X=70ENG_DESC.Y=107ENG_DESC.Width=139ENG_DESC.Height=20ENG_DESC.Text=ENG_DESC.InputLength=200tLabel_18.Type=TLabeltLabel_18.X=13tLabel_18.Y=110tLabel_18.Width=56tLabel_18.Height=15tLabel_18.Text=英文:NAME.Type=TTextFieldNAME.X=313NAME.Y=47NAME.Width=139NAME.Height=20NAME.Text=NAME.Tip=名称NAME.InputLength=200NAME.Action=onUserNameActiontLabel_17.Type=TLabeltLabel_17.X=239tLabel_17.Y=50tLabel_17.Width=56tLabel_17.Height=15tLabel_17.Text=名称:ID.Type=TTextFieldID.X=70ID.Y=47ID.Width=139ID.Height=20ID.Text=ID.Tip=编号ID.InputLength=20tLabel_16.Type=TLabeltLabel_16.X=13tLabel_16.Y=50tLabel_16.Width=56tLabel_16.Height=15tLabel_16.Text=编号:tLabel_16.Color=BLUETable.Type=TTableTable.X=0Table.Y=237Table.Width=1500Table.Height=1203Table.SpacingRow=1Table.RowHeight=20Table.AutoWidth=YTable.AutoHeight=YTable.AutoSize=0Table.ModifyTag=ID:ID;NAME:NAME;ENG_DESC:ENG_DESC;PY1:PY1;PY2:PY2;SEQ:SEQ:int;DESCRIPTION:DESCRIPTION;FLG:FLG;STA1_CODE:STA1_CODE;STA2_CODE:STA2_CODE;STA3_CODE:STA3_CODETable.ParmMap=FLG;ID;NAME;ENG_DESC;PY1;PY2;SEQ;REMARK;STA1_CODE;STA2_CODE;STA3_CODE;OPT_USER;OPT_TERM;OPT_DATETable.Header=选,30,boolean;编号,150;名称,200;英文,200;拼音,80;注记码,80;序号,50;备注,80;对应1,100;对应2,100;对应3,100;操作人员,100;操作IP,120;操作时间,100Table.LockColumns=0,1,2,3,4,5,6,7,8,9,10,11,12,13Table.ModuleMethodName=update:update;insert:insert;delete:deleteTable.ModuleName=sys\SYSDictionaryModule.xTable.AutoX=YTable.ModuleParmInsertString=TYPE:;PARENT_ID:;STATE:;DATA:Table.ModuleParmUpdateString=TYPE:;PARENT_ID:;STATE:;DATA:Table.ColumnHorizontalAlignmentData=1,left;2,left;3,left;4,left;5,left;6,right;7,left;8,left;9,left;10.left;11,left;12,left