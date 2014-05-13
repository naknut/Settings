#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#Symlinking .bash_profile
echo 'Installing bash stuff...'
ln -s $DIR/../bash/bash_profile ~/.bash_profile
open $DIR/../bash/Tomorrow\ Night.terminal
sleep 1 # Wait a bit to make sure the theme is loaded
defaults write com.apple.terminal "Default Window Settings" -string "Tomorrow Night"
defaults write com.apple.terminal "Startup Window Settings" -string "Tomorrow Night"
echo 'Bash stuff installed.'

#Install atom Settings
echo 'Installing atom stuff...'
mkdir ~/.atom
rm ~/.atom/config.cson
ln -s $DIR/../atom/config.cson ~/.atom/config.cson

#Install Homebrew
echo "Installing Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/gist/323731)"
export PATH=/usr/local/bin:$PATH

echo 'Homebrew installed.'

echo 'Done!'
