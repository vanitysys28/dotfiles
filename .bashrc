# Prompt update
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1='╔ \[\e[0;38;5;221m\]\u\[\e[0m\]@\[\e[0;38;5;35m\]\H\[\e[0m\]:\W`parse_git_branch`\n╚ \$ '

# Path Update
PATH=/c/Users/guiaub/AppData/Local/Programs/Python/Python311:/c/Users/guiaub/AppData/Local/Programs/Python/Python311/Scripts:$PATH

# Aliases
alias ls='ls --color=auto'
alias isosec='date +%Y%m%d%H%M%S'
alias note='vi $(isosec).md'
alias grep='grep -rioI --color'

# Mac Fixes
## Removing Bash Warning
export BASH_SILENCE_DEPRECATION_WARNING=1
