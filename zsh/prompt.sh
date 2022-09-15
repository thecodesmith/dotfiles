# Download Znap, if it's not there yet.
[[ -f ~/.zsh/zsh-snap/znap.zsh ]] ||
    git clone --depth 1 -- https://github.com/marlonrichert/zsh-snap.git ~/.zsh/zsh-snap

# Start Znap
source ~/.zsh/zsh-snap/znap.zsh

# Style the prompt
zstyle :prompt:pure:path color 45              # light blue path
zstyle :prompt:pure:prompt:success color white # white prompt character
zstyle :prompt:pure:git:dirty color red        # red git dirty marker
zstyle :prompt:pure:git:branch color 246       # light grey git branch name
zstyle :prompt:pure:git:arrow color yellow     # yellow git commit sync status

# Load the prompt
znap prompt thecodesmith/pure
