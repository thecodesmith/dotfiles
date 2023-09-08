alias k=kubectl
alias kx=kubectx
alias kx-='kubectx -'
alias kns=kubens
alias ka='kubectl apply -f'
alias kg='kubectl get'
alias kgd='kubectl get deploy'
alias kgpw='kubectl-get-pods --watch'
alias kd='kubectl describe'
alias kdp='kubectl describe pod'
alias kdd='kubectl describe deployment'
alias kds='kubectl describe statefulset'
alias klint='kubeval --strict'
alias krm='kubectl delete'
alias kfzf='kubectl-fzf-server'
alias ksd='kubectl scale deployment'
alias kss='kubectl scale statefulset'
alias kroll='kubectl rollout restart'

function kgp() {
    kubectl get pods $@ | kubectl-colorized
}

function kscale-ns() {
    replicas="$1"
    ns="$2"
    if [ -z "$ns" ]; then
        kubectl scale $(kubectl get deploy -n "$ns" -o name) --replicas="$replicas" -n "$ns"
        kubectl scale $(kubectl get statefulset -n "$ns" -o name) --replicas="$replicas" -n "$ns"
    else
        kubectl scale $(kubectl get deploy -o name) --replicas="$replicas"
        kubectl scale $(kubectl get statefulset -o name) --replicas="$replicas"
    fi
}
