#!/usr/bin/env bash

chsh -s /usr/local/bin/zsh

mkdir -p ~/.zsh

git clone https://github.com/brandonroehl/zsh-clean ~/.zsh/zsh-clean

curl -L git.io/antigen > ~/.zsh/antigen.zsh
source ~/.zsh/antigen.zsh
antigen bundle BrandonRoehl/zsh-clean
antigen apply
