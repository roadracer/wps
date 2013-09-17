#!/bin/bash

CODING=$WPS_CODING
LNG=`basename "$PWD"`

cur_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$cur_dir/update.sh "-c $CODING" "-l $LNG"
