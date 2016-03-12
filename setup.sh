#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
USR=$(env | grep SUDO_USER | cut -d= -f 2)

#Install XCode
echo "Installing XCode..."
softwareupdate --install XCode

#create folder
sudo -u $USR mkdir ~/Library/Developer/Xcode/UserData/FontAndColorThemes
#copy color theme file to this new folder
sudo -u $USR cp $DIR/XCode/Tomorrow\ Night\ Custom.dvtcolortheme ~/Library/Developer/Xcode/UserData/FontAndColorThemes
#make file executable
chmod +x ~/Library/Developer/Xcode/UserData/FontAndColorThemes/color_theme.dvtcolortheme
echo 'XCode installed.'

#Install Dropbox
echo 'Installing Dropbox...'
softwareupdate --install 1password
echo 'Dropbox installed.'

#Install Homebrew
echo "Installing Homebrew..."
sudo -u $USR /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sudo -u $USR brew update
echo 'Homebrew installed.'

#Install Brew cask
echo "Installing Homebrew Cask..."
sudo -u $USR brew tap caskroom/cask
echo 'Homebrew Cask installed.'

#Install Atom
echo "Installing atom..."
sudo -u $USR brew cask install atom
echo 'atom installed.'

#Install iTerm 2
echo 'Installing iTerm...'
sudo -u $USR brew cask install iterm2
echo 'iTerm installed.'

echo 'Done!'
