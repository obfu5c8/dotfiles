## General shell customisation
#################################


export LANG=en_US.UTF-8
export LC_ALL='en_US.UTF-8';
export EDITOR=nano

alias ..="cd .."
alias ...="cd ../.."


# Create a new directory and enter it
function mkd() {
	mkdir -p "$@" && cd "$_";
}


# Determine size of a file or total size of a directory
function sizeof() {
	if du -b /dev/null > /dev/null 2>&1; then
		local arg=-sbh;
	else
		local arg=-sh;
	fi
	if [[ -n "$@" ]]; then
		du $arg -- "$@";
	else
		du $arg .[^.]* ./*;
	fi;
}


## Sexy colours for tmux
alias tmux='TERM=xterm-256color tmux -2'
function tmx {
	tmux has-session -t "$1" 2> /dev/null
	if [ $? -eq 0 ]; then
		tmux attach -t "$1"
	else 
		tmux new-session -s "$1"
	fi
}

## Reload shell confifg
alias reload="exec $SHELL"


## Launch chrome instance with web security turned off
alias chrome-insecure="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome \
	--no-first-run \
	--no-default-browser-check \
	--disable-web-security \
	--user-data-dir=$HOME/.config/chrome-insecure-profile"

