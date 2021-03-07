#!/bin/sh

# ====
# DOCK
# ====

# enable launch bounce
defaults write com.apple.dock launchanim -bool true

# remove recent items
defaults write com.apple.dock show-recents -bool false

# enable autohide, remove the slidein animation, remove delay to open
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -int 0

# add a stack for applications and downloads next to trash
defaults write com.apple.dock persistent-others -array "<dict><key>tile-data</key><dict><key>showas</key><integer>3</integer><key>file-type</key><integer>2</integer><key>displayas</key><integer>1</integer><key>file-label</key><string>Applications</string><key>arrangement</key><integer>1</integer><key>file-data</key><dict><key>_CFURLStringType</key><integer>15</integer><key>_CFURLString</key><string>file:///Applications/</string></dict><key>list-type</key><integer>1</integer></dict><key>tile-type</key><string>directory-tile</string></dict>"
defaults write com.apple.dock persistent-others -array-add "<dict><key>tile-data</key><dict><key>showas</key><integer>3</integer><key>file-type</key><integer>2</integer><key>displayas</key><integer>1</integer><key>file-label</key><string>Downloads</string><key>arrangement</key><integer>2</integer><key>file-data</key><dict><key>_CFURLStringType</key><integer>15</integer><key>_CFURLString</key><string>file:///Users/$(whoami)/Downloads/</string></dict><key>list-type</key><integer>1</integer></dict><key>tile-type</key><string>directory-tile</string></dict>"

killall Dock


# ====
# MISC
# ====

# enable normal key repeat (requires reboot)
defaults write -g ApplePressAndHoldEnabled -bool false



