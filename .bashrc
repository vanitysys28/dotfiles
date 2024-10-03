# Prompt update
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1='[\W]\$ '

# Path Update
export PATH=$HOME/bin/:$PATH

# Aliases
if ls --help 2>&1 | grep -q -- --color
then
    alias ls='ls --color=auto -F'
else
    alias ls='ls -FG'
fi
alias python="python3"
alias pip="pip3"

# Linux
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
startx
fi

bind 'set completion-ignore-case on'
