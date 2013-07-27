#!/bin/bash

LNG=`basename "$PWD"`
DEST=/opt/kingsoft/wps-office/office6/mui/$LNG
ICO=`cat lang.conf | sed -n '/Icon=/ s/Icon=//p'`

function install_file
{
	ls $1 >/dev/null 2>&1 && cp $1 "$DEST" && echo "Install" $1 "Succeed." 
}
function install_dir
{
	[ -d "$1" ] && cp -r "$1" "$DEST" && echo "Install" $1 "Succeed."
}

mkdir -p $DEST -m 755 && echo "Create $DEST"
install_file "*.qm"
install_file res.rcc
install_file lang.conf
[ ! -z "$ICO" ] && install_file $ICO
install_dir config
install_dir data
install_dir templates

echo "Install $LNG completed!"
