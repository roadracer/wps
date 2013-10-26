#ts生成qm文件接入到cmake后 以下项目则需增加相关ts文件
wps_package(mui_en_US )
	wps_add_resources(
		lang.conf
		en_US.png
		BUILD_DEST_PATH office6/mui/en_US
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/en_US"
		)

	wps_add_resources(
		"templates/presentationdesigns/Dazzle Dance Smooth Shadow.dpt"
		"templates/presentationdesigns/Friendly Cooperation.dpt"
		"templates/presentationdesigns/Green Technology.dpt"
		"templates/presentationdesigns/Blue Longing.dpt"
		"templates/presentationdesigns/Communications and Dialogues.dpt"
		"templates/presentationdesigns/Gear Drives.dpt"
		"templates/presentationdesigns/Blue Chair.dpt"
		"templates/presentationdesigns/Global Plan.dpt"
		"templates/presentationdesigns/Sweet Memories.dpt"
		"templates/presentationdesigns/Small Blackbord.dpt"
		"templates/presentationdesigns/Business_stock Fluctuation.dpt"
		"templates/presentationdesigns/Up Arrow.dpt"
		"templates/presentationdesigns/Global Trade.dpt"
		"templates/presentationdesigns/Report.dpt"
		"templates/presentationdesigns/Cooperation.dpt"
		"templates/presentationdesigns/Art_mountaineering.dpt"
		"templates/presentationdesigns/City Silhouette.dpt"
		"templates/presentationdesigns/Business Report.dpt"
		"templates/presentationdesigns/Blue Waves.dpt"
		"templates/presentationdesigns/Business Cooperate.dpt"
		"templates/presentationdesigns/Red Background.dpt"
		"templates/presentationdesigns/Gear Drawings.dpt"
		"templates/presentationdesigns/Daily_loose-leaf Binder.dpt"
		"templates/presentationdesigns/Curtain Background.dpt"
		"templates/presentationdesigns/Red Curtain.dpt"
		"templates/presentationdesigns/Mythic Curve.dpt"
		"templates/presentationdesigns/Business Calculation.dpt"
		"templates/presentationdesigns/Orange Waves.dpt"
		"templates/presentationdesigns/New Charpter.dpt"
		"templates/presentationdesigns/Phantom Effect.dpt"
		"templates/presentationdesigns/Red.dpt"
		"templates/presentationdesigns/Green Color.dpt"
		"templates/presentationdesigns/Blue Background.dpt"
		"templates/presentationdesigns/Data Pie Charts.dpt"
		"templates/presentationdesigns/Maple Leaf.dpt"
		"templates/presentationdesigns/Gear.dpt"
		"templates/presentationdesigns/Stationery.dpt"
		"templates/presentationdesigns/Scarlet.dpt"
		"templates/presentationdesigns/Business Technology.dpt"
		"templates/presentationdesigns/Landscape Painting.dpt"
		"templates/presentationdesigns/Direction.dpt"
		"templates/presentationdesigns/Pleasant Garden.dpt"
		"templates/presentationdesigns/Business_business Affair.dpt"
		"templates/presentationdesigns/Color Block.dpt"
		"templates/presentationdesigns/Celebration.dpt"
		"templates/presentationdesigns/Eyes.dpt"
		"templates/presentationdesigns/Books.dpt"
		"templates/presentationdesigns/New Energe.dpt"
		"templates/presentationdesigns/Deep Blue Technology.dpt"
		"templates/presentationdesigns/Water Lily.dpt"
		BUILD_DEST_PATH office6/mui/en_US
		WPS_ADD_INSTALL PRODUCT wpp SETOUTPATH "office6/mui/en_US/templates/presentationdesigns"
		)

	wps_add_resources(
		"templates/wps/Letters and Faxes/Business Letter with Enclosed.wpt"
		"templates/wps/Letters and Faxes/Business Fax.wpt"
		"templates/wps/Letters and Faxes/Standard Business Letter.wpt"
		"templates/wps/Letters and Faxes/Personal to Business Letter.wpt"
		"templates/wps/Letters and Faxes/Standard Fax.wpt"
		"templates/wps/Letters and Faxes/Personal Letter.wpt"
		BUILD_DEST_PATH office6/mui/en_US
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/en_US/templates/wps/Letters and Faxes"
		)

	wps_add_resources(
		"templates/wps/Business/Memorandum Confidential.wpt"
		"templates/wps/Business/Patent License Agreement.wpt"
		"templates/wps/Business/Connference Announcment.wpt"
		"templates/wps/Business/Memo.wpt"
		BUILD_DEST_PATH office6/mui/en_US
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/en_US/templates/wps/Business/"
		)

	wps_add_resources(
		"templates/wps/Education/Bachelor Thesis.wpt"
		"templates/wps/Education/Seminar Report.wpt"
		BUILD_DEST_PATH office6/mui/en_US
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/en_US/templates/wps/Education/"
		)

	wps_add_resources(
		"templates/wps/Daily Life/Standard Email.wpt"
		"templates/wps/Daily Life/Calendar.wpt"
		BUILD_DEST_PATH office6/mui/en_US
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/en_US/templates/wps/Daily Life"
		)

	wps_add_resources(
		"templates/wps/Personal/Cover Letter.wpt"
		"templates/wps/Personal/Emergency Contact List.wpt"
		"templates/wps/Personal/Job Application Email.wpt"
		"templates/wps/Personal/Functional Resume.wpt"
		BUILD_DEST_PATH office6/mui/en_US
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/en_US/templates/wps/Personal"
		)

	wps_add_resources(
		"templates/wpp/Business/Product Introduce.dpt"
		"templates/wpp/Business/Friendly Cooperation.dpt"
		"templates/wpp/Business/Communications and Dialogues.dpt"
		"templates/wpp/Business/Global Plan.dpt"
		"templates/wpp/Business/Annual Report.dpt"
		"templates/wpp/Business/Business_stock Fluctuation.dpt"
		"templates/wpp/Business/Global Trade.dpt"
		"templates/wpp/Business/Training.dpt"
		"templates/wpp/Business/Company Meeting.dpt"
		"templates/wpp/Business/Introduce Product.dpt"
		"templates/wpp/Business/Business Cooperate.dpt"
		"templates/wpp/Business/Mythic Curve.dpt"
		"templates/wpp/Business/Business Calculation.dpt"
		"templates/wpp/Business/Business Plan.dpt"
		"templates/wpp/Business/Data Pie Charts.dpt"
		"templates/wpp/Business/Introduce Company.dpt"
		"templates/wpp/Business/Business Technology.dpt"
		"templates/wpp/Business/Strategy.dpt"
		"templates/wpp/Business/Marketing Plan.dpt"
		"templates/wpp/Business/Budget Report.dpt"
		"templates/wpp/Business/Business_business Affair.dpt"
		"templates/wpp/Business/Deep Blue Technology.dpt"
		BUILD_DEST_PATH office6/mui/en_US
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/en_US/templates/wpp/Business"
		)

	wps_add_resources(
		"templates/wpp/Education/Small Blackbord.dpt"
		"templates/wpp/Education/Daily_loose-leaf Binder.dpt"
		"templates/wpp/Education/Stationery.dpt"
		"templates/wpp/Education/Chinese Spring Festival.dpt"
		"templates/wpp/Education/Books.dpt"
		BUILD_DEST_PATH office6/mui/en_US
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/en_US/templates/wpp/Education"
		)

	wps_add_resources(
		"templates/et/Business/Balance Sheet.ett"
		"templates/et/Business/Expense Statement.ett"
		"templates/et/Business/Invoice.ett"
		"templates/et/Business/Sales Analysis.ett"
		"templates/et/Business/Amortization.ett"
		"templates/et/Business/Start-up Expenses.ett"
		BUILD_DEST_PATH office6/mui/en_US
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/en_US/templates/et/Business"
		)

	wps_add_resources(
		"templates/et/Education/Grading Sheet.ett"
		BUILD_DEST_PATH office6/mui/en_US
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/en_US/templates/et/Education"
		)

	wps_add_resources(
		"templates/et/Personal/Net Worth.ett"
		"templates/et/Personal/Women Fitness.ett"
		"templates/et/Personal/Monthly Budget_Family.ett"
		"templates/et/Personal/Personal Net Worth.ett"
		"templates/et/Personal/Home Analysis.ett"
		BUILD_DEST_PATH office6/mui/en_US
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/en_US/templates/et/Personal"
		)

	wps_add_resources(
		"templates/et/Office/Schedule.ett"
		"templates/et/Office/Telephone List.ett"
		BUILD_DEST_PATH office6/mui/en_US
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/en_US/templates/et/Office"
		)

	wps_add_resources(
		"templates/coverpage/buildin/lengthwise/Resume/Design.doc"
		"templates/coverpage/buildin/lengthwise/Resume/Puzzle.doc"
		"templates/coverpage/buildin/lengthwise/Resume/Austere.doc"
		"templates/coverpage/buildin/lengthwise/Resume/BlackAndWhite.doc"
		"templates/coverpage/buildin/lengthwise/Resume/Exposure.doc"
		"templates/coverpage/buildin/lengthwise/Resume/Pattern.doc"
		"templates/coverpage/buildin/lengthwise/Resume/Sailboat.doc"
		"templates/coverpage/buildin/lengthwise/Resume/Design.png"
		"templates/coverpage/buildin/lengthwise/Resume/Puzzle.png"
		"templates/coverpage/buildin/lengthwise/Resume/Austere.png"
		"templates/coverpage/buildin/lengthwise/Resume/BlackAndWhite.png"
		"templates/coverpage/buildin/lengthwise/Resume/Exposure.png"
		"templates/coverpage/buildin/lengthwise/Resume/Pattern.png"
		"templates/coverpage/buildin/lengthwise/Resume/Sailboat.png"
		BUILD_DEST_PATH office6/mui/en_US
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/en_US/templates/coverpage/buildin/lengthwise/Resume"
		)

	wps_add_resources(
		"templates/coverpage/buildin/lengthwise/Thesis/Austere.doc"
		"templates/coverpage/buildin/lengthwise/Thesis/General.doc"
		"templates/coverpage/buildin/lengthwise/Thesis/Pinstripe.doc"
		"templates/coverpage/buildin/lengthwise/Thesis/Professional.doc"
		"templates/coverpage/buildin/lengthwise/Thesis/Line.doc"
		"templates/coverpage/buildin/lengthwise/Thesis/Austere.png"
		"templates/coverpage/buildin/lengthwise/Thesis/General.png"
		"templates/coverpage/buildin/lengthwise/Thesis/Pinstripe.png"
		"templates/coverpage/buildin/lengthwise/Thesis/Professional.png"
		"templates/coverpage/buildin/lengthwise/Thesis/Line.png"
		BUILD_DEST_PATH office6/mui/en_US
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/en_US/templates/coverpage/buildin/lengthwise/Thesis"
		)

	wps_add_resources(
		"templates/coverpage/buildin/lengthwise/Business/Newsprint.doc"
		"templates/coverpage/buildin/lengthwise/Business/Natural.doc"
		"templates/coverpage/buildin/lengthwise/Business/Cubical.doc"
		"templates/coverpage/buildin/lengthwise/Business/Standard.doc"
		"templates/coverpage/buildin/lengthwise/Business/Grid.doc"
		"templates/coverpage/buildin/lengthwise/Business/Newsprint.png"
		"templates/coverpage/buildin/lengthwise/Business/Natural.png"
		"templates/coverpage/buildin/lengthwise/Business/Cubical.png"
		"templates/coverpage/buildin/lengthwise/Business/Standard.png"
		"templates/coverpage/buildin/lengthwise/Business/Grid.png"
		BUILD_DEST_PATH office6/mui/en_US
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/en_US/templates/coverpage/buildin/lengthwise/Business/"
		)

	wps_add_resources(
		"templates/coverpage/buildin/transverse/transverse/Dots.doc"
		"templates/coverpage/buildin/transverse/transverse/Newsprint.doc"
		"templates/coverpage/buildin/transverse/transverse/Traditional.doc"
		"templates/coverpage/buildin/transverse/transverse/Stacks.doc"
		"templates/coverpage/buildin/transverse/transverse/Arrow.doc"
		"templates/coverpage/buildin/transverse/transverse/Line.doc"
		"templates/coverpage/buildin/transverse/transverse/Dots.png"
		"templates/coverpage/buildin/transverse/transverse/Newsprint.png"
		"templates/coverpage/buildin/transverse/transverse/Traditional.png"
		"templates/coverpage/buildin/transverse/transverse/Stacks.png"
		"templates/coverpage/buildin/transverse/transverse/Arrow.png"
		"templates/coverpage/buildin/transverse/transverse/Line.png"
		BUILD_DEST_PATH office6/mui/en_US
		WPS_ADD_INSTALL SETOUTPATH "office6/mui/en_US/templates/coverpage/buildin/transverse/transverse"
		)
#	wps_custom_compile(lrelease 
#		INPUT ts/kxshare.ts ts/kcomctl.ts ts/kole.ts ts/wps.ts ts/wpsresource.ts ts/khomepage.ts
#		OUTPUT office6/mui/en_US/wps.qm
#		WPS_ADD_INSTALL PRODUCT wps SETOUTPATH "office6/mui/en_US"
#		)
#
#	wps_custom_compile(lrelease 
#		INPUT ts/kxshare.ts ts/kcomctl.ts ts/kole.ts ts/wpp.ts ts/wppresource.ts ts/khomepage.ts ts/wpp2doc.ts
#		OUTPUT office6/mui/en_US/wpp.qm
#		WPS_ADD_INSTALL PRODUCT wpp SETOUTPATH "office6/mui/en_US"
#		)
#
#	wps_custom_compile(lrelease 
#		INPUT ts/kxshare.ts ts/kcomctl.ts ts/kole.ts ts/et.ts ts/etresource.ts ts/khomepage.ts
#		OUTPUT office6/mui/en_US/et.qm
#		WPS_ADD_INSTALL PRODUCT et SETOUTPATH "office6/mui/en_US"
#		)
#		
#	wps_custom_compile(lrelease 
#		INPUT ts/qt.ts
#		OUTPUT office6/mui/en_US/qt.qm
#		WPS_ADD_INSTALL SETOUTPATH "office6/mui/en_US"
#		)
wps_end_package()
