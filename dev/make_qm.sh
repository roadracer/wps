#!/bin/bash

wps_qm="wps.ts wpsresource.ts wpstablestyle.ts wpscore.ts"
wpp_qm="wpp.ts wppresource.ts wpp2doc.ts wpponlinetemplate.ts wppcore.ts"
et_qm="et.ts etresource.ts ettablestyle.ts etcore.ts"
pdf_qm="pdf.ts pdfresource.ts pdfcore.ts"
kso_qm="kxshare.ts kcomctl.ts kole.ts khomepage.ts ktreasurebox.ts officespace.ts wpsgallery.ts kso.ts kde.ts qt.ts"

set -e

function die
{
	echo Error: "$@" >> /dev/stderr
	exit 1
}

which lrelease-qt4 && LRELEASE=lrelease-qt4
if [ -z "$LRELEASE" ] ; then
	which lrelease && LRELEASE=lrelease
fi
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
make_a_qm "pdf" "$*" "$pdf_qm"
make_a_qm "kso" "$*" "$kso_qm"
