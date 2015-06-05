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

if test ! $(which ruby-build)
then
  echo "  Installing ruby-build for you."
  brew install ruby-build > /tmp/ruby-build-install.log
fi
