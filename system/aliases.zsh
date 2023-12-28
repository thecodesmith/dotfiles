# grc overides for ls - made possible by `brew install coreutils`
if $(gls &>/dev/null); then
    alias ls="gls -Fh --color"
    alias l="gls -lAh --color"
    alias ll="gls -lh --color"
    alias la='gls -Ah --color'
fi

if [[ $OS == 'OSX' ]]; then
    alias bigs='du -hs * | gsort -hr'
elif [[ $OS == 'LINUX' ]]; then
    alias bigs='du -hs * | sort -hr'
    alias pbcopy='xsel --clipboard --input'
    alias pbpaste='xsel --clipboard --output'
fi

alias json='python3 -m json.tool'
alias js=json
alias json2yaml='yq eval -P'
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

# autocorrect typos
alias clera=clear
alias cler=clear
alias cl=clear
alias eixt=exit
alias eit=exit
alias exi=exit

# vim aliases
alias q=exit
alias :q=exit
alias :qa=close_all_panes
alias :wq=exit

alias watch='watch --color '

alias utctime='date -u +"%Y-%m-%dT%H:%M:%SZ"'
