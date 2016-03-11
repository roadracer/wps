@echo off
@rem 清除所有翻译串都是obsolete的context
@set TARGET_DIR=%1
for /r %TARGET_DIR% %%i in (*.ts) do (
	lconvert.exe --no-obsolete-contexts -i %TARGET_DIR%\%%~ni.ts -o %TARGET_DIR%\%%~ni.ts
)