PS1='[\W]\$ '
HISTFILE=$HOME/.cache/bash_history

bind 'set completion-ignore-case on'

# Aliases
if ls --help 2>&1 | grep -q -- --color
then
    alias ls='ls --color=auto -F'
else
    alias ls='ls -FG'
fi


