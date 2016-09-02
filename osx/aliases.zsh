#!/usr/bin/env bash

if [[ $OS != 'OSX' ]]
then
    exit
fi

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

ip() {
    ifconfig | grep inet | cut -f2 -d ' ' | grep -v ':' | grep -v '^127.0.0.1'
}

ss() {
    if [[ "$1" == "on" ]]
    then
        sudo defaults write /var/db/launchd.db/com.apple.launchd/overrides.plist com.apple.screensharing -dict Disabled -bool false
        sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.screensharing.plist

        ip
    elif [[ "$1" == "off" ]]
    then
        sudo defaults write /var/db/launchd.db/com.apple.launchd/overrides.plist com.apple.screensharing -dict Disabled -bool true
        sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.screensharing.plist
    fi
}
