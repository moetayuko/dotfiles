#!/bin/sh

ICON_THEME=Papirus
STYLE=kvantum

crudini --set ~/.config/lxqt/lxqt.conf General icon_theme $ICON_THEME
crudini --set ~/.config/lxqt/lxqt.conf Qt style $STYLE
