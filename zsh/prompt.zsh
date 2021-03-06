autoload colors && colors
# cheers, @ehrenmurdick
# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh

if (( $+commands[git] ))
then
  git="$commands[git]"
else
  git="/usr/bin/git"
fi

last_exit_code() {
  local LAST_EXIT_CODE="%{$fg[red]%}${(l:$COLUMNS:: :)?}%{$reset_color%}"
  if ! [[ "$LAST_EXIT_CODE" =~ '^.* 0.*$' ]]; then
    echo "$LAST_EXIT_CODE"
    export LAST_EXIT_CODE
  fi
}

ssh_host() {
  if [[ -z "$SSH_CLIENT" ]]
  then
    echo ""
  else
    echo "%{$fg_bold[white]%}$(hostname)%{$reset_color%} "
  fi
}

git_branch() {
  echo $($git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  if $(! $git status -s &> /dev/null)
  then
    echo ""
  else
    if [[ $($git status --porcelain) == "" ]]
    then
      echo "on %{$fg_bold[green]%}$(git_prompt_info)%{$reset_color%}"
    else
      echo "on %{$fg_bold[red]%}$(git_prompt_info)%{$reset_color%}"
    fi
  fi
}

git_prompt_info () {
 ref=$($git symbolic-ref HEAD 2>/dev/null) || return
# echo "(%{\e[0;33m%}${ref#refs/heads/}%{\e[0m%})"
 echo "${ref#refs/heads/}"
}

unpushed () {
  $git cherry -v @{upstream} 2>/dev/null
}

need_push () {
  if [[ $(unpushed) == "" ]]
  then
    echo " "
  else
    echo " with %{$fg_bold[magenta]%}unpushed%{$reset_color%} "
  fi
}

ruby_version() {
  if (( $+commands[rbenv] ))
  then
    echo "$(rbenv version | awk '{print $1}')"
  fi

  if (( $+commands[rvm-prompt] ))
  then
    echo "$(rvm-prompt | awk '{print $1}')"
  fi
}

rb_prompt() {
  if ! [[ -z "$(ruby_version)" ]]
  then
    echo "%{$fg_bold[yellow]%}$(ruby_version)%{$reset_color%} "
  else
    echo ""
  fi
}

py_prompt() {
  if [[ -n "$VIRTUAL_ENV" ]]
  then
    venv=$(basename "$VIRTUAL_ENV")
    echo "%{$fg_bold[yellow]%}$venv%{$reset_color%} "
  fi
}

directory_name() {
  echo "%{$fg_bold[cyan]%}%1/%\/%{$reset_color%}"
}

error_aware_caret() {
  echo "%(?.›.%{$fg[red]%}›%{$reset_color%})"
}

# export VIRTUAL_ENV_DISABLE_PROMPT=1
# export PROMPT=$'\nin $(directory_name) $(git_dirty)$(need_push)\n$(error_aware_caret) '
