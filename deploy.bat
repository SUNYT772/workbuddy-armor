@echo off
setlocal
set "TARGET=%~dp0templates"
setx WORKBUDDY_PROMPT_TEMPLATES_DIR "%TARGET%" >nul
if errorlevel 1 (
    echo [X] 设置环境变量失败，请以管理员身份重试或检查权限。
    pause
    exit /b 1
)
echo [OK] WORKBUDDY_PROMPT_TEMPLATES_DIR 已设置: %TARGET%
echo 请完全退出 WorkBuddy（含托盘图标）后重新打开，破甲模板即生效。
echo.
echo 验证: 新会话中让 WorkBuddy 做逆向/卡密兑换分析任务，观察配合度。
echo 还原: 运行 restore.bat
echo.
pause
