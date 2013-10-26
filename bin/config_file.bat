@echo off
@REM 配置文件，所有脚本的运行时需要配置文件内的信息。
@REM 输入参数: language,[qm output path]

@REM init global env var
set g_qm_path=

@REM input param
set g_lang=%1
if not "%2" == "" set g_qm_path=%2

@REM error Description
set g_errstr=

@REM g_env_tools: wpsenv\tools目录
for /F "tokens=3" %%i in ('reg query HKCU\Software\Trolltech\Versions\wpsenv /v toolsDir') do set g_env_tools=%%i
if "%g_env_tools%" == "" (
	set g_errstr=get wpsenv toolsDir directory form register failure
	exit /b 1
)

@REM =======================================全局参数设置==================================================
set g_tools_bin=%g_env_tools%\translator\bin
set g_mui_path=%g_coding%\shell2\mui

@REM kui[p] files
set g_uis_path=%g_coding%\shell2\resource\res
set g_ui2ts_version=2

@REM projects 需要产生ts文件的工程, ts文件名为工程名.ts
set g_projs_path=%g_coding%\shell2
set g_projs=kcomctl kxshare kole et wpp wps plugins\wpstablestyle plugins\ettablestyle plugins\khomepage plugins\ktreasurebox plugins\wpp2doc plugins\wpponlinetemplate plugins\officespace plugins\PersonlGallery\WPSGallery

@REM ts files
set g_ts_path=%g_coding%\shell2\mui\%g_lang%
set g_et_ts=kxshare.ts kcomctl.ts kole.ts et.ts etresource.ts ettablestyle.ts khomepage.ts ktreasurebox.ts wpp2doc.ts officespace.ts wpsgallery.ts
set g_wps_ts=kxshare.ts kcomctl.ts kole.ts wps.ts wpsresource.ts wpstablestyle.ts khomepage.ts ktreasurebox.ts wpp2doc.ts officespace.ts wpsgallery.ts
set g_wpp_ts=kxshare.ts kcomctl.ts kole.ts wpp.ts wppresource.ts khomepage.ts ktreasurebox.ts wpp2doc.ts wpponlinetemplate.ts officespace.ts wpsgallery.ts
set g_qt_ts=qt.ts

@REM ts 文件的目标语言
set g_ts_target_lang=
if "%g_lang%"=="1028" set g_ts_target_lang=zh_TW
if "%g_lang%"=="1033" set g_ts_target_lang=en
if "%g_lang%"=="1041" set g_ts_target_lang=ja
if "%g_lang%"=="1066" set g_ts_target_lang=vi
if "%g_lang%"=="2052" set g_ts_target_lang=zh_CN
if "%g_lang%"=="1031" set g_ts_target_lang=de

@REM qm files
set g_et_qm_name=et.qm
set g_wps_qm_name=wps.qm
set g_wpp_qm_name=wpp.qm
set g_qt_qm_name=qt.qm
if "%g_qm_path%" == "" (
	set g_qm_path=%g_coding%\shell2\mui\%g_lang%
)

@REM ui2ts option. defaultcodec可以为空.
@REM location type: 0: no location, 1:relative location, 2:absolute location
set g_obsolete=false
set g_defaultcodec=UTF-8
set g_locationType=0

@REM ====================================================================================================
@REM 检查变量有效性
@REM kui[p] files, project ts files
for %%i in (%g_et_uis%) do (
	if not exist %g_uis_path%\%%i (
		set g_errstr=%cd%\%g_uis_path%\%%i does not exist
		exit /b 1
	)
)
for %%i in (%g_wps_uis%) do (
	if not exist %g_uis_path%\%%i (
		set g_errstr=%cd%\%g_uis_path%\%%i does not exist
		exit /b 1
	)
)
for %%i in (%g_wpp_uis%) do (
	if not exist %g_uis_path%\%%i (
		set g_errstr=%cd%\%g_uis_path%\%%i does not exist
		exit /b 1
	)
)
for %%i in (%g_projs%) do (
	if not exist %g_projs_path%\%%i (
		set g_errstr=%cd%\%g_projs_path%\%%i does not exist
		exit /b 1
	)
)

if not exist %g_ts_path% (
	set g_errstr=%cd%\%g_ts_path% does not exist
	exit /b 1
)
if not exist %g_qm_path% (
	set g_errstr=%cd%\%g_qm_path% does not exist
	exit /b 1
)
