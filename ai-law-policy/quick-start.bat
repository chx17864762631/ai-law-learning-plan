@echo off
REM AI法律学习快速启动脚本

echo ========================================
echo   AI法律学习计划 - 快速启动
echo ========================================
echo.

REM 学习目录路径
set LEARNING_DIR=%USERPROFILE%\learning\ai-law-policy

echo 请选择操作：
echo.
echo 1. 打开学习总览
echo 2. 打开当前阶段材料
echo 3. 记录学习日志
echo 4. 查看学习提醒
echo 5. 运行学习提醒
echo 6. 打开学习目录
echo.

set /p choice="请选择 (1-6): "

if "%choice%"=="1" (
    start "" "%LEARNING_DIR%\OVERVIEW.md"
) else if "%choice%"=="2" (
    echo.
    echo 选择阶段：
    echo 1. 第一阶段（政策速览）
    echo 2. 第二阶段（核心领域）
    echo 3. 第三阶段（专业项目）
    echo 4. 第四阶段（职业准备）
    echo.
    set /p phase="请选择阶段 (1-4): "

    if "%phase%"=="1" (
        start "" "%LEARNING_DIR%\phase1\notes\learning-guide.md"
        explorer.exe "%LEARNING_DIR%\phase1\documents\"
    ) else if "%phase%"=="2" (
        start "" "%LEARNING_DIR%\phase2\phase2-guide.md"
        explorer.exe "%LEARNING_DIR%\phase2\"
    ) else if "%phase%"=="3" (
        start "" "%LEARNING_DIR%\phase3\phase3-guide.md"
        explorer.exe "%LEARNING_DIR%\phase3\"
    ) else if "%phase%"=="4" (
        start "" "%LEARNING_DIR%\phase4\phase4-guide.md"
        explorer.exe "%LEARNING_DIR%\phase4\"
    )
) else if "%choice%"=="3" (
    start "" "%LEARNING_DIR%\reminders\learning-log.md"
) else if "%choice%"=="4" (
    start "" "%LEARNING_DIR%\reminders\reminder-config.md"
) else if "%choice%"=="5" (
    wscript.exe "%LEARNING_DIR%\reminders\weekly-reminder.vbs"
) else if "%choice%"=="6" (
    explorer.exe "%LEARNING_DIR%"
)

echo.
echo 完成！
pause
