#!/bin/sh
config="config.txt"
if [ -f $config ]; then
	source config.txt
	app=$app
	type=$type
	pwd=$pwd
else
	echo -n "app名称: "
	read app
	echo -n "设置的加密算法: "
	read type
	echo -n "设置的密码: "
	read pwd
fi
node local.js -s $app+".herokuapp.com" -l 1080 -m $type -k $pwd -r 80