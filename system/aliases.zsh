# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

if [[ $OS == 'LINUX' ]]
then
  alias pbcopy='xsel --clipboard --input'
  alias pbpaste='xsel --clipboard --output'
  alias bigs='du -hs * | sort -hr'
elif [[ `os` == 'osx' ]]
then
  alias bigs='du -hs * | gsort -hr'
fi

alias json='python -m json.tool'
alias js=json
alias x=xargs
alias bash='PS1="in $(pwd) › " bash'

close_all_panes() {
    YELLOW='\033[0;33m'
    RESET='\033[0m'
    echo -n "${YELLOW}Press <return> to close all panes ${RESET}"
    read
    tmux kill-pane -a
    tmux kill-pane
}

# typos
alias clera=clear
alias cler=clear
alias eixt=exit
alias eit=exit
alias exi=exit
alias :q=exit
alias :qa=close_all_panes
alias :wq=exit
