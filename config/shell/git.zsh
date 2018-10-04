## Git aliases and utilities
######################################

alias gitpull='git pull --rebase origin $(git branch | grep \* | cut -d " " -f2)'
alias gitpush='git push origin $(git branch | grep \* | cut -d " " -f2)'
