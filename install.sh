#!/usr/bin/env bash

git clone https://github.com/thecodesmith/dot-ssh ~/.ssh
git clone github:thecodesmith/dotfiles ~/.dotfiles

cd ~/.dotfiles
./script/bootstrap
./script/install
