alias k=kubectl
alias kx=kubectx
alias kns=kubens
alias ka='kubectl apply -f'
alias kg='kubectl get'
# alias kgp='kubectl get po'
alias kgpw="watch -n 1 'zsh -c \"kubectl get po $@ | kubectl-colorized\"'"
alias kd='kubectl describe'
alias klint='kubeval --strict'

function kgp() {
    kubectl get po $@ | kubectl-colorized
}

# function kgpw() {
#     watch -n 1 "zsh -c 'kubectl get po $@ | kubectl-colorized'"
# }

function kscale-ns() {
    replicas="$1"
    ns="$2"
    if [ -z "$ns" ]; then
        kubectl get deploy -n "$ns" -o name | xargs -I % kubectl scale % --replicas="$replicas" -n "$ns"
    else
        kubectl get deploy -o name | xargs -I % kubectl scale % --replicas="$replicas"
    fi
}
