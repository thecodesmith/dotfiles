#!/usr/bin/env bash

if ! hash apt-get 2>/dev/null
then
    echo "  Skipping Python install (requires apt-get)."
    exit 0
fi

sudo apt-get install python3 python3-pip python3-dev
