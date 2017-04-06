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

url=${app}".herokuapp.com"

node local.js -s $url -l 1080 -m $type -k $pwd -r 80
