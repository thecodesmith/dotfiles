#!/bin/bash

mkdir -p ~/.aws
ln -s ~/.dotfiles/aws/config ~/.aws/config

brew install aws-iam-authenticator

if ! hash pip3 2>/dev/null; then
    curl -O https://bootstrap.pypa.io/get-pip.py
    python3 get-pip.py --user
fi

pip3 install awscli --upgrade --user

mkdir -p ~/.okta
curl -o ~/.okta/okta-aws-cli-1.0.10.jar https://github.com/oktadeveloper/okta-aws-cli-assume-role/releases/download/v1.0.10/okta-aws-cli-1.0.10.jar
