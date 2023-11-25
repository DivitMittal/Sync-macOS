# User configuration
export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Aliases
alias nv="nvim"

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
