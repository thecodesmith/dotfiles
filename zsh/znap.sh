# Download Znap, if it's not there yet.
[[ -f ~/.zsh/zsh-snap/znap.zsh ]] ||
    git clone --depth 1 -- https://github.com/marlonrichert/zsh-snap.git ~/.zsh/zsh-snap

# Start Znap
source ~/.zsh/zsh-snap/znap.zsh

znap source zsh-users/zsh-completions
# znap source benvan/sandboxd
znap source bonnefoa/kubectl-fzf shell

# znap source ohmyzsh/ohmyzsh plugins/vi-mode
znap source ohmyzsh/ohmyzsh plugins/z
znap source ohmyzsh/ohmyzsh plugins/web-search
