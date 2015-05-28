@echo off

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
call %g_coding%\shell2\mui\bin\config_file.bat zh_CN
start %g_tools_bin%\linguist.exe 
exit /b 0

:ERREXIT
echo. 
if "%g_errstr%"=="" (
	echo 生成qm文件成功!
) else (
	echo 生成qm文件出现错误，提示如下：
	echo %g_errstr%
)

pause