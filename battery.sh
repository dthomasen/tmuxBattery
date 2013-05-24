#!/bin/sh

output=$(acpi -V | grep -e "Battery 0" | head -n1)
status=$(echo "$output" | cut -f2 -d"," | sed -e 's/[[:space:]]//g')
case "$output" in
  *Charging*) echo "Charging: $status";;
  *Discharging*) status=$(echo "$output" | cut -f2 -d"," | sed -e 's/[[:space:]]//g')
		 remaining=$(echo "$output" | cut -f3 -d"," | cut -f2 -d" ")
             echo "Battery: $status - $remaining";; 
esac


