
alias publicip="dig +short myip.opendns.com @resolver1.opendns.com"

[[ "$PLATFORM" == "Mac" ]] && {
    alias ipaddr="ipconfig getifaddr en0"
}

