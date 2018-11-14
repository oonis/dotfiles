#!/bin/sh

if [ "$(uname -s)" != "Darwin" ]; then
    exit 0
fi

echo 'Setting default preferences'

set +e

defaults write -g ApplePressAndHoldEnabled -bool false
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false
defaults write NSGlobalDomain NSWindowResizeTime 0.001
