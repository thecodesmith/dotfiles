completion="$(brew --prefix)/share/zsh/site-functions/_aws"

if test -f "$completion"; then
    source "$completion"
fi
