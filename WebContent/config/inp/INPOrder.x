## TBuilder Config File ## Title:## Company:JavaHis## Author:yanjing 2013.10.30## version 1.0#<Type=TFrame>UI.Title=抗菌药物UI.MenuConfig=UI.Width=632UI.Height=300UI.toolbar=YUI.controlclassname=com.javahis.ui.inp.INPOrderControlUI.item=tPanel_0;tPanel_1UI.layout=nullUI.Name=UI.Text=tPanel_1.Type=TPaneltPanel_1.X=3tPanel_1.Y=45tPanel_1.Width=620tPanel_1.Height=243tPanel_1.AutoWidth=YtPanel_1.AutoHeight=YtPanel_1.Border=组|药嘱tPanel_1.Item=TABLE2;ANTI_REASON;FREQ_CODE;ROUTE_CODE;UNIT_COMBOUNIT_COMBO.Type=计量单位UNIT_COMBO.X=361UNIT_COMBO.Y=28UNIT_COMBO.Width=81UNIT_COMBO.Height=23UNIT_COMBO.Text=UNIT_COMBO.HorizontalAlignment=2UNIT_COMBO.PopupMenuHeader=代码,100;名称,100UNIT_COMBO.PopupMenuWidth=300UNIT_COMBO.PopupMenuHeight=300UNIT_COMBO.PopupMenuFilter=ID,1;NAME,1;PY1,1UNIT_COMBO.FormatType=comboUNIT_COMBO.ShowDownButton=YUNIT_COMBO.Tip=计量单位UNIT_COMBO.ShowColumnList=NAMEROUTE_CODE.Type=用法下拉区域ROUTE_CODE.X=259ROUTE_CODE.Y=28ROUTE_CODE.Width=81ROUTE_CODE.Height=23ROUTE_CODE.Text=ROUTE_CODE.HorizontalAlignment=2ROUTE_CODE.PopupMenuHeader=代码,100;名称,100ROUTE_CODE.PopupMenuWidth=300ROUTE_CODE.PopupMenuHeight=300ROUTE_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1ROUTE_CODE.FormatType=comboROUTE_CODE.ShowDownButton=YROUTE_CODE.Tip=用法ROUTE_CODE.ShowColumnList=NAMEFREQ_CODE.Type=频次FREQ_CODE.X=151FREQ_CODE.Y=27FREQ_CODE.Width=81FREQ_CODE.Height=23FREQ_CODE.Text=FREQ_CODE.HorizontalAlignment=2FREQ_CODE.PopupMenuHeader=代码,100;名称,100FREQ_CODE.PopupMenuWidth=300FREQ_CODE.PopupMenuHeight=300FREQ_CODE.PopupMenuFilter=ID,1;NAME,1;PY1,1FREQ_CODE.FormatType=comboFREQ_CODE.ShowDownButton=YFREQ_CODE.Tip=频次FREQ_CODE.ShowColumnList=NAMEANTI_REASON.Type=会诊原因ANTI_REASON.X=38ANTI_REASON.Y=26ANTI_REASON.Width=81ANTI_REASON.Height=23ANTI_REASON.Text=ANTI_REASON.HorizontalAlignment=2ANTI_REASON.PopupMenuHeader=代码,100;名称,100ANTI_REASON.PopupMenuWidth=300ANTI_REASON.PopupMenuHeight=300ANTI_REASON.PopupMenuFilter=ID,1;NAME,1;PY1,1ANTI_REASON.FormatType=comboANTI_REASON.ShowDownButton=YANTI_REASON.Tip=会诊原因ANTI_REASON.ShowColumnList=NAMETABLE2.Type=TTableTABLE2.X=9TABLE2.Y=21TABLE2.Width=543TABLE2.Height=211TABLE2.SpacingRow=1TABLE2.RowHeight=20TABLE2.AutoWidth=YTABLE2.AutoHeight=YTABLE2.Header=选,30,boolean;使用天数,60,int;会诊原因,80,ANTI_REASON;医嘱名称,260;规格,180;用量,60,double,#########0.000;单位,60,UNIT_COMBO;用法,60,ROUTE_CODE;频次,90,FREQ_CODE;医嘱代码,100;单位代码,60;用法代码,60;频次代码,60;原因代码,60;状态,60;主键,60;序号,50TABLE2.LockColumns=4,6,9,10,11,12,13,14,15TABLE2.ColumnHorizontalAlignmentData=1,left;2,left;3,left;4,left;5,right;6,left;7,left;8,left;9,left;10,leftTABLE2.Item=UNIT_COMBO;FREQ_CODE;ROUTE_CODE;ANTI_REASONTABLE2.ParmMap=FLAG;ANTI_TAKE_DAYS;ANTI_REASON;ORDER_DESC;SPECIFICATION;MEDI_QTY;MEDI_UNIT_DESC;ROUTE_DESC_CODE;FREQ_DESC_CODE;ORDER_CODE;MEDI_UNIT;ROUTE_CODE;FREQ_CODE;ANTI_REASON_CODE;DATA_FLG;PHA_SEQ;SEQ_NOtPanel_0.Type=TPaneltPanel_0.X=4tPanel_0.Y=6tPanel_0.Width=623tPanel_0.Height=41tPanel_0.AutoWidth=YtPanel_0.Border=组tPanel_0.Item=tButton_1;tButton_2;tButton_3tButton_3.Type=TButtontButton_3.X=286tButton_3.Y=11tButton_3.Width=67tButton_3.Height=23tButton_3.Text=关闭tButton_3.Action=onClosetButton_2.Type=TButtontButton_2.X=181tButton_2.Y=11tButton_2.Width=69tButton_2.Height=23tButton_2.Text=删除tButton_2.Action=onDeleteRowordertButton_1.Type=TButtontButton_1.X=72tButton_1.Y=11tButton_1.Width=71tButton_1.Height=23tButton_1.Text=传回tButton_1.Action=onSend