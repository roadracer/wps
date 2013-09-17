#!/bin/bash

CODING=$1
LNG=`basename "$PWD"`

if [ ! -d "$CODING" ] ; then
	echo "$CODING does not exists!"
	exit 1
fi

cur_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$cur_dir/update.sh "-c $CODING" "-l $LNG"
