#ts生成qm文件接入到cmake后 以下项目则需增加相关ts文件
wps_package(mui_zh_TW)
	wps_add_resources(
		lang.conf
		zh_TW.png
		BUILD_DEST_PATH office6/mui/zh_TW
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_TW"
		)

	wps_add_resources(
		templates/builtin.wpt
		templates/default.dpt
		templates/normal.wpt
		templates/newchart.et
		templates/predefch.et
		BUILD_DEST_PATH office6/mui/zh_TW
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_TW/templates"
		)

	wps_add_resources(
		data/dgres.rpk
		BUILD_DEST_PATH office6/mui/zh_TW
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_TW/data"
		)

	wps_add_resources(
		"templates/presentationdesigns/direction.dpt"
		"templates/presentationdesigns/government_five-pointed red star.dpt"
		"templates/presentationdesigns/classical_tai chi chart.dpt"
		"templates/presentationdesigns/deep blue technology.dpt"
		"templates/presentationdesigns/classical_cloud.dpt"
		"templates/presentationdesigns/business_cooperation.dpt"
		"templates/presentationdesigns/time revolution.dpt"
		"templates/presentationdesigns/general_streamline.dpt"
		"templates/presentationdesigns/art_gear.dpt"
		"templates/presentationdesigns/general_report.dpt"
		"templates/presentationdesigns/general_abstract.dpt"
		"templates/presentationdesigns/business_business affair.dpt"
		"templates/presentationdesigns/classical_water lily.dpt"
		"templates/presentationdesigns/business_globe.dpt"
		"templates/presentationdesigns/government_celebration.dpt"
		"templates/presentationdesigns/business_office.dpt"
		"templates/presentationdesigns/colourful.dpt"
		"templates/presentationdesigns/pleasant garden.dpt"
		"templates/presentationdesigns/corporation trends.dpt"
		"templates/presentationdesigns/business_business report.dpt"
		"templates/presentationdesigns/art_maple leaf.dpt"
		"templates/presentationdesigns/daily_happiness.dpt"
		"templates/presentationdesigns/blue longing.dpt"
		"templates/presentationdesigns/pink daynight.dpt"
		"templates/presentationdesigns/general_bubble.dpt"
		"templates/presentationdesigns/general_blue.dpt"
		"templates/presentationdesigns/business_stock fluctuation.dpt"
		"templates/presentationdesigns/friendly cooperation.dpt"
		"templates/presentationdesigns/mythic curve.dpt"
		"templates/presentationdesigns/peep of daylight.dpt"
		"templates/presentationdesigns/art_blue chair.dpt"
		"templates/presentationdesigns/scale integration.dpt"
		"templates/presentationdesigns/general_oval.dpt"
		"templates/presentationdesigns/modern office work.dpt"
		"templates/presentationdesigns/blue technology.dpt"
		"templates/presentationdesigns/general_colour block.dpt"
		"templates/presentationdesigns/world map.dpt"
		"templates/presentationdesigns/charm of coconuts.dpt"
		"templates/presentationdesigns/leisure time.dpt"
		"templates/presentationdesigns/business_seminar.dpt"
		"templates/presentationdesigns/art_mountaineering.dpt"
		"templates/presentationdesigns/Chinese favorite color of happiness.dpt"
		"templates/presentationdesigns/daily_loose-leaf binder.dpt"
		"templates/presentationdesigns/art_cinefilm.dpt"
		"templates/presentationdesigns/art_scarlet.dpt"
		"templates/presentationdesigns/general_red.dpt"
		"templates/presentationdesigns/business calculation.dpt"
		"templates/presentationdesigns/sweet memories.dpt"
		"templates/presentationdesigns/classical_pelycosaur.dpt"
		"templates/presentationdesigns/general_geometric figure.dpt"
		"templates/presentationdesigns/art_eyes.dpt"
		"templates/presentationdesigns/blue revolution.dpt"
		"templates/presentationdesigns/art_pane.dpt"
		"templates/presentationdesigns/nature complex.dpt"
		"templates/presentationdesigns/art_flower.dpt"
		"templates/presentationdesigns/landscape painting.dpt"
		"templates/presentationdesigns/classical_lute under the moonlight.dpt"
		"templates/presentationdesigns/general_traditional.dpt"
		BUILD_DEST_PATH office6/mui/zh_TW
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_TW/templates/presentationdesigns"
		)

	wps_add_resources(
		"templates/wps/technology/project application.wpt"
		"templates/wps/technology/thesis.wpt"
		"templates/wps/technology/scentific and technicaldissertation.wpt"
		BUILD_DEST_PATH office6/mui/zh_TW
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_TW/templates/wps/technology"
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
		BUILD_DEST_PATH office6/mui/zh_TW
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_TW/templates/wps/Peking official document"
		)

	wps_add_resources(
		"templates/wps/daily life/weekly plan.wpt"
		"templates/wps/daily life/message card.wpt"
		"templates/wps/daily life/business card2.wpt"
		"templates/wps/daily life/printing edition of manuscript paper.wpt"
		"templates/wps/daily life/commercial letterpaper.wpt"
		"templates/wps/daily life/business card1.wpt"
		"templates/wps/daily life/note.wpt"
		BUILD_DEST_PATH office6/mui/zh_TW
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_TW/templates/wps/daily life"
		)

	wps_add_resources(
		"templates/wps/economy/feasibility study report.wpt"
		"templates/wps/economy/labor contract.wpt"
		"templates/wps/economy/service manual2.wpt"
		"templates/wps/economy/production and service.wpt"
		"templates/wps/economy/service manual1.wpt"
		"templates/wps/economy/procurement contract.wpt"
		"templates/wps/economy/house-leasing contract.wpt"
		BUILD_DEST_PATH office6/mui/zh_TW
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_TW/templates/wps/economy"
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
		BUILD_DEST_PATH office6/mui/zh_TW
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_TW/templates/wps/law"
		)

	wps_add_resources(
		"templates/wps/office/daily affairs/conference record 1.wpt"
		"templates/wps/office/daily affairs/daily memorandum.wpt"
		"templates/wps/office/daily affairs/excuse.wpt"
		"templates/wps/office/daily affairs/fax3.wpt"
		"templates/wps/office/daily affairs/items' memorandum 2.wpt"
		"templates/wps/office/daily affairs/commercial letterpaper.wpt"
		"templates/wps/office/daily affairs/conference record 2.wpt"
		"templates/wps/office/daily affairs/conference list.wpt"
		"templates/wps/office/daily affairs/items' memorandum 1.wpt"
		"templates/wps/office/daily affairs/fax2.wpt"
		"templates/wps/office/daily affairs/directories.wpt"
		"templates/wps/office/daily affairs/fax1.wpt"
		BUILD_DEST_PATH office6/mui/zh_TW
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_TW/templates/wps/office/daily affairs"
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
		BUILD_DEST_PATH office6/mui/zh_TW
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_TW/templates/wps/office/standard official document"
		)

	wps_add_resources(
		"templates/wps/office/finance/annual financial report.wpt"
		"templates/wps/office/finance/auditing report on the transfer of property.wpt"
		"templates/wps/office/finance/schedule of revenue and expenditure.wpt"
		"templates/wps/office/finance/item issurance card.wpt"
		"templates/wps/office/finance/due bill.wpt"
		"templates/wps/office/finance/receipt.wpt"
		BUILD_DEST_PATH office6/mui/zh_TW
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_TW/templates/wps/office/finance"
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
		BUILD_DEST_PATH office6/mui/zh_TW
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_TW/templates/wps/office/management"
		)

	wps_add_resources(
		"templates/wpp/government/curtain background.dpt"
		"templates/wpp/government/government_five-pointed red star.dpt"
		"templates/wpp/government/red background.dpt"
		"templates/wpp/government/government_celebration.dpt"
		"templates/wpp/government/project construction scheme.dpt"
		"templates/wpp/government/red curtain.dpt"
		BUILD_DEST_PATH office6/mui/zh_TW
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_TW/templates/wpp/government"
		)

	wps_add_resources(
		"templates/wpp/education/geography.dpt"
		"templates/wpp/education/TeachingNormalTemplate1.dpt"
		"templates/wpp/education/music.dpt"
		"templates/wpp/education/books.dpt"
		"templates/wpp/education/small blackbord.dpt"
		"templates/wpp/education/mathematics.dpt"
		"templates/wpp/education/physics.dpt"
		"templates/wpp/education/English.dpt"
		"templates/wpp/education/art.dpt"
		"templates/wpp/education/chemistry.dpt"
		"templates/wpp/education/Chinese (ancient Chinese analysis).dpt"
		"templates/wpp/education/Chinese.dpt"
		"templates/wpp/education/daily_loose-leaf binder.dpt"
		"templates/wpp/education/Chinese (contemporary Chinese analysis).dpt"
		"templates/wpp/education/TeachingNormalTemplate2.dpt"
		"templates/wpp/education/stationery.dpt"
		"templates/wpp/education/biology.dpt"
		"templates/wpp/education/TeachingNormalTemplate3.dpt"
		BUILD_DEST_PATH office6/mui/zh_TW
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_TW/templates/wpp/education"
		)

	wps_add_resources(
		"templates/wpp/business/communications and dialogues.dpt"
		"templates/wpp/business/deep blue technology.dpt"
		"templates/wpp/business/business cooperate.dpt"
		"templates/wpp/business/business_business affair.dpt"
		"templates/wpp/business/company meeting.dpt"
		"templates/wpp/business/financial statement.dpt"
		"templates/wpp/business/business_stock fluctuation.dpt"
		"templates/wpp/business/friendly cooperation.dpt"
		"templates/wpp/business/mythic curve.dpt"
		"templates/wpp/business/business technology.dpt"
		"templates/wpp/business/data pie charts.dpt"
		"templates/wpp/business/market scheme.dpt"
		"templates/wpp/business/global trade.dpt"
		"templates/wpp/business/recruitment.dpt"
		"templates/wpp/business/business calculation.dpt"
		"templates/wpp/business/global plan.dpt"
		"templates/wpp/business/bidding scheme.dpt"
		BUILD_DEST_PATH office6/mui/zh_TW
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_TW/templates/wpp/business"
		)

	wps_add_resources(
		"templates/wpp/general/direction.dpt"
		"templates/wpp/general/city silhouette.dpt"
		"templates/wpp/general/green technology.dpt"
		"templates/wpp/general/gear drives.dpt"
		"templates/wpp/general/promote your idea.dpt"
		"templates/wpp/general/pleasant garden.dpt"
		"templates/wpp/general/gear drawings.dpt"
		"templates/wpp/general/training.dpt"
		"templates/wpp/general/phantom effect.dpt"
		"templates/wpp/general/blue longing.dpt"
		"templates/wpp/general/blue waves.dpt"
		"templates/wpp/general/new energe.dpt"
		"templates/wpp/general/blue background.dpt"
		"templates/wpp/general/art_mountaineering.dpt"
		"templates/wpp/general/new charpter.dpt"
		"templates/wpp/general/dazzle dance smooth shadow.dpt"
		"templates/wpp/general/sweet memories.dpt"
		"templates/wpp/general/classical_pelycosaur.dpt"
		"templates/wpp/general/green color.dpt"
		"templates/wpp/general/orange waves.dpt"
		"templates/wpp/general/landscape painting.dpt"
		"templates/wpp/general/up arrow.dpt"
		"templates/wpp/general/general.dpt"
		BUILD_DEST_PATH office6/mui/zh_TW
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_TW/templates/wpp/general"
		)

	wps_add_resources(
		"templates/et/managerial report/wages sheet.ett"
		"templates/et/managerial report/output value contrast.ett"
		"templates/et/managerial report/fees management forms.ett"
		"templates/et/managerial report/production and sale management.ett"
		"templates/et/managerial report/construction project form.ett"
		"templates/et/managerial report/expense account.ett"
		"templates/et/managerial report/collection and payment forms.ett"
		BUILD_DEST_PATH office6/mui/zh_TW
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_TW/templates/et/managerial report"
		)

	wps_add_resources(
		"templates/et/family life/family income and expenditure list.ett"
		"templates/et/family life/personal budget.ett"
		"templates/et/family life/stock investment management system.ett"
		"templates/et/family life/calendar.ett"
		"templates/et/family life/family deposit management system.ett"
		BUILD_DEST_PATH office6/mui/zh_TW
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_TW/templates/et/family life"
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
		BUILD_DEST_PATH office6/mui/zh_TW
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_TW/templates/et/financial reporting"
		)

	wps_custom_compile(lrelease 
		INPUT ts/kxshare.ts ts/kcomctl.ts ts/wpp2doc.ts ts/kole.ts ts/wps.ts ts/wpsresource.ts ts/wpstablestyle.ts ts/khomepage.ts ts/ktreasurebox.ts ts/wpscore.ts ts/kso.ts
		OUTPUT office6/mui/zh_TW/wps.qm
		#WPS_ADD_INSTALL PRODUCT wps SETOUTPATH "office6/mui/zh_TW"
		)

	wps_custom_compile(lrelease 
		INPUT ts/kxshare.ts ts/kcomctl.ts ts/wpp2doc.ts ts/kole.ts ts/wpp.ts ts/wppresource.ts ts/khomepage.ts ts/ktreasurebox.ts ts/wppcore.ts ts/kso.ts
		OUTPUT office6/mui/zh_TW/wpp.qm
		#WPS_ADD_INSTALL PRODUCT wpp SETOUTPATH "office6/mui/zh_TW"
		)

	wps_custom_compile(lrelease 
		INPUT ts/kxshare.ts ts/kcomctl.ts ts/wpp2doc.ts ts/kole.ts ts/et.ts ts/etresource.ts ts/ettablestyle.ts ts/khomepage.ts ts/ktreasurebox.ts ts/etcore.ts ts/kso.ts
		OUTPUT office6/mui/zh_TW/et.qm
		#WPS_ADD_INSTALL PRODUCT et SETOUTPATH "office6/mui/zh_TW"
		)
		
	wps_custom_compile(lrelease 
		INPUT ts/qt.ts
		OUTPUT office6/mui/zh_TW/qt.qm
		#WPS_ADD_INSTALL SETOUTPATH "office6/mui/zh_TW"
		)
wps_end_package()
