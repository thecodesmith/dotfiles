alias assume='source assume'
export GRANTED_ALIAS_CONFIGURED='true'

alias aws-profile="assume \$(list-aws-profiles < ~/.aws/config | fzf | awk '{print \$NF}') -d 1h"
