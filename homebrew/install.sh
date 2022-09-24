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
brew install --cask \
    iterm2 \
    atom \
    jetbrains-toolbox

# Install homebrew packages
brew install bash-completion \
             bat \
             python \
             the_silver_searcher \
             tree \
             fzf \
             gh \
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
brew install jmespath/jmespath/jp

# UNIX tools
brew install findutils \
             gnu-sed \
             gnu-tar \
             gnu-which \
             gnutls  \
             grep \
             coreutils \
             binutils \
             diffutils \
             gzip \
             watch \
             wget

exit 0
