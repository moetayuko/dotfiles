#!/usr/bin/env bash

THEME=adw-gtk3
ICON_THEME=Papirus-Light
QT_STYLE=kvantum
PLASMA_LOOK=org.kde.breeze.desktop

gsettings set org.gnome.desktop.interface icon-theme $ICON_THEME

sed -i "/^Net\/ThemeName /s/ .*$/ \"$THEME\"/" ~/.config/xsettingsd/xsettingsd.conf
sed -i "/^Net\/IconThemeName /s/ .*$/ \"$ICON_THEME\"/" ~/.config/xsettingsd/xsettingsd.conf
pkill -0 xsettingsd || killall -HUP xsettingsd

plasma-apply-lookandfeel -a $PLASMA_LOOK
kwriteconfig6 --group "KDE" --key "widgetStyle" $QT_STYLE
kwriteconfig6 --group "Icons" --key "Theme" $ICON_THEME
# /usr/lib/plasma-changeicons $ICON_THEME
for i in {0..5}; do
	dbus-send /KIconLoader org.kde.KIconLoader.iconChanged "int32:$i"
done
dbus-send /KGlobalSettings org.kde.KGlobalSettings.notifyChange int32:2 int32:0

crudini --set ~/.config/qt6ct/qt6ct.conf Appearance icon_theme $ICON_THEME
crudini --set ~/.config/qt6ct/qt6ct.conf Appearance style $QT_STYLE
