#!/bin/bash

CODING=$1
LNG=`basename "$PWD"`
LCONVERT=lconvert-qt4

if ! which $LCONVERT &> /dev/null ; then
	LCONVERT=lconvert
fi

if [ ! -d "$CODING/shell2/mui/$LNG" ] ; then
	echo "Missing $LNG in Coding"
	exit 0
fi

ts_files=`find ts -name *.ts`
src_dir="$CODING/shell2/mui/$LNG"

for ts in $ts_files ; do
	source="${src_dir}/$ts"
	# we don't need this translation anymore
	if [ ! -e "$source" ] ; then
		git rm "$ts"
		continue
	fi

	$LCONVERT -i "$ts" "$source" -o "$ts"
done


# find new ts
cd "${src_dir}"
ts_files=`find ts -name *.ts`
cd -

for ts in $ts_files ; do
	if [ ! -e "$ts" ] ; then
		cp "${src_dir}/${ts}" "${ts}"
		git add "${ts}"
	fi
done
