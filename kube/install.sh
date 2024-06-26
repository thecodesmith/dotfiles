#!/usr/bin/env bash

brew install kubectl
brew install kubectx
brew install stern
brew install kustomize
brew install helm

go install github.com/gabeduke/kubectl-iexec@main
go install github.com/bonnefoa/kubectl-fzf/v3/cmd/kubectl-fzf-completion@main
go install github.com/bonnefoa/kubectl-fzf/v3/cmd/kubectl-fzf-server@main

# Install Krew - https://krew.sigs.k8s.io
(
  set -x; cd "$(mktemp -d)" &&
  OS="$(uname | tr '[:upper:]' '[:lower:]')" &&
  ARCH="$(uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/')" &&
  KREW="krew-${OS}_${ARCH}" &&
  curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/${KREW}.tar.gz" &&
  tar zxvf "${KREW}.tar.gz" &&
  ./"${KREW}" install krew
)
