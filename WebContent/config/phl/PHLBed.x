## TBuilder Config File ## Title:静点室床位## Company:JavaHis## Author:zhangy 2009.10.17## version 1.0#<Type=TFrame>UI.Title=静点室床位UI.MenuConfig=%ROOT%\config\phl\PHLBedMenu.xUI.Width=1024UI.Height=748UI.toolbar=YUI.controlclassname=com.javahis.ui.phl.PHLBedControlUI.item=tPanel_0;tPanel_1UI.layout=nullUI.TopMenu=YUI.TopToolBar=YUI.FocusList=REGION_CODE;BED_NO;BED_DESC;BED_STATUS;TYPEtPanel_1.Type=TPaneltPanel_1.X=5tPanel_1.Y=78tPanel_1.Width=1014tPanel_1.Height=665tPanel_1.AutoX=YtPanel_1.AutoWidth=YtPanel_1.AutoHeight=YtPanel_1.Border=凹tPanel_1.Item=TABLETABLE.Type=TTableTABLE.X=101TABLE.Y=2TABLE.Width=1010TABLE.Height=661TABLE.SpacingRow=1TABLE.RowHeight=20TABLE.AutoX=YTABLE.AutoY=YTABLE.AutoWidth=YTABLE.AutoHeight=YTABLE.AutoSize=0TABLE.Header=区域,120,REGION_CODE_ALL;静点室区域,120,REGION_CODE;床位编号,120;床位名称,150;床位状态,80,boolean;床位类型,120,TYPETABLE.LockColumns=allTABLE.ColumnHorizontalAlignmentData=0,left;1,left;2,left;4,leftTABLE.ParmMap=REGION_CODE_ALL;REGION_CODE;BED_NO;BED_DESC;BED_STATUS;TYPETABLE.Item=REGION_CODE;TYPE;REGION_CODE_ALLTABLE.ClickedAction=onTableClickedtPanel_0.Type=TPaneltPanel_0.X=5tPanel_0.Y=5tPanel_0.Width=1014tPanel_0.Height=66tPanel_0.Border=组tPanel_0.AutoX=YtPanel_0.AutoY=YtPanel_0.AutoWidth=YtPanel_0.Item=tLabel_0;tLabel_1;BED_NO;BED_STATUS;tLabel_2;TYPE;REGION_CODE;tLabel_3;BED_DESC;tLabel_9;REGION_CODE_ALLREGION_CODE_ALL.Type=区域下拉列表REGION_CODE_ALL.X=109REGION_CODE_ALL.Y=7REGION_CODE_ALL.Width=121REGION_CODE_ALL.Height=23REGION_CODE_ALL.Text=TButtonREGION_CODE_ALL.showID=YREGION_CODE_ALL.showName=YREGION_CODE_ALL.showText=NREGION_CODE_ALL.showValue=NREGION_CODE_ALL.showPy1=NREGION_CODE_ALL.showPy2=NREGION_CODE_ALL.Editable=YREGION_CODE_ALL.Tip=区域REGION_CODE_ALL.TableShowList=nameREGION_CODE_ALL.ModuleParmString=REGION_CODE_ALL.ModuleParmTag=REGION_CODE_ALL.ExpandWidth=80tLabel_9.Type=TLabeltLabel_9.X=38tLabel_9.Y=11tLabel_9.Width=63tLabel_9.Height=15tLabel_9.Text=区    域tLabel_9.Color=蓝BED_DESC.Type=TTextFieldBED_DESC.X=357BED_DESC.Y=36BED_DESC.Width=120BED_DESC.Height=22BED_DESC.Text=tLabel_3.Type=TLabeltLabel_3.X=272tLabel_3.Y=41tLabel_3.Width=63tLabel_3.Height=15tLabel_3.Text=床位名称REGION_CODE.Type=静点区域REGION_CODE.X=357REGION_CODE.Y=5REGION_CODE.Width=120REGION_CODE.Height=23REGION_CODE.Text=TButtonREGION_CODE.showID=YREGION_CODE.showName=YREGION_CODE.showText=NREGION_CODE.showValue=NREGION_CODE.showPy1=NREGION_CODE.showPy2=NREGION_CODE.Editable=YREGION_CODE.Tip=静点区域REGION_CODE.TableShowList=nameREGION_CODE.ModuleParmTag=REGION_CODE.ExpandWidth=30TYPE.Type=TComboBoxTYPE.X=678TYPE.Y=36TYPE.Width=100TYPE.Height=23TYPE.Text=TButtonTYPE.showID=YTYPE.Editable=YTYPE.ShowText=NTYPE.ShowName=YTYPE.TableShowList=nameTYPE.StringData=[[id,name],[,],[0,床位],[1,座位]]tLabel_2.Type=TLabeltLabel_2.X=603tLabel_2.Y=41tLabel_2.Width=72tLabel_2.Height=15tLabel_2.Text=床位类型BED_STATUS.Type=TCheckBoxBED_STATUS.X=496BED_STATUS.Y=37BED_STATUS.Width=81BED_STATUS.Height=23BED_STATUS.Text=是否占床BED_NO.Type=TTextFieldBED_NO.X=110BED_NO.Y=37BED_NO.Width=120BED_NO.Height=22BED_NO.Text=tLabel_1.Type=TLabeltLabel_1.X=37tLabel_1.Y=42tLabel_1.Width=60tLabel_1.Height=15tLabel_1.Text=床位编号tLabel_1.Color=bluetLabel_0.Type=TLabeltLabel_0.X=272tLabel_0.Y=11tLabel_0.Width=72tLabel_0.Height=15tLabel_0.Text=静点室区域tLabel_0.Color=blue