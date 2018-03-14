# 
#  Title:药品销售月统计报表
# 
#  Description:药品销售月统计报表
# 
#  Copyright: Copyright (c) Javahis 2011
# 
#  author pangben 2011.08.15
#
<Type=TMenuBar>
UI.Item=File;Window
UI.button=save;query;|;export;|;clear;|;print;|;close;|;

Window.Type=TMenu
Window.Text=窗口
Window.M=W
Window.Item=Refresh

File.Type=TMenu
File.Text=文件
File.M=F
File.Item=save;export;|;print;|;Refresh;|;query;|;clear;|;close


save.Type=TMenuItem
save.Text=保存
save.Tip=保存(Ctrl+S)
save.M=S
save.key=Ctrl+S
save.Action=onSave
save.pic=save.gif

export.Type=TMenuItem
export.Text=导出
export.Tip=导出
export.M=E
export.key=F4
export.Action=onExport
export.pic=export.gif

query.Type=TMenuItem
query.Text=查询
query.Tip=查询
query.M=Q
query.key=Ctrl+F
query.Action=onQuery
query.pic=query.gif

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

close.Type=TMenuItem
close.Text=退出
close.Tip=退出
close.M=X
close.key=Alt+F4
close.Action=onClose
close.pic=close.gif

print.Type=TMenuItem
print.Text=打印
print.Tip=打印
print.M=P
print.key=Ctrl+P
print.Action=onPrint
print.pic=print.gif