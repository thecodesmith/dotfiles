#!/bin/bash

mkdir -p ~/.aws
ln -s ~/.dotfiles/aws/config ~/.aws/config

brew tap common-fate/granted
brew install granted
brew install aws-sam-cli
