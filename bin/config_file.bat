@echo off
@REM 配置文件，所有脚本的运行时需要配置文件内的信息。
@REM 输入参数: language,[qm output path]

@REM TODO 现在传参数好麻烦
@REM input param
set g_target_lang=%1

if not "%2" == "" set g_coding=%2
if "%g_coding%" == "" (
	set g_coding=..\..\..\
)

set "g_coding=%g_coding:"=%"

if not "%3" == "" set g_qm_path=%3
if "%g_qm_path%" == "" (
	set g_qm_path=..\%g_target_lang%
)

@REM error Description
set g_errstr=

@REM =======================================全局参数设置==================================================
set g_tools_bin=%~dp0
set g_mui_path=%g_coding%\shell2\mui

@REM kui[p] files
set g_uis_path=%g_coding%\shell2\resource\res
set g_ui2ts_version=2

@REM projects 需要产生ts文件的工程, ts文件名为工程名.ts
set g_projs_path=%g_coding%\shell2
set g_projs=kcomctl kxshare kole et wpp wps plugins\wpstablestyle plugins\ettablestyle plugins\khomepage plugins\ktreasurebox plugins\wpp2doc plugins\wpponlinetemplate plugins\officespace plugins\multiclipboard plugins\kscreengrab ..\support\ksomisc plugins\protecteyes plugins\kwpsassist plugins\wppencoder plugins\wpppresentationtool plugins\wpsspeaker plugins\launcher plugins\kfeedback plugins\shareplay
set g_core_projs_path=%g_coding%\include\kso\l10n
set g_kde_projs_path=%g_coding%\office\kde\kde_coreapi
set g_auth_projs_path=%g_coding%\shell2\auth
set q_qing_projs_path=%g_coding%\shell2\plugins\kwpslive\qing

@REM tips
set g_tips_path=%g_coding%\shell2\include\tips
set g_tips=et wps wpp kso

@REM ts files
@REM 重要：每个工程的ts文件生成qm文件的流程已经移到每个语言工程的cmakelist中，如有新加ts需要修改
@REM Coding/shell2/mui/CMakeLists.txt中维护的ts列表，同时在语言目录的CMakeLists.txt中配置使用
@REM cmake宏wps_custom_compile调用lrelease来生成，才能在构建时生成qm翻译文件
set g_ts_path=..\%g_target_lang%\ts
set g_et_ts=et.ts etresource.ts ettablestyle.ts etcore.ts protecteyes.ts
set g_wps_ts=wps.ts wpsresource.ts wpstablestyle.ts wpscore.ts protecteyes.ts
set g_wpp_ts=wpp.ts wppresource.ts wpp2doc.ts wpponlinetemplate.ts wppcore.ts
set g_kso_ts=qt.ts kxshare.ts kcomctl.ts kole.ts khomepage.ts ktreasurebox.ts officespace.ts multiclipboard.ts kso.ts kscreengrab.ts shareplay.ts kwpsassist.ts wppencoder.ts wpppresentationtool.ts wpsspeaker.ts 
set g_ksomisc_ts=ksomisc.ts
set g_launcher_ts=launcher.ts
set g_kde_ts=kde.ts
set g_auth_ts=auth.ts
set g_qing_ts=qing.ts
set g_et_tips_ts=ettips.ts
set g_wps_tips_ts=wpstips.ts
set g_wpp_tips_ts=wpptips.ts
set g_kso_tips_ts=ksotips.ts

@REM qm files
set g_et_qm_name=et.qm
set g_wps_qm_name=wps.qm
set g_wpp_qm_name=wpp.qm
set g_kso_qm_name=kso.qm
set g_ksomisc_qm_name=ksomisc.qm
set g_launcher_qm_name=launcher.qm
set g_qing_qm_name=qing.qm
set g_et_tips_qm_name=ettips.qm
set g_wps_tips_qm_name=wpstips.qm
set g_wpp_tips_qm_name=wpptips.qm
set g_kso_tips_qm_name=ksotips.qm

@REM option. defaultcodec可以为空.
@REM location type: 0: no location, 1:relative location, 2:absolute location
set g_obsolete=false
set g_defaultcodec=UTF-8
set g_locationType=0

