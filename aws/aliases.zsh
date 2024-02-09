alias assume='source assume'
export GRANTED_ALIAS_CONFIGURED='true'

alias aws-profile="list-aws-profiles < ~/.aws/config | fzf | awk '{print \$NF}' | xargs assume"
