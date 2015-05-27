Windows平台更新翻译的说明

步骤：
1、运行 update_ts_all.bat 提取并更新所有语言的ts翻译文件

备注：
1、ts文件生成在Coding/shell2/mui/%locale_name%/ts

说明(bat脚本):
	config_file.bat				配置文件，所有脚本的运行时需要配置文件内的路径信息
	update.bat					实际执行提取翻译
	update_ui.bat 				提取并合并XML的翻译资源
	update_ts.bat 				提取某个语言的翻译
	release.bat					调用qt工具对ts文件生成qm最终结果文件
	translator.bat				运行linguist进行翻译

	update_ts_all.bat			提取现有所有语言翻译的辅助脚本
	release_qm_*.bat			生成指定语言的翻译结果

新增一个语言翻译的步骤
1、首先要新建对应翻译文件（ts）的输出目录 Coding/shell2/mui/%locale_name%/ts
2、在update_ts_all.bat中加入收集该语言的命令：call update_ts.bat %locale_name%