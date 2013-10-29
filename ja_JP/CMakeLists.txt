#ts生成qm文件接入到cmake后 以下项目则需增加相关ts文件
wps_package(mui_ja_JP)
	wps_add_resources(
		lang.conf
		ja_JP.png
		BUILD_DEST_PATH office6/mui/ja_JP
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/ja_JP"
		)

	wps_add_resources(
		templates/builtin.wpt
		templates/default.dpt
		templates/normal.wpt
		templates/newchart.et
		templates/predefch.et
		BUILD_DEST_PATH office6/mui/ja_JP
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/ja_JP/templates"
		)

	wps_add_resources(
		config/wpslist.cfg
		BUILD_DEST_PATH office6/mui/ja_JP
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/ja_JP/config"
		)

	wps_add_resources(
		data/dgres.rpk
		BUILD_DEST_PATH office6/mui/ja_JP
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/ja_JP/data"
		)

	wps_add_resources(
		"templates/presentationdesigns/art_celebration.dpt"
		"templates/presentationdesigns/grassland_view.dpt"
		"templates/presentationdesigns/general_streamline.dpt"
		"templates/presentationdesigns/art_gear.dpt"
		"templates/presentationdesigns/general_report.dpt"
		"templates/presentationdesigns/classical_water lily.dpt"
		"templates/presentationdesigns/business_office.dpt"
		"templates/presentationdesigns/classical_teaching.dpt"
		"templates/presentationdesigns/business_business report.dpt"
		"templates/presentationdesigns/art_maple leaf.dpt"
		"templates/presentationdesigns/art_coffee.dpt"
		"templates/presentationdesigns/player.dpt"
		"templates/presentationdesigns/art_blue chair.dpt"
		"templates/presentationdesigns/general_colour block.dpt"
		"templates/presentationdesigns/business_seminar.dpt"
		"templates/presentationdesigns/art_mountaineering.dpt"
		"templates/presentationdesigns/envelop.dpt"
		"templates/presentationdesigns/art_scarlet.dpt"
		"templates/presentationdesigns/general_red.dpt"
		"templates/presentationdesigns/general_geometric figure.dpt"
		"templates/presentationdesigns/art_eyes.dpt"
		"templates/presentationdesigns/art_tree.dpt"
		"templates/presentationdesigns/art_cup.dpt"
		"templates/presentationdesigns/fastener.dpt"
		"templates/presentationdesigns/water.dpt"
		BUILD_DEST_PATH office6/mui/ja_JP
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/ja_JP/templates/presentationdesigns"
		)

	wps_add_resources(
		"templates/wps/personal/job resume.wpt"
		"templates/wps/personal/personal fax.wpt"
		"templates/wps/personal/message.wpt"
		"templates/wps/personal/resume.wpt"
		BUILD_DEST_PATH office6/mui/ja_JP
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/ja_JP/templates/wps/personal"
		)

	wps_add_resources(
		"templates/wps/business/document between company.wpt"
		"templates/wps/business/business fax.wpt"
		"templates/wps/business/meeting record.wpt"
		"templates/wps/business/memo.wpt"
		BUILD_DEST_PATH office6/mui/ja_JP
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/ja_JP/templates/wps/business"
		)

	wps_add_resources(
		"templates/wps/card/summer card.wpt"
		"templates/wps/card/new year card.wpt"
		BUILD_DEST_PATH office6/mui/ja_JP
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/ja_JP/templates/wps/card"
		)

	wps_add_resources(
		"templates/wpp/education/Back_to_School.dpt"
		BUILD_DEST_PATH office6/mui/ja_JP
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/ja_JP/templates/wpp/education"
		)

	wps_add_resources(
		"templates/wpp/business/Product Introduce.dpt"
		"templates/wpp/business/Employee_Training.dpt"
		"templates/wpp/business/Scheme_Suggestion.dpt"
		"templates/wpp/business/Business Plan.dpt"
		"templates/wpp/business/Introduce Company.dpt"
		"templates/wpp/business/Modal_Report.dpt"
		"templates/wpp/business/Financial_Report.dpt"
		BUILD_DEST_PATH office6/mui/ja_JP
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/ja_JP/templates/wpp/business"
		)

	wps_add_resources(
		"templates/wpp/other/Project_Summary.dpt"
		BUILD_DEST_PATH office6/mui/ja_JP
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/ja_JP/templates/wpp/other"
		)

	wps_add_resources(
		"templates/wpp/general/General.dpt"
		BUILD_DEST_PATH office6/mui/ja_JP
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/ja_JP/templates/wpp/general"
		)

	wps_add_resources(
		"templates/et/personal/resume.ett"
		"templates/et/personal/travel scheme.ett"
		"templates/et/personal/wedding appeared list.ett"
		"templates/et/personal/reading list.ett"
		BUILD_DEST_PATH office6/mui/ja_JP
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/ja_JP/templates/et/personal"
		)

	wps_add_resources(
		"templates/et/education/school report card.ett"
		BUILD_DEST_PATH office6/mui/ja_JP
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/ja_JP/templates/et/education"
		)

	wps_add_resources(
		"templates/et/manage/on leave table.ett"
		BUILD_DEST_PATH office6/mui/ja_JP
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/ja_JP/templates/et/manage"
		)

	wps_add_resources(
		"templates/et/business/buy plan.ett"
		BUILD_DEST_PATH office6/mui/ja_JP
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/ja_JP/templates/et/business"
		)

	wps_add_resources(
		"templates/et/finance/family income and expenses.ett"
		"templates/et/finance/outlay list.ett"
		"templates/et/finance/fund course.ett"
		BUILD_DEST_PATH office6/mui/ja_JP
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/ja_JP/templates/et/finance"
		)

	wps_add_resources(
		"templates/coverpage/buildin/lengthwise/jianyue/zongjianyue3.doc"
		"templates/coverpage/buildin/lengthwise/jianyue/zongjianyue1.doc"
		"templates/coverpage/buildin/lengthwise/jianyue/zongjianyue2.doc"
		"templates/coverpage/buildin/lengthwise/jianyue/zongjianyue3.png"
		"templates/coverpage/buildin/lengthwise/jianyue/zongjianyue1.png"
		"templates/coverpage/buildin/lengthwise/jianyue/zongjianyue2.png"
		BUILD_DEST_PATH office6/mui/ja_JP
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/ja_JP/templates/coverpage/buildin/lengthwise/jianyue"
		)
	wps_add_resources(
		"templates/coverpage/buildin/lengthwise/shangwu/zongshangwu1.doc"
		"templates/coverpage/buildin/lengthwise/shangwu/zongshangwu1.png"
		BUILD_DEST_PATH office6/mui/ja_JP
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/ja_JP/templates/coverpage/buildin/lengthwise/shangwu"
		)
	wps_add_resources(
		"templates/coverpage/buildin/lengthwise/sheji/zongsheji1.doc"
		"templates/coverpage/buildin/lengthwise/sheji/zongsheji2.doc"
		"templates/coverpage/buildin/lengthwise/sheji/zongsheji1.png"
		"templates/coverpage/buildin/lengthwise/sheji/zongsheji2.png"
		BUILD_DEST_PATH office6/mui/ja_JP
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/ja_JP/templates/coverpage/buildin/lengthwise/sheji"
		)
	wps_add_resources(
		"templates/coverpage/buildin/transverse/jianyue/hengjianyue1.doc"
		"templates/coverpage/buildin/transverse/jianyue/hengjianyue2.doc"
		"templates/coverpage/buildin/transverse/jianyue/hengjianyue3.doc"
		"templates/coverpage/buildin/transverse/jianyue/hengjianyue1.png"
		"templates/coverpage/buildin/transverse/jianyue/hengjianyue2.png"
		"templates/coverpage/buildin/transverse/jianyue/hengjianyue3.png"
		BUILD_DEST_PATH office6/mui/ja_JP
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/ja_JP/templates/coverpage/buildin/transverse/jianyue"
		)
	wps_add_resources(
		"templates/coverpage/buildin/transverse/shangwu/hengshangwu1.doc"
		"templates/coverpage/buildin/transverse/shangwu/hengshangwu1.png"
		BUILD_DEST_PATH office6/mui/ja_JP
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/ja_JP/templates/coverpage/buildin/transverse/shangwu"
		)
	wps_add_resources(
		"templates/coverpage/buildin/transverse/sheji/hengsheji2.doc"
		"templates/coverpage/buildin/transverse/sheji/hengsheji1.doc"
		"templates/coverpage/buildin/transverse/sheji/hengsheji2.png"
		"templates/coverpage/buildin/transverse/sheji/hengsheji1.png"
		BUILD_DEST_PATH office6/mui/ja_JP
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/ja_JP/templates/coverpage/buildin/transverse/sheji"
		)
	wps_custom_compile(lrelease 
		INPUT ts/kxshare.ts ts/kcomctl.ts ts/kole.ts ts/wps.ts ts/wpsresource.ts ts/wpstablestyle.ts ts/khomepage.ts ts/ktreasurebox.ts ts/wpscore.ts ts/kso.ts
		OUTPUT office6/mui/ja_JP/wps.qm
		#WPS_ADD_INSTALL PRODUCT wps SETOUTPATH "office6/mui/ja_JP"
		)

	wps_custom_compile(lrelease 
		INPUT ts/kxshare.ts ts/kcomctl.ts ts/kole.ts ts/wpp.ts ts/wppresource.ts ts/khomepage.ts ts/ktreasurebox.ts ts/wpp2doc.ts ts/wppcore.ts ts/kso.ts
		OUTPUT office6/mui/ja_JP/wpp.qm
		#WPS_ADD_INSTALL PRODUCT wpp SETOUTPATH "office6/mui/ja_JP"
		)

	wps_custom_compile(lrelease 
		INPUT ts/kxshare.ts ts/kcomctl.ts ts/kole.ts ts/et.ts ts/etresource.ts ts/ettablestyle.ts ts/khomepage.ts ts/ktreasurebox.ts ts/etcore.ts ts/kso.ts
		OUTPUT office6/mui/ja_JP/et.qm
		#WPS_ADD_INSTALL PRODUCT et SETOUTPATH "office6/mui/ja_JP"
		)
		
	wps_custom_compile(lrelease 
		INPUT ts/qt.ts
		OUTPUT office6/mui/ja_JP/qt.qm
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/ja_JP"
		)

	wps_custom_compile(qrc
		INPUT res/icons.qrc res/images.qrc
		OUTPUT office6/mui/ja_JP/res.rcc
		#WPS_ADD_INSTALL SETOUTPATH office6/mui/ja_JP
		)
wps_end_package()
