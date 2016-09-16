#!/bin/sh

HOMEDIR=/home/muraoka

GITHOMEDIR=${HOMEDIR}/dk2-11.1

cd ${GITHOMEDIR}

USRNAME=kamou
IPADDLR=172.21.48.55

TARGETDIR=/home/muraoka/dk2-11.1
TARGETSRC=${TARGETDIR}

rsync -e "ssh -oHostKeyAlgorithms=+ssh-dss" -av ${GITHOMEDIR} muraoka@172.21.48.55:./
ssh -oHostKeyAlgorithms=+ssh-dss muraoka@172.21.48.55 "cd ${TARGETDIR};sh make_all.sh"
