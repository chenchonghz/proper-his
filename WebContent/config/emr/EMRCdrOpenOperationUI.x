## TBuilder Config File ## Title:综合查询明细数据## Company:JavaHis## Author:wangbin 2015.05.16## version 1.0#<Type=TFrame>UI.Title=手术UI.MenuConfig=UI.Width=964UI.Height=622UI.toolbar=YUI.controlclassname=com.javahis.ui.emr.EMRCdrDetailDataControlUI.item=tPanel_24;tTabbedPane_0UI.layout=nullUI.X=80UI.Y=20tTabbedPane_0.Type=TTabbedPanetTabbedPane_0.X=5tTabbedPane_0.Y=292tTabbedPane_0.Width=954tTabbedPane_0.Height=323tTabbedPane_0.Item=tPanel_0;tPanel_5;tPanel_6tTabbedPane_0.AutoWidth=YtTabbedPane_0.AutoHeight=YtTabbedPane_0.Enabled=YtPanel_0.Type=TPaneltPanel_0.X=5tPanel_0.Y=7tPanel_0.Width=947tPanel_0.Height=294tPanel_0.Text=tPanel_0.Name=术中事件tPanel_0.Item=TABLE_EVENTtPanel_0.AutoWidth=YtPanel_0.AutoHeight=YTABLE_EVENT.Type=TTableTABLE_EVENT.X=2TABLE_EVENT.Y=5TABLE_EVENT.Width=942TABLE_EVENT.Height=286TABLE_EVENT.SpacingRow=1TABLE_EVENT.RowHeight=20TABLE_EVENT.AutoWidth=YTABLE_EVENT.AutoHeight=YTABLE_EVENT.ParmMap=EVENT_DESC;START_TIME;END_TIME;REMARKSTABLE_EVENT.Header=事件名称,150;开始时间,140,Timestamp,yyyy/MM/dd HH:mm:ss;结束时间,140,Timestamp,yyyy/MM/dd HH:mm:ss;备注,150TABLE_EVENT.LockRows=TABLE_EVENT.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,leftTABLE_EVENT.LockColumns=alltPanel_6.Type=TPaneltPanel_6.X=85tPanel_6.Y=8tPanel_6.Width=81tPanel_6.Height=81tPanel_6.Name=体征检测tPanel_6.Item=TABLE2TABLE2.Type=TTableTABLE2.X=3TABLE2.Y=4TABLE2.Width=938TABLE2.Height=289TABLE2.SpacingRow=1TABLE2.RowHeight=20TABLE2.Header=监测项目,150;监测时间,140;监测结果,100;单位,50;正常值范围,120;备注,150TABLE2.ParmMap=MONITOR_ITEM_EN;MONITOR_TIME;MONITOR_VALUE;UNIT_DESC;NORMAL_RANGE;REMARKSTABLE2.LockColumns=allTABLE2.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,lefttPanel_5.Type=TPaneltPanel_5.X=27tPanel_5.Y=23tPanel_5.Width=81tPanel_5.Height=294tPanel_5.Name=用药记录tPanel_5.Item=TABLE1tPanel_5.AutoHeight=YTABLE1.Type=TTableTABLE1.X=3TABLE1.Y=4TABLE1.Width=941TABLE1.Height=287TABLE1.SpacingRow=1TABLE1.RowHeight=20TABLE1.AutoWidth=YTABLE1.AutoHeight=YTABLE1.Header=开始时间,140,Timestamp,yyyy/MM/dd HH:mm:ss;结束时间,140,Timestamp,yyyy/MM/dd HH:mm:ss;药品属性,150;药品名称,230;配药量,80;给药量,80;用法,80;备注,120TABLE1.ParmMap=START_TIME;END_TIME;DRUG_ATTB;ORDER_DESC;DOSAGE_QTY;EXEC_DOSE;ROUTE_CHN_DESC;REMARKSTABLE1.LockColumns=allTABLE1.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,left;4,left;5,left;6,left;7,leftTABLE1.Enabled=YtPanel_24.Type=TPaneltPanel_24.X=5tPanel_24.Y=5tPanel_24.Width=954tPanel_24.Height=281tPanel_24.Border=组tPanel_24.AutoX=NtPanel_24.AutoY=NtPanel_24.AutoHeight=NtPanel_24.AutoWidth=YtPanel_24.Item=TABLE_DATA;ADM_TYPE_COMBO;OPERATOR_COMBOOPERATOR_COMBO.Type=人员OPERATOR_COMBO.X=128OPERATOR_COMBO.Y=134OPERATOR_COMBO.Width=81OPERATOR_COMBO.Height=23OPERATOR_COMBO.Text=OPERATOR_COMBO.HorizontalAlignment=2OPERATOR_COMBO.PopupMenuHeader=代码,100;名称,100OPERATOR_COMBO.PopupMenuWidth=300OPERATOR_COMBO.PopupMenuHeight=300OPERATOR_COMBO.PopupMenuFilter=ID,1;NAME,1;PY1,1OPERATOR_COMBO.FormatType=comboOPERATOR_COMBO.ShowDownButton=YOPERATOR_COMBO.Tip=人员OPERATOR_COMBO.ShowColumnList=NAMEADM_TYPE_COMBO.Type=门急住别下拉列表ADM_TYPE_COMBO.X=37ADM_TYPE_COMBO.Y=134ADM_TYPE_COMBO.Width=81ADM_TYPE_COMBO.Height=23ADM_TYPE_COMBO.Text=TButtonADM_TYPE_COMBO.showID=YADM_TYPE_COMBO.showName=YADM_TYPE_COMBO.showText=NADM_TYPE_COMBO.showValue=NADM_TYPE_COMBO.showPy1=YADM_TYPE_COMBO.showPy2=YADM_TYPE_COMBO.Editable=YADM_TYPE_COMBO.Tip=门急住别ADM_TYPE_COMBO.TableShowList=nameADM_TYPE_COMBO.ModuleParmString=GROUP_ID:SYS_ADMTYPEADM_TYPE_COMBO.ModuleParmTag=TABLE_DATA.Type=TTableTABLE_DATA.X=9TABLE_DATA.Y=9TABLE_DATA.Width=936TABLE_DATA.Height=261TABLE_DATA.SpacingRow=1TABLE_DATA.RowHeight=20TABLE_DATA.AutoX=YTABLE_DATA.AutoY=YTABLE_DATA.AutoWidth=YTABLE_DATA.AutoHeight=YTABLE_DATA.LockColumns=0,1,2,3,4,5,6,7,8,9,10,11,12,16,17,18,19,20TABLE_DATA.Item=TABLE_DATA.Header=手术项目,250;次手术,200;手术类型,80;手术部位,90;紧急,30,boolean;隔离,30,boolean;手术等级,90;手术风险等级,80;手术方式,90;切口类别,100;麻醉方式,100;麻醉分级,80;当前状态,90;术中监护,80,boolean;调阅病历,120,boolean;就诊类型,80;就诊日期,80,Timestamp,yyyy/MM/dd;离院日期,80,Timestamp,yyyy/MM/dd;就诊科室,120TABLE_DATA.ParmMap=OP_DESC1;OP_DESC2;OP_TYPE;OP_SITE;IS_URGENT;IS_ISOLATE;OP_LEVEL;OP_RISK;OP_WAY;INCISION_TYPE;ANA_WAY;ASA_LEVEL;STATUS1;OPEING;WORD;ADM_TYPE_DESC;ADM_DATE;DISCHARGE_DATE;DEPT_DESCTABLE_DATA.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,left;6,left;7,left;8,left;9,left;10,left;11,left;12,left;16,left;17,left;18,left;19,left