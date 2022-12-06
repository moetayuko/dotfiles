#!/bin/sh -e

model=273B1

ddc_output=$(flock /tmp/ddclock ddcutil getvcp 10 -t -l $model | grep VCP)
[[ "$ddc_output" =~ "ERR" ]] && exit 1

cur_br=$(echo "$ddc_output" | cut -d' ' -f4)
full_br=$(echo "$ddc_output" | cut -d' ' -f5)
percent="$((100 * cur_br / full_br))"

printf '{"percentage":%d}' "$percent"
