#!/bin/bash
#
# Homebrew
#
# This installs some of the common dependencies needed
# (or at least desired) using Homebrew.
if [[ `os` != 'osx' ]]; then
  echo "  Skipping Homebrew install (OS X only)."
  exit 0
fi

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install homebrew packages
brew install caskroom/cask/brew-cask
brew install git
brew install gpg
brew install grc
brew install htop
brew install hub
brew install gist
brew install nmap
brew install tmux
brew install vim

# UNIX tools
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
brew install wget

exit 0
