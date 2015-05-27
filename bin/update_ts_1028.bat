@echo off

@REM error string
set g_errstr=

@REM test coding directory
set g_coding=../Coding
if exist %g_coding% goto next
set g_coding=../../Coding
if exist %g_coding% goto next
set g_coding=../../../Coding
if exist %g_coding% goto next
set g_coding=../../../../Coding
if exist %g_coding% goto next
set g_coding=../../../../../Coding
if exist %g_coding% goto next
set g_coding=../../../../../../Coding
if exist %g_coding% goto next
set g_errstr=cann't find coding directory 
goto ERREXIT

:next
call %g_coding%\shell2\mui\bin\config_file.bat 1028
if not "%g_errstr%"=="" goto ERREXIT

call %g_tools_bin%\update.bat

:ERREXIT
echo. 
if "%g_errstr%"=="" (
	echo 提取并合并翻译文件成功!
	pause
	exit 0
) else (
	echo 提取并合并翻译文件出现错误，提示如下：
	echo %g_errstr%
	pause
	exit 1
)

