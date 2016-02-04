#!/bin/bash

LNG=$1

source $(dirname $0)/funcs.sh

if [ "x$USER" == "xroot" ]; then
	DEST="$(root_install_path)/$LNG"
else
	DEST="$(user_install_path)/$LNG"
fi

rm -rf "${DEST}" && echo "Uninstall ${LANGID} succeed!"
