if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
exec startx $HOME/.config/X11/xinitrc
fi
