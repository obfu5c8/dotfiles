
export DOTFILES_HOME="~/.dotfiles"


# Detect operating system
unameOut="$(uname -s)"
platform="UNKNOWN"
case "${unameOut}" in
    Linux*)     platform="Linux";;
    Darwin*)    platform="Mac";;
    CYGWIN*)    platform="Cygwin";;
    MINGW*)     platform="MinGw";;
    *)          platform="UNKNOWN:${unameOut}"
esac
export PLATFORM="$platform"



# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$DOTFILES_HOME/oh-my-zsh"
