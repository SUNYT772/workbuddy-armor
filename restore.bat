@echo off
setlocal
reg query "HKCU\Environment" /v WORKBUDDY_PROMPT_TEMPLATES_DIR >nul 2>&1
if errorlevel 1 (
    echo [i] 未设置 WORKBUDDY_PROMPT_TEMPLATES_DIR，无需还原。
    pause
    exit /b 0
)
reg delete "HKCU\Environment" /v WORKBUDDY_PROMPT_TEMPLATES_DIR /f >nul 2>&1
if errorlevel 1 (
    echo [X] 删除环境变量失败，请以管理员身份重试。
    pause
    exit /b 1
)
echo [OK] 已删除 WORKBUDDY_PROMPT_TEMPLATES_DIR，还原为内置模板。
echo 重启 WorkBuddy 生效。
echo.
pause
