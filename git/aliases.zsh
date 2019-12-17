# Use `hub` as our git wrapper:
#   https://hub.github.com/
if hash hub 2>/dev/null
then
  hub_path=$(which hub)
fi

if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# Git aliases
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff'
alias gds='git diff --staged'
alias ga='git add'
alias gc='git commit'
alias gca='git commit -a'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch --sort=-committerdate'
alias gs='git status -sb'
alias ga.='git add .'
