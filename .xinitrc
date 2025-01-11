export PATH=$HOME/.local/bin:$PATH
xrdb -merge ~/.Xresources
xmodmap ~/.Xmodmap
xbindkeys 
exec i3
# exec blackbox
