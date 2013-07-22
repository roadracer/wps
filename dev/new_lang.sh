#!/bin/bash

if [ "$#" == "0" ]; then
	echo "Usage: ./new_lang.sh <lang>"
	exit 1
fi

if [ -d "../$1" ]; then
	echo "$1 already exists!"
	exit 1
fi

cd ..
cp sample "$1" -r

# generate lang.conf
cd "$1"
cat > lang.conf << EOF
[Language]
DisplayName=$1
DisplayName[en_US]=$1
Icon=$1.png
EOF

# modify *.ts
cd ts
sed -i 's/language="sample"/language="'$1'"/g' *.ts
