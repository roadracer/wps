#!/bin/bash

CODING=$1
LNG=`basename "$PWD"`
LCONVERT=lconvert-qt4

if ! which $LCONVERT ; then
	LCONVERT=lconvert
fi

if [ ! -d "$CODING/shell2/mui/$LNG" ] ; then
	echo "Missing $LNG in Coding"
	exit 0
fi

ts_files=`find ts -name *.ts`

for ts in $ts_files ; do
	source="$CODING/shell2/mui/$LNG/$ts"
	# we don't need this translation anymore
	if [ ! -e "$source" ] ; then
		git rm "$ts"
		continue
	fi

	$LCONVERT -i "$ts" "$source" -o "$ts"
done
