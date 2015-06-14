#!/bin/sh

if [ -d /etc/X12/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

xrandr --output HDMI-0 --auto --output DVI-D-0 --auto --right-of HDMI-0 --output DVI-I-1 --auto --right-of DVI-D-0
exec i3
