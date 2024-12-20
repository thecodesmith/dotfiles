#!/bin/bash

if [[ `os` != 'osx' ]]; then
  echo "  Skipping Homebrew install (OS X only)."
  exit 0
fi

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

export PATH="/opt/homebrew/bin:$PATH"

# Install homebrew casks
brew install --cask \
    iterm2 \
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
             nmap \
             terminal-notifier \
             tmux \
             vim \
             jq \
             yq \
             font-hack-nerd-font

$(brew --prefix)/opt/fzf/install --all

# UNIX tools
brew install findutils \
             gawk \
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
