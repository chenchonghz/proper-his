<Type=TMenuBar>
UI.Item=File;Window
UI.button=save;|;clear;|;returnFee;|;close

Window.Type=TMenu
Window.Text=窗口
Window.M=W
Window.Item=Refresh

File.Type=TMenu
File.Text=文件
File.M=F
File.Item=save;clear;returnFee;|;Refresh;|;close

save.Type=TMenuItem
save.Text=查询
save.Tip=查询
save.M=S
save.key=Ctrl+F
save.Action=onQuery
save.pic=query.gif

Refresh.Type=TMenuItem
Refresh.Text=刷新
Refresh.Tip=刷新
Refresh.M=R
Refresh.key=F5
Refresh.Action=onReset
Refresh.pic=Refresh.gif



clear.Type=TMenuItem
clear.Text=清空
clear.Tip=清空
clear.M=C
clear.Action=onClear
clear.pic=clear.gif

returnFee.Type=TMenuItem
returnFee.Text=作废账单
returnFee.Tip=作废账单
returnFee.M=P
returnFee.Action=onReturnFee
returnFee.pic=030.gif

close.Type=TMenuItem
close.Text=退出
close.Tip=退出
close.M=X
close.key=Alt+F4
close.Action=onClose
close.pic=close.gif

