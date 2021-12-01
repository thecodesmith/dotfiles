#!/bin/bash

git clone https://github.com/thecodesmith/dot-ssh ~/.ssh
chmod 600 ~/.ssh/*

source ~/.dotfiles/ssh/ssh-agent.zsh
