export PATH=$HOME/.local/bin:$PATH
xrdb -merge ~/.Xresources
xmodmap ~/.Xmodmap
exec i3
