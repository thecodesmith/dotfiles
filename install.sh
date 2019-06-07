#!/usr/bin/env bash

git clone https://github.com/thecodesmith/dot-ssh ~/.ssh
git clone https://github.com/thecodesmith/dotfiles ~/.dotfiles

cd ~/.dotfiles
source ssh/ssh-agent.zsh
./script/bootstrap
./script/install
