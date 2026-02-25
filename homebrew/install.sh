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
brew install \
    bash-completion \
    bat \
    font-hack-nerd-font \
    fzf \
    gh \
    git \
    gpg \
    grc \
    htop \
    jq \
    nmap \
    pv \
    python \
    ripgrep \
    terminal-notifier \
    the_silver_searcher \
    tmux \
    tree \
    vim \
    yq

$(brew --prefix)/opt/fzf/install --all

# UNIX tools
brew install \
    binutils \
    coreutils \
    diffutils \
    findutils \
    gawk \
    gnu-sed \
    gnu-tar \
    gnu-which \
    gnutls  \
    grep \
    gzip \
    watch \
    wget

exit 0
