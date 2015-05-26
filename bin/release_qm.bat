@echo off

@REM error string
set g_errstr=


:next
if "%2" == "" (
	call config_file.bat %1
) else (
	if not exist "%2" (
		set g_errstr=destination path %2 not find!
		goto ERREXIT
	)
	call config_file.bat %1 %2
)
call release.bat

:ERREXIT
echo. 
if "%g_errstr%"=="" (
	echo %1: 生成qm文件成功!
) else (
	echo %1: 生成qm文件出现错误，提示如下：
	echo %g_errstr%
	pause
	exit 1
)
