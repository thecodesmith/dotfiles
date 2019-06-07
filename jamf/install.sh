#!/bin/bash

git clone https://stash.jamf.build/scm/~brian.stewart/dot-jamf.git ~/.jamf

brew tap jamf/tools ssh://git@stash.jamf.build:7999/locres/homebrew-tools.git
brew install art quick-dns webex-cli
