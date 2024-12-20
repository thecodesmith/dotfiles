#!/usr/bin/env bash
mkdir -p ~/.tmux/plugins

if ! [ -d ~/.tmux/plugins/tpm ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

if ! [ -d ~/.tmux/plugins/kube-tmux ]; then
    git clone https://github.com/thecodesmith/kube-tmux ~/.tmux/plugins/kube-tmux
fi

if ! [ -d ~/.tmux/plugins/tmux-rename-window-project ]; then
    git clone https://github.com/thecodesmith/tmux-rename-window-project ~/.tmux/plugins/tmux-rename-window-project
fi
