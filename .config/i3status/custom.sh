 #!/bin/sh

           i3status | while :
           do
                   read line
                   echo "Test | $line" || exit 1
           done
