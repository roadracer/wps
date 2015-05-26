@echo off

@REM 提取并合并XML的翻译资源
@REM input : 组件(wps, et, wpp), 语言，xml文件

set component=%1
set ui_files=%~2

if "%g_ui2ts_version%"=="" (
	if "%component%"=="" (
		set g_errstr=merge kui[p] : input args is empty
		goto ERREXIT
	)

	if "%ui_files%"=="" (
		set g_errstr=merge kui[p] : input args is empty
		goto ERREXIT
	)
)

set ini_file=%component%.ini
set ui_path=%g_uis_path:\=\\%
set ts_path=%g_ts_path:\=\\%

@REM 生产配置文件
@REM 工程名
echo Name=%component% > %ini_file%
echo Version=%g_ui2ts_version% >> %ini_file%
echo.>> %ini_file%

@REM xml文件
echo [Source] >> %ini_file%
echo Path=%ui_path% >> %ini_file%
echo Files=%ui_files% >> %ini_file%
echo.>> %ini_file%

echo [Destination] >> %ini_file%
echo Path=%ts_path% >> %ini_file%
echo Locales=%g_target_lang% >> %ini_file%
echo TargetLang=%g_target_lang% >> %ini_file%
echo.>> %ini_file%

echo [Options] >> %ini_file%
echo Obsolete=%g_obsolete% >> %ini_file%
echo LocationType=%g_locationType% >> %ini_file%
if not "" == "%g_defaultcodec%" echo DefaultCodec=%g_defaultcodec% >> %ini_file%

%g_tools_bin%\kui2ts %ini_file%
@del /q %ini_file%

@exit /b 0

:ERREXIT
@exit /b 1