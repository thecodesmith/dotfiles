alias tks='tmux kill-session'
alias tclear='_tmux_clear_all_panes'

_tmux_send_keys_all_panes() {                                                                                  #{{{1
    for _pane in $(tmux list-panes -F '#{pane_index} #{pane_current_command}' | grep zsh | awk '{ print $1 }'); do
        tmux send-keys -t ${_pane} "$@"
    done
}

_tmux_clear_all_panes() {
    _tmux_send_keys_all_panes clear Enter
}
