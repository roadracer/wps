# -*- coding: cp936 -*-
import io
import os

tips = ["ettips", "wpptips", "wpstips", "ksotips"]
tip_path = '..\\default\\tips\\'
h_path = '..\\..\\include\\tips\\'

for tip in tips:
    file_path = tip_path  + tip + '.str'
    file_w = io.open(h_path + tip + '.h', 'wb')
    with open(file_path, 'r') as tip_file:

        file_w.write('/*-------------------------------------------------------------------*/\n')
        file_w.write('// 注意：该头文件为三个项目及公共部分的菜单栏tip原串及资源，仅在ktips.cpp中包含\n')
        file_w.write('// ‘//: ’后面放帮助翻译人员翻译的注释\n')
        file_w.write('// ‘//% ’后面放tip的英文原串\n')
        file_w.write('// qtTrId中放此条翻译的ID，且ID必须是唯一的\n')
        file_w.write('// tip调用时，优先使用项目自身的tip，找不到时使用公共部分的tip\n')
        file_w.write('/*-------------------------------------------------------------------*/\n')
        file_w.write('#pragma once\n')
        file_w.write('#include<QMap>\n\n')
        imgstr = 'static QMap<QString, QString> gs_' + tip.replace('tips', '') + 'TipImage;\n'
        file_w.write(imgstr)
        file_w.write('static QMap<QString, QString> * ' + tip.replace('tips', '') + 'ImageMapInit()\n')
        file_w.write('{\n')
        file_w.write('\tif (gs_' + tip.replace('tips', '') + 'TipImage.isEmpty())\n')
        file_w.write('\t{\n')
        for line in tip_file:
            if line.find('=') != -1 :
                parts = line.split('=')
                if parts[0].find('img') != -1 :
                    mapstr = '\t\tgs_' + tip.replace('tips', '') + 'TipImage["' + parts[0].replace('.img', '') + '"] = "' + parts[1].strip('\"\n') + '";\n'
                    file_w.write(mapstr);
        file_w.write('\t}\n')
        file_w.write('return &gs_' + tip.replace('tips', '') + 'TipImage;\n')
        file_w.write('}\n\n')
        file_w.write('//此函数只为收集翻译原串，无需调用\n')
        file_w.write('void setTipSourceCode()\n')
        file_w.write('{\n')
        
        
    with open(file_path, 'r') as tip_file:    
        for line in tip_file:
            if line.find('=') != -1 :
                parts = line.split('=')
                if parts[0].find('img') == -1 :
                    str1 = '\t//: ' + parts[0] + '\n'
                    str2 = '\t//% \"' + parts[1].strip('\"\n') + '\"\n'
                    str3 = '\tqtTrId(\"' + parts[0] + '\");\n\n'
                    file_w.write(str1)
                    file_w.write(str2)
                    file_w.write(str3)
                    
        
        file_w.write('}\n')            
                    
    file_w.close()

print('finished')
