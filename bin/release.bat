@echo off

@REM release.bat generate qm files
@REM

@REM check ts files
for %%i in (%g_et_ts%) do (
	if not exist %g_ts_path%\%%i (
		set g_errstr=%cd%\%g_ts_path%\%%i does not exist
		goto ERREXIT
	)
)
for %%i in (%g_wps_ts%) do (
	if not exist %g_ts_path%\%%i (
		set g_errstr=%cd%\%g_ts_path%\%%i does not exist
		goto ERREXIT
	)
)
for %%i in (%g_wpp_ts%) do (
	if not exist %g_ts_path%\%%i (
		set g_errstr=%cd%\%g_ts_path%\%%i does not exist
		goto ERREXIT
	)
)

if not exist %g_qm_path% (
	set g_errstr=%cd%\%g_qm_path% does not exist
	exit /b 1
)

@REM downward compatible!
for %%i in (%g_kso_ts%) do (
	if not exist %g_ts_path%\%%i (
		set g_errstr=%cd%\%g_ts_path%\%%i does not exist
		goto ERREXIT
	)
)

set oldPwd=%cd%
cd %g_ts_path%
%g_tools_bin%\lrelease %g_et_ts% -qm %g_et_qm_name%
%g_tools_bin%\lrelease %g_wps_ts% -qm %g_wps_qm_name%
%g_tools_bin%\lrelease %g_wpp_ts% -qm %g_wpp_qm_name%
%g_tools_bin%\lrelease %g_kso_ts% %g_auth_ts% %g_kde_ts% -qm %g_kso_qm_name%
%g_tools_bin%\lrelease %g_ksomisc_ts% -qm %g_ksomisc_qm_name%
%g_tools_bin%\lrelease %g_qing_ts% -qm %g_qing_qm_name%
%g_tools_bin%\lrelease -idbased -nountranslatedwhenidbased %g_et_tips_ts% -qm %g_et_tips_qm_name%
%g_tools_bin%\lrelease -idbased -nountranslatedwhenidbased %g_wps_tips_ts% -qm %g_wps_tips_qm_name%
%g_tools_bin%\lrelease -idbased -nountranslatedwhenidbased %g_wpp_tips_ts% -qm %g_wpp_tips_qm_name%
%g_tools_bin%\lrelease -idbased -nountranslatedwhenidbased %g_kso_tips_ts% -qm %g_kso_tips_qm_name%
cd %oldPwd%

@REM move file
move /y %g_ts_path%\%g_et_qm_name% %g_qm_path%\%g_et_qm_name%
move /y %g_ts_path%\%g_wps_qm_name% %g_qm_path%\%g_wps_qm_name%
move /y %g_ts_path%\%g_wpp_qm_name% %g_qm_path%\%g_wpp_qm_name%
move /y %g_ts_path%\%g_kso_qm_name% %g_qm_path%\%g_kso_qm_name%
move /y %g_ts_path%\%g_ksomisc_qm_name% %g_qm_path%\%g_ksomisc_qm_name%
move /y %g_ts_path%\%g_qing_qm_name% %g_qm_path%\%g_qing_qm_name%
move /y %g_ts_path%\%g_et_tips_qm_name% %g_qm_path%\%g_et_tips_qm_name%
move /y %g_ts_path%\%g_wps_tips_qm_name% %g_qm_path%\%g_wps_tips_qm_name%
move /y %g_ts_path%\%g_wpp_tips_qm_name% %g_qm_path%\%g_wpp_tips_qm_name%
move /y %g_ts_path%\%g_kso_tips_qm_name% %g_qm_path%\%g_kso_tips_qm_name%

@exit /b 0
:ERREXIT
@exit /b 1
