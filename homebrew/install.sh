#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install homebrew packages
brew install grc 
brew install coreutils 
brew install spark 
brew install git 
brew install vim 
brew install hub
brew install findutils --default-names
brew install gnu-sed --default-names
brew install gnu-tar --default-names
brew install gnu-which --default-names
brew install gnutls --default-names
brew install grep --default-names
brew install coreutils 
brew install binutils 
brew install diffutils 
brew install gzip 
brew install watch 
brew install tmux 
brew install wget 
brew install nmap 
brew install gpg 
brew install htop 

exit 0
