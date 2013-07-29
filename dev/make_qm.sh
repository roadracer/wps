#!/bin/bash

wps_qm="kxshare.ts kcomctl.ts kole.ts wps.ts wpsresource.ts wpstablestyle.ts khomepage.ts
		ktreasurebox.ts officespace.ts wpsgallery.ts wpscore.ts kso.ts"
wpp_qm="kxshare.ts kcomctl.ts kole.ts wpp.ts wppresource.ts khomepage.ts ktreasurebox.ts
		wpp2doc.ts wpponlinetemplate.ts officespace.ts wpsgallery.ts wppcore.ts kso.ts"
et_qm="kxshare.ts kcomctl.ts kole.ts et.ts etresource.ts ettablestyle.ts khomepage.ts 
	   ktreasurebox.ts officespace.ts wpsgallery.ts etcore.ts kso.ts"
qt_qm="qt.ts"

set -e

function die
{
	echo Error: "$@" >> /dev/stderr
	exit 1
}

which lrelease-qt4 && LRELEASE=lrelease-qt4
which lrelease && LRELEASE=lrelease
[ -z "$LRELEASE" ] && die "Can not found lrelease, install libqt4-dev first!"

function make_a_qm
{
	fn=$1
	in_set=$2
	qm_set=$3
	
	matched_set=

	for x in $in_set; {
		b=`basename $x`
		for y in $qm_set; {
			if [ "$b" == "$y" ]; then
				matched_set="$matched_set $x"
			fi
		}
	}

	if [ -z "$matched_set" ]; then
		return
	fi
	echo make $fn.qm
	$LRELEASE $matched_set -qm "$fn.qm"
}

make_a_qm "wps" "$*" "$wps_qm"
make_a_qm "wpp" "$*" "$wpp_qm"
make_a_qm "et" "$*" "$et_qm"
make_a_qm "qt" "$*" "$qt_qm"
