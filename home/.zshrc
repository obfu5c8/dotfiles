

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
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"


CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="true"
HIST_STAMPS="yyyy-mm-dd"

# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"

ZSH_CUSTOM=~/.dotfiles/config/shell

plugins=(
  git,
  docker
)

source $ZSH/oh-my-zsh.sh

