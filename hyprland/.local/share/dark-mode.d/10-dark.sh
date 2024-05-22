#!/usr/bin/env bash

XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
XDG_STATE_HOME="${XDG_STATE_HOME:-$HOME/.local/state}"
CONFIG_DIR="$XDG_CONFIG_HOME/ags"
STATE_DIR="$XDG_STATE_HOME/ags"

sed -i "1s/.*/dark/" "$STATE_DIR/user/colormode.txt"
"$CONFIG_DIR"/scripts/color_generation/switchcolor.sh
