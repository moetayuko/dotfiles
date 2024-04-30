#!/bin/sh

ICON_THEME=Papirus-Dark
STYLE=kvantum-dark

crudini --set ~/.config/lxqt/lxqt.conf General icon_theme $ICON_THEME
crudini --set ~/.config/lxqt/lxqt.conf Qt style $STYLE
