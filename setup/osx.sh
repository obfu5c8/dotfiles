#!/usr/bin/env bash
DIR="$( cd "$( dirname $( dirname "${BASH_SOURCE[0]}" ))" && pwd )"
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


TASK "Show path bar at bottom of finder"
    defaults write com.apple.finder ShowPathbar -bool true
ENDTASK


TASK "Disable warning when changing file extension"
    defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
ENDTASK


TASK "Dock set to auto-hide"
    defaults write com.apple.dock autohide -bool true
ENDTASK


TASK "Disabled iterm prompt-on-quit"
    defaults write com.googlecode.iterm2 PromptOnQuit -bool false
ENDTASK


TASK "TextEdit set to plain text mode"
    defaults write com.apple.TextEdit RichText -int 0
ENDTASK


TASK "Restarting core osX apps to apply updates"
    for app in "Activity Monitor" "Address Book" "Calendar" "Contacts" "cfprefsd" \
        "Dock" "Finder" "Mail" "Messages" "Photos" "Safari" "SystemUIServer" \
        "Terminal" "Tweetbot" "iCal"; do
        killall "${app}" &> /dev/null
    done
ENDTASK


echo "OSX customisations have been applied"