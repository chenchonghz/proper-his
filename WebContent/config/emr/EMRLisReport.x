#  # Title: 就诊序号选择  #  # Description:就诊序号选择  #  # Copyright: JavaHis (c) 2008  #  # @author fudw  # @version 1.0<Type=TFrame>UI.Title=检验报告//UI.MenuConfig=%ROOT%\config\opb\OPBChooseVisit_Menu.xUI.Width=820UI.Height=591UI.toolbar=YUI.controlclassname=com.javahis.ui.emr.EMRLisReportControlUI.item=tTabbedPane_1UI.layout=nullUI.FocusList=UI.X=0UI.Y=0UI.TopMenu=YUI.TopToolBar=YUI.ShowTitle=NUI.AutoX=NUI.AutoY=NUI.AutoWidth=NUI.AutoHeight=NUI.AutoSize=0UI.Border=凸tTabbedPane_1.Type=TTabbedPanetTabbedPane_1.X=4tTabbedPane_1.Y=7tTabbedPane_1.Width=809tTabbedPane_1.Height=577tTabbedPane_1.Item=tPanel_0;tPanel_1;tPanel_2tTabbedPane_1.AutoWidth=YtTabbedPane_1.AutoHeight=YtPanel_2.Type=TPaneltPanel_2.X=5tPanel_2.Y=5tPanel_2.Width=362tPanel_2.Height=225tPanel_2.Name=细菌培养tPanel_2.AutoX=YtPanel_2.AutoY=YtPanel_2.AutoWidth=YtPanel_2.AutoHeight=YtPanel_2.Item=TABLE3TABLE3.Type=TTableTABLE3.X=3TABLE3.Y=3TABLE3.Width=789TABLE3.Height=543TABLE3.SpacingRow=1TABLE3.RowHeight=20TABLE3.Header=菌种名称,200;培养结果,200;菌落数,80;革兰氏染色体报告,120;感染程度,80;医检备注,80TABLE3.LockColumns=0,1,2,3,4,5TABLE3.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,left;4,left;5,leftTABLE3.ParmMap=CULTURE_DESC;CULTURE_RESULT;COLONY_COUNT;GRAM_STAIN;INFECT_LEVEL;REMARKStPanel_1.Type=TPaneltPanel_1.X=5tPanel_1.Y=5tPanel_1.Width=362tPanel_1.Height=225tPanel_1.Name=药敏试验tPanel_1.AutoY=YtPanel_1.AutoX=YtPanel_1.AutoWidth=YtPanel_1.AutoHeight=YtPanel_1.Item=TABLE2TABLE2.Type=TTableTABLE2.X=2TABLE2.Y=3TABLE2.Width=789TABLE2.Height=544TABLE2.SpacingRow=1TABLE2.RowHeight=20TABLE2.Header=细菌名称,200;抗生素名称,200;敏感性等级 ,80;药敏试验MIC,100;医检备注,80TABLE2.LockColumns=0,1,2,3,4TABLE2.ColumnHorizontalAlignmentData=0,left;1,left;2,left;3,left;4,left;5,leftTABLE2.ParmMap=CULTURE_DESC;ANTI_DESC;SENS_LEVEL;TEST_VALUE;REMARKStPanel_0.Type=TPaneltPanel_0.X=19tPanel_0.Y=5tPanel_0.Width=362tPanel_0.Height=225tPanel_0.Name=一般检验tPanel_0.AutoWidth=YtPanel_0.AutoHeight=YtPanel_0.AutoY=YtPanel_0.AutoX=YtPanel_0.Item=TABLE1TABLE1.Type=TTableTABLE1.X=1TABLE1.Y=3TABLE1.Width=798TABLE1.Height=540TABLE1.SpacingRow=1TABLE1.RowHeight=20TABLE1.Header=检验项目,200;检验结果,200;正常值范围,120;检验单位,80;指标判读,120;医检备注,80TABLE1.LockColumns=0,1,2,3,4,5TABLE1.ColumnHorizontalAlignmentData=0,left;1,right;2,right;3,left;4,left;5,leftTABLE1.ParmMap=TEST_NAME;TEST_RESULT;HIGHLOW;TEST_UNIT;LAB_INDICATOR;DR_NOTETABLE1.AutoHeight=YTABLE1.AutoWidth=Y