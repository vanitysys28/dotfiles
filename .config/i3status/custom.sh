 #!/bin/sh
           # shell script to prepend i3status with more stuff

           i3status | while :
           do
                   read line
                   echo "Test | $line" || exit 1
           done
