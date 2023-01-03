# Mac Fixes
## Removing Bash Warning
export BASH_SILENCE_DEPRECATION_WARNING=1

## Adding MPV to path
PATH=$PATH:/Applications/mpv.app/Contents/MacOS/

# Prompt update
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1='\[\e[0m\]╔ \[\e[0;38;5;221m\]\u\[\e[0m\]@\[\e[0;38;5;35m\]\H\[\e[0m\]:\[\e[0m\]\W\[\e[0m\]$(parse_git_branch)\n\[\e[0m\]╚ \[\e[0m\]\$ \[\e[0m\]'

# W3M Search Function
duck() {
w3m "https://lite.duckduckgo.com/lite?kd=-1&kp=-1&q=$*" 
}


google() {
w3m "https://google.com/search?q=$*"
}

# Hostname Detection Function
#if [ "$HOSTNAME" = vm ]; then
#    echo "success"
#fi

# Aliases
alias ?=duck
alias ??=google
alias battery='cat /sys/class/power_supply/BAT1/capacity'
alias ls='ls --color=auto'
