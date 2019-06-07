#!/usr/bin/env bash

mkdir -p ~/.zsh
git clone https://github.com/brandonroehl/zsh-clean ~/.zsh/zsh-clean

curl -L git.io/antigen > ~/.zsh/antigen.zsh

chsh -s /usr/local/bin/zsh
