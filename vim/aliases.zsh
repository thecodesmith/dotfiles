# alias v='vim'
alias ev='vim ~/.vimrc'
alias ez='vim ~/.zshrc'

function v() {
    if [ -d .venv ]; then
        pipenv run vim $@
    else
        vim $@
    fi
}
