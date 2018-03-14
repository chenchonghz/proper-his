# 
#  Title: STA_0UT_4 卫生部门县及县以上医院经费及收支情况报表（卫统2表3）
# 
#  Description: STA_0UT_4 卫生部门县及县以上医院经费及收支情况报表（卫统2表3）
# 
#  Copyright: Copyright (c) Javahis 2008
# 
#  author zhangk 2009.6.3
#  version 1.0
#
<Type=TFrame>
UI.Title=卫统2表3
UI.MenuConfig=%ROOT%\config\sta\STAOut_4Menu.x
UI.Width=1024
UI.Height=748
UI.toolbar=Y
UI.controlclassname=com.javahis.ui.sta.STAOut_4Control
UI.Item=R_MONTH;Table1;Table2;Table3;Table4
UI.TopMenu=Y
UI.TopToolBar=Y
UI.ShowTitle=N
UI.ShowMenu=N
Table4.Type=TTable
Table4.X=54
Table4.Y=525
Table4.Width=81
Table4.Height=218
Table4.SpacingRow=1
Table4.RowHeight=20
Table4.AutoX=Y
Table4.AutoWidth=Y
Table4.AutoHeight=Y
Table4.Header=出院者平均在院日,115;平均药品加成率,100;平均每诊疗人次医疗费合计,160;平均每诊疗人次医疗费药费,160;平均每诊疗人次医疗费检查费,175;平均每一出院者医疗费合计,160;平均每一出院者医疗费床位费,175;平均每一出院者医疗费药费,160;平均每一出院者医疗费治疗费,175;平均每一出院者医疗费检查费,175;出院者平均每天住院医疗费,160;平均每一职工期内负担的诊疗人次,200;平均每一职工期内负担的住院床日数,210;平均每一职工期内业务收入,170;平均每一医生期内负担的诊疗人次,200;平均每一医生期内负担的住院床日数,210;平均每一医生期内业务收入,170
Table4.FocusIndexList=0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17
Table4.ColumnHorizontalAlignmentData=0,right;1,right;2,right;3,right;4,right;5,right;6,right;7,right;8,right;9,right;10,right;11,right;12,right;13,right;14,right;15,right;16,right;17,right
Table4.ParmMap=DATA_45;DATA_46;DATA_47;DATA_48;DATA_49;DATA_50;DATA_51;DATA_52;DATA_53;DATA_54;DATA_55;DATA_56;DATA_57;DATA_58;DATA_59;DATA_60;DATA_61
Table4.AutoModifyDataStore=Y
Table4.ChangeValueAction=
Table3.Type=TTable
Table3.X=71
Table3.Y=380
Table3.Width=81
Table3.Height=140
Table3.SpacingRow=1
Table3.RowHeight=20
Table3.AutoX=Y
Table3.AutoWidth=Y
Table3.AutoHeight=N
Table3.Header=支出总计,80,double;业务支出合计,100,double;人员经费小计,100,double;离退休人员经费,110,double;药品费,100,double;其他业务支出,120,double;其他支出,80,double;固定资产总金额合计,130,double;其中:专业设备金额,125,double;平均每床位占用总金额合计,160,double;其中:专业设备总金额,130,double;期内病人欠费总额,125,double;欠费率,80,double;平均每天诊疗,100,double;病床使用率,90,double;病床周转次数,100,double
Table3.AutoModifyDataStore=Y
Table3.ParmMap=DATA_29;DATA_30;DATA_31;DATA_32;DATA_33;DATA_34;DATA_35;DATA_36;DATA_37;DATA_38;DATA_39;DATA_40;DATA_41;DATA_42;DATA_43;DATA_44
Table3.ColumnHorizontalAlignmentData=0,right;1,right;2,right;3,right;4,right;5,right;6,right;7,right;8,right;9,right;10,right;11,right;12,right;13,right;14,right;15,right
Table3.FocusIndexList=0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
Table3.ChangeValueAction=
Table2.Type=TTable
Table2.X=55
Table2.Y=235
Table2.Width=81
Table2.Height=140
Table2.SpacingRow=1
Table2.RowHeight=20
Table2.AutoX=Y
Table2.AutoWidth=Y
Table2.Header=收入总计,120,double;业务收入合计,100,double;门诊收入小计,100,double;挂号费,60,double;检查费,60,double;门诊其他收入,100,double;住院收入小计,100,double;床位费,60,double;治疗费,60,double;检查费,60,double;住院其他收入,100,double;药品收入小计,100,double;住院收入(药品),110,double;门诊收入(药品),110,double;业务补助,80,double;专项补助,80,double;其他收入,80,double
Table2.AutoModifyDataStore=Y
Table2.ParmMap=DATA_12;DATA_13;DATA_14;DATA_15;DATA_16;DATA_17;DATA_18;DATA_19;DATA_20;DATA_21;DATA_22;DATA_23;DATA_24;DATA_25;DATA_26;DATA_27;DATA_28
Table2.ColumnHorizontalAlignmentData=0,right;1,right;2,right;3,right;4,right;5,right;6,right;7,right;8,right;9,right;10,right;11,right;12,right;13,right;14,right;15,right;16,right
Table2.FocusIndexList=0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16
Table2.ChangeValueAction=
Table1.Type=TTable
Table1.X=52
Table1.Y=90
Table1.Width=81
Table1.Height=140
Table1.SpacingRow=1
Table1.RowHeight=20
Table1.AutoX=Y
Table1.AutoY=N
Table1.AutoWidth=Y
Table1.Header=机构数,60;病床数,60;平均职工人数合计,120;平均医生人数,100;总诊疗人次,100;出院人数,80;实际开放总床日数,130;平均开放病床数,120;实际占用总床日数,130;出院者占用总床日数,140;出院者平均住院日,120
Table1.AutoModifyDataStore=Y
Table1.ParmMap=DATA_01;DATA_02;DATA_03;DATA_04;DATA_05;DATA_06;DATA_07;DATA_08;DATA_09;DATA_10;DATA_11
Table1.ColumnHorizontalAlignmentData=0,right;1,right;2,right;3,right;4,right;5,right;6,right;7,right;8,right;9,right;10,right
Table1.FocusIndexList=0,1,2,3,4,5,6,7,8,9,10
Table1.ChangeValueAction=
R_MONTH.Type=TPanel
R_MONTH.X=5
R_MONTH.Y=5
R_MONTH.Width=1014
R_MONTH.Height=80
R_MONTH.Border=凸
R_MONTH.AutoX=Y
R_MONTH.AutoY=Y
R_MONTH.AutoWidth=Y
R_MONTH.Item=tLabel_0;STA_DATE;Submit
Submit.Type=TCheckBox
Submit.X=308
Submit.Y=28
Submit.Width=81
Submit.Height=23
Submit.Text=提  交
STA_DATE.Type=TTextFormat
STA_DATE.X=145
STA_DATE.Y=29
STA_DATE.Width=100
STA_DATE.Height=20
STA_DATE.Text=TTextFormat
STA_DATE.FormatType=date
STA_DATE.Format=yyyy/MM
STA_DATE.HorizontalAlignment=4
STA_DATE.Action=onQuery
tLabel_0.Type=TLabel
tLabel_0.X=68
tLabel_0.Y=32
tLabel_0.Width=63
tLabel_0.Height=15
tLabel_0.Text=统计时间
tLabel_0.Color=蓝