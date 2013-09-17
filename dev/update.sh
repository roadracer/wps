#!/bin/bash

set -e

cur_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

while getopts c:p:l:h flag; do
	case $flag in
		c)
			CODING=$OPTARG
			;;
		p)
			PROJS=$OPTARG
			;;
		l)
			LNG=$OPTARG
			;;
		h)
			echo "Usage:"
			echo "$0 [-c Coding] [-p project] [-l language]"
			exit 0
			;;
		?)
			exit 1
			;;
	esac
done

if [ -z "CODING" ] ; then
	if [ ! -z "WPS_CODING" ] ; then
		CODING=$WPS_CODING
	else
		CODING=../../..
	fi
fi

LOCALES=`ls $cur_dir/../*/lang.conf | sed 's#^\.\./\(.*\)/lang.conf#\1#' | grep -v en_US`
if [ ! -z "$LNG" -a "$LNG" != "ALL" ]; then
	LOCALES=$LNG
fi

if [ -z "$PROJS" ]; then
	PROJS=`cat $cur_dir/projs | sed -n 's/#.*$//;s/\[.*\]\s*\(\w*\):.*$/\1/p'`
fi

function kui2ts_update()
{
	if ! which kui2ts > /dev/null; then
		echo "Can not found kui2ts in path" >> /dev/stderr
		echo "You can find it in Coding/tools/kui2ts, build it first!" >> /dev/stderr
		exit 1
	fi
	sed "s/@prj@/$2/g;s/@locale@/$1/g" > /tmp/kui2ts.ini << EOF
Name=@prj@
Version=2

[Source]
Path=$CODING/shell2/resource/res
Files=

[Destination]
Path=$cur_dir/../@locale@/ts
TargetLang=@locale@

[Options]
Obsolete=false
LocationType=0
DefaultCodec=UTF-8
Silent=1
EOF
	kui2ts /tmp/kui2ts.ini
}

for l in $LOCALES
{
	for p in $PROJS
	{
		TYPE=`sed -n "/$p:/ s/^\[\(.*\)\].*$/\1/p" $cur_dir/projs`
		DIR=`sed -n "/$p:/ s/^.*:\s*\(.*\)$/\1/p" $cur_dir/projs`
		if [ "$TYPE" == "qt" ]; then
			lupdate -silent -locations none -target-language $l -recursive $CODING/$DIR -ts $cur_dir/../$l/ts/$p.ts
		elif [ "$TYPE" == "core" ]; then
			# same as qt, but 
			lupdate -silent -locations none -target-language $l -recursive $CODING/$DIR -ts $cur_dir/../$l/ts/$p.ts 2>&1 | sed '/lacks Q_OBJECT macro/d' >> /dev/stderr
		elif [ "$TYPE" == "kui" ]; then
			kui2ts_update $l $DIR
		elif [ -z "$TYPE" ]; then
			echo "Can not found project named: $p" >> /dev/stderr
			exit 1
		else
			echo "Unknown project type: $TYPE for $p" >> /dev/stderr
			exit 1
		fi
	}
}

echo "updated locales:" $LOCALES
echo "updated projects:" $PROJS
