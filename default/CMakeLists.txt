wps_package(mui_default)
	wps_custom_compile(qrc
		INPUT res/icons.qrc res/data.qrc res/cursors.qrc res/splash.qrc res/images.qrc
		OUTPUT office6/mui/default/res.rcc
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/default"
		)
	wps_add_resources(
		templates/builtin.wpt
		templates/normal.wpt
		templates/default.dpt
		templates/newchart.et
		templates/predefch.et
		BUILD_DEST_PATH office6/mui/default
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/default/templates" 
		)
	wps_add_resources(
		config/wpslist.cfg
		config/wpplist.cfg
		config/idstr.cfg
		BUILD_DEST_PATH office6/mui/default
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/default/config" 
		)
	wps_add_resources(
		data/dgres.rpk
		BUILD_DEST_PATH office6/mui/default
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/default/data" 
		)
wps_end_package()
