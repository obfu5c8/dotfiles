## OSX-related utilities & aliases
########################################

[[ "Mac" == "$PLATFORM" ]] && {

    ## Lock the screen
    alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

    alias chrome="open -a 'Google Chrome' --args"
    alias chrome-headless="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --headless --remote-debugging-port=9222 --disable-gpu"

    alias code="code-insiders"
    ## Show/hide hidden files in finder.
    alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
    alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

    ## Lock the screen
    alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
}
