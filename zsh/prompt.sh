# Style the prompt
zstyle :prompt:pure:path color 45              # light blue path
zstyle :prompt:pure:prompt:success color white # white prompt character
zstyle :prompt:pure:git:dirty color red        # red git dirty marker
zstyle :prompt:pure:git:branch color 246       # light grey git branch name
zstyle :prompt:pure:git:arrow color yellow     # yellow git commit sync status

# Load the prompt
znap prompt thecodesmith/pure
