completion="$(brew --prefix)/share/zsh/site-functions/_aws"
completer="$(brew --prefix)/share/zsh/site-functions/aws_zsh_completer.sh"

if test -f "$completion"; then
    source "$completion"
fi

if test -f "$completer"; then
    source "$completer"
fi
