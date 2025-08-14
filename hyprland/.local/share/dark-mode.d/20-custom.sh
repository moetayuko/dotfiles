#!/usr/bin/env bash

THEME=adw-gtk3-dark
ICON_THEME=breeze-plus-dark

gsettings set org.gnome.desktop.interface icon-theme $ICON_THEME

sed -i "/^Net\/ThemeName /s/ .*$/ \"$THEME\"/" ~/.config/xsettingsd/xsettingsd.conf
sed -i "/^Net\/IconThemeName /s/ .*$/ \"$ICON_THEME\"/" ~/.config/xsettingsd/xsettingsd.conf
pkill -0 xsettingsd || killall -HUP xsettingsd
