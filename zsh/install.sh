#!/usr/bin/env bash

chsh -s /usr/local/bin/zsh

mkdir -p ~/.zsh

git clone https://github.com/brandonroehl/zsh-clean ~/.zsh/zsh-clean

brew install antibody
