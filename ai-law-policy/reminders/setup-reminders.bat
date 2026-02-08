@echo off
REM AI法律学习提醒设置脚本
REM 使用Windows任务计划程序设置每周提醒

echo ========================================
echo   AI法律学习计划提醒系统
echo ========================================
echo.

REM 设置提醒脚本路径
set SCRIPT_PATH=%USERPROFILE%\learning\ai-law-policy\reminders
set REMINDER_FILE=%SCRIPT_PATH%\weekly-reminder.vbs

REM 创建VBS提醒脚本
echo 创建提醒脚本...

(
echo Set objShell = CreateObject^("WScript.Shell"^)
echo intButton = objShell.Popup^("【AI法律学习提醒】" ^& vbNewLine ^& vbNewLine ^& _
echo 	"本周学习重点：请查看学习计划" ^& vbNewLine ^& _
echo 	"学习时间：建议本周安排3-5小时" ^& vbNewLine ^& _
echo 	"学习材料：~/learning/ai-law-policy/" ^& vbNewLine ^& vbNewLine ^& _
echo 	"坚持就是胜利！继续加油！" ^& vbNewLine ^& vbNewLine ^& _
echo 	"点击确定打开学习目录，点击取消稍后提醒", _
echo 	60, "AI法律学习提醒", 1 ^)
echo
echo if intButton = 1 then
echo     objShell.Run "explorer.exe %USERPROFILE%\learning\ai-law-policy"
echo end if
) > "%REMINDER_FILE%"

echo 提醒脚本已创建：%REMINDER_FILE%
echo.

REM 询问是否设置任务计划
echo 是否设置每周自动提醒？
echo 1 - 是，设置每周日晚上8点提醒
echo 2 - 否，仅创建提醒脚本
echo.

set /p choice="请选择 (1/2): "

if "%choice%"=="1" (
    echo.
    echo 正在设置任务计划...

    REM 创建任务计划（需要管理员权限）
    schtasks /create /tn "AI法律学习提醒" /tr "wscript.exe \"%REMINDER_FILE%\"" /sc weekly /d SUN /t 20:00 /f

    if errorlevel 1 (
        echo.
        echo 任务计划创建失败！可能需要管理员权限。
        echo 请手动设置任务计划：
        echo 1. 以管理员身份运行命令提示符
        echo 2. 执行以下命令：
        echo    schtasks /create /tn "AI法律学习提醒" /tr "wscript.exe "%REMINDER_FILE%"" /sc weekly /d SUN /t 20:00
        echo.
    ) else (
        echo 任务计划创建成功！
        echo 每周日晚上8点将收到学习提醒。
        echo.
        echo 如需删除任务，请执行：
        echo schtasks /delete /tn "AI法律学习提醒" /f
    )
)

echo.
echo ========================================
echo   提醒系统设置完成
echo ========================================
echo.
echo 手动运行提醒：
echo   wscript.exe "%REMINDER_FILE%"
echo.
echo 查看学习材料：
echo   %USERPROFILE%\learning\ai-law-policy\
echo.
pause
