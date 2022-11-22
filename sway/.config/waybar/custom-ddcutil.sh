#!/bin/sh -e

disp=1

ddc_output=$(ddcutil getvcp 10 -t -d $disp | grep VCP)

cur_br=$(echo "$ddc_output" | cut -d' ' -f4)
full_br=$(echo "$ddc_output" | cut -d' ' -f5)
percent="$((100 * cur_br / full_br))"

printf '{"percentage":%d}' "$percent"
