# Inspired by https://bananamafia.dev/post/dotfiles/

function _web_search() {
    emulate -L zsh

    # define search engine URLS
    typeset -A urls
    urls[google]="https://www.google.com/search?q="
    urls[duckduckgo]="https://www.duckduckgo.com/?q="
    urls[startpage]="https://www.startpage.com/do/search?q="
    urls[github]="https://github.com/search?q="

    # check whether the search engine is supported
    if [[ -z "${urls[$1]}" ]]; then
        echo "Search engine $1 not supported."
        return 1
    fi

    # search or go to main page depending on number of arguments passed
    if [[ $# -gt 1 ]]; then
        # build search url:
        # join arguments passed with '+', then append to search engine URL
        # shellcheck disable=SC2154
        url="${urls[$1]}${(j:+:)@[2,-1]}"
    else
        # build main page url:
        # split by '/', then rejoin protocol (1) and domain (2) parts with '//'
        # shellcheck disable=SC2154
        url="${(j://:)${(s:/:)urls[$1]}[1,2]}"
    fi

    open_command "$url"
    return 0
}

function web_search() {
    _web_search "$@" # && ~/.i3/scripts/launchBrowser.sh
}

alias google='web_search google'
alias ddg='web_search duckduckgo'
alias sp='web_search startpage'
alias github='web_search github'

# bangs
alias wiki='web_search duckduckgo \!w'
alias news='web_search duckduckgo \!n'
alias youtube='web_search duckduckgo \!yt'
alias map='web_search duckduckgo \!m'
alias image='web_search duckduckgo \!i'
alias ducky='web_search duckduckgo \!'

alias s='web_search duckduckgo'
