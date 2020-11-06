#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#Find out your monitor name with xrandr or arandr (save and you get this line)
xrandr --output DVI-D-0 --auto --output HDMI-0 --left-of DVI-D-0 --off

$HOME/.config/polybar/launch.sh &

#change your keyboard if you need it
setxkbmap br

#Some ways to set your wallpaper besides variety or nitrogen
#feh --bg-scale ~/.config/bspwm/wall.png &
#feh --bg-fill /usr/share/backgrounds/arcolinux/arco-wallpaper.jpg &
#feh --randomize --bg-fill ~/Képek/*
#feh --randomize --bg-fill ~/Dropbox/Apps/Desktoppr/*

dex $HOME/.config/autostart/arcolinux-welcome-app.desktop
xsetroot -cursor_name left_ptr &
run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &

picom --config $HOME/.config/bspwm/picom.conf &
nitrogen --restore &
#run caffeine &
#run vivaldi-stable &
#run firefox &
#run thunar &
#run dropbox &
#run insync start &
#run discord &
#run spotify &
#run atom &
