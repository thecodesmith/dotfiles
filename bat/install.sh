#!/bin/zsh

brew install bat
mkdir -p ~/.config/bat/themes
git clone https://github.com/thecodesmith/codesmith-theme ~/.config/bat/themes/thecodesmith
bat cache --build
