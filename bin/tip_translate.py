import io
import os
from xml.etree import ElementTree

path = '..\\'
tips = ['ettips', 'wpptips', 'wpstips']
langs = ['es_ES', 'fr_FR', 'ja_JP', 'pt_BR', 'ru_RU', 'zh_CN', 'zh_TW']

for lang in langs:
    lang_path = path + lang + '\\'
    for tip in tips:
        file_str = lang_path + 'tips\\' + tip + '.str'
        file_ts = lang_path + 'ts\\' + tip + '.ts'
        print(file_str)
        print(file_ts)
        dict = {}
        file = io.open(file_str, encoding = 'utf-8')
        for line in file:
            if line.find('=') != -1 :
                parts = line.split('=')
                str1 = parts[0].strip('\"\n')
                str2 = parts[1].strip('\"\n')
                dict[str1] = str2
                #print(str1)
                #print(str2)
        file.close()
        #for key in dict.keys():
        #    print('key: ' + key + '=' + dict[key])
        tree = ElementTree.parse(file_ts)
        root = tree.getroot();
        ele_msgs = root.find('context').findall('message')
        for msg in ele_msgs:
            id = msg.get('id')
            trans = msg.find('translation')
            text = dict.get(id)
            if text is not None and len(text) >0 :
                trans.text = text
                if trans.get('type'):
                    del trans.attrib['type']
        tree.write(file_ts, encoding="utf-8", xml_declaration=True)

        
    file_str = lang_path + 'tips\\' + 'wpstips' + '.str'
    file_ts = lang_path + 'ts\\' + 'ksotips' + '.ts'
    print(file_str)
    print(file_ts)
    dict = {}
    file = io.open(file_str, encoding = 'utf-8')
    for line in file:
        if line.find('=') != -1 :
            parts = line.split('=')
            str1 = parts[0].strip('\"\n')
            str2 = parts[1].strip('\"\n')
            dict[str1] = str2
            #print(str1)
            #print(str2)
    file.close()
    #for key in dict.keys():
    #    print('key: ' + key + '=' + dict[key])
    tree = ElementTree.parse(file_ts)
    root = tree.getroot();
    ele_msgs = root.find('context').findall('message')
    for msg in ele_msgs:
        id = msg.get('id')
        if id == 'ShadowPalette.title':
            id = 'ShadowSetting.title'
        if id == 'ShadowPalette.content':
            id = 'ShadowSetting.content'
        trans = msg.find('translation')
        text = dict.get(id)
        if text is not None and len(text) >0 :
            trans.text = text
            if trans.get('type'):
                del trans.attrib['type']
    tree.write(file_ts, encoding="utf-8", xml_declaration=True)

print('finished')
