
## Show the path bar at bottom of finder
echo "Show path bar at bottom of finder"
defaults write com.apple.finder ShowPathbar -bool true

## Disable warning when changing file extension
echo "Disable warning when changing file extension"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Automatically hide and show the Dock
echo "Dock set to auto-hide"
defaults write com.apple.dock autohide -bool true


# Don’t display the annoying prompt when quitting iTerm
echo "Disabled iterm prompt-on-quit"
defaults write com.googlecode.iterm2 PromptOnQuit -bool false


# Use plain text mode for new TextEdit documents
echo "TextEdit set to plain text mode"
defaults write com.apple.TextEdit RichText -int 0




for app in "Activity Monitor" "Address Book" "Calendar" "Contacts" "cfprefsd" \
    "Dock" "Finder" "Mail" "Messages" "Photos" "Safari" "SystemUIServer" \
    "Terminal" "Tweetbot" "iCal"; do
    killall "${app}" &> /dev/null
done


echo "OSX customisations have been applied"