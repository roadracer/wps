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

cd "$1"

zip -r "$2".zip "$2/"

mv *.zip "$_last_pwd/../packages/"

cd "$_last_pwd"
