## TBuilder Config File ## Title:## Company:JavaHis## Author:庞犇 2011.11.07## version 1.0#<Type=TFrame>UI.Title=医保卡收费操作UI.MenuConfig=%ROOT%\config\ins\INSFeeMenu.xUI.Width=545UI.Height=355UI.toolbar=YUI.controlclassname=com.javahis.ui.ins.INSFeeControlUI.item=tLabel_1;tButton_0;tButton_1;tLabel_74;tLabel_62;FeeY;FeeZ;INS_TYPE;MR_NO;NAME;tLabel_64;tLabel_65;tButton_9;tLabel_66;tLabel_67;tLabel_68;tLabel_69;tLabel_70;tLabel_71;tLabel_72;INS_FEE;tLabel_75;tLabel_76;tLabel_77;tLabel_78;PAY_WAYUI.layout=nullUI.FocusList=tButton_9UI.LoadFlg=NUI.ShowMenu=NUI.TopMenu=NPAY_WAY.Type=TComboBoxPAY_WAY.X=116PAY_WAY.Y=61PAY_WAY.Width=110PAY_WAY.Height=23PAY_WAY.Text=TButtonPAY_WAY.showID=YPAY_WAY.Editable=YPAY_WAY.StringData=[[id,text],[,],[1,现金],[2,医疗卡]]PAY_WAY.TableShowList=textPAY_WAY.Tip=支付方式PAY_WAY.Enabled=NtLabel_78.Type=TLabeltLabel_78.X=366tLabel_78.Y=165tLabel_78.Width=16tLabel_78.Height=15tLabel_78.Text=额tLabel_77.Type=TLabeltLabel_77.X=366tLabel_77.Y=145tLabel_77.Width=16tLabel_77.Height=15tLabel_77.Text=金tLabel_76.Type=TLabeltLabel_76.X=366tLabel_76.Y=126tLabel_76.Width=16tLabel_76.Height=15tLabel_76.Text=费tLabel_75.Type=TLabeltLabel_75.X=366tLabel_75.Y=108tLabel_75.Width=16tLabel_75.Height=15tLabel_75.Text=收INS_FEE.Type=TNumberTextFieldINS_FEE.X=228INS_FEE.Y=108INS_FEE.Width=124INS_FEE.Height=68INS_FEE.Text=0INS_FEE.Format=#########0.00INS_FEE.Color=红INS_FEE.FontSize=30tLabel_72.Type=TLabeltLabel_72.X=205tLabel_72.Y=163tLabel_72.Width=18tLabel_72.Height=18tLabel_72.Text=额tLabel_71.Type=TLabeltLabel_71.X=205tLabel_71.Y=145tLabel_71.Width=16tLabel_71.Height=15tLabel_71.Text=金tLabel_70.Type=TLabeltLabel_70.X=204tLabel_70.Y=123tLabel_70.Width=18tLabel_70.Height=20tLabel_70.Text=保tLabel_69.Type=TLabeltLabel_69.X=205tLabel_69.Y=108tLabel_69.Width=18tLabel_69.Height=15tLabel_69.Text=医tLabel_68.Type=TLabeltLabel_68.X=40tLabel_68.Y=163tLabel_68.Width=23tLabel_68.Height=15tLabel_68.Text=额tLabel_67.Type=TLabeltLabel_67.X=40tLabel_67.Y=141tLabel_67.Width=17tLabel_67.Height=15tLabel_67.Text=金tLabel_66.Type=TLabeltLabel_66.X=40tLabel_66.Y=124tLabel_66.Width=23tLabel_66.Height=15tLabel_66.Text=收tButton_9.Type=TButtontButton_9.X=67tButton_9.Y=213tButton_9.Width=103tButton_9.Height=23tButton_9.Text=医保结算tButton_9.Action=onSplittLabel_65.Type=TLabeltLabel_65.X=37tLabel_65.Y=64tLabel_65.Width=72tLabel_65.Height=15tLabel_65.Text=支付方式:tLabel_64.Type=TLabeltLabel_64.X=273tLabel_64.Y=24tLabel_64.Width=65tLabel_64.Height=15tLabel_64.Text=病患名称:NAME.Type=TTextFieldNAME.X=352NAME.Y=22NAME.Width=137NAME.Height=20NAME.Text=NAME.Enabled=NMR_NO.Type=TTextFieldMR_NO.X=115MR_NO.Y=24MR_NO.Width=111MR_NO.Height=20MR_NO.Text=MR_NO.Enabled=NINS_TYPE.Type=TComboBoxINS_TYPE.X=351INS_TYPE.Y=61INS_TYPE.Width=138INS_TYPE.Height=22INS_TYPE.Text=TButtonINS_TYPE.showID=YINS_TYPE.Editable=YINS_TYPE.StringData=[[id,text],[,],[1,城职普通],[2,城职门特],[3,城居门特]]INS_TYPE.TableShowList=textINS_TYPE.Enabled=NFeeZ.Type=TNumberTextFieldFeeZ.X=391FeeZ.Y=108FeeZ.Width=124FeeZ.Height=68FeeZ.Text=0FeeZ.Format=#########0.00FeeZ.Color=红FeeZ.FontSize=30FeeY.Type=TNumberTextFieldFeeY.X=65FeeY.Y=108FeeY.Width=124FeeY.Height=68FeeY.Text=0FeeY.Format=#########0.00FeeY.Color=黑FeeY.Enabled=NFeeY.FontSize=30tLabel_62.Type=TLabeltLabel_62.X=40tLabel_62.Y=107tLabel_62.Width=20tLabel_62.Height=15tLabel_62.Text=应tLabel_74.Type=TLabeltLabel_74.X=51tLabel_74.Y=26tLabel_74.Width=52tLabel_74.Height=16tLabel_74.Text=病案号:LBL.Type=TLabelLBL.X=27LBL.Y=37LBL.Width=69LBL.Height=15LBL.Text=读入信息:tButton_1.Type=TButtontButton_1.X=362tButton_1.Y=214tButton_1.Width=101tButton_1.Height=23tButton_1.Text=结算取消tButton_1.Action=onCanceltButton_0.Type=TButtontButton_0.X=225tButton_0.Y=214tButton_0.Width=81tButton_0.Height=23tButton_0.Text=执行tButton_0.Action=onOKtLabel_1.Type=TLabeltLabel_1.X=273tLabel_1.Y=65tLabel_1.Width=67tLabel_1.Height=15tLabel_1.Text=医保类别:tas.Type=TLabeltas.X=29tas.Y=35tas.Width=72tas.Height=15tas.Text=读入信息: