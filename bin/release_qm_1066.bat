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
if "%1" == "" (
	call %g_coding%\shell2\mui\bin\config_file.bat 1066
) else (
	if not exist "%1" (
		set g_errstr=destination path %1 not find!
		goto ERREXIT
	)
	call %g_coding%\shell2\mui\bin\config_file.bat 1066 %1
)
call %g_tools_bin%\release.bat

:ERREXIT
echo. 
if "%g_errstr%"=="" (
	echo 生成qm文件成功!
	pause
	exit 0
) else (
	echo 生成qm文件出现错误，提示如下：
	echo %g_errstr%
	pause
	exit 1
)
