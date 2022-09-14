alias k=kubectl
alias kx=kubectx
alias kx-='kubectx -'
alias kns=kubens
alias ka='kubectl apply -f'
alias kg='kubectl get'
alias kgd='kubectl get deploy'
alias kgpw="watch -n 1 'zsh -c \"kubectl get po $@ | kubectl-colorized\"'"
alias kd='kubectl describe'
alias kdp='kubectl describe po'
alias klint='kubeval --strict'
alias krm='kubectl delete'

function kgp() {
    kubectl get po $@ | kubectl-colorized
}

function kscale-ns() {
    replicas="$1"
    ns="$2"
    if [ -z "$ns" ]; then
        kubectl get deploy -n "$ns" -o name | xargs -I % kubectl scale % --replicas="$replicas" -n "$ns"
        kubectl get statefulset -n "$ns" -o name | xargs -I % kubectl scale % --replicas="$replicas" -n "$ns"
    else
        kubectl get deploy -o name | xargs -I % kubectl scale % --replicas="$replicas"
        kubectl get statefulset -o name | xargs -I % kubectl scale % --replicas="$replicas"
    fi
}
