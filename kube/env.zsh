#!/usr/bin/env bash

[ -f ~/.kubectl-aliases/.kubectl_aliases ] && source ~/.kubectl-aliases/.kubectl_aliases

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
