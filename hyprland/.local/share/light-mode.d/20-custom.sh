#!/usr/bin/env bash

THEME=adw-gtk3
ICON_THEME=Papirus
QT_STYLE=kvantum

gsettings set org.gnome.desktop.interface icon-theme $ICON_THEME

sed -i "/^Net\/ThemeName /s/ .*$/ \"$THEME\"/" ~/.config/xsettingsd/xsettingsd.conf
sed -i "/^Net\/IconThemeName /s/ .*$/ \"$ICON_THEME\"/" ~/.config/xsettingsd/xsettingsd.conf
pkill -0 xsettingsd || killall -HUP xsettingsd

crudini --set ~/.config/lxqt/lxqt.conf General icon_theme $ICON_THEME
crudini --set ~/.config/lxqt/lxqt.conf Qt style $QT_STYLE

crudini --set ~/.config/qt6ct/qt6ct.conf Appearance icon_theme $ICON_THEME
crudini --set ~/.config/qt6ct/qt6ct.conf Appearance style $QT_STYLE
