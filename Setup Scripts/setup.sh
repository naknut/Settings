#!/bin/bash

#Symlinking .bash_profile
echo 'Installing bash stuff...'
ln -s ../bash/bash_profile ~/.bash_profile
echo 'Bash stuff installed.'

#Install Homebrew
echo "Installing Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/gist/323731)"
export PATH=/usr/local/bin:$PATH

# Warn about PATH
echo ""
echo "Add the following to ~/.bash_profile to use Homebrew:"
echo ""
echo "# Homebrew path"
echo "export PATH=/usr/local/bin:\$PATH"

echo 'Homebrew installed.'

echo 'Done!'
