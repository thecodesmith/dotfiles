#!/usr/bin/env bash

brew install kubectl
brew install kubectx
brew install kustomize
brew install stern
brew install helm

git clone git@github.com:ahmetb/kubectl-aliases.git ~/.kubectl_aliases

go get -u github.com/gabeduke/kubectl-iexec
