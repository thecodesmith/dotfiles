#!/bin/bash

if [[ `os` != 'osx' ]]
then
  echo "  Skipping ruby install (OS X only)."
  exit 0
fi

if test ! $(which rbenv)
then
  echo "  Installing rbenv for you."
  brew install rbenv > /tmp/rbenv-install.log
fi
