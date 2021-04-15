#!/bin/bash

num=`ls -a  ~/.wallpapers | wc -l`
num=$(expr $num - 3)
rand=$[ $RANDOM % $num  ]


files=(~/.wallpapers/*.jpg)

case $1 in
	-r)
killall swaybg
swaybg -i "${files[$rand]}" &> /dev/null & ;;
	*)
selection=$( echo ${files[@]} | sed 's/home\/adam\/.wallpapers\///g' | sed 's/ /\n/g' | sed 's/.jpg//g' | wofi -d)
killall swaybg
swaybg -i ~/.wallpapers/$selection.jpg &> /dev/null & 
exit 0;;

esac
