#Display colors properly
export TERM="xterm-256color"

# Silence bash deprecated warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# fzf - fuzzy finder for bash
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# vi key bindings
set -o vi

# Bash completions
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Starship prompt
eval "$(starship init bash)"
