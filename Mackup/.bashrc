#!/usr/local/bin/bash
##########################################################################################################
# Variables & Environment Variables (exported variables to child processes)
##########################################################################################################
## Variables
brew_prefix=$(brew --prefix)

## Environment Variables
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export TERM="xterm-256color"
export BASH_SILENCE_DEPRECATION_WARNING=1
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi
export VISUAL='nvim'
# Compilation flags
export ARCHFLAGS="-arch x86_64"

## PATH environment variable
# Homebrew paths
export PATH="$brew_prefix/bin:$brew_prefix/sbin:$PATH"

##########################################################################################################
# Aliases
##########################################################################################################
# Utilities
alias nv="nvim"
alias ls="ls -aF"
alias ll="ls -lbhHigUmuSa"

# Directory shortcuts
alias dt='cd ~/Desktop/'
alias dl='cd ~/Downloads/'
alias apps='cd /Applications/'

##########################################################################################################
# Initializations
##########################################################################################################
# Run if current shell is interactive
if [[ $- == *i* ]]; then
    # vi key bindings
    set -o vi

    # Bash completions
    [[ -r "$brew_prefix/etc/profile.d/bash_completion.sh" ]] && . "$brew_prefix/etc/profile.d/bash_completion.sh"

    # Starship - CLI prompt
    eval "$(starship init bash)"

    # broot - terminal file explorer
    source ~/.config/broot/launcher/bash/br
fi

