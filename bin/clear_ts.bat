@echo off
@rem 清除 TARGET_DIR 目录内的所有ts文件的翻译！！非常慎重！！
@set TARGET_DIR=%1
for /r %TARGET_DIR% %%i in (*.ts) do (
	lconvert.exe --no-obsolete --drop-translations -i %TARGET_DIR%\%%~ni.ts -o %TARGET_DIR%\%%~ni.ts
)