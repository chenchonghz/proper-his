## TBuilder Config File ## Title: 自动拨补部门## Company:JavaHis## Author:wangzl 2013.01.08## version 1.0#<Type=TFrame>UI.Title=自动拨补周期设置UI.MenuConfig=%ROOT%\config\inv\INVAssignorgMenu.xUI.Width=1024UI.Height=748UI.toolbar=YUI.controlclassname=com.javahis.ui.inv.INVAssignorgControlUI.item=tPanel_0;tPanel_3;tMovePane_0UI.layout=nullUI.ShowMenu=NUI.ShowTitle=NUI.TopToolBar=YUI.TopMenu=YUI.Text=自动拨补周期设置UI.Tip=自动拨补周期设置UI.FocusList=ORG_CODE;CYCLE_TYPEUI.MenuID=tMovePane_0.Type=TMovePanetMovePane_0.X=5tMovePane_0.Y=191tMovePane_0.Width=100tMovePane_0.Height=5tMovePane_0.Text=tMovePane_0.MoveType=2tMovePane_0.Border=凸tMovePane_0.Style=3tMovePane_0.AutoX=YtMovePane_0.AutoWidth=YtMovePane_0.EntityData=tPanel_0,2;tPanel_3,1tPanel_3.Type=TPaneltPanel_3.X=5tPanel_3.Y=197tPanel_3.Width=1014tPanel_3.Height=536tPanel_3.Border=凹tPanel_3.AutoSize=5tPanel_3.AutoX=YtPanel_3.AutoY=NtPanel_3.AutoWidth=YtPanel_3.AutoHeight=YtPanel_3.Item=TABLE;ORG_CODE_TABLE;CYCLE_TYPE_TABLECYCLE_TYPE_TABLE.Type=TComboBoxCYCLE_TYPE_TABLE.X=291CYCLE_TYPE_TABLE.Y=57CYCLE_TYPE_TABLE.Width=81CYCLE_TYPE_TABLE.Height=23CYCLE_TYPE_TABLE.Text=TButtonCYCLE_TYPE_TABLE.showID=YCYCLE_TYPE_TABLE.Editable=YCYCLE_TYPE_TABLE.ShowText=NCYCLE_TYPE_TABLE.ShowName=YCYCLE_TYPE_TABLE.StringData=[[id,name],[,],[0,每月],[1,每星期]]CYCLE_TYPE_TABLE.TableShowList=nameORG_CODE_TABLE.Type=药房ORG_CODE_TABLE.X=111ORG_CODE_TABLE.Y=61ORG_CODE_TABLE.Width=81ORG_CODE_TABLE.Height=23ORG_CODE_TABLE.Text=ORG_CODE_TABLE.HorizontalAlignment=2ORG_CODE_TABLE.PopupMenuHeader=代码,100;名称,100ORG_CODE_TABLE.PopupMenuWidth=300ORG_CODE_TABLE.PopupMenuHeight=300ORG_CODE_TABLE.PopupMenuFilter=ID,1;NAME,1;PY1,1ORG_CODE_TABLE.FormatType=comboORG_CODE_TABLE.ShowDownButton=YORG_CODE_TABLE.Tip=药房ORG_CODE_TABLE.ShowColumnList=NAMEORG_CODE_TABLE.ValueColumn=IDORG_CODE_TABLE.HisOneNullRow=YTABLE.Type=TTableTABLE.X=4TABLE.Y=6TABLE.Width=1004TABLE.Height=526TABLE.SpacingRow=1TABLE.RowHeight=20TABLE.AutoX=YTABLE.AutoWidth=YTABLE.AutoY=YTABLE.AutoHeight=YTABLE.AutoSize=0TABLE.Header=拨补部门,120,ORG_CODE;循环方式,100,CYCLE_TYPE;操作人员,100,USERNAME;操作时间,120;操作IP,120TABLE.LockColumns=0,1,2,3,4TABLE.ParmMap=ORG_CODE;CYCLE_TYPE;OPT_USER;OPT_DATE;OPT_TERMTABLE.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,left;4,leftTABLE.Item=ORG_CODE;CYCLE_TYPE;USERNAMETABLE.AutoModifyDataStore=YTABLE.ClickedAction=onTableClickedTABLE.StringData=tPanel_0.Type=TPaneltPanel_0.X=5tPanel_0.Y=5tPanel_0.Width=1014tPanel_0.Height=186tPanel_0.Border=组tPanel_0.AutoSize=5tPanel_0.AutoX=YtPanel_0.AutoY=YtPanel_0.AutoWidth=YtPanel_0.Item=tLabel_0;tLabel_1;CYCLE_TYPE;Panel_M;Panel_W;USERNAME;ORG_CODEORG_CODE.Type=物资部门下拉区域ORG_CODE.X=103ORG_CODE.Y=14ORG_CODE.Width=139ORG_CODE.Height=24ORG_CODE.Text=ORG_CODE.HorizontalAlignment=2ORG_CODE.PopupMenuHeader=代码,100;名称,100ORG_CODE.PopupMenuWidth=300ORG_CODE.PopupMenuHeight=300ORG_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1ORG_CODE.FormatType=comboORG_CODE.ShowDownButton=YORG_CODE.Tip= 物资部门ORG_CODE.ShowColumnList=NAMEUSERNAME.Type=人员下拉列表USERNAME.X=407USERNAME.Y=134USERNAME.Width=81USERNAME.Height=23USERNAME.Text=TButtonUSERNAME.showID=YUSERNAME.showName=YUSERNAME.showText=NUSERNAME.showValue=NUSERNAME.showPy1=YUSERNAME.showPy2=YUSERNAME.Editable=NUSERNAME.Tip=人员USERNAME.TableShowList=nameUSERNAME.ModuleParmString=USERNAME.ModuleParmTag=USERNAME.Enabled=NUSERNAME.Visible=NPanel_W.Type=TPanelPanel_W.X=20Panel_W.Y=46Panel_W.Width=304Panel_W.Height=123Panel_W.Border=组|每周拨补日Panel_W.AutoX=YPanel_W.AutoSize=20Panel_W.Item=W_1;W_2;W_3;W_4;W_5;W_6;W_7W_7.Type=TCheckBoxW_7.X=13W_7.Y=85W_7.Width=81W_7.Height=23W_7.Text=星期日W_6.Type=TCheckBoxW_6.X=213W_6.Y=54W_6.Width=81W_6.Height=23W_6.Text=星期六W_5.Type=TCheckBoxW_5.X=113W_5.Y=54W_5.Width=81W_5.Height=23W_5.Text=星期五W_4.Type=TCheckBoxW_4.X=13W_4.Y=54W_4.Width=81W_4.Height=23W_4.Text=星期四W_3.Type=TCheckBoxW_3.X=213W_3.Y=23W_3.Width=81W_3.Height=23W_3.Text=星期三W_2.Type=TCheckBoxW_2.X=113W_2.Y=23W_2.Width=81W_2.Height=23W_2.Text=星期二W_1.Type=TCheckBoxW_1.X=13W_1.Y=23W_1.Width=81W_1.Height=23W_1.Text=星期一Panel_M.Type=TPanelPanel_M.X=21Panel_M.Y=46Panel_M.Width=544Panel_M.Height=123Panel_M.Border=组|每月拨补日Panel_M.AutoSize=20Panel_M.AutoX=YPanel_M.Item=M_1;M_2;M_3;M_4;M_5;M_6;M_7;M_8;M_9;M_10;M_11;M_12;M_13;M_14;M_15;M_16;M_17;M_18;M_19;M_20;M_21;M_22;M_23;M_24;M_25;M_26;M_27;M_28;M_29;M_30;M_31Panel_M.Visible=NM_31.Type=TCheckBoxM_31.X=483M_31.Y=88M_31.Width=40M_31.Height=23M_31.Text=31M_30.Type=TCheckBoxM_30.X=436M_30.Y=88M_30.Width=40M_30.Height=23M_30.Text=30M_29.Type=TCheckBoxM_29.X=389M_29.Y=88M_29.Width=40M_29.Height=23M_29.Text=29M_28.Type=TCheckBoxM_28.X=342M_28.Y=88M_28.Width=40M_28.Height=23M_28.Text=28M_27.Type=TCheckBoxM_27.X=295M_27.Y=88M_27.Width=40M_27.Height=23M_27.Text=27M_26.Type=TCheckBoxM_26.X=248M_26.Y=88M_26.Width=40M_26.Height=23M_26.Text=26M_25.Type=TCheckBoxM_25.X=201M_25.Y=88M_25.Width=40M_25.Height=23M_25.Text=25M_24.Type=TCheckBoxM_24.X=154M_24.Y=88M_24.Width=40M_24.Height=23M_24.Text=24M_23.Type=TCheckBoxM_23.X=107M_23.Y=88M_23.Width=40M_23.Height=23M_23.Text=23M_22.Type=TCheckBoxM_22.X=60M_22.Y=88M_22.Width=40M_22.Height=23M_22.Text=22M_21.Type=TCheckBoxM_21.X=13M_21.Y=88M_21.Width=40M_21.Height=23M_21.Text=21M_20.Type=TCheckBoxM_20.X=436M_20.Y=56M_20.Width=40M_20.Height=23M_20.Text=20M_19.Type=TCheckBoxM_19.X=389M_19.Y=56M_19.Width=40M_19.Height=23M_19.Text=19M_18.Type=TCheckBoxM_18.X=342M_18.Y=56M_18.Width=40M_18.Height=23M_18.Text=18M_17.Type=TCheckBoxM_17.X=295M_17.Y=56M_17.Width=40M_17.Height=23M_17.Text=17M_16.Type=TCheckBoxM_16.X=248M_16.Y=56M_16.Width=40M_16.Height=23M_16.Text=16M_15.Type=TCheckBoxM_15.X=201M_15.Y=56M_15.Width=40M_15.Height=23M_15.Text=15M_14.Type=TCheckBoxM_14.X=154M_14.Y=56M_14.Width=40M_14.Height=23M_14.Text=14M_13.Type=TCheckBoxM_13.X=107M_13.Y=56M_13.Width=40M_13.Height=23M_13.Text=13M_12.Type=TCheckBoxM_12.X=60M_12.Y=56M_12.Width=40M_12.Height=23M_12.Text=12M_11.Type=TCheckBoxM_11.X=13M_11.Y=56M_11.Width=40M_11.Height=23M_11.Text=11M_10.Type=TCheckBoxM_10.X=436M_10.Y=23M_10.Width=40M_10.Height=23M_10.Text=10M_9.Type=TCheckBoxM_9.X=389M_9.Y=23M_9.Width=40M_9.Height=23M_9.Text=09M_8.Type=TCheckBoxM_8.X=342M_8.Y=23M_8.Width=40M_8.Height=23M_8.Text=08M_7.Type=TCheckBoxM_7.X=295M_7.Y=23M_7.Width=40M_7.Height=23M_7.Text=07M_6.Type=TCheckBoxM_6.X=248M_6.Y=23M_6.Width=40M_6.Height=23M_6.Text=06M_5.Type=TCheckBoxM_5.X=201M_5.Y=23M_5.Width=40M_5.Height=23M_5.Text=05M_4.Type=TCheckBoxM_4.X=154M_4.Y=23M_4.Width=40M_4.Height=23M_4.Text=04M_3.Type=TCheckBoxM_3.X=107M_3.Y=23M_3.Width=40M_3.Height=23M_3.Text=03M_2.Type=TCheckBoxM_2.X=60M_2.Y=23M_2.Width=40M_2.Height=23M_2.Text=02M_1.Type=TCheckBoxM_1.X=13M_1.Y=23M_1.Width=40M_1.Height=23M_1.Text=01CYCLE_TYPE.Type=TComboBoxCYCLE_TYPE.X=330CYCLE_TYPE.Y=15 CYCLE_TYPE.Width=81CYCLE_TYPE.Height=23CYCLE_TYPE.Text=TButtonCYCLE_TYPE.showID=YCYCLE_TYPE.Editable=YCYCLE_TYPE.ShowName=YCYCLE_TYPE.ShowText=NCYCLE_TYPE.TableShowList=nameCYCLE_TYPE.StringData=[[id,name],[,],[0,每月],[1,每星期]]CYCLE_TYPE.SelectedAction=onChangeCycleTypetLabel_1.Type=TLabeltLabel_1.X=258tLabel_1.Y=20tLabel_1.Width=72tLabel_1.Height=15tLabel_1.Text=循环方式:tLabel_1.Color=bluetLabel_1.HorizontalAlignment=0tLabel_0.Type=TLabeltLabel_0.X=25tLabel_0.Y=20tLabel_0.Width=72tLabel_0.Height=15tLabel_0.Text=拨补部门:tLabel_0.AutoX=NtLabel_0.AutoY=NtLabel_0.AutoSize=20tLabel_0.Color=blue