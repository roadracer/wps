#ts生成qm文件接入到cmake后 以下项目则需增加相关ts文件
wps_package(mui_zh_CN )
	wps_add_resources(
		lang.conf
		zh_CN.png
		BUILD_DEST_PATH office6/mui/zh_CN
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_CN"
		)

	wps_add_resources(
		templates/builtin.wpt
		templates/default.dpt
		templates/normal.wpt
		templates/newchart.et
		templates/predefch.et
		BUILD_DEST_PATH office6/mui/zh_CN
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_CN/templates"
		)

	wps_add_resources(
		config/wpslist.cfg
		config/wpplist.cfg
		config/idstr.cfg
		BUILD_DEST_PATH office6/mui/zh_CN
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_CN/config"
		)

	wps_add_resources(
		data/dgres.rpk
		BUILD_DEST_PATH office6/mui/zh_CN
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_CN/data"
		)

	wps_add_resources(
		"templates/presentationdesigns/communications and dialogues.dpt"
		"templates/presentationdesigns/curtain background.dpt"
		"templates/presentationdesigns/direction.dpt"
		"templates/presentationdesigns/city silhouette.dpt"
		"templates/presentationdesigns/government_five-pointed red star.dpt"
		"templates/presentationdesigns/ox.dpt"
		"templates/presentationdesigns/3d map.dpt"
		"templates/presentationdesigns/Christmas day.dpt"
		"templates/presentationdesigns/blue crystal lattice.dpt"
		"templates/presentationdesigns/classical_tai chi chart.dpt"
		"templates/presentationdesigns/green technology.dpt"
		"templates/presentationdesigns/deep blue technology.dpt"
		"templates/presentationdesigns/science and technology preach.dpt"
		"templates/presentationdesigns/business cooperate.dpt"
		"templates/presentationdesigns/classical_cloud.dpt"
		"templates/presentationdesigns/business_cooperation.dpt"
		"templates/presentationdesigns/time revolution.dpt"
		"templates/presentationdesigns/books.dpt"
		"templates/presentationdesigns/general_streamline.dpt"
		"templates/presentationdesigns/art_gear.dpt"
		"templates/presentationdesigns/general_report.dpt"
		"templates/presentationdesigns/general_abstract.dpt"
		"templates/presentationdesigns/business_business affair.dpt"
		"templates/presentationdesigns/lantern.dpt"
		"templates/presentationdesigns/red background.dpt"
		"templates/presentationdesigns/classical_water lily.dpt"
		"templates/presentationdesigns/business_globe.dpt"
		"templates/presentationdesigns/gear drives.dpt"
		"templates/presentationdesigns/interpersonal relation.dpt"
		"templates/presentationdesigns/government_celebration.dpt"
		"templates/presentationdesigns/business_office.dpt"
		"templates/presentationdesigns/colourful.dpt"
		"templates/presentationdesigns/pleasant garden.dpt"
		"templates/presentationdesigns/small blackbord.dpt"
		"templates/presentationdesigns/corporation trends.dpt"
		"templates/presentationdesigns/business_business report.dpt"
		"templates/presentationdesigns/gear drawings.dpt"
		"templates/presentationdesigns/art_maple leaf.dpt"
		"templates/presentationdesigns/daily_happiness.dpt"
		"templates/presentationdesigns/phantom effect.dpt"
		"templates/presentationdesigns/blue longing.dpt"
		"templates/presentationdesigns/pink daynight.dpt"
		"templates/presentationdesigns/bamboo.dpt"
		"templates/presentationdesigns/general_bubble.dpt"
		"templates/presentationdesigns/general_blue.dpt"
		"templates/presentationdesigns/chinese style.dpt"
		"templates/presentationdesigns/business_stock fluctuation.dpt"
		"templates/presentationdesigns/simple green.dpt"
		"templates/presentationdesigns/blue waves.dpt"
		"templates/presentationdesigns/friendly cooperation.dpt"
		"templates/presentationdesigns/new energe.dpt"
		"templates/presentationdesigns/mythic curve.dpt"
		"templates/presentationdesigns/peep of daylight.dpt"
		"templates/presentationdesigns/art_blue chair.dpt"
		"templates/presentationdesigns/scale integration.dpt"
		"templates/presentationdesigns/festival.dpt"
		"templates/presentationdesigns/business index.dpt"
		"templates/presentationdesigns/business technology.dpt"
		"templates/presentationdesigns/general_oval.dpt"
		"templates/presentationdesigns/modern office work.dpt"
		"templates/presentationdesigns/blue technology.dpt"
		"templates/presentationdesigns/blue background.dpt"
		"templates/presentationdesigns/data pie charts.dpt"
		"templates/presentationdesigns/general_colour block.dpt"
		"templates/presentationdesigns/world map.dpt"
		"templates/presentationdesigns/global trade.dpt"
		"templates/presentationdesigns/charm of coconuts.dpt"
		"templates/presentationdesigns/leisure time.dpt"
		"templates/presentationdesigns/red curtain.dpt"
		"templates/presentationdesigns/Xmas.dpt"
		"templates/presentationdesigns/business_seminar.dpt"
		"templates/presentationdesigns/art_mountaineering.dpt"
		"templates/presentationdesigns/Chinese favorite color of happiness.dpt"
		"templates/presentationdesigns/daily_loose-leaf binder.dpt"
		"templates/presentationdesigns/new charpter.dpt"
		"templates/presentationdesigns/stationery.dpt"
		"templates/presentationdesigns/art_cinefilm.dpt"
		"templates/presentationdesigns/dazzle dance smooth shadow.dpt"
		"templates/presentationdesigns/art_scarlet.dpt"
		"templates/presentationdesigns/sea widen sky.dpt"
		"templates/presentationdesigns/general_red.dpt"
		"templates/presentationdesigns/business calculation.dpt"
		"templates/presentationdesigns/sweet memories.dpt"
		"templates/presentationdesigns/classical_pelycosaur.dpt"
		"templates/presentationdesigns/general_geometric figure.dpt"
		"templates/presentationdesigns/art_eyes.dpt"
		"templates/presentationdesigns/training course.dpt"
		"templates/presentationdesigns/global plan.dpt"
		"templates/presentationdesigns/blue revolution.dpt"
		"templates/presentationdesigns/art_pane.dpt"
		"templates/presentationdesigns/green color.dpt"
		"templates/presentationdesigns/nature complex.dpt"
		"templates/presentationdesigns/art_flower.dpt"
		"templates/presentationdesigns/orange waves.dpt"
		"templates/presentationdesigns/landscape painting.dpt"
		"templates/presentationdesigns/up arrow.dpt"
		"templates/presentationdesigns/classical_lute under the moonlight.dpt"
		"templates/presentationdesigns/general_traditional.dpt"
		BUILD_DEST_PATH office6/mui/zh_CN
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_CN/templates/presentationdesigns"
		)

	wps_add_resources(
		"templates/wps/technology/project application.wpt"
		"templates/wps/technology/scentific and technicaldissertation.wpt"
		BUILD_DEST_PATH office6/mui/zh_CN
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_CN/templates/wps/technology"
		)

	wps_add_resources(
		"templates/wps/Peking official document/request.dot"
		"templates/wps/Peking official document/notification.dot"
		"templates/wps/Peking official document/report.dot"
		"templates/wps/Peking official document/official reply.dot"
		"templates/wps/Peking official document/general official document templates.dot"
		"templates/wps/Peking official document/suggestion.dot"
		"templates/wps/Peking official document/order.dot"
		"templates/wps/Peking official document/meeting summary.dot"
		"templates/wps/Peking official document/bulletin.dot"
		"templates/wps/Peking official document/announcement.dot"
		"templates/wps/Peking official document/decision.dot"
		"templates/wps/Peking official document/notice.dot"
		"templates/wps/Peking official document/letter.dot"
		"templates/wps/Peking official document/bill.dot"
		BUILD_DEST_PATH office6/mui/zh_CN
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_CN/templates/wps/Peking official document"
		)

	wps_add_resources(
		"templates/wps/daily life/weekly plan.wpt"
		"templates/wps/daily life/message card.wpt"
		"templates/wps/daily life/printing edition of manuscript paper.wpt"
		"templates/wps/daily life/commercial letterpaper.wpt"
		"templates/wps/daily life/note.wpt"
		BUILD_DEST_PATH office6/mui/zh_CN
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_CN/templates/wps/daily life"
		)

	wps_add_resources(
		"templates/wps/economy/feasibility study report.wpt"
		"templates/wps/economy/labor contract.wpt"
		"templates/wps/economy/procurement contract.wpt"
		"templates/wps/economy/house-leasing contract.wpt"
		BUILD_DEST_PATH office6/mui/zh_CN
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_CN/templates/wps/economy"
		)

	wps_add_resources(
		"templates/wps/law/power of attorney.wpt"
		"templates/wps/law/letter of identification.wpt"
		"templates/wps/law/civil pleading.wpt"
		"templates/wps/law/criminal or civil indictment.wpt"
		"templates/wps/law/appraisal certificate.wpt"
		"templates/wps/law/resolutions of the shareholder conference.wpt"
		"templates/wps/law/application to change enterprise's name.wpt"
		"templates/wps/law/letter of guarantee.wpt"
		BUILD_DEST_PATH office6/mui/zh_CN
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_CN/templates/wps/law"
		)

	wps_add_resources(
		"templates/wps/office/daily affairs/conference record 1.wpt"
		"templates/wps/office/daily affairs/daily memorandum.wpt"
		"templates/wps/office/daily affairs/excuse.wpt"
		"templates/wps/office/daily affairs/items' memorandum 2.wpt"
		"templates/wps/office/daily affairs/conference record 2.wpt"
		"templates/wps/office/daily affairs/items' memorandum 1.wpt"
		"templates/wps/office/daily affairs/directories.wpt"
		BUILD_DEST_PATH office6/mui/zh_CN
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_CN/templates/wps/office/daily affairs"
		)

	wps_add_resources(
		"templates/wps/office/standard official document/bill.wpt"
		"templates/wps/office/standard official document/notice.wpt"
		"templates/wps/office/standard official document/announcement.wpt"
		"templates/wps/office/standard official document/file.wpt"
		"templates/wps/office/standard official document/instructions.wpt"
		"templates/wps/office/standard official document/bulletin.wpt"
		"templates/wps/office/standard official document/decision.wpt"
		"templates/wps/office/standard official document/report.wpt"
		"templates/wps/office/standard official document/conference summary.wpt"
		"templates/wps/office/standard official document/suggestion.wpt"
		"templates/wps/office/standard official document/official reply.wpt"
		"templates/wps/office/standard official document/letter.wpt"
		"templates/wps/office/standard official document/order.wpt"
		"templates/wps/office/standard official document/blank official document(22 rows, 28columns).wpt"
		"templates/wps/office/standard official document/notification.wpt"
		BUILD_DEST_PATH office6/mui/zh_CN
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_CN/templates/wps/office/standard official document"
		)

	wps_add_resources(
		"templates/wps/office/finance/annual financial report.wpt"
		"templates/wps/office/finance/auditing report on the transfer of property.wpt"
		"templates/wps/office/finance/schedule of revenue and expenditure.wpt"
		"templates/wps/office/finance/item issurance card.wpt"
		"templates/wps/office/finance/due bill.wpt"
		"templates/wps/office/finance/receipt.wpt"
		BUILD_DEST_PATH office6/mui/zh_CN
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_CN/templates/wps/office/finance"
		)

	wps_add_resources(
		"templates/wps/office/management/responsibility statement.wpt"
		"templates/wps/office/management/information cards for staffs.wpt"
		"templates/wps/office/management/stationery issurance card.wpt"
		"templates/wps/office/management/letter of identification.wpt"
		"templates/wps/office/management/CV of executives.wpt"
		"templates/wps/office/management/letter of recommendation.wpt"
		"templates/wps/office/management/ratifying form for appointing or dismissing executives.wpt"
		"templates/wps/office/management/constitution.wpt"
		BUILD_DEST_PATH office6/mui/zh_CN
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_CN/templates/wps/office/management"
		)

	wps_add_resources(
		"templates/wpp/government/project construction scheme.dpt"
		BUILD_DEST_PATH office6/mui/zh_CN
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_CN/templates/wpp/government"
		)

	wps_add_resources(
		"templates/wpp/education/geography.dpt"
		"templates/wpp/education/Chinese (ancient Chinese analysis).dpt"
		"templates/wpp/education/Chinese (contemporary Chinese analysis).dpt"
		BUILD_DEST_PATH office6/mui/zh_CN
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_CN/templates/wpp/education"
		)

	wps_add_resources(
		"templates/wpp/business/company meeting.dpt"
		"templates/wpp/business/financial statement.dpt"
		"templates/wpp/business/market scheme.dpt"
		"templates/wpp/business/recruitment.dpt"
		"templates/wpp/business/bidding scheme.dpt"
		BUILD_DEST_PATH office6/mui/zh_CN
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_CN/templates/wpp/business"
		)

	wps_add_resources(
		"templates/wpp/general/promote your idea.dpt"
		"templates/wpp/general/training.dpt"
		"templates/wpp/general/general.dpt"
		BUILD_DEST_PATH office6/mui/zh_CN
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_CN/templates/wpp/general"
		)

	wps_add_resources(
		"templates/et/managerial report/wages sheet.ett"
		"templates/et/managerial report/output value contrast.ett"
		"templates/et/managerial report/fees management forms.ett"
		"templates/et/managerial report/production and sale management.ett"
		"templates/et/managerial report/construction project form.ett"
		"templates/et/managerial report/collection and payment forms.ett"
		BUILD_DEST_PATH office6/mui/zh_CN
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_CN/templates/et/managerial report"
		)

	wps_add_resources(
		"templates/et/family life/family income and expenditure list.ett"
		"templates/et/family life/stock investment management system.ett"
		"templates/et/family life/family deposit management system.ett"
		BUILD_DEST_PATH office6/mui/zh_CN
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_CN/templates/et/family life"
		)

	wps_add_resources(
		"templates/et/financial reporting/profit center between table.ett"
		"templates/et/financial reporting/inventory sheet.ett"
		"templates/et/financial reporting/budget sheet.ett"
		"templates/et/financial reporting/audit table.ett"
		"templates/et/financial reporting/income account.ett"
		"templates/et/financial reporting/combined schedule of profit center.ett"
		"templates/et/financial reporting/profit center business analytical table.ett"
		"templates/et/financial reporting/industrial and entrepreneurial accounting report.ett"
		"templates/et/financial reporting/auditing sheet.ett"
		"templates/et/financial reporting/commodities accounting statements .ett"
		BUILD_DEST_PATH office6/mui/zh_CN
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_CN/templates/et/financial reporting"
		)

	wps_add_resources(
		"templates/coverpage/buildin/lengthwise/jianli/fanchuanxing.doc"
		"templates/coverpage/buildin/lengthwise/jianli/pintuxing.doc"
		"templates/coverpage/buildin/lengthwise/jianli/shejixing.doc"
		"templates/coverpage/buildin/lengthwise/jianli/qingshuangxing.doc"
		"templates/coverpage/buildin/lengthwise/jianli/huawenxing.doc"
		"templates/coverpage/buildin/lengthwise/jianli/heibaixing.doc"
		"templates/coverpage/buildin/lengthwise/jianli/jianyuexing.doc"
		"templates/coverpage/buildin/lengthwise/jianli/fanchuanxing.png"
		"templates/coverpage/buildin/lengthwise/jianli/pintuxing.png"
		"templates/coverpage/buildin/lengthwise/jianli/shejixing.png"
		"templates/coverpage/buildin/lengthwise/jianli/qingshuangxing.png"
		"templates/coverpage/buildin/lengthwise/jianli/huawenxing.png"
		"templates/coverpage/buildin/lengthwise/jianli/heibaixing.png"
		"templates/coverpage/buildin/lengthwise/jianli/jianyuexing.png"
		BUILD_DEST_PATH office6/mui/zh_CN
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_CN/templates/coverpage/buildin/lengthwise/jianli" 
		)

	wps_add_resources(
		"templates/coverpage/buildin/lengthwise/lunwen/tongyongxing.doc"
		"templates/coverpage/buildin/lengthwise/lunwen/zhuanyexing.doc"
		"templates/coverpage/buildin/lengthwise/lunwen/xitiaowenxing.doc"
		"templates/coverpage/buildin/lengthwise/lunwen/pusuxing.doc"
		"templates/coverpage/buildin/lengthwise/lunwen/xianxing.doc"
		"templates/coverpage/buildin/lengthwise/lunwen/tongyongxing.png"
		"templates/coverpage/buildin/lengthwise/lunwen/zhuanyexing.png"
		"templates/coverpage/buildin/lengthwise/lunwen/xitiaowenxing.png"
		"templates/coverpage/buildin/lengthwise/lunwen/pusuxing.png"
		"templates/coverpage/buildin/lengthwise/lunwen/xianxing.png"
		BUILD_DEST_PATH office6/mui/zh_CN
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_CN/templates/coverpage/buildin/lengthwise/lunwen" 
		)

	wps_add_resources(
		"templates/coverpage/buildin/lengthwise/shangwu/biaozhunxing.doc"
		"templates/coverpage/buildin/lengthwise/shangwu/gewenxing.doc"
		"templates/coverpage/buildin/lengthwise/shangwu/gaoxiaoxing.doc"
		"templates/coverpage/buildin/lengthwise/shangwu/ziranxing.doc"
		"templates/coverpage/buildin/lengthwise/shangwu/jinggexing.doc"
		"templates/coverpage/buildin/lengthwise/shangwu/biaozhunxing.png"
		"templates/coverpage/buildin/lengthwise/shangwu/gewenxing.png"
		"templates/coverpage/buildin/lengthwise/shangwu/gaoxiaoxing.png"
		"templates/coverpage/buildin/lengthwise/shangwu/ziranxing.png"
		"templates/coverpage/buildin/lengthwise/shangwu/jinggexing.png"
		BUILD_DEST_PATH office6/mui/zh_CN
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_CN/templates/coverpage/buildin/lengthwise/shangwu" 
		)

	wps_add_resources(
		"templates/coverpage/buildin/transverse/hengxiang/yuandianxing.doc"
		"templates/coverpage/buildin/transverse/hengxiang/sekuaixing.doc"
		"templates/coverpage/buildin/transverse/hengxiang/xiantiaoxing.doc"
		"templates/coverpage/buildin/transverse/hengxiang/jiantouxing.doc"
		"templates/coverpage/buildin/transverse/hengxiang/chuantongxing.doc"
		"templates/coverpage/buildin/transverse/hengxiang/duijixing.doc"
		"templates/coverpage/buildin/transverse/hengxiang/yuandianxing.png"
		"templates/coverpage/buildin/transverse/hengxiang/sekuaixing.png"
		"templates/coverpage/buildin/transverse/hengxiang/xiantiaoxing.png"
		"templates/coverpage/buildin/transverse/hengxiang/jiantouxing.png"
		"templates/coverpage/buildin/transverse/hengxiang/chuantongxing.png"
		"templates/coverpage/buildin/transverse/hengxiang/duijixing.png"
		BUILD_DEST_PATH office6/mui/zh_CN
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_CN/templates/coverpage/buildin/transverse/hengxiang" 
		)

	wps_custom_compile(lrelease 
		INPUT ts/kxshare.ts ts/kcomctl.ts ts/kole.ts ts/wps.ts ts/wpsresource.ts ts/wpstablestyle.ts ts/khomepage.ts
			  ts/ktreasurebox.ts ts/officespace.ts ts/wpsgallery.ts ts/wpscore.ts ts/kso.ts
		OUTPUT office6/mui/zh_CN/wps.qm
		WPS_ADD_INSTALL PRODUCT wps SETOUTPATH "office6/mui/zh_CN"
		)

	wps_custom_compile(lrelease 
		INPUT ts/kxshare.ts ts/kcomctl.ts ts/kole.ts ts/wpp.ts ts/wppresource.ts ts/khomepage.ts ts/ktreasurebox.ts ts/wpp2doc.ts
			  ts/wpponlinetemplate.ts ts/officespace.ts ts/wpsgallery.ts ts/wppcore.ts ts/kso.ts
		OUTPUT office6/mui/zh_CN/wpp.qm
		WPS_ADD_INSTALL PRODUCT wpp SETOUTPATH "office6/mui/zh_CN"
		)

	wps_custom_compile(lrelease 
		INPUT ts/kxshare.ts ts/kcomctl.ts ts/kole.ts ts/et.ts ts/etresource.ts ts/ettablestyle.ts ts/khomepage.ts ts/ktreasurebox.ts
			  ts/officespace.ts ts/wpsgallery.ts ts/etcore.ts ts/kso.ts
		OUTPUT office6/mui/zh_CN/et.qm
		WPS_ADD_INSTALL PRODUCT et SETOUTPATH "office6/mui/zh_CN"
		)
		
	wps_custom_compile(lrelease 
		INPUT ts/qt.ts
		OUTPUT office6/mui/zh_CN/qt.qm
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_CN"
		)

	wps_custom_compile(qrc
		INPUT res/icons.qrc res/images.qrc
		OUTPUT office6/mui/zh_CN/res.rcc
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_CN"
		)
wps_end_package()
