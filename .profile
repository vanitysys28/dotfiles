export PATH=$PATH:$HOME/.local/bin:$HOME/.local/bin/scripts:/usr/local/plan9/bin

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
exec startx $HOME/.config/X11/xinitrc
fi
