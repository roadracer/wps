#!/bin/bash

set -e

function die
{
	echo Error: "$@" >> /dev/stderr
	exit 1
}

which rcc || die "Can not found rcc, install libqt4-dev first"

if [ "$*" == "res/*.qrc" ]; then
	exit 0 # no qrc file, ignored
fi

rcc -binary "$@" -o res.rcc
