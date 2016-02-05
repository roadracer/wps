#!/bin/bash

set -e

_last_pwd="$PWD"

function die
{
    echo Error: "$@" >> /dev/stderr
    exit 1
}
if [ ! -d "$_last_pwd/../packages" ]; then
	mkdir "$_last_pwd/../packages"
fi

which zip || die "can not find zip"

LNG=$1

source "$(dirname $0)/funcs.sh"

if [ "x$USER" == "xroot" ]; then
	DEST="$(root_install_path)"
else
	DEST="$(user_install_path)"
fi

cd "$DEST"

zip -r "$LNG".zip "$LNG/"

mv *.zip "$_last_pwd/../packages/"

cd "$_last_pwd"
