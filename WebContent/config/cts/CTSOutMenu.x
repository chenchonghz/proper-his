#
  # Title: 点评病历选择
  #
  # Description:点评病历选择
  #
  # Copyright: ProperSoft (c) 2012
  #
  # @author zhangp
  # @version 1.0
<Type=TMenuBar>
UI.Item=File;Window
UI.button=save;|;SaveWashMD;|;clear;|;close;

Window.Type=TMenu
Window.Text=窗口
Window.M=W
Window.Item=Refresh

File.Type=TMenu
File.Text=文件
File.M=F
File.Item=;save;|;SaveWashMD;|;clear;|;close

SaveWashMD.Type=TMenuItem
SaveWashMD.Text=存入库单
SaveWashMD.Tip=存入库单
SaveWashMD.M=
SaveWashMD.key=
SaveWashMD.Action=onSaveWashMD
SaveWashMD.pic=sta-1.gif

save.Type=TMenuItem
save.Text=保存
save.Tip=保存
save.M=S
save.key=Ctrl+S
save.Action=onSave
save.pic=save.gif

delete.Type=TMenuItem
delete.Text=删除
delete.Tip=删除
delete.M=N
delete.key=Delete
delete.Action=onDelete
delete.pic=openbill.gif


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
clear.key=Ctrl+Z
clear.Action=onClear
clear.pic=clear.gif

close.Type=TMenuItem
close.Text=退出
close.Tip=退出
close.M=X
close.key=Alt+F4
close.Action=onClose
close.pic=close.gif



export.Type=TMenuItem
export.Text=汇出
export.Tip=汇出
export.M=E
export.key=F4
export.Action=onExport
export.pic=print.gif