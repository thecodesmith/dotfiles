#!/usr/bin/env bash

if ! hash apt-get 2>/dev/null
then
  echo "  Skipping apt-get install (Debian only)."
  exit 0
fi

sudo apt-get update

sudo apt-get install git
sudo apt-get install vim
sudo apt-get install python3
