 #!/bin/sh

           i3status | while :
           do
                   read line
                   echo "$line | $(date '+%H:%M:%S %d/%m/%Y')" || exit 1
           done
