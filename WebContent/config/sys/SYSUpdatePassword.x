#
# TBuilder Config File 
#
# Title:修改密码
#
# Company:JavaHis
#
# Author:zhangy 2010.04.06
#
# version 1.0
#

<Type=TFrame>
UI.Title=修改密码
UI.MenuConfig=
UI.Width=296
UI.Height=280
UI.toolbar=Y
UI.controlclassname=com.javahis.ui.sys.SYSUpdatePasswordControl
UI.item=tLabel_0;tLabel_1;tLabel_2;OLD_PASSWORD;NEW_PASSWORD;CHECK_PASSWORD;BTN_OK;BTN_CANCEL;PWD_POOFSTH;pwd_LBL
UI.layout=null
UI.zhTitle=修改密码
UI.enTitle=UPDATE PASSWORD
UI.FocusList=OLD_PASSWORD;NEW_PASSWORD;CHECK_PASSWORD
pwd_LBL.Type=TLabel
pwd_LBL.X=173
pwd_LBL.Y=140
pwd_LBL.Width=29
pwd_LBL.Height=15
pwd_LBL.Text=测试
PWD_POOFSTH.Type=TLabel
PWD_POOFSTH.X=37
PWD_POOFSTH.Y=140
PWD_POOFSTH.Width=72
PWD_POOFSTH.Height=15
PWD_POOFSTH.Text=强度校验:
BTN_CANCEL.Type=TButton
BTN_CANCEL.X=161
BTN_CANCEL.Y=168
BTN_CANCEL.Width=81
BTN_CANCEL.Height=23
BTN_CANCEL.Text=取消
BTN_CANCEL.Action=onCancel
BTN_OK.Type=TButton
BTN_OK.X=51
BTN_OK.Y=168
BTN_OK.Width=81
BTN_OK.Height=23
BTN_OK.Text=确定
BTN_OK.Action=onOK
CHECK_PASSWORD.Type=TPasswordField
CHECK_PASSWORD.X=109
CHECK_PASSWORD.Y=106
CHECK_PASSWORD.Width=150
CHECK_PASSWORD.Height=20
CHECK_PASSWORD.Text=
CHECK_PASSWORD.Action=pwdPoofSth
NEW_PASSWORD.Type=TPasswordField
NEW_PASSWORD.X=109
NEW_PASSWORD.Y=71
NEW_PASSWORD.Width=150
NEW_PASSWORD.Height=20
NEW_PASSWORD.Text=
NEW_PASSWORD.Action=pwdPoofSth
OLD_PASSWORD.Type=TPasswordField
OLD_PASSWORD.X=109
OLD_PASSWORD.Y=38
OLD_PASSWORD.Width=150
OLD_PASSWORD.Height=20
OLD_PASSWORD.Text=
tLabel_2.Type=TLabel
tLabel_2.X=36
tLabel_2.Y=108
tLabel_2.Width=72
tLabel_2.Height=15
tLabel_2.Text=确认:
tLabel_1.Type=TLabel
tLabel_1.X=36
tLabel_1.Y=74
tLabel_1.Width=72
tLabel_1.Height=15
tLabel_1.Text=新密码:
tLabel_0.Type=TLabel
tLabel_0.X=36
tLabel_0.Y=40
tLabel_0.Width=72
tLabel_0.Height=15
tLabel_0.Text=旧密码: