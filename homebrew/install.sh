#!/bin/bash

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

# Install homebrew casks
brew cask install iterm2 \
                  atom \
                  jetbrains-toolbox

# Install homebrew packages
brew install bash-completion \
             python \
             git \
             gpg \
             grc \
             htop \
             hub \
             gist \
             nmap \
             tmux \
             vim \
             jq \
             yq

brew tap jmespath/jmespath
brew install jp

# UNIX tools
brew install findutils \
             gnu-sed \
             gnu-tar \
             gnu-which \
             gnutls  \
             grep --default-names

brew install coreutils \
             binutils \
             diffutils \
             gzip \
             watch \
             wget

exit 0
