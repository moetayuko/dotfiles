#!/usr/bin/env bash
sed -i "1s/.*/light/" "$HOME"/.cache/ags/user/colormode.txt
"$HOME"/.config/ags/scripts/color_generation/switchcolor.sh
ags run-js 'darkMode.value = false;'
