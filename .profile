if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
startx $HOME/.config/X11/xinitrc
fi
