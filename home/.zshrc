
. ~/.dotfiles/env.sh



ZSH_THEME="robbyrussell"


CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="true"
HIST_STAMPS="yyyy-mm-dd"

ZSH_CUSTOM=~/.dotfiles/config/shell

plugins=(
  git,
  docker
)


source $ZSH/oh-my-zsh.sh

