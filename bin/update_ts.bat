@echo off

@REM error string
set g_errstr=

:next
call config_file.bat %1 %2
if not "%g_errstr%"=="" goto ERREXIT

call update.bat

:ERREXIT
echo. 
if "%g_errstr%"=="" (
	echo %1: 提取并合并翻译文件成功! 
) else (
	echo %1: 提取并合并翻译文件出现错误，提示如下：
	echo %g_errstr% 
	pause
	exit 1
)
