# Mac Fixes
## Removing Bash Warning
export BASH_SILENCE_DEPRECATION_WARNING=1

## Adding MPV to path
PATH=$PATH:/Applications/mpv.app/Contents/MacOS/

# Prompt update
PS1='\[\e[0;38;5;221m\]user\[\e[0;38;5;239m\]@\[\e[0;38;5;35m\]home\[\e[0m\]:\[\e[0m\]\w\[\e[0m\]\$ \[\e[0m\]'

# W3M Search Function
?() {
w3m "https://lite.duckduckgo.com/lite?kd=-1&kp=-1&q=$*" 
}

??() {
w3m "https://google.com/search?q=$*"
}
