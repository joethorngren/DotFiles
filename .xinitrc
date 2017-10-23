#!/bin/bash

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export QT_STYLE_OVERRIDE=Breeze

#xrandr --dpi 200
#xrdb ~/.Xresources.hidpi
## Double the GTK+3 widget scale. NOTE: You must set the GTK+3 font to half size
## due to a bug in GTK+3 that the devs I talked to wont acknowledge.
#export GDK_SCALE=2
#export GDK_DPI_SCALE=0.5
## Do the same with Qt5, the other Qt/KDE options do general things to make Qt5
## apps look/run better.
##export QT_DEVICE_PIXEL_RATIO=2

