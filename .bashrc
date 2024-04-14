# Prompt update
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1='\[\e[0;38;5;221m\]\u\[\e[0m\]@\[\e[0;38;5;35m\]\H\[\e[0m\]:\W`parse_git_branch`\$ '

# Path Update
export PATH=$HOME/bin/:/c/Users/guiaub/AppData/Local/Programs/Python/Python311:/c/Users/guiaub/AppData/Local/Programs/Python/Python311/Scripts:$PATH

# Aliases
if ls --help 2>&1 | grep -q -- --color
then
    alias ls='ls --color=auto -F'
else
    alias ls='ls -FG'
fi
alias python="python3"
alias pip="pip3"

# Mac Fixes
## Removing Bash Warning
export BASH_SILENCE_DEPRECATION_WARNING=1
