#!/bin/bash

if [ -d ~/.ssh ]; then
    echo "SSH dir already exists at ~/.ssh, skipping SSH install"
    exit
fi

git clone https://github.com/thecodesmith/dot-ssh ~/.ssh
chmod 600 ~/.ssh/*

source ~/.dotfiles/ssh/ssh-agent.zsh
