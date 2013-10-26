#ts生成qm文件接入到cmake后 以下项目则需增加相关ts文件
wps_package(mui_de_DE)
	wps_add_resources(
		lang.conf
		de_DE.png
		BUILD_DEST_PATH office6/mui/de_DE
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/de_DE"
		)

	wps_add_resources(
		templates/builtin.wpt
		templates/normal.wpt
		templates/default.dpt
		templates/newchart.et
		templates/predefch.et
		BUILD_DEST_PATH office6/mui/de_DE
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/de_DE/templates"
		)

	wps_add_resources(
		data/dgres.rpk
		BUILD_DEST_PATH office6/mui/de_DE
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/de_DE/data"
		)

	wps_custom_compile(lrelease 
		INPUT ts/kxshare.ts ts/kcomctl.ts ts/kole.ts ts/wps.ts ts/wpsresource.ts ts/wpstablestyle.ts ts/khomepage.ts ts/ktreasurebox.ts ts/wpscore.ts ts/kso.ts
		OUTPUT office6/mui/de_DE/wps.qm
		#WPS_ADD_INSTALL PRODUCT wps SETOUTPATH "office6/mui/de_DE"
		)

	wps_custom_compile(lrelease 
		INPUT ts/kxshare.ts ts/kcomctl.ts ts/kole.ts ts/wpp.ts ts/wppresource.ts ts/khomepage.ts ts/ktreasurebox.ts ts/wpp2doc.ts ts/wppcore.ts ts/kso.ts
		OUTPUT office6/mui/de_DE/wpp.qm
		#WPS_ADD_INSTALL PRODUCT wpp SETOUTPATH "office6/mui/de_DE"
		)

	wps_custom_compile(lrelease 
		INPUT ts/kxshare.ts ts/kcomctl.ts ts/kole.ts ts/et.ts ts/etresource.ts ts/ettablestyle.ts ts/khomepage.ts ts/ktreasurebox.ts ts/etcore.ts ts/kso.ts
		OUTPUT office6/mui/de_DE/et.qm
		#WPS_ADD_INSTALL PRODUCT et SETOUTPATH "office6/mui/de_DE"
		)
		
	wps_custom_compile(lrelease 
		INPUT ts/qt.ts
		OUTPUT office6/mui/de_DE/qt.qm
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/de_DE"
		)
wps_end_package()
