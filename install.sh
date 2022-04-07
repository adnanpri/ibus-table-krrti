#!/bin/sh

IBUSDIR=/usr/share/ibus-table

cp bn-krrti-tpl.txt bn-krrti.txt
TS=$(date +%s)
sed -i "s/%TIMESTAMP_HERE%/$TS/g" bn-krrti.txt
sudo rm ${IBUSDIR}/tables/bn-krrti.db
sudo ibus-table-createdb -d -n ${IBUSDIR}/tables/bn-krrti.db -s bn-krrti.txt
sudo cp krrti.svg ${IBUSDIR}/icons/
ibus-daemon -drx
