 #!/bin/sh

           i3status | while :
           do
                   read line
                   echo "$line | 🔋 $(cat /sys/class/power_supply/BAT0/capacity)% | 🔆 $(cat /sys/class/backlight/acpi_video0/brightness)% | $(date '+%H:%M:%S %d/%m/%Y')" || exit 1
           done
