 #!/bin/sh

           i3status | while :
           do
                   read line
                   echo "🌍 $(/sbin/iw wlp3s0 info | grep ssid | awk '{$1=""; print $0}' || echo "Disconnected") | 🔊 $(amixer get Master | grep 'dB' | sed 's/.*\[\([0-9]*%\)\].*/\1/') | 🔋 $(cat /sys/class/power_supply/BAT0/capacity)% | 🔆 $(cat /sys/class/backlight/acpi_video0/brightness)% | 🕑 $(date '+%H:%M:%S %d/%m/%Y')" || exit 1
           done
