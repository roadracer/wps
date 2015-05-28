@echo off
@rem 使用 SRC_DIR 的ts文件的翻译覆盖 TARGET_DIR 目录下的同名ts文件
@set SRC_DIR=%1
@set TARGET_DIR=%2
for /r %SRC_DIR% %%i in (*.ts) do (
	lconvert.exe -i %TARGET_DIR%\%%~ni.ts %SRC_DIR%\%%~ni.ts -o %TARGET_DIR%\%%~ni.ts
)