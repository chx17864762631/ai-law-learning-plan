Set objShell = CreateObject("WScript.Shell")
intButton = objShell.Popup("【AI法律学习提醒�? ^& vbNewLine ^& vbNewLine ^& _
	"本周学习重点：请查看学习计划" & vbNewLine & _
	"学习时间：建议本周安�?-5小时" & vbNewLine & _
	"学习材料：~/learning/ai-law-policy/" & vbNewLine & vbNewLine & _
	"坚持就是胜利！继续加油！" & vbNewLine & vbNewLine & _
	"点击确定打开学习目录，点击取消稍后提�?, _
	60, "AI法律学习提醒", 1 )
ECHO ���ڹر�״̬��
if intButton = 1 then
    objShell.Run "explorer.exe C:\Users\98525\learning\ai-law-policy"
end if
