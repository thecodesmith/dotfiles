if [[ "$OS" == 'OSX' ]]; then
  # alias ls='ls -G' # color does not seem to work
  alias ll='ls -alGh'
elif [[ "$OS" == 'LINUX' ]]
then
  alias ls='ls --color=auto'
  alias ll='ls -al --color=auto'
fi

alias reload!='. ~/.zshrc && tmux source-file ~/.tmux.conf'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias /='cd /'
alias ~='cd ~'

alias md='mkdir -p'

alias cat='bat'
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

function zsh-cheatsheet() {
    echo "\
!^      # first argument of previous command
!$      # last argument of previous command
!*      # all arguments of previous command
!:2-3   # second to third arguments
!:2*    # second argument and all arguments after it
!:2-    # second argument to next-to-last argument"
}
