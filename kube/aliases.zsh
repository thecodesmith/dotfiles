alias k=kubectl
alias kx=kubectx
alias kns=kubens
alias ka='kubectl apply -f'
alias kg='kubectl get'
# alias kgp='kubectl get po'
alias kd='kubectl describe'
alias klint='kubeval --strict'

function kgp() {
    kubectl get po $@ | kubectl-colorized
}
