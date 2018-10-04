#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

. $DIR/bash-utils.sh




TASK "Installing oh-my-zsh"
    DO exec sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ENDTASK


TASK "Setting user shell to zsh"
    DO chsh -s /bin/zsh
ENDTASK


TASK "Installing Homebrew"
    DO /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
ENDTASK
